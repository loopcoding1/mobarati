-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020)
-- ====================================================================
-- المصدر: ملف الحل solved/2020/ديداكتيك التربية البدنية - الكفاءة المهنية - الإعدادي - دورة 2020.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2020-1436/
--   لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 6 سؤالاً مفتوحاً؛ منها 0 verified=true (مصدر third_party)؛
--   5 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2020_college', 'eps_college', 2020, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020)', 'دورة دجنبر 2020', 180, 6, 'لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (6 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q1', 'exam_eps_kf_2020_college', 1, 'تحليل تقرير زيارة مفتش', 'السياق المشترك (الأسئلة 1–3): تقرير زيارة مفتش لأستاذ تربية بدنية (سنة أولى إعدادي، 30 تلميذاً: 14 بنتاً و16 ولداً) في الكرة الطائرة، الحصة رقم 4، الفصل الأول؛ الهدف: العمل التقني على المنشطة (manchette) والتمريرة بأصابع اليدين.
1- Quelle analyse et interprétation faites-vous de ce rapport de visite vis-à-vis des quatre axes présentés ? (4 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Axe 1, planification : la préparation est inexistante au niveau de l''année (ni projet pédagogique, ni projet sportif), la fiche de la 4e séance flotte sans lien avec une progression. Il en découle des contenus incohérents (manchette, touche de balle à doigts et match enchaînés sans logique) et un enseignant qui connaît moyennement le volley-ball.

Axe 2, gestion : dispositif correct sur le papier (6 groupes de 5, 2 terrains, 15 ballons), mais exercices trop semblables (même file, même geste), temps d''attente élevé, situation match en 3 contre 3 sur un terrain trop petit pour des débutants qui n''ont pas la maîtrise technique : les élèves subissent la balle, d''où l''immobilité, les frappes explosives et les échecs. Le bilan est bâclé.

Axe 3, évaluation : aucun outil, seulement le match final ; ni diagnostic, ni régulation, ni évaluation de l''objectif.

Axe 4, appréciation : l''enseignant est conscient des lacunes ; l''inspecteur encourage et oriente.

Interprétation d''ensemble : les difficultés des élèves sont la conséquence directe d''une planification absente et d''une conception de la séance centrée sur l''enseignant. La réponse passe par un projet de classe, des objectifs précis, des situations évolutives et un outil d''observation.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, '«للتحقق»: حكم «ملعب صغير جداً» قابل للنقاش — الملعب المصغّر (6 م × 4,5 م) في 3 ضد 3 هو الصيغة المخففة المعتمدة لمستوى 1AC؛ الصعوبة الحقيقية هي غياب التدرج والوضعيات التحضيرية، لا أبعاد الملعب. خاتمة الجواب تدعو إلى «مشروع قسم»؛ مصطلحات OP 2007/2009 هي «المشروع البيداغوجي» و«المشروع الرياضي» و«مشروع الدورة»، لا «مشروع قسم».')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q2', 'exam_eps_kf_2020_college', 2, 'حصيلة الحصة', '2- Tout en illustrant les aspects et l''importance du bilan d''une séance, quel bilan pourriez-vous faire de la séance que cet enseignant a réalisée ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Aspects et importance du bilan : le bilan en fin de séance est un retour sur ce qui a été fait (activités), appris (acquis par rapport à l''objectif), vécu (affectif et sécurité) et ce qui reste à faire. Il consolide les apprentissages, fait verbaliser les élèves, donne une rétroaction à l''enseignant et prépare la séance suivante.

Bilan de cette séance : sur le plan pédagogique, l''objectif « travail technique de la manchette et de la touche de balle à doigts » n''est pas atteint (échecs répétés, pas de progrès) ; sur le plan de l''organisation, le dispositif est correct mais les situations ne progressent pas ; sur le plan des élèves, immobilité et frappes non orientées ; la fin de séance a été sacrifiée (peu de temps, peu d''intérêt). Décision : revenir à une situation plus simple, travailler le placement avant la frappe et prévoir une évaluation en cours de séance.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, 'عبارة «bilan chiffré» في تعليل mesconcours غير دقيقة هنا: حصيلة هذه الحصة نوعية (لم تُسجَّل أي نقط)، لا رقمية.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q3', 'exam_eps_kf_2020_college', 3, 'المعارف الإجرائية (الكرة الطائرة)', '3- À partir des caractéristiques comportementales de ces élèves (1re année collégiale), précisez quelles connaissances procédurales, sur le plan individuel et sur le plan collectif, ces élèves doivent maîtriser à ce niveau. (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Connaissances procédurales individuelles (savoir comment faire) : se placer sous la balle (déplacement latéral et arrière en appuis courts), position d''attente (jambes fléchies, mains devant), réaliser la touche de balle à doigts (mains en coupe au-dessus du front, extension des jambes, des bras et des doigts, orientation vers la cible), réaliser la manchette (bras tendus joints, plateau formé par les avant-bras, contact avec les avant-bras, balle renvoyée haute et dans l''axe), faire un service bas simple.

Connaissances procédurales collectives : s''organiser à 3 (réception, passe, renvoi), annoncer la balle (« à moi »), occuper l''espace et se replacer après chaque action, assurer les rôles tournants (arbitre, scoreur), respecter les règles de base du jeu (rotation, trois touches maximum), coopérer pour ne pas laisser tomber la balle.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q4', 'exam_eps_kf_2020_college', 4, 'المعالجة — الكرة الطائرة: الإحماء النوعي', 'L''inspecteur a signalé l''immobilité des élèves et ses conséquences quant à la progression des élèves dans l''activité physique et sportive volley-ball. (Voir le contexte de la question 1.)

