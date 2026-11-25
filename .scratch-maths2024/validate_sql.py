# -*- coding: utf-8 -*-
"""Validate exam_primary_2024_maths_oct.sql + diff stems/options vs solved MD."""
import json, re, sys

SQL = "/home/hatch/workspace/mobarati/supabase/seed_primary/exam_primary_2024_maths_oct.sql"
MD = "/home/hatch/workspace/exams-ibtida2i/solved/2024/الرياضيات - مادة التخصص - دورة أكتوبر 2024.md"

sql = open(SQL, encoding="utf-8").read()
md = open(MD, encoding="utf-8").read()

errors = []

# 1. counts
n_exam = len(re.findall(r"INSERT INTO public\.exams", sql))
n_q = len(re.findall(r"INSERT INTO public\.questions", sql))
print(f"exam INSERTs: {n_exam} (expect 1); question INSERTs: {n_q} (expect 30)")
if n_exam != 1: errors.append("exam count")
if n_q != 30: errors.append("question count")

# 2. parse each question VALUES line with a small SQL literal tokenizer
def tokenize_values(line):
    """Split a VALUES(...) line into fields; returns list of (kind, value)."""
    assert line.startswith("VALUES ("), line[:40]
    i = line.index("(") + 1
    fields = []
    n = len(line)
    while i < n:
        c = line[i]
        if c == "'":
            j = i + 1
            buf = []
            while j < n:
                if line[j] == "'":
                    if j + 1 < n and line[j + 1] == "'":
                        buf.append("'"); j += 2; continue
                    break
                buf.append(line[j]); j += 1
            fields.append(("str", "".join(buf)))
            i = j + 1
        elif c in " ,":
            i += 1
        elif line.startswith("ARRAY[", i):
            j = line.index("]", i)
            inner = line[i + 6:j].strip()
            fields.append(("array", inner.strip("'")))
            i = j + 1
        elif line.startswith("false", i) or line.startswith("true", i):
            k = 5 if line.startswith("false", i) else 4
            fields.append(("bool", line[i:i + k]))
            i += k
        elif line.startswith("NULL", i):
            fields.append(("null", None)); i += 4
        elif c == ")":
            break
        else:
            j = i
            while j < n and line[j] not in ",)":
                j += 1
            tok = line[i:j].strip()
            if not tok.startswith("::"):  # skip ::jsonb / ::text[] casts
                fields.append(("bare", tok))
            i = j
    return fields

qs = {}
for line in sql.splitlines():
    if line.startswith("VALUES ('exam_primary_2024_maths_oct_q"):
        f = tokenize_values(line)
        # fields: id, exam_id, number, category, text, is_multiple, options+cast, correct, explanation, qtype, source_type, url, verified, note
        vals = [v for k, v in f]
        kinds = [k for k, v in f]
        assert len(vals) == 14, (len(vals), vals[:3])
        qid, exam, num_s, cat, text, mult, opts_raw, ans, expl, qt, st, url, ver, note = vals
        num = int(num_s)
        try:
            opts = json.loads(opts_raw)
        except Exception as e:
            errors.append(f"Q{num}: options JSON invalid: {e}")
            continue
        ids = [o["id"] for o in opts]
        if ids != ["A", "B", "C", "D", "E"]:
            errors.append(f"Q{num}: option ids {ids}")
        if ans not in ids:
            errors.append(f"Q{num}: correct answer {ans} not among options")
        if qid != f"exam_primary_2024_maths_oct_q{num}":
            errors.append(f"Q{num}: bad id {qid}")
        if exam != "exam_primary_2024_maths_oct":
            errors.append(f"Q{num}: bad exam_id")
        if mult != "false" or qt != "qcm" or st != "third_party" or ver != "true":
            errors.append(f"Q{num}: wrong flags {mult}/{qt}/{st}/{ver}")
        if url != "https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt":
            errors.append(f"Q{num}: wrong source_url")
        qs[num] = {"text": text, "opts": {o["id"]: o["text"] for o in opts},
                   "ans": ans, "expl": expl, "note": note}

print(f"parsed questions: {len(qs)}; numbers: {sorted(qs) == list(range(61, 91))}")
if sorted(qs) != list(range(61, 91)):
    errors.append("numbers not 61-90 unique")

# 3. exam row check
m = re.search(r"VALUES \('exam_primary_2024_maths_oct', 'specialty_primary', 2024, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص \(دورة أكتوبر 2024\)', 'دورة أكتوبر 2024', 60, 30\)", sql)
print("exam row exact match:", bool(m))
if not m: errors.append("exam row mismatch")

