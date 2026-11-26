-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023)
-- ====================================================================
-- المصدر: ملف الحل 2023/ديداكتيك التربية البدنية - دورة يناير 2023.md
--   فيديوهَا الورقة (قناة epsmaroc): الجزء 1 Q1–Q15
--   https://www.youtube.com/watch?v=YpFJXSqP2XM
--   الجزء 2 Q16–Q60 https://www.youtube.com/watch?v=zUh54jw4vEU
--   لا يوجد مفتاح رسمي ولا ورقة PDF؛ الأجوبة محلولة بالبحث سؤالاً بسؤال
--   (OP 2007/2009، وحدات CRMEF — 41 مؤكدة + 17 مرجّحة «للتحقق»).
--   Q50 وQ52 غير محمّلتين (صياغتاهما غير مستعادتين من التفريغ).
--   المدة غير مؤكدة (120 دقيقة مرجعاً من دورة أكتوبر 2024).
--   تاريخ الدورة («يناير 2023») غير مؤكد — قد تكون دورة نونبر 2022.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2023_didactics_lycee', 'eps_lycee', 2023, 'eps_didactics', 'ديداكتيك مادة التخصص', 'امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023)', 'دورة يناير 2023', 120, 58, 'المدة غير مؤكدة (120 دقيقة مرجعاً من دورة أكتوبر 2024)؛ Q50 وQ52 غير محمّلتين (صياغتاهما غير مستعادتين من التفريغ)؛ 17 جواباً مرجّحاً «للتحقق»؛ الأجوبة محلولة بالبحث سؤالاً بسؤال من OP 2007/2009 ووحدات CRMEF — لا مفتاح رسمي؛ تاريخ الدورة («يناير 2023») غير مؤكد — قد تكون دورة نونبر 2022')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (58 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q1', 'exam_eps_2023_didactics_lycee', 1, 'ديداكتيك مادة التخصص', 'La difficulté d''une tâche est en rapport avec :', false, '[{"id": "A", "text": "la difficulté d''information à traiter pour l''organisation et le déclenchement du mouvement"}, {"id": "B", "text": "le nombre d''actions qu''il convient de traiter simultanément"}, {"id": "C", "text": "la quantité d''information à traiter pour le contrôle du mouvement"}, {"id": "D", "text": "le niveau des exigences sollicitant les ressources bioénergétiques"}]'::jsonb, ARRAY['C']::text[], 'Famose (1992), cité dans le lexique STAPS / MindMeister reprenant Famose : « Difficulté = Quantité d''information à traiter pour contrôler le mouvement » ; et « Complexité = Quantité d''information à traiter pour l''organisation et le déclenchement du mouvement ». الخيار A هو إذن تعريف **التعقيد (complexité)** لا الصعوبة — وهو المشتِّت الكلاسيكي في هذا السؤال. الخيار D (الموارد البيو-طاقية) يخص صعوبة من نوع آخر (exigences énergétiques)، لا التعريف الفاموزي للصعوبة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q2', 'exam_eps_2023_didactics_lycee', 2, 'ديداكتيك مادة التخصص', 'L''éthnomotricité désigne le champ :', false, '[{"id": "A", "text": "le champ est la nature des pratiques motrices considérées comme un travail par les instances sociales et envisagées essentiellement sous l''angle de la mise en jeu corporel"}, {"id": "B", "text": "le champ est la nature des pratiques motrices envisagées sous l''angle de leur rapport à la culture et au milieu social au sein desquels elles se sont développées"}, {"id": "C", "text": "le champ est la nature des comportements professionnels socialement très différenciés et envisagés pour des raisons économiques et institutionnelles"}, {"id": "D", "text": "le champ est la nature des pratiques orientées vers le plaisir de l''action, l''atteinte du record, la recherche du [disque ؟] et du spectacle"}]'::jsonb, ARRAY['B']::text[], 'Parlebas, praxéologie motrice : l''ethnomotricité est la motricité envisagée dans son rapport à la culture — les jeux traditionnels sont « le blason des cultures » (Parlebas, *Jeux traditionnels, sports et patrimoine culturel*, 2016 ; compte rendu Cairn) ; l''ethnomotricité y est valorisée comme motricité propre à une culture / un milieu social. الخيار A يصف الممارسات كـ«عمل» (travail) — ليس تعريف الإثنوموتريسيتي؛ والخيار D يصف الرياضة-الاستعراض (record/spectacle).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q3', 'exam_eps_2023_didactics_lycee', 3, 'ديداكتيك مادة التخصص', 'L''apprentissage par observation est surtout privilégié par :', false, '[{"id": "A", "text": "le socioconstructivisme"}, {"id": "B", "text": "la Gestalt-théorie"}, {"id": "C", "text": "le cognitivisme"}, {"id": "D", "text": "le constructivisme"}]'::jsonb, ARRAY['A']::text[], 'Bandura (1977), *Social Learning Theory* : « la plupart des comportements que les gens affichent sont appris par l''observation du comportement des autres et par l''imitation de ceux-ci » ; l''apprentissage vicariant (imitation par observation d''un pair/modèle) est l''une des trois procédures d''acquisition de la théorie de l''apprentissage social (Wikipédia, « Théorie de l''apprentissage social » ; thèse Brini 2024 : « On ne peut évoquer le socioconstructivisme sans citer les travaux de Bandura (1977) sur l''apprentissage social »). في تصنيف امتحانات CRMEF يُدرج باندورا ضمن السوسيوبنائية. Gestalt (B) تخص الإدراك الكلي للشكل؛ والبنائية (D، بياجيه) تخص البناء الفردي بالفعل لا بالملاحظة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q4', 'exam_eps_2023_didactics_lycee', 4, 'ديداكتيك مادة التخصص', 'Selon les orientations pédagogiques 2007-2009, l''éducation physique et sportive est une matière d''enseignement :', false, '[{"id": "A", "text": "facultative du primaire jusqu''au lycée"}, {"id": "B", "text": "obligatoire du primaire jusqu''au lycée"}, {"id": "C", "text": "facultative seulement dans le primaire"}, {"id": "D", "text": "obligatoire seulement dans le collège et le lycée"}]'::jsonb, ARRAY['B']::text[], 'OP 2007/2009، تعريف المادة: « L''EPS est une matière d''enseignement faisant partie du système éducatif, et intégrée dans tous les niveaux scolaires » (OP 2007, cadre théorique §1 ; OP 2009, même التعريف)؛ و« Selon les textes officiels marocains, l''éducation physique et sportive (EPS) est une matière d''enseignement obligatoire et fait partie intégrante de l''éducation générale dans tous les cycles d''enseignement » (European Scientific Journal, 2017, citant le curriculum du secondaire, MEN 2007).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q5', 'exam_eps_2023_didactics_lycee', 5, 'ديداكتيك مادة التخصص', 'La détermination du programme en EPS, les OP [2007-2009] :', false, '[{"id": "A", "text": "un enjeu : [la] juste position des APS [صياغة غير واضحة في التفريغ]"}, {"id": "B", "text": "décrire un descriptif de ce que l''on doit enseigner"}, {"id": "C", "text": "assurer une cohérence externe didactique de l''EPS et une cohérence interne didactique des APS"}, {"id": "D", "text": "mettre en place des cycles d''enseignement dont le but est l''acquisition des compétences disciplinaires"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: لم يُعثر على الصياغة حرفياً في نص OP 2007/2009 المتاح (Scribd). لكن: الخيار B («décrire un descriptif de ce que l''on doit enseigner») تكرار لفظي لا يعبّر عن وظيفة؛ والخيار D («mettre en place des cycles d''enseignement…») يصف الدورة (cycle) لا تحديد البرنامج؛ والخيار A مشوّش الصياغة («un enjeu : [la] juste position des APS»). يبقى C وحده صياغةً على مستوى البرنامج (وظيفة تأمين الانسجام الداخلي/الخارجي)، وهو مفهوم معروف في أدبيات البرامج (cohérence interne = alignement pédagogique ; cohérence externe = alignement contextuel).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q6', 'exam_eps_2023_didactics_lycee', 6, 'ديداكتيك مادة التخصص', 'Le projet pédagogique de l''éducation physique et sportive est :', false, '[{"id": "A", "text": "pluridisciplinaire déterminé par un choix politique"}, {"id": "B", "text": "disciplinaire déterminé par le corps pédagogique de la matière"}, {"id": "C", "text": "pluridisciplinaire déterminé par l''équipe pédagogique sous la coordination du directeur de l''établissement"}, {"id": "D", "text": "disciplinaire déterminé par un besoin et conduit en concertation avec l''enseignant et l''administration"}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: OP 2007 (cadre méthodologique, §1 Le projet pédagogique) : « Le travail de l''équipe pédagogique commence à partir du programme national… le projet pédagogique représente un objet pour l''application de ce travail »، ويُحضَّر « en consultant et en coordonnant avec l''administration et l''inspecteur de la matière ». المشروع البيداغوجي للتربية البدنية مشروع **تخصصي (disciplinaire)** من إعداد هيئة تدريس المادة — بخلاف مشروع المؤسسة الذي هو **متعدد التخصصات (pluridisciplinaire)** (الخيار C يصف مشروع المؤسسة/الفريق تحت تنسيق المدير). والخيار D («déterminé par un besoin…») صياغة عامة لا تطابق نص OP.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q7', 'exam_eps_2023_didactics_lycee', 7, 'ديداكتيك مادة التخصص', 'En éducation physique et sportive, éclairer son enseignement c''est :', false, '[{"id": "A", "text": "saisir intelligiblement les liens qui unissent l''expérience de l''enseignant, la logique de l''APS et les résultats obtenus en termes d''apprentissage"}, {"id": "B", "text": "saisir intelligiblement les liens qui unissent les procédures d''enseignement, l''activité de l''élève et les résultats obtenus en termes d''apprentissage"}, {"id": "C", "text": "saisir intelligiblement les liens qui unissent le profil de l''enseignant, l''activité de l''élève et le processus en termes d''apprentissage"}, {"id": "D", "text": "saisir intelligiblement les liens qui unissent les procédures d''enseignement, la logique de l''APS et les besoins en termes d''apprentissage"}]'::jsonb, ARRAY['B']::text[], 'R. Leca (UFR STAPS, « Enseigner et apprendre ») : enseigner c''est « articuler intelligiblement les procédures d''enseignement aux processus d''apprentissage pour "faire apprendre" » — أي ربط إجراءات التدريس بنشاط التلميذ ونتائج التعلم. الخيار A يربط «expérience de l''enseignant» و«logique de l''APS» (وهما عنصران من التحليل الديداكتيكي لكنهما ليسا صيغة «éclairer son enseignement»)؛ والخيار C يذكر «profil de l''enseignant» و«processus» بدل «procédures + résultats».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q8', 'exam_eps_2023_didactics_lycee', 8, 'ديداكتيك مادة التخصص', 'En EPS, le but d''une régulation est :', false, '[{"id": "A", "text": "d''informer un système en action sur le résultat de ses actions et de les corriger en fonction des résultats obtenus"}, {"id": "B", "text": "d''informer un système en action sur le processus de ses actions et d''anticiper sur la planification des contenus proposés"}, {"id": "C", "text": "d''informer un système en action sur les éventails d''adaptation et d''agir en conséquence sur la gestion des contenus proposés"}, {"id": "D", "text": "d''informer un système en action sur les démarches appliquées et de modéliser les besoins d''apprentissage sur la base des contenus proposés"}]'::jsonb, ARRAY['A']::text[], 'Paradigme feedback-adaptation (Cardinet ; Maccario, cité dans Cairn, *L''évaluation des actions éducatives*) : « réguler signifie intervenir dans un fonctionnement pour l''optimiser par l''utilisation adéquate de l''information en retour » ; Cardinet : « L''apport d''information en retour sur le résultat des actions passées, qui permet au sujet d''adapter la suite de ses actions par rapport à son but ». الخيار A وحده يجمع المعلومة الراجعة عن **النتيجة** + التصحيح. الخياران B وC يتحدثان عن التخطيط/التدبير المسبق لا عن التنظيم أثناء الفعل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q9', 'exam_eps_2023_didactics_lycee', 9, 'ديداكتيك مادة التخصص', 'Les méthodes actives dans une séance de PS s''appuient sur les principes suivants :', false, '[{"id": "A", "text": "l''élève reçoit des connaissances de la part de l''enseignant"}, {"id": "B", "text": "l''élève exécute les consignes prescrites par la tâche"}, {"id": "C", "text": "l''élève transforme les objectifs prescrits par l''enseignant"}, {"id": "D", "text": "l''élève construit par lui-même son propre savoir"}]'::jsonb, ARRAY['D']::text[], 'مبدأ الطرائق النشطة (pédagogie active / constructivisme، Meirieu) : المتعلم فاعل يبني معرفته بنفسه، لا متلقٍّ سلبي. الخيار A («l''élève reçoit des connaissances») هو الطريقة التقليدية/الإلقائية — نقيض الطرائق النشطة؛ والخيار B («exécute les consignes») يصف التنفيذ لا البناء؛ والخيار C («transforme les objectifs prescrits») لا معنى ديداكتيكي له هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q10', 'exam_eps_2023_didactics_lycee', 10, 'ديداكتيك مادة التخصص', 'Le rôle de l''évaluation formative dans une séance réservée au lancer de poids est de :', false, '[{"id": "A", "text": "mesurer les performances des apprenants afin d''établir une note finale"}, {"id": "B", "text": "optimiser les apprentissages des apprenants afin de comprendre leurs erreurs"}, {"id": "C", "text": "déterminer les compétences acquises afin d''établir le bilan sommatif"}, {"id": "D", "text": "recenser les performances afin de construire un barème de notation adapté"}]'::jsonb, ARRAY['B']::text[], 'Évaluation formative (Scriven/Bloom ; Legendre 2005) : « processus d''évaluation continue ayant pour objet d''assurer la progression de chaque individu dans une démarche d''apprentissage… pour apporter des améliorations ou des correctifs appropriés »؛ « permet à l''apprenant de comprendre ses erreurs et ses difficultés… Aucune note n''y est associée » (TÉLUQ / APC Pédagogie). الخيار A («note finale») والخيار C («bilan sommatif») يصفان التقييم **التجميعي**؛ والخيار D («construire un barème») يصف أداة تقويم لا وظيفة التكويني.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q11', 'exam_eps_2023_didactics_lycee', 11, 'ديداكتيك مادة التخصص', 'L''enseignant de PS dont l''approche [est l''approche] par compétence est appelé à :', false, '[{"id": "A", "text": "aménager lui-même les situations d''apprentissage"}, {"id": "B", "text": "transmettre les critères de réussite dans une situation d''apprentissage"}, {"id": "C", "text": "aider les apprenants à développer des stratégies d''apprentissage"}, {"id": "D", "text": "préciser les conditions de réalisation dans une situation d''apprentissage"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: في المقاربة بالكفاءات يتحول دور الأستاذ من ناقل للمعرفة إلى موجّه/وسيط يساعد المتعلمين على التعلم الذاتي: « Le rôle de l''enseignant est d''aider les apprenants à trouver les meilleures stratégies pour les aider à apprendre, à être plus autonome et indépendant » (revue CRSHC, rôle du professeur)؛ وفي APC « l''enseignant guide les élèves… au lieu de simplement transmettre des connaissances » (Scribd, APC en FLE). الخيار A («aménager lui-même les situations») فعل يقوم به الأستاذ في كل المقاربات، وليس السمة المميزة للمقاربة بالكفاءات؛ والخياران B وD («transmettre les critères…» / «préciser les conditions…») هما عنصرا صياغة المهمة لا دور الأستاذ في APC.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q12', 'exam_eps_2023_didactics_lycee', 12, 'ديداكتيك مادة التخصص', 'Le paradigme relatif au courant cognitiviste a influencé l''apprentissage par :', false, '[{"id": "A", "text": "le découpage des disciplines en unités pouvant donner lieu à un comportement observable et l''exercice répétitif de ce comportement"}, {"id": "B", "text": "la mise en avant de la dimension sociale et culturelle du développement du sujet"}, {"id": "C", "text": "la prise en compte du rôle décisif de l''action de l''enfant dans son apprentissage ainsi que la programmation des apprentissages des contenus en fonction du développement de l''enfant"}, {"id": "D", "text": "l''avènement de l''approche didactique des apprentissages initial et continu, notamment dans la compréhension pour un développement approprié [صياغة غير واضحة في التفريغ]"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: بالاستبعاد المنهجي: الخيار A («découpage des disciplines en unités… comportement observable… exercice répétitif») هو **السلوكية** (behaviorisme : conditionnement, répétition, comportement observable — EduTech Wiki / Jobandco)؛ والخيار B («dimension sociale et culturelle du développement») هو **السوسيو-ثقافية** (Vygotsky)؛ والخيار C («rôle décisif de l''action de l''enfant… programmation… en fonction du développement») هو **البنائية** (constructivisme, Piaget). يبقى D وحده، وهو الوحيد الذي يذكر «compréhension» — محور الكognitivisme (معالجة المعلومات والتمثلات الذهنية والفهم). لكن صياغة D مشوّشة في التفريغ («[صياغة غير واضحة]») ولم يُعثر على نصها حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q13', 'exam_eps_2023_didactics_lycee', 13, 'ديداكتيك مادة التخصص', 'L''enseignant de PS mettra l''accent sur la capacité du côté des ressources neuroinformationnelles si :', false, '[{"id": "A", "text": "les relations avec le ballon sont malhabiles avec de nombreuses pertes de balles"}, {"id": "B", "text": "l''occupation du terrain prend la forme d''une grappe avec un jeu très individuel et des passes aléatoires"}, {"id": "C", "text": "les frustrations et les déceptions liées aux résultats compétitifs génèrent des comportements agressifs"}, {"id": "D", "text": "des transformations de [tâches ؟] proposées dans un souci d''effectuer un jeu spectaculaire [صياغة غير واضحة في التفريغ]"}]'::jsonb, ARRAY['A']::text[], 'الموارد العصبية-المعلوماتية (ressources bio/neuro-informationnelles) = معالجة المعلومات: الإدراك، اتخاذ القرار، اختيار البرنامج الحركي. Famose & Temprado (*Cognition et performance*, INSEP) : في الأنشطة ذات الحمولة المعلوماتية العالية (الرياضات الجماعية…) تُقاس الأداء بـ«l''exactitude du choix des buts à poursuivre, l''adéquation des programmes de réponse… la rapidité et la précision de l''exécution». سوء التعامل مع الكرة وكثرة فقدانها = عجز في معالجة المعلومات. الخيار B (احتلال الملعب على شكل عنقود/لعب فردي) يخص التنظيم الجماعي التكتيكي؛ والخيار C (العدوانية الناتجة عن الإحباط) يخص الموارد الوجدانية (bio-affectives).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q14', 'exam_eps_2023_didactics_lycee', 14, 'ديداكتيك مادة التخصص', 'En EPS, les nouvelles orientations pédagogiques au collège visent :', false, '[{"id": "A", "text": "l''affinement des mouvements dans les activités physiques et sportives"}, {"id": "B", "text": "la familiarisation et l''initiation"}, {"id": "C", "text": "le perfectionnement des gestes techniques"}, {"id": "D", "text": "l''apprentissage par la reproduction du modèle sportif"}]'::jsonb, ARRAY['B']::text[], 'OP 2009 (cycle collégial) : تقدّم السنوات الثلاث من التعرف/الأساسيات (1AC : fondamentaux, habiletés motrices de base, découverte des APS) إلى التعمق (2AC) ثم المهارات المعقدة (3AC) — (infographie epsmaroc.ma, «Cycles d''apprentissage de la 1ère à la 3ème année collégiale», conforme aux OP d''août 2009). الإتقان/صقل الحركات (A) و«perfectionnement des gestes techniques» (C) من أهداف **السلك التأهيلي** (الثانوي)، لا الإعدادي؛ وD («reproduction du modèle sportif») يصف الطريقة التقليدية التي قطعت معها OP 2009.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q15', 'exam_eps_2023_didactics_lycee', 15, 'ديداكتيك مادة التخصص', 'Selon la notion du déficit spécifique qui affecte les étapes de traitement de l''information :', false, '[{"id": "A", "text": "plus l''élève se trouve confronté à des situations de pression temporelle, plus il est capable de prendre une décision"}, {"id": "B", "text": "plus l''élève est jeune, plus il est lent pour prendre une décision"}, {"id": "C", "text": "plus l''élève est confronté à un ensemble d''informations, plus il est efficace pour prendre une décision"}, {"id": "D", "text": "plus l''élève démontre un intérêt face à une nouvelle situation, plus il est capable de prendre une décision"}]'::jsonb, ARRAY['B']::text[], 'زمن الاستجابة/اتخاذ القرار يتناقص مع العمر: « Across a wide range of cognitive tasks, children''s responses are consistently slower than adults''… response times (RTs) decrease from early childhood to adulthood » (Ratcliff et al., *Child Development* 2011)؛ و« la vitesse de traitement augmente avec l''âge » (thèse Lyon 2, Bussy 2010). الخيار A (الضغط الزمني يحسّن القرار) والخيار C (كثرة المعلومات تحسّن القرار) عكسا القاعدة (الضغط وكثرة المعلومات يزيدان الصعوبة)؛ والخيار D (الاهتمام) ليس من مفهوم «العجز النوعي» في مراحل المعالجة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=YpFJXSqP2XM', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q16', 'exam_eps_2023_didactics_lycee', 16, 'ديداكتيك مادة التخصص', 'La mission de l''enseignant de PS porte [la lumière ؟] sur : [صياغة السؤال غير واضحة في التفريغ]', false, '[{"id": "A", "text": "l''ensemble des conduites et des activités que l''enseignant adopte au sein du groupe classe pour susciter des informations"}, {"id": "B", "text": "l''ensemble des opérations théoriques et intellectuelles que réalise l''enseignant pour préparer ses situations pédagogiques"}, {"id": "C", "text": "la transformation d''un savoir savant en un savoir enseigné facilement accessible chez l''élève"}, {"id": "D", "text": "la transformation d''un savoir enseigné en un savoir savant favorisant de meilleurs apprentissages"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: الخياران C وD هما تعريفا **النقل الديداكتيكي (transposition didactique)**، وC هو الاتجاه الصحيح: Chevallard (1985/1991) : « La transposition didactique est le passage du savoir savant au savoir enseigné »؛ « un contenu de savoir… subit un ensemble de transformations adaptatives qui vont le rendre apte à prendre place parmi les objets d''enseignement » (CRMEF Casablanca-Settat, cours « Transposition didactique », Pr Latifa Faouzi). الخيار D يعكس الاتجاه (من المُدرَّس إلى العالِم) وهو خطأ. الخياران A وB يصفان التدبير الصفي/الإعداد النظري، لا مفهوماً ديداكتيكياً محدداً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q17', 'exam_eps_2023_didactics_lycee', 17, 'ديداكتيك مادة التخصص', 'Les critères de réalisation se distinguent des règles d''action et des critères de réussite par le fait qu''ils se situent :', false, '[{"id": "A", "text": "sur l''action de l''enfant, sur ce qu''il faut faire pour réaliser correctement ce qui est demandé lors d''une tâche motrice"}, {"id": "B", "text": "sur le comment réaliser, relatif au descriptif des opérations à effectuer lors d''une tâche motrice"}, {"id": "C", "text": "sur la mise en relation des éléments, la détermination des causes et des effets lors d''une tâche motrice"}, {"id": "D", "text": "sur l''aboutissement de l''action, traduit par les résultats obtenus lors d''une tâche motrice"}]'::jsonb, ARRAY['B']::text[], 'تطابق حرفي مع المراجع المغربية: « Les critères de réalisation se focalisent davantage sur le "comment réaliser". Ils concernent le descriptif des opérations à effectuer en vue de permettre le réajustement de la prestation pratique des élèves » (cours ENS Fès, *Éducation physique et sportive et développement psycho-socio-moteur*, 2025-2026 ؛ ونفس النص في Slideshare «contenus en EPS»). بالمقابل: « Les critères de réussite… représentent une base de référence permettant d''évaluer le résultat de l''action » — أي الخيار D (aboutissement/résultats) هو تعريف معايير النجاح لا الإنجاز؛ والخيار A («ce qu''il faut faire») أقرب إلى قواعد الفعل (règles d''action).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q18', 'exam_eps_2023_didactics_lycee', 18, 'ديداكتيك مادة التخصص', 'La planification sportive sert à :', false, '[{"id": "A", "text": "analyser et évaluer les contenus d''entraînement sportif proposés"}, {"id": "B", "text": "construire un ensemble cohérent à une préparation sportive pour atteindre un objectif prédéfini"}, {"id": "C", "text": "prévoir le matériel d''entraînement sportif nécessaire pour une séance de PS"}, {"id": "D", "text": "accompagner la progression sportive de l''élève en sport scolaire"}]'::jsonb, ARRAY['B']::text[], '« La planification sportive… se réfère à l''organisation systématique et scientifique d''un programme d''entraînement pour atteindre des objectifs de performance spécifiques » (StudySmarter)؛ « Elle consiste à déterminer des objectifs et à mettre en œuvre un ensemble de programmes toujours plus détaillés pour les atteindre… Pour qu''un entrainement soit cohérent dans sa globalité et qu''il ne soit pas seulement un assemblage de séances » (Younsi, *Planification et programmation de l''entraînement sportif*, Univ. Bouira, 2023-2024). الخيار A (تحليل وتقييم المحتويات) وظيفة جزئية لاحقة؛ والخيار C (توقع العتاد) إداري؛ والخيار D (مرافقة التقدم في الرياضة المدرسية) ليس تعريف التخطيط.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q19', 'exam_eps_2023_didactics_lycee', 19, 'ديداكتيك مادة التخصص', 'Le temps d''engagement moteur est :', false, '[{"id": "A", "text": "la durée effective passée par l''élève en activité d''apprentissage"}, {"id": "B", "text": "la durée effective passée par la classe en activité d''apprentissage"}, {"id": "C", "text": "la durée d''une situation d''apprentissage"}, {"id": "D", "text": "la durée totale d''une séance d''apprentissage"}]'::jsonb, ARRAY['A']::text[], 'Siedentop, ALT-PE (Academic Learning Time in Physical Education) : « the time students actually spend engaged with motor tasks of appropriate difficulty » (Siedentop 1983 ; ALT-PE Coding Manual, 1982)؛ والملخص المغربي (Scribd, « Didactique de l''EPS au Maroc ») : « Le temps d''engagement moteur : c''est le temps passé effectivement dans… » — والتعريف في أدبيات CRMEF هو الوقت الفعلي الذي يقضيه **التلميذ** (لا القسم ككل — الخيار B) في نشاط التعلم. الخياران C وD (مدة الوضعية / مدة الحصة الكلية) يخلطان بين زمن الحصة وزمن الانخراط الفعلي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q20', 'exam_eps_2023_didactics_lycee', 20, 'ديداكتيك مادة التخصص', 'L''évaluation en EPS :', false, '[{"id": "A", "text": "est essentiellement centrée sur la performance sportive et le rendement cognitif de l''élève"}, {"id": "B", "text": "privilégie la maîtrise technique et des aspects comportementaux des APS"}, {"id": "C", "text": "prend en considération les aspects procéduraux, cognitifs et comportementaux"}, {"id": "D", "text": "insiste essentiellement sur les spécificités disciplinaires et relationnelles"}]'::jsonb, ARRAY['C']::text[], 'OP 2007/2009، إطار التقييم: « répartition de la note selon 3 types de connaissances (conceptuels, procédurales et comportementales) » (Scribd, « Didactique de l''EPS au Maroc »، ملخص OP)؛ وتعريف الكفاءة في OP: « système de connaissances conceptuelles ET de connaissances procédurales ET comportementales, organisées en schémas opératoires » (votreeps.com, OP 2009). الخيار A («performance sportive et rendement cognitif») يختزل التقييم في الأداء؛ والخيار B («maîtrise technique et aspects comportementaux») يغفل المعرفي/الإجرائي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q21', 'exam_eps_2023_didactics_lycee', 21, 'ديداكتيك مادة التخصص', 'Les principes d''action en sport collectif sont :', false, '[{"id": "A", "text": "des consignes claires à respecter par les élèves"}, {"id": "B", "text": "des constructions théoriques pour faciliter la pratique"}, {"id": "C", "text": "un ensemble de règles d''action permettant de réaliser des phases de jeu"}, {"id": "D", "text": "un ensemble de gestes techniques maîtrisés"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: شريحة تدريب مغربية لامتحان CRMEF (Instagram @prof_yassine_bentayfaste، 2024-12-27، جلسة مراجعة QCM ديداكتيك EPS) تعرض هذا السؤال نفسه بصيغة « principles of action in collective sports (set of action rules enabling game phases) » كجواب مشروح. كما أن نموذج Dugal للتحليل الديداكتيكي يضع « principes d''action » في صلب تحليل APS (logique interne → problèmes fondamentaux → principes d''action → règles d''action).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q22', 'exam_eps_2023_didactics_lycee', 22, 'ديداكتيك مادة التخصص', 'Le progrès des élèves en sport collectif est conditionné par :', false, '[{"id": "A", "text": "la spécialisation précoce dans des postes de jeu"}, {"id": "B", "text": "les procédures rigoureuses de l''entraînement"}, {"id": "C", "text": "le nombre de séances d''entraînement"}, {"id": "D", "text": "la prise en compte des indices pertinents et permanents lors du jeu"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: في ديداكتيك الرياضات الجماعية (Gréhaigne؛ Pharamin, Barthes & Blandin, Staps 2016/1) تقدّم اللاعب مرتبط بقدرته على « prendre conscience des indices les plus pertinents devant être pris en compte » لاتخاذ القرار في اللعب. الخيارات A (التخصص المبكر) وB وC (عدد الحصص/صرامة التدريب) خارج منطق الديداكتيك المدرسي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q23', 'exam_eps_2023_didactics_lycee', 23, 'ديداكتيك مادة التخصص', 'L''évaluation du comportement moteur adopté en athlétisme dans les OP 2009 est :', false, '[{"id": "A", "text": "6 points en 1ère année, 8 points en 2e année et 7 points en 3e année"}, {"id": "B", "text": "6 points en 1ère année, 7 points en 2e année et 8 points en 3e année"}, {"id": "C", "text": "8 points en 1ère année, 6 points en 2e année et 7 points en 3e année"}, {"id": "D", "text": "8 points en 1ère année, 7 points en 2e année et 6 points en 3e année"}]'::jsonb, ARRAY['D']::text[], 'التوجيهات التربوية 2009 (السلك الإعدادي)، « Grille d''évaluation générale » (الملحق 2): سطر ألعاب القوى — « athlétisme / Habileté motrice produit / Chronomètre Décamètre / 06 06 06 » و« Comportement moteur / performance / **08 07 06** » تحت أعمدة 1AC 2AC 3AC. أي: السلوك الحركي = 8 نقاط في الأولى إعدادي، 7 في الثانية، 6 في الثالثة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q24', 'exam_eps_2023_didactics_lycee', 24, 'ديداكتيك مادة التخصص', 'Dans une tâche complexe, l''apprenant est appelé principalement à :', false, '[{"id": "A", "text": "reproduire la forme gestuelle recommandée"}, {"id": "B", "text": "prendre en compte tous les paramètres de la tâche"}, {"id": "C", "text": "appliquer les consignes dans leur intégrité"}, {"id": "D", "text": "mobiliser les ressources nécessaires"}]'::jsonb, ARRAY['D']::text[], 'تعريف المهمة المعقدة في المقاربة بالكفايات (DGESCO / socle commun؛ De Ketele & Roegiers 2000؛ Perrenoud 1997): « La tâche complexe est une tâche mobilisant des ressources internes (culture, capacités, connaissances, vécu…) et externes »؛ والكفاية نفسها هي « la possibilité, pour un individu, de mobiliser un ensemble intégré de ressources en vue de résoudre une situation-problème ». الخيار B (« prendre en compte tous les paramètres ») وصف ثانوي، أما جوهر المهمة المعقدة فهو تعبئة الموارد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q25', 'exam_eps_2023_didactics_lycee', 25, 'ديداكتيك مادة التخصص', 'La didactique des activités physiques et sportives permet principalement à l''enseignant de :', false, '[{"id": "A", "text": "préparer les leçons des activités physiques et sportives"}, {"id": "B", "text": "traiter les APS et déterminer les contenus d''enseignement"}, {"id": "C", "text": "maîtriser les pratiques enseignantes et guider les apprentissages"}, {"id": "D", "text": "faciliter et superviser les apprentissages des activités physiques et sportives"}]'::jsonb, ARRAY['B']::text[], 'وحدة « Analyse et traitement didactique en EPS » (Licence d''Éducation EPS، CRMEF): « l''analyse didactique est un ensemble de démarches de construction de contenus d''enseignement prenant leurs sources dans l''étude […] des activités physiques sportives et artistiques (APSA) ». أي أن وظيفة الديداكتيك هي معالجة الـAPS وتحديد محتويات التعليم — مطابقة حرفية تقريباً للخيار B.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q26', 'exam_eps_2023_didactics_lycee', 26, 'ديداكتيك مادة التخصص', 'Une situation d''apprentissage est :', false, '[{"id": "A", "text": "une proposition didactique pour construire un nouveau savoir"}, {"id": "B", "text": "une proposition pour construire un jeu de divertissement ciblant les élèves"}, {"id": "C", "text": "une proposition pour construire des exercices dans une progression cohérente"}, {"id": "D", "text": "une proposition pour construire des itinéraires à suivre pour un nouvel apprentissage"}]'::jsonb, ARRAY['A']::text[], 'التعريف المعياري (Brousseau / Meirieu؛ Tangente — glossaire didactique): « Une situation d''apprentissage est une configuration pédagogique […] délibérément organisée pour permettre à un sujet d''acquérir de nouveaux savoirs »، والمتعلم فيها « construit activement ces savoirs ». الخيارات B (لعبة ترفيه) وC وD لا تحمل فكرة بناء معرفة جديدة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q27', 'exam_eps_2023_didactics_lycee', 27, 'ديداكتيك مادة التخصص', 'Un objectif de la leçon doit contenir dans sa formulation :', false, '[{"id": "A", "text": "un verbe d''action, des conditions de réalisation, des critères de réalisation"}, {"id": "B", "text": "un verbe d''action, des conditions de réalisation, des critères de réussite"}, {"id": "C", "text": "un verbe d''action, des consignes, des variables didactiques, un critère de réussite"}, {"id": "D", "text": "un verbe d''action, des variables didactiques, des consignes, un critère de réussite"}]'::jsonb, ARRAY['B']::text[], 'صيغة Mager (1962) للهدف الإجرائي: سلوك قابل للملاحظة (verbe d''action) + الظروف التي يتحقق فيها (conditions) + معيار الأداء المقبول (critère de réussite/performance). الخيار A يستبدل « critères de réussite » بـ« critères de réalisation » — والتمييز بينهما أساسي في ديداكتيك EPS (معيار الإنجاز = كيف، معيار النجاح = النتيجة/المعيار القابل للقياس). الخياران C وD يضيفان عناصر ليست من صيغة الهدف (التعليمات، المتغيرات الديداكتيكية).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q28', 'exam_eps_2023_didactics_lycee', 28, 'ديداكتيك مادة التخصص', 'Les tests physiques en EPS sont particulièrement utiles pour :', false, '[{"id": "A", "text": "détecter les talents sportifs"}, {"id": "B", "text": "déterminer le niveau d''aptitude physique"}, {"id": "C", "text": "développer les qualités physiques"}, {"id": "D", "text": "remédier aux insuffisances physiques"}]'::jsonb, ARRAY['B']::text[], 'الاختبارات البدنية (Luc Léger، الوثب الطويل، السرعة…) « permettent d''évaluer l''endurance, la force musculaire et la vitesse des élèves » وتوفر « un outil de diagnostic fiable » لتحديد مستوى القدرات البدنية (Eduscol / DEPP، تقييم القدرات البدنية). هي أداة قياس/تشخيص للمستوى، لا أداة تطوير (C) ولا علاج (D) ولا كشف مواهب بالدرجة الأولى (A).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q29', 'exam_eps_2023_didactics_lycee', 29, 'ديداكتيك مادة التخصص', 'L''observation systématique en EPS est une :', false, '[{"id": "A", "text": "observation participative"}, {"id": "B", "text": "observation basée sur des critères non formalisés"}, {"id": "C", "text": "observation utilisant des critères formalisés"}, {"id": "D", "text": "observation s''appuyant sur les normes prescrites"}]'::jsonb, ARRAY['C']::text[], 'الملاحظة المنهجية (systématique/structurée) تعرَّف بأنها « rigoureusement planifiée et exécutée — utilisation de journal de bord ou de grille pré-établie »، أي بمعايير مسبقة الصياغة ومقننة، مقابل الملاحظة الحرة (critères non formalisés، الخيار B) والملاحظة المشارِكة (الخيار A، حيث يندمج الملاحظ في النشاط).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q30', 'exam_eps_2023_didactics_lycee', 30, 'ديداكتيك مادة التخصص', 'La démonstration en éducation physique et sportive est une :', false, '[{"id": "A", "text": "reproduction intégrale d''un modèle"}, {"id": "B", "text": "explication des habiletés"}, {"id": "C", "text": "orientation des apprenants"}, {"id": "D", "text": "régulation des apprentissages"}]'::jsonb, ARRAY['A']::text[], 'الطريقة البرهانية (méthode démonstrative): « Le formateur fait reproduire un geste, un savoir-faire, une technique précise »؛ وتقوم على « la reproduction de modèles » — تقديم نموذج تنفيذي يقلّده المتعلمون (enseignement par réception / style reproductif، Mosston). الخيارات B (شرح المهارات) وC وD وظائف ثانوية، لا تعريفاً للبرهنة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q31', 'exam_eps_2023_didactics_lycee', 31, 'ديداكتيك مادة التخصص', 'L''intérêt de l''évaluation diagnostique en EPS est :', false, '[{"id": "A", "text": "de détecter et orienter les meilleurs élèves"}, {"id": "B", "text": "de déterminer le niveau des élèves"}, {"id": "C", "text": "de remédier aux manques et difficultés des élèves"}, {"id": "D", "text": "d''apprécier les progrès des élèves"}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: التقييم التشخيصي « permet à l''enseignant de situer l''élève dans le champ disciplinaire pour faire un état de ses connaissances » (Académie de Poitiers) و« cerner le niveau des apprenants au départ » قبل التعلم. وهو التمييز الكلاسيكي في بنوك QCM المغربية: تشخيصي = تحديد المستوى؛ تكويني = المعالجة/التصحيح أثناء التعلم؛ إجمالي = الحصيلة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q32', 'exam_eps_2023_didactics_lycee', 32, 'ديداكتيك مادة التخصص', 'En EPS, un élève est compétent quand il est capable de :', false, '[{"id": "A", "text": "réaliser une bonne performance sportive mesurable dans une APS"}, {"id": "B", "text": "mobiliser ses ressources pour résoudre différentes situations motrices de la même famille"}, {"id": "C", "text": "connaître les procédures à mettre en œuvre pour réussir une tâche"}, {"id": "D", "text": "maîtriser plusieurs savoir-faire techniques dans les APS"}]'::jsonb, ARRAY['B']::text[], 'تعريف الكفاية في التوجيهات التربوية 2009 (الفصل II، §6.2): « un système de connaissances conceptuelles ET de connaissances procédurales ET comportementales, organisées en schémas opérationnels » يسمح « à l''intérieur d''une famille de situations, [d'']identifier une tâche-problème et [de] la résoudre par une action efficace » — وهو صياغة Perrenoud (« capacité à mobiliser un ensemble de ressources cognitives pour faire face efficacement à une famille de situations »). الخيار A (أداء رياضي قابل للقياس) يختزل الكفاية في الأداء؛ C وD يصفان معارف/مهارات جزئية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q33', 'exam_eps_2023_didactics_lycee', 33, 'ديداكتيك مادة التخصص', 'Un curriculum en EPS est :', false, '[{"id": "A", "text": "l''organisation et la programmation des contenus et des activités d''enseignement-apprentissage"}, {"id": "B", "text": "un programme d''enseignement indiquant une liste de matières à enseigner"}, {"id": "C", "text": "un référentiel pour concevoir et harmoniser le contenu d''enseignement"}, {"id": "D", "text": "un outil fournissant des repères pour guider et mettre en place les apprentissages et [l''évaluation ؟ — الخيار مقطوع في التفريغ]"}]'::jsonb, ARRAY['A']::text[], 'EduTech Wiki (Genève): « Le curriculum désigne la conception, l''organisation et la programmation des activités d''enseignement/apprentissage selon un parcours éducatif. Il regroupe l''énoncé des finalités, les contenus, les activités et les démarches d''apprentissage, ainsi que les modalités et moyens d''évaluation » — مطابقة شبه حرفية للخيار A. الخيار B يصف « البرنامج » (قائمة مواد) لا المنهاج؛ والخيار C يصف المرجعية (référentiel) وهي جزء من المنهاج لا تعريفه.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q34', 'exam_eps_2023_didactics_lycee', 34, 'ديداكتيك مادة التخصص', 'Le module en éducation physique et sportive est :', false, '[{"id": "A", "text": "une méthode d''enseignement"}, {"id": "B", "text": "un système de planification"}, {"id": "C", "text": "une unité de formation"}, {"id": "D", "text": "une approche pédagogique"}]'::jsonb, ARRAY['C']::text[], 'التوجيهات التربوية 2007 (قسم « L''enseignement modulaire »): « on peut définir le module comme unité formatrice [qui] vise le contrôle d''une compétence enseignée »؛ و« les modules de chaque niveau s''englobent dans un objectif terminal d''intégration pour garder une unité de formation de chaque niveau ». « Unité formatrice » = « unité de formation » (الخيار C). كما أن الموديول يتكون من ثلاثة أطوار (cycles) من 10–12 حصة — فهو ليس طريقة تدريس (A) ولا مقاربة بيداغوجية (D).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q35', 'exam_eps_2023_didactics_lycee', 35, 'ديداكتيك مادة التخصص', 'La programmation cyclique en EPS est :', false, '[{"id": "A", "text": "une organisation des objectifs dans le projet pédagogique"}, {"id": "B", "text": "une répartition des APS dans le temps et dans l''espace"}, {"id": "C", "text": "un ensemble ordonné des opérations pour obtenir un résultat"}, {"id": "D", "text": "un ensemble de procédures préconisées par les orientations pédagogiques"}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: في أدبيات EPS، « programmation » تعني توزيع الأنشطة (APS) على الزمن (السنة/الدورة) مع مراعاة الفضاءات والتجهيزات المتاحة (توزيع المنشآت بين الأقسام، تناوب الأنشطة على المرافق). الخيار A (تنظيم الأهداف في المشروع البيداغوجي) يصف المشروع لا البرمجة؛ والخيار C تعريف عام لـ« ensemble ordonné d''opérations » لا يخص EPS.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q36', 'exam_eps_2023_didactics_lycee', 36, 'ديداكتيك مادة التخصص', 'L''intervention pédagogique en EPS a pour finalité de :', false, '[{"id": "A", "text": "programmer des modules d''enseignement"}, {"id": "B", "text": "analyser les APS"}, {"id": "C", "text": "définir les contenus d''enseignement-apprentissage"}, {"id": "D", "text": "gérer les apprentissages et les attitudes des élèves"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: وحدة CRMEF Fès/Meknès « La planification et la gestion des apprentissages en EPS » (El Ourdighi Khalid)، الموديول 3 « L''intervention pédagogique en EPS»: كفاياته « Planification des apprentissages — Gestion des apprentissages — Évaluation des apprentissages »، وأهدافه الكبرى: « organiser et rationaliser le déroulement de la leçon، préserver la sécurité، optimiser la gestion du temps، exploiter le matériel et l''espace، gérer la composition des élèves et les interactions، animer la leçon et favoriser la motivation et l''engagement، prévenir les conduites déviantes ». الخيار D يجمع « gestion des apprentissages » و« attitudes/conduites » وهو الأقرب لهذه القائمة. الخيار C (« définir les contenus ») من مهام الديداكتيك لا التدخل البيداغوجي؛ والخيار A (« programmer des modules ») من مهام التخطيط.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q37', 'exam_eps_2023_didactics_lycee', 37, 'ديداكتيك مادة التخصص', 'La notion du contexte de la situation est constituée :', false, '[{"id": "A", "text": "des critères qui permettent l''évaluation de la situation"}, {"id": "B", "text": "des indices permettant de situer les élèves dans une situation"}, {"id": "C", "text": "des objets […] qui conditionnent les conduites des élèves en situation [كلمة غير واضحة في التفريغ]"}, {"id": "D", "text": "des éléments permettant à l''élève de manifester un comportement dans une situation"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: في تحليل مكونات الوضعية (Meirieu / Brousseau): الوضعية تتكون من السياق (contexte = البيئة التي تجري فيها الوضعية)، والدعامة (support = العناصر المادية المقدمة)، والتعليمة (consigne). وفي بنك أسئلة ديداكتيك EPS المغربي (Didactique EPS 2025) ترد الصيغة « formes de travail qui conditionnent les conduites des élèves » في سياق « contexte pédagogique ». الخيار C هو الوحيد الذي يربط السياق بتكييف/تحديد سلوك التلاميذ داخل الوضعية؛ الخيار A (معايير التقييم) خارج الموضوع، والخيار B (مؤشرات لتحديد التلاميذ) يصف التشخيص لا السياق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q38', 'exam_eps_2023_didactics_lycee', 38, 'ديداكتيك مادة التخصص', 'En EPS, la non-directivité signifie :', false, '[{"id": "A", "text": "l''ensemble des traditions pédagogiques basées sur la sollicitation de l''activité [insuffisante ؟] des élèves [صياغة غير واضحة في التفريغ]"}, {"id": "B", "text": "l''ensemble des pratiques basées sur la vacance du pouvoir et la subordination des actes pédagogiques aux demandes des élèves"}, {"id": "C", "text": "l''ensemble des stratégies d''enseignement permettant à l''élève d''élaborer les buts et les projets personnels"}, {"id": "D", "text": "l''ensemble des stratégies d''enseignement permettant un engagement contractuel vis-à-vis d''un objectif d''apprentissage"}]'::jsonb, ARRAY['B']::text[], 'في تصنيف Beauté (Courants de la pédagogie): « Gestion non-directive — Le maître est volontairement effacé ; tout rapport de forces est exclu. Les élèves sont incités à exprimer demandes et attentes. Les contenus sont proposés par eux. » — مطابقة شبه حرفية للخيار B (vacance du pouvoir + الخضوع لطلبات التلاميذ). عند Rogers، اللاتوجيهية نتيجة طبيعية للثقة في « tendance actualisante » للفرد: لا حاجة لتوجيهه. الخيار C يصف بيداغوجيا المشروع/الأهداف الشخصية لا اللاتوجيهية؛ والخيار D يصف التعاقد البيداغوجي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q39', 'exam_eps_2023_didactics_lycee', 39, 'ديداكتيك مادة التخصص', 'Le conflit cognitif survient : [الخيارات وردت شظايا في التفريغ]', false, '[{"id": "A", "text": "un groupe d''élèves s''oppose à l''enseignant dans la manière d''instaurer les conduites en classe"}, {"id": "B", "text": "lorsque des élèves se discutent entre eux à cause d''un incident survenu en classe"}, {"id": "C", "text": "lorsqu''une idée nouvelle ne s''accorde pas avec une idée mentale ancienne"}, {"id": "D", "text": "lorsque l''enseignant n''arrive pas à gérer la violence au sein du groupe classe"}]'::jsonb, ARRAY['C']::text[], 'Piaget: الصراع المعرفي (déséquilibre) ينشأ « lorsque les connaissances existantes sont en décalage avec de nouvelles informations »، أي عندما لا يمكن استيعاب (assimilation) المعلومة الجديدة في المخططات الذهنية القائمة فيلزم التكييف (accommodation). الخيارات A وB وD تصف صراعات اجتماعية/صفية لا صراعاً معرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q40', 'exam_eps_2023_didactics_lycee', 40, 'ديداكتيك مادة التخصص', 'Selon les OP 2007-2009, le cycle d''apprentissage est formé de :', false, '[{"id": "A", "text": "séquences d''apprentissage dans deux APS support"}, {"id": "B", "text": "un ensemble de séances de différentes pratiques sportives"}, {"id": "C", "text": "un ensemble de séances dans une seule APS"}, {"id": "D", "text": "un ensemble de situations pédagogiques"}]'::jsonb, ARRAY['C']::text[], 'التوجيهات التربوية 2009، §4.1 « définition du cycle d''enseignement » (حرفياً): « Cycle d''enseignement est l''ensemble des séances d''une activité physique et sportive qui s''organise dans des parties en séries déterminé par le module à partir du programme national de l''enseignement de la matière. » — أي مجموعة حصص في نشاط بدني رياضي واحد. نفس التعريف في OP 2007 (§3.1). الخيار A (« séquences dans deux APS support ») يخلط بين الدورة والموديول (الموديول = 3 أطوار)؛ والخيار B (« séances de différentes pratiques sportives ») يناقض « une seule APS ».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q41', 'exam_eps_2023_didactics_lycee', 41, 'ديداكتيك مادة التخصص', 'Le triangle didactique se compose de :', false, '[{"id": "A", "text": "l''école, l''élève, l''enseignant"}, {"id": "B", "text": "l''élève, le savoir, l''enseignant"}, {"id": "C", "text": "la matière, les objectifs […] [الخيار مقطوع في التفريغ]"}, {"id": "D", "text": "les objectifs, les contenus, les situations"}]'::jsonb, ARRAY['B']::text[], 'Chevallard (1985/1991): «un système didactique […] peut être représenté par un triangle dont les sommets sont les savoirs, l''élève et l''enseignant» (Thouin, Revue Didactique, UQAM, 2020). الخيار B هو الوحيد الذي يجمع الأقطاب الثلاثة. (ملاحظة: الخيار C مقطوع في التفريغ لكنه لا يمكن أن يتفوق على التطابق الحرفي لـ B).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q42', 'exam_eps_2023_didactics_lycee', 42, 'ديداكتيك مادة التخصص', 'En EPS, la pratique sociale de référence signifie :', false, '[{"id": "A", "text": "les activités réellement pratiquées par un groupe social donné et qui peuvent transformer le comportement des élèves"}, {"id": "B", "text": "les éléments industriels ou une technologie produit par un groupe social et ayant une influence sur l''enseignement des APS"}, {"id": "C", "text": "le processus qui vise la transformation d''un savoir savant à un savoir enseigné"}, {"id": "D", "text": "les activités sociales ayant un impact sur les procédures didactiques et pédagogiques"}]'::jsonb, ARRAY['A']::text[], 'Martinand (1981): les pratiques sociales de référence sont des activités objectives concernant «l''ensemble d''un secteur social, et non des rôles individuels», terme de comparaison des activités didactiques (CEFEDEM AuRA / Wikipédia «Pratique sociale»). الخيار A هو الوحيد الذي يصف أنشطة واقعية يمارسها فعلاً قطاع اجتماعي معيّن؛ C يصف التحويل الديداكتيكي (Chevallard) لا الممارسة المرجعية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q43', 'exam_eps_2023_didactics_lycee', 43, 'ديداكتيك مادة التخصص', 'Selon les orientations pédagogiques de l''EPS 2007 et 2009, le projet pédagogique est :', false, '[{"id": "A", "text": "un outil pour opérationnaliser le projet professionnel"}, {"id": "B", "text": "un outil pour opérationnaliser le programme […] de l''EPS [كلمة غير واضحة في التفريغ]"}, {"id": "C", "text": "un outil pour opérationnaliser le projet de zone"}, {"id": "D", "text": "un outil pour opérationnaliser le projet d''établissement"}]'::jsonb, ARRAY['B']::text[], '«Le projet pédagogique est une modalité de travail, un outil d''opérationnalisation du programme scolaire (Ministère de l''Éducation Nationale, 2007)» — مقتبس حرفياً في دراسة عن EPS والصحة (Academia.edu)، ويؤكده votreeps.com: «Le projet pédagogique est l''outil opérationnel qui adapte ce programme aux réalités […] de chaque établissement» (OP 2007). الخيار B.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q44', 'exam_eps_2023_didactics_lycee', 44, 'ديداكتيك مادة التخصص', 'La notion de représentation en EPS signifie que :', false, '[{"id": "A", "text": "chaque élève anticipe l''action tout en cherchant à tirer un avantage sur l''adversaire"}, {"id": "B", "text": "chaque élève mobilise le maximum d''informations pour réaliser la meilleure performance possible"}, {"id": "C", "text": "chaque élève cherche à expliquer ou manifester un comportement, élabore des idées et des raisonnements à partir de ce qu''il sait"}, {"id": "D", "text": "chaque élève prend en compte tous les éléments nécessaires pour résoudre une situation problème"}]'::jsonb, ARRAY['C']::text[], 'التمثّل (représentation) هو نموذج تفسيري ذاتي يبني به المتعلم الأفكار والاستدلالات انطلاقاً من معارفه السابقة ويشرح به الظواهر وسلوكه (Giordan & De Vecchi؛ Cadopi: «Ce sont certaines de ces connaissances que l''on appelle généralement des représentations»؛ دراسة «Les représentations des apprenants en EPS au Maroc»). الخيار C وحده يصف هذه الوظيفة التفسيرية/الاستدلالية؛ A وB وD تصف أداءً أو حلّ مشكلة لا التمثّل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q45', 'exam_eps_2023_didactics_lycee', 45, 'ديداكتيك مادة التخصص', 'Un obstacle didactique est :', false, '[{"id": "A", "text": "le manque de moyens didactiques dans l''enseignement de la leçon"}, {"id": "B", "text": "le résultat d''une mauvaise planification de la leçon"}, {"id": "C", "text": "une représentation négative de la tâche d''apprentissage"}, {"id": "D", "text": "une mauvaise procédure qui impacte négativement l''apprentissage"}]'::jsonb, ARRAY['C']::text[], 'تطابق حرفي مع التعريف المرجعي: «Un obstacle didactique est une représentation négative de la tâche d''apprentissage» (Wikipédia «Obstacle didactique», نقلاً عن Brousseau 1986؛ وهو تمثّل ناتج عن تعلّم سابق يسبب أخطاء منهجية). ترتيب الخيارات في التفريغ مضطرب لكن صياغة C نفسها حاسمة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q46', 'exam_eps_2023_didactics_lycee', 46, 'ديداكتيك مادة التخصص', 'Selon les OP 2007-2009, l''[OTU ؟ — مصطلح غير مفهوم في التفريغ] est formé :', false, '[{"id": "A", "text": "d''un module par an"}, {"id": "B", "text": "de deux modules par an"}, {"id": "C", "text": "de trois modules par an"}, {"id": "D", "text": "de six modules par an"}]'::jsonb, ARRAY['B']::text[], '«OTU» قراءة خاطئة لـ **OTI** (Objectif Terminal d''Intégration). المرجع: «OTI: Une métacompétence qui décrit un profil de l''élève à la fin d''une année scolaire construit par les deux modules de chaque niveau scolaire» (دليل «Guide Global Important en EPS» / Formation des enseignants d''EPS au Maroc، Scribd)؛ ويؤكده votreeps.com: «tous les modules d''un niveau donné convergent vers un Objectif Terminal d''Intégration (OTI)»، وكل مستوى يضم Module 1 وModule 2. إذن OTI مكوَّن من وحدتين (module) في السنة: B. (ملاحظة: الوحدة الواحدة تضم 3 حلقات/دورات، لا 3 وحدات — فالخيار C يخلط بين الوحدة والحلقة.)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q47', 'exam_eps_2023_didactics_lycee', 47, 'ديداكتيك مادة التخصص', 'Dans une séance d''éducation physique et sportive, le temps d''engagement moteur est plus élevé en :', false, '[{"id": "A", "text": "rugby [في التفريغ: «RB»]"}, {"id": "B", "text": "basket-ball"}, {"id": "C", "text": "volley-ball"}, {"id": "D", "text": "handball"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: لم يُعثر على مصدر رسمي (OP أو CRMEF) يرتّب الأنشطة الجماعية الأربع حسب زمن الانخراط الحركي. الترجيح: كرة اليد (ملعب صغير، 7 لاعبين، لعب متواصل، كل اللاعبين يشاركون في الهجوم والدفاع والانتقالات) مقابل كرة الطائرة (توقفات بين الأشواط وتناوب يقلّل انخراط الفرد) والرغبي (توقفات متكررة: ركلات ثابتة، تشكيلات، وتخصص مراكز يقلّل مشاركة بعض اللاعبين). دراسة مقارنة (J. Phys. Educ. 2023, SciELO) وجدت أن كرة اليد سجّلت زمناً أطول في مناطق الشدة العالية من كرة السلة وكرة الطائرة. **لكن** هذا دليل شدّة لا دليل زمن انخراط مدرسي مباشر، والرغبي منافس جدّي (لعب متواصل نسبياً) — لذا يبقى الجواب مرجّحاً لا مؤكداً، ويحتاج تحققاً من مرجع CRMEF أو OP.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q48', 'exam_eps_2023_didactics_lycee', 48, 'ديداكتيك مادة التخصص', 'Les OP 2009 relatives à l''EPS déterminent les composants de l''évaluation selon :', false, '[{"id": "A", "text": "l''assiduité, la tenue, l''engagement"}, {"id": "B", "text": "la condition physique et la technique"}, {"id": "C", "text": "les connaissances procédurales, conceptuelles et comportementales"}, {"id": "D", "text": "la performance et la technique d''exécution"}]'::jsonb, ARRAY['C']::text[], 'OP 2009: الكفاية «système de connaissances conceptuelles ET de connaissances procédurales ET comportementales, organisées en schémas opérationnels» (votreeps.com، OP 2009)، وشبكة التقييم الكلية (collège) مقسّمة إلى المعارف الثلاثة نفسها: procédurales / conceptuelles / comportementales (infographie «Grille d''évaluation le secondaire collégiale (collège)», OP 2009). الخيار C حرفي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q49', 'exam_eps_2023_didactics_lycee', 49, 'ديداكتيك مادة التخصص', 'Les pouvoirs moteurs permettent :', false, '[{"id": "A", "text": "la réalisation des principes d''action avec succès"}, {"id": "B", "text": "l''application des critères de réalisation avec succès"}, {"id": "C", "text": "l''application des consignes avec succès"}, {"id": "D", "text": "la réalisation des règles d''action [avec succès ؟]"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: لم يُعثر على صياغة مرجعية حرفية «les pouvoirs moteurs permettent…». الترجيح: في التحليل الديداكتيكي، المبادئ (principes d''action) صياغات عامة «ne donnent pas les moyens pour réaliser l''acte» وتُترجم عملياً إلى قواعد عمل (règles d''action)؛ والمتعلم «doit […] choisir les règles d''action compatibles avec ses pouvoirs moteurs» (Analyse didactique du handball). فالقوى الحركية تمكّن من تنفيذ قواعد العمل بنجاح (D) لا من «تحقيق» مبدأ نظري مباشرة (A). لكن A يبقى منافساً قريباً لأن قواعد العمل هي وسيلة تحقيق المبادئ — الجواب مرجّح ويحتاج تحققاً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q51', 'exam_eps_2023_didactics_lycee', 51, 'ديداكتيك مادة التخصص', 'Selon les orientations pédagogiques [2007 ؟] , une faute grossière en gymnastique [في التفريغ: «en G massive»] est pénalisée par :', false, '[{"id": "A", "text": "la déduction de 0,2 point"}, {"id": "B", "text": "une déduction de 0,3 point"}, {"id": "C", "text": "une déduction de 0,4 point"}, {"id": "D", "text": "une déduction de 0,5 point"}]'::jsonb, ARRAY['B']::text[], 'OP 2007 (نسخة Scribd من التوجيهات): «Appréciation analytique: Petite faute 0.1 points — Faute moyenne 0.2 points — **Faute grossière 0.3 points** — Chute 0.5 points». إذن B. (ملاحظة: مصادر أخرى خارج OP — كدليل تقييم جمبازي عام — تعاقب كل خطأ بـ 0,5، لكن السؤال يسأل صراحة عن OP، وقيمتها 0,3.)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q53', 'exam_eps_2023_didactics_lycee', 53, 'ديداكتيك مادة التخصص', 'Selon les OP 2007-2009, la structure de la tâche d''apprentissage contient :', false, '[{"id": "A", "text": "le but, déroulement, consignes, critère de réussite, critère de réalisation"}, {"id": "B", "text": "le but, l''aménagement, consignes, critère de réussite, critère de réalisation"}, {"id": "C", "text": "le but, condition de réalisation et consignes, critère de réussite, critère de réalisation, des variables"}, {"id": "D", "text": "l''objectif, des variables de conduite, critères de réussite, critères de réalisation"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: بنك «80 QCM Didactique» ينقل عن OP 2009 أن «la situation pédagogique doit préciser: **un but, des critères de réalisation, des critères de réussite, des conditions de réalisation, des consignes et des variantes**» (المفتاح: B في ذلك البنك). الخيار C هو الوحيد الذي يجمع الهدف + شروط الإنجاز + التعليمات + معيارَي النجاح والإنجاز + المتغيرات (≈ variantes). الخيار B (التهيئة/الترتيب بدل شروط الإنجاز، بلا متغيرات) منافس قريب. التحفظ: البنك المرجعي يتحدث عن «situation pédagogique» لا عن «tâche d''apprentissage» حرفياً، لذا يبقى C مرجّحاً لا مؤكداً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q54', 'exam_eps_2023_didactics_lycee', 54, 'ديداكتيك مادة التخصص', 'La notion de la conscience disciplinaire en EPS renvoie :', false, '[{"id": "A", "text": "au projet d''enseignement disciplinaire proposé par l''enseignant dans une APS"}, {"id": "B", "text": "aux obstacles et conflits perçus dans une APS"}, {"id": "C", "text": "à la manière dont l''élève constitue une APS donnée"}, {"id": "D", "text": "à la juste position des situations proposées par l''enseignant dans une APS donnée"}]'::jsonb, ARRAY['C']::text[], 'Reuter (2007، «La conscience disciplinaire»، Éducation et didactique): المفهوم «désigne la manière dont les acteurs sociaux et plus particulièrement les élèves (re)construisent les disciplines scolaires». الخيار C هو الترجمة الحرفية لذلك («la manière dont l''élève constitue une APS donnée»). D («juste position des situations») مفهوم مختلف (يخص التموضع الديداكتيكي للوضعيات).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q55', 'exam_eps_2023_didactics_lycee', 55, 'ديداكتيك مادة التخصص', 'Selon les OP 2007-2009, les entrées des processus enseignement-apprentissage sont :', false, '[{"id": "A", "text": "l''entrée par compétence"}, {"id": "B", "text": "l''entrée par valeur"}, {"id": "C", "text": "l''entrée par compétence et valeur"}, {"id": "D", "text": "l''entrée par compétence et par […] [الخيار مقطوع في التفريغ]"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: الإطار العام للمنهاج المغربي (OP 2007) «repose sur deux entrées, à savoir, "les compétences" et "les valeurs"» (أطروحة دكتوراه، جامعة سيدي محمد بن عبد الله، فاس، عن منهاج الفرنسية OP 2007)؛ وخلاصة OP 2007 لـ EPS تذكر أسس المنهاج: «values, competencies, and knowledge». الخيار C يطابق «مدخلان: الكفايات والقيم». التحفظ: الخيار D مقطوع ولا يُعرف متمّمه (قد يكون «par contenu» أو «par situation»)، والـ OP تذكر أيضاً مجال المحتويات كمدخل ثالث في مواضع أخرى — لذا C مرجّح لا مؤكد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q56', 'exam_eps_2023_didactics_lycee', 56, 'ديداكتيك مادة التخصص', 'Pour acquérir une compétence, il y a lieu de respecter [5 ؟ / 6 ؟] grandes phases :', false, '[{"id": "A", "text": "exploration, enrichissement, intégration, entraînement, transfert, apprentissage de base"}, {"id": "B", "text": "exploration, apprentissage de base, enrichissement, intégration, entraînement, transfert"}, {"id": "C", "text": "exploration, apprentissage de base, intégration, entraînement, enrichissement, transfert"}, {"id": "D", "text": "exploration, apprentissage de base, intégration, entraînement, transfert, enrichissement"}]'::jsonb, ARRAY['D']::text[], 'النموذج المرجعي لمراحل اكتساب الكفاية (APC): خمس مراحل متتالية — 1. exploration، 2. apprentissage de base، 3. intégration-entraînement، 4. transfert، 5. enrichissement («On distingue cinq phases successives […] l''exploration, l''apprentissage de base, l''intégration-entraînement, le transfert des apprentissages et l''enrichissement» — أدلة OFPPT/APC؛ وجدول «Phases d''acquisition d''une compétence»: EXPLORATION → APPRENTISSAGE DE BASE → INTÉGRATION-ENTRAÎNEMENT → TRANSFERT → ENRICHISSEMENT). الخيار D وحده يحترم هذا الترتيب كاملاً عند فكّ «intégration-entraînement» إلى مرحلتين (الإثراء أخيراً دائماً، والنقل قبل الإثراء). A يضع الإثراء ثانياً، وB يضعه ثالثاً، وC يضعه قبل النقل — كلها مخالفة للترتيب. (ملاحظة: عدد المراحل في الصياغة غير واضح في التفريغ — 5 في النموذج المرجعي، 6 إذا فُكّت مرحلة التكامل/التدريب — لكن الترتيب يحدد D في الحالتين.)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q57', 'exam_eps_2023_didactics_lycee', 57, 'ديداكتيك مادة التخصص', 'La notion de contenu d''enseignement-apprentissage en EPS renvoie :', false, '[{"id": "A", "text": "au savoir à enseigner et aux connaissances qui constituent les élèves au fil du temps"}, {"id": "B", "text": "au savoir, au savoir-faire des […] immédiatement identifiables [صياغة غير واضحة في التفريغ]"}, {"id": "C", "text": "au savoir, au savoir-faire, au comportement et attitude attendus par les élèves"}, {"id": "D", "text": "aux connaissances déclaratives se basant sur des faits et des informations"}]'::jsonb, ARRAY['C']::text[], 'تطابق مزدوج: (1) الثلاثية المرجعية للمحتويات في EPS: savoir / savoir-faire / savoir-être (سلوك ومواقف)؛ (2) بنك «80 QCM Didactique» يعيد السؤال حرفياً بخياراته نفسها ومفتاحه: «2-C» (LA CORRECTION: 1-B, 2-C, 3-D, 4-B…). الخيار C. (B مقطوع وD يقتصر على المعرفة التصريحية.)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q58', 'exam_eps_2023_didactics_lycee', 58, 'ديداكتيك مادة التخصص', 'En EPS, une modélisation didactique renvoie à :', false, '[{"id": "A", "text": "une proposition d''un cadre de référence par la mise en œuvre de principes didactiques"}, {"id": "B", "text": "un processus d''analyse des invariants [et] variantes didactiques"}, {"id": "C", "text": "un traitement des objectifs disciplinaires à enseigner"}, {"id": "D", "text": "une dimension réflexive de la didactique sur ses propres processus"}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: بنك «80 QCM Didactique» يعيد السؤال حرفياً بخياراته نفسها ومفتاحه: «3-D» (LA CORRECTION: …, 3-D, …). هذا هو الدليل الأقوى المتاح لأنه يطابق نص السؤال حرفياً. التحفظ: المفتاح مصدر ثانوي غير رسمي (بنك أسئلة لا OP)، والتعريف العام للنموذج الديداكتيكي («construction théorique… cadre cohérent pour décrire/analyser» — Tangente) يقرّب الخيار A أيضاً؛ لكن مفتاح البنك المطابق حرفياً يرجّح D. لذا: D مرجّح.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q59', 'exam_eps_2023_didactics_lycee', 59, 'ديداكتيك مادة التخصص', 'Selon les OP de [2009 ؟ — السنة غير واضحة في التفريغ] , l''évaluation des connaissances procédurales en sport collectif est :', false, '[{"id": "A", "text": "le résultat de l''activité motrice durable"}, {"id": "B", "text": "le résultat de l''activité motrice observable"}, {"id": "C", "text": "le comportement moteur et la performance sportive"}, {"id": "D", "text": "la mise en accent sur l''aspect collectif et l''apprentissage lors de la notation"}]'::jsonb, ARRAY['B']::text[], 'تطابق مزدوج: (1) بنك «80 QCM Didactique» يعيد السؤال حرفياً بخياراته نفسها ومفتاحه: «4-B» («Le résultat de l''activité motrice observable»)؛ (2) منطق OP: المعرفة الإجرائية (procédurale = savoir-faire) تُقيَّم عبر النشاط الحركي القابل للملاحظة، مقابل النشاط القابل للقياس (mesurable) الذي يخص الأداء في ألعاب القوى، و«comportement moteur et performance» يخص التقييم العام لا الإجرائي تحديداً. (ملاحظة: سنة OP غير واضحة في التفريغ — 2009 أرجح لأن البنك ينسب الصيغة نفسها إلى OP 2007/2009 — لكن الجواب لا يتغير.)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة يناير 2023) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_didactics_lycee_q60', 'exam_eps_2023_didactics_lycee', 60, 'ديداكتيك مادة التخصص', 'Les savoirs savants et les savoirs à enseigner en EPS […] : [صياغة السؤال غير واضحة في التفريغ]', false, '[{"id": "A", "text": "l''ensemble des liens entre les buts et les contenus d''enseignement"}, {"id": "B", "text": "l''ensemble des activités permettant à l''élève de vivre des situations variées"}, {"id": "C", "text": "l''ensemble des savoirs élaborés pratiqués dans des institutions jouissant d''une reconnaissance sociale"}, {"id": "D", "text": "l''ensemble des liens entre les tâches proposées et les rôles sociaux"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Chevallard: المعرفة العالِمة (savoir savant) «Produit dans une institution dont la fonction est de produire des savoirs» / «celui de la communauté scientifique» (وحدة CRMEF الدار البيضاء–سطات، Pr Latifa Faouzi، «Transposition didactique»؛ و«Le savoir savant est celui de la communauté scientifique… référence suprême du savoir à enseigner»). الخيار C هو الوحيد الذي يعرّف المعرفة العالِمة بهذه الصفة (معارف مُصاغة في مؤسسات تحظى باعتراف اجتماعي). التحفظ: صياغة السؤال نفسها غير مستعادة (لا يُعرف هل يسأل عن تعريف المعرفة العالِمة أم عن التحويل الديداكتيكي أم عن العلاقة بين النوعين) — فإن كان السؤال عن التحويل نفسه فلا خيار يطابقه تماماً؛ لذا C مرجّح لا مؤكد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=zUh54jw4vEU', false, 'للتحقق — إجابة مرجّحة')
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
