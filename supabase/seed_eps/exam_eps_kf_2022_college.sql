-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022)
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك التربية البدنية - الكفاءة المهنية - الإعدادي - دورة 2022.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2022-1508/
--   لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 5 سؤالاً مفتوحاً؛ منها 1 verified=true (مصدر third_party)؛
--   3 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2022_college', 'eps_college', 2022, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022)', 'دورة دجنبر 2022', 180, 5, 'لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (5 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_college_q1', 'exam_eps_kf_2022_college', 1, 'تفسير السلوكيات وتحليلها (الكرة الطائرة)', 'السياق المشترك: عند ملاحظة تلاميذ السنة الثانية إعدادي يلعبون الكرة الطائرة: ندرة التبادلات، واحتكار أفعال اللعب من طرف عدد قليل من التلاميذ؛ السلوكيات: إرجاع انفجاري و/أو مباشر، وتلميذ واحد يلعب والآخرون متفرجون.
Constat : lorsqu''on observe des élèves de la 2e année collège jouant au volleyball, d''emblée deux constats s''imposent : la rareté des échanges ; la monopolisation des actions de jeu par quelques élèves. Il est donc difficile pour la majorité des élèves de vivre une véritable dynamique de l''activité volleyball. Schématiquement, les comportements manifestés sont de deux ordres : 1) des problèmes d''ordre technique et/ou réglementaire poussent les élèves à se centrer sur un renvoi explosif et/ou direct de la balle vers le camp adverse, seule action possible pour gagner le point ; 2) des problèmes de participation au jeu qui se résument en un seul élève qui joue (celui qui touche la balle) : les autres ont le statut de spectateurs.

Questions : à partir des données de ce constat, de vos connaissances et de votre vécu professionnel :

1- Expliquez et analysez ces comportements. (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Explication. Le renvoi explosif et direct vient de deux causes : une cause réglementaire (le point se gagne quand l''adversaire ne rattrape pas la balle, donc le plus simple est de frapper fort) et une cause technique (les élèves ne maîtrisent ni la manchette ni la touche de balle à doigts, donc ne peuvent construire l''attaque en trois touches). Ils choisissent la seule action qu''ils savent faire. La monopolisation par un seul élève vient d''un manque de placement et de déplacement des autres, de la peur de rater devant le groupe, d''un niveau hétérogène (le meilleur joue toutes les balles) et d''un manque de règles qui obligent à partager (nombre de touches, rotation, rôles).

Analyse. Ces comportements montrent que les élèves n''ont pas atteint le niveau d''habileté du jeu collectif : ils sont au stade du « renvoi », pas de la construction. Ils bloquent la dynamique de l''activité (peu d''échanges, peu de temps d''engagement moteur), au détriment de l''apprentissage et de la motivation des spectateurs. La conséquence pédagogique est qu''il faut modifier les règles et les dispositifs (jeu à effectif réduit, balle plus lente, obligation de passer par plusieurs joueurs) et enseigner les techniques de base dans des situations qui obligent à coopérer.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1508/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_college_q2', 'exam_eps_kf_2022_college', 2, 'الإجراءات الديداكتيكية-البيداغوجية', '2- Selon vous, quelles procédures didactico-pédagogiques peut-on adopter avec ces élèves lors du cycle d''apprentissage relatif à cette APS ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Procédures :
1) Aménager les règles pour obliger l''échange : jeu à 3 contre 3 ou 4 contre 4 sur petit terrain, obligation de trois touches avant le renvoi, un point bonus après un échange de plus de trois touches, rotation des postes.
2) Adapter le matériel : balles plus légères et plus lentes (ballon de baudruche, ballon mousse), filet plus bas.
3) Organiser la classe en ateliers à effectif réduit pour multiplier les touches de balle.
4) Concevoir le cycle comme une progression de situations évolutives : jeu de renvoi, puis jeu de passe, puis construction du jeu en trois touches, en jouant sur des variables (taille du terrain, nombre de touches, zones cibles).
5) Donner des rôles (joueur, arbitre, observateur, scoreur) et des critères de réussite connus.
6) Utiliser l''évaluation formative et la remédiation entre les séances.
7) Prévoir une différenciation (groupes de niveau, aide pour les élèves en difficulté).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1508/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_college_q3', 'exam_eps_kf_2022_college', 3, 'الهدف النهائي للدورة وأهداف التسلسلات', '3- Proposez les lignes directrices du contenu de l''objectif terminal du cycle (OTC) 2e année collégial, déterminez les objectifs de 3 séquences d''apprentissage et les savoirs et savoir-faire que doivent acquérir les élèves. (5 points)', false, '[]'::jsonb, ARRAY[]::text[], 'OTC officiel (OP 2009, 2e année collège, sports collectifs de renvoi) : « Rechercher le gain de la rencontre par un déplacement et un placement adéquats pour un renvoi indirect de la balle vers le camp adverse et gagner le point. » Trois parties en sont tirées : se déplacer et se placer sous la balle, renvoyer la balle de façon indirecte (en passant par un partenaire), gagner le point.

