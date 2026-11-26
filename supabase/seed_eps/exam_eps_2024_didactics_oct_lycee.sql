-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024)
-- ====================================================================
-- المصدر: ملف الحل 2024/ديداكتيك التربية البدنية - دورة أكتوبر 2024.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2024-616/
--   لا يوجد مفتاح رسمي؛ الأجوبة من مفتاح mesconcours المقترح (14 بنداً موسومة ⚠ «للتحقق — إجابة مرجّحة»).
--   عدد الأسئلة: 60 (QCM، خمسة اختيارات)؛ موثّقة verified=true: 6؛ موسومة بملاحظة تحقق: 14.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee', 'eps_lycee', 2024, 'eps_didactics', 'ديداكتيك مادة التخصص', 'امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 120, 60, NULL)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (60 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q1', 'exam_eps_2024_didactics_oct_lycee', 1, 'ديداكتيك مادة التخصص', 'En EPS, créer un climat motivationnel de maîtrise c''est :', false, '[{"id": "A", "text": "Cibler des performances à atteindre à travers un parcours de progression bien établi."}, {"id": "B", "text": "Créer les conditions d''une interaction positive enseignant-enseigné au sein du groupe classe."}, {"id": "C", "text": "Individualiser les tâches, mettre en place un défi personnel et permettre aux élèves de travailler à leur rythme."}, {"id": "D", "text": "Adopter un style d''enseignement participatif où l''élève joue un rôle primordial."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Chez Ames, un climat de maîtrise valorise le progrès personnel plutôt que la comparaison sociale : tâches variées et individualisées, défis personnels, temps d''apprentissage adapté au rythme de chacun. Cibler des performances à atteindre (A) oriente au contraire vers le résultat, ce qui relève davantage d''un climat de compétition. Le style participatif (D) ne touche qu''à l''autonomie, une seule des dimensions du climat.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q2', 'exam_eps_2024_didactics_oct_lycee', 2, 'ديداكتيك مادة التخصص', 'En EPS, le besoin d''accomplissement lors des apprentissages chez l''élève résulte :', false, '[{"id": "A", "text": "De réaliser les éléments du contrat didactique qui le lie à l''enseignant."}, {"id": "B", "text": "De résoudre les problèmes des conduites motrices auxquels il se trouve confronté."}, {"id": "C", "text": "De faire la démonstration de sa compétence tout en évitant de se sentir incompétent."}, {"id": "D", "text": "De satisfaire les attentes de l''enseignant vis-à-vis de la prestation de l''élève."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Pour Nicholls, dans une situation d''accomplissement, l''élève cherche à démontrer une compétence élevée et à éviter de paraître incompétent. C''est la définition même du besoin d''accomplissement dans la théorie des buts. Satisfaire les attentes de l''enseignant (D) ou respecter le contrat didactique (A) renvoie à une motivation extrinsèque, pas à ce besoin.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q3', 'exam_eps_2024_didactics_oct_lycee', 3, 'ديداكتيك مادة التخصص', 'L''erreur dans une séance d''EPS doit être considérée comme :', false, '[{"id": "A", "text": "Une faute liée au processus d''élaboration des contenus d''enseignement."}, {"id": "B", "text": "Un feedback négatif sur le processus d''élaboration d''un apprentissage de l''élève."}, {"id": "C", "text": "Une connaissance antérieure mal placée dans le processus de construction d''un apprentissage."}, {"id": "D", "text": "Une conduite en échec dans le processus d''élaboration d''un apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Dans la lecture constructiviste (Brousseau, Astolfi), l''erreur n''est pas l''effet de l''ignorance mais d''une connaissance antérieure qui a fonctionné ailleurs et se révèle inadaptée à la nouvelle situation. Elle renseigne donc l''enseignant sur la manière dont l''élève construit son apprentissage. Parler de faute (A) ou de simple échec (D) revient au modèle qui sanctionne l''erreur au lieu de l''exploiter.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q4', 'exam_eps_2024_didactics_oct_lycee', 4, 'ديداكتيك مادة التخصص', 'Pour empêcher que les élèves se considèrent comme des éternels débutants, il faut :', false, '[{"id": "A", "text": "Leur porter une aide substantielle au cours des séances d''EPS."}, {"id": "B", "text": "Eviter qu''ils se sentent contraints, parfois parce qu''ils se sentent nuls ou parfois parce qu''ils se sentent isolés."}, {"id": "C", "text": "Les accompagner psychologiquement pour atténuer leur absentéisme en EPS."}, {"id": "D", "text": "Susciter chez eux le besoin d''autonomie, d''affiliation et éveiller chez eux le sentiment de compétence."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'La théorie de l''autodétermination (Deci et Ryan) relie une motivation durable à la satisfaction de trois besoins : autonomie, affiliation et compétence. Un élève qui se sent progresser et maître de ses choix cesse de se voir comme un débutant permanent. La proposition B évoque les mêmes besoins sous une forme négative, mais elle se limite à éviter un ressenti au lieu de construire le sentiment de compétence.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q5', 'exam_eps_2024_didactics_oct_lycee', 5, 'ديداكتيك مادة التخصص', 'Pour des élèves débutants dans l''apprentissage de la gymnastique, il est impératif de :', false, '[{"id": "A", "text": "Proposer des situations d''enseignement qui sollicitent un apprentissage par les pairs."}, {"id": "B", "text": "Faire en sorte que les opérations à effectuer et le but de la tâche soient clairement identifiés."}, {"id": "C", "text": "Privilégier la démonstration par l''enseignant pour visualiser l''image du geste à acquérir."}, {"id": "D", "text": "Proposer des situations d''apprentissage semi définies."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La proposition B décrit la tâche définie de Famose, où le but, les conditions et les opérations à effectuer sont précisés. C''est la forme recommandée pour des débutants dans une habileté fermée et à risque comme la gymnastique. Les situations semi définies (D) laissent l''élève chercher les opérations, ce qui convient à un public plus avancé, et la démonstration (C) aide l''élève sans être une condition impérative.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q6', 'exam_eps_2024_didactics_oct_lycee', 6, 'ديداكتيك مادة التخصص', 'La structure de la tâche d''apprentissage pour les habiletés ouvertes telle que le volley Ball exige :', false, '[{"id": "A", "text": "La sollicitation des ressources physiques et techniques comme la détente, l''extension, la frappe de la balle au smatch."}, {"id": "B", "text": "La sollicitation des qualités de vitesse d''exécution de concentration et d''attention."}, {"id": "C", "text": "La mise en œuvre des démarches d''appropriation des différentes techniques inhérentes à l''activité Volley Ball."}, {"id": "D", "text": "Le déplacement vers la balle et le renvoi de celle-ci d''une manière standardisée et automatique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'Une habileté ouverte se joue dans un milieu incertain : la tâche d''apprentissage doit faire varier l''environnement et solliciter la prise d''information et la prise de décision. Aucune proposition ne décrit cette structure. A et C restent centrées sur l''exécution technique, et D décrit une réponse standardisée propre aux habiletés fermées. B énumère des qualités tout aussi nécessaires dans une activité fermée. Une autre lecture retient B, en considérant que les habiletés ouvertes sollicitent d''abord la vitesse d''exécution, la concentration et l''attention.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient B, en considérant que les habiletés ouvertes sollicitent d''abord la vitesse d''exécution, la concentration et l''attention.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q7', 'exam_eps_2024_didactics_oct_lycee', 7, 'ديداكتيك مادة التخصص', 'En EPS, la différenciation pédagogique constitue :', false, '[{"id": "A", "text": "Le principe le plus fort de l''acquisition des connaissances."}, {"id": "B", "text": "La méthode la plus efficace pour permettre à tous les élèves d''apprendre."}, {"id": "C", "text": "La technique la plus répandue dans l''enseignement moderne."}, {"id": "D", "text": "La stratégie la plus rentable en classe avec des élèves de différents niveaux."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'La réponse A présente la différenciation comme un principe pédagogique, ce qu''elle est chez Przesmycki et Meirieu : une démarche générale qui adapte contenus, tâches et rythmes aux élèves, plus large qu''une méthode ou une technique particulière. C la réduit à une technique répandue. Une autre lecture retient B, parce que la différenciation vise à permettre à tous les élèves d''apprendre, ou D, qui la définit comme une stratégie adaptée aux classes de niveaux hétérogènes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient B, parce que la différenciation vise à permettre à tous les élèves d''apprendre, ou D, qui la définit comme une stratégie adaptée aux classes de niveaux hétérogènes.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q8', 'exam_eps_2024_didactics_oct_lycee', 8, 'ديداكتيك مادة التخصص', 'La méthode active c''est :', false, '[{"id": "A", "text": "Permettre à chacun d''apprendre à son rythme en aménageant le milieu et à l''enseignant d''assurer la supervision pédagogique."}, {"id": "B", "text": "Faire en sorte que l''enseignement s''appuie sur la coopération et les rapports sociaux au sein du groupe classe."}, {"id": "C", "text": "Responsabiliser l''élève en lui donnant plus d''autonomie dans la gestion de la classe."}, {"id": "D", "text": "Permettre la dévolution des tâches d''apprentissage aux profits des élèves."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La réponse B s''appuie sur l''héritage de l''Éducation nouvelle (Cousinet, Freinet), où l''activité de l''élève passe par le travail de groupe, la coopération et la vie sociale de la classe. La proposition A décrit une pédagogie individualisée, et C relève de la pédagogie institutionnelle. Une autre lecture retient D, la dévolution, qui confie à l''élève la responsabilité du problème d''apprentissage et fait de lui l''acteur de ses acquisitions.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient D, la dévolution, qui confie à l''élève la responsabilité du problème d''apprentissage et fait de lui l''acteur de ses acquisitions.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q9', 'exam_eps_2024_didactics_oct_lycee', 9, 'ديداكتيك مادة التخصص', 'Dans une vision ascendante, la transposition didactique en EPS renvoie à :', false, '[{"id": "A", "text": "La transmission du savoir savant en savoir enseigné."}, {"id": "B", "text": "La technique du traitement du contenu spécifique utilisé par l''enseignante."}, {"id": "C", "text": "La régulation des apprentissages des élèves confrontés à une tâche."}, {"id": "D", "text": "La mise en place d''un corpus de savoir basé sur l''expérience professionnelle de l''enseignant."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La vision descendante (Chevallard) va du savoir savant au savoir enseigné, ce que décrit A. La vision ascendante part de ce qui se passe en classe : les conduites des élèves face à la tâche et la régulation de leurs apprentissages servent à construire les contenus. Une autre lecture retient D, en considérant que la vision ascendante bâtit les contenus à partir de l''expérience professionnelle de l''enseignant.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient D, en considérant que la vision ascendante bâtit les contenus à partir de l''expérience professionnelle de l''enseignant.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q10', 'exam_eps_2024_didactics_oct_lycee', 10, 'ديداكتيك مادة التخصص', 'Parmi les aspects principaux communs aux méthodes actives, on peut citer :', false, '[{"id": "A", "text": "Le formé reçoit de l''information transmise par l''enseignant pour sécuriser l''acquisition."}, {"id": "B", "text": "Le formé n''apprend que par son activité propre en se basant sur son autorégulation."}, {"id": "C", "text": "Le formé reçoit la connaissance et l''adapte en fonction de sa représentation."}, {"id": "D", "text": "Le formé prend en considération les feedbacks de son action et construit l''action future."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La proposition B reprend le principe fondateur des méthodes actives (Mucchielli) : le formé apprend par sa propre activité et par l''autorégulation de ses essais. A et C décrivent un formé qui reçoit un savoir transmis, ce qui relève de la méthode expositive. D décrit une régulation par feedback, présente dans tout apprentissage moteur, sans être un trait distinctif des méthodes actives.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q11', 'exam_eps_2024_didactics_oct_lycee', 11, 'ديداكتيك مادة التخصص', 'En EPS, la dialectique logique de l''activité et logique de l''élève suppose de :', false, '[{"id": "A", "text": "Mettre en place des situations pédagogiques adaptées aux élèves pour leur faciliter l''accès à l''apprentissage."}, {"id": "B", "text": "Elaborer des niveaux d''habiletés pour déterminer ce qui doit être enseigné et évalué par l''enseignant."}, {"id": "C", "text": "Définir avec précision la logique de l''activité enseignée et la logique du comportement de l''élève avant de commencer l''enseignement."}, {"id": "D", "text": "Concevoir un plan didactique approprié pour répondre aux besoins des élèves en matière d''apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Croiser la logique interne de l''activité et la logique de l''élève sert à repérer des niveaux d''habileté, des étapes de conduite qui disent quoi enseigner et quoi évaluer à chaque palier. C''est le produit propre de cette dialectique. D décrit une planification générale, et C fige les deux logiques avant l''enseignement alors que la dialectique les fait dialoguer en continu. Une autre lecture retient A, qui voit dans cette dialectique la construction de situations adaptées aux ressources des élèves, sans perdre le sens de l''activité.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient A, qui voit dans cette dialectique la construction de situations adaptées aux ressources des élèves, sans perdre le sens de l''activité.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q12', 'exam_eps_2024_didactics_oct_lycee', 12, 'ديداكتيك مادة التخصص', 'En EPS, les feedbacks sont dits inhérents à la tâche si :', false, '[{"id": "A", "text": "Les feedbacks se focalisent sur la tâche à effectuer pour aider l''élève à réajuster sa prestation."}, {"id": "B", "text": "Les feedbacks fournis sont centrés sur la prestation de l''élève par rapport à ses difficultés."}, {"id": "C", "text": "Les feedbacks sont intrinsèques en rapport avec le comportement moteur de l''élève lui-même."}, {"id": "D", "text": "Les feedbacks proviennent de l''observation de l''enseignant pour qu''il joue pleinement son rôle."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Un feedback inhérent à la tâche est l''information que l''élève tire lui-même de son mouvement (sensations, trajectoire, résultat visible) : c''est un feedback intrinsèque. Les feedbacks venus de l''enseignant (A, B, D) sont extrinsèques, ou augmentés, quel que soit leur contenu.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q13', 'exam_eps_2024_didactics_oct_lycee', 13, 'ديداكتيك مادة التخصص', 'La manipulation des variables de complexification pour la tâche à dominante énergétique suppose :', false, '[{"id": "A", "text": "La prise en compte des facteurs en relation étroite avec la distance, le temps et l''adversité."}, {"id": "B", "text": "La détermination des qualités physiologiques des élèves et la capacité de l''enseignant de les pousser à les mobiliser."}, {"id": "C", "text": "La prise en compte de la charge de travail en volume et en intensité pour un dosage optimal."}, {"id": "D", "text": "La création des conditions pour l''augmentation du temps d''engagement moteur de l''élève dans la tâche d''apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Dans une tâche à dominante énergétique, on rend la tâche plus exigeante en jouant sur la charge : volume (durée, distance totale, répétitions) et intensité (vitesse, récupération). Le dosage de ces deux paramètres est la variable de complexification. Les facteurs de distance, de temps et d''adversité (A) relèvent surtout des tâches à dominante informationnelle ou décisionnelle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q14', 'exam_eps_2024_didactics_oct_lycee', 14, 'ديداكتيك مادة التخصص', 'L''apprentissage technique répond à un besoin authentique permettant de surmonter un problème réel surtout lié :', false, '[{"id": "A", "text": "Aux conditions dans lesquelles se déroule l''acte d''enseigner apprendre."}, {"id": "B", "text": "Aux représentations que se font les élèves de l''activité."}, {"id": "C", "text": "Aux attentes de l''enseignant par rapport à ses objectifs d''apprentissage."}, {"id": "D", "text": "Aux ambitions des élèves par rapport à leurs chemins du progrès."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Une technique n''a de sens pour l''élève que si elle répond à un problème qu''il perçoit lui-même, et cette perception dépend de l''idée qu''il se fait de l''activité. Partir de ses représentations transforme le geste en solution à un vrai problème. Les attentes de l''enseignant (C) rendent le besoin extérieur à l''élève, donc non authentique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q15', 'exam_eps_2024_didactics_oct_lycee', 15, 'ديداكتيك مادة التخصص', 'En sport collectif, l''enseignement de la tactique individuelle vise à développer chez les élèves :', false, '[{"id": "A", "text": "Le pouvoir de participer au projet collectif de l''équipe."}, {"id": "B", "text": "La solution motrice en rapport avec le choix des réponses et le moment de leurs exécutions."}, {"id": "C", "text": "La capacité d''agir vite lors d''une combinaison tactique."}, {"id": "D", "text": "Le pouvoir d''être efficace lors d''une stratégie collective."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La tactique individuelle porte sur les décisions du joueur face à la situation : quelle réponse choisir et à quel moment l''exécuter. Les propositions A, C et D parlent de combinaison, de projet ou de stratégie collective, qui relèvent de la tactique collective.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q16', 'exam_eps_2024_didactics_oct_lycee', 16, 'ديداكتيك مادة التخصص', 'Pour mettre en place des évaluations pragmatiques et objectives en EPS, il faut :', false, '[{"id": "A", "text": "Elaborer des grilles d''évaluation à l''échelle académique."}, {"id": "B", "text": "Mettre en place un dispositif d''évaluation à l''échelle de l''établissement."}, {"id": "C", "text": "Adapter les évaluations en fonction du niveau de chaque groupe classe."}, {"id": "D", "text": "Mettre en place un dispositif d''évaluation à l''échelle du bassin scolaire."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Les orientations pédagogiques confient au conseil d''enseignement l''élaboration d''un dispositif d''évaluation propre à l''établissement. Il est pragmatique parce qu''il tient compte des installations et des élèves réels, et objectif parce que tous les enseignants appliquent les mêmes critères. Adapter l''évaluation à chaque classe (C) reste local mais casse l''équité entre classes, et l''échelle académique ou du bassin (A, D) s''éloigne des conditions concrètes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q17', 'exam_eps_2024_didactics_oct_lycee', 17, 'ديداكتيك مادة التخصص', 'En EPS, l''enseignement direct se base sur la méthode :', false, '[{"id": "A", "text": "Déductive avec des démarches coopératives."}, {"id": "B", "text": "Transmissive des actions motrices significatives mais aussi avec une certaine adaptabilité corporelle de l''élève."}, {"id": "C", "text": "Démonstrative avec des situations de résolution de problème."}, {"id": "D", "text": "Active où l''élève construit lui-même son savoir."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'L''enseignement direct est d''abord transmissif : l''enseignant présente le modèle d''action et l''élève le reproduit, en l''ajustant à ses propres ressources. La démarche coopérative de A contredit cette conduite directive, tout comme la résolution de problème dans C et la construction autonome du savoir dans D.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q18', 'exam_eps_2024_didactics_oct_lycee', 18, 'ديداكتيك مادة التخصص', 'En EPS, l''apprentissage de la technique est considéré comme :', false, '[{"id": "A", "text": "Des transformations motrices significatives mais aussi une adaptabilité corporelle."}, {"id": "B", "text": "Un processus et une activité adaptative de recherche de solution qui visent à répondre aux exigences de la tâche."}, {"id": "C", "text": "Un instrument moteur pour être efficient lors de l''exécution d''une habileté sportive."}, {"id": "D", "text": "Une prouesse physique caractérisée par la beauté du geste à réaliser."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Dans une approche constructiviste, apprendre une technique est un processus actif : l''élève cherche une solution aux exigences de la tâche, et la technique se construit au fil de cette recherche. La proposition A décrit les effets de tout apprentissage moteur plutôt que la nature de l''apprentissage technique, C réduit la technique à un instrument d''exécution et D à une prouesse esthétique. Une autre lecture retient A, qui définit cet apprentissage par les transformations motrices significatives et l''adaptabilité corporelle qu''il produit.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient A, qui définit cet apprentissage par les transformations motrices significatives et l''adaptabilité corporelle qu''il produit.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q19', 'exam_eps_2024_didactics_oct_lycee', 19, 'ديداكتيك مادة التخصص', 'En didactique de l''EPS :', false, '[{"id": "A", "text": "L''erreur démontre les sources de blocage de l''élève."}, {"id": "B", "text": "L''erreur peut être la source de la démotivation de l''élève par rapport aux contenus proposés par l''enseignant."}, {"id": "C", "text": "L''erreur met en échec l''élève parce qu''il n''a pas respecté les consignes de déroulement de la tâche."}, {"id": "D", "text": "L''erreur est un moyen d''accès privilégié aux représentations de l''élève."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'En didactique, l''erreur n''est pas une faute à sanctionner : elle révèle la manière dont l''élève comprend la tâche, donc ses représentations, et indique sur quoi intervenir. Les propositions B et C gardent une vision négative de l''erreur (démotivation, non-respect des consignes), et A n''en retient que l''aspect de blocage.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q20', 'exam_eps_2024_didactics_oct_lycee', 20, 'ديداكتيك مادة التخصص', 'La volonté institutionnelle de concevoir des curriculums en EPS a conduit à un foisonnement des :', false, '[{"id": "A", "text": "Unités d''apprentissage selon des périodes bien établies."}, {"id": "B", "text": "Projets pédagogiques des établissements scolaires."}, {"id": "C", "text": "Productions didactiques élaborées par les enseignants."}, {"id": "D", "text": "Démarches didactiques et pédagogiques à mettre en œuvre."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Quand l''institution a demandé de penser l''EPS en curriculums (compétences, contenus, étapes), les enseignants et les équipes ont multiplié les productions didactiques : référentiels, fiches de contenus, outils d''évaluation par activité. Les projets d''établissement (B) existent, mais leur multiplication tient à la logique du projet, pas à la conception des curriculums.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q21', 'exam_eps_2024_didactics_oct_lycee', 21, 'ديداكتيك مادة التخصص', 'L''analyse didactique des APS qui relèvent du modèle interne concerne celles qui :', false, '[{"id": "A", "text": "Présentent des difficultés biomécaniques difficilement gérables."}, {"id": "B", "text": "Sollicitent des ressources bioénergétiques importantes."}, {"id": "C", "text": "Disposent de mouvements spatialement orientés et finalisés."}, {"id": "D", "text": "Exigent un grand nombre de répétitions dans leurs apprentissages."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Les APS à modèle interne sont celles où l''élève doit produire une forme de mouvement définie, orientée dans l''espace et tournée vers un but précis, comme en gymnastique ou en acrobatie. L''analyse porte alors sur l''organisation du geste lui-même. Les difficultés biomécaniques, la charge énergétique ou le nombre de répétitions existent dans beaucoup d''APS et ne définissent pas ce modèle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q22', 'exam_eps_2024_didactics_oct_lycee', 22, 'ديداكتيك مادة التخصص', 'Maîtriser un rapport humain d''action-réaction signifie que l''élève est confronté à une activité :', false, '[{"id": "A", "text": "Saut en longueur qui suppose une action-réaction au sol."}, {"id": "B", "text": "Gymnique qui exige des actions-réactions, des percussions, pulsions et antépulsions."}, {"id": "C", "text": "De sport de combat qui suppose des actions-réactions face à l''adversaire."}, {"id": "D", "text": "De Volley Ball qui exige des actions-réactions adaptées en fonction des situations."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Le rapport humain d''action-réaction désigne l''affrontement direct d''un adversaire, où chaque action de l''un appelle aussitôt la réaction de l''autre : c''est la logique du sport de combat. Au volley-ball (D), l''opposition passe par la balle et le filet et reste collective. Le saut en longueur et la gymnastique ne mettent l''élève face à personne.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q23', 'exam_eps_2024_didactics_oct_lycee', 23, 'ديداكتيك مادة التخصص', 'L''activité de guidage de l''enseignant doit permettre de faire émerger :', false, '[{"id": "A", "text": "Les solutions appropriées aux problèmes moteurs rencontrés."}, {"id": "B", "text": "Les feedbacks appropriés aux prestations des élèves confrontés aux tâches d''apprentissage."}, {"id": "C", "text": "L''émergence des règles d''action efficaces."}, {"id": "D", "text": "L''apparition des obstacles qui s''opposent à l''apprentissage de l''élève."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Guider, c''est intervenir pendant l''action en donnant des retours ajustés à ce que chaque élève produit : ces feedbacks sont l''outil central du guidage. Les obstacles (D) viennent de la conception de la tâche, pas du guidage. Une autre lecture retient A, parce que le guidage vise à aider l''élève à trouver lui-même les solutions aux problèmes moteurs posés par la tâche.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient A, parce que le guidage vise à aider l''élève à trouver lui-même les solutions aux problèmes moteurs posés par la tâche.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q24', 'exam_eps_2024_didactics_oct_lycee', 24, 'ديداكتيك مادة التخصص', 'En EPS, le processus enseigner précise que :', false, '[{"id": "A", "text": "Le véritable souci de l''enseignant est sa focalisation sur la situation pédagogique pour permettre aux élèves d''apprendre."}, {"id": "B", "text": "La principale préoccupation de l''enseignant est l''organisation de son enseignement."}, {"id": "C", "text": "La pédagogie mise en place par l''enseignant joue un rôle capital dans la transmission du savoir."}, {"id": "D", "text": "L''intervention de l''enseignant joue un rôle capital pour faciliter les apprentissages chez les élèves."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Dans le triangle pédagogique de Houssaye, le processus « enseigner » privilégie l''axe enseignant-savoir : l''enseignant se concentre sur la structuration et l''organisation de ce qu''il enseigne. Faciliter les apprentissages des élèves (D) ou les placer en situation d''apprendre (A) relève du processus « apprendre », et la relation pédagogique du processus « former ».', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q25', 'exam_eps_2024_didactics_oct_lycee', 25, 'ديداكتيك مادة التخصص', 'En EPS, face à une situation problème :', false, '[{"id": "A", "text": "L''obstacle n''est pas préalablement bien identifié par l''enseignant et les procédures de résolution du problème ne sont pas connues."}, {"id": "B", "text": "Les procédures de résolution du problème sont bien identifiées, mais l''obstacle reste à découvrir par l''action de l''élève."}, {"id": "C", "text": "Les représentations des élèves interagissent positivement avec les contenus pour la mise œuvre des procédures et le déplacement de l''obstacle à franchir."}, {"id": "D", "text": "L''obstacle est préalablement bien identifié par l''enseignant et les procédures de résolutions du problème ne sont pas connues."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Une situation problème est construite autour d''un obstacle que l''enseignant a repéré à l''avance (l''objectif-obstacle), alors que l''élève ne connaît pas encore la procédure qui permet de le franchir : c''est en la cherchant qu''il apprend. Si l''obstacle n''est pas identifié (A), la situation n''est plus pilotée ; si la procédure est déjà connue (B), il n''y a plus de problème à résoudre.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q26', 'exam_eps_2024_didactics_oct_lycee', 26, 'ديداكتيك مادة التخصص', 'En athlétisme, les élèves de la troisième année collégiale doivent acquérir :', false, '[{"id": "A", "text": "Un enchaînement d''actions simples visant la continuité des trajets moteurs, création d''énergie par la recherche et l''utilisation de mise en tension musculaire (ex : gainage, extension,)."}, {"id": "B", "text": "Un gainage des différentes charnières (bassin et ligne d''épaules), création et dosage de l''énergie produite et synchronisation des actions motrices."}, {"id": "C", "text": "Un alignement des différents segments pour une utilisation optimale de l''énergie créée."}, {"id": "D", "text": "Une concentration avant la mise en action et pendant l''action des différentes actions motrices."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'En fin de cycle collégial, le programme attend que l''élève maîtrise le gainage des charnières, dose l''énergie qu''il produit et synchronise ses actions motrices. L''enchaînement d''actions simples et la simple mise en tension musculaire (A) correspondent aux premiers niveaux du collège. La concentration (D) est une ressource utile mais ne constitue pas le contenu propre à ce niveau.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q27', 'exam_eps_2024_didactics_oct_lycee', 27, 'ديداكتيك مادة التخصص', 'En course de haies, le contenu proposé pour des élèves du tronc commun consiste à :', false, '[{"id": "A", "text": "Arriver le plus vite possible sur le premier obstacle et le franchir de manière optimale."}, {"id": "B", "text": "Réaliser une impulsion dynamique avant l''obstacle et reprise active de l''appui derrière l''obstacle."}, {"id": "C", "text": "Adapter sa course en fonction des intervalles, en adoptant la cadence trois foulées quatre appuis."}, {"id": "D", "text": "Conserver son équilibre et sa vitesse et utiliser les repères visuels pour mieux réussir."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Au tronc commun, l''élève a déjà construit au collège le rythme de trois foulées entre les haies ; le contenu porte désormais sur la qualité du franchissement, avec une impulsion dynamique avant la haie et une reprise d''appui active derrière elle pour ne pas perdre de vitesse. Conserver équilibre et vitesse avec des repères visuels (D) relève d''un niveau d''initiation. Une autre lecture retient C, qui place au centre du contenu l''adaptation de la course aux intervalles, avec la cadence de trois foulées et quatre appuis.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient C, qui place au centre du contenu l''adaptation de la course aux intervalles, avec la cadence de trois foulées et quatre appuis.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q28', 'exam_eps_2024_didactics_oct_lycee', 28, 'ديداكتيك مادة التخصص', 'En EPS, la meilleure façon d''apprendre c''est de :', false, '[{"id": "A", "text": "Renouveler les informations anciennes par de nouvelles informations pour les adapter à la nouvelle situation."}, {"id": "B", "text": "Empiler des informations nouvelles sur celles acquises précédemment vue les exigences du contexte."}, {"id": "C", "text": "Transformer les informations anciennes au regard de celles assimilées antérieurement."}, {"id": "D", "text": "Juxtaposer les informations et faire un tri pour sélectionner les meilleures."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Dans une conception constructiviste, apprendre consiste à remanier ce que l''on sait déjà à partir d''informations nouvelles, afin de s''adapter à une situation inédite. Empiler (B) ou juxtaposer (D) des informations décrit une accumulation sans restructuration. L''option C fait porter la transformation sur les seules connaissances anciennes, sans apport nouveau. Une autre lecture retient C, qui met l''accent sur la transformation des connaissances antérieures, au cœur de la conception constructiviste.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient C, qui met l''accent sur la transformation des connaissances antérieures, au cœur de la conception constructiviste.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q29', 'exam_eps_2024_didactics_oct_lycee', 29, 'ديداكتيك مادة التخصص', 'Didactiser la technique sportive en EPS, c''est la considérer comme :', false, '[{"id": "A", "text": "Une habileté motrice caractérisée par le contrôle harmonieux du geste sportif."}, {"id": "B", "text": "Une prouesse technique et une action remarquable dans la réalisation d''une action sportive."}, {"id": "C", "text": "Un processus, une activité adaptative de recherche de solution et une création."}, {"id": "D", "text": "Une démonstration technique sans faille par rapport à l''image du geste idéal."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Didactiser la technique, c''est cesser de la voir comme un modèle à reproduire pour la traiter comme une solution que l''élève construit face à un problème moteur, en s''adaptant et en inventant. Les options A, B et D décrivent la technique comme un produit fini (geste harmonieux, prouesse, geste idéal), ce qui renvoie à un apprentissage par imitation du modèle expert.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q30', 'exam_eps_2024_didactics_oct_lycee', 30, 'ديداكتيك مادة التخصص', 'La trilogie à prendre en considération par l''enseignant d''EPS lors d''un apprentissage moteur est :', false, '[{"id": "A", "text": "Accommodation- équilibration- assimilation"}, {"id": "B", "text": "Déséquilibre -représentation- coordination"}, {"id": "C", "text": "Représentation- déséquilibre- coordination"}, {"id": "D", "text": "Assimilation- accommodation- équilibration"}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'L''enseignant part des représentations que l''élève se fait de la tâche, crée un déséquilibre en le confrontant à un problème que ces représentations ne suffisent pas à résoudre, puis l''aide à coordonner de nouvelles réponses motrices. L''option B garde les mêmes termes dans un ordre incohérent, puisqu''on ne déstabilise pas une représentation avant de l''avoir identifiée. Une autre lecture retient D, la trilogie piagétienne assimilation, accommodation, équilibration, donnée ici dans son ordre canonique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient D, la trilogie piagétienne assimilation, accommodation, équilibration, donnée ici dans son ordre canonique.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q31', 'exam_eps_2024_didactics_oct_lycee', 31, 'ديداكتيك مادة التخصص', 'En EPS, les représentations des élèves sont considérées comme :', false, '[{"id": "A", "text": "Des obstacles à l''apprentissage."}, {"id": "B", "text": "Du matériel didactique."}, {"id": "C", "text": "Des expériences individuelles propres à chaque élève."}, {"id": "D", "text": "Des modes d''intégration du savoir par les élèves."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'En didactique, les représentations sont les conceptions préalables que l''élève apporte avant l''apprentissage. Elles font obstacle au savoir nouveau tant qu''elles ne sont pas identifiées puis transformées, d''où la notion d''obstacle (Bachelard, Astolfi). Elles sont certes propres à chaque élève, mais c''est leur rôle d''obstacle à dépasser que retient la didactique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q32', 'exam_eps_2024_didactics_oct_lycee', 32, 'ديداكتيك مادة التخصص', 'Le curriculum réel fait allusion au :', false, '[{"id": "A", "text": "Savoir à enseigner."}, {"id": "B", "text": "Savoir enseigné."}, {"id": "C", "text": "Savoir savant."}, {"id": "D", "text": "Savoir subissant l''analyse et le traitement didactique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Le curriculum réel désigne ce qui se passe effectivement en classe, donc le savoir enseigné. Le savoir à enseigner correspond au curriculum formel ou prescrit par les programmes, et le savoir qui subit le traitement didactique renvoie à la transposition didactique, pas au curriculum réel.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q33', 'exam_eps_2024_didactics_oct_lycee', 33, 'ديداكتيك مادة التخصص', 'Un joueur capable d''anticiper et d''enchaîner des actions décisives et coordonnées avec ses partenaires est un :', false, '[{"id": "A", "text": "Joueur ressource."}, {"id": "B", "text": "Joueur engagé et réactif."}, {"id": "C", "text": "Joueur intermittent."}, {"id": "D", "text": "Joueur habile sur le plan technique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Dans les niveaux de compétence en sports collectifs, le joueur ressource est celui qui anticipe et enchaîne des actions décisives en coordination avec ses partenaires, au service du projet collectif. Le joueur engagé et réactif correspond à un niveau antérieur, où l''élève réagit aux situations sans encore les anticiper.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q34', 'exam_eps_2024_didactics_oct_lycee', 34, 'ديداكتيك مادة التخصص', 'Pour favoriser l''apprentissage de la gymnastique chez les débutants, l''enseignant doit recourir à :', false, '[{"id": "A", "text": "L''explication orale comme le moyen le plus adéquat pour débuter l''apprentissage."}, {"id": "B", "text": "La démonstration pour aider l''élève à visualiser le geste gymnique et le reproduire."}, {"id": "C", "text": "La séquence vidéo pour expliquer aux élèves sur écran les composantes du geste à travailler."}, {"id": "D", "text": "L''aménagement du milieu pour réaliser des actions motrices appropriées."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Chez le débutant, l''aménagement du milieu (plans inclinés, tapis, modules) provoque directement les actions motrices recherchées et sécurise les premières expériences, ce qui correspond à l''approche par situations des orientations pédagogiques. La démonstration aide à se représenter le geste, mais elle pousse à reproduire un modèle que le débutant ne peut pas encore réaliser.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q35', 'exam_eps_2024_didactics_oct_lycee', 35, 'ديداكتيك مادة التخصص', 'L''enseignement des invariants en athlétisme suppose la mise en place :', false, '[{"id": "A", "text": "Des contenus vidéos qui analysent et visualisent la biomécanique des gestes à travailler."}, {"id": "B", "text": "Des contenus transversaux en fonction des activités étudiées."}, {"id": "C", "text": "Des contenus athlétiques séquentiels à traiter de manière cyclique."}, {"id": "D", "text": "Des contenus spécifiques par rapport à une spécialité athlétique particulière."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Un invariant est un principe commun à plusieurs épreuves, par exemple la conservation de la vitesse ou la création d''appuis efficaces dans les courses, les sauts et les lancers. L''enseigner suppose donc des contenus transversaux aux activités étudiées. Des contenus propres à une seule spécialité athlétique vont à l''inverse de cette logique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q36', 'exam_eps_2024_didactics_oct_lycee', 36, 'ديداكتيك مادة التخصص', 'Le circuit-training est une méthode d''apprentissage qui consiste à :', false, '[{"id": "A", "text": "Réaliser des exercices identiques exécutés de manières séparées avec une récupération complète."}, {"id": "B", "text": "Réaliser plusieurs exercices les uns après les autres, avec très peu de temps de récupération."}, {"id": "C", "text": "Réaliser des exercices en se focalisant sur des groupes musculaires bien particuliers."}, {"id": "D", "text": "Réaliser des exercices en se focalisant sur la tâche à réaliser et les consignes à respecter."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Le circuit-training enchaîne des ateliers différents, organisés en stations, avec une récupération très courte entre eux. Il sollicite successivement plusieurs groupes musculaires, ce qui écarte l''idée d''un travail focalisé sur quelques groupes précis, et la récupération complète entre exercices identiques décrit un travail par répétitions séparées.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q37', 'exam_eps_2024_didactics_oct_lycee', 37, 'ديداكتيك مادة التخصص', 'Le développement optimal de la consommation maximale d''oxygène comme contenu d''enseignement apprentissage est préconisé pour la tranche d''âge suivante :', false, '[{"id": "A", "text": "13 à 18 ans."}, {"id": "B", "text": "15 à 17 ans."}, {"id": "C", "text": "12 à 15 ans."}, {"id": "D", "text": "14 à 16 ans."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La période pubertaire, autour de 12 à 15 ans, est décrite comme la phase la plus favorable au développement de la puissance aérobie (Weineck), du fait de la croissance du cœur et du volume sanguin. Les tranches qui commencent à 14 ou 15 ans démarrent après l''ouverture de cette fenêtre et ne correspondent pas à la période optimale retenue.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q38', 'exam_eps_2024_didactics_oct_lycee', 38, 'ديداكتيك مادة التخصص', 'Chercher l''efficience motrice individuelle en EPS c''est :', false, '[{"id": "A", "text": "Chercher le meilleur rapport entre le travail mécanique produit et l''énergie consommée."}, {"id": "B", "text": "Réaliser une tâche avec le maximum d''efficacité et le minimum d''énergie."}, {"id": "C", "text": "Produire des gestes sportifs sur le plan individuel avec un très haut degré de technicité en fonction de critères d''observation bien établis."}, {"id": "D", "text": "Réaliser la meilleure performance individuelle dans le cadre de la pratique d''une APS d''expression corporelle"}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'L''efficience se définit comme un rapport : le travail mécanique produit, rapporté à l''énergie consommée pour le produire. La formule « maximum d''efficacité, minimum d''énergie » en donne l''idée générale, mais elle juxtapose deux exigences au lieu de poser ce rapport. La technicité et la performance relèvent de l''efficacité, pas de l''efficience.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q39', 'exam_eps_2024_didactics_oct_lycee', 39, 'ديداكتيك مادة التخصص', 'En EPS, l''élaboration d''un contenu visant le développement des qualités foncières avec des élèves du cycle qualifiant renvoie à :', false, '[{"id": "A", "text": "La mise en place des méthodes et techniques pour un développement musculaire harmonieux de l''élève."}, {"id": "B", "text": "L''exécution du protocole d''entrainement destiné aux élèves retenus en ASS."}, {"id": "C", "text": "La mise en place d''un plan d''entrainement auquel se greffera un travail qualitatif."}, {"id": "D", "text": "L''exécution d''une partie du planning d''entrainement annuel."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Au cycle qualifiant, le développement des qualités foncières (endurance, force, vitesse, souplesse) se construit à travers un plan d''entraînement que l''élève apprend à concevoir et à conduire, enrichi d''un travail qualitatif sur la technique et la gestion de l''effort. Le développement musculaire harmonieux n''en couvre qu''un aspect, et le protocole de l''ASS concerne une minorité d''élèves sélectionnés, pas le cours d''EPS.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q40', 'exam_eps_2024_didactics_oct_lycee', 40, 'ديداكتيك مادة التخصص', 'Selon la conception biologique, l''apprentissage est considéré comme :', false, '[{"id": "A", "text": "Changement de comportement de manière durable et significative."}, {"id": "B", "text": "Acquisition de pouvoirs moteurs nouveaux articulant savoir-faire et savoir sur le faire."}, {"id": "C", "text": "Adaptation personnelle dans un contexte culturel."}, {"id": "D", "text": "Apprentissage et désapprentissage pour rompre avec ce qui nous bloque."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La conception biologique aborde l''apprentissage comme une adaptation de l''individu à son milieu, sur le modèle de l''équilibration de Piaget. Le changement durable et significatif du comportement est la définition générale retenue par la psychologie, et l''acquisition de pouvoirs moteurs articulant savoir-faire et savoir sur le faire reprend la définition propre à l''EPS.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q41', 'exam_eps_2024_didactics_oct_lycee', 41, 'ديداكتيك مادة التخصص', 'En EPS, la rétroaction constructive a pour effet de :', false, '[{"id": "A", "text": "Souligner les forces du travail qui entraînent des répercussions non négligeables sur le plan affectif et favorisent une meilleure appropriation cognitive."}, {"id": "B", "text": "Susciter l''approfondissement des connaissances et motiver à relever des défis plus exigeants."}, {"id": "C", "text": "Se concentrer sur les points forts à consolider et les points faibles à éviter pour progresser."}, {"id": "D", "text": "Mettre l''accent sur les difficultés d''apprentissage de l''apprenant et lui apporter les remédiations nécessaires."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Une rétroaction constructive ne se limite pas à juger la prestation : elle relance l''élève, l''amène à approfondir ce qu''il sait et l''engage vers des tâches plus exigeantes. C et D réduisent la rétroaction à un bilan des points forts et faibles ou à la seule remédiation des difficultés. A décrit l''effet de la valorisation des réussites, qui n''est qu''une composante de la rétroaction.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q42', 'exam_eps_2024_didactics_oct_lycee', 42, 'ديداكتيك مادة التخصص', 'Les indices pris en compte par l''enseignant pour réguler sa propre pratique enseignante sont :', false, '[{"id": "A", "text": "La motivation des élèves par rapport au contenu d''apprentissage proposé par l''enseignant et les modalités d''action des élèves."}, {"id": "B", "text": "La verbalisation des élèves vis-à-vis de leurs prestations motrices et les indices de leur progrès dans l''acquisition des critères de réalisation."}, {"id": "C", "text": "Les difficultés observées à travers les réalisations et les indices d''implication des élèves dans les tâches proposées par l''enseignant."}, {"id": "D", "text": "Les comportements relevant des activités des élèves, leurs degrés de réussite dans la tâche et les indicateurs révélant de l''activité cognitive."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Pour réguler son enseignement, l''enseignant lit l''activité réelle des élèves : ce qu''ils font, leur taux de réussite dans la tâche et les signes de leur activité cognitive. Ces trois indices lui disent si la tâche est bien calibrée. A, B et C ne retiennent qu''un aspect partiel (motivation, verbalisation ou difficultés) et laissent de côté le degré de réussite.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q43', 'exam_eps_2024_didactics_oct_lycee', 43, 'ديداكتيك مادة التخصص', 'L''outil d''observation à construire par l''élève permet :', false, '[{"id": "A", "text": "D''atteindre rapidement les critères de réussite recherchés."}, {"id": "B", "text": "De développer l''observation individuelle et la prise d''initiative."}, {"id": "C", "text": "De justifier une modification des paramètres d''apprentissage."}, {"id": "D", "text": "De participer à prendre en charge son propre enseignement."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Quand l''élève construit lui-même son outil d''observation, il recueille des données sur sa prestation et peut s''appuyer dessus pour justifier un changement des paramètres de la tâche (distance, vitesse, contrainte). A promet un résultat rapide qu''aucun outil ne garantit. D parle de prendre en charge son « enseignement », alors que l''outil sert l''apprentissage de l''élève, pas la conduite de la leçon.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q44', 'exam_eps_2024_didactics_oct_lycee', 44, 'ديداكتيك مادة التخصص', 'En EPS, la démarche d''élaboration d''une grille d''évaluation repose sur les éléments suivants :', false, '[{"id": "A", "text": "La détermination des observables en décortiquant l''élément technique à observer en fonction de ses composantes."}, {"id": "B", "text": "La spécification des critères quantitatifs et qualitatifs, l''assemblage de la grille, la validation et la généralisation de celle-ci."}, {"id": "C", "text": "Le choix des critères, des indicateurs, des échelles d''appréciation, l''assemblage et l''expérimentation."}, {"id": "D", "text": "Le choix des observables à partir des éléments du contenu du cycle à travailler en relation avec la situation de référence."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Une grille d''évaluation se construit par étapes : choisir les critères, les traduire en indicateurs observables, fixer les échelles d''appréciation, assembler la grille puis la tester sur le terrain. B s''en approche mais parle de « généralisation », étape qui ne fait pas partie de la construction de l''outil. A et D décrivent le choix des observables, qui n''est que la première étape.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q45', 'exam_eps_2024_didactics_oct_lycee', 45, 'ديداكتيك مادة التخصص', 'En EPS, la co-observation vise l''émergence :', false, '[{"id": "A", "text": "Des apprentissages moteurs cognitifs et psycho-affectifs."}, {"id": "B", "text": "Des apprentissages essentiellement concentrés sur les connaissances déclaratives."}, {"id": "C", "text": "Des apprentissages métacognitifs, réflexifs, sociaux et civiques."}, {"id": "D", "text": "Des apprentissages visant la verbalisation et le côté comportementale."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'En co-observation, l''élève observe un camarade, lui renvoie une information et confronte ce qu''il voit à ses propres critères. Il réfléchit sur l''action (métacognition), assume un rôle social et apprend à respecter l''autre. B est trop restrictif, et D ramène la co-observation à la seule verbalisation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q46', 'exam_eps_2024_didactics_oct_lycee', 46, 'ديداكتيك مادة التخصص', 'Selon Gréhaigne, on peut regrouper les caractéristiques des jeux sportifs collectifs en trois notions principales :', false, '[{"id": "A", "text": "Une cible à attaquer, des adversaires à contourner et des coéquipiers avec lesquels il faut coopérer."}, {"id": "B", "text": "Une logique interne à respecter, des problèmes fondamentaux à résoudre et une tactique à adopter."}, {"id": "C", "text": "Un rapport de forces, un choix d''habilités sensori-motrices et des stratégies individuelles et collectives."}, {"id": "D", "text": "Une cascade de problèmes à résoudre, des schémas tactiques à opérationnaliser et des actions offensives à finaliser."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Gréhaigne caractérise les jeux sportifs collectifs par un rapport de forces entre deux équipes, un choix d''habiletés motrices et des stratégies individuelles et collectives. A décrit les éléments du jeu (cible, adversaires, partenaires), pas les trois notions retenues par Gréhaigne. B mélange des notions issues d''autres cadres théoriques (logique interne, problèmes fondamentaux).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q47', 'exam_eps_2024_didactics_oct_lycee', 47, 'ديداكتيك مادة التخصص', 'En EPS, l''apprentissage par observation suppose la présence :', false, '[{"id": "A", "text": "D''un modèle à explorer et une action à réaliser."}, {"id": "B", "text": "De deux individus, des consignes à respecter, un sujet imitant et une action à réaliser."}, {"id": "C", "text": "D''un groupe d''individu, des critères de réalisation et une action à réaliser."}, {"id": "D", "text": "D''un sujet modèle, un aménagement du milieu et une action à réaliser."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'L''apprentissage par observation, tel que Bandura le décrit, repose sur un modèle que l''élève observe et sur une action à reproduire, ce que résume A. D est à écarter : l''aménagement du milieu relève d''une autre démarche pédagogique. Une autre lecture retient B, parce que les définitions classiques (Winnykamen) exigent deux individus, un modèle et un sujet qui imite, réunis autour d''une action à réaliser.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient B, parce que les définitions classiques (Winnykamen) exigent deux individus, un modèle et un sujet qui imite, réunis autour d''une action à réaliser.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q48', 'exam_eps_2024_didactics_oct_lycee', 48, 'ديداكتيك مادة التخصص', 'Selon la pédagogie de l''aménagement matériel du milieu, l''enseignant d''EPS est appelé à :', false, '[{"id": "A", "text": "Classer le groupe en fonction du but à atteindre et clarifier les critères de réalisation par une inscription concrète dans l''environnement."}, {"id": "B", "text": "Clarifier le but à atteindre et mettre en place les conditions favorables par une inscription concrète dans l''environnement."}, {"id": "C", "text": "Organiser les groupes d''élèves en fonction du but à atteindre et clarifier les critères de réussite par une inscription concrète dans l''environnement."}, {"id": "D", "text": "Disposer les outils didactiques pour optimiser la difficulté de la tâche en fonction du but à atteindre et clarifier le critère de réalisation par une inscription concrète dans l''environnement."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Dans la pédagogie de l''aménagement du milieu, c''est le dispositif matériel qui porte le but : l''enseignant rend ce but visible dans l''espace (cibles, zones, plots) et organise des conditions qui orientent la réponse de l''élève sans consignes techniques. A et C parlent de classer ou d''organiser les groupes, ce qui n''est pas l''objet de cette pédagogie. D confond l''aménagement avec la clarification d''un critère de réalisation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q49', 'exam_eps_2024_didactics_oct_lycee', 49, 'ديداكتيك مادة التخصص', 'Face au constat suivant en Basketball : « les attaquants se déplacent tous vers le ballon et s''immobilisent à faible distance de celui-ci » ; l''enseignant d''EPS met en perspective :', false, '[{"id": "A", "text": "Des comportements relatifs à la situation tels que : orienter ses actions défensives vers l''avant, élargir l''espace de jeu et laisser plus de champ libre au non porteur de balle."}, {"id": "B", "text": "Des comportements nouveaux plus adaptés à la situation tels que : orienter ses actions offensives vers l''axe central, réduire l''espace de jeu et laisser moins de champ libre au porteur de balle."}, {"id": "C", "text": "Des comportements relatifs à la situation tels que : orienter ses actions défensives vers le camp adverse, réduire l''espace de jeu et laisser moins de champ libre au porteur de balle."}, {"id": "D", "text": "Des comportements nouveaux plus adaptés à la situation tels que : orienter ses actions offensives vers l''avant, élargir l''espace de jeu et laisser plus de champ libre au porteur de balle."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Le constat décrit le jeu « en grappe » : tous les attaquants collent au ballon, ce qui bouche les espaces et gêne le porteur. L''enseignant vise donc des comportements offensifs nouveaux : jouer vers l''avant, écarter le jeu et libérer de l''espace autour du porteur. B propose l''inverse (réduire l''espace), et A et C parlent d''actions défensives alors que le problème est offensif.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q50', 'exam_eps_2024_didactics_oct_lycee', 50, 'ديداكتيك مادة التخصص', 'Pour gérer la place de l''élève au sein de l''équipe en sports collectifs, l''enseignant d''EPS doit chercher à :', false, '[{"id": "A", "text": "Transformer la motricité de chaque élève tout en préservant l''intérêt lié à la logique de l''activité."}, {"id": "B", "text": "Transformer la cohésion de l''équipe tout en préservant l''intérêt lié à la logique de l''institution."}, {"id": "C", "text": "Transformer la motricité de chaque élève tout en préservant l''intérêt lié à la logique du groupe."}, {"id": "D", "text": "Transformer la cohésion de l''équipe tout en préservant l''intérêt lié à la logique du niveau d''habileté."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La question porte sur la place de chaque élève dans l''équipe : l''enseignant fait progresser chacun sans casser l''intérêt collectif du groupe, ce que dit C. B et D visent la cohésion de l''équipe, pas la transformation motrice de chaque élève. Une autre lecture retient A, parce que la formule « préserver l''intérêt lié à la logique de l''activité » renvoie à la logique interne des sports collectifs, que l''enseignant ne doit pas dénaturer en individualisant.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient A, parce que la formule « préserver l''intérêt lié à la logique de l''activité » renvoie à la logique interne des sports collectifs, que l''enseignant ne doit pas dénaturer en individualisant.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q51', 'exam_eps_2024_didactics_oct_lycee', 51, 'ديداكتيك مادة التخصص', 'Les styles d''apprentissage exploités par l''enseignant d''EPS doivent lui permettre :', false, '[{"id": "A", "text": "Une utilisation maximale des motivations des apprenants en vue d''optimiser leurs investissements lors de travail de groupe-classe."}, {"id": "B", "text": "Une utilisation optimale des compétences des apprenants ainsi qu''une communication plus efficace en vue d''optimiser leurs investissements lors de travail de groupe-classe."}, {"id": "C", "text": "Une utilisation maximale des critères de réussite réservés aux apprenants en vue d''optimiser leurs investissements lors de travail de groupe-classe."}, {"id": "D", "text": "Une utilisation optimale des variables didactique réservés aux apprenants en vue d''optimiser leurs investissements lors de travail de groupe-classe."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Tenir compte des styles d''apprentissage, c''est partir de la façon dont chaque élève apprend le mieux : on exploite au mieux ses compétences et on ajuste la communication avec lui. Les critères de réussite et les variables didactiques (C et D) relèvent de la conception des tâches, pas des styles d''apprentissage. La motivation (A) en profite, mais elle n''est pas l''objet direct de cette démarche.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q52', 'exam_eps_2024_didactics_oct_lycee', 52, 'ديداكتيك مادة التخصص', 'L''évaluation au cours des séances d''EPS a pour but de :', false, '[{"id": "A", "text": "Situer l''élève dans son travail scolaire par rapport au barème pour découvrir des procédures qui lui permettent de progresser dans ses apprentissages."}, {"id": "B", "text": "Orienter l''élève dans son travail scolaire pour découvrir des procédures qui lui permettent de progresser dans ses apprentissages."}, {"id": "C", "text": "Encourager l''élève dans son travail scolaire pour découvrir des procédures qui lui permettent de progresser dans ses apprentissages."}, {"id": "D", "text": "Guider l''élève dans son travail scolaire en situant ses difficultés pour découvrir des procédures qui lui permettent de progresser dans ses apprentissages."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'L''évaluation menée pendant les séances est formative : elle repère les difficultés de l''élève pour l''aider à trouver des procédures qui le font progresser. Le barème (A) appartient à l''évaluation sommative. Orienter ou encourager (B et C) n''exige aucun diagnostic, alors que la fonction formative repose justement sur l''identification des difficultés.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q53', 'exam_eps_2024_didactics_oct_lycee', 53, 'ديداكتيك مادة التخصص', 'La constitution des équipes hétérogènes lors d''une séance d''EPS permet :', false, '[{"id": "A", "text": "Aux élèves meilleurs de se sentir utiles, de prendre conscience des différences et de les accepter."}, {"id": "B", "text": "Aux élèves plus faibles de se sentir marginalisés et de ne participer que partiellement aux actions du groupe."}, {"id": "C", "text": "Aux élèves meilleurs de solliciter leurs intérêts par rapport au décalage optimal dans la difficulté des tâches."}, {"id": "D", "text": "Aux élèves plus faibles de stimuler leurs intérêts par rapport à l''incertitude face au résultat lié à la tâche proposée."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Dans une équipe hétérogène, les meilleurs élèves aident les plus faibles : ils se sentent utiles et apprennent à accepter les différences, ce qui est l''intérêt social de ce mode de groupement. La marginalisation (B) est le risque à éviter, pas un effet recherché. Le décalage optimal et l''incertitude du résultat (C et D) concernent le réglage de la difficulté des tâches, qui se traite plutôt en groupes de niveau.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q54', 'exam_eps_2024_didactics_oct_lycee', 54, 'ديداكتيك مادة التخصص', 'Les méthodes en EPS sont dites à dominante expérimentale si :', false, '[{"id": "A", "text": "L''enseignant traite continuellement les prestations des apprenants suite à une problématique donnée."}, {"id": "B", "text": "L''enseignant analyse et interprète continuellement les prestations des apprenants suite à un modèle à imiter."}, {"id": "C", "text": "L''enseignant corrige continuellement les prestations des apprenants suite à une situation problème."}, {"id": "D", "text": "L''enseignant dresse continuellement un jugement de valeur sur les prestations des apprenants suite à une stratégie empirique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Une méthode à dominante expérimentale part d''une problématique posée aux élèves, qui cherchent et essaient leurs propres solutions ; l''enseignant traite ensuite leurs prestations au regard de ce problème. Le modèle à imiter (B) caractérise les méthodes imitatives. C semble proche, puisque la situation problème appartient bien aux méthodes actives, mais corriger en continu vers une réponse attendue ramène à une conduite directive. Un jugement de valeur sur une stratégie empirique (D) ne définit aucune méthode.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q55', 'exam_eps_2024_didactics_oct_lycee', 55, 'ديداكتيك مادة التخصص', 'L''évaluation de l''apprentissage en EPS permet de :', false, '[{"id": "A", "text": "Déterminer la prochaine étape dans le processus d''apprentissage pour soutenir les acquisitions de l''apprenant."}, {"id": "B", "text": "Estimer le niveau d''atteinte ponctuel de l''apprenant en vue de prendre une décision."}, {"id": "C", "text": "Déterminer le besoin de l''apprenant en matière de formation pour planifier les situations d''apprentissage."}, {"id": "D", "text": "Décider la prochaine régulation pour ajuster l''accès de l''apprenant aux situations d''apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'L''évaluation de l''apprentissage, qu''on distingue de l''évaluation pour l''apprentissage, fait un bilan : elle estime à un moment donné le niveau atteint par l''élève afin de prendre une décision (note, certification, passage). Déterminer la prochaine étape ou la prochaine régulation (A et D) relève de l''évaluation formative. Identifier les besoins pour planifier (C) est la fonction diagnostique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q56', 'exam_eps_2024_didactics_oct_lycee', 56, 'ديداكتيك مادة التخصص', 'Dans l''apprentissage en gymnastique, la relation enseignant enseigné est :', false, '[{"id": "A", "text": "Riche en rétroactions qualitatives pendant le processus d''apprentissage avec une forte implication des apprenants."}, {"id": "B", "text": "Pauvre en rétroactions qualitatives avant le processus d''apprentissage avec une forte implication des apprenants."}, {"id": "C", "text": "Forte en rétroactions quantitatives à la fin du processus d''apprentissage avec une faible implication des apprenants."}, {"id": "D", "text": "Diminuée en rétroactions qualitatives pendant le processus d''apprentissage avec une faible implication des apprenants."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'En gymnastique, l''élève construit des formes corporelles précises : l''enseignant intervient sans cesse pendant l''apprentissage par des retours qualitatifs sur la forme du mouvement, et l''élève reste très engagé dans ses essais. Des retours quantitatifs en fin de processus (C) conviennent mieux aux activités dont la performance se mesure. B et D décrivent une relation appauvrie, contraire à la nature de l''activité.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q57', 'exam_eps_2024_didactics_oct_lycee', 57, 'ديداكتيك مادة التخصص', 'Au cours du projet du cycle, la situation de référence permet à l''enseignant d''EPS de :', false, '[{"id": "A", "text": "Communiquer à l''élève les connaissances qu''il doit s''approprier pour assurer son progrès en fonction des propos prescrits par la situation."}, {"id": "B", "text": "Agir sur les variables didactiques pour adapter le problème authentique posé qui permet de faire le point sur les progrès et les acquisitions."}, {"id": "C", "text": "Valider les acquisitions de l''élève en régulant son action à structurer ses apprentissages et lui permettre d''avoir une connaissance du résultat."}, {"id": "D", "text": "Aider l''élève à construire ses connaissances par rapport à un but à atteindre en fonction des propos prescrits par la situation."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La situation de référence pose aux élèves un problème authentique, représentatif de l''activité, que l''enseignant ajuste en jouant sur les variables didactiques. Proposée en début puis en fin de cycle, elle permet de faire le point sur les progrès et les acquisitions. A et D décrivent plutôt les situations d''apprentissage proposées entre ces deux bilans. Une autre lecture retient C, qui voit dans la situation de référence l''outil qui valide les acquisitions de l''élève et lui donne une connaissance de son résultat.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient C, qui voit dans la situation de référence l''outil qui valide les acquisitions de l''élève et lui donne une connaissance de son résultat.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q58', 'exam_eps_2024_didactics_oct_lycee', 58, 'ديداكتيك مادة التخصص', 'Lors d''une démarche didactique appropriée, la modélisation permet à l''enseignant d''EPS de :', false, '[{"id": "A", "text": "Observer les conduites motrices des élèves dans leur globalité en vue de réussir son intervention pédagogique."}, {"id": "B", "text": "Interpréter les comportements des élèves dans leurs spécificités en vue de réussir son intervention pédagogique."}, {"id": "C", "text": "Valider les aspects techniques des élèves dans leurs particularités en vue de réussir son intervention pédagogique."}, {"id": "D", "text": "Etablir les groupes de besoins des élèves dans leurs diversités en vue de réussir son intervention pédagogique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'La modélisation de l''activité décrit des niveaux de conduite typiques des élèves. En situant chaque élève sur ces niveaux, l''enseignant peut former des groupes de besoins et adapter ses tâches à la diversité de la classe. Observer ou interpréter les conduites (A et B) sont des étapes qui s''appuient sur le modèle sans en être la finalité. Valider des aspects techniques (C) réduit l''activité à la seule technique.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q59', 'exam_eps_2024_didactics_oct_lycee', 59, 'ديداكتيك مادة التخصص', 'La rétroaction en gymnastique permet à l''enseignant d''EPS de :', false, '[{"id": "A", "text": "Repérer la manière dont l''apprenant restructure et présente ses réalisations."}, {"id": "B", "text": "Renforcer chez l''apprenant la perception de la pertinence de ses stratégies."}, {"id": "C", "text": "Adapter son message aux caractéristiques de l''apprenant."}, {"id": "D", "text": "Illustrer son propos à partir des expériences antérieures de l''apprenant."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Vue comme un échange entre l''enseignant et l''élève, la rétroaction permet à l''enseignant de repérer comment l''élève réorganise et présente ses réalisations après l''information reçue, ce qui oriente la suite de son intervention. S''appuyer sur le vécu antérieur de l''élève (D) relève de la communication en général, pas du retour sur une prestation. Une autre lecture retient B, pour la fonction de renforcement de la rétroaction, qui confirme à l''élève la pertinence de ses stratégies, ou C, parce qu''une rétroaction gagne en utilité quand l''enseignant adapte son message aux caractéristiques de l''apprenant.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, '⚠ المصدر نفسه يشير إلى قراءة بديلة: Une autre lecture retient B, pour la fonction de renforcement de la rétroaction, qui confirme à l''élève la pertinence de ses stratégies, ou C, parce qu''une rétroaction gagne en utilité quand l''enseignant adapte son message aux caractéristiques de l''apprenant.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة أكتوبر 2024) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_didactics_oct_lycee_q60', 'exam_eps_2024_didactics_oct_lycee', 60, 'ديداكتيك مادة التخصص', 'Les savoirs enseignés en EPS apparaissent lorsque l''enseignant :', false, '[{"id": "A", "text": "Anime l''activité que font les élèves dans les exercices proposés."}, {"id": "B", "text": "Régule l''activité que font les élèves dans les exercices proposés."}, {"id": "C", "text": "Planifie l''activité que font les élèves dans les exercices proposés."}, {"id": "D", "text": "Supervise l''activité que font les élèves dans les exercices proposés."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Les travaux de didactique de l''EPS montrent que le savoir enseigné se lit dans les régulations : quand l''enseignant intervient sur ce que font les élèves pendant l''exercice, il précise ce qu''il y a à apprendre. Planifier (C) concerne le savoir à enseigner, prévu avant la séance. Animer ou superviser (A et D) entretient l''activité sans faire apparaître de contenu. Afficher la correctionMasquer la correction PayantRéponse sous 24h Il reste une épreuve que ce sujet ne prépare pas. Sciences de l''éducation, coefficient 8, le même sujet pour les treize disciplines, un cinquième de la note finale. Le livre de préparation en sciences de l''éducation · 100 DHLes trois domaines du barème officiel traités en entier, les méthodes, et des épreuves d''entraînement corrigées.Commander en PDFLes sujets et leurs corrections en un seul PDF · 50 DHToutes les sessions en sciences de l''éducation publiées sur ce site, chaque sujet suivi de son corrigé. Prêt à imprimer.Commander le PDF Sujets et corrections gratuits sur ce site. Le livre de préparation est un PDF de l''équipe de mesconcours.ma, relu par des professeurs du Centre Régional des Métiers de l''Éducation et de la Formation (CRMEF). Voir toutes les annales du concours Enseignement. Les mêmes annales dans l’application Android, gratuite sur le Play Store. Suis-nousFacebookInstagram À proposContactConfidentialitéConditions d''utilisation © 2026 ConcoursMaroc · Annales & concours du Maroc Impression non autorisée. Contenu protégé © mesconcours.ma', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-616/', false, NULL)
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
