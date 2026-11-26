-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2021)
-- ====================================================================
-- المصدر: ملف الحل solved/2021/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2021.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2021-1467/
--   لا مفتاح رسمي منشور لهذه الدورة؛ النص نموذجي من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 1 سؤالاً مفتوحاً؛ منها 1 verified=true (مصدر third_party)؛
--   1 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2021_lycee', 'eps_lycee', 2021, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 1, 'لا مفتاح رسمي منشور لهذه الدورة؛ النص نموذجي من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (1 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_lycee_q1', 'exam_eps_kf_2021_lycee', 1, 'التقويم ركيزة لتعزيز التعلمات (إنشاء)', 'Traitez le sujet suivant : Si l''évaluation est considérée comme un pilier incontournable dans le système éducatif marocain, en quoi celle-ci peut-elle constituer un maillon fondamental pour consolider les apprentissages des élèves en EPS ?
À partir de vos connaissances et de votre vécu professionnel, analyser ce sujet en donnant des exemples précis tirés de l''enseignement de l''activité Hand Ball pour des élèves du tronc commun.', false, '[]'::jsonb, ARRAY[]::text[], 'Introduction. L''évaluation est inscrite dans les textes de la réforme (Charte, Loi-cadre 51.17, orientations pédagogiques d''EPS) comme un levier du pilotage des apprentissages. En EPS, elle ne mesure pas seulement une performance : elle consolide les acquis si elle est pensée comme un maillon de la chaîne enseigner, apprendre, évaluer, réguler. Problématique : comment l''évaluation, du début à la fin d''un cycle de handball en tronc commun, aide-t-elle l''élève à stabiliser ses acquis moteurs, méthodologiques et sociaux ?

1. Évaluation diagnostique (début de cycle, 1re séance). Objectif : situer le niveau de départ et les représentations. Exemple en handball : un match à effectif réduit (4 contre 4) observé avec une grille simple (passes réussies, tirs, replacement). On repère les profils : élèves qui gardent le ballon, qui n''oscillent pas entre attaque et défense, qui n''ont jamais joué. Résultat : constitution de groupes de besoin et choix des situations d''apprentissage.

2. Évaluation formative (pendant le cycle). Objectif : donner un feed-back immédiat et réguler. Exemples : (a) un atelier de passes en mouvement, avec un élève observateur muni d''une fiche (nombre de passes reçues en course, qualité du démarquage) ; (b) un jeu à thème « progression collective par passes avant » avec critères de réussite (3 passes avant avant de tirer) ; (c) fiche d''auto-évaluation en fin de séance (« j''ai réussi à... »). L''enseignant ajuste : si les élèves tirent trop tôt, il change la règle (bonus pour tir après démarquage). C''est là que l''évaluation consolide : l''élève comprend ses erreurs et les corrige à la séance suivante.

3. Évaluation sommative et certificative (fin de cycle). Objectif : mesurer l''atteinte des compétences du programme. Exemple : un match de 6 minutes noté sur 20, avec une grille à indicateurs : efficacité en attaque (tir, passes), efficacité défensive (interception, repli), respect des règles, rôle social (arbitrage, coaching). Pondération transparente (par exemple 8 points pour la performance motrice, 6 pour la maîtrise des techniques, 6 pour les compétences méthodologiques et sociales). Les élèves connaissent la grille dès le début.

4. Conditions pour que l''évaluation soit un maillon fondamental : des critères connus de l''élève ; des outils variés (observation, grilles, tests de passes ou de tirs, vidéo sur téléphone, auto et co-évaluation) ; la prise en compte des trois domaines (moteur, cognitif, socio-affectif) ; l''adaptation à l''état physique et au sexe (équité) ; la remédiation (exercices de renforcement pour les élèves en difficulté, défis pour les autres) ; la communication des résultats aux élèves.

5. Limites et réponses. Classes surchargées (40 élèves) : constituer des équipes de 6, utiliser des observateurs ; temps limité : intégrer l''évaluation dans la séance ; subjectivité de la notation : critères observables, double passage.

Conclusion. L''évaluation consolide les apprentissages en EPS quand elle accompagne chaque étape du cycle de handball, parce qu''elle informe l''élève sur sa progression et l''enseignant sur ses choix. Elle cesse d''être un contrôle final pour devenir un outil de régulation.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1467/', true, 'بنية النص (تشخيصي / تكويني / إجمالي + الشروط والحدود) مطابقة للمفاهيم المرجعية في التقويم (الوظائف الثلاث للتقويم، OP 2007) — رُوجع من هذه الزاوية؛ لا يوجد فيه ادعاء رقمي يحتاج تحققاً.')
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