Séquence 1 (objectif : se déplacer et se placer) : l''élève est capable de se placer sous la balle et de la renvoyer en touche haute ou en manchette vers une cible. Savoirs : position d''attente, trajectoire, règles de base. Savoir-faire : déplacement en appuis courts, touche de balle à doigts, manchette.

Séquence 2 (objectif : renvoyer de façon indirecte) : l''élève est capable de réaliser une passe à un partenaire avant de renvoyer vers le camp adverse. Savoirs : rôle des touches successives, annonce de la balle, répartition des zones. Savoir-faire : passe à un partenaire, communication verbale.

Séquence 3 (objectif : gagner le point) : l''élève est capable de choisir entre un renvoi direct et une construction selon la position adverse, de servir et d''arbitrer. Savoirs : règles (rotation, service, fautes), choix tactique. Savoir-faire : service bas, observer le camp adverse, arbitrer et marquer.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1508/', true, '«للتحقق»: ادعاء أن «الهجوم في ثلاث لمسات يخص كرة الطائرة في الأولى باك (OP 2007)، وليس هذا المستوى» غير دقيق — ما يخص الأولى باك هو الهجوم المنظم الجماعي في 6 ضد 6؛ بناء اللعب في ثلاث لمسات يُقبل كهدف تسلسل في 2AC. نص OTC مؤكَّد حرفياً مقابل OP 2009 ومشاريع دورات 2AC منشورة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_college_q4', 'exam_eps_kf_2022_college', 4, 'الوضعية المرجعية للتقييم', '4- Proposez une situation de référence permettant l''évaluation des apprentissages acquis par ces élèves. (5 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Situation de référence : match de 4 contre 4 sur terrain réduit (9 m par 6 m, dimensions proposées ici, les OP n''en fixent aucune), 6 minutes, service lancé ou bas, règle : trois touches au maximum, avec obligation de deux touches différentes avant le renvoi. Chaque équipe a un observateur. But : construire l''attaque pour marquer. Consigne : « Jouez en équipe : la balle doit passer par au moins deux joueurs avant de passer le filet. » Critères observés : placement et déplacement sous la balle, qualité de la touche (touche de balle à doigts ou manchette), passe orientée vers un partenaire, nombre d''échanges, respect des règles. Les élèves en difficulté ont des tâches simplifiées. Les évaluateurs tiennent une fiche pendant la rencontre ; l''enseignant circule.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1508/', false, 'أبعاد الملعب 9م × 6م اقتراح لا قاعدة رسمية (OP لا تحدد أبعاد ملعب مصغّر)؛ و«obligation de deux touches différentes avant le renvoi» قاعدة ديداكتيكية مصطنعة داخل الوضعية، وليست قاعدة من قانون الكرة الطائرة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_college_q5', 'exam_eps_kf_2022_college', 5, 'شبكة التقييم الجماعي', '5- Élaborez une grille d''évaluation collective conformément à votre situation de référence. (4 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Grille collective (équipe de 4, échelle de 0 à 3 par critère : 0 non observé, 1 début, 2 en cours d''acquisition, 3 maîtrisé) :

- Critère 1 : placement et déplacement (l''élève arrive sous la balle, en équilibre).
- Critère 2 : qualité du geste (touche à doigts ou manchette, contact propre, balle haute).
- Critère 3 : passe orientée vers un partenaire (la deuxième touche prépare l''attaque).
- Critère 4 : participation collective (tous les joueurs touchent la balle, annonce de la balle).
- Critère 5 : respect des règles et efficacité (nombre d''échanges de plus de trois touches et points marqués).

Barème : total sur 15 pour l''équipe (somme des critères 1 à 5 pour l''ensemble des joueurs), niveaux : moins de 6 non acquis, 6 à 10 en cours, plus de 10 acquis ; une colonne d''observations pour la remédiation.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1508/', false, '«للتحقق»: سلم الشبكة (5 معايير × 0–3 = 15 نقطة للفريق؛ عتبات أقل من 6 / 6–10 / أكثر من 10) اقتراح من mesconcours، وليس سلماً من OP 2007/2009.')
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
