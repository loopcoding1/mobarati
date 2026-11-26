-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025)
-- ====================================================================
-- المصدر: ملف الحل 2025/التربية البدنية (التخصص) - دورة نونبر 2025.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2025-613/
--   حروف الأجوبة من «سلم الأجوبة» الرسمي (مقروءاً كاملاً Q1–Q100)؛ الأسئلة والتعليلات من mesconcours. 16 سؤالاً صُحّحت إلى المفتاح الرسمي.
--   عدد الأسئلة: 100 (QCM، خمسة اختيارات)؛ موثّقة verified=true: 100؛ موسومة بملاحظة تحقق: 25.
--   ⚠ Q2: المفتاح الرسمي يعطي B بينما التعريف الصحيح للـ negative split هو A — سُجّل B تبعاً للمفتاح الرسمي مع التحفّظ في verification_note.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee', 'eps_lycee', 2025, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 240, 100, 'تنقيط سلبي: كل جواب خاطئ أو ملغى ينقص نقاطاً (مقداره غير محدد في الورقة)')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (100 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q1', 'exam_eps_2025_specialty_nov_lycee', 1, 'APS et apprentissage moteur', 'La faute antisportive en basket-ball est sanctionnée par :', false, '[{"id": "A", "text": "Expulsion du joueur fautif, plus deux lancers francs et remise en jeu depuis la ligne de touche"}, {"id": "B", "text": "Trois lancers francs et avertissement du joueur fautif et remise en jeu"}, {"id": "C", "text": "Faute personnelle pour le joueur fautif et remise en jeu depuis la ligne de touche"}, {"id": "D", "text": "2 lancers francs et remise en jeu depuis la ligne de touche dans la zone avant de l''équipe fautive"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['E']::text[], 'Les règles officielles FIBA 2024 (art. 37.2.2), en vigueur à la session, sanctionnent une faute antisportive sur un joueur qui ne tire pas par deux lancers francs pour le joueur qui l''a subie, puis par une remise en jeu depuis la ligne de remise en jeu dans la zone avant de son équipe, du côté opposé à la table de marque. D serait juste si elle donnait cette remise en jeu à l''équipe qui a subi la faute, mais elle la donne à l''équipe fautive. A, B et C sont fausses aussi : l''expulsion suppose une deuxième faute antisportive ou technique (art. 37.2.3), B ne décrit pas la sanction d''une faute hors tir et C la réduit à une faute personnelle. Aucune des propositions A à D n''est juste, d''où E. Depuis le 1er octobre 2026, la FIBA a remplacé la faute antisportive par la faute disruptive et la faute flagrante (OBR 2026, art. 37 et 38).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q2', 'exam_eps_2025_specialty_nov_lycee', 2, 'APS et apprentissage moteur', 'Le "négative split" en course de durée est de :', false, '[{"id": "A", "text": "Courir la seconde moitié plus vite que la première"}, {"id": "B", "text": "Courir plus vite au début qu''à la fin"}, {"id": "C", "text": "Alterner sprint et course modérée"}, {"id": "D", "text": "Courir à une vitesse constante"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le negative split consiste à courir la seconde moitié de la distance plus vite que la première. Partir vite puis ralentir (B) est l''inverse, le positive split. Courir à vitesse constante (D) correspond à un even split, et l''alternance sprint et course modérée (C) décrit le fractionné.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي A. التعريف الصحيح للـ negative split هو A (النصف الثاني أسرع من الأول)، وB هو الـ positive split (العكس) — فالمفتاح الرسمي يبدو مخطئاً هنا، وهو ما أكّده معلِّق على منشور ALL Sports («Q2 ghalet dhih howa A machi B»). الجواب المسجَّل هنا هو B لأن «سلم الأجوبة» هو المعتمَد في التصحيح الرسمي، مع هذا التحفّظ الصريح.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q3', 'exam_eps_2025_specialty_nov_lycee', 3, 'Accidents et secourisme', 'Une lésion d''un muscle lors d''un effort physique important est :', false, '[{"id": "A", "text": "Un gonflement survenu au niveau du muscle lors d''un effort physique"}, {"id": "B", "text": "Un étirement du muscle lors d''un effort physique important"}, {"id": "C", "text": "Une hyper-contraction du muscle lors d''un effort physique"}, {"id": "D", "text": "Une déchirure survenue au niveau du muscle lors d''un effort physique"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Une lésion musculaire est une rupture de fibres musculaires, autrement dit une déchirure, plus ou moins étendue selon sa gravité. L''étirement (B) et la contraction (C) sont des fonctionnements normaux du muscle, et le gonflement (A) n''est qu''un signe possible, pas la lésion elle-même.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q4', 'exam_eps_2025_specialty_nov_lycee', 4, 'Sport scolaire', 'L''association sportive scolaire s''intéresse essentiellement au sport de:', false, '[{"id": "A", "text": "Masse pendant toute l''année scolaire"}, {"id": "B", "text": "Élite pendant toute l''année scolaire"}, {"id": "C", "text": "Masse et d''élite pendant toute l''année scolaire"}, {"id": "D", "text": "Masse et d''élite lors des périodes de compétitions sportives scolaires"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'L''association sportive scolaire a une double mission : généraliser la pratique sportive à tous les élèves (sport de masse) et repérer puis former les talents qui représentent l''établissement en compétition (sport d''élite). Elle fonctionne durant toute l''année scolaire, pas seulement pendant les compétitions, ce qui écarte D. Le mot « essentiellement » pourrait faire pencher vers le seul sport de masse (A), mais les textes du sport scolaire marocain associent les deux objectifs.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q5', 'exam_eps_2025_specialty_nov_lycee', 5, 'Physiologie', 'L''oxydation complète aérobie d''une molécule de pyruvate produit environ :', false, '[{"id": "A", "text": "12 à 15 ATP"}, {"id": "B", "text": "16 à 18 ATP"}, {"id": "C", "text": "09 à11 ATP"}, {"id": "D", "text": "07à 10 ATP"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Un pyruvate fournit 1 NADH lors de sa conversion en acétyl-CoA, puis 3 NADH, 1 FADH2 et 1 GTP dans le cycle de Krebs. Avec les valeurs classiques (3 ATP par NADH, 2 par FADH2) on obtient 15 ATP, et avec les valeurs actuelles (2,5 et 1,5) environ 12,5 ATP, d''où la fourchette de 12 à 15. Les fourchettes C et D oublient l''étape pyruvate déshydrogénase ou sous-estiment le rendement des coenzymes réduits.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q6', 'exam_eps_2025_specialty_nov_lycee', 6, 'Biomécanique', 'Un centre de gravité bas permet en général :', false, '[{"id": "A", "text": "Une plus grande accélération et vitesse"}, {"id": "B", "text": "Une plus grande force, stabilité et équilibre"}, {"id": "C", "text": "Une plus grande vitesse et propulsion"}, {"id": "D", "text": "Une plus grande flexibilité et équilibre"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Plus le centre de gravité est bas par rapport à la base de sustentation, plus l''équilibre est stable : il faut une plus grande perturbation pour faire sortir sa projection de la base. C''est pourquoi on fléchit les jambes pour résister à une poussée ou à un contact. La flexibilité (D) n''a pas de lien avec la hauteur du centre de gravité, et la vitesse ou la propulsion (A, C) sont plutôt favorisées par une position plus haute et moins stable.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q7', 'exam_eps_2025_specialty_nov_lycee', 7, 'APS et apprentissage moteur', 'Les principes de la contre-attaque en sports de démarquage reposent sur une :', false, '[{"id": "A", "text": "Diminution des relais et écartement de l''espace"}, {"id": "B", "text": "Réaction et transition rapide, passe en profondeur et le timing"}, {"id": "C", "text": "Anticipation, démarquage et vitesse d''exécution"}, {"id": "D", "text": "Anticipation, circulation du ballon en retrait puis transition rapide"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'La contre-attaque exploite le moment où la défense adverse n''est pas replacée : elle repose sur la réaction immédiate à la récupération du ballon, la transition rapide vers l''avant, la passe en profondeur et le bon moment de la course d''appel. La circulation du ballon en retrait (D) ralentit le jeu et contredit ce principe. A et C décrivent des éléments réels (peu de passes, démarquage) mais restent partiels, d''où une confiance moyenne.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q8', 'exam_eps_2025_specialty_nov_lycee', 8, 'Physiologie', 'Les têtes de myosine possèdent des sites de fixation pour :', false, '[{"id": "A", "text": "La troponine"}, {"id": "B", "text": "Le calcium"}, {"id": "C", "text": "La créatine phosphate"}, {"id": "D", "text": "L''actine"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Chaque tête de myosine porte un site de liaison à l''actine (et un site ATPasique qui fixe l''ATP) : c''est ce qui permet la formation des ponts actine-myosine. Le calcium se fixe sur la troponine, pas sur la myosine (B), et la troponine (A) fait partie du filament fin.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q9', 'exam_eps_2025_specialty_nov_lycee', 9, 'Sport scolaire', 'La cotisation annuelle minimale de chaque élève pour l''association sportive scolaire est de :', false, '[{"id": "A", "text": "20 dh"}, {"id": "B", "text": "25 dh"}, {"id": "C", "text": "15 dh"}, {"id": "D", "text": "10 dh"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'La note ministérielle n° 074X21 du 30 juin 2021 (§ 6) fixe la cotisation annuelle de l''élève à 10 dirhams au minimum, sans plafond. Le maximum de 20 dirhams vient de la circulaire n° 1 de la FRMSS de 1997, que la note de 2021 ne reprend pas. 20 dh (A) était donc l''ancien plafond et jamais le minimum, ce qui en fait le piège principal.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q10', 'exam_eps_2025_specialty_nov_lycee', 10, 'Anatomie', 'Le plus petit os du corps humain est :', false, '[{"id": "A", "text": "Le marteau"}, {"id": "B", "text": "L''enclume"}, {"id": "C", "text": "L''étrier"}, {"id": "D", "text": "Le tympan"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'L''étrier (stapes), l''un des trois osselets de l''oreille moyenne, mesure environ 3 mm : c''est le plus petit os du corps. Le marteau et l''enclume sont aussi des osselets mais plus grands, et le tympan (D) est une membrane, pas un os.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q11', 'exam_eps_2025_specialty_nov_lycee', 11, 'APS et apprentissage moteur', 'En rugby, le "redoublement" est une Technique :', false, '[{"id": "A", "text": "Offensive qui vise à déséquilibrer la défense en créant le surnombre"}, {"id": "B", "text": "Offensive qui vise à jouer en jeu groupé"}, {"id": "C", "text": "Défensive qui vise à marquer tous les joueurs attaquants"}, {"id": "D", "text": "Offensive qui vise à jouer en jeu déployé"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Dans le redoublement, le passeur donne le ballon puis contourne le receveur pour se proposer de nouveau à l''extérieur : il ajoute un attaquant sur le point d''attaque et crée un surnombre qui déséquilibre la défense. C''est une combinaison offensive, pas une technique défensive (C), et son but est le surnombre, pas le choix entre jeu groupé ou déployé (B, D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q12', 'exam_eps_2025_specialty_nov_lycee', 12, 'APS et apprentissage moteur', 'La largeur réglementaire de la planche d''appel en saut en longueur est :', false, '[{"id": "A", "text": "25 cm"}, {"id": "B", "text": "10 cm"}, {"id": "C", "text": "30 cm"}, {"id": "D", "text": "20 cm"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le règlement de World Athletics fixe la planche d''appel à 1,21 à 1,22 m de long, 20 cm de large (à 2 mm près) et 10 cm de profondeur. 10 cm (B) correspond à la profondeur, pas à la largeur.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q13', 'exam_eps_2025_specialty_nov_lycee', 13, 'Physiologie', 'Le rôle de l''acide lactique produit à l''effort est de :', false, '[{"id": "A", "text": "Favoriser la contraction musculaire en anaérobie"}, {"id": "B", "text": "Assurer la continuité de production de l''ATP en anaérobie"}, {"id": "C", "text": "Activer les hormones de croissance en anaérobie"}, {"id": "D", "text": "Protéger les os et améliorer l''élasticité musculaire"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'La réduction du pyruvate en lactate régénère le NAD+ consommé par la glycolyse : sans elle, la glycolyse s''arrêterait faute de NAD+ et la production anaérobie d''ATP aussi. Le lactate ne favorise pas directement la contraction (A) et n''a aucun rôle sur les os ou l''élasticité (D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q14', 'exam_eps_2025_specialty_nov_lycee', 14, 'Biomécanique', 'Le principe de l''action et de la réaction en biomécanique est illustré par la :', false, '[{"id": "A", "text": "Tension du muscle biceps lors de la flexion du coude"}, {"id": "B", "text": "Propulsion du bras lors de la course"}, {"id": "C", "text": "Force exercée par le pied sur le sol lors de la marche"}, {"id": "D", "text": "Force exercée par un haltère sur la main"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'D''après la troisième loi de Newton, quand le pied pousse le sol vers l''arrière et vers le bas, le sol renvoie une force égale et opposée (réaction du sol) qui fait avancer le marcheur. La tension du biceps (A) et le balancier des bras (B) relèvent de la contraction et de l''équilibre des rotations, et le poids de l''haltère (D) ne montre qu''une seule force sans sa réaction motrice.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q15', 'exam_eps_2025_specialty_nov_lycee', 15, 'APS et apprentissage moteur', 'Dans une rondade, la rotation des hanches se fait :', false, '[{"id": "A", "text": "Avant la phase d''appui des mains"}, {"id": "B", "text": "Pendant la phase d''appui des mains"}, {"id": "C", "text": "Dès le départ"}, {"id": "D", "text": "Lors de la réception"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Dans la rondade, le demi-tour qui fait passer de la face au dos se réalise pendant l''appui successif des deux mains : la deuxième main se pose déjà tournée et les hanches pivotent au passage à l''appui renversé. Tourner avant l''appui (A) ou dès le départ (C) transformerait l''élan en déséquilibre latéral, et à la réception (D) la rotation est déjà terminée.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي C بينما mesconcours يعطي B.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q16', 'exam_eps_2025_specialty_nov_lycee', 16, 'Physiologie', 'La voie métabolique retrouvée à la fois dans la respiration et la fermentation alcoolique est :', false, '[{"id": "A", "text": "L''oxydation respiratoire"}, {"id": "B", "text": "La glycogenèse"}, {"id": "C", "text": "La phosphorylation oxydative"}, {"id": "D", "text": "La glycolyse"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'La glycolyse, qui transforme le glucose en deux pyruvates dans le cytoplasme, est la première étape commune à la respiration et à toutes les fermentations. Les deux voies ne divergent qu''après, au devenir du pyruvate. La phosphorylation oxydative (C) est propre à la respiration et exige de l''oxygène, et la glycogenèse (B) est une voie de mise en réserve.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q17', 'exam_eps_2025_specialty_nov_lycee', 17, 'Accidents et secourisme', 'Les blessures, les plus typiques en activité physique sont les :', false, '[{"id": "A", "text": "Fractures"}, {"id": "B", "text": "Brûlures"}, {"id": "C", "text": "Entorses"}, {"id": "D", "text": "Luxations"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'L''entorse, surtout celle de la cheville, est la blessure la plus fréquente en activité physique et en EPS : elle résulte d''un mouvement forcé de l''articulation au-delà de son amplitude normale, lors d''une réception ou d''un changement d''appui. Fractures et luxations (A, D) existent mais sont nettement moins fréquentes, et les brûlures (B) sont étrangères à la pratique courante.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q18', 'exam_eps_2025_specialty_nov_lycee', 18, 'APS et apprentissage moteur', 'La longueur réglementaire (IAAF) de la course d''élan en saut en longueur est :', false, '[{"id": "A", "text": "35 m Minimum"}, {"id": "B", "text": "20 m Minimum"}, {"id": "C", "text": "40 m Minimum"}, {"id": "D", "text": "30 cm Minimum"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['E']::text[], 'Le règlement de World Athletics (ex-IAAF) fixe la piste d''élan du saut en longueur à 40 m au minimum, mesurés depuis la ligne d''appel, et à 45 m lorsque les conditions le permettent. 35 m (A) et 20 m (B) sont trop courts, et 30 cm (D) n''a pas de sens pour une piste d''élan.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي E بينما mesconcours يعطي C.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q19', 'exam_eps_2025_specialty_nov_lycee', 19, 'Physiologie', 'Dans un muscle au repos la tropomyosine :', false, '[{"id": "A", "text": "Libère les ions de calcium"}, {"id": "B", "text": "Couvre les sites de liaison de la myosine sur l''actine"}, {"id": "C", "text": "Facilite la fixation myosine-actine"}, {"id": "D", "text": "Libère de l''énergie"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Au repos, la tropomyosine est enroulée le long du filament d''actine et masque les sites où les têtes de myosine devraient se fixer : aucun pont ne peut se former. Le calcium est libéré par le réticulum sarcoplasmique, pas par la tropomyosine (A), et c''est seulement après fixation du calcium sur la troponine qu''elle se déplace et permet la liaison (C).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q20', 'exam_eps_2025_specialty_nov_lycee', 20, 'APS et apprentissage moteur', 'Lors d''un appui tendu renversé, l''objectif principal du gainage corporel est de :', false, '[{"id": "A", "text": "Renforcer les abdominaux"}, {"id": "B", "text": "Renforcer les épaules"}, {"id": "C", "text": "Maintenir l''alignement"}, {"id": "D", "text": "Protéger les poignets"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'En appui tendu renversé, le gainage verrouille le tronc et le bassin pour garder les segments alignés (mains, épaules, hanches, pieds) au-dessus de la base d''appui : c''est ce qui permet de tenir l''équilibre. Renforcer les abdominaux ou les épaules (A, B) est un effet de l''entraînement, pas le but du gainage pendant la figure.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q21', 'exam_eps_2025_specialty_nov_lycee', 21, 'Anatomie', 'Le foie se trouve dans :', false, '[{"id": "A", "text": "La cavité thoracique dans le thorax gauche"}, {"id": "B", "text": "La cavité abdominale, en bas à gauche de l''abdomen"}, {"id": "C", "text": "La cavité pelvienne dans le bassin"}, {"id": "D", "text": "La cavité abdominale, en haut à droite sous le diaphragme"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le foie occupe l''hypocondre droit et une partie de l''épigastre, dans la partie haute de la cavité abdominale, juste sous la coupole droite du diaphragme. Il n''est ni dans le thorax (A), séparé de lui par le diaphragme, ni dans la partie basse gauche de l''abdomen ou le bassin (B, C).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q22', 'exam_eps_2025_specialty_nov_lycee', 22, 'Accidents et secourisme', 'La PLS est une :', false, '[{"id": "A", "text": "Protection Locale Scolaire"}, {"id": "B", "text": "Position Lente de Secours"}, {"id": "C", "text": "Position Latérale de Sécurité"}, {"id": "D", "text": "Prise en charge Locale Sûre"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'La PLS est la position latérale de sécurité : on place sur le côté une victime inconsciente qui respire, pour garder ses voies aériennes libres et laisser s''écouler les liquides (vomissements, sang) sans qu''elle les inhale. Les autres sigles sont inventés.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q23', 'exam_eps_2025_specialty_nov_lycee', 23, 'APS et apprentissage moteur', 'Le rapprochement des segments libres en saut en hauteur s''effectue pour faciliter', false, '[{"id": "A", "text": "La rotation transversale"}, {"id": "B", "text": "Le placement du pied d''appel"}, {"id": "C", "text": "La rotation longitudinale"}, {"id": "D", "text": "Le franchissement"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Au moment de l''impulsion en fosbury, le sauteur doit tourner le dos à la barre par une rotation autour de l''axe longitudinal du corps. Ramener les segments libres (genou libre, bras) près de cet axe réduit le moment d''inertie et accélère cette rotation, comme le patineur qui serre les bras. Une autre lecture rattache le geste au franchissement (D) ou à la rotation transversale (A) qui fait passer le corps au-dessus de la barre, mais le rapprochement des segments vers l''axe vise d''abord la rotation longitudinale.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي A بينما mesconcours يعطي C.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q24', 'exam_eps_2025_specialty_nov_lycee', 24, 'Physiologie', 'Au cours de la contraction musculaire :', false, '[{"id": "A", "text": "Le calcium se fixe sur un site particulier de la tropomyosine"}, {"id": "B", "text": "Le magnésium se fixe sur un site particulier de la tropomyosine"}, {"id": "C", "text": "Le calcium se fixe sur un site particulier de la troponine"}, {"id": "D", "text": "Le magnésium se fixe sur un site particulier de la troponine"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Libéré par le réticulum sarcoplasmique, le calcium se fixe sur la sous-unité C de la troponine. Ce changement de forme déplace la tropomyosine et découvre les sites de fixation de la myosine sur l''actine. Le calcium ne se fixe pas sur la tropomyosine (A), et le magnésium sert de cofacteur à l''ATP, pas de déclencheur (B, D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q25', 'exam_eps_2025_specialty_nov_lycee', 25, 'APS et apprentissage moteur', 'Le rôle du pivot en hand-ball est principalement de :', false, '[{"id": "A", "text": "Ceinturer et créer l''espace"}, {"id": "B", "text": "Défendre et créer l''espace"}, {"id": "C", "text": "Bloquer et créer l''espace"}, {"id": "D", "text": "Pousser et créer l''espace"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Le pivot joue au contact de la défense, sur la ligne des 6 m : il bloque les défenseurs (écrans) et ouvre des intervalles pour ses partenaires ou pour recevoir lui-même le ballon. Ceinturer et pousser (A, D) sont des fautes au règlement IHF, et défendre (B) n''est pas sa mission offensive principale.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q26', 'exam_eps_2025_specialty_nov_lycee', 26, 'Biomécanique', 'L''élan d''un corps est le produit de la masse et de:', false, '[{"id": "A", "text": "Sa force"}, {"id": "B", "text": "Sa vitesse"}, {"id": "C", "text": "Son accélération"}, {"id": "D", "text": "Sa distance"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'L''élan, ou quantité de mouvement, se calcule par p = m × v : masse multipliée par vitesse. Le produit de la masse par l''accélération (C) donne une force selon la deuxième loi de Newton, pas l''élan.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q27', 'exam_eps_2025_specialty_nov_lycee', 27, 'Sport scolaire', 'La quote-part de l''association sportive scolaire des cotisations d''adhésion annuelle est de :', false, '[{"id": "A", "text": "15%"}, {"id": "B", "text": "10%"}, {"id": "C", "text": "65%"}, {"id": "D", "text": "20%"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Les règles de gestion financière des associations sportives scolaires répartissent les cotisations d''adhésion : 65 % reviennent à l''association sportive de l''établissement, 15 % à la Fédération royale marocaine du sport scolaire et 5 % au fonds de soutien du sport scolaire, le reste allant aux branches provinciale (10 %) et régionale (5 %) de la fédération (note ministérielle n° 074X21, § 6). 20 % (D) additionne la part de la fédération et celle du fonds de soutien, et ne correspond pas à la part de l''association.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q28', 'exam_eps_2025_specialty_nov_lycee', 28, 'APS et apprentissage moteur', 'Les différents engins en gymnastique rythmique féminine sont :', false, '[{"id": "A", "text": "Massues, corde, Ballon, ruban, élastique"}, {"id": "B", "text": "Cerceaux, Ballon, Massues, Ruban, corde"}, {"id": "C", "text": "Corde, Ballon, Ruban, cerceaux"}, {"id": "D", "text": "Ballons, ruban, cerceaux, trampoline"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['E']::text[], 'La gymnastique rythmique se pratique avec cinq engins reconnus par la FIG : la corde, le cerceau, le ballon, les massues et le ruban. La proposition B les cite tous les cinq. A ajoute l''élastique, qui n''est pas un engin de GR, C oublie les massues et D mêle le trampoline, qui est une autre discipline.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي E بينما mesconcours يعطي B.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q29', 'exam_eps_2025_specialty_nov_lycee', 29, 'APS et apprentissage moteur', 'En volley-ball, la stratégie offensive qui permet de casser un contre organisé est une :', false, '[{"id": "A", "text": "Attaque déviée"}, {"id": "B", "text": "Attaque au centre"}, {"id": "C", "text": "Attaque hors trois mètres"}, {"id": "D", "text": "Passe basse rapide"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Une passe basse et rapide (attaque de premier temps) fait frapper l''attaquant avant que les contreurs adverses aient le temps de se placer et de sauter ensemble : c''est le moyen collectif classique de désorganiser le contre. L''attaque déviée (frapper dans les mains du contre pour faire sortir le ballon) se sert du contre au lieu de l''empêcher de se former, et c''est un geste individuel plutôt qu''une stratégie. Une lecture qui retient A n''est pas absurde si l''on comprend « casser » comme « exploiter un contre déjà en place », d''où une confiance moyenne.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي A بينما mesconcours يعطي D. ⚠ A منافِسة لـ D')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q30', 'exam_eps_2025_specialty_nov_lycee', 30, 'Accidents et secourisme', 'L''entorse provoque :', false, '[{"id": "A", "text": "Une rupture osseuse"}, {"id": "B", "text": "Une déchirure des ligaments"}, {"id": "C", "text": "Une inflammation musculaire"}, {"id": "D", "text": "Une fracture"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'L''entorse est une lésion des ligaments d''une articulation, de l''étirement simple (entorse bénigne) à la déchirure partielle ou totale (entorse grave). Elle ne touche pas l''os : la rupture osseuse et la fracture désignent la même lésion osseuse, et l''inflammation musculaire relève d''une atteinte du muscle.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q31', 'exam_eps_2025_specialty_nov_lycee', 31, 'APS et apprentissage moteur', 'En saut en longueur, l''appareil qui mesure la vitesse du vent est appelé :', false, '[{"id": "A", "text": "Baromètre"}, {"id": "B", "text": "Physiomètre"}, {"id": "C", "text": "Spiromètre"}, {"id": "D", "text": "Anémomètre"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'La vitesse du vent se mesure avec un anémomètre placé le long de la piste d''élan. En saut en longueur, World Athletics n''homologue pas une performance pour un record si le vent favorable dépasse 2 m/s. Le baromètre mesure la pression atmosphérique et le spiromètre les volumes respiratoires.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q32', 'exam_eps_2025_specialty_nov_lycee', 32, 'APS et apprentissage moteur', 'La phase la plus déterminante dans un salto avant carpé est :', false, '[{"id": "A", "text": "L''élan"}, {"id": "B", "text": "La phase d''appel"}, {"id": "C", "text": "Le groupé"}, {"id": "D", "text": "L''ouverture du corps"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Tout ce qui fait réussir le salto se décide à l''appel : la hauteur de l''envol et la quantité de rotation (moment cinétique) sont acquises au moment où les pieds quittent le sol, puis ne peuvent plus être créées en l''air. L''élan ne fait que fournir la vitesse que l''appel transforme. Le groupé ne concerne pas un salto carpé, et l''ouverture ne fait que freiner une rotation déjà lancée.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q33', 'exam_eps_2025_specialty_nov_lycee', 33, 'Physiologie', 'Lors du catabolisme aérobie, la plus grande partie du C0₂ est libérée pendant :', false, '[{"id": "A", "text": "Le cycle de Krebs"}, {"id": "B", "text": "La glycolyse"}, {"id": "C", "text": "Le fermentation lactique"}, {"id": "D", "text": "La phosphorylation oxydative"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Sur les six molécules de CO₂ issues de l''oxydation complète d''un glucose, quatre sont libérées par les décarboxylations du cycle de Krebs, les deux autres lors de la transformation du pyruvate en acétyl-CoA. La glycolyse et la fermentation lactique ne libèrent pas de CO₂, et la phosphorylation oxydative produit de l''eau et de l''ATP, pas du CO₂.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q34', 'exam_eps_2025_specialty_nov_lycee', 34, 'Accidents et secourisme', 'En cas de saignement nasale, l''enseignant est appelé à :', false, '[{"id": "A", "text": "Poser un pansement sec et pencher la tête en arrière"}, {"id": "B", "text": "Laver le sang à l''eau et s''allonger sur le dos en levant les jambes"}, {"id": "C", "text": "Essuyer ; pencher légèrement la tête en avant et pincer les narines"}, {"id": "D", "text": "Poser un garrot systématique ; s''allonger sur le dos ; soulever les jambes"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Face à un saignement de nez, on fait asseoir l''élève, tête légèrement penchée en avant, et on comprime les narines une dizaine de minutes. Pencher la tête en arrière (A) fait couler le sang dans la gorge, ce qui peut provoquer des vomissements ou une fausse route. Le garrot n''a aucune place ici.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q35', 'exam_eps_2025_specialty_nov_lycee', 35, 'APS et apprentissage moteur', 'En football, une frappe de volée se fait :', false, '[{"id": "A", "text": "Sans rebond"}, {"id": "B", "text": "Après rebond"}, {"id": "C", "text": "Ballon placé"}, {"id": "D", "text": "Après un dribble"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La volée est une frappe du ballon en l''air, avant qu''il ne touche le sol. Une frappe juste après un rebond s''appelle une demi-volée (B), et un ballon placé au sol correspond à un coup de pied arrêté.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q36', 'exam_eps_2025_specialty_nov_lycee', 36, 'Physiologie', 'Lors d''un exercice physique intense et de courte durée, l''utilisation de la glycolyse anaérobie pour produire de l''ATP par les muscles conduit à :', false, '[{"id": "A", "text": "La production de l''acide pyruvique, qui va se convertir en acétyl- CoA ; ce dernier va entrer dans le cycle de Krebs pour augmenter la production d''ATP."}, {"id": "B", "text": "La production de l''acide lactique, qui va se transformer en dioxyde de carbone et en eau au niveau de la chaine respiratoire."}, {"id": "C", "text": "La production d''une faible quantité d''ATP et d''acide lactique, ce dernier s''accumule dans les muscles et contribue à la fatigue musculaire"}, {"id": "D", "text": "L''augmentation de la production d''ATP et de l''acide lactique, ce dernier sera utilisé pour la synthèse de protéines musculaires."}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'La glycolyse anaérobie ne fournit que 2 ATP par glucose, mais vite, et le pyruvate est réduit en lactate. Le lactate et surtout les ions H⁺ qui l''accompagnent s''accumulent dans le muscle et participent à la fatigue. A décrit la voie aérobie, et le lactate n''est ni oxydé sur place pendant l''effort intense (B) ni utilisé pour fabriquer des protéines (D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q37', 'exam_eps_2025_specialty_nov_lycee', 37, 'Accidents et secourisme', 'En cas de crampe musculaire, l''enseignant doit :', false, '[{"id": "A", "text": "Pincer et étirer doucement le muscle"}, {"id": "B", "text": "Donner un anti-douleur."}, {"id": "C", "text": "Appliquer un pansement alcoolisé."}, {"id": "D", "text": "Appliquer du froid"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Une crampe est une contraction involontaire et douloureuse du muscle : on la fait céder en étirant doucement le muscle concerné et en le massant, puis l''élève boit. Le froid sert aux contusions et aux entorses, pas à une crampe, et un enseignant n''administre pas de médicament.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q38', 'exam_eps_2025_specialty_nov_lycee', 38, 'Biomécanique', 'L''angle de projection optimal pour un lancer de poids efficace est :', false, '[{"id": "A", "text": "Environ 38 à 45°"}, {"id": "B", "text": "Environ 32 à 35°"}, {"id": "C", "text": "Environ 28 à 35°"}, {"id": "D", "text": "Environ 37 à 40°"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le poids est lâché à environ 2 m au-dessus du sol, et le lanceur produit moins de vitesse quand l''angle monte : l''optimum se situe donc sous les 45° de la balistique théorique, vers 37 à 40° dans les manuels. A remonte jusqu''à 45°, l''angle valable seulement pour un lâcher au niveau du sol. Les mesures sur des lanceurs d''élite donnent parfois 34 à 38°, ce qui rapproche B de la réalité ; la plage D reste celle qu''enseignent les cours d''athlétisme.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي D.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q39', 'exam_eps_2025_specialty_nov_lycee', 39, 'Sport scolaire', 'L''assemblée générale de l''association sportive scolaire tient une session ordinaire tous :', false, '[{"id": "A", "text": "Les 4 Ans"}, {"id": "B", "text": "Les 3ans"}, {"id": "C", "text": "Les 2 Ans"}, {"id": "D", "text": "Chaque année"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le statut type des associations sportives scolaires en vigueur, fixé par l''arrêté conjoint n° 297.25 du 28 janvier 2025 (BO n° 7383 du 3 mars 2025), le dit à l''article 16 : l''assemblée générale ordinaire se réunit une fois par an. Le président ou les deux tiers des membres actifs peuvent la convoquer à tout moment en session extraordinaire (art. 18). « Tous les deux ans » (C) ne figure dans aucun texte officiel : l''ancien statut type, reproduit dans le guide de la DPSS de 2017, prévoyait une session ordinaire tous les quatre ans (art. 9), ce qui aurait donné A avant 2025.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q40', 'exam_eps_2025_specialty_nov_lycee', 40, 'Anatomie', 'La plus grande artère du corps humain est :', false, '[{"id": "A", "text": "L''artère pulmonaire"}, {"id": "B", "text": "L''artère coronaire"}, {"id": "C", "text": "L''artère circonflexe"}, {"id": "D", "text": "L''artère aorte"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'L''aorte part du ventricule gauche et distribue le sang oxygéné à tout l''organisme : c''est la plus grosse et la plus longue artère du corps (environ 2,5 à 3 cm de diamètre à son origine). L''artère pulmonaire est volumineuse mais plus courte et va seulement aux poumons ; les coronaires et la circonflexe sont de petites artères du coeur.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q41', 'exam_eps_2025_specialty_nov_lycee', 41, 'APS et apprentissage moteur', 'La foulée la plus efficace en endurance doit être :', false, '[{"id": "A", "text": "Modérée à courte, fréquente et régulière"}, {"id": "B", "text": "Longue lente et régulière"}, {"id": "C", "text": "Courte lente et fréquente"}, {"id": "D", "text": "Longue ample et lente"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'En course de durée, une foulée d''amplitude modérée, à fréquence assez élevée et régulière, limite les oscillations verticales et le freinage à chaque appui, donc le coût énergétique. Une foulée longue et ample (B, D) se paie en énergie et en impact. C se contredit : une foulée courte et lente ne peut pas être fréquente.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q42', 'exam_eps_2025_specialty_nov_lycee', 42, 'APS et apprentissage moteur', 'La faute de filet en volley-ball est lorsque :', false, '[{"id": "A", "text": "Le ballon touche le filet après le service et tombe dans le camp adverse"}, {"id": "B", "text": "Un joueur touche le filet et passe le ballon dans le camp adverse"}, {"id": "C", "text": "Le ballon touche le filet après un service et tombe dans son propre camps"}, {"id": "D", "text": "Le ballon touche le filet après une touche de balle et tombe dans son propre camp"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['E']::text[], 'La règle FIVB (11.3) sanctionne le contact d''un joueur avec le filet entre les antennes pendant son action de jeu : c''est la faute de filet. Un service qui touche le filet et passe chez l''adversaire est valable (A). Un service qui retombe dans son propre camp (C) est une faute de service, et un ballon qui touche le filet en cours d''échange peut être rejoué tant que l''équipe n''a pas épuisé ses trois touches (D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي E بينما mesconcours يعطي B.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q43', 'exam_eps_2025_specialty_nov_lycee', 43, 'Biomécanique', 'Le rôle de la biomécanique dans la prévention des blessures sportives est de :', false, '[{"id": "A", "text": "Identifier les mouvements à risque et les corriger"}, {"id": "B", "text": "Déterminer la masse musculaire relative à la performance"}, {"id": "C", "text": "Améliorer la flexibilité corporelle pour minimiser les accidents"}, {"id": "D", "text": "Augmenter la vitesse de déplacement pour éviter les blessures"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La biomécanique analyse les forces et les trajectoires du geste : elle repère les postures et les mouvements qui surchargent une articulation (réception genou en dedans, dos arrondi au soulevé) et propose la correction technique. La flexibilité (C) relève de la préparation physique, la masse musculaire (B) de l''anthropométrie, et augmenter la vitesse n''a jamais protégé de la blessure.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q44', 'exam_eps_2025_specialty_nov_lycee', 44, 'APS et apprentissage moteur', 'La phase technique juste après l''appel en saut en longueur est :', false, '[{"id": "A", "text": "Le redressement"}, {"id": "B", "text": "La suspension"}, {"id": "C", "text": "L''amortissement"}, {"id": "D", "text": "L''impulsion"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le saut en longueur s''enchaîne en course d''élan, appel (l''impulsion du pied d''appel), suspension (le vol, en extension, ramené ou ciseaux) puis réception. Ce qui suit l''appel est donc la suspension. L''impulsion (D) est l''appel lui-même, et l''amortissement appartient à la réception.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q45', 'exam_eps_2025_specialty_nov_lycee', 45, 'Physiologie', 'Lors d''un effort de longue durée, l''adaptation cardiovasculaire observée chez un sportif entraîné est une :', false, '[{"id": "A", "text": "Augmentation de la fréquence cardiaque de repos"}, {"id": "B", "text": "Augmentation de la pression artérielle moyenne"}, {"id": "C", "text": "Diminution du débit cardiaque maximal"}, {"id": "D", "text": "Augmentation du volume d''éjection systolique"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'L''entraînement en endurance agrandit le ventricule gauche et augmente le volume de sang éjecté à chaque battement (volume d''éjection systolique). Le même débit est alors obtenu avec moins de battements : la fréquence cardiaque de repos baisse (bradycardie du sportif), et le débit cardiaque maximal augmente. A et C disent l''inverse, et la pression artérielle de repos tend à baisser.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q46', 'exam_eps_2025_specialty_nov_lycee', 46, 'Physiologie', 'Dans le rapport vitesse / force : la Vitesse > 0 et la Force est < à 0, le type de contraction est', false, '[{"id": "A", "text": "Isométrique"}, {"id": "B", "text": "Concentrique"}, {"id": "C", "text": "Excentrique"}, {"id": "D", "text": "Pliométrique"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Quand la force du muscle et le déplacement sont de signes opposés, la puissance (force multipliée par vitesse) est négative : le muscle freine un mouvement qu''il ne produit pas, il s''allonge en se contractant, c''est le régime excentrique. Le concentrique suppose force et vitesse de même signe, et l''isométrique une vitesse nulle. L''énoncé ne précise pas sa convention de signe, d''où une confiance moyenne, mais seule la lecture excentrique rend cohérente la combinaison V > 0 et F < 0.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي C.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q47', 'exam_eps_2025_specialty_nov_lycee', 47, 'Accidents et secourisme', 'Le rôle principal de l''enseignant en cas d''accident dans un cours d''EPS est de :', false, '[{"id": "A", "text": "Prévenir et continuer la séance"}, {"id": "B", "text": "Sécuriser, observer et noter"}, {"id": "C", "text": "Transporter la victime immédiatement"}, {"id": "D", "text": "Prévenir, sécuriser et alerter"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Devant un accident, l''enseignant applique la conduite de secourisme : protéger la victime et le groupe, alerter les secours et l''administration, prévenir la famille. La proposition D est la seule qui contienne l''alerte. Transporter la victime sans bilan (C) peut aggraver une lésion, et continuer la séance (A) laisse la victime sans prise en charge.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q48', 'exam_eps_2025_specialty_nov_lycee', 48, 'APS et apprentissage moteur', 'Le rapport entre les tirs tentés et les tirs réussis (TT/TR) est un indice qui renseigne sur :', false, '[{"id": "A", "text": "L''efficacité du tir"}, {"id": "B", "text": "La qualité des tirs"}, {"id": "C", "text": "La qualité du jeu"}, {"id": "D", "text": "L''efficacité du jeu"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Comparer les tirs réussis aux tirs tentés mesure le rendement des tirs, c''est-à-dire l''efficacité du tir. La qualité des tirs ou du jeu demanderait d''autres indices, comme la position de tir ou le nombre de ballons conquis et perdus, et l''efficacité du jeu se calcule à partir des possessions, pas des seuls tirs.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q49', 'exam_eps_2025_specialty_nov_lycee', 49, 'Sport scolaire', 'Les séances des activités de l''ASS au Lycée se répartissent comme suit :', false, '[{"id": "A", "text": "2 heures le vendredi après-midi,"}, {"id": "B", "text": "3 heures le vendredi après-midi"}, {"id": "C", "text": "3 heures le mercredi après-midi"}, {"id": "D", "text": "2 heures le vendredi après-midi,"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'D''après la note ministérielle n° 074X21 du 30 juin 2021 (§ 3), que confirme la note n° 097X25 du 6 octobre 2025 (§ 4), le secondaire qualifiant dispose d''une séance de trois heures consécutives le vendredi après-midi, alors que le collège en a deux de deux heures, le mercredi et le vendredi après-midi. Le mercredi après-midi (C) n''est donc pas le créneau du lycée. Les propositions A et D sont imprimées à l''identique et semblent tronquées, ce qui laisse un doute sur l''intention du sujet.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ A وD مطبوعتان بشكل متطابق ومبتورتان')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q50', 'exam_eps_2025_specialty_nov_lycee', 50, 'APS et apprentissage moteur', 'La partie du corps qui initie la poussée lors d''un flic-flac arrière est :', false, '[{"id": "A", "text": "Le bassin"}, {"id": "B", "text": "Les épaules"}, {"id": "C", "text": "Les bras"}, {"id": "D", "text": "Les jambes"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Après le déséquilibre arrière en position assise, c''est l''extension rapide des jambes (hanches, genoux, chevilles) qui produit la poussée vers l''arrière et le haut. Les bras accompagnent par leur lancer et reçoivent ensuite l''appui au sol, mais ils ne génèrent pas la poussée initiale. Le bassin se déplace vers l''arrière pour préparer l''impulsion, il ne la crée pas.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q51', 'exam_eps_2025_specialty_nov_lycee', 51, 'Accidents et secourisme', 'Le RICE dans la prise en charge d''un traumatisme est un (e) :', false, '[{"id": "A", "text": "Respiration - Incision - Compression - Évacuation"}, {"id": "B", "text": "Réaction - Immobilisation - Contrôle - Élimination"}, {"id": "C", "text": "Repos - Ice (froid) - Compression - Élévation"}, {"id": "D", "text": "Réflexe - Isolement - Couverture - Écoute"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'RICE est l''acronyme anglais de Rest, Ice, Compression, Elevation, soit en français Repos, Glace, Compression, Élévation (protocole GREC). On l''applique dans les premières 48 heures d''une entorse, d''une contusion ou d''une lésion musculaire pour limiter l''œdème et la douleur. Les autres développements sont inventés.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q52', 'exam_eps_2025_specialty_nov_lycee', 52, 'APS et apprentissage moteur', 'En hand-ball la tactique qui permet de casser un jeu rapide adverse est :', false, '[{"id": "A", "text": "La défense homme à homme"}, {"id": "B", "text": "Le repli passif organisé"}, {"id": "C", "text": "La défense en zone organisée"}, {"id": "D", "text": "Le repli rapide organisé"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Face à une contre-attaque ou une montée de balle rapide, l''équipe qui perd le ballon doit revenir vite dans sa moitié de terrain pour se replacer avant que l''adversaire ne s''organise : c''est le repli défensif rapide. Un repli passif laisse justement le temps à l''adversaire de finir son action en surnombre. La défense de zone ou l''homme à homme ne s''installent qu''une fois le repli effectué.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q53', 'exam_eps_2025_specialty_nov_lycee', 53, 'Physiologie', 'La différence majeure entre fibres musculaires de type I et IIb est :', false, '[{"id": "A", "text": "Type I = n''est pas résistantes à la fatigue, Type IIb = puissantes mais non fatigables"}, {"id": "B", "text": "Type I = résistantes à la fatigue, IIb = puissantes mais non fatigables"}, {"id": "C", "text": "Type I = résistantes à la fatigue, Type IIb = puissantes mais fatigables"}, {"id": "D", "text": "Type I= n''est pas résistantes à la fatigue, Type IIb = puissantes mais fatigables"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Les fibres de type I (lentes, oxydatives) sont riches en mitochondries, en capillaires et en myoglobine : elles développent peu de force mais résistent longtemps à la fatigue. Les fibres IIb (rapides, glycolytiques) produisent une force élevée et rapide mais se fatiguent vite. La proposition B se trompe uniquement sur la fatigabilité des IIb.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q54', 'exam_eps_2025_specialty_nov_lycee', 54, 'Physiologie', 'Une bonne technique respiratoire en endurance consiste à :', false, '[{"id": "A", "text": "Expirer long (2/3sec) inspirer long (5/6sec)"}, {"id": "B", "text": "Expirer long (2/3sec) inspirer lent (5/6sec)"}, {"id": "C", "text": "Inspirer court (2/3sec) expirer lent (5/6sec)"}, {"id": "D", "text": "Inspirer lent (5/6sec) expirer court (2/3sec)"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'En course d''endurance, on conseille une inspiration courte et active et une expiration plus longue, qui vide mieux les poumons et favorise l''inspiration suivante (par exemple inspirer sur deux foulées, expirer sur trois ou quatre). La proposition D inverse ce rapport. Les durées chiffrées de l''énoncé sont inhabituelles, mais seule C respecte le principe d''une expiration plus longue que l''inspiration.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q55', 'exam_eps_2025_specialty_nov_lycee', 55, 'Anatomie', 'Le muscle responsable de l''élévation du bras est :', false, '[{"id": "A", "text": "Le deltoïde"}, {"id": "B", "text": "Le trapèze"}, {"id": "C", "text": "Le grand dorsal"}, {"id": "D", "text": "Le biceps brachial"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Le deltoïde, surtout son faisceau moyen, est le moteur principal de l''abduction du bras, avec le sus-épineux en début de mouvement. Le trapèze élève et fait tourner l''omoplate (élévation du moignon de l''épaule), pas l''humérus lui-même. Le grand dorsal abaisse le bras et le biceps brachial fléchit surtout le coude.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q56', 'exam_eps_2025_specialty_nov_lycee', 56, 'APS et apprentissage moteur', 'La course de 4x100 m relais se déroule en:', false, '[{"id": "A", "text": "400 m en couloir"}, {"id": "B", "text": "100 m en couloir"}, {"id": "C", "text": "200m en couloir"}, {"id": "D", "text": "300 m en couloir"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Selon le règlement de World Athletics, le 4x100 m se court entièrement en couloirs, transmissions comprises, soit les 400 m. C''est le 4x400 m qui ne se court en couloirs que sur le premier tour et le premier virage du deuxième relayeur (500 m).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي A.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q57', 'exam_eps_2025_specialty_nov_lycee', 57, 'APS et apprentissage moteur', 'En football, le rôle majeur du milieu défensif est de :', false, '[{"id": "A", "text": "Dribbler et Marquer"}, {"id": "B", "text": "Dribbler et attaquer"}, {"id": "C", "text": "Distribuer et défendre"}, {"id": "D", "text": "Défendre et stopper"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Le milieu défensif (sentinelle) protège sa défense et récupère le ballon, puis relance le jeu par une passe : son rôle tient dans le couple récupérer et distribuer. La proposition D décrit plutôt un défenseur central de type stoppeur, qui n''a pas la mission de construire le jeu. Les deux premières propositions décrivent des rôles offensifs.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q58', 'exam_eps_2025_specialty_nov_lycee', 58, 'Accidents et secourisme', 'Lorsque l''os se brise en multiple petits fragments on parle de :', false, '[{"id": "A", "text": "Fractures comminutives"}, {"id": "B", "text": "Fracture simple"}, {"id": "C", "text": "Fractures doubles"}, {"id": "D", "text": "Fissures dans l''os"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Une fracture comminutive comporte au moins trois fragments osseux. Une fracture simple n''a qu''un trait, une fracture double présente deux traits distincts isolant un segment intermédiaire, et une fissure est un trait incomplet sans déplacement.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q59', 'exam_eps_2025_specialty_nov_lycee', 59, 'Biomécanique', 'Le rôle principal de la jambe d''appel dans le lancer de poids est la :', false, '[{"id": "A", "text": "Transmission de l''énergie potentielle, propulsion du corps"}, {"id": "B", "text": "Transmission de l''énergie cinétique et création d''une base stable"}, {"id": "C", "text": "Stabilisation du tronc, rotation du corps et impulsion"}, {"id": "D", "text": "Protection des lombaires, prise d''avance et rattrapé"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Si l''on entend par jambe d''appel la jambe arrière (droite pour un droitier), c''est elle qui donne l''impulsion du glissé puis pivote pour lancer la rotation de la hanche vers l''avant : la proposition C décrit ce rôle. La proposition B correspond plutôt à la jambe avant, qui bloque et sert de base stable pour transmettre l''énergie au haut du corps, ce que la question 67 traite à part. L''expression « jambe d''appel » n''est pas fixée en lancer et une lecture qui la confond avec la jambe avant conduirait à B.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي C. ⚠ B منافِسة لـ C')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q60', 'exam_eps_2025_specialty_nov_lycee', 60, 'Sport scolaire', 'Les parcours sport-études dans les établissements scolaires sont accessibles :', false, '[{"id": "A", "text": "À tous les élèves sans exception sauf les littéraires"}, {"id": "B", "text": "Aux élèves sélectionnés selon leurs relevés de notes et présentant leurs certificats d''adhésions dans des clubs, ligues, ou fédérations"}, {"id": "C", "text": "Aux élèves pratiquants et affiliés dans des clubs, ligues, ou fédérations sportives"}, {"id": "D", "text": "Aux élèves ayant obtenus au moins 12/20 de moyenne au niveau scolaire précédant"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'L''item est défectueux, car B et D reprennent chacune une condition de la note ministérielle n° 080X22 du 20 octobre 2022 (§ 1.b). L''élève doit être proposé par son club, sa ligue ou sa fédération, et avoir obtenu au moins 12/20 de moyenne au niveau scolaire précédent, sauf dérogation pour un sportif de haut niveau reconnu. D cite ce seuil mot pour mot, et B combine les deux volets, résultats scolaires et appartenance à un club, sans reprendre la lettre du texte. On garde B, la réponse attendue, parce qu''elle seule réunit la sélection scolaire et la sélection sportive ; C ne retient que le volet sportif.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ D منافِسة لـ B — السؤال معيب لأن B وD تستندان معاً إلى المذكرة 080X22')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q61', 'exam_eps_2025_specialty_nov_lycee', 61, 'Biomécanique', 'La hanche doit être engagée dans la phase finale du lancer de poids :', false, '[{"id": "A", "text": "Juste avant la poussée du bras lanceur"}, {"id": "B", "text": "Pendant la poussée du bras lanceur"}, {"id": "C", "text": "Après la poussée du bras lanceur"}, {"id": "D", "text": "En même temps que la poussée du bras lanceur"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Le principe de sommation des forces impose un enchaînement des segments du bas vers le haut : jambes, hanche, tronc, épaule, puis bras. La hanche se retourne vers l''avant juste avant que le bras ne pousse, ce qui met les muscles du tronc et de l''épaule en tension. Une poussée simultanée ou plus tardive perd cette transmission et le bras lance seul.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q62', 'exam_eps_2025_specialty_nov_lycee', 62, 'Physiologie', 'La principale voie de la resynthèse de l''ATP pendant un effort > 10 minutes est la :', false, '[{"id": "A", "text": "Voie Phosphocréatine"}, {"id": "B", "text": "Glycolyse anaérobie"}, {"id": "C", "text": "Phosphorisation aérobie"}, {"id": "D", "text": "Voie oxydative"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Au-delà de quelques minutes d''effort, l''ATP est resynthétisé presque entièrement par la filière aérobie, appelée voie oxydative : oxydation des glucides et des lipides dans la mitochondrie. La phosphocréatine s''épuise en une dizaine de secondes et la glycolyse anaérobie domine entre 30 secondes et 2 minutes environ. La proposition C (« phosphorisation aérobie ») désigne au fond le même processus, la phosphorylation oxydative, mais sous un nom déformé ; le terme consacré en STAPS est voie oxydative, d''où le choix de D.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي B بينما mesconcours يعطي D.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q63', 'exam_eps_2025_specialty_nov_lycee', 63, 'Anatomie', 'Le tissu qui recouvre les os est le :', false, '[{"id": "A", "text": "Cartilage"}, {"id": "B", "text": "Périoste"}, {"id": "C", "text": "Tendon"}, {"id": "D", "text": "Ligament"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le périoste est la membrane conjonctive qui recouvre la surface externe des os, sauf au niveau des surfaces articulaires. Ces surfaces articulaires sont recouvertes de cartilage, ce qui rend la proposition A tentante mais incomplète. Tendons et ligaments s''insèrent sur l''os sans le recouvrir.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي D بينما mesconcours يعطي B.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q64', 'exam_eps_2025_specialty_nov_lycee', 64, 'APS et apprentissage moteur', 'La hauteur du panier en basket-ball est de :', false, '[{"id": "A", "text": "2,50 m"}, {"id": "B", "text": "3,50 m"}, {"id": "C", "text": "3,05 m"}, {"id": "D", "text": "2,80 m"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Le règlement FIBA fixe le bord supérieur de l''anneau à 3,05 m au-dessus du sol, soit l''ancienne mesure de 10 pieds.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q65', 'exam_eps_2025_specialty_nov_lycee', 65, 'APS et apprentissage moteur', 'Dans une course de 100 m, la majorité de la vitesse maximale est atteinte vers :', false, '[{"id": "A", "text": "20-30 mètres"}, {"id": "B", "text": "40-60 mètres"}, {"id": "C", "text": "60-80 mètres"}, {"id": "D", "text": "80-100 mètres"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Les analyses de 100 m montrent que la plupart des sprinteurs atteignent leur vitesse de pointe entre 40 et 60 m, puis tentent de la maintenir avant une décélération en fin de course. Les tout meilleurs mondiaux la prolongent jusqu''à 60 ou 70 m, ce qui rend C défendable pour l''élite seule. La formule « la majorité » vise le cas général, donc B.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q66', 'exam_eps_2025_specialty_nov_lycee', 66, 'Sport scolaire', 'Un audit de l''association sportive scolaire permet de :', false, '[{"id": "A", "text": "Evaluer la sécurité du travail et la gouvernance et l''association"}, {"id": "B", "text": "Contrôler les dépenses financières hors budget"}, {"id": "C", "text": "Gérer les accidents sportifs pendant les compétitions"}, {"id": "D", "text": "Programmer des compétitions sportives annuelles"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Un audit est une évaluation du fonctionnement de l''association : respect des règles, gouvernance (bureau, assemblées, comptes rendus), sécurité des activités. C''est ce que vise la proposition A, malgré sa formulation maladroite. Contrôler des dépenses hors budget n''en est qu''un point particulier, et gérer des accidents ou programmer des compétitions relèvent de la gestion courante, pas de l''audit.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ صياغة A ركيكة')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q67', 'exam_eps_2025_specialty_nov_lycee', 67, 'Biomécanique', 'En lancer de poids, le blocage de la jambe avant est crucial pour :', false, '[{"id": "A", "text": "Assurer la continuité des forces"}, {"id": "B", "text": "Créer un effet de levier"}, {"id": "C", "text": "Emmagasiner de l''énergie"}, {"id": "D", "text": "Garder l''équilibre du corps"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le blocage de la jambe avant arrête brutalement la translation du bas du corps : le haut du corps pivote alors autour de cet appui fixe, comme un levier, et la vitesse acquise est transmise au tronc, à l''épaule et au poids. La proposition A (continuité des forces) décrit le principe général de sommation qui gouverne tout le lancer, pas le rôle propre du blocage. Garder l''équilibre est une conséquence secondaire.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ A منافِسة لـ B')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q68', 'exam_eps_2025_specialty_nov_lycee', 68, 'Physiologie', 'La fréquence cardiaque maximale théorique d''un adulte est de :', false, '[{"id": "A", "text": "220 - âge"}, {"id": "B", "text": "200 - âge"}, {"id": "C", "text": "240 - âge"}, {"id": "D", "text": "180 - âge"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La formule d''Astrand, FC max = 220 - âge, est l''estimation classique de la fréquence cardiaque maximale. D''autres formules existent (Tanaka : 208 - 0,7 x âge), mais aucune des propositions B, C ou D n''en fait partie.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q69', 'exam_eps_2025_specialty_nov_lycee', 69, 'Biomécanique', 'La biomécanique peut aider à optimiser la performance sportive en :', false, '[{"id": "A", "text": "Augmentant la masse corporelle"}, {"id": "B", "text": "Améliorant la technique de mouvement"}, {"id": "C", "text": "Réduisant l''engagement de l''athlète"}, {"id": "D", "text": "Ciblant les facteurs environnementaux"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'La biomécanique analyse les forces, les trajectoires et les leviers du geste sportif pour en corriger l''efficacité : son apport direct est l''amélioration de la technique. Augmenter la masse relève de la préparation physique et de la nutrition, et les facteurs environnementaux ne sont pas son objet premier.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q70', 'exam_eps_2025_specialty_nov_lycee', 70, 'APS et apprentissage moteur', 'En volley-ball, la finalité d''un système 5-1 repose sur la composition de:', false, '[{"id": "A", "text": "5 défenseurs, 1passeur"}, {"id": "B", "text": "5attaquants,1 libéro"}, {"id": "C", "text": "5 attaquants, 1passeur stable"}, {"id": "D", "text": "5 passeurs, 1attaquant"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Dans le système 5-1, un seul passeur organise le jeu dans toutes les rotations et les cinq autres joueurs sont des attaquants (réceptionneurs-attaquants, centraux, pointu). Le libéro n''entre pas dans la définition du système, qui ne compte que les six joueurs de base. Le 4-2 et le 6-2 utilisent au contraire deux passeurs.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q71', 'exam_eps_2025_specialty_nov_lycee', 71, 'Sport scolaire', 'Un établissement qui ne dispose pas d''une association sportive scolaire peut participer :', false, '[{"id": "A", "text": "A toutes les compétitions"}, {"id": "B", "text": "Seulement aux compétitions provinciales et régionales"}, {"id": "C", "text": "Aux compétitions nationales"}, {"id": "D", "text": "Uniquement aux compétitions provinciales"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['E']::text[], 'La participation aux compétitions de la FRMSS passe par l''association sportive scolaire : c''est elle qui est affiliée, qui délivre les licences des élèves et qui engage les équipes. Un établissement sans association ne peut donc s''engager à aucun échelon, ni provincial, ni régional, ni national. Les propositions B et D supposent à tort une participation partielle possible. Lecture concurrente : si l''examinateur pensait à une participation tolérée au seul échelon local, il attendait D, mais aucun texte consulté ne prévoit cette exception.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ D منافِسة لـ E')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q72', 'exam_eps_2025_specialty_nov_lycee', 72, 'APS et apprentissage moteur', 'Un drop en rugby se produit lorsqu''un joueur:', false, '[{"id": "A", "text": "Lâche le ballon au sol et le frappe du pied après son rebond"}, {"id": "B", "text": "Botte directement le ballon vers la touche"}, {"id": "C", "text": "Aplatit le ballon dans l''en-but adverse"}, {"id": "D", "text": "Botte le ballon bloqué par terre après un coup franc"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Le coup de pied tombé (drop) consiste à lâcher le ballon des mains et à le frapper au moment où il rebondit sur le sol. Aplatir dans l''en-but est un essai, et frapper un ballon posé au sol est un coup de pied placé.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q73', 'exam_eps_2025_specialty_nov_lycee', 73, 'Physiologie', 'L''organe qui régule principalement la température corporelle est :', false, '[{"id": "A", "text": "Le cœur"}, {"id": "B", "text": "Le pancréas"}, {"id": "C", "text": "Le foie"}, {"id": "D", "text": "L''hypothalamus"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'L''hypothalamus est le centre thermorégulateur : il reçoit les informations des thermorécepteurs et déclenche sudation, vasodilatation cutanée ou frisson. Le foie produit beaucoup de chaleur par son métabolisme, mais il ne régule pas la température.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q74', 'exam_eps_2025_specialty_nov_lycee', 74, 'Anatomie', 'Le muscle responsable de l''extension du coude est :', false, '[{"id": "A", "text": "Le biceps brachial"}, {"id": "B", "text": "Le sternocléidomastoïdien"}, {"id": "C", "text": "Le long supinateur"}, {"id": "D", "text": "Le triceps brachial"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le triceps brachial, situé à la face postérieure du bras, s''insère sur l''olécrane et étend l''avant-bras sur le bras. Le biceps brachial et le long supinateur (brachioradial) sont au contraire fléchisseurs du coude, et le sternocléidomastoïdien est un muscle du cou.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q75', 'exam_eps_2025_specialty_nov_lycee', 75, 'APS et apprentissage moteur', 'En sprint, une foulée efficace doit être :', false, '[{"id": "A", "text": "Longue et lente"}, {"id": "B", "text": "Courte et rapide"}, {"id": "C", "text": "Fréquente et ample"}, {"id": "D", "text": "Longue et rapide"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'La vitesse de course est le produit de l''amplitude (longueur) de la foulée par sa fréquence. Le sprinteur efficace cherche donc les deux à la fois : une foulée ample et fréquente. « Longue et rapide » (D) parle de vitesse sans nommer la fréquence, et une foulée courte (B) sacrifie l''amplitude.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q76', 'exam_eps_2025_specialty_nov_lycee', 76, 'Accidents et secourisme', 'En cas de fracture ouverte, l''enseignant doit en priorité :', false, '[{"id": "A", "text": "Immobiliser et comprimer directement la plaie avec un pansement alcoolisé"}, {"id": "B", "text": "Donner à boire au blessé et le mettre en position allongée"}, {"id": "C", "text": "Replacer l''os dans la plaie ; et compresser avec un pansement stérile"}, {"id": "D", "text": "Immobiliser et couvrir avec un pansement stérile sans appuyer"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Devant une fracture ouverte, on ne touche pas à l''os et on n''appuie pas sur la plaie : on la couvre d''un pansement stérile pour limiter l''infection, puis on immobilise et on alerte les secours. Comprimer la plaie (A) ou replacer l''os (C) aggrave les lésions, et on ne donne jamais à boire à un blessé qui peut être opéré (B).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q77', 'exam_eps_2025_specialty_nov_lycee', 77, 'Physiologie', 'Le rôle de la respiration cellulaire est de :', false, '[{"id": "A", "text": "Produire de l''énergie à partir de l''oxygène et du glucose"}, {"id": "B", "text": "Transporter les nutriments et le glucose"}, {"id": "C", "text": "Accroître le stockage de graisses et glucose"}, {"id": "D", "text": "Réduire la pression sanguine et artérielle"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La respiration cellulaire oxyde les substrats (glucose, mais aussi acides gras) en présence d''oxygène dans la mitochondrie pour resynthétiser l''ATP. Le transport des nutriments (B) est le rôle du sang, et le stockage (C) relève de l''anabolisme, pas de la respiration.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q78', 'exam_eps_2025_specialty_nov_lycee', 78, 'Biomécanique', 'Lors de la phase d''appel en saut hauteur on cherche à :', false, '[{"id": "A", "text": "Transformer la vitesse verticale en horizontale"}, {"id": "B", "text": "Transformer la vitesse curviligne en horizontale"}, {"id": "C", "text": "Transformer la vitesse horizontale en verticale"}, {"id": "D", "text": "Transformer la vitesse linéaire en horizontale"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'L''impulsion d''appel sert à convertir la vitesse acquise pendant la course d''élan, essentiellement horizontale, en vitesse verticale qui élève le centre de gravité au-dessus de la barre. Les autres options décrivent la conversion à l''envers ou vers l''horizontale, ce qui ferait passer sous la barre.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q79', 'exam_eps_2025_specialty_nov_lycee', 79, 'Biomécanique', 'En course de vitesse, la force de frottement dépend de la :', false, '[{"id": "A", "text": "Nature des surfaces en contact et de la force normale"}, {"id": "B", "text": "Poids de l''athlète et sa vitesse"}, {"id": "C", "text": "Surface de contact et la longueur de la foulée"}, {"id": "D", "text": "Température, l''humidité et l''épaisseur de la surface"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Selon la loi de Coulomb, la force de frottement vaut F = μ × N : elle dépend du coefficient de frottement, fixé par la nature des surfaces en contact (pointes, revêtement), et de la force normale. Contrairement à l''intuition, elle ne dépend ni de l''aire de contact (C) ni de la vitesse (B).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q80', 'exam_eps_2025_specialty_nov_lycee', 80, 'APS et apprentissage moteur', 'En Hand-ball, une supériorité numérique en attaque se joue principalement par un:', false, '[{"id": "A", "text": "Jeu de marquage et d''aiguillage"}, {"id": "B", "text": "Jeu de marquage et de blocage"}, {"id": "C", "text": "Jeu de fixation et décalage"}, {"id": "D", "text": "Jeu de feinte et de blocage"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Pour exploiter un surnombre, chaque attaquant fixe son défenseur direct (il attaque l''intervalle pour l''attirer) puis transmet au partenaire suivant : c''est le jeu de fixation et décalage qui libère le joueur en plus. Le marquage et le blocage (A, B, D) sont des notions de défense ou d''actions isolées, pas l''organisation d''un surnombre.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q81', 'exam_eps_2025_specialty_nov_lycee', 81, 'Sport scolaire', 'La note ministérielle n° 21-074 daté du 30 Juin 2021 traite :', false, '[{"id": "A", "text": "La mise en œuvre des rôles des associations sportives scolaires"}, {"id": "B", "text": "La planification du sport scolaire et sport étude dans les centres de formations académiques"}, {"id": "C", "text": "Les modalités d''organisation des championnats scolaires sur tous les niveaux"}, {"id": "D", "text": "Les modalités d''évaluation et de notation au niveau qualifiant et collégial"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La note n° 21-074 du 30 juin 2021 porte sur la poursuite de la création et l''activation des rôles des associations sportives scolaires, et sur la gestion des séances d''activités du sport scolaire. Elle ne traite ni de l''évaluation en EPS (D) ni du sport-études (B).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q82', 'exam_eps_2025_specialty_nov_lycee', 82, 'APS et apprentissage moteur', 'Un match officiel de volley-ball se joue réglementairement en :', false, '[{"id": "A", "text": "2 sets"}, {"id": "B", "text": "3 sets"}, {"id": "C", "text": "4 sets"}, {"id": "D", "text": "5 sets"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Selon le règlement FIVB (règle 6.3.1), le match est gagné par l''équipe qui remporte trois sets : il se joue donc au meilleur des cinq sets, le cinquième (tie-break) se disputant en 15 points. La réponse attendue est 5 sets, le format maximal d''un match officiel. On pourrait lire « 3 sets » (B) comme les trois sets gagnants, mais un match peut en compter jusqu''à cinq.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q83', 'exam_eps_2025_specialty_nov_lycee', 83, 'Anatomie', 'Le muscle responsable de la flexion du genou est le :', false, '[{"id": "A", "text": "Quadriceps"}, {"id": "B", "text": "Jambier antérieur"}, {"id": "C", "text": "Biceps fémoral"}, {"id": "D", "text": "Gastrocnémien"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Le biceps fémoral fait partie des ischio-jambiers, les fléchisseurs principaux du genou. Le quadriceps (A) est au contraire l''extenseur du genou et le jambier antérieur (B) agit sur la cheville. Le gastrocnémien (D) participe à la flexion du genou, mais seulement comme fléchisseur accessoire : son rôle principal est la flexion plantaire.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q84', 'exam_eps_2025_specialty_nov_lycee', 84, 'APS et apprentissage moteur', 'Dans une course de vitesse, la validation de la performance tient compte :', false, '[{"id": "A", "text": "Des jambes de l''athlète qui franchissent la ligne d''arrivée"}, {"id": "B", "text": "Du torse qui atteint le plan vertical du bord intérieur de la ligne d''arrivée"}, {"id": "C", "text": "De la tête de l''athlète qui atteint le plan vertical du bord intérieur de la ligne d''arrivée"}, {"id": "D", "text": "De n''importe quelle partie du corps qui franchit la ligne d''arrivée"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le règlement de World Athletics classe les athlètes dans l''ordre où une partie de leur torse atteint le plan vertical du bord de la ligne d''arrivée le plus proche du départ. La tête, le cou, les bras, les jambes, les mains et les pieds sont exclus, d''où l''inclinaison du buste sur la ligne.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q85', 'exam_eps_2025_specialty_nov_lycee', 85, 'Physiologie', 'Lors d''un effort aérobie, le corps utilise principalement :', false, '[{"id": "A", "text": "L''oxygène en décomposant les protéines et les lipides"}, {"id": "B", "text": "L''oxygène en décomposant les sels minéraux et les lipides"}, {"id": "C", "text": "L''oxygène en décomposant les glucides et les lipides"}, {"id": "D", "text": "L''oxygène en décomposant les vitamines et les lipides"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'En aérobie, les mitochondries oxydent surtout les glucides (glycogène, glucose) et les lipides (acides gras), dans une proportion qui dépend de l''intensité et de la durée. Les protéines (A) ne fournissent qu''une faible part de l''énergie, et les sels minéraux ou les vitamines (B, D) ne sont pas des substrats énergétiques.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q86', 'exam_eps_2025_specialty_nov_lycee', 86, 'Biomécanique', 'L''analyse biomécanique de la foulée en course à pied permet d''évaluer :', false, '[{"id": "A", "text": "La fréquence de la foulée et sa longueur"}, {"id": "B", "text": "L''angle d''attaque du pied au sol au départ"}, {"id": "C", "text": "La phase de propulsion et la phase de suspension"}, {"id": "D", "text": "La phase de suspension et la fréquence cardiaque moyenne"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'L''analyse biomécanique de la foulée mesure d''abord ses paramètres spatio-temporels : la longueur et la fréquence, dont le produit donne la vitesse. La fréquence cardiaque (D) relève de la physiologie. Les phases de propulsion et de suspension (C) sont aussi étudiées en biomécanique, si bien que C reste défendable ; la clé retient A, la réponse la plus classique.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q87', 'exam_eps_2025_specialty_nov_lycee', 87, 'APS et apprentissage moteur', 'En basket-ball, le système qui favorise une isolation pour un tir est :', false, '[{"id": "A", "text": "Pick and roll"}, {"id": "B", "text": "Zone press"}, {"id": "C", "text": "Défense en triangle"}, {"id": "D", "text": "Double écran en sortie"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'La zone press et la défense en triangle (B, C) sont des systèmes défensifs et ne créent aucun tir. Le double écran en sortie libère un tireur qui sort des écrans seul face au panier, ce qui correspond à l''idée d''isoler un joueur pour un tir. Le pick and roll (A) est un jeu à deux qui crée un avantage par la passe ou la pénétration. Clé incertaine : l''« isolation » au sens strict est un dégagement en un contre un (clear-out) qu''aucune option ne nomme, ce qui pourrait faire pencher pour E.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي A بينما mesconcours يعطي D. ⚠ E منافِسة لـ D')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q88', 'exam_eps_2025_specialty_nov_lycee', 88, 'Sport scolaire', 'L''encadrement de la formation sportive dans le cadre du sport-études est assuré par :', false, '[{"id": "A", "text": "Les professeurs d''EPS de l''établissement concerné uniquement"}, {"id": "B", "text": "Les professeurs d''EPS de l''établissement concerné et les entraineurs des clubs, ligues, ou fédération sportive"}, {"id": "C", "text": "Les entraineurs des clubs, ligues, ou fédération sportive uniquement"}, {"id": "D", "text": "En alternance : une semaine par les professeurs d''EPS et une par les cadres des clubs"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le programme « Sport et études » repose sur un partenariat : les professeurs d''EPS de l''établissement encadrent les élèves, et les clubs, ligues ou fédérations assurent l''entraînement spécialisé. Les options « uniquement » (A, C) excluent l''un des deux partenaires, et aucune alternance hebdomadaire (D) n''est prévue.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q89', 'exam_eps_2025_specialty_nov_lycee', 89, 'Accidents et secourisme', 'Une dislocation est :', false, '[{"id": "A", "text": "Une fracture de l''os"}, {"id": "B", "text": "Une simple entorse"}, {"id": "C", "text": "Une élongation musculaire"}, {"id": "D", "text": "Un déplacement des surfaces articulaires"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Une dislocation, ou luxation, est la perte de contact entre les surfaces articulaires, souvent avec atteinte de la capsule et des ligaments. L''entorse (B) est une lésion ligamentaire sans déplacement permanent des surfaces, et l''élongation (C) touche le muscle.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q90', 'exam_eps_2025_specialty_nov_lycee', 90, 'Physiologie', 'L''enzyme qui catalyse la resynthèse de l''ATP à partir de l''ADP dans la chaîne respiratoire mitochondriale est :', false, '[{"id": "A", "text": "ATP-synthétase"}, {"id": "B", "text": "Myosine ATPase"}, {"id": "C", "text": "Lactate déshydrogénase"}, {"id": "D", "text": "Hexokinase"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'L''ATP-synthétase (ATP synthase), située dans la membrane interne de la mitochondrie, utilise le gradient de protons créé par la chaîne respiratoire pour phosphoryler l''ADP en ATP. La myosine ATPase (B) fait l''inverse : elle hydrolyse l''ATP pendant la contraction. La lactate déshydrogénase et l''hexokinase (C, D) appartiennent à la glycolyse.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q91', 'exam_eps_2025_specialty_nov_lycee', 91, 'Anatomie', 'Les os qui composent l''articulation du poignet sont :', false, '[{"id": "A", "text": "Scaphoïde, Lunatum, Triquetrum, Pisiforme, Trapèze, Trapézoïde, Capitatum et Hamatum"}, {"id": "B", "text": "Radius, Scaphoïde, Lunatum, Triquétrum, Pisiforme, Trapèze, Trapézoïde, Capitatum, Hamatum et Cubutis"}, {"id": "C", "text": "Scaphoïde, Lunatum, Triquétrum, Pisiforme, Trapèze, Trapézoïde, Capitatum, Hamatum, Péroné et ulna"}, {"id": "D", "text": "Semi-lunaire, pyramidal, Pisiforme, Trapèze, Trapézoïde, Capitatum et Hamatum"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Une articulation unit deux segments : le poignet relie l''avant-bras (radius, et ulna ou cubitus par l''intermédiaire du disque articulaire) aux os du carpe, ce que seule l''option B réunit. L''option A ne liste que les huit os du carpe, sans os de l''avant-bras. C introduit le péroné, un os de la jambe, et D oublie le scaphoïde. Clé incertaine : si l''examinateur entend « poignet » comme le massif carpien, la réponse attendue est A.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي A بينما mesconcours يعطي B. ⚠ A منافِسة لـ B')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q92', 'exam_eps_2025_specialty_nov_lycee', 92, 'Sport scolaire', 'La séance d''association sportive scolaire est obligatoire pour :', false, '[{"id": "A", "text": "L''enseignement scolaire public et privé"}, {"id": "B", "text": "La formation professionnelle publique et privée"}, {"id": "C", "text": "L''enseignement scolaire public, privé et de la formation professionnelle publique et privée"}, {"id": "D", "text": "L''enseignement scolaire public, privé et de la formation professionnelle publique ou privée"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'La loi 30-09 relative à l''éducation physique et aux sports impose une association sportive dans chaque établissement d''enseignement scolaire public ou privé et de formation professionnelle publique ou privée (article 3), et rend l''EPS obligatoire dans ces mêmes établissements (article 2). L''option D reprend cette formulation. C et D ne diffèrent que par « et » et « ou » : la clé suit le texte de la loi, mais l''écart de sens est mince.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '«سلم الأجوبة» الرسمي يعطي C بينما mesconcours يعطي D. ⚠ C وD لا تختلفان إلا بـ«و/أو»')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q93', 'exam_eps_2025_specialty_nov_lycee', 93, 'APS et apprentissage moteur', 'En volley-ball, le « pancake » est utilisé pour :', false, '[{"id": "A", "text": "Défendre à une main contre le sol"}, {"id": "B", "text": "Défendre à deux mains contre l''attaquant"}, {"id": "C", "text": "Défendre à deux mains contre le smacheur"}, {"id": "D", "text": "Défendre à une seule main contre le smacheur"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Le pancake est une défense de dernier recours : le joueur plonge et glisse la main à plat sur le sol, paume vers le bas, pour que le ballon rebondisse sur le dos de la main. C''est un geste à une main au ras du sol, pas un contre au filet face au smacheur (B, C, D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, 'الخيار C في الورقة يبدو «Défendre à deux mains contre le filet» حسب OCR بينما mesconcours ينقله «contre le smacheur»؛ الجواب A غير متأثر.')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q94', 'exam_eps_2025_specialty_nov_lycee', 94, 'Accidents et secourisme', 'Une entorse de deuxième degré se manifeste par une :', false, '[{"id": "A", "text": "Douleur ; gonflement ; ecchymoses ; incapacité partielle de l''articulation"}, {"id": "B", "text": "Douleur ; craquement ; gonflement ; ecchymoses ; sensation de déchirure"}, {"id": "C", "text": "Douleur ; étirement ; gonflement ; ecchymoses ; nausées"}, {"id": "D", "text": "Douleur ; gonflement ; rougeur ; articulation instable"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'L''entorse de deuxième degré correspond à une rupture partielle du ligament : douleur, gonflement, ecchymose et impotence fonctionnelle partielle. Le craquement avec sensation de déchirure (B) et l''articulation instable (D) signent plutôt la rupture complète du troisième degré.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q95', 'exam_eps_2025_specialty_nov_lycee', 95, 'Biomécanique', 'Lors d''un virage en course de vitesse, la force centrifuge :', false, '[{"id": "A", "text": "Pousse le coureur vers l''intérieur du virage"}, {"id": "B", "text": "Tire le coureur vers le haut"}, {"id": "C", "text": "Pousse le coureur vers l''extérieur du virage"}, {"id": "D", "text": "Freine le coureur automatiquement"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'Dans le repère du coureur, la force centrifuge (force d''inertie) est dirigée vers l''extérieur du virage. Pour la compenser, le coureur s''incline vers l''intérieur et pousse sur le sol, ce qui crée la force centripète. Une force dirigée vers l''intérieur (A) est la force centripète, pas la centrifuge.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q96', 'exam_eps_2025_specialty_nov_lycee', 96, 'Anatomie', 'Le rôle principal du faisceau moyen du muscle deltoïde est :', false, '[{"id": "A", "text": "La flexion du bras"}, {"id": "B", "text": "L''abduction du bras"}, {"id": "C", "text": "La rotation médiale du bras"}, {"id": "D", "text": "L''extension du bras"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['B']::text[], 'Le faisceau moyen (acromial) du deltoïde est le principal abducteur du bras, surtout entre 15° et 90°. La flexion (A) et la rotation médiale (C) reviennent au faisceau antérieur, l''extension (D) au faisceau postérieur.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q97', 'exam_eps_2025_specialty_nov_lycee', 97, 'APS et apprentissage moteur', 'Le rôle du libéro en volley-ball est de :', false, '[{"id": "A", "text": "Défendre et bloquer"}, {"id": "B", "text": "Défendre et servir"}, {"id": "C", "text": "Bloquer et réceptionner"}, {"id": "D", "text": "Défendre et réceptionner"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['D']::text[], 'Le libéro est un spécialiste de la défense et de la réception. Le règlement FIVB lui interdit de servir, de contrer ou de tenter un contre, et d''attaquer un ballon entièrement au-dessus du filet. Les options qui lui attribuent le service (B) ou le contre (A, C) sont donc fausses.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, NULL)
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q98', 'exam_eps_2025_specialty_nov_lycee', 98, 'Accidents et secourisme', 'En cas de crise d''asthme d''un élève en cours d''EPS, le professeur doit :', false, '[{"id": "A", "text": "Aider l''élève à utiliser son inhalateur et avertir l''administration"}, {"id": "B", "text": "Lui donner à boire, défaire les vêtements serrés et avertir l''administration"}, {"id": "C", "text": "Mettre l''élève en position semi-assise et alerter les secours"}, {"id": "D", "text": "Mettre l''élève en position ventrale, surveiller la respiration et avertir l''administration"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Le premier geste est d''arrêter l''effort et d''aider l''élève à prendre son traitement bronchodilatateur, puis d''informer l''administration. La position assise ou semi-assise (C) est aussi recommandée, mais l''alerte des secours ne s''impose que si la crise ne cède pas au traitement. La position ventrale (D) gêne la respiration. C reste défendable comme conduite à tenir, d''où une confiance moyenne.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, 'صياغة السؤال من mesconcours وحده (غير ظاهرة في نص OCR المتاح).')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q99', 'exam_eps_2025_specialty_nov_lycee', 99, 'Physiologie', 'Le rôle du système nerveux sympathique lors de l''exercice est de :', false, '[{"id": "A", "text": "Favoriser la digestion, la contraction musculaire"}, {"id": "B", "text": "Ralentir le rythme cardiaque, favoriser l''absorption du calcium"}, {"id": "C", "text": "Augmenter la fréquence cardiaque et la force de contraction musculaire"}, {"id": "D", "text": "Diminuer la tension artérielle, régulation de la fréquence cardiaque"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['C']::text[], 'À l''effort, le système sympathique (noradrénaline, adrénaline) augmente la fréquence cardiaque et la force de contraction du myocarde, et mobilise les substrats énergétiques. Ralentir le cœur (B) et favoriser la digestion (A) sont des effets parasympathiques, et le sympathique élève la pression artérielle au lieu de la baisser (D).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, 'صياغة السؤال من mesconcours وحده (غير ظاهرة في نص OCR المتاح).')
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

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2025) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2025_specialty_nov_lycee_q100', 'exam_eps_2025_specialty_nov_lycee', 100, 'Accidents et secourisme', 'Le rôle de l''arbitre dans la prévention des accidents est de :', false, '[{"id": "A", "text": "Veiller au respect des règles du jeu"}, {"id": "B", "text": "Intervenir en cas de faute"}, {"id": "C", "text": "Vérifier le matériel et les installations"}, {"id": "D", "text": "Sanctionner les comportements dangereux"}, {"id": "E", "text": "Toutes les réponses sont fausses"}]'::jsonb, ARRAY['A']::text[], 'Les règles du jeu sont en grande partie écrites pour protéger les joueurs, et l''arbitre prévient les accidents en les faisant respecter tout au long de la rencontre. Intervenir après une faute (B) ou sanctionner (D) vient après le geste dangereux. Vérifier le matériel et le terrain (C) fait aussi partie de sa mission, ce qui rend la clé moins certaine, mais A est la réponse la plus générale.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2025-613/', true, '⚠ C منافِسة لـ A صياغة السؤال من mesconcours وحده (غير ظاهرة في نص OCR المتاح).')
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
