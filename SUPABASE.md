# mobarati — Supabase (LIVE)

- **Project:** mobarati — Free plan, Frankfurt (eu-central-1)
- **Ref:** `aieeonrqwfpdvkseglck`
- **Project URL:** https://aieeonrqwfpdvkseglck.supabase.co
- **Dashboard:** https://supabase.com/dashboard/project/aieeonrqwfpdvkseglck
- **Signed in as:** elkhabazzakaria1@gmail.com (GitHub loopcoding1)

## Seed — COMPLETE and verified 2026-11-25 22:11 UTC

`supabase/full_setup.sql` ran in full via the SQL Editor (no file import).
- specialties = 1, exams = 6, questions = **412**
- Per exam: exam_2024_mgmt 72, exam_2024_tasks 60, exam_2023_mgmt 80,
  exam_2023_tasks 60, exam_2022_mgmt 80, exam_2022_tasks 60
- RLS enabled on all 3 tables; exactly 3 policies, all SELECT-only for
  roles {anon, authenticated}. No INSERT/UPDATE/DELETE policies.
- RPC `get_random_exam_questions` exists.

## Keys (frontend-safe)

- **Publishable key (prefer this):** `sb_publishable_FkcXw3dqUn8F9-QNx0zwzw_8maQLHyq`
- Legacy anon JWT also exists in Settings > API (retiring early 2027).
- **service_role key: NEVER in frontend code, never copied anywhere.**

## ⚠️ Database password

Supabase generated the DB password at creation; it was masked and never
displayed, and no browser password-manager save prompt appeared. If the
user does not have it recorded, reset it from Settings > Database.

## Data quirks (as in source file, reproduced unchanged)

- exam_2022_mgmt q9 option C lost its "text": key in transit once (Postgres
  22P02); fixed from file line 2228 and re-inserted correctly.
- exam_2022_mgmt q40 + q41 explanations end mid-sentence.
- exam_2022_tasks q28 explanation argues for a different answer than its
  stored correct answer (A).
- exam_2022_tasks q53 is a repeat of q7 (explanation says so).
- exam_2022_tasks q43, q44, q55, q56 have empty explanations.
- exam_2024_mgmt question numbers skip 6–9 and 55–58 (same in site data).

## Migration 2 — DONE 2026-11-25 22:19 UTC

`supabase/migration_primary.sql` ran in the SQL Editor (single line, comments
omitted — same statements, same order). Verified:
- specialties = 2 (specialty_econ_admin + specialty_primary التعليم الابتدائي)
- questions = 412, unchanged
- 5 new columns on questions: question_type, source_type, source_url,
  verified, verification_note
- unique index (exam_id, number); index on question_type
- RLS still enabled on all 3 tables.

## Next steps

1. Connect the site: install @supabase/supabase-js, `.env` with
   VITE_SUPABASE_URL + VITE_SUPABASE_ANON_KEY (publishable key), refactor
   data layer from `src/data/examsData.js` to Supabase with local fallback.
   — DONE 2026-11-25 ~22:40 UTC:
   - `src/lib/supabase.js` (client + fetchCatalog + fetchRandomQuestions RPC wrapper)
   - `src/data/catalog.js` (loadCatalog: Supabase first, local fallback;
     generateRandomExam parameterized on loaded exams)
   - `App.jsx` loads catalog async with a loading screen, passes specialties down
   - `ExamSetupSteps.jsx` takes specialties as prop, uses catalog's generateRandomExam
   - `.env` + `.env.example` created (.env is git-ignored)
   - Production build passes; preview serves 200.
2. Verify the 412 questions against site data 100%. — DONE, see below.
3. Add the 43 solved primary exams one by one (verified, flags recorded).
4. Only then resume exam solving at exam 44 (index 79, 2021 French).

## Verification 2026-11-25 (Supabase REST vs local examsData.js)

- Counts match exactly: 412 questions (72/60/80/60/80/60 per exam),
  6 exams, all exam fields match.
- All 412 questions: text, options, correctAnswers, explanation, category,
  number match exactly, EXCEPT 2 real option-text differences (DB vs local):
  - exam_2023_mgmt q61 option D: local «تفصيلا للأشغال فقط...» vs DB
    «تفصيلا للأعمال...» (compiled_exams.json agrees with local).
  - exam_2023_mgmt q78 option B: local «متنافسين اثنين.» vs DB
    «متنافس اثنين.» (compiled_exams.json agrees with local).
  - RESOLVED 2026-11-25 22:27–22:34: the SITE (local) wording is correct in both cases — mesconcours.ma's published paper+solution for this exact exam (Dec 2023) confirms «للأشغال فقط» (q61) and «متنافسين اثنين.» (q78). The DB rows were corrupted in transit during seeding. Fixed with two UPDATEs via the SQL Editor and verified via REST — DB now matches the site exactly on all 412.
- Specialty badge differs: local «متاح الآن بالكامل» vs DB «متاح بالكامل»
  (cosmetic; badge is only used by unused components).
