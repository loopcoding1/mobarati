-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- السياق: 4e année، «présent de l'impératif des verbes usuels du 3e groupe»، semaines 3–4،
--   unité 5 «La forêt»، support micro-dialogue Manal et Kamal.
-- كل الأسئلة مفتوحة (options فارغة، correct_answers فارغة)؛ الأجوبة عناصر من المفتاح الرسمي.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_didactics_fr_nov', 'specialty_primary', 2020, 'didactics_fr', 'Didactique du français', 'Examen de didactique du français (session de novembre 2020)', 'دورة نونبر 2020', 240, 5)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (5 سؤالاً)

-- أسئلة امتحان: Examen de didactique du français (session de novembre 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_fr_nov_q1', 'exam_primary_2020_didactics_fr_nov', 1, 'Didactique du français', 'À partir du support susmentionné, élaborez une fiche pédagogique pour cette activité de conjugaison selon les consignes suivantes: 1.1. Définissez l''objectif d''apprentissage visé. (1pt)', false, '[]'::jsonb, ARRAY[]::text[], 'Objectif: Conjuguer les verbes usuels du troisième groupe au présent de l''impératif. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de didactique du français (session de novembre 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_fr_nov_q2', 'exam_primary_2020_didactics_fr_nov', 2, 'Didactique du français', '1.2. Mentionnez la durée et le nombre de séances. (1pt)', false, '[]'::jsonb, ARRAY[]::text[], '60 minutes en deux séances de 30 minutes (semaine 3: séance 1; semaine 4: séance 2). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de didactique du français (session de novembre 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_fr_nov_q3', 'exam_primary_2020_didactics_fr_nov', 3, 'Didactique du français', '1.3. Sachant que l''activité en question se déroule en quatre étapes méthodologiques cohérentes et complémentaires, indiquez ces étapes et proposez en fonction de leurs objectifs: - un questionnement pour les étapes 1 et 2 (quatre questions, au moins, pour chacune de ces deux étapes); - un exercice pour chacune des étapes 3 et 4. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Les quatre étapes (0,5pt chacune): 1. Observation et découverte; 2. Compréhension / Conceptualisation; 3. Application / transfert; 4. Évaluation et soutien. Questionnement étape 1 (1pt, ≥4 questions — exemples du corrigé): Qui parle dans la 1re réplique? Et à qui? Que dit la maman? Quel est le verbe? Et son infinitif? Qui parle dans la 2e réplique? Que dit le papa? Questionnement étape 2 (1pt, ≥4 questions — exemples du corrigé): À quel groupe appartiennent les verbes? Sont-ils accompagnés de pronoms? À quelle personne sont-ils conjugués? Quelle est la terminaison? À quel temps? Conjuguez «aller» et «faire» au présent de l''impératif à la 2e personne du singulier et à la 1re personne du pluriel. Exercice étape 3 (1pt — exemple du corrigé): Conjugue les verbes au présent de l''impératif: a. (faire)... de votre mieux pour protéger la forêt (2e pers. plur.); b. (aller)... cueillir des fleurs (1re pers. plur.); c. (mettre)... les déchets dans la poubelle (2e pers. sing.); d.... Exercice étape 4 (1pt — exemple du corrigé): conjugue les verbes (aller, dire, venir,...) au présent de l''impératif (tableau).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de didactique du français (session de novembre 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_fr_nov_q4', 'exam_primary_2020_didactics_fr_nov', 4, 'Didactique du français', '1.4. Formulez la règle de conjugaison à faire déduire et retenir par les élèves. (4pts)', false, '[]'::jsonb, ARRAY[]::text[], '«Au présent de l''impératif, les verbes ne sont pas accompagnés de pronoms de conjugaison. En général, les verbes du troisième groupe ont la même forme au présent de l''impératif qu''au présent de l''indicatif, à la 2e personne du singulier, à la 1re personne du pluriel et à la 2e personne du pluriel.» Exceptions: «aller» ne prend pas «s» à la 2e pers. sing. («va»); être/avoir/savoir: sois/soyons/soyez; aie/ayons/ayez; sache/sachons/sachez. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de didactique du français (session de novembre 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_fr_nov_q5', 'exam_primary_2020_didactics_fr_nov', 5, 'Didactique du français', '2. Lors de l''évaluation de cette activité de conjugaison, vous constatez que des élèves éprouvent des difficultés à conjuguer le verbe « aller » au présent de l''impératif. Montrez comment vous procéderez pour remédier à ces difficultés. (3pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Remédiation: rappel de la conjugaison à l''indicatif (ardoises); écriture au tableau des deux conjugaisons (2e pers. sing., 1re pers. plur., 2e pers. plur.); comparaison — pas de pronoms à l''impératif; la forme de l''impératif ressemble à celle de l''indicatif à la 1re et à la 2e personne du pluriel; à la 2e personne du singulier, pas de «s» («va»); évaluation de l''impact par des exercices. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
