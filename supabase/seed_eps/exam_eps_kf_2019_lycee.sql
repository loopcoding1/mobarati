-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019)
-- ====================================================================
-- المصدر: ملف الحل solved/2019/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2019.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2019-1500/
--   الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 8 سؤالاً مفتوحاً؛ منها 8 verified=true (مصدر official)؛
--   2 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2019_lycee', 'eps_lycee', 2019, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019)', 'دورة شتنبر 2019', 180, 8, 'الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (8 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q1', 'exam_eps_kf_2019_lycee', 1, 'تدبير الحياة البدنية ودعامة التدريس', 'السياق: الورقة كلها حول الجري المطوّل (course en durée)، الجذع المشترك؛ اختبار ملاحظة (test d’observation) أظهر مشكلتي انتظام الإيقاع والموقف في الجري؛ نتائج VMA: G1 = 10 كم/س، G2 = 11 كم/س، G3 = 12 كم/س.
La condition physique constitue un moyen nécessaire, voire même indispensable pour la gestion de la vie physique des élèves, de ce fait, la course en durée s''avère un support d''enseignement propice pour atteindre cet objectif. (Les concepts soulignés dans l''énoncé sont « la gestion de la vie physique » et « support d''enseignement ».)
1) a - Expliquez les concepts soulignés et montrez les enjeux visés pour chaque concept.', false, '[]'::jsonb, ARRAY[]::text[], '- La gestion de la vie physique : l''appropriation de connaissances à la fois théoriques et pratiques permettant de gérer sa santé et la sécurité de ses pratiques. Le candidat doit évoquer dans sa réponse les facteurs suivants : les bonnes habitudes de vie (hygiène, sécurité) ; le bien-être physique ; l''habitus santé et la citoyenneté sportive (autonomie dans le choix de l''activité physique) ; la capacité de programmer un projet d''entraînement. (0,5 point)
- Enjeu : former un citoyen sain, physiquement bien éduqué, qui veille sur son bien-être, ayant une bonne forme et une bonne silhouette. (0,5 point)
- Support d''enseignement : ce sont les activités physiques et sportives, les pratiques physiques et sportives, des moyens didactiques et pédagogiques utilisés pour atteindre la finalité éducative. (0,5 point)
- Enjeu : en tant que moyen, permettre à l''élève de s''approprier des compétences transversales ; en tant que fin, lui permettre d''avoir une culture sportive à travers des compétences spécifiques à connotation motrice. (0,5 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q2', 'exam_eps_kf_2019_lycee', 2, 'الإسهام التربوي للجري المطوّل', '1) b - Quel est l''apport éducatif de la course en durée ?', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يوزّع المرشح جوابه على ثلاثة سجلات:

- Sur le plan des connaissances procédurales : le développement de la condition physique, la préparation du corps à l''effort physique, le développement des qualités physiques, l''amélioration du système respiratoire et cardiovasculaire.
- Sur le plan des connaissances conceptuelles : la capacité d''établir un projet d''entraînement, la connaissance des paramètres scientifiques (fréquence cardiaque, VMA, capacité et puissance aérobies, charges de travail, méthodes d''entraînement).
- Sur le plan des connaissances comportementales : les compétences méthodologiques, à savoir organiser, observer, analyser et interpréter, se concerter, s''échauffer, co-évaluer, s''investir dans les différents tests. (1 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q3', 'exam_eps_kf_2019_lycee', 3, 'الوضعية المرجعية (الجري المطوّل)', '1) c - Donnez la situation de référence permettant à l''enseignant d''évaluer la performance des élèves du tronc commun selon les OP 2007.', false, '[]'::jsonb, ARRAY[]::text[], 'Selon les OP 2007 (le barème national), la situation de référence consiste à courir 1000 mètres pour les garçons et 600 mètres pour les filles dans un minimum de temps. (1 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q4', 'exam_eps_kf_2019_lycee', 4, 'اختبارات قياس VMA', 'L''analyse des résultats du test d''observation en cycle de course en durée pour une classe du tronc commun laisse apparaître les constatations suivantes. Sur le plan comportement moteur : problème de la régularité de l''allure ; problème de l''attitude en course. Sur le plan résultats du test VMA : G1 = 10 km/h, G2 = 11 km/h, G3 = 12 km/h.
2) a - Citez et expliquez trois tests de mesure de la VMA en milieu scolaire et montrez comment cet enseignant d''EPS a pu déterminer les VMA de ses élèves en adoptant le test de demi-Cooper.', false, '[]'::jsonb, ARRAY[]::text[], 'Les trois tests de mesure de la VMA en milieu scolaire : le candidat doit citer à titre d''exemple le test demi-Cooper, le test de Cooper, le test VAMEVAL.

