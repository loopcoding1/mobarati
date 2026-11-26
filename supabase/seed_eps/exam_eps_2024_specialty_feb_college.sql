-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024)
-- ====================================================================
-- المصدر: ملف الحل 2024/التربية البدنية (التخصص) - دورة فبراير 2024.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2024-615/
--   لا يوجد مفتاح رسمي؛ الأجوبة من تصحيح mesconcours المقترح (مفتاح أُعدّ في مرّتين مستقلتين، 10 أسئلة موسومة ⚠).
--   عدد الأسئلة: 100 (QCM، أربعة اختيارات)؛ موثّقة verified=true: 11؛ موسومة بملاحظة تحقق: 10.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college', 'eps_college', 2024, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024)', 'دورة فبراير 2024', 240, 100, NULL)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (100 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q1', 'exam_eps_2024_specialty_feb_college', 1, 'APS et apprentissage moteur', 'Pour la course 100 mètres haies femmes, les athlètes doivent franchir 10 haies séparées de :', false, '[{"id": "A", "text": "8,50 mètres"}, {"id": "B", "text": "10 mètres"}, {"id": "C", "text": "12 mètres"}, {"id": "D", "text": "13 mètres"}]'::jsonb, ARRAY['A']::text[], 'Au 100 m haies femmes, les 10 haies sont espacées de 8,50 m. La première est à 13 m du départ et la dernière à 10,50 m de l''arrivée: 13 m est la distance de la première haie, pas l''intervalle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q2', 'exam_eps_2024_specialty_feb_college', 2, 'Physiologie', 'Les principales sources d''énergie utilisées par le corps pendant l''effort physique sont :', false, '[{"id": "A", "text": "Les glucides, les lipides et les protéines"}, {"id": "B", "text": "Les glucides, les lipides et les vitamines"}, {"id": "C", "text": "Les glucides, les vitamines et les sels minéraux"}, {"id": "D", "text": "Les glucides, les lipides et les sels minéraux"}]'::jsonb, ARRAY['A']::text[], 'Seuls les glucides, les lipides et les protéines fournissent de l''énergie (environ 4, 9 et 4 kcal/g). Les vitamines et les sels minéraux interviennent dans le métabolisme comme cofacteurs, mais ils n''apportent aucune calorie.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q3', 'exam_eps_2024_specialty_feb_college', 3, 'Sport scolaire', 'La cotisation annuelle de chaque élève pour l''association sportive scolaire est de :', false, '[{"id": "A", "text": "20 dh à 30 dh"}, {"id": "B", "text": "10 dh à 25 dh"}, {"id": "C", "text": "20 dh et plus"}, {"id": "D", "text": "10 dh et plus"}]'::jsonb, ARRAY['D']::text[], 'La note ministérielle n° 074X21 du 30 juin 2021 (§ 6) fixe la cotisation annuelle de l''élève à 10 DH au minimum, sans plafond, et D le reprend mot pour mot. B (10 à 25 DH) n''a été vrai sous aucun texte : avant 2021, la circulaire n° 1 de la FRMSS (1997) donnait 10 DH au minimum et 20 DH au maximum. A et C partent d''un plancher de 20 DH qu''aucun texte ne retient.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q4', 'exam_eps_2024_specialty_feb_college', 4, 'Accidents et secourisme', 'Pour contrôler le saignement du nez lors d''un accident en EPS, il est préférable de :', false, '[{"id": "A", "text": "Pencher la tête vers l''avant et pincer la partie molle du nez"}, {"id": "B", "text": "Pencher la tête vers l''arrière et pincer la partie molle du nez"}, {"id": "C", "text": "Allonger la victime sur le côté sans lui pincer le nez"}, {"id": "D", "text": "Allonger la victime sur le dos sans lui pincer le nez"}]'::jsonb, ARRAY['A']::text[], 'On assoit la victime, tête penchée en avant, et on comprime la partie molle du nez pendant une dizaine de minutes. Pencher la tête en arrière fait couler le sang dans la gorge: la victime l''avale, ce qui peut provoquer nausées et vomissements, et on ne voit plus si le saignement s''arrête.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q5', 'exam_eps_2024_specialty_feb_college', 5, 'Physiologie', 'Les fibres musculaires lentes qui contribuent à l''endurance sont :', false, '[{"id": "A", "text": "Les fibres rapides"}, {"id": "B", "text": "Les fibres Fast Twitch"}, {"id": "C", "text": "Les fibres explosives"}, {"id": "D", "text": "Les fibres Slow Twitch"}]'::jsonb, ARRAY['D']::text[], 'Les fibres lentes sont les fibres de type I, appelées Slow Twitch en anglais. Riches en mitochondries et en myoglobine, elles fonctionnent surtout en aérobie et résistent à la fatigue. Les trois autres propositions désignent les fibres rapides de type II.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q6', 'exam_eps_2024_specialty_feb_college', 6, 'Physiologie', 'Lors d''une course de 1500 mètres, la filière énergétique la plus sollicitée est :', false, '[{"id": "A", "text": "La filière anaérobie alactique"}, {"id": "B", "text": "La filière aérobie"}, {"id": "C", "text": "La filière anaérobie lactique"}, {"id": "D", "text": "La filière anaérobie lactique et alactique"}]'::jsonb, ARRAY['B']::text[], '⚠ Un 1500 m dure de 3 min 30 à plus de 5 min, et la part aérobie de la dépense y est estimée à environ 75 à 85 %. La filière lactique y joue un rôle réel, surtout au départ et au sprint final, et certains cours la présentent comme dominante, d''où la lecture C ; elle domine pourtant plutôt sur 400 m et 800 m.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q7', 'exam_eps_2024_specialty_feb_college', 7, 'APS et apprentissage moteur', 'Pour la course de 100 mètres haies dames, la première haie est située à :', false, '[{"id": "A", "text": "13 mètres du départ"}, {"id": "B", "text": "10 mètres du départ"}, {"id": "C", "text": "11 mètres du départ"}, {"id": "D", "text": "12 mètres du départ"}]'::jsonb, ARRAY['A']::text[], 'Au 100 m haies femmes, la première haie est placée à 13 m de la ligne de départ, les intervalles font 8,50 m et la dernière haie est à 10,50 m de l''arrivée. 13,72 m est la valeur du 110 m haies hommes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q8', 'exam_eps_2024_specialty_feb_college', 8, 'APS et apprentissage moteur', 'L''impact de la périodisation de l''entraînement sur la performance est :', false, '[{"id": "A", "text": "D''éviter la surcharge et d''optimiser la progression"}, {"id": "B", "text": "De maintenir un poids corporel optimal"}, {"id": "C", "text": "De favoriser l''énergie nécessaire"}, {"id": "D", "text": "De développer les mêmes capacités physiques"}]'::jsonb, ARRAY['A']::text[], 'La périodisation découpe la saison en cycles (macro, méso, microcycles) qui alternent charge et récupération. Elle prévient le surentraînement et amène l''athlète à son pic de forme au bon moment. Elle fait justement varier les qualités travaillées d''une période à l''autre, ce qui écarte D.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q9', 'exam_eps_2024_specialty_feb_college', 9, 'APS et apprentissage moteur', 'En rugby, la ligne située avant celle du ballon mort est :', false, '[{"id": "A", "text": "La ligne de fond"}, {"id": "B", "text": "La ligne des opérations"}, {"id": "C", "text": "La ligne médiane"}, {"id": "D", "text": "La ligne d''en-but"}]'::jsonb, ARRAY['D']::text[], 'Entre la ligne d''en-but (ligne de but) et la ligne de ballon mort s''étend l''aire d''en-but, profonde de 6 à 22 m selon les règles de World Rugby. En partant du fond du terrain vers le centre, on rencontre donc la ligne de ballon mort, puis la ligne d''en-but. La ligne médiane est au milieu du terrain.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q10', 'exam_eps_2024_specialty_feb_college', 10, 'APS et apprentissage moteur', 'La distance de la course de Steeple est:', false, '[{"id": "A", "text": "1500 m"}, {"id": "B", "text": "3 000 m"}, {"id": "C", "text": "5 000 m"}, {"id": "D", "text": "10 000m"}]'::jsonb, ARRAY['B']::text[], 'Le steeple olympique se court sur 3000 m, hommes et femmes, avec 28 passages de haies et 7 passages de la rivière. Une version sur 2000 m existe chez les jeunes, mais elle ne figure pas parmi les propositions.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q11', 'exam_eps_2024_specialty_feb_college', 11, 'Physiologie', 'Les fibres musculaires responsables de la force explosive sont :', false, '[{"id": "A", "text": "Les fibres de type I"}, {"id": "B", "text": "Les fibres Fast Twitch"}, {"id": "C", "text": "Les fibres lentes"}, {"id": "D", "text": "Les fibres Slow Twitch"}]'::jsonb, ARRAY['B']::text[], 'La force explosive repose sur les fibres rapides de type II (Fast Twitch), qui se contractent vite et produisent beaucoup de force, mais se fatiguent rapidement. Les fibres de type I, lentes ou Slow Twitch, sont les fibres de l''endurance: A, C et D désignent la même famille.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q12', 'exam_eps_2024_specialty_feb_college', 12, 'Biomécanique', 'La cinématique en biomécanique est :', false, '[{"id": "A", "text": "L''étude des mouvements du corps sans tenir compte des forces impliquées"}, {"id": "B", "text": "L''étude des mouvements du corps en tenant compte des forces impliquées"}, {"id": "C", "text": "L''étude des forces impliquées dans les mouvements du corps"}, {"id": "D", "text": "L''étude des muscles du corps sans tenir compte des forces impliquées"}]'::jsonb, ARRAY['A']::text[], 'La cinématique décrit le mouvement (positions, trajectoires, vitesses, accélérations) sans s''intéresser à ses causes. L''étude des forces qui produisent le mouvement relève de la cinétique, ou dynamique, ce que décrivent B et C.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q13', 'exam_eps_2024_specialty_feb_college', 13, 'APS et apprentissage moteur', 'La hauteur de haie en course de 110 m haies hommes est de :', false, '[{"id": "A", "text": "1,070 m"}, {"id": "B", "text": "1,050 m"}, {"id": "C", "text": "1,067 m"}, {"id": "D", "text": "1,040 m"}]'::jsonb, ARRAY['C']::text[], 'Au 110 m haies hommes, la haie mesure 1,067 m, soit 42 pouces, valeur fixée par le règlement de World Athletics. Les autres hauteurs proposées ne correspondent à aucune épreuve senior.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q14', 'exam_eps_2024_specialty_feb_college', 14, 'Anatomie', 'Le biceps crural est un muscle situé au niveau :', false, '[{"id": "A", "text": "Du bras"}, {"id": "B", "text": "De l''avant-bras"}, {"id": "C", "text": "De la cuisse"}, {"id": "D", "text": "Du mollet"}]'::jsonb, ARRAY['C']::text[], 'Le biceps crural, ou biceps fémoral, est un muscle de la loge postérieure de la cuisse, qui fait partie des ischio-jambiers. Il fléchit le genou et étend la hanche. Le muscle du bras porte le nom de biceps brachial.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q15', 'exam_eps_2024_specialty_feb_college', 15, 'APS et apprentissage moteur', 'Un set est gagné en volley-ball, lorsqu''une équipe réalise :', false, '[{"id": "A", "text": "25 points avec au moins un point d''écart"}, {"id": "B", "text": "25 points avec au moins deux points d''écart"}, {"id": "C", "text": "25 points avec un point d''écart"}, {"id": "D", "text": "25 points avec au moins trois points d''écart"}]'::jsonb, ARRAY['B']::text[], 'Selon les règles de la FIVB, un set est gagné par l''équipe qui marque la première 25 points avec au moins deux points d''avance. À 24-24, le jeu continue jusqu''à ce qu''un écart de deux points soit atteint. Le set décisif se joue en 15 points, toujours avec deux points d''écart.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q16', 'exam_eps_2024_specialty_feb_college', 16, 'Physiologie', 'La filière sollicitée en haltérophilie, lors de l''exécution d''un épaulé jeté est :', false, '[{"id": "A", "text": "La filière anaérobie alactique"}, {"id": "B", "text": "La filière aérobie"}, {"id": "C", "text": "La filière anaérobie lactique"}, {"id": "D", "text": "La filière anaérobie alactique et anaérobie lactique"}]'::jsonb, ARRAY['A']::text[], 'Un épaulé-jeté dure quelques secondes et demande une puissance maximale. L''énergie vient de l''ATP et de la phosphocréatine déjà présents dans le muscle, sans production notable de lactate. La filière lactique ne prend le relais que sur des efforts intenses de plus d''une dizaine de secondes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q17', 'exam_eps_2024_specialty_feb_college', 17, 'APS et apprentissage moteur', 'Pour le 400 mètres haies, les athlètes doivent franchir :', false, '[{"id": "A", "text": "8 haies espacées de 35 mètres"}, {"id": "B", "text": "10 haies espacées de 35 mètres"}, {"id": "C", "text": "10 haies espacées de 25 mètres"}, {"id": "D", "text": "8 haies espacées de 25 mètres"}]'::jsonb, ARRAY['B']::text[], 'Le 400 m haies compte 10 haies, hommes et femmes. La première est à 45 m du départ, les intervalles font 35 m et la dernière est à 40 m de l''arrivée. Seule la hauteur change: 0,914 m pour les hommes, 0,762 m pour les femmes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q18', 'exam_eps_2024_specialty_feb_college', 18, 'Accidents et secourisme', 'L''entorse de la cheville peut être causée par une atteinte :', false, '[{"id": "A", "text": "Des ligaments de l''articulation au niveau de la cheville"}, {"id": "B", "text": "Des muscles spécifiques de l''articulation au niveau de la cheville"}, {"id": "C", "text": "Des os au niveau de la cheville"}, {"id": "D", "text": "Du tendon d''Achille au niveau de la cheville"}]'::jsonb, ARRAY['A']::text[], 'Une entorse est une lésion des ligaments d''une articulation, le plus souvent du ligament latéral externe à la cheville après un mouvement de torsion. Une atteinte du muscle relève de l''élongation ou de la déchirure, une atteinte de l''os de la fracture, et celle du tendon d''Achille de la tendinopathie ou de la rupture tendineuse.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q19', 'exam_eps_2024_specialty_feb_college', 19, 'Anatomie', 'Le triceps sural est composé de deux muscles principaux :', false, '[{"id": "A", "text": "Le gastrocnémien et le soléaire"}, {"id": "B", "text": "Le semi-tendineux et le semi-membraneux"}, {"id": "C", "text": "Les deux jumeaux et le soléaire"}, {"id": "D", "text": "L''obturateur externe et l''obturateur interne"}]'::jsonb, ARRAY['A']::text[], 'Le triceps sural réunit deux muscles : le gastrocnémien (les jumeaux, avec ses deux chefs) et le soléaire, qui se terminent ensemble sur le tendon d''Achille. La réponse C décrit les trois chefs du triceps, pas deux muscles. Le semi-tendineux et le semi-membraneux sont des ischio-jambiers, les obturateurs des muscles de la hanche.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q20', 'exam_eps_2024_specialty_feb_college', 20, 'APS et apprentissage moteur', 'Dans l''épreuve de 3000 m Steeple il y a :', false, '[{"id": "A", "text": "28 franchissements de haies et 9 rivières"}, {"id": "B", "text": "29 franchissements de haies et 8 rivières"}, {"id": "C", "text": "28 franchissements de haies et 7 rivières"}, {"id": "D", "text": "30 franchissements de haies et 9 rivières"}]'::jsonb, ARRAY['C']::text[], 'Le règlement de World Athletics fixe pour le 3000 m steeple 28 passages de haies et 7 passages de la rivière, soit 35 obstacles au total. Les autres combinaisons ne correspondent à aucune distance officielle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q21', 'exam_eps_2024_specialty_feb_college', 21, 'Physiologie', 'L''anaérobie alactique est efficace pendant :', false, '[{"id": "A", "text": "Un effort au-delà de 25 secondes"}, {"id": "B", "text": "Un effort au-delà de 15 secondes"}, {"id": "C", "text": "Un effort jusqu''environ 15 secondes"}, {"id": "D", "text": "Un effort au-delà d''une minute"}]'::jsonb, ARRAY['C']::text[], 'La filière anaérobie alactique repose sur l''ATP et la phosphocréatine, dont les réserves s''épuisent en quelques secondes : elle domine les efforts maximaux jusqu''à environ 10 à 15 secondes. Au-delà de 15 secondes (B), c''est la filière anaérobie lactique qui prend le relais.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q22', 'exam_eps_2024_specialty_feb_college', 22, 'Accidents et secourisme', 'En secourisme la méthode Heimlich consiste à faire des :', false, '[{"id": "A", "text": "Compressions cardiaques"}, {"id": "B", "text": "Compressions dorsales"}, {"id": "C", "text": "Compressions abdominales"}, {"id": "D", "text": "Compressions thoraciques"}]'::jsonb, ARRAY['C']::text[], 'La méthode de Heimlich consiste en des compressions abdominales brusques, poing placé entre le nombril et le sternum, pour expulser un corps étranger qui obstrue les voies aériennes. Les claques dans le dos se donnent avant, et les compressions thoraciques sont réservées au nourrisson, à la femme enceinte ou à la personne obèse.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q23', 'exam_eps_2024_specialty_feb_college', 23, 'Physiologie', 'La course de 800 m est une épreuve qui sollicite :', false, '[{"id": "A", "text": "La puissance maximale aérobie"}, {"id": "B", "text": "La puissance anaérobie"}, {"id": "C", "text": "La puissance anaérobie lactique"}, {"id": "D", "text": "La puissance anaérobie alactique"}]'::jsonb, ARRAY['C']::text[], 'Le 800 m dure de 1 min 40 à 2 min 30 environ : c''est l''épreuve type de la filière anaérobie lactique, avec une forte accumulation de lactate. L''aérobie y contribue aussi, mais la puissance maximale aérobie caractérise plutôt les courses de 1500 m à 3000 m. L''alactique ne couvre que les premières secondes de l''effort.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q24', 'exam_eps_2024_specialty_feb_college', 24, 'APS et apprentissage moteur', 'Une exclusion temporaire en handball est une sanction lorsque :', false, '[{"id": "A", "text": "Un joueur quitte le terrain et son équipe continue à jouer avec un joueur en moins"}, {"id": "B", "text": "Le joueur est remplacé immédiatement et l''équipe continue à jouer"}, {"id": "C", "text": "Un joueur quitte le terrain temporairement et son équipe doit jouer avec un joueur en moins"}, {"id": "D", "text": "Un joueur quitte le terrain temporairement et doit être remplacé par un autre joueur"}]'::jsonb, ARRAY['C']::text[], 'L''exclusion de 2 minutes (règle 16 de l''IHF) oblige le joueur à quitter le terrain pour une durée limitée, et son équipe joue en infériorité numérique pendant ce temps, sans pouvoir le remplacer. La réponse A ne dit pas que la sortie est temporaire et laisse entendre que l''équipe reste à un joueur de moins jusqu''à la fin, ce qui ne se produit pour aucune sanction au handball.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q25', 'exam_eps_2024_specialty_feb_college', 25, 'Biomécanique', 'Pour effectuer des éléments rotatoires en gymnastique il faut que :', false, '[{"id": "A", "text": "Les gymnastes ajustent leurs postures pour maximiser le moment d''inertie"}, {"id": "B", "text": "Les gymnastes n''ajustent pas leurs postures pour maximiser le moment d''inertie"}, {"id": "C", "text": "Les gymnastes ajustent leurs postures pour minimiser le moment d''inertie"}, {"id": "D", "text": "Les gymnastes n''ajustent pas leurs postures pour minimiser le moment d''inertie"}]'::jsonb, ARRAY['C']::text[], 'En l''air, le moment cinétique se conserve : en rapprochant les segments de l''axe de rotation (position groupée), le gymnaste diminue son moment d''inertie et sa vitesse de rotation augmente. Maximiser le moment d''inertie (A) ralentirait la rotation, ce qu''on cherche seulement à l''ouverture avant la réception.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q26', 'exam_eps_2024_specialty_feb_college', 26, 'APS et apprentissage moteur', 'Un jet est valable en lancer de poids si :', false, '[{"id": "A", "text": "L''engin tombe sur une des deux lignes limitant l''aire de chute"}, {"id": "B", "text": "Le lanceur bute l''intérieur du butoir et le poids tombe à l''intérieur de l''aire de chute"}, {"id": "C", "text": "Le lanceur touche le haut du butoir par n''importe quelle partie de son corps"}, {"id": "D", "text": "Le lanceur sort de la moitié avant du cercle après la chute du poids"}]'::jsonb, ARRAY['B']::text[], 'Le règlement de World Athletics autorise le lanceur à toucher la face intérieure du butoir, et le jet est valable si le poids retombe entièrement à l''intérieur des lignes du secteur. Un engin qui touche une ligne du secteur (A), un contact avec le dessus du butoir (C) ou une sortie par la moitié avant du cercle (D) entraînent un essai nul.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q27', 'exam_eps_2024_specialty_feb_college', 27, 'APS et apprentissage moteur', 'L''entraînement de la force en saut en longueur permet :', false, '[{"id": "A", "text": "Une synchronisation des membres"}, {"id": "B", "text": "Une course étalonnée"}, {"id": "C", "text": "Une impulsion explosive"}, {"id": "D", "text": "Dissociation segmentaire"}]'::jsonb, ARRAY['C']::text[], 'Le travail de force, surtout de force explosive des membres inférieurs, améliore la capacité à produire une grande force en très peu de temps au moment de l''appel : c''est l''impulsion. L''étalonnage de la course d''élan et la coordination segmentaire se travaillent par des exercices techniques, pas par la musculation.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q28', 'exam_eps_2024_specialty_feb_college', 28, 'APS et apprentissage moteur', 'Le libéro en Volley-ball a le droit :', false, '[{"id": "A", "text": "D''attaquer dans la ligne des trois mètres"}, {"id": "B", "text": "De passer le ballon dans la ligne de trois mètres"}, {"id": "C", "text": "De bloquer le ballon dans la ligne d''attaque"}, {"id": "D", "text": "De faire le service pour son équipe"}]'::jsonb, ARRAY['B']::text[], 'Selon les règles de la FIVB (règle 19), le libéro ne peut ni servir, ni contrer ou tenter de contrer, ni attaquer un ballon entièrement au-dessus du filet. Il a en revanche le droit de faire une passe, y compris dans la zone avant. Si cette passe est faite en touche haute à doigts dans la zone avant, l''attaquant ne peut pas frapper le ballon au-dessus du filet.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q29', 'exam_eps_2024_specialty_feb_college', 29, 'Anatomie', 'Les muscles ischio-jambiers sont principalement responsables de :', false, '[{"id": "A", "text": "La rotation interne de la jambe"}, {"id": "B", "text": "L''extension de la jambe"}, {"id": "C", "text": "La flexion de la jambe"}, {"id": "D", "text": "La rotation externe de la jambe"}]'::jsonb, ARRAY['C']::text[], 'Les ischio-jambiers (biceps fémoral, semi-tendineux, semi-membraneux) passent en arrière du genou : leur action principale est la flexion de la jambe sur la cuisse, et ils participent aussi à l''extension de la hanche. L''extension de la jambe est le rôle du quadriceps. Les rotations du genou fléchi sont des actions secondaires.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q30', 'exam_eps_2024_specialty_feb_college', 30, 'APS et apprentissage moteur', 'Avant la première haie dans le 100 mètres haies dames, les athlètes doivent franchir :', false, '[{"id": "A", "text": "10 haies séparées de 9,50 mètres"}, {"id": "B", "text": "10 haies séparées de 8,50 mètres"}, {"id": "C", "text": "8 haies séparées de 8,50 mètres"}, {"id": "D", "text": "8 haies séparées de 8,50 mètres"}]'::jsonb, ARRAY['B']::text[], '⚠ Le sujet est défectueux : son énoncé parle de ce qui précède la première haie, alors que les propositions décrivent toute la course, et C et D sont imprimées à l''identique. La seule proposition conforme au règlement est B : selon la règle technique 22.1 de World Athletics, le 100 m haies féminin compte 10 haies, 13 m jusqu''à la première, 8,50 m entre deux haies et 10,50 m de la dernière à l''arrivée. Aucune course de haies officielle n''espace ses haies de 9,50 m (A) : le 110 m haies masculin les espace de 9,14 m. Aucune ne compte 8 haies non plus, ce qui écarte C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها؛ سؤال معيب في الورقة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q31', 'exam_eps_2024_specialty_feb_college', 31, 'Accidents et secourisme', 'Une fracture est qualifiée d''ouverte lorsque :', false, '[{"id": "A", "text": "Les extrémités de l''os peuvent se déplacer"}, {"id": "B", "text": "L''os brisé traverse la peau"}, {"id": "C", "text": "L''os brisé perfore un organe interne"}, {"id": "D", "text": "L''os est brisé en multiples morceaux"}]'::jsonb, ARRAY['B']::text[], 'Une fracture est ouverte quand la peau est lésée au niveau du foyer de fracture, le plus souvent parce qu''un fragment d''os l''a traversée, ce qui expose l''os à l''infection. Des fragments qui se déplacent définissent une fracture déplacée, et un os brisé en plusieurs morceaux une fracture comminutive.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q32', 'exam_eps_2024_specialty_feb_college', 32, 'Physiologie', 'Les muscles sollicités pour la ventilation pulmonaire sont :', false, '[{"id": "A", "text": "Les abdominaux et les dorsaux"}, {"id": "B", "text": "Les pectoraux et les muscles spinaux"}, {"id": "C", "text": "Le diaphragme et les muscles intercostaux"}, {"id": "D", "text": "Les abdominaux et les muscles spinaux"}]'::jsonb, ARRAY['C']::text[], 'Le diaphragme est le principal muscle inspiratoire, aidé par les intercostaux externes qui soulèvent les côtes ; les intercostaux internes participent à l''expiration forcée. Les abdominaux n''interviennent que comme muscles accessoires de l''expiration forcée, et les muscles spinaux ou pectoraux ne sont pas des muscles ventilatoires principaux.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q33', 'exam_eps_2024_specialty_feb_college', 33, 'Physiologie', 'La contraction pliométrique est définie par l''implication de mouvements qui :', false, '[{"id": "A", "text": "Combinent la contraction isotonique suivie immédiatement par la contraction concentrique"}, {"id": "B", "text": "Combinent la contraction isométrique suivie immédiatement par la contraction concentrique"}, {"id": "C", "text": "Combinent la contraction excentrique suivie immédiatement par la contraction isométrique"}, {"id": "D", "text": "Combinent la contraction excentrique suivie immédiatement par la contraction concentrique"}]'::jsonb, ARRAY['D']::text[], 'Le régime pliométrique enchaîne un étirement du muscle sous tension (phase excentrique) et une contraction concentrique immédiate : c''est le cycle étirement-détente, exploité par exemple dans les bondissements. Un temps d''arrêt isométrique entre les deux phases (B, C) ferait perdre l''énergie élastique emmagasinée.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q34', 'exam_eps_2024_specialty_feb_college', 34, 'APS et apprentissage moteur', 'Les dimensions du terrain du hand-ball sont :', false, '[{"id": "A", "text": "20 mètres à 40 mètres de longueur et de 14 à 16 mètres de largeur"}, {"id": "B", "text": "38 mètres à 40 mètres de longueur et de 18 à 20 mètres de largeur"}, {"id": "C", "text": "40 mètres à 45 mètres de longueur et de 18 à 20 mètres de largeur"}, {"id": "D", "text": "42 mètres à 46 mètres de longueur et de 15 à 18 mètres de largeur"}]'::jsonb, ARRAY['B']::text[], '⚠ Le règlement de l''IHF (règle 1:1) fixe le terrain à 40 m sur 20 m, sans aucune tolérance, et c''était déjà le cas dans l''édition de 2016. Cette valeur entre à la fois dans la fourchette de B (38 à 40 m sur 18 à 20 m) et dans celle de C (40 à 45 m sur 18 à 20 m), d''où le défaut de l''item. B reste la réponse attendue : elle correspond aux terrains réduits que tolèrent certaines fédérations nationales, pas à une règle de l''IHF. A (14 à 16 m de large) et D (15 à 18 m) n''atteignent pas les 20 m réglementaires.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q35', 'exam_eps_2024_specialty_feb_college', 35, 'Physiologie', 'La filière énergétique dominante lors d''un lancer de Javelot est :', false, '[{"id": "A", "text": "L''anaérobie lactique"}, {"id": "B", "text": "L''anaérobie alactique et Aérobie"}, {"id": "C", "text": "L''anaérobie alactique"}, {"id": "D", "text": "L''aérobie"}]'::jsonb, ARRAY['C']::text[], 'Le lancer de javelot est un effort maximal et explosif qui dure une à deux secondes. L''énergie vient alors presque entièrement de l''ATP et de la phosphocréatine déjà stockées dans le muscle : c''est la filière anaérobie alactique. La filière lactique ne devient dominante qu''au-delà d''une dizaine de secondes d''effort intense, et l''aérobie n''intervient pas de façon significative sur un geste aussi bref.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q36', 'exam_eps_2024_specialty_feb_college', 36, 'Biomécanique', 'Le moment de force en gymnastique au sol signifie :', false, '[{"id": "A", "text": "La tendance d''une force à fixer le corps dans une situation inhabituelle"}, {"id": "B", "text": "La tendance d''une force à faire tourner le corps dans une situation inhabituelle"}, {"id": "C", "text": "La tendance d''une force à translater le corps dans une situation inhabituelle"}, {"id": "D", "text": "La tendance d''une force à propulser le corps dans une situation inhabituelle"}]'::jsonb, ARRAY['B']::text[], 'Le moment d''une force (M = F × d, avec d le bras de levier) mesure sa tendance à faire tourner un corps autour d''un axe : c''est lui qui produit les rotations des saltos et des roulades. Propulser ou translater un corps relève de la résultante des forces, pas de leur moment.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q37', 'exam_eps_2024_specialty_feb_college', 37, 'APS et apprentissage moteur', 'La distance de zone de remplacement en Hand-ball est de :', false, '[{"id": "A", "text": "3,5 mètres de part et d''autre de la ligne médiane"}, {"id": "B", "text": "3 mètres de part et d''autre de la ligne médiane"}, {"id": "C", "text": "4,5 mètres de part et d''autre de la ligne médiane"}, {"id": "D", "text": "3,7 mètres de part et d''autre de la ligne médiane"}]'::jsonb, ARRAY['C']::text[], 'La règle 1:10 précise que la ligne de remplacement de chaque équipe s''étend de la ligne médiane jusqu''à 4,5 m de celle-ci, le long de la ligne de touche. Les valeurs de 3 m, 3,5 m ou 3,7 m ne figurent dans aucune version du règlement pour cette ligne.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q38', 'exam_eps_2024_specialty_feb_college', 38, 'Anatomie', 'Pendant l''activité sportive, les cartilages dans la stabilité articulaire :', false, '[{"id": "A", "text": "Servent de liaison entre les os"}, {"id": "B", "text": "Participent à l''élasticité musculaire"}, {"id": "C", "text": "Réduisent la friction entre les surfaces articulaires"}, {"id": "D", "text": "Augmentent la densité osseuse"}]'::jsonb, ARRAY['C']::text[], 'Le cartilage articulaire recouvre les extrémités osseuses d''une articulation synoviale. Lisse et lubrifié par le liquide synovial, il réduit les frottements et amortit les chocs pendant le mouvement. La liaison entre les os est assurée par les ligaments et la capsule, pas par le cartilage, et il ne joue aucun rôle dans l''élasticité musculaire ni dans la densité osseuse.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q39', 'exam_eps_2024_specialty_feb_college', 39, 'Sport scolaire', 'Au début de chaque année scolaire, le professeur d''EPS commence par :', false, '[{"id": "A", "text": "Une ASS d''élite"}, {"id": "B", "text": "Une ASS d''élite et de masse"}, {"id": "C", "text": "Une ASS de masse"}, {"id": "D", "text": "Une ASS sélective"}]'::jsonb, ARRAY['C']::text[], 'L''association sportive scolaire s''ouvre d''abord à tous les élèves : en début d''année, le professeur organise une activité de masse (initiation, rencontres internes, tournois entre classes). C''est à partir de cette base large qu''il repère ensuite les meilleurs éléments pour former les équipes sélectives qui disputeront les compétitions. Commencer par l''élite écarterait la majorité des élèves.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q40', 'exam_eps_2024_specialty_feb_college', 40, 'APS et apprentissage moteur', 'La pénétration du défenseur dans son propre camp pour récupérer la balle en hand-ball est sanctionnée par :', false, '[{"id": "A", "text": "Un jet franc à l''endroit de la faute"}, {"id": "B", "text": "Une faute de 9 mètres"}, {"id": "C", "text": "Un jet de 7 mètres"}, {"id": "D", "text": "Un carton jaune au joueur fautif"}]'::jsonb, ARRAY['B']::text[], '⚠ Un défenseur qui entre dans sa surface de but pour en tirer un avantage, ici récupérer le ballon, est sanctionné par un jet franc (règle 6:2b). Comme la faute a lieu dans la surface de but, ce jet franc se joue depuis la ligne des 9 mètres (règle 13:6), d''où « faute de 9 mètres ». Le jet de 7 m n''est accordé que si l''entrée détruit une occasion manifeste de but (règle 6:2c), et la faute n''entraîne pas en elle-même de carton jaune. Beaucoup de fiches scolaires enseignent pourtant le jet de 7 m (C) pour cette faute, d''où la lecture concurrente.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q41', 'exam_eps_2024_specialty_feb_college', 41, 'Physiologie', 'La capacité pulmonaire optimale dans l''exercice physique permet :', false, '[{"id": "A", "text": "La détermination de la quantité de CO2 que les muscles peuvent éliminer pendant l''exercice"}, {"id": "B", "text": "La détermination de la quantité d''acide lactique que les muscles peuvent tolérer"}, {"id": "C", "text": "La détermination de la quantité d''énergie que les muscles libèrent pendant l''exercice"}, {"id": "D", "text": "La détermination de la quantité d''oxygène que les muscles peuvent recevoir pendant l''exercice"}]'::jsonb, ARRAY['D']::text[], 'Le rôle premier des poumons à l''effort est d''apporter de l''oxygène au sang, donc aux muscles qui travaillent. Une capacité pulmonaire élevée conditionne la quantité d''oxygène disponible pour la filière aérobie. La tolérance à l''acide lactique dépend du muscle et des systèmes tampons, pas du volume pulmonaire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q42', 'exam_eps_2024_specialty_feb_college', 42, 'APS et apprentissage moteur', 'Un écran en basketball est une :', false, '[{"id": "A", "text": "Technique défensive où un joueur bloque le chemin d''un attaquant pour récupérer le ballon"}, {"id": "B", "text": "Technique offensive où un joueur bloque un défenseur pour permettre à son coéquipier de se déplacer librement"}, {"id": "C", "text": "Technique défensive où un joueur fait un écran à un attaquant pour intercepter le ballon"}, {"id": "D", "text": "Technique offensive individuelle où un joueur attaquant se libère du défenseur"}]'::jsonb, ARRAY['B']::text[], 'L''écran est une action collective offensive : un attaquant se place de façon légale sur la trajectoire du défenseur de son partenaire pour libérer ce dernier (pick and roll, écran retard). Ce n''est pas une technique défensive, et ce n''est pas une action individuelle puisqu''elle implique au moins deux attaquants.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q43', 'exam_eps_2024_specialty_feb_college', 43, 'Sport scolaire', 'La quote-part des cotisations d''adhésion annuelle allouée à la fédération royale du sport scolaire est', false, '[{"id": "A", "text": "15%"}, {"id": "B", "text": "10%"}, {"id": "C", "text": "65%"}, {"id": "D", "text": "20%"}]'::jsonb, ARRAY['A']::text[], 'La note ministérielle n° 074X21 du 30 juin 2021 (§ 6) répartit la cotisation ainsi : 65 % pour l''association sportive de l''établissement, 10 % pour la branche provinciale de la FRMSS, 5 % pour sa branche régionale, 15 % pour la fédération et 5 % pour le fonds de soutien du sport scolaire. Les circulaires de la FRMSS de 1997 donnaient déjà cette répartition. Les 20 % de D additionnent la part de la fédération et celle du fonds de soutien, comme une ligne du formulaire de la note n° 094X16 de 2016, mais la fédération elle-même ne reçoit que 15 %.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q44', 'exam_eps_2024_specialty_feb_college', 44, 'APS et apprentissage moteur', 'Trois points en basket-ball sont accordés si le tir est effectué de :', false, '[{"id": "A", "text": "L''extérieur de la ligne des trois points, située à 6,25 mètres du panier"}, {"id": "B", "text": "L''extérieur de la ligne des trois points, située à 6,75 mètres du panier"}, {"id": "C", "text": "L''extérieur de la ligne des trois points, située à 6,50 mètres du panier"}, {"id": "D", "text": "L''extérieur de la ligne des trois points, située à 6,60 mètres du panier"}]'::jsonb, ARRAY['B']::text[], 'Depuis la réforme FIBA de 2010, la ligne des trois points est tracée à 6,75 m du centre du panier (6,60 m dans les corners). La distance de 6,25 m correspond à l''ancien règlement, en vigueur jusqu''en 2010.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q45', 'exam_eps_2024_specialty_feb_college', 45, 'Physiologie', 'La récupération respiratoire après un effort intense ne permet pas :', false, '[{"id": "A", "text": "Le rétablissement des gaz sanguins"}, {"id": "B", "text": "L''élimination de l''excès de dioxyde de carbone"}, {"id": "C", "text": "L''augmentation du débit cardiaque"}, {"id": "D", "text": "La restauration des niveaux d''oxygène"}]'::jsonb, ARRAY['C']::text[], 'Après l''effort, la ventilation reste élevée quelques minutes pour rembourser la dette d''oxygène, éliminer le CO2 en excès et ramener les gaz du sang à leurs valeurs de repos. Le débit cardiaque, lui, diminue pendant la récupération : son augmentation caractérise l''effort, pas le retour au calme.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q46', 'exam_eps_2024_specialty_feb_college', 46, 'Sport scolaire', 'L''établissement scolaire n''a pas droit de participer aux compétitions sportives scolaires si :', false, '[{"id": "A", "text": "L''établissement dispose des équipes avec un niveau de prestation moyen"}, {"id": "B", "text": "L''établissement n''engage qu''une seule équipe"}, {"id": "C", "text": "L''établissement dispose seulement d''un seul accompagnateur"}, {"id": "D", "text": "L''établissement ne dispose pas d''une association sportive scolaire"}]'::jsonb, ARRAY['D']::text[], 'Les compétitions organisées par la Fédération royale marocaine du sport scolaire sont réservées aux associations sportives scolaires affiliées. Sans association constituée et affiliée, l''établissement ne peut engager aucune équipe. Le niveau des équipes, leur nombre ou celui des accompagnateurs ne conditionnent pas le droit de participer.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q47', 'exam_eps_2024_specialty_feb_college', 47, 'APS et apprentissage moteur', 'La rétropulsion en gymnastique artistique est une action qui sert :', false, '[{"id": "A", "text": "Au rapprochement de l''angle bras-tronc"}, {"id": "B", "text": "À l''éloignement de l''angle bras-tronc"}, {"id": "C", "text": "À la fermeture jambes-tronc"}, {"id": "D", "text": "À l''ouverture jambes-tronc"}]'::jsonb, ARRAY['A']::text[], 'La rétropulsion est une action de l''épaule : le bras part vers l''arrière et se rabat le long du corps, ce qui ferme l''angle bras-tronc. On l''utilise par exemple dans la bascule ou le tour d''appui, où les bras poussent la barre vers les hanches. L''antépulsion fait l''inverse et ouvre cet angle, tandis que les options C et D concernent la hanche et non l''épaule.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q48', 'exam_eps_2024_specialty_feb_college', 48, 'Anatomie', 'Le mouvement contrôlé et coordonné résulte du travail :', false, '[{"id": "A", "text": "De l''intervention équilibrée des muscles lisses antagonistes"}, {"id": "B", "text": "De l''intervention équilibrée des muscles squelettiques antagonistes"}, {"id": "C", "text": "De l''intervention équilibrée des muscles squelettiques agonistes et antagonistes"}, {"id": "D", "text": "De l''intervention équilibrée des muscles lisses agonistes et antagonistes"}]'::jsonb, ARRAY['C']::text[], 'Un mouvement volontaire, précis et coordonné vient de muscles squelettiques (striés) : l''agoniste produit le mouvement pendant que l''antagoniste le freine et le contrôle. Les muscles lisses tapissent les viscères et les vaisseaux, ils ne sont pas sous contrôle volontaire et ne mobilisent pas les segments du corps.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q49', 'exam_eps_2024_specialty_feb_college', 49, 'APS et apprentissage moteur', 'Dans une défense en zone en basketball les joueurs :', false, '[{"id": "A", "text": "Défendent dans une zone spécifique du terrain"}, {"id": "B", "text": "Défendent dans différentes zones sur tout le terrain"}, {"id": "C", "text": "Défendent en homme à homme dans différentes zones"}, {"id": "D", "text": "Défendent dans différentes zones du camp adverse"}]'::jsonb, ARRAY['A']::text[], 'En défense de zone, chaque défenseur est responsable d''un secteur précis de sa moitié de terrain et défend sur l''attaquant qui y entre, au lieu de suivre un adversaire attitré. La défense homme à homme et la défense sur tout le terrain (pressing) sont d''autres systèmes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q50', 'exam_eps_2024_specialty_feb_college', 50, 'APS et apprentissage moteur', 'la charge d''entrainement qui n''est ni faible ni excessive par rapport aux capacités d''un athlète est une :', false, '[{"id": "A", "text": "Charge normale"}, {"id": "B", "text": "Charge de crête"}, {"id": "C", "text": "Charge optimale"}, {"id": "D", "text": "Charge maximale"}]'::jsonb, ARRAY['C']::text[], 'La charge optimale est celle qui sollicite assez l''organisme pour provoquer une adaptation (surcompensation) sans dépasser ses capacités de récupération. Une charge trop faible ne produit aucun progrès, une charge excessive conduit au surentraînement ; « charge normale » n''est pas un terme technique de la planification.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q51', 'exam_eps_2024_specialty_feb_college', 51, 'APS et apprentissage moteur', 'La tactique de double bloc en volley-ball implique que :', false, '[{"id": "A", "text": "Deux joueurs se synchronisent pour bloquer alternativement une attaque adverse"}, {"id": "B", "text": "Deux blocs réalisés simultanément sur la même balle d''attaque par le même joueur"}, {"id": "C", "text": "Deux blocs réalisés alternativement sur deux balles d''attaque par le même joueur"}, {"id": "D", "text": "Deux joueurs se synchronisent pour bloquer simultanément une attaque adverse"}]'::jsonb, ARRAY['D']::text[], 'Le double bloc (ou contre à deux) réunit deux joueurs avant qui sautent ensemble, au même moment, face au même attaquant pour fermer un plus grand angle de frappe. Un joueur ne peut pas réaliser deux blocs à lui seul, et un bloc « alternatif » laisserait l''attaquant frapper dans l''espace libre.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q52', 'exam_eps_2024_specialty_feb_college', 52, 'APS et apprentissage moteur', 'Les schèmes d''action sollicités lors d''un passage forcé de l''appui frontal renversé (AFR) à l''appui tendu renversé (ATR) après une position statique est :', false, '[{"id": "A", "text": "Fermeture + ouverture antépulsion"}, {"id": "B", "text": "Ouverture + répulsion"}, {"id": "C", "text": "Répulsion + antépulsion"}, {"id": "D", "text": "Fermeture + ouverture antépulsion + répulsion"}]'::jsonb, ARRAY['B']::text[], '⚠ Partant d''un appui renversé immobile, le gymnaste n''a pas d''élan : il doit pousser activement dans ses appuis par une extension des bras (répulsion) tout en ouvrant le corps pour l''aligner à la verticale (ouverture). La fermeture et l''antépulsion appartiennent plutôt aux montées à l''ATR avec élan ou par roulade, pas à un passage en force depuis une position statique. Lecture concurrente : C (répulsion + antépulsion), si l''on considère que l''élévation des bras vers l''avant accompagne la poussée.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q53', 'exam_eps_2024_specialty_feb_college', 53, 'Physiologie', 'La respiration abdominale permet principalement :', false, '[{"id": "A", "text": "L''expansion du diaphragme et du ventre"}, {"id": "B", "text": "L''expansion de la poitrine et du poumon"}, {"id": "C", "text": "L''expansion de la cage thoracique et des muscles intercostaux"}, {"id": "D", "text": "L''expansion de la cage thoracique et du diaphragme"}]'::jsonb, ARRAY['A']::text[], 'Dans la respiration abdominale (diaphragmatique), c''est la contraction du diaphragme qui fait descendre les viscères et gonfler le ventre, alors que la cage thoracique bouge peu. L''expansion de la cage thoracique par les intercostaux caractérise au contraire la respiration thoracique, ce qui écarte C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q54', 'exam_eps_2024_specialty_feb_college', 54, 'APS et apprentissage moteur', 'Le contre en défense en hand-ball est de :', false, '[{"id": "A", "text": "Presser l''attaquant pour s''emparer du ballon"}, {"id": "B", "text": "Marquer de près l''attaquant pour gêner la circulation du ballon"}, {"id": "C", "text": "Entraver le tir de l''adversaire en bloquant le chemin du ballon"}, {"id": "D", "text": "Harceler l''adversaire pour intercepter le ballon"}]'::jsonb, ARRAY['C']::text[], 'Au hand-ball, le contre désigne l''action du défenseur qui lève les bras sur la trajectoire d''un tir pour l''arrêter ou le dévier, d''où C. Harceler l''adversaire pour intercepter le ballon (D) ou presser l''attaquant (A) décrivent la défense agressive et l''interception, pas le contre. Le marquage de près (B) relève de la défense individuelle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q55', 'exam_eps_2024_specialty_feb_college', 55, 'Sport scolaire', 'L''établissement scolaire accueillant les parcours sport-études assurent aux élèves sportifs :', false, '[{"id": "A", "text": "La formation sportive et la scolarité"}, {"id": "B", "text": "Uniquement la formation sportive"}, {"id": "C", "text": "Uniquement la scolarité"}, {"id": "D", "text": "La scolarité uniquement pendant le premier semestre"}]'::jsonb, ARRAY['A']::text[], 'Le parcours sport-études repose sur un double projet : l''élève suit une scolarité normale tout en bénéficiant d''un entraînement sportif aménagé dans son emploi du temps. Un établissement qui n''assurerait que l''un des deux volets, ou la scolarité sur un seul semestre, ne correspondrait plus à ce dispositif.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q56', 'exam_eps_2024_specialty_feb_college', 56, 'APS et apprentissage moteur', 'Les schèmes d''action sollicités lors d''un flip flap avant en gymnastique artistique sont :', false, '[{"id": "A", "text": "Impulsion jambes simultanées + impulsion simultanée des bras + répulsion + ouverture antépulsion"}, {"id": "B", "text": "Impulsion jambes simultanées + ouverture antépulsion + impulsion simultanée des bras + ouverture antépulsion"}, {"id": "C", "text": "Impulsion jambes simultanées + ouverture antépulsion + impulsion simultanée des bras + répulsion + ouverture antépulsion"}, {"id": "D", "text": "Impulsion jambes alternatives + ouverture antépulsion + impulsion simultanée des bras + répulsion + ouverture antépulsion"}]'::jsonb, ARRAY['B']::text[], '⚠ Le flip flap avant part d''une impulsion des deux pieds, puis le gymnaste projette les bras vers l''avant (ouverture antépulsion), pousse dans le sol par les épaules bras tendus (impulsion des bras) et ouvre à nouveau le corps pour se redresser. Les bras restant tendus, il n''y a pas de répulsion au sens strict (extension des coudes), ce qui distingue B de C. D est écarté car l''impulsion des jambes n''est pas alternée. Lecture concurrente : C, la chaîne complète avec répulsion, si l''on admet une extension active des coudes au contact.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q57', 'exam_eps_2024_specialty_feb_college', 57, 'Physiologie', 'La thermorégulation pendant l''effort physique sert à :', false, '[{"id": "A", "text": "La déshydratation du corps"}, {"id": "B", "text": "La régulation de la température du corps"}, {"id": "C", "text": "Le surchauffage du corps"}, {"id": "D", "text": "L''hypothermie du corps"}]'::jsonb, ARRAY['B']::text[], 'La thermorégulation maintient la température centrale autour de 37 °C malgré la chaleur produite par les muscles, surtout par la sudation et la vasodilatation cutanée. La déshydratation, la surchauffe et l''hypothermie sont justement les déséquilibres qu''elle cherche à éviter.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q58', 'exam_eps_2024_specialty_feb_college', 58, 'Anatomie', 'L''Arthrologie est la partie de l''anatomie qui :', false, '[{"id": "A", "text": "Explique les anomalies des différentes pièces osseuses du corps humain"}, {"id": "B", "text": "Traite les différentes déformations du corps humain"}, {"id": "C", "text": "Traite les différentes sortes et genres d''articulations du corps humain"}, {"id": "D", "text": "Explique les anomalies des différentes chaînes osseuses du corps humain"}]'::jsonb, ARRAY['C']::text[], 'L''arthrologie (du grec arthron, articulation) est l''étude des articulations : leur classification (synarthroses, amphiarthroses, diarthroses), leurs surfaces et leurs moyens d''union. L''étude des os relève de l''ostéologie, et les déformations du corps de la pathologie ou de l''orthopédie.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q59', 'exam_eps_2024_specialty_feb_college', 59, 'APS et apprentissage moteur', 'Les dimensions du terrain du volley-ball sont de :', false, '[{"id": "A", "text": "18 m de longueur et 09 m de largeur et 3 m de part et d''autre de la ligne médiane"}, {"id": "B", "text": "20 m de longueur et 10 m de largeur et 2 m de part et d''autre de la ligne médiane"}, {"id": "C", "text": "22 m de longueur et 11 m de largeur et 2,5 m de part et d''autre de la ligne médiane"}, {"id": "D", "text": "16 m de longueur et 08 m de largeur et 3,5 m de part et d''autre de la ligne médiane"}]'::jsonb, ARRAY['A']::text[], 'Selon les règles de la FIVB, le terrain mesure 18 m sur 9 m, et la ligne d''attaque est tracée à 3 m de l''axe de la ligne centrale dans chaque camp, délimitant la zone avant. Les autres dimensions ne correspondent à aucun terrain officiel de volley-ball en salle.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q60', 'exam_eps_2024_specialty_feb_college', 60, 'Physiologie', 'Un réflexe d''étirement stimulé par un mouvement musculaire passif est un :', false, '[{"id": "A", "text": "Réflexe ipsilatéral"}, {"id": "B", "text": "Réflexe tendineux"}, {"id": "C", "text": "Réflexe fléchisseur"}, {"id": "D", "text": "Réflexe médullaire"}]'::jsonb, ARRAY['B']::text[], 'L''étirement passif d''un muscle excite ses fuseaux neuromusculaires et déclenche sa contraction : c''est le réflexe myotatique, appelé aussi réflexe tendineux ou ostéotendineux, que l''on teste en percutant le tendon rotulien. Il est bien intégré dans la moelle, mais « médullaire » désigne une famille entière de réflexes et ne le caractérise pas. Le réflexe fléchisseur répond à une stimulation douloureuse, pas à un étirement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q61', 'exam_eps_2024_specialty_feb_college', 61, 'Biomécanique', 'En biomécanique les principaux paramètres mesurés sont :', false, '[{"id": "A", "text": "La force, la vitesse, la souplesse et la puissance"}, {"id": "B", "text": "La force, la vitesse, le moment cinétique et la puissance"}, {"id": "C", "text": "La force, la vitesse, l''adresse et la puissance"}, {"id": "D", "text": "La force, la vitesse, la souplesse et l''adresse"}]'::jsonb, ARRAY['B']::text[], 'Seule B ne contient que des grandeurs mécaniques mesurables. La biomécanique quantifie des forces (en N), des vitesses (en m/s), des moments cinétiques (en kg·m²/s) et des puissances (en W). La souplesse et l''adresse sont des qualités physiques ou motrices du sportif, pas des paramètres mécaniques, ce qui écarte A, C et D. ## الحوادث الرياضية والإسعافات الأولية (Accidents sportifs et secourisme)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q62', 'exam_eps_2024_specialty_feb_college', 62, 'APS et apprentissage moteur', 'Les principaux schèmes d''action de la lune sur la table de saut sont :', false, '[{"id": "A", "text": "La course d''élan + impulsion jambes + premier envol + impulsion bras + 2éme envol + réception"}, {"id": "B", "text": "La course d''élan + premier envol + impulsion bras + 2éme envol + réception"}, {"id": "C", "text": "La course d''élan + impulsion jambes + premier envol + 2éme envol + réception"}, {"id": "D", "text": "La course d''élan + impulsion jambes +premier envol + impulsion bras + réception"}]'::jsonb, ARRAY['A']::text[], 'Le saut de mains (lune) enchaîne la course d''élan, l''impulsion des jambes sur le tremplin, le premier envol jusqu''à la table, l''impulsion des bras sur la table, le second envol et la réception. B oublie l''impulsion des jambes, C l''impulsion des bras, et D supprime le second envol.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q63', 'exam_eps_2024_specialty_feb_college', 63, 'Physiologie', 'La vasodilatation est :', false, '[{"id": "A", "text": "Le rétrécissement des vaisseaux sanguins"}, {"id": "B", "text": "L''augmentation du nombre des vaisseaux sanguins"}, {"id": "C", "text": "La diminution du flux sanguin"}, {"id": "D", "text": "L''élargissement des vaisseaux sanguins"}]'::jsonb, ARRAY['D']::text[], 'La vasodilatation est l''augmentation du diamètre des vaisseaux par relâchement de leur paroi musculaire lisse, ce qui accroît le débit sanguin vers les muscles actifs et la peau pendant l''effort. Le rétrécissement correspond à la vasoconstriction, et l''augmentation du nombre de vaisseaux est la capillarisation, une adaptation à long terme.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q64', 'exam_eps_2024_specialty_feb_college', 64, 'Physiologie', 'La tétanie est :', false, '[{"id": "A", "text": "Hypoexcitabilité musculaire consécutive à une hyperventilation"}, {"id": "B", "text": "Hypoexcitabilité musculaire consécutive à une hypoventilation"}, {"id": "C", "text": "Hyperexcitabilité musculaire consécutive à une hyperventilation"}, {"id": "D", "text": "Hyperexcitabilité musculaire consécutive à une hypoventilation"}]'::jsonb, ARRAY['C']::text[], 'La tétanie est un état d''hyperexcitabilité neuromusculaire (fourmillements, crampes, contractures des mains). L''hyperventilation élimine trop de CO2, provoque une alcalose respiratoire qui fait baisser le calcium ionisé et déclenche ces symptômes. L''hypoventilation produit l''inverse, une acidose, et ne cause pas de tétanie.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q65', 'exam_eps_2024_specialty_feb_college', 65, 'APS et apprentissage moteur', 'En hand-ball un but est accordé lorsque :', false, '[{"id": "A", "text": "Le ballon touche la ligne de but"}, {"id": "B", "text": "La moitié du ballon dépasse la ligne de but"}, {"id": "C", "text": "Le ballon à franchit entièrement la ligne de but"}, {"id": "D", "text": "Les ¾ du ballon dépassent la ligne de but"}]'::jsonb, ARRAY['C']::text[], 'Selon la règle 9 des règles de l''IHF, un but est marqué lorsque le ballon a entièrement franchi la ligne de but, entre les poteaux et sous la barre. Un ballon sur la ligne ou qui ne l''a franchie qu''en partie n''est pas un but.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q66', 'exam_eps_2024_specialty_feb_college', 66, 'Physiologie', 'La proprioception permet aux sportifs :', false, '[{"id": "A", "text": "La perception du corps dans l''espace pendant l''effort"}, {"id": "B", "text": "L''élasticité musculaire du corps pendant l''effort"}, {"id": "C", "text": "La tonicité musculaire du corps pendant l''effort"}, {"id": "D", "text": "L''intensité musculaire du corps pendant l''effort"}]'::jsonb, ARRAY['A']::text[], 'La proprioception est le sens de la position et du mouvement des segments du corps, renseigné par les fuseaux neuromusculaires, les organes tendineux de Golgi et les récepteurs articulaires. Elle permet de situer son corps dans l''espace sans le regarder, d''où son rôle dans l''équilibre et la prévention des entorses. L''élasticité et la tonicité musculaires sont des propriétés du muscle, pas une perception.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q67', 'exam_eps_2024_specialty_feb_college', 67, 'Physiologie', 'La bradycardie est un rythme :', false, '[{"id": "A", "text": "Rapide des battements du cœur"}, {"id": "B", "text": "Normal des battements du cœur"}, {"id": "C", "text": "Élevé des battements du cœur"}, {"id": "D", "text": "Lent des battements du cœur"}]'::jsonb, ARRAY['D']::text[], 'La bradycardie désigne une fréquence cardiaque lente, en dessous de 60 battements par minute au repos. Chez le sportif d''endurance, c''est une adaptation normale liée à un volume d''éjection plus grand. Un rythme rapide ou élevé correspond à la tachycardie.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q68', 'exam_eps_2024_specialty_feb_college', 68, 'Sport scolaire', 'Les élèves qualifiés aux différents évènements sportifs scolaires devront être menus de :', false, '[{"id": "A", "text": "Carte de joueur, feuille d''engagement et certificat d''aptitude physique"}, {"id": "B", "text": "Certificat de scolarité, feuille d''engagement et carte de scolarité"}, {"id": "C", "text": "Carte de joueur, certificat de scolarité et feuille d''engagement"}, {"id": "D", "text": "Carte de joueur, certificat de scolarité et certificat d''aptitude physique"}]'::jsonb, ARRAY['C']::text[], 'Le guide de la DPSS destiné aux délégations sportives (mars 2018, p. 6) demande pour chaque élève la licence de joueur, un certificat de scolarité individuel de l''année et l''inscription sur la liste de participation, en plus de l''assurance scolaire et d''un âge conforme à la catégorie. C (carte de joueur, certificat de scolarité, feuille d''engagement) reprend ces pièces. B cite une « carte de scolarité » qu''aucun texte ne demande, et A et D ajoutent un certificat d''aptitude physique que le guide ne range pas parmi les pièces exigées.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q69', 'exam_eps_2024_specialty_feb_college', 69, 'Accidents et secourisme', 'En cas d''hémorragie suite à une blessure à la jambe d''un élève en classe, la priorité est de :', false, '[{"id": "A", "text": "Faire un massage direct sur l''endroit de l''hémorragie"}, {"id": "B", "text": "Exercer une pression directe sur l''endroit de l''hémorragie"}, {"id": "C", "text": "Il suffit de nettoyer l''endroit de l''hémorragie"}, {"id": "D", "text": "verser de l''eau sur l''endroit de l''hémorragie"}]'::jsonb, ARRAY['B']::text[], 'Devant une hémorragie externe, le premier geste est la compression directe de la plaie, avec la main protégée puis un pansement compressif. Masser la plaie ne l''arrête pas et peut l''aggraver. Nettoyer ou verser de l''eau vient plus tard et ne contrôle pas le saignement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q70', 'exam_eps_2024_specialty_feb_college', 70, 'Anatomie', 'Le plan qui divise le sujet en une partie droite et gauche est un :', false, '[{"id": "A", "text": "Plan antéro-postérieur"}, {"id": "B", "text": "Plan transversal"}, {"id": "C", "text": "Plan sagittal"}, {"id": "D", "text": "Plan frontal"}]'::jsonb, ARRAY['C']::text[], 'Le plan sagittal est vertical et orienté d''avant en arrière : il sépare le corps en une moitié droite et une moitié gauche. Le plan frontal sépare l''avant de l''arrière, et le plan transversal le haut du bas.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q71', 'exam_eps_2024_specialty_feb_college', 71, 'Physiologie', 'L''hormone responsable de l''augmentation du rythme cardiaque pendant un effort physique', false, '[{"id": "A", "text": "L''adrénaline"}, {"id": "B", "text": "L''insuline"}, {"id": "C", "text": "Thyroxine"}, {"id": "D", "text": "Cortisol"}]'::jsonb, ARRAY['A']::text[], 'L''adrénaline, libérée par la médullosurrénale sous l''effet du système sympathique, agit sur les récepteurs bêta du cœur et augmente la fréquence et la force des contractions. L''insuline règle la glycémie, la thyroxine agit sur le métabolisme de base à long terme, et le cortisol mobilise surtout les substrats énergétiques.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q72', 'exam_eps_2024_specialty_feb_college', 72, 'APS et apprentissage moteur', 'Le temps maximal pour effectuer un jet franc en hand-ball est :', false, '[{"id": "A", "text": "1 secondes qui suit le coup de sifflet de l''arbitre"}, {"id": "B", "text": "2 secondes qui suivent le coup de sifflet de l''arbitre"}, {"id": "C", "text": "3 secondes qui suivent le coup de sifflet de l''arbitre"}, {"id": "D", "text": "4 secondes qui suivent le coup de sifflet de l''arbitre"}]'::jsonb, ARRAY['C']::text[], 'Selon la règle 15 de l''IHF, quand l''arbitre siffle l''exécution d''un jet, le joueur doit jouer le ballon dans les 3 secondes qui suivent le coup de sifflet. Le même délai de 3 secondes s''applique au jet de 7 mètres. Les durées de 1, 2 ou 4 secondes ne figurent pas dans le règlement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q73', 'exam_eps_2024_specialty_feb_college', 73, 'Anatomie', 'Les muscles squelettiques sont contrôlés par les :', false, '[{"id": "A", "text": "Nerfs autonomes"}, {"id": "B", "text": "Nerfs somatiques"}, {"id": "C", "text": "Nerfs sympathiques"}, {"id": "D", "text": "Nerfs parasympathiques"}]'::jsonb, ARRAY['B']::text[], 'Les muscles squelettiques sont commandés par le système nerveux somatique, celui de la motricité volontaire, via les motoneurones alpha. Le système autonome, avec ses deux branches sympathique et parasympathique, commande le muscle cardiaque, les muscles lisses et les glandes.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q74', 'exam_eps_2024_specialty_feb_college', 74, 'APS et apprentissage moteur', 'Les dimensions du terrain de Rugby sont :', false, '[{"id": "A", "text": "90 mètres de long et plus de 45 mètres de large"}, {"id": "B", "text": "100 mètres de long et plus de 70 mètres de large"}, {"id": "C", "text": "120 mètres de long et plus de 90 mètres de large"}, {"id": "D", "text": "100 mètres de long et plus de 90 mètres de large"}]'::jsonb, ARRAY['B']::text[], '⚠ La règle 1.3 de World Rugby fixe l''aire de jeu entre 94 et 100 m de long, entre les lignes d''essai, et entre 68 et 70 m de large ; chaque en-but ajoute de 6 à 22 m de profondeur. La formulation « plus de 70 mètres de large » de B est donc fausse, puisque 70 m est un maximum. On garde B comme réponse attendue, parce qu''elle seule donne le couple 100 m sur 70 m ; les autres couples ne correspondent à aucun terrain réglementaire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q75', 'exam_eps_2024_specialty_feb_college', 75, 'Physiologie', 'L''endorphine est un neurotransmetteur provoquant :', false, '[{"id": "A", "text": "L''augmentation du stress"}, {"id": "B", "text": "La diminution de l''énergie"}, {"id": "C", "text": "L''augmentation de la tension musculaire"}, {"id": "D", "text": "L''augmentation de l''humeur"}]'::jsonb, ARRAY['D']::text[], 'Les endorphines sont des opioïdes produits par l''organisme, notamment lors d''un effort prolongé. Elles atténuent la douleur et procurent une sensation de bien-être, d''où l''amélioration de l''humeur. Elles réduisent le stress au lieu de l''augmenter et n''agissent pas sur la tension musculaire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q76', 'exam_eps_2024_specialty_feb_college', 76, 'APS et apprentissage moteur', 'En rugby si un joueur botte directement le ballon en touche, la remise en jeu se fait :', false, '[{"id": "A", "text": "A l''endroit de sortie du ballon"}, {"id": "B", "text": "Au milieu du terrain"}, {"id": "C", "text": "A la ligne de 22 mètres"}, {"id": "D", "text": "Perpendiculaire à la ligne d''en-but"}]'::jsonb, ARRAY['A']::text[], '⚠ La clé attendue est A, mais elle n''est juste que dans certains cas. Selon la règle 18.8 e de World Rugby, quand un joueur botte le ballon directement en touche depuis l''extérieur de ses 22 mètres, la marque de touche se place à hauteur de l''endroit du coup de pied, ou là où le ballon a franchi la ligne si ce point est plus près de la ligne d''essai du botteur. La touche se joue à l''endroit de sortie du ballon quand le coup de pied part de ses propres 22 mètres avec gain de terrain (règle 18.8 d) ou sur une pénalité (règle 18.8 c). Le milieu du terrain (B) et la ligne des 22 mètres (C) ne correspondent à aucun de ces cas, et A reste la seule proposition proche du règlement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q77', 'exam_eps_2024_specialty_feb_college', 77, 'Sport scolaire', 'Les séances de l''association sportive scolaire (ASS) peuvent être encadrées par :', false, '[{"id": "A", "text": "Le chef de l''association (ASS) de l''établissement"}, {"id": "B", "text": "N''importe quel membre de l''association (ASS) de l''établissement"}, {"id": "C", "text": "L''un de l''équipe pédagogique d''EPS de l''établissement"}, {"id": "D", "text": "Toute l''équipe pédagogique d''EPS de l''établissement"}]'::jsonb, ARRAY['D']::text[], '⚠ L''encadrement des activités de l''ASS fait partie du service des enseignants d''EPS, qui y consacrent des heures dédiées. Ce sont donc tous les professeurs d''EPS de l''établissement qui encadrent les séances, et non un seul d''entre eux. Le président de l''ASS (le chef d''établissement) ou un simple membre de l''association n''ont pas vocation à encadrer l''entraînement. Lecture concurrente : C (l''un des enseignants d''EPS), puisqu''en pratique chaque séance est encadrée par un seul professeur.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q78', 'exam_eps_2024_specialty_feb_college', 78, 'APS et apprentissage moteur', 'Un saut en longueur est considéré comme nul si le sauteur :', false, '[{"id": "A", "text": "Ne dépasse pas le temps stipulé par le règlement"}, {"id": "B", "text": "Piétine avant la planche d''appel"}, {"id": "C", "text": "Touche l''un des bords externes de la fosse"}, {"id": "D", "text": "Marche en avant de la trace laissée par ses pieds"}]'::jsonb, ARRAY['C']::text[], 'Le règlement de World Athletics (règle 30) déclare l''essai nul si, à la réception, le sauteur touche le bord ou le sol hors de la fosse plus près de la planche que la marque la plus proche laissée dans le sable. Piétiner dans la course d''élan n''est pas une faute, et rester dans le temps imparti est la règle, pas une faute. C''est le retour en arrière à travers la fosse qui est sanctionné, pas le fait d''en sortir vers l''avant.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q79', 'exam_eps_2024_specialty_feb_college', 79, 'Anatomie', 'L''organe qui aide à la régulation du tonus musculaire est le :', false, '[{"id": "A", "text": "Bulbe rachidien"}, {"id": "B", "text": "Mésencéphale"}, {"id": "C", "text": "Cerveau"}, {"id": "D", "text": "Cervelet"}]'::jsonb, ARRAY['D']::text[], 'Le cervelet reçoit en permanence les informations proprioceptives et ajuste le tonus musculaire, l''équilibre et la coordination des mouvements. Une lésion du cervelet entraîne d''ailleurs une hypotonie. Le bulbe rachidien commande surtout les fonctions végétatives comme la respiration et le rythme cardiaque.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q80', 'exam_eps_2024_specialty_feb_college', 80, 'Accidents et secourisme', 'Lors d''une fracture des os de l''avant-bras, il est déconseillé de :', false, '[{"id": "A", "text": "Appliquer une poche de glaces"}, {"id": "B", "text": "Immobiliser l''avant-bras dans une attelle gonflante"}, {"id": "C", "text": "Donner à boire au blessé"}, {"id": "D", "text": "Alerter le secours"}]'::jsonb, ARRAY['C']::text[], 'Devant une fracture, on ne donne ni à boire ni à manger au blessé, car une réduction sous anesthésie générale peut être nécessaire et elle exige d''être à jeun. Immobiliser le membre dans une attelle, y compris gonflable, appliquer du froid et alerter les secours sont au contraire les gestes recommandés.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q81', 'exam_eps_2024_specialty_feb_college', 81, 'APS et apprentissage moteur', 'La nature de la dernière foulée d''impulsion sur la planche en saut en longueur est :', false, '[{"id": "A", "text": "Courte, explosive et le centre de gravité bas"}, {"id": "B", "text": "Lente, souple et le centre de gravité haut"}, {"id": "C", "text": "Ample, explosive et le centre de gravité bas"}, {"id": "D", "text": "Ample, explosive et le centre de gravité haut"}]'::jsonb, ARRAY['A']::text[], 'En saut en longueur, l''avant-dernière foulée est la plus ample : c''est elle qui abaisse le centre de gravité. La dernière foulée est plus courte et rapide, avec le centre de gravité encore bas, pour poser le pied d''appel activement et convertir la vitesse en impulsion verticale. Une dernière foulée ample freinerait le sauteur sur la planche.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q82', 'exam_eps_2024_specialty_feb_college', 82, 'Physiologie', 'L''indice de masse corporelle (IMC) d''une personne obèse est :', false, '[{"id": "A", "text": "<18.5"}, {"id": "B", "text": "18.5-24.9"}, {"id": "C", "text": "25-30"}, {"id": "D", "text": ">30"}]'::jsonb, ARRAY['D']::text[], 'Selon la classification de l''OMS, l''obésité commence à un IMC de 30 kg/m². Un IMC inférieur à 18,5 correspond à la maigreur, de 18,5 à 24,9 à une corpulence normale et de 25 à 30 au surpoids.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q83', 'exam_eps_2024_specialty_feb_college', 83, 'APS et apprentissage moteur', 'En handball la remise en jeu de touche se fait par :', false, '[{"id": "A", "text": "A l''intérieur du terrain"}, {"id": "B", "text": "A l''extérieur du terrain"}, {"id": "C", "text": "Un pied sur la ligne de touche"}, {"id": "D", "text": "Un pied de part et d''autre de la ligne de touche"}]'::jsonb, ARRAY['C']::text[], 'La règle 11 de l''IHF impose au joueur qui exécute la remise en jeu de touche de garder un pied sur la ligne de touche jusqu''à ce que le ballon ait quitté sa main. L''autre pied peut être placé librement. Se tenir entièrement dedans ou dehors, ou à cheval sans contact avec la ligne, n''est pas conforme.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q84', 'exam_eps_2024_specialty_feb_college', 84, 'Accidents et secourisme', 'La libération des voies respiratoires d''un élève inconscient suite à une chute se fait par :', false, '[{"id": "A", "text": "Inclinaison de la tête vers l''arrière et relèvement du menton"}, {"id": "B", "text": "Inclinaison de la tête vers l''avant et abaissement du menton"}, {"id": "C", "text": "Inclinaison de la tête sur le côté et abaissement du menton"}, {"id": "D", "text": "Inclinaison de la tête vers l''arrière et abaissement du menton"}]'::jsonb, ARRAY['A']::text[], 'On libère les voies aériennes d''une victime inconsciente en basculant prudemment la tête en arrière et en élevant le menton, ce qui décolle la langue du fond de la gorge. Pencher la tête en avant ou abaisser le menton ferme au contraire les voies aériennes. Après une chute, si l''on suspecte une atteinte du cou, on limite la bascule de la tête et on privilégie la subluxation de la mâchoire.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q85', 'exam_eps_2024_specialty_feb_college', 85, 'APS et apprentissage moteur', 'Une remise en jeu de touche en basket-ball est valable quand elle est effectuée :', false, '[{"id": "A", "text": "A l''intérieur du terrain dans un délai de cinq secondes"}, {"id": "B", "text": "A l''extérieur du terrain dans un délai de cinq secondes"}, {"id": "C", "text": "Sur la ligne de touche dans un délai de cinq secondes"}, {"id": "D", "text": "A l''extérieur de la ligne de fond dans un délai de plus de cinq secondes"}]'::jsonb, ARRAY['B']::text[], '⚠ Les règles officielles FIBA 2022, en vigueur à la session, imposent au joueur qui effectue la remise en jeu de lâcher le ballon dans les 5 secondes et de ne pas entrer sur le terrain le ballon en main (art. 17.3.1). Or les lignes de délimitation ne font pas partie du terrain (art. 2.5.1), et un joueur qui touche la ligne de touche est hors du terrain (art. 23.1.1) : se tenir sur la ligne, comme le propose C, donne une remise en jeu aussi valable que B. L''item est donc défectueux, et B reste la formulation attendue. A décrit une violation, tout comme D, puisque garder le ballon plus de cinq secondes en est une.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, '⚠ سؤال قابل للنقاش حسب الصفحة نفسها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q86', 'exam_eps_2024_specialty_feb_college', 86, 'Physiologie', 'La contraction isocinétique est une forme particulière de la contraction musculaire dans laquelle un muscle :', false, '[{"id": "A", "text": "Se raccourci ou s''étend à une vitesse progressive tout au long du mouvement de l''articulation"}, {"id": "B", "text": "Se raccourci ou s''étend à une force constante tout au long du mouvement de l''articulation"}, {"id": "C", "text": "Se raccourci ou s''étend à une force progressive tout au long du mouvement de l''articulation"}, {"id": "D", "text": "Se raccourci ou s''étend à une vitesse constante tout au long du mouvement de l''articulation"}]'::jsonb, ARRAY['D']::text[], 'Isocinétique veut dire « même vitesse » : le muscle se raccourcit ou s''allonge à vitesse angulaire constante, ce qu''on obtient sur un dynamomètre isocinétique qui adapte la résistance à la force produite. Une force constante (B) décrit plutôt la contraction isotonique, où c''est la charge qui reste la même.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q87', 'exam_eps_2024_specialty_feb_college', 87, 'Anatomie', 'Les muscles contrôlés par le système musculaire autonome et involontaire sont :', false, '[{"id": "A", "text": "Striés"}, {"id": "B", "text": "Lisses"}, {"id": "C", "text": "Squelettiques"}, {"id": "D", "text": "Abdominaux"}]'::jsonb, ARRAY['B']::text[], 'Les muscles lisses (paroi des vaisseaux, du tube digestif, des bronches) se contractent sans contrôle volontaire, sous la commande du système nerveux autonome. Les muscles striés squelettiques, abdominaux compris, obéissent à la commande volontaire. ## البيوميكانيكا (Biomécanique)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q88', 'exam_eps_2024_specialty_feb_college', 88, 'APS et apprentissage moteur', 'Une transformation en rugby après un essai marqué est de :', false, '[{"id": "A", "text": "Deux points"}, {"id": "B", "text": "Un point"}, {"id": "C", "text": "Trois points"}, {"id": "D", "text": "Cinq points"}]'::jsonb, ARRAY['A']::text[], 'En rugby à XV, la transformation réussie après un essai rapporte 2 points (World Rugby, règle 8). L''essai vaut 5 points, la pénalité et le drop 3 points, d''où les distracteurs C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q89', 'exam_eps_2024_specialty_feb_college', 89, 'Sport scolaire', 'Les parcours sport-études permettent l''adaptation d''emploi horaire suivante :', false, '[{"id": "A", "text": "Matinée consacrée à la formation sportive, et l''après-midi aux études"}, {"id": "B", "text": "Matinée consacrée aux études, et l''après-midi à la formation sportive"}, {"id": "C", "text": "2 heures successives de formation sportive de 8h à 10h chaque matin"}, {"id": "D", "text": "2 heures successives de formation sportive de 10h à 12h chaque matin"}]'::jsonb, ARRAY['B']::text[], 'Dans les parcours sport-études, l''emploi du temps regroupe les cours le matin et libère l''après-midi pour l''entraînement sportif. Les deux heures fixes du matin (C et D) ne correspondent pas à cette organisation, et l''inverse (A) sacrifierait les cours.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q90', 'exam_eps_2024_specialty_feb_college', 90, 'APS et apprentissage moteur', 'Un essai en rugby est considéré comme valable lorsque :', false, '[{"id": "A", "text": "Un joueur lance le ballon directement dans l''en-but"}, {"id": "B", "text": "Un joueur botte le ballon et qui tombe directement dans l''en-but"}, {"id": "C", "text": "Un joueur jette le ballon dans l''en-but"}, {"id": "D", "text": "Un joueur aplatit le ballon dans l''en-but"}]'::jsonb, ARRAY['D']::text[], 'L''essai est marqué quand un attaquant aplatit le ballon au sol dans l''en-but adverse, en exerçant une pression vers le bas (World Rugby, règle 8). Lancer, jeter ou botter le ballon dans l''en-but ne marque rien tant que personne ne l''aplatit.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q91', 'exam_eps_2024_specialty_feb_college', 91, 'Physiologie', 'Le sarcomère est une :', false, '[{"id": "A", "text": "Partie entre 2 lignes Z"}, {"id": "B", "text": "Partie entre 2 bandes A"}, {"id": "C", "text": "Partie entre 2 bandes I"}, {"id": "D", "text": "Partie entre 2 bandes H"}]'::jsonb, ARRAY['A']::text[], 'Le sarcomère, unité contractile de la myofibrille, est délimité par deux stries (lignes) Z. Il contient une bande A centrale, traversée par la zone H, et deux demi-bandes I de part et d''autre : ces bandes sont des parties du sarcomère, pas ses limites.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q92', 'exam_eps_2024_specialty_feb_college', 92, 'APS et apprentissage moteur', 'Pour qu''un jet en lancer de javelot soit validé, il faut que :', false, '[{"id": "A", "text": "La pointe du javelot touche le sol à l''intérieur de l''aire de lancer"}, {"id": "B", "text": "La queue du javelot touche le sol à l''intérieur de l''aire de lancer"}, {"id": "C", "text": "Le tronc du javelot touche le sol à l''intérieur de l''aire de lancer"}, {"id": "D", "text": "Le javelot touche une des deux lignes de l''aire de lancer"}]'::jsonb, ARRAY['A']::text[], 'Le règlement de World Athletics exige que la pointe métallique touche le sol avant toute autre partie du javelot, à l''intérieur des lignes du secteur de chute. Un javelot qui retombe à plat ou par la queue donne un essai nul, comme celui qui touche une ligne du secteur.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q93', 'exam_eps_2024_specialty_feb_college', 93, 'Accidents et secourisme', 'L''étirement excessif du ligament provoque une :', false, '[{"id": "A", "text": "Contusion"}, {"id": "B", "text": "Lésion"}, {"id": "C", "text": "Entorse"}, {"id": "D", "text": "Ecchymose"}]'::jsonb, ARRAY['C']::text[], 'L''entorse est la lésion d''un ligament articulaire par étirement excessif, de la simple distension à la rupture. La contusion et l''ecchymose résultent d''un choc direct sur les tissus mous, et « lésion » est un terme trop général pour désigner ce traumatisme précis.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q94', 'exam_eps_2024_specialty_feb_college', 94, 'APS et apprentissage moteur', 'La fosse d''eau en course de steeple mesure :', false, '[{"id": "A", "text": "90 cm de profondeur"}, {"id": "B", "text": "70 cm de profondeur"}, {"id": "C", "text": "50 cm de profondeur"}, {"id": "D", "text": "30 cm de profondeur"}]'::jsonb, ARRAY['C']::text[], 'Les règles techniques de World Athletics (règle 23.6) fixent la profondeur de l''eau à 0,50 m ± 0,05 m sur environ 1,20 m au pied de la haie, puis le fond remonte en pente de 12,4° jusqu''au niveau de la piste. Cette valeur s''applique depuis le 1er avril 2020 ; avant, la règle 169.6 de l''IAAF demandait 0,70 m sur environ 0,30 m. En février 2024, les 70 cm de B étaient donc périmés : ils ne valent plus que pour les fosses construites avant 2020, que le règlement accepte encore. Les 90 cm et 30 cm ne correspondent à aucune version du règlement.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q95', 'exam_eps_2024_specialty_feb_college', 95, 'Physiologie', 'Une poussée continue contre un mur est une :', false, '[{"id": "A", "text": "Contraction isométrique"}, {"id": "B", "text": "Contraction isotonique"}, {"id": "C", "text": "Contraction excentrique"}, {"id": "D", "text": "Contraction cinétique"}]'::jsonb, ARRAY['A']::text[], 'La réponse est la contraction isométrique : en poussant contre un mur, le muscle produit une tension sans que sa longueur ni l''angle articulaire changent, puisque la charge ne bouge pas. L''isotonique (B) suppose un mouvement avec variation de longueur du muscle, ce qui n''est pas le cas ici. L''excentrique implique un allongement sous tension.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q96', 'exam_eps_2024_specialty_feb_college', 96, 'Physiologie', 'La respiration est régulée généralement par le :', false, '[{"id": "A", "text": "Cervelet"}, {"id": "B", "text": "Bulbe rachidien"}, {"id": "C", "text": "Cerveau"}, {"id": "D", "text": "Hypothalamus"}]'::jsonb, ARRAY['B']::text[], 'Les centres qui fixent le rythme de la ventilation se trouvent dans le tronc cérébral, principalement dans le bulbe rachidien, avec l''appui du pont. Le cortex (C) n''intervient que pour la commande volontaire et ponctuelle de la respiration. Le cervelet coordonne le mouvement et l''hypothalamus règle surtout la température.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q97', 'exam_eps_2024_specialty_feb_college', 97, 'APS et apprentissage moteur', 'Les épreuves du triathlon sont :', false, '[{"id": "A", "text": "Cyclisme, natation et course à pied"}, {"id": "B", "text": "La course à pied, cyclisme et le lancer de poids"}, {"id": "C", "text": "Le saut en hauteur, la course à pied et la natation"}, {"id": "D", "text": "Le lancer de disque, le vélo et la natation"}]'::jsonb, ARRAY['A']::text[], 'Le triathlon enchaîne trois disciplines : natation, cyclisme et course à pied, dans cet ordre en compétition. Aucune épreuve de lancer ni de saut n''en fait partie. ## فيزيولوجيا الجهد (Physiologie de l''exercice)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q98', 'exam_eps_2024_specialty_feb_college', 98, 'Accidents et secourisme', 'Les entorses surviennent généralement au niveau des articulations :', false, '[{"id": "A", "text": "De la cheville et du genou"}, {"id": "B", "text": "Du genou et du poignet"}, {"id": "C", "text": "De la cheville, du genou et du poignet"}, {"id": "D", "text": "De la cheville seulement"}]'::jsonb, ARRAY['C']::text[], 'Les entorses touchent le plus souvent la cheville, puis le genou et le poignet, d''où la réponse C. « La cheville seulement » (D) est faux : la cheville est le site le plus fréquent, et le genou (ligaments croisés et latéraux) comme le poignet (chute sur la main) restent des localisations courantes en sport.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q99', 'exam_eps_2024_specialty_feb_college', 99, 'Physiologie', 'Le test Luc Léger est connu sous le nom d''un test de :', false, '[{"id": "A", "text": "La résistance pour évaluer la capacité aérobie"}, {"id": "B", "text": "L''endurance pour évaluer la capacité aérobie"}, {"id": "C", "text": "L''endurance pour évaluer la capacité anaérobie"}, {"id": "D", "text": "La résistance pour évaluer la capacité anaérobie"}]'::jsonb, ARRAY['B']::text[], 'Le test navette de Luc Léger est un test d''endurance progressif qui estime la VMA et la VO2max, donc l''aptitude aérobie. Dans le vocabulaire de l''EPS, la « résistance » désigne l''effort intense de nature anaérobie, ce qui écarte A et D. ## التشريح الوصفي والوظيفي (Anatomie descriptive et fonctionnelle)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة فبراير 2024) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_feb_college_q100', 'exam_eps_2024_specialty_feb_college', 100, 'Accidents et secourisme', 'En secourisme les initiales suivantes (PLS) désignent :', false, '[{"id": "A", "text": "Processus légal de sécurité"}, {"id": "B", "text": "Prévention latérale de sécurité"}, {"id": "C", "text": "Principes logiques de sécurité"}, {"id": "D", "text": "Position latérale de sécurité"}]'::jsonb, ARRAY['D']::text[], 'PLS signifie position latérale de sécurité : on y place une victime inconsciente qui respire, pour garder ses voies aériennes libres et laisser s''écouler un éventuel vomissement. Les autres développements du sigle n''existent pas en secourisme. ## الرياضة المدرسية وتنظيم التظاهرات الرياضية (Sport scolaire et organisation des événements sportifs)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-615/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
