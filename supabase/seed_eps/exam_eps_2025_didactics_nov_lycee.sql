-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025)
-- ====================================================================
-- المصدر: ملف الحل 2025/ديداكتيك التربية البدنية - دورة نونبر 2025.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2025-614/
--   لا يوجد مفتاح رسمي؛ الأجوبة من تصحيح منشور غير رسمي (epsmaroc عبر mesconcours). 8 نقاط موسومة ⚠.
--   عدد الأسئلة: 60 (QCM، خمسة اختيارات)؛ موثّقة verified=true: 16؛ موسومة بملاحظة تحقق: 9.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee', 'eps_lycee', 2025, 'eps_didactics', 'ديداكتيك مادة التخصص', 'امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 120, 60, NULL)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (60 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q1', 'exam_eps_2025_didactics_nov_lycee', 1, 'Compétences, objectifs et contenus en EPS', 'Pour le niveau scolaire de la première année du baccalauréat, les contenus d''enseignement apprentissage en athlétisme visent :', false, '[{"id": "A", "text": "L''organisation des mouvements du corps et l''adaptation des efforts pour consolider les habiletés et améliorer un niveau de performance."}, {"id": "B", "text": "L''ajustement des mouvements du corps en fonction des conditions changeantes et des exigences des épreuves pour augmenter l''efficacité de la performance."}, {"id": "C", "text": "L''organisation des mouvements du corps pour construire de nouveaux repères afin de réaliser des performances individuelles et collectives générales et correctes."}, {"id": "D", "text": "La gestion de l''effort physique suivant des exigences organisationnelles et réglementaires pour réaliser un niveau de performance."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Au lycée, le programme fait passer l''élève de l''organisation de ses mouvements à leur ajustement : en première année du baccalauréat, il doit adapter son geste aux conditions de l''épreuve pour gagner en efficacité. La construction de nouveaux repères (C) et l''organisation des mouvements pour consolider les habiletés (A) relèvent de niveaux antérieurs de la progression.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q2', 'exam_eps_2025_didactics_nov_lycee', 2, 'Évaluation des apprentissages en EPS', 'La vérification d''un projet d''action par un enseignant d''EPS vis-à-vis de ses élèves dépend essentiellement de la mise en place :', false, '[{"id": "A", "text": "D''une communication à la fin de l''enseignement des modalités d''évaluation pour mettre en perspective le travail à l''échelle de la séquence."}, {"id": "B", "text": "D''un espace orienté au sein duquel l''apprenant reproduit des comportements individuels ou collectifs concertés."}, {"id": "C", "text": "D''une grille d''évaluation construite sur des critères de réussite concrets pour juger des progrès et de l''avancement du projet."}, {"id": "D", "text": "D''une échéance tardivement annoncée en vue de réaliser des comportements individuels ou collectifs du projet."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Vérifier un projet d''action suppose de comparer ce que l''élève réalise à des critères de réussite connus à l''avance : la grille critériée sert à cela et permet de suivre les progrès en cours de route. Annoncer les modalités d''évaluation à la fin de l''enseignement (A) ou fixer une échéance tardive (D) empêche justement l''élève de piloter son projet.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q3', 'exam_eps_2025_didactics_nov_lycee', 3, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Pour aider les apprenants à identifier individuellement ou collectivement les contraintes de la tâche, l''enseignant d''EPS recourt à :', false, '[{"id": "A", "text": "Une analyse et traitement didactique en vue de clarifier l''apport des APS vis-à-vis de la compétence escomptée."}, {"id": "B", "text": "Une transposition didactique dans un souci d''adapter le savoir enseigné à la compétence recherchée."}, {"id": "C", "text": "Une analyse des performances retenues après l''activité pour établir un barème de notation relatif à la compétence choisie."}, {"id": "D", "text": "Une verbalisation des apprentissages en cours de construction des élèves par rapport à la compétence souhaitée."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], '⚠ Le corrigé publié retient A : c''est l''analyse et le traitement didactique de l''APS qui font apparaître ses contraintes et son apport à la compétence visée, et l''enseignant construit ensuite ses tâches à partir de ces contraintes. Une autre lecture défend D, car le mot « apprenants » et la mention « individuellement ou collectivement » renvoient à la verbalisation, le moyen par lequel les élèves eux-mêmes mettent des mots sur ce que la tâche exige d''eux. Le barème de notation (C) relève de l''évaluation et ne répond pas à la question.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, 'النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: د، التلفّظ). التحقق المستقل يؤيد أ: تحليل المهمة يحدّد خصائص المهارات ومن ثَمّ قيودها (Ripoll، cours COM052 « Modèles d''analyse des tâches »)، ودورة الديداكتيك حول « Analyse et traitement didactique » تنصّ على أن هدفها معرفة ما يميّز الـAPS وتكييفها مع مستوى التلميذ. والورقة المعلَّمة على Scribd تضع علامة على أ.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q4', 'exam_eps_2025_didactics_nov_lycee', 4, 'Méthodes et approches pédagogiques en EPS', 'En EPS, la conduite des projets en groupe restreint permet à l''enseignant de :', false, '[{"id": "A", "text": "Favoriser la participation restreinte de tous les élèves dans un contexte à grande mixité."}, {"id": "B", "text": "Favoriser la personnalisation des objectifs pour les uns dans un contexte à faible mixité."}, {"id": "C", "text": "Apporter une réponse concrète à la forte hétérogénéité des élèves dans un contexte à grande mixité."}, {"id": "D", "text": "Apporter de l''aide aux élèves en difficulté pour les intégrer dans un contexte à faible mixité."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Travailler par petits groupes de projet est une forme de différenciation : chaque groupe avance à son niveau, ce qui permet de gérer une classe très hétérogène et mixte. La proposition A se contredit (on cherche une participation de tous, pas une participation « restreinte »), et B et D limitent l''intérêt du dispositif à une faible mixité ou aux seuls élèves en difficulté.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q5', 'exam_eps_2025_didactics_nov_lycee', 5, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Le contexte pédagogique d''une leçon d''EPS fait allusion aux :', false, '[{"id": "A", "text": "Besoins, capacités physiques, niveaux de compétence, intérêts et motivations des élèves dans la leçon."}, {"id": "B", "text": "Normes de sécurité et procédures à suivre pour assurer la motivation des élèves vis à vis des activités physiques dans la leçon."}, {"id": "C", "text": "Buts à atteindre, formes de travail qui conditionnent les conduites des élèves et leur motivation dans la leçon."}, {"id": "D", "text": "Valeurs culturelles et sociales qui influencent la perception de l''EPS et qui favorisent la motivation des élèves dans la leçon."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Le contexte pédagogique d''une leçon décrit le public auquel elle s''adresse : besoins, capacités physiques, niveau de compétence, intérêts et motivations des élèves. C''est à partir de ce constat que l''enseignant fixe ensuite ses objectifs. Les buts à atteindre et les formes de travail (C) appartiennent déjà à la conception de la leçon, pas à son contexte.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q6', 'exam_eps_2025_didactics_nov_lycee', 6, 'Compétences, objectifs et contenus en EPS', 'Les apprentissages en EPS, relatifs aux sports collectifs, permettent à l''élève de la troisième année collégiale de :', false, '[{"id": "A", "text": "Participer dans la réalisation du projet collectif basé sur le passage rapide et adéquat de l''attaque à la défense pour gagner la rencontre."}, {"id": "B", "text": "Réaliser des déplacements variés pour une progression avec la balle et un changement de rôle en fonction des situations proposées."}, {"id": "C", "text": "Participer dans la réalisation du projet collectif basé sur la conservation de la balle pour gagner la rencontre."}, {"id": "D", "text": "Participer dans la réalisation du projet collectif basé sur la gestion des projets individuels ou collectifs de la planification à l''évaluation finale."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Au collège, la progression en sports collectifs part de la conservation de la balle et de la progression vers la cible pour aboutir, en troisième année, à la gestion rapide du changement de statut entre attaque et défense. La conservation de la balle (C) et les déplacements variés avec changement de rôle (B) correspondent aux étapes précédentes de ce cycle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q7', 'exam_eps_2025_didactics_nov_lycee', 7, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En saut en hauteur, l''enseignant d''EPS gère l''étape émotionnelle chez l''élève à travers une attitude qui :', false, '[{"id": "A", "text": "Met l''accent sur les performances réalisées par les élèves."}, {"id": "B", "text": "Insiste sur l''identification et la correction des erreurs des élèves."}, {"id": "C", "text": "Accorde de l''importance aux expériences réalisées par les élèves."}, {"id": "D", "text": "Adapte d''une manière prioritaire des objectifs selon chaque niveau scolaire."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], '⚠ Le corrigé publié retient A : valoriser les hauteurs déjà franchies rassure l''élève et l''aide à dépasser l''appréhension de la barre et de la chute. Une autre lecture défend C, car à l''étape émotionnelle on cherche plutôt à détourner l''élève de l''enjeu de performance et à valoriser chaque essai, ce qui est le sens de « l''importance accordée aux expériences ». Insister sur la correction des erreurs (B) renforce au contraire la peur de l''échec à ce stade.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, 'النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: ج، تثمين التجارب بدل التركيز على الأداء). لم يُتحقق منها بمصدر مستقل — الجواب المسجَّل هو جواب التصحيح المنشور (أ).')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q8', 'exam_eps_2025_didactics_nov_lycee', 8, 'Méthodes et approches pédagogiques en EPS', 'Dans une optique écologiste, face à l''activité saut en longueur, l''enseignant d''EPS devra faire apprendre au sujet à réguler sa course d''élan :', false, '[{"id": "A", "text": "En fonction de nombre de foulée prédéterminé afin de positionner son pied le plus près possible de la planche."}, {"id": "B", "text": "En fonction de la distance d''élan afin de positionner son pied le plus près possible de la planche."}, {"id": "C", "text": "En fonction de l''ajustement moteur produit afin de positionner son pied le plus près possible de la planche."}, {"id": "D", "text": "En fonction du repère préétabli sur la piste d''élan afin de positionner son pied le plus près possible de la planche."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'L''approche écologique (Gibson, travaux de Lee sur la course d''élan) montre que le sauteur règle ses dernières foulées en continu, à partir de ce qu''il perçoit de la planche : c''est un ajustement produit en cours d''action, pas un plan fixé d''avance. Le nombre de foulées prédéterminé (A) et le repère préétabli sur la piste (D) relèvent d''une conception cognitiviste où le mouvement est programmé à l''avance.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, 'النظرية الإيكولوجية تؤيد ج بقوة (التعديل المستمر انطلاقاً مما يدركه القافز من اللوحة، أعمال Lee؛ البرمجة المسبقة لعدد الخطوات رؤية معرفية). مسح الورقة على Scribd يعرض علامة غير واضحة قد تكون على أ، لكنها غير قابلة للقراءة يقيناً ولا تغيّر الجواب.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q9', 'exam_eps_2025_didactics_nov_lycee', 9, 'Méthodes et approches pédagogiques en EPS', 'En EPS, une méthode est dite active si elle met l''accent sur :', false, '[{"id": "A", "text": "L''apprentissage des compétences spécifiques exigeant l''implication des apprenants dans des contextes plus motivant."}, {"id": "B", "text": "L''apprentissage des compétences spécifiques isolées facilitant l''intégration des apprenants dans des contextes plus complexes."}, {"id": "C", "text": "L''apprentissage des compétences spécifiques dans son contexte global exigeant l''implication des apprenants dans des contextes plus engageant."}, {"id": "D", "text": "L''apprentissage des compétences spécifiques et/ou transversales facilitant l''intégration des apprenants dans des contextes plus adaptés."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Une méthode active place l''élève en situation globale et lui demande de s''engager lui-même pour résoudre le problème posé, au lieu de répéter un geste isolé. B décrit au contraire une démarche analytique (compétences isolées). A parle d''implication mais oublie le caractère global de la situation, qui est ce qui distingue la méthode active.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q10', 'exam_eps_2025_didactics_nov_lycee', 10, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Dans une leçon d''EPS, la situation de référence se distingue de celle d''apprentissage par sa fonction conçue pour :', false, '[{"id": "A", "text": "Enseigner des compétences spécifiques ou des connaissances."}, {"id": "B", "text": "Rattraper le retard des compétences non acquises."}, {"id": "C", "text": "S''adapter aux réactions des élèves pour mieux répondre à leurs besoins."}, {"id": "D", "text": "Maintenir l''engagement et répondre aux différents besoins des élèves."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], '⚠ Le corrigé publié retient D : la situation de référence, complexe et proche de la pratique réelle, donne du sens à la leçon et maintient l''engagement de tous les élèves. Une autre lecture défend E, car la fonction qui distingue vraiment la situation de référence est l''évaluation (elle sert à situer l''élève par rapport à la compétence au début et à la fin du cycle), et aucune des propositions A à D ne la mentionne. Enseigner des compétences (A) et rattraper un retard (B) sont en tout cas les fonctions des situations d''apprentissage et de remédiation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, '«للتحقق» — النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: هـ). مصدران مستقلان يؤيدان هـ: درس الديداكتيك للدكتور لخضر نور (أستاذ جامعي في علوم الرياضة) يعرّف وضعية المرجع بأنها «نشاط تمثيلي يُستعمل لملاحظة سلوك التلاميذ وتقييم مستوى إتقانهم، عادة في بداية ونهاية الدورة» بينما وضعية التعلم وظيفتها تجاوز الصعوبات؛ وأطروحة ماستر (جامعة أنتاناناريفو) تنصّ على أن لوضعية المرجع وظيفة «الكشف عن مستوى التلاميذ وتحديد حاجاتهم التعلمية (التقييم التشخيصي)». الجواب المسجَّل هو جواب التصحيح المنشور (د) لأن «الحفاظ على الانخراط» وظيفة حقيقية لوضعية المرجع، لكن هـ يبقى مرجّحاً بقوة.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q11', 'exam_eps_2025_didactics_nov_lycee', 11, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En gymnastique, l''enseignant d''EPS recourt à l''aménagement du milieu pour :', false, '[{"id": "A", "text": "Mesurer les performances des élèves à différents moments de leur apprentissage."}, {"id": "B", "text": "Aider les élèves à surmonter des difficultés spécifiques ou à rattraper des compétences non acquises."}, {"id": "C", "text": "Renforcer et stabiliser les compétences et connaissances acquises."}, {"id": "D", "text": "Permettre aux élèves d''explorer et de découvrir un nouvel environnement en vue d''acquérir de nouvelles connaissances."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'En gymnastique, aménager le milieu (plans inclinés, tremplins, tapis, modules) crée un environnement inhabituel que l''élève explore pour construire de nouvelles réponses motrices. C''est le milieu qui pose le problème et provoque l''apprentissage. Mesurer les performances (A) relève de l''évaluation, et rattraper des acquis (B) relève de la remédiation, pas de la fonction première de l''aménagement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q12', 'exam_eps_2025_didactics_nov_lycee', 12, 'Méthodes et approches pédagogiques en EPS', 'Pour atteindre des objectifs d''ordre socioaffectif en rugby, l''enseignant d''EPS met en œuvre le style d''apprentissage suivant :', false, '[{"id": "A", "text": "Incitatif"}, {"id": "B", "text": "Associatif"}, {"id": "C", "text": "Transmissif"}, {"id": "D", "text": "Permissif"}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Le style associatif repose sur la collaboration et l''échange entre l''enseignant et les élèves, et entre les élèves eux-mêmes. Il sert donc directement les objectifs socioaffectifs (coopération, entraide, respect des partenaires) que le rugby met en jeu. Le style transmissif centre la leçon sur l''exposé de l''enseignant, et le style permissif laisse l''élève sans cadre, ce qui ne garantit pas le travail relationnel visé.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q13', 'exam_eps_2025_didactics_nov_lycee', 13, 'Compétences, objectifs et contenus en EPS', 'La structuration des contenus d''enseignements permet à l''enseignant d''EPS :', false, '[{"id": "A", "text": "D''établir l''ordre dans lequel les compétences et les connaissances seront enseignées pour maximiser l''efficacité de l''apprentissage."}, {"id": "B", "text": "D''ajuster les activités et les niveaux de difficulté pour répondre aux besoins et aux capacités de chaque élève."}, {"id": "C", "text": "De minimiser les risques associés aux activités physiques pour répondre aux besoins et aux capacités de chaque élève."}, {"id": "D", "text": "D''identifier les points forts et les points à améliorer chez les élèves, permettant d''adapter les contenus et les méthodes d''enseignement."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], '⚠ La correction publiée retient B : structurer les contenus revient à les graduer en niveaux de difficulté, ce qui permet d''ajuster les activités aux capacités de chaque élève. Une autre lecture défend A : au sens strict, structurer des contenus, c''est les organiser et les hiérarchiser, donc fixer l''ordre dans lequel compétences et connaissances seront enseignées (progression), alors que l''ajustement au niveau de chaque élève relève plutôt de la différenciation. D décrit l''évaluation diagnostique et C la sécurité, deux fonctions étrangères à la structuration.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, 'النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: أ، ترتيب المحتويات في تقدّم). الجواب المسجَّل هو جواب التصحيح المنشور (ب)؛ أ يبقى مرجّحاً لأن «هيكلة المحتويات» تعني حرفياً تنظيمها وترتيبها، بينما التكييف مع كل تلميذ من التفريق البيداغوجي.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q14', 'exam_eps_2025_didactics_nov_lycee', 14, 'Observation des apprentissages en EPS', 'En EPS, l''observation participante permet :', false, '[{"id": "A", "text": "D''identifier les points forts et les domaines nécessitant une amélioration pour adapter les méthodes d''enseignement."}, {"id": "B", "text": "De comprendre les difficultés rencontrées par les élèves pour fournir en temps réel des feedbacks basés sur une expérience partagée."}, {"id": "C", "text": "De déterminer les compétences de départ des élèves et augmenter l''engagement et la responsabilisation des élèves."}, {"id": "D", "text": "De réduire la subjectivité en utilisant des critères standards permettant de modéliser les comportements souhaités."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Dans l''observation participante, l''enseignant observe de l''intérieur de l''action, en prenant part à la situation avec les élèves. Cette position lui donne accès aux difficultés vécues et lui permet de réagir sur le moment par des feedbacks ancrés dans l''expérience partagée. D décrit au contraire l''observation armée par une grille de critères standardisés, qui cherche à réduire la subjectivité en se tenant à distance.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q15', 'exam_eps_2025_didactics_nov_lycee', 15, 'Méthodes et approches pédagogiques en EPS', 'Dans une situation problème en EPS, les consignes permettent :', false, '[{"id": "A", "text": "D''aider à clarifier les attentes et réduire les malentendus, permettant ainsi aux élèves de se concentrer sur la tâche à accomplir."}, {"id": "B", "text": "D''aider les élèves à comprendre leurs points forts et les domaines nécessitant des améliorations et favorisant ainsi le progrès."}, {"id": "C", "text": "D''aider à orienter les actions des élèves vers des objectifs spécifiques, ce qui améliore la focalisation et l''efficacité."}, {"id": "D", "text": "D''aider à garantir que les élèves exécutent les actions de manière précise et correcte, pour augmenter leur efficacité."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Dans une situation problème, la consigne pose le but à atteindre et les contraintes, sans dicter la solution : elle oriente l''activité de l''élève vers un objectif précis et laisse la recherche de la réponse à sa charge. D correspond à une pédagogie du modèle, où la consigne prescrit une exécution correcte, ce qui supprime le problème. B décrit le rôle du feedback, pas celui de la consigne.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q16', 'exam_eps_2025_didactics_nov_lycee', 16, 'Compétences, objectifs et contenus en EPS', 'En course de durée, le critère de réalisation qui doit être retenu par l''enseignant d''EPS dans sa fiche de préparation est :', false, '[{"id": "A", "text": "Courir autour du terrain en suivant le tracé rouge, sans dépasser les autres coureurs."}, {"id": "B", "text": "Maintenir une posture droite en cycle arrière pendant la durée de la course."}, {"id": "C", "text": "Modifier la distance de course ou le type de terrain pour ajuster la difficulté."}, {"id": "D", "text": "Compléter le parcours en moins de 5 minutes avec un bon alignement corporel."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], '⚠ La correction publiée retient C. Une autre lecture conduit à B : un critère de réalisation décrit comment l''élève doit agir (posture, placement, technique), et « maintenir une posture droite en cycle arrière » en est un exemple typique pour la course de durée, où la foulée économique est rasante et le cycle de jambes surtout arrière. Modifier la distance ou le terrain (C) est une variable didactique que l''enseignant manipule pour régler la difficulté, pas un critère de réalisation. D mélange un critère de réussite chiffré (moins de 5 minutes) et un critère de réalisation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, '«للتحقق» — النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: ب). التعريف المعياري يؤيد ب: معيار الإنجاز يصف كيف يجب أن يتصرف التلميذ (وضعية الجسم، التقنية)، وتعديل المسافة أو نوع التضاريس متغيّر ديداكتيكي يتلاعب به الأستاذ لضبط الصعوبة لا معيار إنجاز. الجواب المسجَّل هو جواب التصحيح المنشور (ج).')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q17', 'exam_eps_2025_didactics_nov_lycee', 17, 'Observation des apprentissages en EPS', 'En volleyball, l''enseignant d''EPS est appelé à observer, en deuxième année collège, les critères qui s''articulent autour des notions :', false, '[{"id": "A", "text": "De déplacement / placement, de la défense de son camp et le renvoi de la balle vers le camp adverse."}, {"id": "B", "text": "De déplacement / placement, du renvoi indirect de la balle vers le camp adverse et le gain du point."}, {"id": "C", "text": "De la défense du terrain, de l''orientation de la balle vers la zone avant ensuite le renvoi vers le camp adverse."}, {"id": "D", "text": "De l''organisation collective, de la récupération, de la progression de la balle et le renvoi dans la limite de trois touches de balle."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'En deuxième année collège, le volleyball ne se limite plus à renvoyer la balle par-dessus le filet : les élèves doivent s''organiser collectivement pour récupérer la balle, la faire progresser vers le filet et la renvoyer en utilisant jusqu''à trois touches. Les critères d''observation portent donc sur cette organisation collective. A et B décrivent un jeu de renvoi individuel, propre à un niveau de début d''apprentissage.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q18', 'exam_eps_2025_didactics_nov_lycee', 18, 'Généralités sur la didactique et la pédagogie en EPS', 'L''enseignant d''EPS, qui s''inscrit dans une conception techniciste, considère l''équipe en sports collectifs comme :', false, '[{"id": "A", "text": "Une somme des habiletés techniques individuelles des différents joueurs qui la composent."}, {"id": "B", "text": "Un organisme autour d''un intérêt commun permettant de réaliser une communauté d''actions entre les joueurs."}, {"id": "C", "text": "Un système de prises de décisions propre à chaque joueur qui est conditionné par un but commun."}, {"id": "D", "text": "Un mécanisme de communication entre les joueurs permettant la distribution de rôles et de sous rôles socio-moteurs."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'La conception techniciste découpe le jeu en gestes techniques appris hors contexte (passe, dribble, tir), puis additionnés : l''équipe vaut alors la somme des habiletés de ses joueurs. Les options B, C et D relèvent des conceptions systémique et décisionnelle (Gréhaigne, Parlebas), qui voient l''équipe comme un système d''interactions, de communication et de rôles socio-moteurs, à l''opposé de la vision techniciste.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q19', 'exam_eps_2025_didactics_nov_lycee', 19, 'Généralités sur la didactique et la pédagogie en EPS', 'En EPS, les savoirs savants en gymnastique se traduisent dans une situation d''apprentissage par :', false, '[{"id": "A", "text": "La transposition didactique."}, {"id": "B", "text": "L''analyse et traitement didactique."}, {"id": "C", "text": "Le triangle didactique."}, {"id": "D", "text": "La didactique de l''EPS."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'La transposition didactique (Chevallard) désigne le passage du savoir savant au savoir à enseigner, puis au savoir enseigné en classe. C''est elle qui transforme les connaissances de référence en gymnastique en contenus d''une situation d''apprentissage. Le triangle didactique (C) décrit les relations entre enseignant, élève et savoir, et non le processus de transformation du savoir.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q20', 'exam_eps_2025_didactics_nov_lycee', 20, 'Généralités sur la didactique et la pédagogie en EPS', 'Dans la relation didactique, un enseignant d''EPS novice soucieux de construire le jeu conjoint avec les élèves s''intéresse à :', false, '[{"id": "A", "text": "Poser les objets de l''apprentissage et aménager le cadre de la situation."}, {"id": "B", "text": "Aider les élèves à explorer et découvrir leur environnement."}, {"id": "C", "text": "Intervenir uniquement pour assurer la sécurité ou résoudre un problème."}, {"id": "D", "text": "Animer et faire évoluer les rapports des élèves avec la situation."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Dans la théorie de l''action conjointe (Sensevy), le jeu didactique se construit à deux : l''enseignant ne se contente pas de mettre en place la situation, il régule en continu la manière dont les élèves s''en saisissent. Animer et faire évoluer les rapports des élèves avec la situation, c''est précisément cette régulation. Poser les objets et aménager le cadre (A) n''en est que le point de départ, souvent le seul souci d''un enseignant qui ne construit pas encore le jeu conjoint.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q21', 'exam_eps_2025_didactics_nov_lycee', 21, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'La connaissance du résultat en football permet de :', false, '[{"id": "A", "text": "S''informer sur le degré d''atteinte des critères de réalisation."}, {"id": "B", "text": "Rappeler les critères de réalisation pour proposer une solution."}, {"id": "C", "text": "S''informer sur la nature des opérations mises en œuvre dans la tâche."}, {"id": "D", "text": "Tester le degré d''atteinte du critère de réussite de la tâche."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'La connaissance du résultat renseigne l''élève sur l''effet produit : le but est-il marqué, la passe arrive-t-elle ? Elle se mesure donc au critère de réussite de la tâche. Les critères de réalisation (A, B) et la nature des opérations (C) relèvent de la connaissance de la performance, qui porte sur la manière d''exécuter le geste et non sur son résultat.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q22', 'exam_eps_2025_didactics_nov_lycee', 22, 'Évaluation des apprentissages en EPS', 'Pour s''inscrire dans la logique d''une évaluation différenciée, l''enseignant d''EPS utilise :', false, '[{"id": "A", "text": "Des instruments qui visent à mesurer les performances au sens de degré de réussite dans l''accomplissement d''une tâche."}, {"id": "B", "text": "Des instruments à échelles de développement dont les degrés tentent de jalonner le processus de construction du comportement."}, {"id": "C", "text": "Des instruments à échelles normatives dans lesquelles, les degrés sont définis par rapport à un comportement idéal."}, {"id": "D", "text": "Des instruments organisés pour relever les niveaux de réussites et d''échecs par rapport à une tâche déterminée."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Une évaluation différenciée situe chaque élève sur son propre chemin d''apprentissage. Les échelles de développement le permettent, car leurs degrés décrivent les étapes successives de construction d''un comportement moteur, et l''enseignant repère chaque élève à l''étape où il se trouve. Une échelle normative (C) compare tout le monde à un même modèle idéal, ce qui va à l''inverse de la différenciation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q23', 'exam_eps_2025_didactics_nov_lycee', 23, 'Compétences, objectifs et contenus en EPS', 'En Basket Ball, provoquer un déséquilibre chez l''équipe adverse pour tenter de marquer le point suppose :', false, '[{"id": "A", "text": "Une circulation du ballon en arrière de l''espace de jeu effectif."}, {"id": "B", "text": "Une conservation du ballon dans l''espace de jeu défensif."}, {"id": "C", "text": "Une attaque dans un espace où la défense est placée sur zone."}, {"id": "D", "text": "Une attaque avant le replacement dans l''espace de jeu défensif."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Le déséquilibre naît quand l''équipe attaque vite, avant que les défenseurs aient regagné leur moitié de terrain et repris leurs places : c''est le principe de la contre-attaque et du jeu rapide. Attaquer une défense déjà organisée en zone (C) ou conserver le ballon loin du panier (A, B) laisse au contraire à l''adversaire le temps de rééquilibrer son dispositif.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q24', 'exam_eps_2025_didactics_nov_lycee', 24, 'Méthodes et approches pédagogiques en EPS', 'Dans le cadre des sports collectifs, les savoirs faire d''un enseignant d''EPS ont pour but de :', false, '[{"id": "A", "text": "Confronter les élèves à des situations d''affrontement collectif dans lesquelles ils auront à répondre à des alternatives décisionnelles."}, {"id": "B", "text": "Modéliser le jeu et l''activité des joueurs en problématisant les relations situations d''apprentissage-situation de référence."}, {"id": "C", "text": "Privilégier la maîtrise d''habiletés gestuelles et/ou tactiques dans un environnement dénué d''incertitudes spatiotemporelles."}, {"id": "D", "text": "Déterminer le choix des savoirs à enseigner compte tenu les compétences visées par le programme d''enseignement de l''EPS."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Le savoir-faire propre à l''enseignant de sports collectifs consiste à lire le jeu, à en dégager un modèle (rapport d''opposition, problèmes à résoudre) et à construire des situations d''apprentissage qui gardent un lien explicite avec la situation de référence. L''option A décrit ce que vivent les élèves, pas la compétence de l''enseignant. L''option C retire l''incertitude, qui fait pourtant le fond de ces activités.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q25', 'exam_eps_2025_didactics_nov_lycee', 25, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En EPS, l''apprenant est confronté à un incident didactique dépréciatif lorsqu''il :', false, '[{"id": "A", "text": "Réalise un projet d''action qui peut être décrit visiblement et de façon détaillée."}, {"id": "B", "text": "Manifeste un désengagement apparent dans le sens non souhaité de l''apprentissage."}, {"id": "C", "text": "Génère une attitude négative en réaction à un climat défavorable d''apprentissage."}, {"id": "D", "text": "Exprime une réaction conflictuelle face à un obstacle qui demande une adaptation."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Un incident didactique est un événement observable qui écarte la leçon du chemin prévu. Il devient dépréciatif quand l''élève décroche visiblement de la tâche et s''engage dans une direction contraire à l''apprentissage visé. Une réaction conflictuelle face à un obstacle (D) peut au contraire signaler un apprentissage en cours, puisque l''obstacle oblige l''élève à s''adapter.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q26', 'exam_eps_2025_didactics_nov_lycee', 26, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'L''apprenant repère les obstacles à traiter dans une situation problème en EPS grâce à :', false, '[{"id": "A", "text": "Une remise en question de ses représentations initiales qui débouche sur une déstabilisation conceptuelle."}, {"id": "B", "text": "Une prise de conscience de la limite de ses propres ressources disponibles et de son mode de fonctionnement."}, {"id": "C", "text": "Une reconstruction au cours de laquelle la fonction d''étayage dévolue à l''enseignant est essentielle."}, {"id": "D", "text": "Une anticipation des solutions au problème posé et les contenus nécessaires à sa résolution."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Dans une situation problème, l''élève voit l''obstacle quand il constate que ses ressources actuelles et sa façon habituelle d''agir ne suffisent pas à réussir la tâche. Cette prise de conscience lui désigne ce qu''il doit transformer. La déstabilisation de ses représentations (A) vient ensuite, comme effet de cette confrontation, et l''étayage de l''enseignant (C) sert à franchir l''obstacle plutôt qu''à le repérer.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q27', 'exam_eps_2025_didactics_nov_lycee', 27, 'Généralités sur la didactique et la pédagogie en EPS', 'Dans la théorie de l''action conjointe, l''action didactique de l''enseignant d''EPS est conçue comme :', false, '[{"id": "A", "text": "Un jeu auquel les apprenants doivent prêter attention pour parvenir à s''approprier des manières de faire par répétition et imitation de l''enseignant."}, {"id": "B", "text": "Un jeu auquel l''enseignant doit définir et démontrer les actions des apprenants à réaliser en vue d''obtenir des réponses à ses intentions didactiques."}, {"id": "C", "text": "Un jeu auquel les apprenants doivent prêter attention pour parvenir à retenir et appliquer des consignes d''action verbalisées par l''enseignant."}, {"id": "D", "text": "Un jeu auquel l''enseignant doit définir et ajuster les actions des apprenants en vue d''obtenir des réponses induites par la structuration du milieu didactique."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'La théorie de l''action conjointe en didactique (Sensevy, Mercier) décrit l''enseignement comme un jeu à deux : l''enseignant définit la tâche, régule et dévolue, et l''élève produit sa réponse en agissant sur un milieu que l''enseignant a aménagé. La réponse doit venir du milieu, pas d''une démonstration à reproduire. Les options A, B et C décrivent une transmission par imitation ou par consignes, que cette théorie cherche à dépasser.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q28', 'exam_eps_2025_didactics_nov_lycee', 28, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'La formation des groupes de performance dans une classe d''EPS permet :', false, '[{"id": "A", "text": "D''établir un rapport de force équilibré mais engendrant de l''incertitude du résultat."}, {"id": "B", "text": "D''intégrer des élèves de niveaux différents mais présentant des lacunes communes."}, {"id": "C", "text": "De soutenir les élèves en difficulté en bénéficiant de l''appui de ceux qui sont à l''aise."}, {"id": "D", "text": "De faciliter la coopération entre les élèves en profitant de l''engagement de chacun."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], '⚠ Le corrigé publié retient C : des groupes constitués autour de la performance permettent aux élèves à l''aise d''épauler ceux qui sont en difficulté. Une autre lecture se défend : un groupe de performance rassemble des élèves de niveau proche (groupe homogène), ce qui crée un rapport de force équilibré et un résultat incertain, soit l''option A. Dans cette lecture, l''option C décrit plutôt le groupe hétérogène fondé sur le tutorat, et B le groupe de besoin.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, '«للتحقق» — النقطة قابلة للنقاش عند mesconcours (قراءة بديلة: أ). دراسة Bordes (Revue EPS n°298) تعرّف التجميع المتجانس بأنه توزيع التلاميذ «حسب نفس مستويات المهارة أو الأداء»، بينما دعم التلاميذ في صعوبة بمساعدة المرتاحين هو تجميع غير متجانس (tutorat). فمجموعة الأداء — المتجانسة المستوى — تنتج علاقة قوى متوازنة ونتيجة غير مؤكدة (أ). الجواب المسجَّل هو جواب التصحيح المنشور (ج).')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q29', 'exam_eps_2025_didactics_nov_lycee', 29, 'Généralités sur la didactique et la pédagogie en EPS', 'En EPS, le modèle didactique dialectique implique :', false, '[{"id": "A", "text": "Une analyse de l''activité sportive, sous forme de schèmes et d''invariants spatiotemporels, identifiée à partir d''une abstraction des points communs entre différentes situations."}, {"id": "B", "text": "Une analyse de l''activité sportive, sous forme de techniques gestuelles et tactiques, identifiée à partir d''une observation du comportement d''un joueur de haut niveau."}, {"id": "C", "text": "Une analyse de l''activité sportive, basée sur une démarche interactive et évolutive ou les échanges sont au cœur des apprentissages."}, {"id": "D", "text": "Une analyse de l''activité sportive, sous forme de ressources et de pouvoirs moteurs, identifiée à partir d''une modélisation des niveaux de jeu des pratiquants."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Le modèle dialectique pense l''apprentissage comme un va-et-vient entre l''action et la réflexion, entre l''élève, ses partenaires et l''enseignant : les échanges et les ajustements successifs font progresser la compréhension du jeu. L''option B renvoie au modèle techniciste, calqué sur le champion. L''option A relève d''une analyse structurale par principes et invariants, et D d''une modélisation par niveaux de jeu.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q30', 'exam_eps_2025_didactics_nov_lycee', 30, 'Méthodes et approches pédagogiques en EPS', 'Dans une logique constructiviste, l''enseignant d''EPS favorise l''apprentissage quand il :', false, '[{"id": "A", "text": "Place l''élève dans un contexte émotionnel et fonctionnel favorable pour qu''il puisse manipuler dans l''action ce qu''il faut appliquer pour apprendre."}, {"id": "B", "text": "Place l''élève devant un problème qu''il sait résoudre tout en donnant des consignes sur les actions qu''il s''en sert pour apprendre."}, {"id": "C", "text": "Place l''élève face à un milieu dans lequel il utilise consciemment des règles d''action pour solutionner les problèmes auxquels il est confronté."}, {"id": "D", "text": "Place l''élève dans des conditions où il répète plusieurs fois la même action pour résoudre les défauts auxquels il est confronté."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Pour le constructivisme, l''élève apprend en agissant sur un milieu qui lui pose problème, puis en dégageant lui-même les règles d''action qui lui permettent de réussir. La répétition d''une même action pour corriger ses défauts (D) relève d''une logique behavioriste. Un problème déjà maîtrisé accompagné de consignes (B) ne laisse rien à construire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q31', 'exam_eps_2025_didactics_nov_lycee', 31, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'L''enseignant d''EPS donne l''occasion à l''apprenant de réagir efficacement face à ses erreurs lorsqu''il :', false, '[{"id": "A", "text": "Porte un jugement de valeur en fournissant une information sur la faiblesse de la prestation de l''apprenant."}, {"id": "B", "text": "Explique le comportement moteur de l''apprenant en fournissant une information à posteriori sur son activité."}, {"id": "C", "text": "Interprète le comportement moteur de l''apprenant en fournissant une information pendant son activité."}, {"id": "D", "text": "Explique le comportement moteur de l''apprenant en fournissant une information après son activité."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Pour corriger une erreur, l''élève a besoin d''une information qu''il peut encore utiliser : le feedback donné pendant l''action, après interprétation de ce qui se passe, lui permet d''ajuster sa réponse sur le moment. Un jugement de valeur (A) pointe la faiblesse sans dire quoi changer. Les informations données après coup (B et D) décrivent la prestation une fois terminée et ne laissent pas l''élève réagir dans l''action.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q32', 'exam_eps_2025_didactics_nov_lycee', 32, 'Méthodes et approches pédagogiques en EPS', 'L''enseignant d''EPS construit ses pratiques pédagogiques en répondant aux besoins d''accomplissement du groupe classe lorsqu''il :', false, '[{"id": "A", "text": "Favorise la mise en place d''un but communément partagé pour que le groupe réalise un projet d''action collectif."}, {"id": "B", "text": "Favorise l''investissement de tous par la mise en place et l''occupation de rôles sociaux au sein du groupe classe."}, {"id": "C", "text": "Instaure un climat affectif positif d''écoute, d''entraide et de concertations organisées entre les membres du groupe classe."}, {"id": "D", "text": "Favorise un ressenti affectif positif basé sur une dynamique relationnelle entre les membres du groupe classe."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Le besoin d''accomplissement d''un groupe se satisfait par la réussite d''une tâche commune : un but partagé et un projet d''action collectif donnent au groupe quelque chose à réaliser ensemble. Le climat d''écoute (C) et le ressenti affectif positif (D) répondent plutôt au besoin d''affiliation, c''est-à-dire aux relations entre les membres. Les rôles sociaux (B) organisent l''engagement de chacun sans fixer d''objectif commun.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q33', 'exam_eps_2025_didactics_nov_lycee', 33, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Pour que la verbalisation constitue une aide à l''apprentissage de l''apprenant, l''enseignant d''EPS doit :', false, '[{"id": "A", "text": "Déstabiliser les représentations initiales de l''apprenant afin de l''amener à mobiliser autrement ses propres ressources."}, {"id": "B", "text": "Engager l''apprenant dans un conflit sociocognitif afin de l''amener à résoudre le problème posé par la tâche."}, {"id": "C", "text": "Guider l''apprenant vers l''identification des stratégies efficaces à mettre en œuvre en vue de réaliser la tâche."}, {"id": "D", "text": "Offrir à l''apprenant l''opportunité de s''exprimer afin qu''il puisse entrevoir d''autres solutions au problème posé par la tâche."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La verbalisation aide l''élève quand elle l''oblige à mettre en mots ce qui marche : l''enseignant le guide, par ses questions, vers les stratégies efficaces et les conditions de réussite de la tâche. Laisser simplement l''élève s''exprimer (D) ne garantit pas cette prise de conscience. Le conflit sociocognitif (B) et la déstabilisation des représentations (A) relèvent d''autres leviers : l''interaction entre pairs et la remise en cause des conceptions initiales.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q34', 'exam_eps_2025_didactics_nov_lycee', 34, 'Évaluation des apprentissages en EPS', 'En EPS, l''apprenant régule ses actions dans un processus évaluatif lorsqu''il :', false, '[{"id": "A", "text": "Adopte une attitude réceptive vis-à-vis de ses propres actions en attendant le jugement de l''enseignant."}, {"id": "B", "text": "Identifie les conditions d''efficacité de son action en les reliant au résultat obtenu dans la perspective de certification."}, {"id": "C", "text": "Assimile les opérations à effectuer pour réussir l''action en s''appropriant les critères de réalisation de la tache."}, {"id": "D", "text": "Connaitre le résultat de ses actions à partir d''une situation de référence en prise avec son niveau de maitrise attendu."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Réguler son action dans un processus évaluatif, c''est mettre en relation ce qu''on a fait (les conditions d''efficacité de l''action) et ce qu''on a obtenu (le résultat), pour savoir quoi modifier : c''est ce que décrit B. L''option C, l''appropriation des critères de réalisation, décrit plutôt le processus d''apprentissage de la tâche, et D se limite à connaître un résultat sans l''expliquer. A est l''inverse d''une régulation : l''élève attend passivement le jugement de l''enseignant.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q35', 'exam_eps_2025_didactics_nov_lycee', 35, 'Compétences, objectifs et contenus en EPS', 'Le choix d''une forme de pratique scolaire d''une APS doit permettre à l''enseignant de :', false, '[{"id": "A", "text": "Faire vivre à l''apprenant une expérience culturelle similaire à celle réellement vécue par le pratiquant dans la culture sportive d''origine."}, {"id": "B", "text": "Favoriser la mise en activité de l''apprenant en le confrontant à des tâches qui lui ouvrent la possibilité de valider un niveau de compétence."}, {"id": "C", "text": "Offrir à l''apprenant une culture sportive de référence qui reflète l''expérience authentique d''un pratiquant de haut niveau."}, {"id": "D", "text": "Favoriser la mise en activité de l''apprenant en le confrontant à des situations qui lui permettent de perfectionner son niveau."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], '⚠ La correction publiée retient C : la forme de pratique scolaire donne accès à une culture sportive de référence. Une autre lecture défend B : une forme de pratique scolaire est une transposition de l''APS adaptée aux élèves, conçue pour qu''ils puissent valider un niveau de compétence, et non la reproduction de l''expérience d''un sportif de haut niveau. Dans cette lecture, C et A décrivent la pratique sociale de référence elle-même, sans l''adaptation scolaire qui définit justement la forme de pratique scolaire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, 'تعارض موثّق — الجواب المسجَّل هنا هو ب، بينما مفتاح mesconcours يعطي ج. دليلان مستقلان يؤيدان ب: (1) الورقة المعلَّمة على Scribd تضع العلامة على ب بوضوح («Favoriser la mise en activité… valider un niveau de compétence»)؛ (2) التعريف الأكاديمي (HEP-BEJUNE): «شكل الممارسة المدرسية… مشروع ديداكتيكي يستعيد الخصائص الأساسية للممارسة الاجتماعية المرجعية مع تكييفها مع السياق المدرسي»، و«التربية البدنية لا تهدف إلى نقل ثقافة الرياضة عالية المستوى إلى التلاميذ» — ما ينقض صياغة ج («تجربة أصيلة لممارس من المستوى العالي»). وmesconcours نفسه يضع ⚠ على هذه النقطة ويعرض ب كقراءة بديلة.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q36', 'exam_eps_2025_didactics_nov_lycee', 36, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En EPS, le processus d''apprentissage envisagé dans un modèle écologique se caractérise par :', false, '[{"id": "A", "text": "Des mécanismes par lesquels les interactions entre pairs suscitent un besoin d''entraide et favorisent un apprentissage coopératif."}, {"id": "B", "text": "Des systèmes par lesquels les règles du mouvement se construisent à l''aide des connaissances antérieures et s''adaptent au contexte."}, {"id": "C", "text": "Des modes de coordination par lesquels les réponses motrices s''auto organisent selon le couplage perception et action issu de l''environnement."}, {"id": "D", "text": "Des modèles par lesquels les reproductions se concrétisent selon la qualité des excitations et se renforcent via des répétitions."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], '⚠ Le modèle écologique (Gibson, puis l''approche dynamique de Delignières) décrit un apprentissage où les réponses motrices s''auto-organisent à partir du couplage entre perception et action, sous les contraintes de la tâche, de l''organisme et de l''environnement : c''est la proposition C. La correction personnelle publiée retient B, mais des règles du mouvement construites à partir des connaissances antérieures relèvent du modèle cognitiviste (théorie du schéma de Schmidt), celui auquel l''approche écologique s''oppose. D décrit le behaviorisme et A l''apprentissage coopératif.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, 'نقطة صحّحها mesconcours نفسه: التصحيح الشخصي المنشور (epsmaroc) كان يعطي ب، وmesconcours قلبها إلى ج بعد إعادة التحقق. التحقق المستقل يؤكد ج بقوة: النموذج الإيكولوجي (Gibson؛ Escalié، STAPS Bordeaux؛ وثيقة «Ecological Theories of Perception and Action») يُعرَّف بالتنظيم الذاتي للاستجابات الحركية انطلاقاً من التزاوج إدراك–فعل، ويرفض صراحةً التفسيرات القائمة على الذاكرة/المخططات (نظرية المخطط لـSchmidt) التي هي معرفية — أي أن ب تنتمي إلى النموذج المعرفي لا الإيكولوجي. والورقة المعلَّمة على Scribd تضع العلامة على ج أيضاً.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q37', 'exam_eps_2025_didactics_nov_lycee', 37, 'Généralités sur la didactique et la pédagogie en EPS', 'Choisis l''axe prioritaire que devra prendre en compte l''enseignant didacticien :', false, '[{"id": "A", "text": "Les modèles explicatifs des logiques internes de ses activités et des enjeux de formation."}, {"id": "B", "text": "Le triangle didactique qui met en avant les processus enseigner, former et apprendre."}, {"id": "C", "text": "Le système d''attentes réciproques entre le professeur et les élèves."}, {"id": "D", "text": "Les processus d''apprentissage des élèves et le savoir à enseigner."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Le système d''attentes réciproques entre le professeur et les élèves est la définition du contrat didactique de Brousseau, qui règle ce que chacun attend de l''autre à propos du savoir en jeu. B confond le triangle didactique (enseignant, élève, savoir) avec les trois processus du triangle pédagogique de Houssaye (enseigner, former, apprendre). D reste proche, puisque la didactique étudie aussi le rapport entre l''élève et le savoir à enseigner, mais il ne nomme pas l''axe qui relie le professeur et les élèves autour de ce savoir.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q38', 'exam_eps_2025_didactics_nov_lycee', 38, 'Généralités sur la didactique et la pédagogie en EPS', 'Dans sa pratique pédagogique, l''enseignant d''EPS recherche de manière privilégiée à :', false, '[{"id": "A", "text": "Permettre aux élèves d''être compétitifs dans les différentes activités physiques et sportives."}, {"id": "B", "text": "Développer chez les élèves le sens de la responsabilité et le respect d''autrui et la pratique de toutes les activités physiques et sportives."}, {"id": "C", "text": "Aider les élèves à mobiliser et développer leurs ressources dans la pratique des différentes activités physiques et sportives."}, {"id": "D", "text": "Aider les élèves à devenir socialement intégrés par la pratique des différentes activités physiques et sportives."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Les orientations pédagogiques de l''EPS placent au centre le développement des ressources de l''élève (motrices, cognitives, affectives et sociales), que la pratique des APS permet de mobiliser et de construire. La compétitivité (A) n''est pas une finalité scolaire, et l''intégration sociale (D) ou la responsabilité (B) ne sont qu''une partie de ces ressources. B demande en plus la pratique de toutes les APS, ce qu''aucun programme ne vise.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q39', 'exam_eps_2025_didactics_nov_lycee', 39, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En EPS, il y a apprentissage lorsque celui-ci est :', false, '[{"id": "A", "text": "Mobilisateur des ressources cognitives, motrices et affectives de l''élève."}, {"id": "B", "text": "Supposé s''accomplir par une adaptation spontanée de l''apprenant au milieu créé par la situation."}, {"id": "C", "text": "Révélateur d''un pourcentage élevé de critères de réussite."}, {"id": "D", "text": "Déclencheur de la motivation de l''élève et source de son épanouissement psychomoteur."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Un apprentissage en EPS suppose que l''élève engage l''ensemble de ses ressources, cognitives, motrices et affectives, pour transformer sa motricité. Un taux élevé de critères de réussite (C) peut traduire une tâche trop facile où l''élève répète ce qu''il sait déjà. La motivation (D) favorise l''apprentissage sans le définir, et l''adaptation spontanée (B) néglige le rôle de l''enseignant dans la situation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q40', 'exam_eps_2025_didactics_nov_lycee', 40, 'Évaluation des apprentissages en EPS', 'En EPS l''évaluation formatrice a pour fonction d''aider les élèves à :', false, '[{"id": "A", "text": "S''assurer de leurs réussites en mettant l''accent sur la valeur de leurs résultats."}, {"id": "B", "text": "Détecter les difficultés en vue d''apporter les remédiations nécessaires."}, {"id": "C", "text": "Stabiliser les connaissances en auto- contrôlant les procédures."}, {"id": "D", "text": "Porter un regard positif sur leurs prestations en vue d''une meilleure motivation."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'L''évaluation formatrice (Nunziati, Bonniol) confie la régulation à l''élève lui-même : en s''appropriant les critères, il contrôle ses propres procédures, ce qui stabilise ses acquis. B est le piège : détecter les difficultés pour proposer des remédiations décrit l''évaluation formative, conduite par l''enseignant. A et D parlent du résultat et de la motivation, pas du contrôle des procédures.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q41', 'exam_eps_2025_didactics_nov_lycee', 41, 'Généralités sur la didactique et la pédagogie en EPS', 'L''enseignement de l''EPS s''articule autour :', false, '[{"id": "A", "text": "D''une démarche d''appropriation du savoir par les élèves et de transmission par l''enseignant."}, {"id": "B", "text": "D''une organisation intentionnelle d''apprentissage dans le cadre d''un projet social de communication et de diffusion de connaissances déterminées."}, {"id": "C", "text": "D''un découpage de contenu d''enseignement apprentissage de manière séquentielle afin de favoriser les acquisitions chez les élèves de manière progressive."}, {"id": "D", "text": "D''une méthode d''enseignement susceptible d''aider les élèves à acquérir les savoir enseignés."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Enseigner l''EPS, c''est organiser de façon intentionnelle des situations d''apprentissage au service d''un projet social : l''école transmet des connaissances choisies, à des élèves donnés, pour des finalités définies. La proposition A ne décrit que les deux pôles élève et enseignant, et C et D ne parlent que d''un découpage ou d''une méthode, qui sont des moyens et non le fondement de l''enseignement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q42', 'exam_eps_2025_didactics_nov_lycee', 42, 'Compétences, objectifs et contenus en EPS', 'Les compétences méthodologiques et sociales visent principalement :', false, '[{"id": "A", "text": "L''acquisition chez les élèves des capacités de communication, de gestion et d''organisation de ses apprentissages."}, {"id": "B", "text": "L''appropriation d''outils, de démarches, de savoirs et de savoir-être nécessaire aux pratiques et aux apprentissages."}, {"id": "C", "text": "Le réinvestissement des habiletés transversales dans des disciplines voisines."}, {"id": "D", "text": "Le développement des capacités de dialogue d''argumentation et de communication."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Les compétences méthodologiques et sociales portent sur les outils, les démarches, les savoirs et les savoir-être dont l''élève a besoin pour pratiquer et pour apprendre : s''organiser, respecter les règles, tenir un rôle, s''évaluer. A et D n''en retiennent qu''une partie (communication, organisation, dialogue), et C décrit le transfert vers d''autres disciplines, qui est une conséquence possible et non leur visée principale.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q43', 'exam_eps_2025_didactics_nov_lycee', 43, 'Généralités sur la didactique et la pédagogie en EPS', 'L''une des préoccupations majeures de la didactique consiste à étudier :', false, '[{"id": "A", "text": "Les variables didactiques susceptibles de donner à l''élève la possibilité d''apprendre malgré les difficultés qu''il rencontre."}, {"id": "B", "text": "Les conditions de la transposition didactique, ses contraintes, les écueils à éviter, les précautions à prendre en compte."}, {"id": "C", "text": "Les situations didactiques variées et diversifiées pour enrichir le répertoire moteur des élèves."}, {"id": "D", "text": "Les obstacles à l''apprentissage auxquels l''élève est confronté."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], 'La didactique étudie d''abord la transformation d''un savoir de référence en savoir à enseigner puis en savoir enseigné (Chevallard) : ses conditions, ses contraintes et les dérives à éviter. Les variables didactiques (A), les situations variées (C) et les obstacles (D) sont des objets d''étude plus particuliers, qui découlent de ce travail de transposition.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q44', 'exam_eps_2025_didactics_nov_lycee', 44, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En EPS, les variables didactiques dites coordinatives :', false, '[{"id": "A", "text": "Font référence à la coordination entre les dimensions du temps et de l''espace pour améliorer la performance."}, {"id": "B", "text": "Combinent à la fois des informations perceptivo-décisionnelles et kinesthésiques en vue de la maitrise spatio-temporelle."}, {"id": "C", "text": "S''articulent autour des qualités motrices et psychomotrices susceptibles d''offrir à l''élève la réalisation d''une prestation acceptable."}, {"id": "D", "text": "Font allusion aux changements opérés dans la situation d''enseignement afin de permettre à l''élève d''accéder à l''apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Une variable coordinative agit sur la mise en relation des informations prises dans l''environnement (perception, décision) et des informations issues du corps (kinesthésie), pour ajuster le geste dans l''espace et dans le temps. A est trop vague : elle cite le temps et l''espace sans dire sur quelles informations porte la variable. D donne la définition générale de toute variable didactique, pas celle des variables coordinatives.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q45', 'exam_eps_2025_didactics_nov_lycee', 45, 'Compétences, objectifs et contenus en EPS', 'Dans un contenu d''apprentissage en course de haie, un élève de tronc commun doit :', false, '[{"id": "A", "text": "Maitriser le rapport course d''élan attaque de la première haie genou haut."}, {"id": "B", "text": "Courir vite avant et après le franchissement avec une impulsion loin de la haie."}, {"id": "C", "text": "Réaliser des reprises d''appuis dynamiques après le franchissement en se référant au rythme spécifique du coureur de haies."}, {"id": "D", "text": "Réaliser le parcours le plus performant en choisissant le couloir le plus adapté aux ressources du moment."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Au tronc commun, le contenu porte sur la continuité de la course : reprendre des appuis dynamiques à la réception et conserver le rythme entre les haies. D est tentante, mais elle formule une compétence attendue (choisir son couloir pour réaliser la meilleure performance), pas un contenu d''apprentissage. A et B visent des éléments techniques plus fins, propres à un niveau plus avancé.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q46', 'exam_eps_2025_didactics_nov_lycee', 46, 'Compétences, objectifs et contenus en EPS', 'En didactique du volley Ball, il s''agit de mettre les élèves dans une :', false, '[{"id": "A", "text": "Organisation collective en attaque et en défense pour mettre place un schéma tactique cohérent et efficace."}, {"id": "B", "text": "Organisation collective basée sur une stratégie qui prend en compte les points forts et les points faibles de l''équipe adverse."}, {"id": "C", "text": "Organisation collective en attaque pour créer la rupture et en défense et pour maintenir la continuité."}, {"id": "D", "text": "Organisation collective en attaque et en défense pour basculer le rapport de force en faveur de sa propre équipe."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Le volley-ball oppose deux équipes de part et d''autre d''un filet : l''équipe qui attaque cherche à rompre l''échange en faisant tomber le ballon chez l''adversaire, celle qui défend cherche à empêcher la chute et à prolonger l''échange. C''est cette logique interne, rupture contre continuité, qui organise sa didactique. A, B et D valent pour n''importe quel sport collectif et ne disent rien de propre au volley-ball.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q47', 'exam_eps_2025_didactics_nov_lycee', 47, 'Généralités sur la didactique et la pédagogie en EPS', 'La didactique des APS procède à :', false, '[{"id": "A", "text": "Une orientation particulière traitant les différents parcours d''enseignement liés à la discipline EPS."}, {"id": "B", "text": "Une méthode spécifique cherchant l''unité et la cohérence des traitements des différentes APS."}, {"id": "C", "text": "Une analyse centrée sur les contenus spécifiques des activités physiques et sportives."}, {"id": "D", "text": "Une réflexion sur le cadre conceptuel et méthodologique commun entre les APS."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'La didactique d''une APS (natation, handball, gymnastique...) analyse ce que cette activité a de propre : sa logique interne, ses problèmes fondamentaux, les contenus qu''elle permet d''enseigner. B et D décrivent au contraire la recherche d''un cadre commun à toutes les APS, ce qui relève de la didactique de l''EPS comme discipline.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q48', 'exam_eps_2025_didactics_nov_lycee', 48, 'Compétences, objectifs et contenus en EPS', 'Les compétences spécifiques se caractérisent par le fait qu''elles sont :', false, '[{"id": "A", "text": "Académiques, acquises au cours d''un cursus scolaire d''étude et de formation."}, {"id": "B", "text": "Relatives au soft skills indispensables pour le management des groupes sportifs."}, {"id": "C", "text": "Techniques réinvestissables pour agir avec aisance."}, {"id": "D", "text": "Applicables, finalisées à caractère professionnel."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'Dans l''approche par compétences, une compétence spécifique est liée à une tâche ou à une famille de situations précises : elle est directement applicable et finalisée, comme une compétence professionnelle l''est pour un métier. Elle s''oppose à la compétence transversale, qui se réinvestit d''un domaine à l''autre. C est le piège : le réinvestissement est justement le trait des compétences transversales.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q49', 'exam_eps_2025_didactics_nov_lycee', 49, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'En EPS, il y a situation d''apprentissage quand l''élève :', false, '[{"id": "A", "text": "Confronte la tâche avec l''objectif de la réussir."}, {"id": "B", "text": "Surmonte l''obstacle qui est alors un véritable objectif d''acquisition."}, {"id": "C", "text": "Apprend, progresse, et s''entraîne afin de transformer des acquis antérieurs et d''acquérir un nouveau savoir."}, {"id": "D", "text": "Traite deux types d''activités cognitives qui sont le traitement d''information et l''alternance décisionnelle."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Une situation d''apprentissage se reconnaît à ce qu''elle transforme l''élève : il part de ses acquis, progresse par la répétition et construit un savoir nouveau. B est tentante parce qu''elle reprend l''objectif-obstacle (Martinand, Meirieu), mais elle définit la situation-problème, qui n''est qu''une forme particulière de situation d''apprentissage. A décrit une simple situation de réalisation, où l''élève cherche à réussir sans forcément apprendre.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q50', 'exam_eps_2025_didactics_nov_lycee', 50, 'Généralités sur la didactique et la pédagogie en EPS', 'La matrice disciplinaire pour l''EPS se compose :', false, '[{"id": "A", "text": "Des objectifs généraux les objets, des objectifs spécifiques, des modules et des compétences."}, {"id": "B", "text": "Des finalités éducatives, des orientations pédagogiques, des modalités d''évaluation et des procédures de programmations."}, {"id": "C", "text": "Des aptitudes, des capacités, des compétences, des situations d''enseignement apprentissage."}, {"id": "D", "text": "Buts poursuivis, pratique sociale de référence, contenus à enseigner, méthodes, et des modalités d''évaluation."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'La matrice disciplinaire (Develay, reprise en EPS) donne son identité à une discipline : les buts qu''elle poursuit, les pratiques sociales auxquelles elle se réfère, les contenus qu''elle enseigne, ses méthodes et sa façon d''évaluer. B ressemble à un texte officiel (finalités, orientations, programmation), A et C à des listes d''objectifs ou de capacités : ce sont des éléments d''un curriculum, pas la matrice qui définit la discipline.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q51', 'exam_eps_2025_didactics_nov_lycee', 51, 'Généralités sur la didactique et la pédagogie en EPS', 'En EPS, la performance didactique désigne :', false, '[{"id": "A", "text": "Un niveau de prestation en termes de qualités physiques et techniques mobilisées par les apprenants dans le champ d''une pratique sportive."}, {"id": "B", "text": "Un niveau de maitrise qui associe les prestations des apprenants aux savoirs mis en jeu dans une pratique sportive."}, {"id": "C", "text": "Un niveau de perfectionnement qui met en lien les productions des apprenants et leur qualité d''entrainement dans une pratique sportive."}, {"id": "D", "text": "Un niveau de progrès qui relie les activités des apprenants aux actions d''un enseignant autour d''un savoir mis en jeu dans une pratique sportive."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La performance didactique ne se réduit pas au résultat chiffré : elle situe le niveau de maîtrise atteint par l''élève en reliant ce qu''il produit aux savoirs que l''activité met en jeu. La proposition A décrit la performance sportive au sens strict (qualités physiques et techniques), sans référence aux savoirs enseignés. D parle de progrès et de l''action de l''enseignant, ce qui relève du processus d''enseignement, pas du niveau atteint.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q52', 'exam_eps_2025_didactics_nov_lycee', 52, 'Généralités sur la didactique et la pédagogie en EPS', 'En didactique de l''EPS, il s''agit de :', false, '[{"id": "A", "text": "Mettre en place un scénario d''enseignement efficace qui prend en compte les difficultés réelles des élèves."}, {"id": "B", "text": "Elaborer des démarches d''intervention sur le champ de travail pour agir sur les variables didactiques."}, {"id": "C", "text": "Mettre l''accent sur la relation enseignant enseigné pour faciliter les apprentissages chez les élèves."}, {"id": "D", "text": "Mettre en place les facteurs extérieurs qui influencent les processus d''apprentissage."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'La didactique s''intéresse aux contenus et à la manière de les rendre apprenables : l''enseignant construit ses démarches d''intervention en jouant sur les variables didactiques (espace, nombre de joueurs, règles, matériel) pour provoquer les transformations visées. La relation enseignant-enseigné (C) et la gestion des facteurs extérieurs à l''apprentissage (D) relèvent plutôt de la pédagogie. A décrit un scénario efficace en général, sans ce lien aux variables didactiques.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q53', 'exam_eps_2025_didactics_nov_lycee', 53, 'Méthodes et approches pédagogiques en EPS', 'En EPS, la notion de moyens/outils didactiques et pédagogiques correspond à :', false, '[{"id": "A", "text": "La méthodologie du choix des outils et leur fonctionnalité interactive pour le développement des apprentissages moteurs."}, {"id": "B", "text": "La mise en place des supports pédagogiques par l''enseignant et les élèves au cours de leçons d''EPS."}, {"id": "C", "text": "L''ensemble des démarches de l''enseignant pour aider à résoudre les problèmes et développer de nouvelles réponses motrices."}, {"id": "D", "text": "La mise en place des outils pédagogiques en fonction du style d''apprentissage approprié."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Les moyens didactiques et pédagogiques ne désignent pas seulement le matériel : ce sont toutes les démarches que l''enseignant mobilise (situations, consignes, aménagements, régulations) pour aider l''élève à résoudre un problème moteur et à construire de nouvelles réponses. B et D réduisent la notion aux supports et aux outils matériels mis en place. A parle de la méthode de choix des outils, pas des moyens eux-mêmes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q54', 'exam_eps_2025_didactics_nov_lycee', 54, 'Compétences, objectifs et contenus en EPS', 'En sport collectif, il s''agit :', false, '[{"id": "A", "text": "D''une opposition qui comprend les jeux en opposition indirecte : jeu en parallèle, jeu en opposition simultanée, jeu à camps différenciés et les jeux d''opposition directe et interpénétrée."}, {"id": "B", "text": "De gérer son activité au cours d''une rencontre ou le joueur est appelé à agir en soulevant plusieurs problèmes notamment le domaine de l''espace/temps et celui de l''information."}, {"id": "C", "text": "De résoudre en acte, à plusieurs et simultanément, des cascades de problèmes non prévus à priori dans leur ordre d''apparition, leur fréquence et leur complexité."}, {"id": "D", "text": "De gérer une opposition tout en se basant sur une collaboration en attaque et en défense pour basculer le rapport de force en sa faveur."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'C reprend la définition classique du jeu collectif (Deleplace, Gréhaigne) : les joueurs résolvent en acte, ensemble et en même temps, une suite de problèmes que personne ne peut prévoir dans leur ordre, leur fréquence ou leur complexité. A est une classification des activités d''opposition, pas une définition du sport collectif. D décrit bien le rapport de force, mais pas la nature imprévisible des problèmes que pose le jeu.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q55', 'exam_eps_2025_didactics_nov_lycee', 55, 'Compétences, objectifs et contenus en EPS', 'Dans un rapport d''opposition en sport collectif, il s''agit de :', false, '[{"id": "A", "text": "Réaliser une coordination d''actions afin de récupérer, conserver et faire progresser le ballon vers la zone de marque et marquer."}, {"id": "B", "text": "Utiliser un outil fidèle et fiable qui permet d''évaluer la totalité des comportements de jeu."}, {"id": "C", "text": "Juxtaposer les actions individuelles en vue de contrecarer des intentions adverses de domination et de maitrise du ballon."}, {"id": "D", "text": "Renverser le rapport de force en sa faveur en se basant essentiellement sur l''observation vidéo de l''adversaire."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'C''est la définition du rapport d''opposition donnée par Gréhaigne : une équipe coordonne ses actions pour récupérer, conserver et faire progresser le ballon jusqu''à la zone de marque, puis marquer. C est le piège : des actions individuelles juxtaposées ne font pas une coordination collective. B relève de l''évaluation et D fait reposer le rapport de force sur un outil d''analyse, ce qui n''est pas le jeu lui-même.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q56', 'exam_eps_2025_didactics_nov_lycee', 56, 'Méthodes et approches pédagogiques en EPS', 'En EPS, la pédagogie du contrat est surtout basée sur :', false, '[{"id": "A", "text": "La négociation, le choix et la nature des taches à effectuer."}, {"id": "B", "text": "L''individualisation de l''enseignement pour que l''élève choisit lui même son itinéraire d''apprentissage."}, {"id": "C", "text": "Le travail par groupe de pairs à potentialités hétérogènes pour s''entraider l''un avec l''autre."}, {"id": "D", "text": "L''agencement des attentes de l''enseignant avec celles de l''élève."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'La pédagogie du contrat repose sur une négociation entre l''enseignant et l''élève : ensemble, ils s''accordent sur les tâches à réaliser, leur nature et les conditions de réussite, et l''élève s''engage à les tenir. D est tentant, mais accorder les attentes des deux parties est un effet du contrat, pas sa base. B décrit la pédagogie différenciée et C le travail coopératif entre pairs.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q57', 'exam_eps_2025_didactics_nov_lycee', 57, 'Mise en œuvre de l''enseignement et processus d''acquisition', '« Vous devez aller marquer le plus de paniers possibles » est une expression qui montre que :', false, '[{"id": "A", "text": "La situation problème exige de marquer le plus grand nombre de panier pour réaliser le meilleur score."}, {"id": "B", "text": "La situation problème à laquelle les élèves sont confrontés est une source de motivation puisqu''elle comporte l''action de marquer le panier."}, {"id": "C", "text": "La situation d''enseignement apprentissage proposée est semi-définie."}, {"id": "D", "text": "La situation problème que les élèves vont affronter suppose des actions rapides et coordonnées."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'Dans la typologie des tâches de Famose, une tâche semi-définie précise le but à atteindre sans imposer les opérations pour y parvenir. La consigne « marquer le plus de paniers possibles » fixe le but et laisse aux élèves le choix des moyens. A se contente de reformuler la consigne, et B comme D lui prêtent des effets (motivation, rapidité) qu''elle ne dit pas.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q58', 'exam_eps_2025_didactics_nov_lycee', 58, 'Observation des apprentissages en EPS', 'On parle d''observation objective en EPS si :', false, '[{"id": "A", "text": "La marge d''erreur de l''outil utilisé est dérisoire par rapport aux résultats collectés."}, {"id": "B", "text": "Le degré de concordance entre les observateurs d''un même groupe est élevé."}, {"id": "C", "text": "La mesure d''une variable donnée d''un instrument est constante."}, {"id": "D", "text": "La précision du test utilisé mesure vraiment ce qu''il est censé mesurer."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'L''objectivité d''une observation se vérifie par l''accord entre observateurs : si plusieurs personnes qui observent le même élève avec le même outil aboutissent au même résultat, l''observation ne dépend pas de celui qui la fait. C décrit la fidélité (une mesure stable d''une fois à l''autre) et D la validité (mesurer ce qu''on prétend mesurer). Ce sont les deux autres qualités d''un outil, distinctes de l''objectivité.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q59', 'exam_eps_2025_didactics_nov_lycee', 59, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Dans une leçon d''EPS, l''apprenant bénéficie amplement du feedback si :', false, '[{"id": "A", "text": "Il est sur la voie de réussite."}, {"id": "B", "text": "Il est stressé par la tâche à accomplir."}, {"id": "C", "text": "Il a fréquemment reçu plusieurs feedbacks."}, {"id": "D", "text": "Il est arrivé au bout de ses répétitions."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'Le feedback est le plus utile quand l''élève est déjà engagé dans la bonne direction : l''information sur sa réponse l''aide à ajuster un geste presque acquis et renforce ce qui marche. C est le piège : des feedbacks trop fréquents rendent l''élève dépendant de l''enseignant et freinent l''apprentissage (hypothèse du guidage). Le stress (B) et la fatigue de fin de répétitions (D) réduisent au contraire sa capacité à traiter l''information.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_didactics_nov_lycee_q60', 'exam_eps_2025_didactics_nov_lycee', 60, 'Méthodes et approches pédagogiques en EPS', 'En EPS, le style d''enseignement mis en œuvre est étroitement lié aux :', false, '[{"id": "A", "text": "Compétences recherchées."}, {"id": "B", "text": "Caractéristiques psychosociologiques des élèves."}, {"id": "C", "text": "Aptitudes et aux habiletés des élèves."}, {"id": "D", "text": "Au vécu sportif des élèves qui a un impact sur leur progrès."}, {"id": "E", "text": "Aucun de ces choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Le style d''enseignement (directif, par résolution de problèmes, par découverte guidée…) se choisit d''abord en fonction de qui sont les élèves : leur âge, leur autonomie, leur rapport au groupe et à l''activité. C et D ne retiennent qu''un aspect du public, ses habiletés ou son passé sportif. A reste défendable, puisque Mosston relie chaque style aux objectifs visés, mais la clé retenue privilégie le public auquel le style s''adresse.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2025-614/', false, NULL)
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