- isMultiple: local data has NO isMultiple field in 5 of 6 exams (only
  2024_mgmt has it); DB has is_multiple=true exactly on the 6 questions
  with 2 correct answers (2023_mgmt q59; 2022_mgmt q1, q6, q13, q48;
  2022_tasks q2). ExamView uses isMultiple for multi-select, so with local
  data those 6 render as single-select (pre-existing local bug); Supabase
  data renders them correctly as multi-select.
- Supabase now returns 2 specialties (specialty_primary added by migration);
  local data still has 1 — expected, primary exams not added yet.

## Pilot primary exam — INSERTED + VERIFIED 2026-11-25 23:02

- exam_primary_2025_arabic_jan (Arabic, Jan 2025, 30 QCM, 60 min / coef 6):
  all 30 questions in the DB, inserted in 4 SQL Editor chunks.
- Final counts: exams=7, questions=442 (412 econ + 30 pilot).
- Parent REST-verified all 30 rows byte-for-byte against the SQL file
  (text, options, correct_answers, explanation, flags) — 0 differences.
- Duration note: exams.duration_minutes is NOT NULL DEFAULT 180 — files
  must never pass NULL for it. Parts of combined papers use the full-test
  duration (240 for the 2016/2017 maths+sciences papers) with a header note;
  2022 sciences_edu uses 60 (booklet session), 2023 sciences_edu uses 60
  (same component in 2024: 60 min / coef 8; cover missing).

## Deploy

- Vercel env vars VITE_SUPABASE_URL + VITE_SUPABASE_ANON_KEY saved 23:00
  (Production + Preview). Production domain: https://mobarati.vercel.app.
- Commit 8264d43 (Supabase connection) ready locally; git push blocked on
  GitHub CLI login — device code given to the user 23:00, push pending.
- Fast path for bulk SQL runs (user chose 23:00): Supabase Management API
  POST /v1/projects/{ref}/database/query with a PAT via the secure
  connector flow (custom.supabase) — token submitted by the user 23:10
  (legacy PAT «mobarati-loader», 7-day expiry). Connector doc + helpers:
  ~/workspace/custom-connectors/custom.supabase/ (sb_query.py, bulk_run.py).

## Bulk load — COMPLETE 2026-11-25 23:14

- First run: 61/61 files, 0 failures, ~2 min via the Management API.
  Verified counts: exams=76, questions=2255 (per-exam counts all match
  the files). Then 2020 files 7/7: exams=83, questions=2344.
- REST spot check (anon key): 2023 sciences Q92 = D (the repair landed);
  2020 maths 10 rows with the 3 flagged key conflicts stored + noted.
- Still to load: none. 2019 files loaded 23:18 (5/5, 166Q).
  Final DB state 23:18: exams=88, questions=2510. Registry 69/69 exams
  done — the publish-all pipeline is complete.
- Deploy: commit 8264d43 PUSHED 23:17 (6012d40..8264d43) after `gh auth
  setup-git` fixed the missing credential helper; Vercel auto-deployed.
  New bundle verified live (contains Supabase ref + anon key); the exact
  fetch queries (specialties / exams / paginated questions) all return
  correctly. User reported seeing only the econ specialty at 23:17 —
  diagnosed as a cached old page in their browser; fix is a hard refresh
  (Ctrl+Shift+R). SPECIALTY-FILTER FIX 23:20 (commit d66da50): Step 1 cards
  are now clickable with per-specialty counts (was: not clickable, both
  showed total exams + hardcoded 412); Step 2 filters by the selected
  specialty (was: year-only, mixed both); year tabs derived per specialty;
  random exam draws from the selected specialty only; header + titles +
  timer labels dynamic. Verified live (bundle index-BUwvPuo2.js contains
  the new strings + Supabase ref).
- PDF per exam 23:36 (commit 07d2fc4): Storage bucket `exam-pdfs`
  (public, read-only policy; temp anon INSERT policy created for the
  upload then DROPPED). 71 PDFs uploaded (~115 MB): 69 primary exam
  papers + 2 econ 2022 papers (downloaded from manasseb.com, third-party
  scans with watermark). Mapping: `supabase/seed_primary/pdf_mapping.json`
  (82/82 primary rows, 0 null; 4 shared files: 2020 all-subjects, 2021
  maths-sciences, 2023 all-subjects, 2023 didactics); upload script
  `upload_pdfs.py`; URLs in `pdf_urls.sql`. DB: exams.pdf_url set on
  84/88 rows; the 4 WITHOUT are econ 2023/2024 (mesconcours has them as
  HTML only, no PDF found). Site: `ExamView` header has a «PDF الامتحان»
  button (opens the original paper in a new tab), shown only when the exam
  has a pdf_url; random exams have none. Verified live (bundle
  index-F_PGhBfA.js contains «PDF الامتحان» + pdf_url; a public PDF URL
  returns 200 application/pdf).