1- Proposez un échauffement spécifique sollicitant la mobilité des élèves de cette classe. (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Échauffement spécifique de 10 minutes, pour 30 élèves, en jeu, centré sur le déplacement : jeu des « ballons dans le terrain » (6 groupes de 5, chaque élève avec un ballon, il le lance au-dessus de lui, se déplace, le rattrape après un rebond puis sans rebond) ; « les déménageurs » : en binôme, un lanceur envoie la balle à gauche, à droite, devant, derrière et le receveur se déplace en appuis courts pour se placer sous la balle ; « touche-ligne » : se déplacer latéralement entre deux cônes en gardant la position d''attente et frapper la balle à l''arrivée ; « le miroir » : un élève bouge en pas chassés, l''autre l''imite. Progression : de la balle tenue à la balle lancée, puis à la balle frappée. L''échauffement active la mobilité des chevilles, hanches et épaules, et prépare au placement sous la balle.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, '«للتحقق»: لعبة «ballons dans le terrain» بصيغة «لكل تلميذ كرة» تتطلب 30 كرة، والتقرير لا يمنح سوى 15 كرة؛ التصحيح: العمل في ثنائيات (كرة واحدة لكل تلميذين) أو بالتناوب.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q5', 'exam_eps_kf_2020_college', 5, 'المعالجة — الكرة الطائرة: وضعية تعلم', '2- En s''appuyant sur le même contexte de cette leçon, quel objectif allez-vous travailler avec cette classe en proposant une situation d''apprentissage évolutive pour remédier aux difficultés des élèves, tout en précisant les consignes d''apprentissage leur offrant la possibilité d''acquérir des connaissances conceptuelles relatives à ce propos. (6 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Objectif : à la fin de la séance, l''élève sera capable de se placer sous la balle et de la renvoyer en touche de balle à doigts (ou manchette) dans la zone cible, 4 fois sur 6.

Situation d''apprentissage évolutive : « renvoyer vers la zone cible ». But : envoyer la balle dans la zone cible de l''équipe adverse. Dispositif : 6 groupes de 5 : 4 groupes sur 4 mini-terrains et 2 groupes en ateliers au mur (renvois contre le mur vers une cible), avec rotation à chaque changement de niveau, un filet bas ou une corde, une zone cible tracée au sol.

Niveau 1 (acquisition du placement) : un lanceur envoie une balle facile (haute, à 3 mètres) ; le joueur se déplace, attrape la balle au-dessus du front, puis la renvoie en touche haute. Variables : distance, hauteur, rythme.

Niveau 2 (renvoi en action) : le lanceur varie la direction ; le joueur se place et renvoie sans attraper (touche de balle à doigts ou manchette) vers la zone cible.

Niveau 3 (jeu réduit) : 2 contre 2, la balle doit être jouée deux fois avant de passer le filet, service lancé depuis la ligne des 3 mètres.

Niveau 4 : 3 contre 3 avec rotation et score.

Consignes d''apprentissage donnant accès aux connaissances conceptuelles : « Place-toi sous la balle avant qu''elle arrive. Observe ce qui se passe quand tu reçois bien placé et mal placé : que fais-tu de tes jambes et de tes bras ? Quel est le rôle de la position d''attente (genoux fléchis, mains devant) ? Explique à ton partenaire pourquoi on frappe avec les doigts quand la balle est haute et avec les avant-bras quand elle est basse. » Les élèves découvrent ainsi les concepts de trajectoire, de placement, de point de contact, d''orientation de la cible et de rôle (qui joue la balle). Une fiche d''observation à deux critères (placement, direction) est utilisée par un camarade observateur.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, 'الإرسال في المستوى 3 «من خط 3 أمتار» تبسيط ديداكتيكي مقصود يخالف خط 6 أمتار الوارد في التقرير؛ يُقبل كمتغير ديداكتيكي لا كمعطى من الورقة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_college_q6', 'exam_eps_kf_2020_college', 6, 'المعالجة — الكرة الطائرة: الوضعية المرجعية والتقويم', '3- Proposez une situation de référence permettant d''évaluer l''objectif proposé en suggérant un outil d''évaluation. (4 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Situation de référence : match à 3 contre 3 sur mini-terrain de 6 m par 4,5 m, durée 5 minutes, service lancé. Chaque équipe doit jouer la balle deux fois avant de la renvoyer. Un observateur par équipe évalue un élève avec la grille.

Outil d''évaluation (grille critériée, échelle de 0 à 2) : critère 1, placement sous la balle (arrive avant la balle, en équilibre) ; critère 2, geste (touche de balle à doigts ou manchette correcte) ; critère 3, orientation (la balle part vers la zone cible) ; critère 4, efficacité (nombre de balles renvoyées dans la zone sur 6 essais) ; critère 5, coopération (annonce de la balle, replacement). Barème : 0 non acquis, 1 en cours d''acquisition, 2 acquis, total sur 10. Seuil de maîtrise : 7 sur 10, avec au minimum « acquis » sur le critère 2. Les résultats servent à former des groupes de remédiation à la séance suivante.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1436/', false, '«للتحقق»: السلم /10 والعتبة 7/10 من إنشاء mesconcours؛ التنقيط الرسمي للسلك الإعدادي في الرياضات الجماعية هو على /20 (المعارف الإجرائية 14 نقطة في السنة الأولى).')
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