- Le demi-Cooper consiste à courir 6 minutes sans arrêt la plus grande distance possible. Le Cooper consiste à courir 12 minutes sans arrêt la plus grande distance possible. NB : dans ces deux tests, il faut s''échauffer au moins 15 minutes au préalable.
- Le test VAMEVAL demande un peu plus de matériel que le demi-Cooper, mais c''est celui qui donne les résultats les plus fiables. Il nécessite une piste d''athlétisme et des plots tous les 20 m. Le test est enregistré sur une bande sonore qui indique par un bip chaque fois que l''élève doit atteindre un plot. Chaque minute, la vitesse augmente de 0,5 km/h. NB : dans ce test on ne s''échauffe pas, il commence à 8 km/h ; c''est un test progressif. (1,5 point)

La façon dont cet enseignant a pu déterminer les VMA selon le test demi-Cooper : on prend la distance parcourue en 6 minutes ; en km/h, par exemple 1,1 km x 10 = 11 km/h ; ou avec le même exemple 1100 m / 100 = 11 km/h. (0,5 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, 'تحفّظ: أي اختبار أقصى يتطلب إحماءً؛ بداية VAMEVAL بـ8 كم/س هي نفسها إحماء تدريجي، فعبارة «لا إحماء» تُفهم كغياب إحماء خاص طويل، لا كغياب كلي للإحماء.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q5', 'exam_eps_kf_2019_lycee', 5, 'السلوكيات النمطية N1 وN2', '2) b - Décrire les conduites typiques (modélisation N1 et N2) des comportements moteurs suivants : la régularité de l''allure ; l''attitude en course.', false, '[]'::jsonb, ARRAY[]::text[], '- Régularité de l''allure. Niveau 1 : inconstance au niveau du rythme ; départ accéléré, allure plus lente ensuite pour récupérer, changement de rythme dans les dernières minutes, rupture dans la course, décélération en fin de course. Niveau 2 : constance sans objectif déclaré de performance ; maintien d''une allure régulière pendant quelques minutes, pas de rythme dans la course. (1 point)
- Attitude en course. Niveau 1 : foulée peu économe ; corps crispé, absence de synchronisation bras et jambes, l''élève court soit en fréquence, soit en amplitude, et alterne entre la vitesse et la marche. Niveau 2 : foulée plus ou moins optimale ; corps relâché au début de la course, corps ample dans les premières minutes, court en amplitude à la fin de la course. (1 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q6', 'exam_eps_kf_2019_lycee', 6, 'فائدة VMA والتردد القلبي', '2) c - Quelle est l''utilité de la VMA et de la fréquence cardiaque dans le processus enseignement-apprentissage du cycle de course en durée ?', false, '[]'::jsonb, ARRAY[]::text[], '- L''utilité de la VMA : c''est une vitesse de référence qui contribue à l''établissement des séances d''entraînement ; c''est un indicateur permettant de connaître les allures de course ; elle permet d''estimer la performance en course et de s''entraîner sans risque ; elle permet de former les groupes physiologiques. (1 point)
- L''utilité de la fréquence cardiaque (FC) : c''est une référence à ne pas dépasser afin d''éviter les limites physiologiques ; elle permet d''établir un plan d''évolution ; elle permet de connaître les seuils d''entraînement ; au repos, elle représente un indicateur médical ; c''est un indice de l''intensité de la charge de travail et de la récupération. (1 point)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q7', 'exam_eps_kf_2019_lycee', 7, 'مهمة تعلم: انتظام الإيقاع', 'Proposez une tâche d''apprentissage visant le travail de la régularité de l''allure en tenant compte des paramètres suivants : une piste de 200 m ; la structure de la tâche ; la VMA = 11 km/h ; 80 % de la VMA en adoptant le style intermittent fractionné ; la charge de travail : déterminez l''intensité, la durée de travail, la nature et la durée de la récupération, la quantité de travail.', false, '[]'::jsonb, ARRAY[]::text[], 'La tâche d''apprentissage visant le travail de la régularité de l''allure, en style intermittent fractionné : pour les filles, sur une piste de 200 m balisée tous les 50 m, courir 2 x 600 m à allure régulière à 80 % de la VMA ; pour les garçons, sur la même piste, courir 2 x 1000 m à allure régulière à 80 % de la VMA.

Exemple de réponse. Structure de la tâche : but, créer une allure de course régulière et la conserver, pour le groupe ayant une VMA de 11 km/h (G2).

Le candidat doit d''abord calculer la vitesse de déplacement : il convertit la VMA (à 100 %) en m/s, soit 11 x 1000 m / 3600 s = 3,05, soit environ 3 m/s. Le travail est demandé à 80 % de la VMA : 80 x 3 / 100 = 2,4 m/s. Sur 200 m : 200 / 2,4 = 83,33 s, soit environ 84 s dans chaque 200 m, qui représente le temps de passage dans chaque 200 m.

Charge de travail. Intensité : 80 % de la VMA. Durée de travail : pour les garçons, 84 s x 5 tours de 200 m (1000 m) = 420 s, soit 7 minutes ; avec deux fois 1000 m, le groupe court 14 minutes au total. Pour les filles, 84 s x 3 tours de 200 m (600 m) = 252 s, soit 4,2 minutes (4 min 12 s) ; avec deux fois 600 m, 8,4 minutes au total.
Nature et durée de la récupération : la récupération est active et complète (avec exercices d''étirement et d''assouplissement) ; la durée de récupération est égale au temps de passage de la série : garçons 7 minutes, filles 4,2 minutes.
Quantité de travail : garçons 2 x 1000 m, filles 2 x 600 m.

NB : le candidat peut répondre à cette question d''une autre manière en faisant appel à un autre procédé d''entraînement visant le même objectif, à condition de savoir déterminer les valeurs de VMA sollicitées, en respectant le temps d''effort de ce groupe pour un développement optimal de celle-ci. (4 points)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, 'المفتاح الرسمي يقرّب 11 كم/س إلى 3 م/ث فيجد 84 ثانية لكل 200 م؛ الحساب الدقيق يعطي 82 ثانية (8,8 كم/س = 2,44 م/ث)؛ المفتاح يقبل صراحة «une autre manière» متماسكة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة شتنبر 2019) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2019_lycee_q8', 'exam_eps_kf_2019_lycee', 8, 'تنظيم حصة في الجري المطوّل', '4) Proposez une modalité d''organisation d''une séance en course en durée (indiquez le statut et le rôle de l''élève) offrant aux élèves les possibilités de construire des compétences allant au-delà de l''aspect moteur de l''apprentissage.', false, '[]'::jsonb, ARRAY[]::text[], 'Le développement des compétences chez les élèves repose sur des activités qui assurent l''acquisition, le maintien ou le perfectionnement des connaissances, habiletés, attitudes et comportements.

Le candidat doit présenter une modalité d''organisation de la séance en course en durée, permettant à l''élève de jouer plusieurs rôles et d''avoir plusieurs statuts dans des situations d''apprentissage variées et diversifiées, à savoir un apprentissage par concertation (réflexion des idées, débats) ou un apprentissage vicariant (par observation). De ce fait, le candidat doit établir un dispositif d''organisation permettant à l''élève de développer ses compétences dans les domaines suivants : l''autonomie, la responsabilité, la solidarité, la coopération, le respect, l''organisation et l''aménagement, l''arbitrage (juge), l''élaboration du projet.

Dans le cadre d''une pédagogie de contrat, l''élève est amené à se prendre en charge dans un projet personnel d''amélioration de sa performance individuelle, de 0,5 km/h à 1 km/h à la fin du cycle. Cette approche lui permettra d''être plus motivé, plus engagé et plus persévérant dans l''atteinte de l''objectif fixé.

L''organisation proposée par le candidat doit mettre l''élève face à des situations lui permettant de s''approprier des connaissances conceptuelles et comportementales. Savoir : gérer un groupe, s''échauffer, juger, prendre une performance (secrétariat), aménager des ateliers, observer, remplir une fiche, analyser, critiquer, verbaliser, déterminer sa fréquence cardiaque, utiliser les moyens de mesure (décamètre, chronomètre), connaître ses limites physiologiques, connaître des paramètres et notions scientifiques garants de l''efficacité et de la sécurité, établir un projet individuel ou collectif.

Pour conclure, impliquer l''élève dans ces types de situations lui permet de construire plusieurs compétences allant au-delà de la motricité. (6 points)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2019-1500/', true, NULL)
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
