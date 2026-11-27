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
- Random per-subject 23:52 (commit 17e6553): random exam generation now
  draws ONLY from the chosen subject's exams. Step 2 random card has a
  subject picker (9 subjects for primary: arabic/french/maths/sciences/
  didactics×4/sciences_edu; 2 for econ: mgmt/tasks) with pool size shown
  (exams + questions available); the generated exam title/session and the
  Step 4 summary name the subject. Verified live (bundle
  index-B51XM7Rb.js contains «من مادة واحدة»).
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

- CLOSE-OUT 2026-11-26 00:04 (user: «دير المناسب» + «كمل كولشي»): all 5 pending
  items resolved — (1) 2024 sciences_edu Q111–Q115 added from mesconcours
  (exam_primary_2024_sciences_edu_oct_q111_115.sql, verified=false, 25/25);
  (2) 2017 Arabic didactics solved from the official grid, NEW exam
  exam_primary_2017_didactics_ar_jun (9 open Q, duration 60);
  (3) Jan 2018 sciences found on mesconcours, verified 100% vs official key,
  NEW exam exam_primary_2018_sciences_jan (22 Q, duration 120, no pdf_url);
  (4) Q82 resolved E per official 2021 curriculum p. 392, loaded 25/25
  (original file's questions_count fixed 24→25 + header updated);
  (5) 2023 didactics Q2/Q3/Q23 corrected per official curriculum
  (fix_2023_didactics_q2_q3_q23.sql): Q2 D→C, Q3 D→A, Q23 B→D, all
  verified=true, source_type='mixed'. FINAL DB: exams=90, questions=2547,
  6 rows without pdf_url. Registry 96 entries (71 exams done, 25 corrections
  pending). Remaining gap: Nov 2025 Science Q99–Q102 (missing scan page).

## Open-question UX fix — 2026-11-26 00:13 (commit 114bc41)
- User report: exams with no options, e.g. 2016. Root cause is NOT a data error: 2016 papers are genuinely open/production questions (24 open Q in Arabic 2016, confirmed from the solved MD). Open questions in DB: 318 total (2016: 77/77, 2017: 40, 2018: 113, 2019: 43, 2020: 33, 2021: 12; 2022+: 0).
- Fix: `mapQuestion` now passes `questionType`. ExamView shows a «سؤال مفتوح» badge, a «عرض الجواب النموذجي» button (reveals the model answer in either mode), and self-mark buttons «أجبت بشكل صحيح / أخطأت» stored as `__correct`/`__incorrect` in answers — feeds scoring, palette, ResultView and the retake-mistakes filter. QCM/matching rows with empty options (2021 Arabic Q17–Q20 — page 6/8 missing from the scan) now show an honest «صيغة غير متوفرة» notice instead of an empty card. Setup steps no longer label every exam «QCM».
- A search for the missing 2021 Arabic page 6/8 (Q17–Q20 wording) is running in parallel; if found, the 4 rows will be filled, otherwise the notice stays.

## 2021 Arabic Q17–Q20 recovered — 2026-11-26 00:26 (commit 968be6d)
- Page 6/8 was missing from the workspace scan; recovered from the complete 8-photo
  Facebook carousel of «منصة الأمازيغية التعليمية» (slide 6 = page 6/8; slides 7–8
  verified as pages 7–8). All 4 answers cross-checked vs the official key — exact match
  (Q17 matching أ←5·ب←3·ج←2·د←1; Q18 D; Q19 B; Q20 C).
- File: supabase/seed_primary/fix_2021_arabic_q17_q20.sql (loaded + REST-verified).
  Solved MD + registry index 77 updated. Zero qcm/matching rows with empty options remain.
- Q20 caution: 978px scan; hamza seats verified at codepoint level
  (A alif+sukun, B below alif, C waw+damma = correct, D alif+damma).

## Adsterra ads — 2026-11-26 12:14 (commit 134f039)
- User: Adsterra publisher account elkhabazzakaria, site mobarati.vercel.app (ID 6228772, Approved).
  Codes copied read-only from the dashboard by the browser (no settings changed).
- Banners used: 728x90 (key 80ebd6b209581e10a8a3d24a024cfe4c, unit 728x90_1) desktop,
  320x50 (key c8bb8dcdc09d2425b132f8be0b903227, unit 320x50_1) mobile. Script host is
  bauval.org/22/<key> (Adsterra's current code — NOT invoke.js). Other units exist
  (300x250, 468x60, 160x300, 160x600, Popunder_1, NativeBanner_1, SocialBar_1) — NOT used.
- Smartlink (Direct Link) Smartlink_1: https://araplhn.org/4/11a472392816d1b0715605c73a5ee8f9
- Implementation: src/components/Ads.jsx (AdBanner injects the script in useEffect;
  SupportAdButton opens the Smartlink in a new tab). Placed under the setup card
  (ExamSetupSteps) and under the results review (ResultView). Every placement is
  labelled «إعلان» + «الإعلانات كتدعم استمرار المنصة مجاناً»; the support button
  states BEFORE clicking that it opens an ad. NO ads inside the active exam.
  NO Popunder/SocialBar/Native anywhere — user: do not make the site annoying.
- Git quirk: `git push` sometimes fails with "could not read Username" — re-run
  `gh auth setup-git` and push again (recurs between sessions).

## POP modal gate — 2026-11-26 12:21 (commits c0083eb, 58dcc0e)
- Banner verification: slot was BLANK in the cloud browser (that environment blocks
  ad networks) but RENDERS in real Chrome — animated green "Incoming Message!" creative
  + iframe present, bauval.org/22/<key> loads fine. Implementation is correct.
- Popunder_1 (ID 32479612): <script data-cfasync="false"
  src="https://abscloud.org/1/02fa6991cddcfc0cc1ff9852c97f364a"></script>
  (single tag; script arms on next user click, frequency-capped via pp_clicks_*).
- PopAdModal (Ads.jsx): appears ONCE per session (sessionStorage pop_ad_prompted)
  when the user clicks «انطلاق الاختبار». It informs the user a pop ad will open
  to support the free platform. Confirm («فتح الإعلان وبدء الاختبار») injects the
  popunder script (preloaded while the modal is open) and starts the exam — the
  user's click is what opens the ad. Cancel just closes the modal; nothing is
  loaded/armed, no surprise pops. No popunder script is ever loaded on page load.
- Also defined the missing animate-fadeIn keyframes in index.css (the class was
  used in several components but defined nowhere).

## POP modal fix — 2026-11-26 12:27 (commit 5a1f518)
- Diagnosis (verified live twice): the Popunder script does NOT open on the
  click that loads it. It lays a transparent layer over the page and fires on
  the NEXT click — which was the user's first answer click in the exam. Worse,
  that click was SWALLOWED: the answer was not selected (confirm stayed
  disabled). The ad tab that opened was melbet-ma.com (clickunder URL).
- Fix: PopAdModal's confirm now opens the Smartlink directly with window.open
  in the click handler — the ad opens on the same click, no click is swallowed,
  no mid-exam pop. Popunder_1 is NOT injected anywhere in the gated flow.

## Batch 1 — POP x2 + direct navigation + multi-select (commit bc49c66, verified live 2026-11-26 12:42)
- POP modal now shows on EVERY launch AND before results (PopAdModal with
  title/body/confirmLabel props; App.jsx gates results). Both verified: launch
  modal opens the Smartlink ad; results modal «قبل عرض النتائج» opens the ad
  then shows the results screen.
- Setup: specialty card click jumps to step 2, exam card click jumps to step 3;
  footer Next removed on step 1, kept on steps 2 (random mode) and 3.
- ExamView instant mode: correct answers reveal ONLY on «تأكيد الإجابة» (never
  on selection), so multi-answer questions take several picks; no correct/
  incorrect sound on selection; selection locks after confirming. Verified on
  2022 mgmt Q1 (multi, correct B+C): A red, B+C green, locked after confirm.

## SEO/AEO + icon (commit 9f1c557, 2026-11-26)
- Transparent icon: graduation cap #1C1D18 + emerald tassel, no background.
  favicon.svg, favicon-16/32 PNG, icon-192/512, maskable 512, apple-touch-icon,
  icon-white.svg (header tile). Builders: build_icon.py, build_og.py.
  OG image 1200x630 (og-image.png). Old Vite purple-bolt favicon replaced.
- index.html: title/description/keywords, canonical, robots, OG + Twitter
  cards, theme-color, manifest, JSON-LD (WebSite + Organization + FAQPage),
  noscript summary. FAQ section (FaqSection.jsx) on the setup page — its
  Q&As MUST stay identical to the JSON-LD FAQPage. sitemap.xml + robots.txt.
- Google Search Console: NOT yet submitted — verification meta tag still
  needed from the user's Search Console account (HTML-tag method).

## Google Search Console — DONE 2026-11-26 12:50
- Property https://mobarati.vercel.app/ (URL prefix) verified via HTML tag
  under loopcodingofficial@gmail.com (verification meta in index.html,
  commit 6fa1012). Sitemap submitted: Success, 1 discovered page, last read
  26 Nov 2026 (first attempt transient "Couldn't fetch", resubmitted OK).
  No performance data yet (new property, ~1 day); no errors/manual actions.

## Click-count POP (commit 0dec9ee, verified live 2026-11-26 13:56)
- ExamView counts clicks on the question area + bottom bar (selections,
  confirm, next/prev, skip); header clicks NOT counted. Every 30 clicks the
  «استراحة إعلانية» card appears; confirm opens the Smartlink ad on the
  click and the exam continues; «متابعة بدون إعلان» skips. Counter resets
  each time the card shows. Verified: fired exactly on the 30th click (Q15
  Next), no card at 10/20/28 clicks, no card again after 5 more clicks.
  Note: one Smartlink destination (linkafactory.com) returned a Cloudflare
  Worker error 1101 — advertiser-side broken landing page, not the site.

## PE (التربية البدنية) — LOADED + VERIFIED 2026-11-26 16:54 UTC

- **Decision (user, 2026-11-26 16:00, «بجوج»):** TWO PE specialties on the
  platform (collège + lycée) AND the aptitude exams (الكفاءة المهنية).
  The recruitment written papers are SHARED between the two tracks
  (every paper header says «الثانوي بسلكيه الإعدادي والتأهيلي»), so each
  recruitment paper is loaded TWICE (identical content, distinct exam_ids,
  one under each specialty). Aptitude papers are per-track already.
- **Migration 3** `supabase/migration_eps.sql` (applied via Management API,
  201): subject_type CHECK extended with `eps_specialty`,
  `eps_didactics`, `eps_aptitude`; new column `exams.verification_note`
  (exam-level notes: negative marking, unrecoverable questions, renumbering);
  specialties `eps_college` (التربية البدنية والرياضية — الثانوي الإعدادي)
  and `eps_lycee` (… — الثانوي التأهيلي), icon GraduationCap, #1C1D18.
- **Site UI** (`src/components/ExamSetupSteps.jsx`): SUBJECT_LABELS +
  SUBJECT_ORDER extended with the three eps values, so the random-exam
  subject picker shows «مادة التخصص (التربية البدنية) / ديداكتيك التربية
  البدنية / الكفاءة المهنية — ديداكتيك». Exam cards already show
  `subjectTitle` from the DB.
- **Seeds** `supabase/seed_eps/` — 37 files, one per exam row, generated by
  Python parsers from the solved MDs (never hand-copied). 5 builder agents;
  file-level check: 1610 question INSERTs, all counts match.
  - Recruitment (12 papers × 2 specialties = 24 rows, 1482 Q):
    2016 specialty 11 open / 2016 didactics 4 open (300 min);
    2017 64 (60 QCM + 4 open, 240 min); 2018 62 (240 min);
    2019 61, 2020 61, 2021 61 (180 min);
    Feb 2024 specialty 100 QCM (240 min); Oct 2024 didactics 60 QCM
    (120 min); Oct 2024 specialty 97 QCM only — Q12/Q48/Q49 unrecoverable
    (240 min); Nov 2025 specialty 100 QCM 5 options (240 min, negative
    marking); Nov 2025 didactics 60 QCM 5 options (120 min).
  - Aptitude (13 rows, 128 Q, all 180 min, all open except 2025):
    collège 2019 (4), 2020 (6), 2021 (9 sub-Q), 2022 (5), 2023 (6, /16),
    2024 (7); lycée 2019 (8), 2020 (5), 2021 (1 dissertation), 2022 (9),
    2023 (9, /16), 2024 (9); lycée 2025: 50 QCM didactics only, booklet
    Q21–Q70 renumbered 1–50 in the DB, Q47 duplicates Q37 (kept, flagged).
- **Answers by source:** 2019 + 2020 recruitment and Nov 2025 specialty
  from the official key (`source_type='official'`, verified=true; Nov 2025
  Q2 stores official B with the dispute flagged — the key looks wrong vs
  the negative-split definition). 2016 athletics part official; 2018 Q40=A
  and Q53=C corrected against the official OP grids. Everything else
  `third_party`, verified=true only where the MD explicitly confirms an
  individual cross-check (e.g. 2021: 40/60 where three keys agree).
  All «للتحقق» / «إجابة مرجّحة» flags preserved in verification_note.
- **PDFs** `supabase/seed_eps/` (staging `pdf_staging/`, script
  `upload_pdfs_eps.py`, `pdf_urls.sql`): 10 objects uploaded to `exam-pdfs`
  (all HTTP 200; temp anon INSERT policy created then DROPPED — only the
  public-read policy remains). 17 exam rows carry pdf_url: 2016 specialty
  scan, 2016 didactics manasseb, 2017, 2018, 2019 manasseb paper, 2020
  paper, 2021 manasseb (each shared by both specialty rows); aptitude
  wadifa-info scans converted JPG→PDF (2021 collège 2pp, 2024 lycée 2pp,
  2025 lycée 13pp). 20 rows have NO pdf_url (2024/2025 papers are
  HTML-only or photo-only sources; other aptitude papers mesconcours-only).
  Public URLs verified 200 application/pdf.
- **Load:** bulk_run 38/38 files OK (37 seeds + pdf_urls.sql), ~77 s.
- **Verification (parent, REST + Management API, all passed):**
  exams 90→127, questions 2547→4157. All 37 exam rows: declared
  questions_count == actual count (total 1610). Full DB-vs-file comparison
  on all 1610 rows (text, explanation, answers, types, flags): 0
  mismatches. All 767 QCM answers re-checked against the solved MDs
  (summary tables + per-section markers; KF 2025 with the +20 booklet
  offset): 0 mismatches. College/lycée duplicate rows byte-identical in
  content. Exam metadata (duration, subject_type, specialty) all correct.
  PE totals: eps_college 18 exams / 779 questions; eps_lycee 19 exams /
  831 questions.
- **NOT loaded:** the 5 partial 2022/2023 recruitment papers (video-only
  reconstruction, incomplete) — see `~/workspace/exams-eps/`
  solved_registry.json (status partial). No registry file was edited.

## 2022 specialty — RECOVERED + LOADED 2026-11-26 17:40 UTC

- The Nov 2022 specialty paper (100 QCM) had no written paper or key
  anywhere; it was recovered 100/100 by reading the two Orientation
  Oussa-Sport YouTube video frames in the browser (stems + 4 options +
  correct answer + Arabic explanation per question). Source file:
  `~/workspace/exams-eps/solved/2022/التربية البدنية (التخصص) - دورة نونبر 2022.md`.
- **Seeds** `supabase/seed_eps/exam_eps_2022_specialty_{college,lycee}.sql`
  (generated by Python parser `/tmp/parse_2022_eps.py`, verified by
  `/tmp/verify_2022_eps.py` against the MD key table — 0 mismatches).
  Loaded via bulk_run 2/2 OK. No pdf_url (video-only source).
- **Rules applied:** Q61(b) (heart rate 220−15=205, answer D) loaded as
  Q61; extra duplicate slide Q61(a) (situations d'apprentissage) NOT
  loaded — noted in the exam verification_note. 5 answers flagged
  «إجابة مرجّحة حسب المقدّم» (Q67, Q69, Q83, Q97, Q99). Duration 240 min
  is UNCONFIRMED (file says unknown; Feb 2024 100-QCM reference) — noted
  in the exam verification_note. source_type='third_party',
  verified=false (video correction, no official key, no systematic
  cross-checks). Categories mapped to the 6-category French vocabulary
  used by the Feb/Nov 2024–25 specialty seeds (APS/Physiologie/Anatomie/
  Accidents et secourisme/Biomécanique/Sport scolaire).
- **Verification (REST + Management API, all passed):** exams 127→129,
  questions 4157→4357. Both rows questions_count 100 == actual 100.
  Spot-checks: Q1=A, Q50=B, Q61=D, Q67=D + probable flag, Q100=A
  (college); Q61=D, Q100=A (lycée). Specialty totals now:
  eps_college 19 exams / 878 questions; eps_lycee 20 exams / 932 questions.

## 2022 + 2023 didactics — SOLVED BY RESEARCH + LOADED 2026-11-26 17:52 UTC

- Both papers had no official key and no written correction; both were
  solved by per-question research (OP 2007/2009, CRMEF modules, etc.).
- **2023 didactics («دورة يناير 2023», session name as in the videos —
  the date itself is UNCONFIRMED, may be the Nov 2022 session):** 60 QCM
  recovered from the two epsmaroc paper videos (ASR transcripts; the
  channel's "correction" videos correct a DIFFERENT paper and plant false
  answers — never used). **58/60 solved (41 confident + 17 probable
  «للتحقق»); Q50 + Q52 NOT loaded** (stems unrecoverable from the
  transcript). Source:
  `~/workspace/exams-eps/solved/2023/ديداكتيك التربية البدنية - دورة يناير 2023.md`.
- **2022 didactics (Nov 2022):** 52/60 stems recovered verbatim from the
  13-photo Facebook carousel of the printed paper (Mouhamed Sabbek);
  **Q43–Q46 + Q55–Q58 NOT loaded** (pages 12/16 and 15/16 missing from
  the post — no source exists). **52/52 solved (30 confident + 19
  probable); Q48 is a verbatim duplicate of Q32** (both C, flagged).
  Q21=B, Q22=C, Q23=C from @prof_marouan_eps reels, cross-checked.
  Source: `~/workspace/exams-eps/solved/2022/ديداكتيك التربية البدنية - دورة نونبر 2022.md`.
- **Seeds** `supabase/seed_eps/exam_eps_202{2,3}_didactics_{college,lycee}.sql`
  (generated by Python parser `/tmp/parse_didactics.py` from the MDs;
  verified by `/tmp/verify_didactics_sql.py` — SQL-vs-MD 0 mismatches on
  stems, options, answers, explanations, flags; keys match the MD summary
  tables). Original question numbers kept with gaps (as Oct 2024
  specialty: 97 rows with gaps). Duration 120 min UNCONFIRMED for both
  (Oct 2024 reference) — noted in each exam's verification_note.
  source_type='third_party', verified=false, no pdf_url.
- **Load:** bulk_run 4/4 files OK. **Verification (REST, all passed):**
  exams 129→133, questions 4357→4577. All 4 rows questions_count ==
  actual (58/58, 52/52). Spot-checks: 2022 Q1=C, Q32=C + probable,
  Q48=C + probable + duplicate note, Q60=D (both specialties); 2023
  Q1=C, Q23=D, Q60=C + probable (both specialties). Q50/Q52 (2023) and
  Q43–Q46/Q55–Q58 (2022) confirmed absent (0 rows). Probable flags in DB:
  72 = 2×(17+19). Specialty totals now: eps_college 21 exams / 988
  questions; eps_lycee 22 exams / 1042 questions.

## CRMEF 2023 specialty — FRAME-RECOVERED + CORRECTED KEY + LOADED 2026-11-26 19:37 UTC

- **Source:** two epsmaroc videos (part 1 `mYPh-HsNRw8` Q1–Q50, part 2
  `4n6UZvNqM4E` Q51–Q100) showing CamScanner scans of the printed paper.
  Stems + all 4 options transcribed from paused frames (Q1–Q50 by 18:xx,
  Q51–Q70 by 19:02, Q71–Q100 by 19:29). The creator states in the part-1
  intro that **10 of the 50 part-1 answers are deliberately wrong** —
  his spoken letters were therefore NEVER trusted as the key.
- **Verification wave 2 (5 verifiers, per-question research vs
  authoritative sources):** corrected key
  `DCBBADBAABABACABCCBACBBBAABDDCCABCABDCCBCCACDDDCADCBDCDCCCBDCAACCADCBCCABBDBCBCBABBCCACACACBDABCADCD`
  — **77 spoken-right, 6 confirmed-wrong, 17 probable, 0 unresolvable.**
  Confirmed corrections: Q1 B→D, Q14 D→C, Q24 A→B (planted) + Q55 B→D,
  Q65 A→C, Q100 A→D (creator errors); probable corrections Q8 C→A, Q28
  C→D, Q75 A→D. **5/10 planted identified; 5 remain unidentified**
  (most likely among the part-1 probables). Disputes resolved: Q90 → A
  (Whisper + frame-read + fact), Q67 → D (FIBA 31.3.3; browser's B
  refuted), Q83 → B (spoken right — needs ≥12/20 AND club affiliation),
  Q27 correct B certain (spoken-letter ambiguity). One key typo caught
  by the parent after the merge: the corrected file's header key was
  99 letters (dropped C at Q58) — fixed to the 100-letter key above,
  rebuilt from all 100 section blocks and verified equal.
- **Corrected file:** `~/workspace/exams-eps/solved/2023/التربية البدنية
  (التخصص) - دورة ولوج CRMEF 2023 (مصحح).md` (original byte-untouched).
  Wave-2 reports: `CRMEF 2023 - verification-wave2_Q{1-20,21-40,41-60,
  61-80,81-100}.md`. Registry eps14 → done.
- **Load:** seeds `supabase/seed_eps/exam_eps_2023_crmef_{college,lycee}.sql`
  (generated by Python parser from the corrected MD; SQL-vs-MD 0
  mismatches). subject_type 'eps_specialty', duration 240 min
  UNCONFIRMED (Feb 2024 reference), source_type 'third_party', no
  pdf_url. verified=false on exactly the 17 probable rows per exam;
  verified=true on the other 83. Categories: APS 38, Physiologie 23,
  Sport scolaire 12, Anatomie 11, Accidents 10, Biomécanique 6.
  **Verification (REST, all passed):** exams 133→135, questions
  4577→4777; both rows questions_count 100 == actual 100; all 200
  answers match the corrected key (string_agg check); 17 probable
  flags per exam; college/lycée duplicates 0 mismatches. Commit
  **758ac48** (pushed to main; Vercel auto-deploys). Specialty totals
  now: **eps_college 22 exams / 1088 questions; eps_lycee 23 exams /
  1142 questions.**
