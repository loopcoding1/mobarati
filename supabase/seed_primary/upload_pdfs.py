#!/usr/bin/env python3
"""Upload exam PDFs to Supabase Storage bucket exam-pdfs and emit pdf_url UPDATEs.
Reads the publishable (anon) key from ~/workspace/mobarati/.env -- never prints it.
Object keys: single-row files -> <exam_id>.pdf ; shared files -> descriptive ASCII keys.
After this runs, the temp anon INSERT policy must be DROPPED (see SUPABASE.md).
"""
import json, os, sys, urllib.request, urllib.error

BASE = os.path.expanduser("~/workspace")
MAPPING = os.path.join(BASE, "mobarati/supabase/seed_primary/pdf_mapping.json")
EXAMS_DIR = os.path.join(BASE, "exams-ibtida2i")
ECON_DIR = os.path.join(BASE, "mobarati/supabase/seed_primary/econ_pdfs")
OUT_SQL = os.path.join(BASE, "mobarati/supabase/seed_primary/pdf_urls.sql")
OUT_LOG = os.path.join(BASE, "mobarati/supabase/seed_primary/pdf_upload.log")
PROJECT = "aieeonrqwfpdvkseglck"
BUCKET = "exam-pdfs"

SHARED_KEYS = {
    "2020/اللغة العربية + الرياضيات + اللغة الفرنسية + العلوم - امتحان.pdf": "2020/all-subjects.pdf",
    "2023/الرياضيات + الفرنسية + العلوم - امتحان.pdf": "2023/all-subjects.pdf",
    "2023/الديداكتيك - امتحان.pdf": "2023/didactics.pdf",
    "2021/الرياضيات + العلوم - امتحان.pdf": "2021/maths-sciences.pdf",
}

def anon_key():
    for line in open(os.path.join(BASE, "mobarati/.env")):
        if line.startswith("VITE_SUPABASE_ANON_KEY="):
            return line.strip().split("=", 1)[1]
    raise SystemExit("anon key not found in .env")

def upload(key, path, headers):
    with open(path, "rb") as f:
        data = f.read()
    url = f"https://{PROJECT}.supabase.co/storage/v1/object/{BUCKET}/{key}"
    for attempt in (1, 2):
        req = urllib.request.Request(url, data=data, method="POST", headers=headers)
        try:
            with urllib.request.urlopen(req, timeout=120) as r:
                return r.status, r.read().decode()[:200]
        except urllib.error.HTTPError as e:
            body = e.read().decode()[:200]
            if attempt == 1 and e.code in (429, 500, 502, 503):
                continue
            return e.code, body
    return None, "failed"

def main():
    key = anon_key()
    headers = {
        "apikey": key,
        "Authorization": f"Bearer {key}",
        "Content-Type": "application/pdf",
    }
    m = json.load(open(MAPPING))
    by_pdf = {}
    for e in m["exams"]:
        by_pdf.setdefault(e["pdf"], []).append(e["exam_id"])
    for eid in m.get("econ_pdfs_downloaded", []):
        by_pdf[f"ECON:{eid}"] = [eid]

    log = open(OUT_LOG, "w")
    sql = []
    ok, fail = 0, 0
    for pdf, ids in sorted(by_pdf.items()):
        if pdf.startswith("ECON:"):
            eid = ids[0]
            src = os.path.join(ECON_DIR, f"{eid}.pdf")
            obj = f"{eid}.pdf"
        else:
            src = os.path.join(EXAMS_DIR, pdf)
            obj = SHARED_KEYS.get(pdf) or f"{ids[0]}.pdf"
        if not os.path.exists(src):
            log.write(f"MISSING {src}\n"); fail += 1; continue
        status, body = upload(obj, src, headers)
        pub = f"https://{PROJECT}.supabase.co/storage/v1/object/public/{BUCKET}/{obj}"
        if status in (200, 201):
            ok += 1
            log.write(f"OK {status} {obj} <- {pdf} ({len(ids)} rows)\n")
            for eid in ids:
                sql.append(
                    f"UPDATE public.exams SET pdf_url = '{pub}' WHERE id = '{eid}';"
                )
        else:
            fail += 1
            log.write(f"FAIL {status} {obj} <- {pdf}: {body}\n")
    with open(OUT_SQL, "w") as f:
        f.write("\n".join(sql) + "\n")
    log.write(f"TOTAL ok={ok} fail={fail} sql_updates={len(sql)}\n")
    log.close()
    print(f"ok={ok} fail={fail} sql_updates={len(sql)}")
    print("log:", OUT_LOG, "| sql:", OUT_SQL)

if __name__ == "__main__":
    main()
