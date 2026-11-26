#!/usr/bin/env python3
"""Upload PE exam PDFs to Supabase Storage bucket exam-pdfs and emit pdf_url UPDATEs.
Reads the publishable (anon) key from ~/workspace/mobarati/.env -- never prints it.
Requires the temp anon INSERT policy on storage.objects (created before running,
dropped right after). One object per paper; shared papers serve both specialty rows.
"""
import os, urllib.request, urllib.error

BASE = os.path.expanduser("~/workspace")
STAGING = os.path.join(BASE, "mobarati/supabase/seed_eps/pdf_staging")
OUT_SQL = os.path.join(BASE, "mobarati/supabase/seed_eps/pdf_urls.sql")
OUT_LOG = os.path.join(BASE, "mobarati/supabase/seed_eps/pdf_upload.log")
PROJECT = "aieeonrqwfpdvkseglck"
BUCKET = "exam-pdfs"

# object key -> exam rows it serves
OBJECTS = {
    "eps_2016_specialty.pdf": ["exam_eps_2016_specialty_college", "exam_eps_2016_specialty_lycee"],
    "eps_2016_didactics.pdf": ["exam_eps_2016_didactics_college", "exam_eps_2016_didactics_lycee"],
    "eps_2017.pdf": ["exam_eps_2017_college", "exam_eps_2017_lycee"],
    "eps_2018.pdf": ["exam_eps_2018_college", "exam_eps_2018_lycee"],
    "eps_2019.pdf": ["exam_eps_2019_college", "exam_eps_2019_lycee"],
    "eps_2020.pdf": ["exam_eps_2020_college", "exam_eps_2020_lycee"],
    "eps_2021.pdf": ["exam_eps_2021_college", "exam_eps_2021_lycee"],
    "exam_eps_kf_2021_college.pdf": ["exam_eps_kf_2021_college"],
    "exam_eps_kf_2024_lycee.pdf": ["exam_eps_kf_2024_lycee"],
    "exam_eps_kf_2025_lycee.pdf": ["exam_eps_kf_2025_lycee"],
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
            with urllib.request.urlopen(req, timeout=180) as r:
                return r.status, r.read().decode()[:200]
        except urllib.error.HTTPError as e:
            body = e.read().decode()[:200]
            if attempt == 1 and e.code in (429, 500, 502, 503):
                continue
            return e.code, body
    return None, "failed"

def main():
    key = anon_key()
    headers = {"apikey": key, "Authorization": f"Bearer {key}", "Content-Type": "application/pdf"}
    log = open(OUT_LOG, "w")
    sql = []
    ok, fail = 0, 0
    for obj, eids in sorted(OBJECTS.items()):
        src = os.path.join(STAGING, obj)
        if not os.path.exists(src):
            log.write(f"MISSING {src}\n"); fail += 1; continue
        status, body = upload(obj, src, headers)
        pub = f"https://{PROJECT}.supabase.co/storage/v1/object/public/{BUCKET}/{obj}"
        if status in (200, 201):
            ok += 1
            log.write(f"OK {status} {obj} ({len(eids)} rows)\n")
            for eid in eids:
                sql.append(f"UPDATE public.exams SET pdf_url = '{pub}' WHERE id = '{eid}';")
        else:
            fail += 1
            log.write(f"FAIL {status} {obj}: {body}\n")
    open(OUT_SQL, "w").write("\n".join(sql) + "\n")
    log.write(f"objects ok={ok} fail={fail} rows={len(sql)}\n")
    log.close()
    print(f"objects ok={ok} fail={fail} pdf_url rows={len(sql)}")

if __name__ == "__main__":
    main()
