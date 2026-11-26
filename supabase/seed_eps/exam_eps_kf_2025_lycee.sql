-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025)
-- ====================================================================
-- المصدر: solved/2025/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2025.md
--   (امتحان الكفاءة المهنية — التأهيلي، دورة دجنبر 2025، أُجري في 5 دجنبر 2025؛ الاختبار الكامل:
--    علوم التربية + ديداكتيك، 3 ساعات، معامل 1، 13 صفحة. هذا الملف يغطي مكوّن الديداكتيك فقط.)
-- النطاق: Q21–Q70 في الدفتر (50 سؤال QCM بخمسة اختيارات A–E؛ الخيار E دائماً «Aucune des réponses
--   ci-dessus n'est exacte») مرقمة 1–50 هنا. Q1–Q20 (علوم التربية) خارج النطاق ولم تُحل.
--   التنقيط: 1ن أو 2ن لكل سؤال (المجموع الخام 80)؛ تنقيط سلبي لكل جواب خاطئ أو ملغى (التعليمة 9 في الورقة).
-- الأجوبة: لا مفتاح رسمي. مفتاح mesconcours.ma بعد حلّين مستقلين، مقارَناً سؤالاً بسؤال مع تصحيح
--   wadifa-info المقترح (اتفاق على 37 سؤالاً، اختلاف في 5، و8 لم يحسمها wadifa). لم يُستعمل AI Studio.
-- التحقق: الأسئلة الـ15 الموسومة «للتحقق — إجابة مرجّحة» (⚠) في الملف المصدر — وهي أرقام الدفتر Q22 وQ23
--   وQ26 وQ28 وQ35 وQ36 وQ42 وQ43 وQ45 وQ51 وQ55 وQ56 وQ62 وQ64 وQ68 — مسجلة verified=false مع
--   حفظ التحفظ حرفياً في verification_note. باقي الأسئلة verified=true (اتفاق المفتاحين).
-- Q47 يكرر Q37 حرفياً (عيب في الورقة نفسها، تحقّق بصرياً صفحتا 6 و8) — سُجل السؤالان كما وردا دون حذف،
--   والجواب نفسه (D)؛ التكرار محفوظ في verification_note الخاص بـQ47.

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2025_lycee', 'eps_lycee', 2025, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025)', 'دورة دجنبر 2025', 180, 50, 'مكوّن الديداكتيك فقط (Q21–Q70 في الدفتر، مرقمة 1–50 هنا)؛ Q1–Q20 علوم التربية خارج النطاق؛ تنقيط سلبي')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (50 سؤالاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q1', 'exam_eps_kf_2025_lycee', 1, 'ديداكتيك التربية البدنية والرياضية', 'Les éléments sur lesquels relèvent les déterminants institutionnels de l''activité enseignante sont :', false, '[{"id": "A", "text": "Les valeurs personnelles de l''enseignant."}, {"id": "B", "text": "L''expérience professionnelle antérieure."}, {"id": "C", "text": "Les programmes disciplinaires."}, {"id": "D", "text": "Les croyances pédagogiques."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'Les déterminants institutionnels viennent de l''institution : programmes, orientations, textes. Valeurs, expérience et croyances sont des déterminants personnels.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q2', 'exam_eps_kf_2025_lycee', 2, 'ديداكتيك التربية البدنية والرياضية', 'En Basketball, le principe fondateur qui valorise l''adresse et l''évitement plutôt que la force physique est :', false, '[{"id": "A", "text": "L''utilisation d''un ballon gros et léger."}, {"id": "B", "text": "L''interdiction de tout contact personnel."}, {"id": "C", "text": "La présence d''une cible élevée et de petite dimension."}, {"id": "D", "text": "L''interdiction de déplacement du porteur de balle."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Le règlement interdit le contact : c''est ce qui oblige à gagner par l''adresse et l''évitement, non par la force. La cible haute oriente le tir, mais ne règle pas le rapport de force.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: wadifa-info يوافق على B لكن «sans certitude» — الخيار C (الهدف المرتفع والصغير) يدافع عن «l''adresse» بينما B يدافع عن «l''évitement»؛ السؤال يجمع الكلمتين معاً.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q3', 'exam_eps_kf_2025_lycee', 3, 'ديداكتيك التربية البدنية والرياضية', 'En Handball, la situation d''apprentissage basée sur l''arrêt obligatoire après « trois pas » provoque chez les élèves :', false, '[{"id": "A", "text": "Une surcharge cognitive les empêchant de dribbler."}, {"id": "B", "text": "Une corporéité éloignée de celle du Handball en situation de jeu réel."}, {"id": "C", "text": "Un désintérêt complet pour l''activité."}, {"id": "D", "text": "Une sollicitation excessive de l''efficacité de l''action."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Un arrêt imposé après trois pas déforme la motricité du jeu réel : l''élève apprend une corporéité qui n''est pas celle de l''activité. Les autres effets sont trop absolus ou sans lien avec la contrainte. Choix de notre part, A est la seconde possibilité.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق: mesconcours نفسه يذكر أن A («surcharge cognitive») هو الاحتمال الثاني.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q4', 'exam_eps_kf_2025_lycee', 4, 'ديداكتيك التربية البدنية والرياضية', 'Avec les élèves du tronc commun, l''enseignant d''EPS remarque que la transmission du témoin dans la course de relais se fait hors de la zone de transmission, pour leur faciliter l''apprentissage il décide de :', false, '[{"id": "A", "text": "Se concentrer sur la technique de transmission."}, {"id": "B", "text": "Travailler le placement dans le couloir du relayeur par rapport au relayé."}, {"id": "C", "text": "Demander au relayé de décélérer à la proche de la zone de transmission."}, {"id": "D", "text": "Augmenter la longueur de la zone de transmission, puis la réduire progressivement."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'Agrandir la zone puis la réduire est une variable didactique : elle rend la réussite possible au départ puis ramène vers la règle. Ralentir ou isoler la technique ne résout pas le problème de la zone.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q5', 'exam_eps_kf_2025_lycee', 5, 'ديداكتيك التربية البدنية والرياضية', 'En Football, certains élèves du terminal ont du mal à progresser collectivement avec le ballon, l''enseignant préconise de :', false, '[{"id": "A", "text": "Progresser collectivement sans présence d''adversaires."}, {"id": "B", "text": "Progresser collectivement avec présence d''une défense passive."}, {"id": "C", "text": "De confier la progression aux bons éléments de l''équipe attaquante."}, {"id": "D", "text": "Apprendre aux élèves comment se placer et se déplacer sur le terrain."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'La progression collective s''apprend face à une opposition graduée : une défense passive garde le sens du jeu (avancer vers une cible malgré des adversaires) tout en laissant le temps de construire. Sans adversaire (A), la tâche perd sa logique interne ; confier le ballon aux meilleurs (C) exclut les élèves en difficulté ; le placement seul (D) n''est qu''une partie du problème.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q6', 'exam_eps_kf_2025_lycee', 6, 'ديداكتيك التربية البدنية والرياضية', 'En Basketball, la plupart des élèves d''une classe du terminal n''arrivent pas à concrétiser les attaques, ce qui a mené l''enseignant à :', false, '[{"id": "A", "text": "Consacrer une partie de chaque séance aux exercices de tirs au panier."}, {"id": "B", "text": "Réserver une seule séance du cycle pour apprendre comment choisir les meilleurs moments de tir."}, {"id": "C", "text": "Travailler tout le temps en surnombre en faveur des attaquants."}, {"id": "D", "text": "Faire baisser le panneau de basket Ball."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'Concrétiser une attaque, c''est arriver en position favorable de tir : le surnombre offensif modifie le rapport de force et multiplie ces situations, ce qui est la variable didactique attendue. Des tirs hors opposition (A) ne règlent pas la création de l''occasion, une seule séance (B) est insuffisante, et baisser le panier (D) agit sur l''adresse, pas sur la construction de l''attaque.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'تعارض mesconcours/wadifa — حُسم لصالح mesconcours (C): wadifa يقترح A (تمارين التسديد في كل حصة) واصفاً إياه بأنه «الأكثر واقعية». لكن المشكل المطروح هو عدم تجسيد الهجمات (خلق وضعية تسديد مواتية)، والتفوق العددي هو المتغير الديداكتيكي الكلاسيكي لتعديل نسبة القوة وخلق هذه الوضعيات (Gréhaigne)؛ تمارين التسديد خارج المعارضة لا تعالج بناء الهجمة، وحصة واحدة (B) غير كافية. يبقى التحفظ على صياغة «tout le temps» المطلقة في C.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q7', 'exam_eps_kf_2025_lycee', 7, 'ديداكتيك التربية البدنية والرياضية', 'La fonction principale de l''évaluation en cours d''apprentissage est :', false, '[{"id": "A", "text": "De réguler les apprentissages des élèves à la fin d''une séquence."}, {"id": "B", "text": "De donner une note."}, {"id": "C", "text": "De réguler à la fois le processus et le produit de l''apprentissage."}, {"id": "D", "text": "De décomplexifier les situations d''apprentissage."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'L''évaluation menée pendant l''apprentissage est formative : elle régule, et elle porte à la fois sur la façon de faire (le processus) et sur le résultat (le produit). « À la fin d''une séquence » (A) décrit le moment d''un bilan, pas l''évaluation en cours ; la note (B) relève de la certification ; décomplexifier (D) est une décision qui peut suivre l''évaluation, pas sa fonction.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q8', 'exam_eps_kf_2025_lycee', 8, 'ديداكتيك التربية البدنية والرياضية', 'Évaluer un enchaînement en gymnastique consiste à :', false, '[{"id": "A", "text": "Porter un jugement de valeur sur la prestation de l''élève."}, {"id": "B", "text": "Noter l''exécution de chaque élément gymnique."}, {"id": "C", "text": "Noter à la fois la difficulté et l''exécution de chaque élément gymnique."}, {"id": "D", "text": "Noter l''exécution et l''esthétique de l''enchaînement."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'En gymnastique scolaire comme dans le code de pointage, la note d''un enchaînement combine la valeur des éléments choisis (difficulté) et la qualité de leur réalisation (exécution). L''exécution seule (B) ignore le choix des difficultés ; l''esthétique (D) n''en est qu''une composante ; un jugement de valeur global (A) n''est pas une évaluation critériée.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'تعارض mesconcours/wadifa — حُسم لصالح mesconcours (C): wadifa يقترح A بالمعنى الدوسيمولوجي العام («évaluer, c''est porter un jugement de valeur»). لكن السؤال يخص الجمباز تحديداً، وفي مدونة التنقيط (FIG) كما في الجمباز المدرسي تتكون نقطة السلسلة من الصعوبة + التنفيذ؛ A ليس تقييماً معيارياً (critérié). يبقى A هو التعريف العام للتقييم.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q9', 'exam_eps_kf_2025_lycee', 9, 'ديداكتيك التربية البدنية والرياضية', 'En sports collectifs, pour évaluer la progression collective, le rapport « nombre tirs tentés / entrée en possession de balles » constitue principalement :', false, '[{"id": "A", "text": "Un indicateur objectif."}, {"id": "B", "text": "Un indicateur fiable et valide"}, {"id": "C", "text": "Un indicateur valide."}, {"id": "D", "text": "Un indicateur qualitatif."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'Le rapport se calcule en comptant des événements observables (tirs, possessions) : c''est un indicateur objectif, quantitatif, indépendant de l''appréciation de l''observateur. Il n''est pas qualitatif (D) ; sa validité et sa fiabilité (B, C) dépendent de l''usage qu''on en fait et de la qualité du relevé, ce n''est pas ce que le rapport est « principalement ».', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q10', 'exam_eps_kf_2025_lycee', 10, 'ديداكتيك التربية البدنية والرياضية', 'Lorsque le « milieu » proposé est mal conçu par rapport à la logique interne de l''APS :', false, '[{"id": "A", "text": "Les élèves apprennent plus rapidement."}, {"id": "B", "text": "Les apprentissages sont décontextualisés."}, {"id": "C", "text": "La situation d''apprentissage fait émerger le problème fondamental."}, {"id": "D", "text": "L''activité devient naturellement plus sécuritaire."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Un milieu étranger à la logique interne coupe l''apprentissage du problème que l''activité pose : les acquis sont décontextualisés. Un milieu bien conçu serait celui qui fait émerger le problème fondamental (C).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q11', 'exam_eps_kf_2025_lycee', 11, 'ديداكتيك التربية البدنية والرياضية', 'Face à l''hétérogénéité de la classe, la structuration de l''espace de jeu est cruciale dans l''enseignement des APS si elle :', false, '[{"id": "A", "text": "Permet de respecter strictement les dimensions officielles."}, {"id": "B", "text": "Est la base qui confère son sens au besoin de l''apprenant."}, {"id": "C", "text": "Simplifie l''organisation matérielle pour l''enseignant."}, {"id": "D", "text": "Limite le nombre de joueurs nécessaires."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'L''aménagement de l''espace est un levier de différenciation s''il répond au besoin de l''apprenant et donne sens à la tâche. Respecter les dimensions officielles, simplifier la logistique ou réduire les joueurs sont des choix d''organisation sans portée didactique.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q12', 'exam_eps_kf_2025_lycee', 12, 'ديداكتيك التربية البدنية والرياضية', 'L''analyse « a priori » d''une situation d''apprentissage a pour but principal de :', false, '[{"id": "A", "text": "Décrire les comportements observés des élèves."}, {"id": "B", "text": "Identifier les savoirs en jeu et les attentes avant la mise en œuvre."}, {"id": "C", "text": "Évaluer l''efficacité de l''enseignant."}, {"id": "D", "text": "Corriger les erreurs techniques des élèves."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'L''analyse a priori précède la séance : elle prévoit les savoirs en jeu, les procédures attendues et les difficultés. Décrire les comportements observés relève de l''analyse a posteriori.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q13', 'exam_eps_kf_2025_lycee', 13, 'ديداكتيك التربية البدنية والرياضية', 'La démarche nécessaire pour faire évoluer la corporéité des élèves vers une corporéité culturellement spécialisée est celle qui :', false, '[{"id": "A", "text": "Privilégie un entraînement technique intensif et répétitif."}, {"id": "B", "text": "Conçoit les situations d''apprentissage en cohérence avec la logique interne de l''APS."}, {"id": "C", "text": "Augmente le volume horaire d''EPS."}, {"id": "D", "text": "Sélectionne les élèves sur leurs prédispositions physiques."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'La corporéité spécialisée se construit dans des situations fidèles à la logique interne de l''APS, pas par la répétition technique, le volume horaire ou la sélection. L''énoncé est coupé à droite dans la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q14', 'exam_eps_kf_2025_lycee', 14, 'ديداكتيك التربية البدنية والرياضية', 'Dans un cycle de Handball, et afin de rester fidèle à l''approche par compétences, l''enseignant choisit de :', false, '[{"id": "A", "text": "Acquérir les savoirs faire, les savoirs être dans des situations simples."}, {"id": "B", "text": "Développer les savoirs à travers des recherches sur internet."}, {"id": "C", "text": "Faire apprendre comment intégrer les acquis antérieurs avec les nouveaux acquis."}, {"id": "D", "text": "Apprendre toujours dans le cadre de situations complexes."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'L''approche par compétences vise l''intégration des acquis dans des tâches signifiantes. C en est la formule. D est faux par le mot « toujours » : on passe aussi par des situations simplifiées avant l''intégration. Hésitation entre C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q15', 'exam_eps_kf_2025_lycee', 15, 'ديداكتيك التربية البدنية والرياضية', 'Pour une classe de terminal, l''objet d''évaluation finale choisi par un enseignant d''EPS en Volleyball est :', false, '[{"id": "A", "text": "La progression de la balle de la zone arrière vers la zone avant."}, {"id": "B", "text": "Le nombre des renvois indirects."}, {"id": "C", "text": "L''organisation en attaque et en défense."}, {"id": "D", "text": "Le gain du match."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'En classe terminale on évalue la compétence collective : organiser l''attaque et la défense. Le nombre de renvois ou la progression de la balle sont des indicateurs partiels, et le gain du match un résultat sans analyse. Choix de notre part.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: mesconcours نفسه يقول «Choix de notre part»؛ wadifa لا يحسم (يستبعد D لأنه نتيجة لا موضوع تعلم، وB مؤشر جزئي). C هو موضوع الكفاءة الجماعية (تنظيم الهجوم والدفاع) في النهائي حسب منطق المقاربة بالكفايات.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q16', 'exam_eps_kf_2025_lycee', 16, 'ديداكتيك التربية البدنية والرياضية', 'Pour une classe du 2ème année Bac, l''évaluation finale en course de durée se fait :', false, '[{"id": "A", "text": "À base d''une course où il faut respecter les allures dictées par l''enseignant d''EPS."}, {"id": "B", "text": "À base d''un projet individuel de course."}, {"id": "C", "text": "Seulement à base de la performance chronométrée."}, {"id": "D", "text": "Selon le progrès réalisé par rapport à la performance du test d''observation."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'L''évaluation finale en EPS compare le test bilan au test d''observation : on note le progrès, pas la seule performance chronométrée. Un projet individuel (B) est une démarche, non le critère de notation.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'تعارض mesconcours/wadifa — حُسم لصالح wadifa (B): mesconcours يقترح D (التقدم مقارنة باختبار الملاحظة — المبدأ العام للتقييم في التربية البدنية). لكن السؤال يخص الجري المطوّل في السنة الثانية باكالوريا تحديداً، حيث تجعل التوجيهات التربوية 2007 من المشروع (الفردي أو الجماعي) محور التعلم والتقويم («s''intégrer volontairement dans la planification et la réalisation de projets individuels et collectifs»؛ و«mobiliser un certain niveau de performance suivant un projet Collectif ou individuel»)؛ كما أن التقييم النهائي في الجري المطوّل بالسلك الإعدادي (توجيهات 2009) يقوم على «projet personnel de course». D يبقى بديلاً قائماً على المبدأ العام.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q17', 'exam_eps_kf_2025_lycee', 17, 'ديداكتيك التربية البدنية والرياضية', 'Constatant que certains élèves du lycée hésitent à réaliser des éléments de rotations en gymnastique, l''enseignant :', false, '[{"id": "A", "text": "Réalise lui-même la démonstration devant le groupe classe."}, {"id": "B", "text": "Demande aux élèves hésitants d''imiter ceux qui réussissent les rotations."}, {"id": "C", "text": "Écarte totalement l''apprentissage des éléments gymniques de rotation."}, {"id": "D", "text": "Met en place des tapis de chute et renforce la sécurisation du plateau de travail."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'L''hésitation vient de la peur : sécuriser le plateau lève le frein sans renoncer à l''apprentissage. Imiter ou démontrer ne traite pas la peur, et écarter l''élément supprime l''enjeu.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q18', 'exam_eps_kf_2025_lycee', 18, 'ديداكتيك التربية البدنية والرياضية', 'L''évaluation normative consiste principalement à :', false, '[{"id": "A", "text": "Comparer le résultat du test bilan par rapport au test d''observation."}, {"id": "B", "text": "Juger la qualité des performances."}, {"id": "C", "text": "Évaluer les progrès des élèves le long du cycle."}, {"id": "D", "text": "Comparer la performance des élèves à un barème standard."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'L''évaluation normative situe la performance par rapport à une norme ou un barème, ou à la moyenne du groupe. Comparer au test d''observation ou mesurer le progrès relève d''une évaluation par rapport à soi-même.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q19', 'exam_eps_kf_2025_lycee', 19, 'ديداكتيك التربية البدنية والرياضية', 'Lors d''un test d''observation sous forme de match de Volleyball, l''enseignant constate que plusieurs élèves n''arrivent pas à réaliser le service, il décide de :', false, '[{"id": "A", "text": "Interrompre le test et proposer une situation d''apprentissage spécifique au service."}, {"id": "B", "text": "Adapter les paramètres de la situation d''observation."}, {"id": "C", "text": "Continuer le test sans intervenir pour respecter la situation d''évaluation initiale."}, {"id": "D", "text": "Observer les élèves à partir d''exercices techniques isolés."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Le test d''observation doit permettre à tous de jouer : adapter ses paramètres (distance, hauteur, service facilité) garde la situation de match. L''interrompre ou le remplacer par des exercices isolés casse sa fonction diagnostique. Ligne de l''énoncé coupée dans la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q20', 'exam_eps_kf_2025_lycee', 20, 'ديداكتيك التربية البدنية والرياضية', 'Dans le cadre d''une évaluation formative en gymnastique, certains élèves du TC refusent de présenter leurs enchaînements devant les autres. L''enseignant d''EPS :', false, '[{"id": "A", "text": "Promet de leur attribuer la note complète afin d''éviter toute situation de stress."}, {"id": "B", "text": "Les avertit qu''ils seront sanctionnés sur le plan des connaissances comportementales."}, {"id": "C", "text": "Promet de leur adapter les conditions d''évaluation pour leur permettre de présenter leur enchaînement dans un contexte moins anxiogène."}, {"id": "D", "text": "Prévoit les sanctionner sur le plan des connaissances conceptuelles."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'En évaluation formative on aménage les conditions pour lever l''anxiété, sans note offerte ni sanction. C est la seule réponse qui préserve l''évaluation et l''élève.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q21', 'exam_eps_kf_2025_lycee', 21, 'ديداكتيك التربية البدنية والرياضية', 'L''évaluation formative a pour but principal de :', false, '[{"id": "A", "text": "Servir d''outil de régulation des apprentissages en cours."}, {"id": "B", "text": "Juger le niveau atteint de l''élève à la fin de l''apprentissage."}, {"id": "C", "text": "Identifier le niveau de maîtrise des compétences."}, {"id": "D", "text": "Évaluer le produit final."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'L''évaluation formative a lieu pendant l''apprentissage et sert à le réguler. B et D décrivent l''évaluation sommative, C une évaluation certificative.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q22', 'exam_eps_kf_2025_lycee', 22, 'ديداكتيك التربية البدنية والرياضية', 'Le concept qui désigne le « système de traits pertinents d''une situation motrice et des conséquences qu''il entraîne dans l''accomplissement de l''action motrice » est :', false, '[{"id": "A", "text": "L''essence de l''activité."}, {"id": "B", "text": "L''histoire de l''activité."}, {"id": "C", "text": "Le noyau central du règlement."}, {"id": "D", "text": "La modélisation tactique."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'La définition est celle de la logique interne chez Parlebas, que les orientations marocaines appellent aussi essence de l''activité. L''histoire, le règlement et la tactique n''en sont que des aspects. Rapprochement de notre part.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'تعارض mesconcours/wadifa — حُسم لصالح mesconcours (A): التعريف المقتبس هو تعريف «logique interne» عند Parlebas حرفياً (Parlebas 2001، ص. 302)، وwadifa يقرأ بصرامة أن لا خيار يسميها فيقترح E. لكن أدبيات ديداكتيك التربية البدنية المغربية تساوي بين المفهومين صراحة («La logique interne de l''activité (Ce qui spécifie l''APS, c''est la carte d''identité et l''essence de l''APS…» — مقرر ديداكتيك التربية البدنية، سلك الإجازة في التربية)، وهو ما تستند إليه mesconcours. E هي القراءة الصارمة عند Parlebas، وA هي الجواب المنتظر في سياق الامتحان المغربي.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q23', 'exam_eps_kf_2025_lycee', 23, 'ديداكتيك التربية البدنية والرياضية', 'Au Volleyball, la règle relative à la dimension temporelle qui empêche la monopolisation du ballon est :', false, '[{"id": "A", "text": "L''interdiction de toucher le filet."}, {"id": "B", "text": "L''obligation de frapper le ballon."}, {"id": "C", "text": "La limitation à trois touches de balle par équipe."}, {"id": "D", "text": "L''interdiction pour un joueur de toucher deux fois consécutivement le ballon."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'La limite de trois touches fixe le temps de possession par équipe, donc empêche la monopolisation. D est une règle individuelle sur la séquence des touches.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'تعارض mesconcours/wadifa — حُسم لصالح mesconcours (C): wadifa يقترح B (وجوب ضرب الكرة — مدة التماس). لكن السؤال يربط «البعد الزمني» بـ«احتكار الكرة» من طرف الفريق: قاعدة اللمسات الثلاث تحدّ زمن حيازة الفريق للكرة وتجبر على إرجاعها، وهي القاعدة الزمنية المضادة للاحتكار؛ B يخص مدة التماس الفردي (جزء من الثانية) لا الاحتكار الجماعي. يبقى B بديلاً مذكوراً.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q24', 'exam_eps_kf_2025_lycee', 24, 'ديداكتيك التربية البدنية والرياضية', 'Au Rugby, la règle fondamentale qui détermine la « ligne de front » et interdit de passer le ballon vers l''avant est :', false, '[{"id": "A", "text": "La règle du tenu."}, {"id": "B", "text": "La règle de l''en-avant."}, {"id": "C", "text": "La règle du hors-jeu."}, {"id": "D", "text": "La règle de l''essai."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'La passe en avant est interdite par la règle de l''en-avant. Le hors-jeu définit des positions interdites, le tenu concerne le plaqué au sol, l''essai le but.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q25', 'exam_eps_kf_2025_lycee', 25, 'ديداكتيك التربية البدنية والرياضية', 'En sports collectifs, la pédagogie dite particulièrement efficace pour faire comprendre la logique interne du jeu aux débutants est :', false, '[{"id": "A", "text": "Jouer avec adversaire passif."}, {"id": "B", "text": "Jouer avec adversaire actif."}, {"id": "C", "text": "Jouer avec adversaire dans un cadre réglementaire."}, {"id": "D", "text": "Apprendre des habiletés spécifiques des sports collectifs."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'La logique interne d''un sport collectif est un rapport d''opposition : on ne la comprend qu''avec un adversaire actif. Les habiletés spécifiques (D) viennent après. C est proche. Choix de notre part.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: wadifa لا يحسم (يميل إلى B لأن المنطق الداخلي يقوم على المعارضة؛ C يدافع عنه أيضاً)؛ mesconcours يقول «Choix de notre part». A (خصم سلبي) هو مرحلة التدرج المعتادة، وC قريب.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q26', 'exam_eps_kf_2025_lycee', 26, 'ديداكتيك التربية البدنية والرياضية', 'L''essence d''un sport collectif dans l''enseignement de l''EPS réside principalement dans :', false, '[{"id": "A", "text": "Ses dimensions symboliques et émotionnelles."}, {"id": "B", "text": "La somme de ses techniques spécifiques."}, {"id": "C", "text": "Les rapports fondamentaux qui constituent son organisation."}, {"id": "D", "text": "Son histoire et son développement socio-culturel."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'L''essence se lit dans les rapports qui structurent le jeu (rapport de force, relations coéquipiers-adversaires), pas dans la somme des techniques ni dans l''histoire.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q27', 'exam_eps_kf_2025_lycee', 27, 'ديداكتيك التربية البدنية والرياضية', 'Constatant que certains élèves du lycée hésitent à réaliser des éléments de rotations en gymnastique, l''enseignant d''EPS :', false, '[{"id": "A", "text": "Réalise lui-même la démonstration devant le groupe classe."}, {"id": "B", "text": "Demande aux élèves hésitants d''imiter ceux qui réussissent les rotations."}, {"id": "C", "text": "Écarte totalement l''apprentissage des éléments gymniques de rotation."}, {"id": "D", "text": "Met en place des tapis de chute et renforce la sécurisation du plateau de travail."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'Même situation que le Q37 : on sécurise le plateau pour lever la peur sans renoncer à l''élément.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, 'عيب في الورقة نفسها: هذا السؤال مكرر حرفياً من Q37 (نفس الجذع ونفس الخيارات الخمسة). الجواب المسجل هو نفسه جواب Q37 (D). في التصحيح الرسمي (إن وُجد) يُحتسب السؤالان بنفس الجواب؛ وسُجل هنا كما ورد في الورقة دون حذف.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q28', 'exam_eps_kf_2025_lycee', 28, 'ديداكتيك التربية البدنية والرياضية', 'Pour des raisons de sécurité, l''équipe pédagogique décide de :', false, '[{"id": "A", "text": "Éviter la programmation des courses de haies."}, {"id": "B", "text": "Imposer une hauteur standard des haies pour chaque niveau scolaire."}, {"id": "C", "text": "Travailler avec des haies basses en plastique."}, {"id": "D", "text": "Apprendre les techniques de franchissement avec des hauteurs adaptées."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'La sécurité se règle en adaptant les hauteurs aux élèves, non en supprimant l''activité ni en imposant une hauteur unique. C est une mesure matérielle, D la démarche didactique complète.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q29', 'exam_eps_kf_2025_lycee', 29, 'ديداكتيك التربية البدنية والرياضية', 'Afin d''améliorer la capacité aérobie chez les élèves du lycée, un enseignant d''EPS propose des contenus :', false, '[{"id": "A", "text": "À base des performances du test d''observation."}, {"id": "B", "text": "Axés sur des efforts dépassant 80% du VMA."}, {"id": "C", "text": "Reproduits à partir d''un cycle réussi d''un collègue travaillant dans un lycée voisin."}, {"id": "D", "text": "Axés sur des efforts ne dépassant pas 80% du VMA."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'La capacité aérobie se travaille à des intensités modérées, au plus 80% de la VMA, sur des durées longues. Au-delà on développe la puissance aérobie.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q30', 'exam_eps_kf_2025_lycee', 30, 'ديداكتيك التربية البدنية والرياضية', 'Le développement de la force explosive des membres inférieurs se fait par :', false, '[{"id": "A", "text": "Des exercices de gainage de la ceinture pelvienne."}, {"id": "B", "text": "Des exercices de demi-squat avec des charges légères."}, {"id": "C", "text": "Exercices de course de vitesse sur 20m."}, {"id": "D", "text": "Exercices de sautillements au-dessus des Médecine Balls."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'La force explosive des jambes se développe par la pliométrie : sauts et rebonds rapides. Gainage et demi-squat léger sont des exercices de force ou de renforcement, la course de 20 m travaille la vitesse.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q31', 'exam_eps_kf_2025_lycee', 31, 'ديداكتيك التربية البدنية والرياضية', 'Pour résoudre le problème de l''hétérogénéité en cycle de Handball, l''enseignant d''EPS décide de :', false, '[{"id": "A", "text": "Former des équipes selon le sexe."}, {"id": "B", "text": "Former les groupes selon les qualités physiques."}, {"id": "C", "text": "Répartir les élèves selon les niveaux de maîtrise des passes."}, {"id": "D", "text": "Restructurer les équipes selon les thèmes d''apprentissage."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'On différencie par niveau de maîtrise de la compétence visée (ici les passes), non par sexe ni par qualités physiques. D parle de thèmes, non d''élèves. Hésitation entre C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: mesconcours نفسه يتردد بين C وD؛ wadifa يبقي C وD معاً (الجنس والصفات البدنية ليسا معيارين ديداكتيكيين). C (التجميع حسب مستوى إتقان التمريرات) هو معيار المستوى الكلاسيكي، وD (إعادة الهيكلة حسب مواضيع التعلم) يتعلق بتصميم المهام لا بتجميع التلاميذ.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q32', 'exam_eps_kf_2025_lycee', 32, 'ديداكتيك التربية البدنية والرياضية', 'Soucieux d''augmenter le temps d''apprentissage moteur en gymnastique, l''enseignant d''EPS :', false, '[{"id": "A", "text": "Décide de répartir à égalité les élèves sur les ateliers."}, {"id": "B", "text": "Augmente le nombre des ateliers."}, {"id": "C", "text": "Détermine a priori le nombre des répétitions pour chaque élève."}, {"id": "D", "text": "Plaide pour un apprentissage qualitatif des gestes gymniques au dépend des répétitions."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Plus d''ateliers, c''est moins d''attente et plus de pratique pour chacun. Répartir à égalité ou fixer les répétitions ne change pas le temps d''engagement moteur, et D l''oppose.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, 'ملاحظة: wadifa-info ذكر أن حرف B غير مطبوع في المسح، لكن في النسخة المحفوظة هنا (الصفحة 9) الحرف B مطبوع بوضوح بجانب «Augmente le nombre des ateliers» — فلا غموض في ترتيب الخيارات.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q33', 'exam_eps_kf_2025_lycee', 33, 'ديداكتيك التربية البدنية والرياضية', 'Lors d''une séance de saut en longueur, l''enseignant souhaite évaluer la capacité des élèves à gérer leurs efforts physiques, il met l''accent sur :', false, '[{"id": "A", "text": "L''évaluation du progrès."}, {"id": "B", "text": "L''étalonnage de la course d''élan."}, {"id": "C", "text": "L''évaluation centrée sur la maîtrise technique et la qualité d''exécution du geste."}, {"id": "D", "text": "L''évaluation critériée portant sur les différentes phases du saut en longueur."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Gérer ses efforts en saut en longueur, c''est régler sa course d''élan : l''étalonnage en est l''indicateur. Les autres évaluent le progrès, la technique ou les phases du saut. Énoncé coupé à droite dans la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q34', 'exam_eps_kf_2025_lycee', 34, 'ديداكتيك التربية البدنية والرياضية', 'Lors de l''évaluation formative, l''enseignant constate que la plupart des élèves sautent les haies au lieu de les franchir, il décide de :', false, '[{"id": "A", "text": "Ajuster uniquement les distances entre les haies."}, {"id": "B", "text": "Adapter progressivement les distances inter-haies et la hauteur des haies en fonction du niveau des élèves."}, {"id": "C", "text": "Diminuer la hauteur des haies pour rendre le passage plus facile."}, {"id": "D", "text": "Matérialiser les lignes d''appel sans modifier les paramètres des haies."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Sauter au lieu de franchir vient d''un rapport hauteur-distance inadapté : il faut régler les deux, progressivement. A et C n''agissent que sur un paramètre, D sur aucun.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q35', 'exam_eps_kf_2025_lycee', 35, 'ديداكتيك التربية البدنية والرياضية', 'Pour améliorer l''apprentissage, l''effet de la rétroaction est largement associé à :', false, '[{"id": "A", "text": "Sa fréquence."}, {"id": "B", "text": "La façon dont elle est dispensée."}, {"id": "C", "text": "Sa mise en œuvre par l''apprenant."}, {"id": "D", "text": "Son interprétation par l''élève."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Les synthèses sur la rétroaction montrent que son effet dépend davantage de sa qualité et de la manière de la donner que de sa fréquence. B et D sont proches, et nous retenons B. Confiance moyenne.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: mesconcours نفسه يقول «Confiance moyenne» و«B et D sont proches»؛ wadifa يتردد بين C وD. أبحاث التعلم الحركي تؤكد أن أثر التغذية الراجعة يتوقف على معالجة المتعلم لها (استقبالها وتأويلها واستعمالها — D/C)، بينما الصياغة الديداكتيكية الكلاسيكية تربطه بطريقة تقديمها (B). سُجل B (مفتاح mesconcours بعد حلّين مستقلين) مع هذا التحفظ.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q36', 'exam_eps_kf_2025_lycee', 36, 'ديداكتيك التربية البدنية والرياضية', 'Après quatre séances d''apprentissage, l''enseignant constate que ses élèves transmettent le témoin hors de la zone de transmission, il décide alors de :', false, '[{"id": "A", "text": "Élargir la zone de transmission en fonction des capacités des élèves."}, {"id": "B", "text": "Changer les binômes pour équilibrer les niveaux de performance."}, {"id": "C", "text": "Apprendre à utiliser des repères visuels."}, {"id": "D", "text": "Réserver des séances spécifiques au travail de la technique de transmission."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'Après plusieurs séances, l''erreur persiste faute de repère pour déclencher la course et recevoir dans la zone : il faut des repères visuels. Agrandir la zone est la bonne réponse au début de la séquence (question 4 du livret), mais ici on se situe après quatre séances : la cause est alors le moment du démarrage, que seuls des repères visuels permettent de déclencher. Changer les binômes ou isoler la technique ne règle pas le repérage.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق: wadifa لا يحسم (يميل إلى C؛ A يدافع عنه أيضاً). C هو الجواب المنطقي بعد أربع حصص: سبب الخطأ المستمر هو توقيت الانطلاق، ولا يعالجه إلا علامة بصرية؛ أما توسيع المنطقة (A) فهو جواب بداية الدورة (السؤال Q24) لا جواب ما بعد أربع حصص.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q37', 'exam_eps_kf_2025_lycee', 37, 'ديداكتيك التربية البدنية والرياضية', 'Lors d''une séance de Basketball, un élève refuse de jouer avec un camarade de son groupe. La démarche pédagogique la plus pertinente pour gérer ce conflit est :', false, '[{"id": "A", "text": "Exiger immédiatement que l''élève joue avec son camarade."}, {"id": "B", "text": "Négliger l''incident pour préserver le climat de la séance."}, {"id": "C", "text": "Laisser les élèves choisir librement leurs partenaires."}, {"id": "D", "text": "Organiser un échange avec les élèves pour comprendre le problème."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'Comprendre la cause par un échange permet de régler le conflit sans contrainte ni abandon. Exiger ou négliger envenime, et laisser choisir libre renonce à la mission éducative. Énoncé coupé à droite dans la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q38', 'exam_eps_kf_2025_lycee', 38, 'ديداكتيك التربية البدنية والرياضية', 'Lors de la période initiale d''appropriation d''un jeu, l''enseignement d''EPS doit principalement porter sur :', false, '[{"id": "A", "text": "La présentation et l''expérimentation de ses règles principales."}, {"id": "B", "text": "L''apprentissage exhaustif de toutes les techniques de base."}, {"id": "C", "text": "La préparation physique spécifique."}, {"id": "D", "text": "L''étude historique de l''activité."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'Au début, l''élève doit comprendre le jeu : on présente et on fait expérimenter les règles principales. Techniques, préparation physique et histoire viennent ensuite ou ailleurs.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q39', 'exam_eps_kf_2025_lycee', 39, 'ديداكتيك التربية البدنية والرياضية', 'Dans le cadre de l''EPS, la différenciation pédagogique peut se manifester par :', false, '[{"id": "A", "text": "Les contenus d''enseignement et les méthodes d''apprentissage."}, {"id": "B", "text": "Les objectifs spécifiques des programmes d''EPS."}, {"id": "C", "text": "Les évaluations et les notes attribuées aux élèves."}, {"id": "D", "text": "Les équipements et installations sportives disponibles."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'La différenciation agit sur ce que l''enseignant maîtrise dans la classe : contenus et méthodes. Les objectifs des programmes sont nationaux, et équipements ou notes ne sont pas des leviers de différenciation.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q40', 'exam_eps_kf_2025_lycee', 40, 'ديداكتيك التربية البدنية والرياضية', 'Lorsqu''une séance d''EPS ne se déroule pas comme prévu, un enseignant réflexif devrait :', false, '[{"id": "A", "text": "Changer d''activité physique."}, {"id": "B", "text": "Analyser les causes possibles de l''échec pour redresser son enseignement."}, {"id": "C", "text": "Blâmer les élèves pour leur manque d''engagement."}, {"id": "D", "text": "Répéter la même séance en espérant un meilleur résultat."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'La posture réflexive consiste à analyser les causes de l''écart pour réguler son enseignement. Changer d''activité, blâmer ou répéter évitent l''analyse.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q41', 'exam_eps_kf_2025_lycee', 41, 'ديداكتيك التربية البدنية والرياضية', 'Dans le cadre d''une approche pédagogique basée sur l''investigation, la séquence logique à suivre est :', false, '[{"id": "A", "text": "Identifier un problème, formuler une hypothèse, puis procéder à une vérification."}, {"id": "B", "text": "Développer une solution, l''appliquer, puis l''évaluer."}, {"id": "C", "text": "Donner une consigne, exécuter l''activité, et noter les résultats."}, {"id": "D", "text": "Observer, décrire, et classer les informations."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'La démarche d''investigation suit problème, hypothèse, vérification. B décrit la résolution de problème technique, C un enseignement directif, D un travail d''observation.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q42', 'exam_eps_kf_2025_lycee', 42, 'ديداكتيك التربية البدنية والرياضية', 'Afin d''acquérir les règles d''action de la progression collective en Basketball, l''enseignant d''EPS demande de :', false, '[{"id": "A", "text": "Progresser collectivement avec la balle face aux adversaires repliés en défense."}, {"id": "B", "text": "Réaliser la progression collective sans adversaires."}, {"id": "C", "text": "Progresser collectivement avec la balle face à des adversaires passifs."}, {"id": "D", "text": "Progresser collectivement et atteindre la cible face à une défense étagée."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['C']::text[], 'Pour apprendre une règle d''action, on réduit l''opposition sans la supprimer : des adversaires passifs gardent le sens de la tâche. Sans adversaire (B) elle perd son sens, et défense repliée ou étagée (A, D) est trop difficile pour l''acquisition. Choix de notre part, A est la seconde possibilité.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: mesconcours نفسه يقول «Choix de notre part, A est la seconde possibilité»؛ wadifa يتردد بين B وC وD. المبدأ الديداكتيكي: تُخفَّف المعارضة دون إلغائها — خصوم سلبيون يحافظون على معنى المهمة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q43', 'exam_eps_kf_2025_lycee', 43, 'ديداكتيك التربية البدنية والرياضية', 'Dans le but d''améliorer les performances des élèves des classes de la 2ème année du lycée en course de durée, l''équipe pédagogique se met d''accord sur :', false, '[{"id": "A", "text": "Varier les allures de course sans dépasser 90% de VMA pour toutes les classes."}, {"id": "B", "text": "Des allures de courses ne dépassant pas 65% de VMA tout le long du cycle."}, {"id": "C", "text": "Des allures de courses se situant en dessous de 70% de VMA tout le long du cycle."}, {"id": "D", "text": "Des séquences de course à 100% de VMA pour les meilleurs élèves."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'Améliorer la performance demande de varier les allures jusqu''à des intensités élevées mais tenables. 65% ou 70% tout le cycle est trop faible, et 100% de la VMA réservé à une partie des élèves rompt l''accord d''équipe. Confiance moyenne.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q44', 'exam_eps_kf_2025_lycee', 44, 'ديداكتيك التربية البدنية والرياضية', 'Au début de l''année, l''équipe pédagogique d''EPS décide de faire des tests d''évaluation des prérequis à travers :', false, '[{"id": "A", "text": "Des tests de qualités physiques."}, {"id": "B", "text": "Des tests d''agilité."}, {"id": "C", "text": "Le test navette de Luc Léger sur 20m."}, {"id": "D", "text": "Des tests d''agilité et de qualités physiques."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'Les prérequis englobent les qualités physiques et l''agilité : l''option D les couvre toutes les deux, quand A, B et C n''en évaluent qu''une part. Fin de l''énoncé coupée dans la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق: wadifa لا يحسم (يميل إلى D). D هو الخيار الأشمل (الرشاقة + الصفات البدنية)، لكن المتطلبات القبلية تشمل أيضاً المهارات الخاصة بالأنشطة البدنية والرياضية. ملاحظة mesconcours بأن «نهاية الصياغة مقطوعة في الصورة» غير صحيحة في النسخة المحفوظة هنا: الجذع كامل في الصفحة 12.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q45', 'exam_eps_kf_2025_lycee', 45, 'ديداكتيك التربية البدنية والرياضية', 'Au départ de la course de vitesse, la réaction au signal dépend prioritairement :', false, '[{"id": "A", "text": "D''une attention diffuse"}, {"id": "B", "text": "D''une bonne maitrise des étapes du départ"}, {"id": "C", "text": "Des encouragements des pairs à la ligne de départ."}, {"id": "D", "text": "D''une attention sélective"}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'Réagir vite à un signal sonore exige d''être attentif à lui seul : c''est l''attention sélective. Maîtriser les étapes du départ améliore l''action mais pas la réaction au signal.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, 'ملاحظة: wadifa-info ذكر أن الخيار D مطبوع بعد E في المسح، لكن في النسخة المحفوظة هنا (الصفحة 12) الترتيب عادي (A ثم B ثم C ثم D ثم E) — فلا غموض في ترتيب الخيارات. (المرشح صاحب النسخة وضع علامة × على D، وهي علامته هو لا المفتاح.)')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q46', 'exam_eps_kf_2025_lycee', 46, 'ديداكتيك التربية البدنية والرياضية', 'Pour plus d''objectivité lors du test bilan, l''enseignant utilise un nomogramme afin d''évaluer les élèves sur l''objectif : « Rechercher le gain de la rencontre par l''utilisation de moyens efficaces pour conserver la balle. », les axes les plus pertinents sont :', false, '[{"id": "A", "text": "1 Score obtenu / 2 Balles tentées / balles jouées"}, {"id": "B", "text": "1 score obtenu / 2 buts marqués / balles jouées"}, {"id": "C", "text": "1 score obtenu / 2 buts marqués / Balles tentées"}, {"id": "D", "text": "1 score obtenu / 2 balles perdues / balles jouées"}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['D']::text[], 'L''objectif est le gain du match par la conservation de la balle : le score mesure le gain, le rapport balles perdues sur balles jouées mesure la conservation. Les autres axes mesurent l''efficacité du tir. Les axes sont nos lectures des numéros encadrés de la photo.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q47', 'exam_eps_kf_2025_lycee', 47, 'ديداكتيك التربية البدنية والرياضية', 'Lors des séances d''ASS, l''enseignant d''EPS souhaite améliorer le départ explosif en course de vitesse. Le type de travail le plus adapté pour atteindre cet objectif est :', false, '[{"id": "A", "text": "Le travail de la force maximale."}, {"id": "B", "text": "Le travail pliométrique."}, {"id": "C", "text": "Le travail de la force endurance."}, {"id": "D", "text": "Le travail intermittent, pour renforcer la puissance aérobie."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Un départ explosif demande de la force rapide, que développe la pliométrie. La force maximale est trop lente, la force endurance et la puissance aérobie sont sans rapport avec le démarrage.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q48', 'exam_eps_kf_2025_lycee', 48, 'ديداكتيك التربية البدنية والرياضية', 'Lors des séances d''apprentissage de Handball au lycée, l''enseignant constate que certains élèves ont du mal à tirer en puissance et en équilibre. Pour remédier à cette difficulté, le travail le plus adapté pour lui consiste à :', false, '[{"id": "A", "text": "Réaliser des exercices de lancer de médecine Ball depuis différentes positions."}, {"id": "B", "text": "Effectuer des exercices de renforcement musculaire à la fin de chaque séance."}, {"id": "C", "text": "Travailler de la coordination."}, {"id": "D", "text": "Réaliser le geste technique du tir dans différentes situations."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['A']::text[], 'Les lancers de médecine ball depuis diverses positions travaillent à la fois la puissance du bras et l''équilibre dans des positions de tir. B et C sont trop généraux et D répète le geste qui échoue. Choix de notre part.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', false, 'للتحقق — إجابة مرجّحة: mesconcours نفسه يقول «Choix de notre part»؛ wadifa يرى أن A وD يدافع عنهما معاً (A يعمل القوة والتوازن عبر رميات الكرة الطبية من أوضاع مختلفة؛ D يعمل إيماءة التسديد نفسها في سياقات مختلفة).')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q49', 'exam_eps_kf_2025_lycee', 49, 'ديداكتيك التربية البدنية والرياضية', 'Pour enseigner une APS, une situation complexe se caractérise par :', false, '[{"id": "A", "text": "La durée requise pour atteindre le but."}, {"id": "B", "text": "Le nombre de paramètres à gérer simultanément."}, {"id": "C", "text": "Les attitudes comportementales mises en jeu."}, {"id": "D", "text": "L''utilisation de matériel spécifique pour l''activité."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['B']::text[], 'Une situation est complexe quand l''élève doit prendre en compte plusieurs paramètres en même temps. Durée, attitudes et matériel ne définissent pas la complexité.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2025_lycee_q50', 'exam_eps_kf_2025_lycee', 50, 'ديداكتيك التربية البدنية والرياضية', 'La distinction entre « habiletés ouvertes » et « habiletés fermées » repose principalement sur :', false, '[{"id": "A", "text": "La complexité technique du geste à réaliser."}, {"id": "B", "text": "Le caractère discret ou continu de l''action motrice."}, {"id": "C", "text": "La nature individuelle ou collective de l''activité."}, {"id": "D", "text": "Le degré de préparation physique nécessaire."}, {"id": "E", "text": "Aucune des réponses ci-dessus n''est exacte."}]'::jsonb, ARRAY['E']::text[], 'Ouverte ou fermée dépend de la stabilité de l''environnement : une habileté fermée se déroule dans un milieu prévisible, une ouverte dans un milieu changeant. Discret ou continu (B) est une autre classification. Aucune proposition n''est exacte.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2025-1515/', true, NULL)
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