# 4. diff vs solved MD (stems + options), normalized whitespace
def norm(s):
    return re.sub(r"\s+", " ", s).strip()

# MD blocks: "Q61\nالسؤال: ...\nالاختيارات:\nA. ...\nB. ...\n...\nالجواب الصحيح: X\nالتعليل: ..."
blocks = re.split(r"\nQ(\d+)\n", "\n" + md)
# blocks[0] preamble, then pairs (num, body)
mdq = {}
for i in range(1, len(blocks) - 1, 2):
    num = int(blocks[i]); body = blocks[i + 1]
    sm = re.search(r"السؤال:\s*(.*?)\nالاختيارات:", body, re.S)
    stem = sm.group(1).strip() if sm else ""
    opts = dict(re.findall(r"^([A-E])\.\s*(.*?)\s*$", body, re.M))
    am = re.search(r"الجواب الصحيح:\s*([A-E])", body)
    em = re.search(r"التعليل:\s*(.*)", body, re.S)
    expl = em.group(1).strip() if em else ""
    expl = expl.split("جدول ملخص")[0].strip()  # trailing summary table after Q90
    mdq[num] = {"stem": stem, "opts": opts, "ans": am.group(1) if am else None,
                "expl": expl}

print(f"MD questions parsed: {len(mdq)}")
# Diffs expected by design (PDF wins over MD): truncated stems completed from PDF,
# Q69 table transcription + corrected sign, Q65/Q80/Q77/Q78 MD transcription slips fixed from PDF.
EXPECTED = {
    ("stem", 63), ("stem", 64), ("stem", 67), ("stem", 73),
    ("opt", 65, "C"), ("opt", 69, "A"), ("opt", 69, "B"), ("opt", 69, "C"), ("opt", 69, "D"),
    ("opt", 77, "E"), ("opt", 78, "E"), ("opt", 80, "B"), ("opt", 80, "C"),
    ("expl", 69),
}
expected_seen = []
for num in sorted(qs):
    if num not in mdq:
        errors.append(f"Q{num}: missing in MD"); continue
    # stem: MD may be truncated with [...] -> compare only if no [...]
    if "[...]" not in mdq[num]["stem"]:
        # strip figure/graphe description bracket appended to SQL stems
        sql_stem = re.sub(r" \[(Figure|Graphe) :.*$", "", qs[num]["text"])
        if norm(sql_stem) != norm(mdq[num]["stem"]):
            if ("stem", num) in EXPECTED:
                expected_seen.append(f"Q{num} stem (expected: MD truncated / figure bracket)")
            else:
                errors.append(f"Q{num}: STEM differs from MD.\n  SQL: {sql_stem}\n  MD : {mdq[num]['stem']}")
    for oid in "ABCDE":
        if oid not in mdq[num]["opts"]:
            errors.append(f"Q{num}: option {oid} missing in MD"); continue
        # Q69 options B/D differ by design (correction); Q77/Q78 E wording differs (PDF)
        if norm(qs[num]["opts"][oid]) != norm(mdq[num]["opts"][oid]):
            if ("opt", num, oid) in EXPECTED:
                expected_seen.append(f"Q{num} opt {oid} (expected: PDF correction)")
            else:
                errors.append(f"Q{num} opt {oid}: differs from MD.\n  SQL: {qs[num]['opts'][oid]}\n  MD : {mdq[num]['opts'][oid]}")
    if qs[num]["ans"] != mdq[num]["ans"]:
        print(f"NOTE Q{num}: answer differs from MD (SQL={qs[num]['ans']} MD={mdq[num]['ans']}) — expected only for Q69")
    # explanation: compare normalized, except Q69 (rewritten)
    if num != 69 and norm(qs[num]["expl"]) != norm(mdq[num]["expl"]):
        errors.append(f"Q{num}: EXPLANATION differs from MD.\n  SQL: {qs[num]['expl'][:200]}\n  MD : {mdq[num]['expl'][:200]}")

print("\n--- answers ---")
print(" ".join(f"Q{n}{qs[n]['ans']}" for n in sorted(qs)))
print("\n--- verification_note flags ---")
for n in sorted(qs):
    if qs[n]["note"]:
        print(f"Q{n}: {qs[n]['note'][:120]}...")
print("\n--- expected diffs (PDF wins over MD) ---")
for e in expected_seen:
    print(" +", e)
print("\nERRORS:" if errors else "\nALL CHECKS PASSED")
for e in errors:
    print(" -", e)
sys.exit(1 if errors else 0)
