-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024)
-- ====================================================================
-- المصدر: ملف الحل 2024/التربية البدنية (التخصص) - دورة أكتوبر 2024.md
--   صفحة المصدر: https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l
--   لا يوجد مفتاح رسمي ولا تصحيح منشور؛ الأجوبة حُدّدت من المعرفة التخصصية ثم تحقّق منها فريق بحث مستقل سؤالاً سؤالاً. Q12 وQ48 وQ49 متخطاة (غير قابلة للاسترجاع).
--   عدد الأسئلة: 97 (QCM، خمسة اختيارات)؛ موثّقة verified=true: 86؛ موسومة بملاحظة تحقق: 11.
--   متخطاة: Q12، Q48، Q49 — غير قابلة للاسترجاع (جذوع/خيارات مدمرة في OCR).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college', 'eps_college', 2024, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 240, 97, 'Q12 وQ48 وQ49 غير قابلة للاسترجاع (جذوع/خيارات مدمرة في OCR) — 97 سؤالاً من 100')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (97 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q1', 'exam_eps_2024_specialty_oct_college', 1, 'مادة التخصص', 'Quand l''arbitre met le poing dans sa paume en hand-ball, il y a :', false, '[{"id": "A", "text": "Coup franc."}, {"id": "B", "text": "Penalty."}, {"id": "C", "text": "Empiètement."}, {"id": "D", "text": "Expulsion."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'إشارة IHF: القبضة في الكف تعني خطأ المهاجم، وعقوبته رمية حرة (jet franc) للخصم؛ وبما أن «faute d''attaquant» ليست من الخيارات، فـ«Coup franc» هو الجواب المقصود.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q2', 'exam_eps_2024_specialty_oct_college', 2, 'مادة التخصص', 'La contraction des fibres musculaires est provoquée par un raccourcissement :', false, '[{"id": "A", "text": "Des tendons, des ligaments et des filaments de myosine."}, {"id": "B", "text": "Des sarcomères dû au glissement des filaments d''actine et de myosine."}, {"id": "C", "text": "Des sarcomères dû à l''étirement des ligaments et des tendons."}, {"id": "D", "text": "Des filaments d''actine, des tendons et des ligaments."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'انزلاق خيوط الأكتين على الميوزين يقصّر الساركومير (نظرية الخيوط المنزلقة).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q3', 'exam_eps_2024_specialty_oct_college', 3, 'مادة التخصص', 'Une faute technique en Basket-ball est sanctionnée par :', false, '[{"id": "A", "text": "Deux lancers francs et la balle reviendra en possession de l''équipe qui en avait le contrôle."}, {"id": "B", "text": "Un lancer franc et la balle reviendra en possession de l''équipe qui en avait le contrôle."}, {"id": "C", "text": "Deux lancers francs et la balle reviendra en possession de l''équipe adverse."}, {"id": "D", "text": "Un lancer franc et disqualification du joueur responsable de la faute."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'قانون FIBA (المادة 36): الخطأ التقني = رمية حرة واحدة + استئناف اللعب للفريق الذي كان يملك الكرة. (الخيار A هو عقوبة الخطأ غير الرياضي.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q4', 'exam_eps_2024_specialty_oct_college', 4, 'مادة التخصص', 'Une luxation est une :', false, '[{"id": "A", "text": "Elongation des fibres musculaires."}, {"id": "B", "text": "Lésion des fibres musculaires."}, {"id": "C", "text": "Etirement des ligaments articulaires."}, {"id": "D", "text": "Etirement des tendons articulaires."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الخلع = انزياح سطوح المفصل مع تمدد/تمزق أربطته المفصلية.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q5', 'exam_eps_2024_specialty_oct_college', 5, 'مادة التخصص', 'Après un service en Volley-ball, la balle touche directement le filet et passe dans le camp adverse, dans ce cas le jeu ?', false, '[{"id": "A", "text": "Peut être repris dans le cadre des trois touches de l''équipe."}, {"id": "B", "text": "Ne peut être repris dans le cadre des trois touches de l''équipe."}, {"id": "C", "text": "Est considéré comme une faute commise par l''équipe."}, {"id": "D", "text": "Favorise l''équipe non fautive par un point de plus."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'الإرسال الذي يلمس الشبكة ويعبر قانوني (let serve) منذ 2000/2001؛ يستمر اللعب ضمن اللمسات الثلاث.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q6', 'exam_eps_2024_specialty_oct_college', 6, 'مادة التخصص', 'L''aptitude est une donnée :', false, '[{"id": "A", "text": "Développée par la pratique."}, {"id": "B", "text": "Modifiée par entraînement."}, {"id": "C", "text": "Stable et persistante."}, {"id": "D", "text": "Acquise par la maturation corporelle."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الاستعداد (aptitude) فطري ثابت ومستمر، بخلاف المهارة التي تُكتسب بالتدريب.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q7', 'exam_eps_2024_specialty_oct_college', 7, 'مادة التخصص', 'La formation sportive pour les parcours sport-études se réalise au sein de :', false, '[{"id": "A", "text": "L''établissement scolaire accueillant et institution sportive."}, {"id": "B", "text": "L''établissement scolaire accueillant."}, {"id": "C", "text": "L''institution sportive accueillante."}, {"id": "D", "text": "L''institution sportive accueillante uniquement pendant les vacances scolaires."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'مسار sport-études مشروع مزدوج: التكوين الرياضي يتم في المؤسسة المدرسية المستقبلة والمؤسسة الرياضية معاً.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q8', 'exam_eps_2024_specialty_oct_college', 8, 'مادة التخصص', 'Selon les nouvelles exigences de la FIFA, le nombre d''arbitres officiels pour un match :', false, '[{"id": "A", "text": "Quatre."}, {"id": "B", "text": "Trois."}, {"id": "C", "text": "Huit."}, {"id": "D", "text": "Six."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'في عصر VAR: الحكم + مساعدان + الحكم الرابع + VAR + AVAR = 6 حكام رسميين. لكن إن كان مفتاح الامتحان يعدّ حكام الملعب فقط، فالجواب المقصود A (أربعة). عبارة «nouvelles exigences» ترجّح D.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: عدد الحكام: 6 مع VAR مقابل 4 على أرض الملعب')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q9', 'exam_eps_2024_specialty_oct_college', 9, 'مادة التخصص', 'Les schèmes d''action mobilisés en flic flac arrière :', false, '[{"id": "A", "text": "Impulsion jambes alternatives - ouverture - répulsion - impulsion bras alternatifs - fermeture - rétropulsion."}, {"id": "B", "text": "Impulsion jambes alternatives - ouverture - répulsion - impulsion bras simultanés - fermeture - rétropulsion."}, {"id": "C", "text": "Impulsion jambes simultanées - ouverture - répulsion - impulsion bras simultanés - fermeture - rétropulsion."}, {"id": "D", "text": "Impulsion jambes alternatives - ouverture - impulsion bras alternatifs - fermeture - rétropulsion."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الشقلبة الخلفية (flic flac arrière) تنطلق من القدمين معاً (دفع متزامن للرجلين) والذراعان معاً، مع الدفع (répulsion) ثم الإغلاق والتراجع (fermeture-rétropulsion).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q10', 'exam_eps_2024_specialty_oct_college', 10, 'مادة التخصص', 'En football, un joueur expulsé avant la rencontre peut être :', false, '[{"id": "A", "text": "Remplacé immédiatement par un joueur inscrit sur la liste."}, {"id": "B", "text": "Remplacé après le coup d''envoi par un joueur inscrit sur la liste."}, {"id": "C", "text": "Remplacé après le coup d''envoi par un joueur non inscrit sur la liste."}, {"id": "D", "text": "Ne peut être jamais remplacé."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'قانون IFAB (القانون 3): اللاعب المطرود بعد تسميته وقبل انطلاق المباراة يُستبدل فوراً بلاعب مسمّى في القائمة.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q11', 'exam_eps_2024_specialty_oct_college', 11, 'مادة التخصص', 'La reprise de l''activité physique après une luxation au niveau de l''épaule pour la première fois, nécessite une immobilisation de :', false, '[{"id": "A", "text": "2 semaines plus une rééducation progressive."}, {"id": "B", "text": "3 semaines plus une rééducation progressive."}, {"id": "C", "text": "3 jours plus une rééducation progressive."}, {"id": "D", "text": "1 semaine plus une rééducation progressive."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الخلع الأول للكتف: تثبيت بالحمالة نحو 3 أسابيع ثم إعادة تأهيل تدريجية.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q13', 'exam_eps_2024_specialty_oct_college', 13, 'مادة التخصص', 'En rugby après un essai, la transformation vaut :', false, '[{"id": "A", "text": "6 points."}, {"id": "B", "text": "5 points."}, {"id": "C", "text": "4 points."}, {"id": "D", "text": "3 points."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'التحويلة (conversion) = نقطتان (World Rugby، القانون 8)، وهي غائبة من A–D. يبقى احتمال ضعيف أن يكون «6» قراءة خاطئة لـ«2» في OCR، لكن تسلسل 6/5/4/3 يبدو مقصوداً (5 = قيمة المحاولة نفسها، 3 = قيمة الركلة).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: احتمال أن يكون «6» قراءة خاطئة لـ«2» في OCR')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q14', 'exam_eps_2024_specialty_oct_college', 14, 'مادة التخصص', 'Pour lutter contre l''obésité, il est conseillé de faire un effort :', false, '[{"id": "A", "text": "Répété et d''intensité modérée."}, {"id": "B", "text": "Peu fréquent et d''intensité forte."}, {"id": "C", "text": "Peu fréquent et d''intensité modérée."}, {"id": "D", "text": "Répété et d''intensité forte."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'محاربة السمنة: جهد متكرر متوسط الشدة (يحرق الدهون دون إجهاد مفرط).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q15', 'exam_eps_2024_specialty_oct_college', 15, 'مادة التخصص', 'En basket-ball, si un joueur commet deux fautes antisportives :', false, '[{"id": "A", "text": "Est exclu du match et doit quitter la salle."}, {"id": "B", "text": "Peut continuer à jouer et un lancer franc est accordé aux adversaires."}, {"id": "C", "text": "Est exclu du match et peut rester sur le banc des remplaçants."}, {"id": "D", "text": "Est exclu seulement du quart du match dans lequel il a commis les fautes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'قانون FIBA: خطآن غير رياضيين = إقصاء (disqualification)؛ يغادر اللاعب القاعة إلى غرفة الملابس.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q16', 'exam_eps_2024_specialty_oct_college', 16, 'مادة التخصص', 'Le ligament ulno-carpien sert à renforcer l''articulation de :', false, '[{"id": "A", "text": "L''épaule."}, {"id": "B", "text": "Poignet."}, {"id": "C", "text": "La hanche."}, {"id": "D", "text": "Genou."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الرباط الزندي الرسغي في المعصم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q17', 'exam_eps_2024_specialty_oct_college', 17, 'مادة التخصص', 'La quote-part des cotisations d''adhésion annuelle allouée à la fédération royale marocaine du sport scolaire est de :', false, '[{"id": "A", "text": "20%."}, {"id": "B", "text": "10%."}, {"id": "C", "text": "65%."}, {"id": "D", "text": "5%."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'المذكرة الوزارية 074X21 (§6) تقسم الكوتيزاسيون: 65% جمعية المؤسسة، 10% الفرع الإقليمي، 5% الفرع الجهوي، 15% الفيدرالية، 5% صندوق الدعم — و15% ليست من الخيارات. (مصدر التقسيم: شرح mesconcours لورقة فبراير 2024، Q43.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q18', 'exam_eps_2024_specialty_oct_college', 18, 'مادة التخصص', 'En hand-ball, après le geste d''avertissement du jeu passif, un jet franc est accordé à l''équipe adverse si :', false, '[{"id": "A", "text": "L''équipe attaquante n''a effectué aucun tir au but après un maximum de 6 passes."}, {"id": "B", "text": "… après un maximum de 5 passes."}, {"id": "C", "text": "… après un maximum de 4 passes."}, {"id": "D", "text": "… après un maximum de 3 passes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'خفّضت IHF حد اللعب السلبي من 6 تمريرات إلى 4 تمريرات ابتداءً من 1 يوليوز 2022؛ ففي دورة أكتوبر 2024 الحد هو 4.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q19', 'exam_eps_2024_specialty_oct_college', 19, 'مادة التخصص', 'Le rôle des segments libres pendant l''impulsion en saut en hauteur consiste à :', false, '[{"id": "A", "text": "Augmenter le temps d''amortissement."}, {"id": "B", "text": "Alléger le travail de la jambe d''appel."}, {"id": "C", "text": "Faciliter la réalisation du griffé."}, {"id": "D", "text": "Chercher l''équilibre du corps pendant la réception."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'تأرجح القطع الحرة (الذراعان + الرجل الحرة) أثناء الدفع يخفف عمل رجل الارتكاز ويساهم في الرفع العمودي.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q20', 'exam_eps_2024_specialty_oct_college', 20, 'مادة التخصص', 'L''anémomètre est utilisé pour mesurer :', false, '[{"id": "A", "text": "La vitesse du vent pour l''homologation des records et la validation des performances après fin de la compétition."}, {"id": "B", "text": "… au cours de la course."}, {"id": "C", "text": "… une heure avant la compétition."}, {"id": "D", "text": "… deux heures avant la compétition."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'سرعة الريح تُقاس أثناء السباق (10 ثوانٍ في 100 م) للمصادقة على الأرقام القياسية (World Athletics).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q21', 'exam_eps_2024_specialty_oct_college', 21, 'مادة التخصص', 'Le rôle d''une articulation est de :', false, '[{"id": "A", "text": "Protéger les muscles."}, {"id": "B", "text": "Relier les muscles entre eux."}, {"id": "C", "text": "Permettre le déplacement des os."}, {"id": "D", "text": "Maintenir les ligaments."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'المفصل يسمح بحركة العظام بعضها بالنسبة لبعض.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q22', 'exam_eps_2024_specialty_oct_college', 22, 'مادة التخصص', 'En volley-ball, une faute de position entraîne les conséquences suivantes :', false, '[{"id": "A", "text": "L''adversaire gagne un point et le service, les positions des joueurs sont rectifiées."}, {"id": "B", "text": "L''adversaire gagne un point, les positions des joueurs ne sont pas rectifiées."}, {"id": "C", "text": "L''adversaire gagne le service, les positions des joueurs ne sont pas rectifiées."}, {"id": "D", "text": "L''adversaire gagne un point et le service, plus un avertissement à l''équipe fautive."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'قانون FIVB (7.5.4): خطأ التموضع = نقطة + إرسال للخصم وتصحيح التموضع.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q23', 'exam_eps_2024_specialty_oct_college', 23, 'مادة التخصص', 'La crampe musculaire est :', false, '[{"id": "A", "text": "Un étirement musculaire permanent."}, {"id": "B", "text": "Une contraction musculaire qui dure."}, {"id": "C", "text": "Une lésion musculaire passagère."}, {"id": "D", "text": "Une contusion musculaire permanente."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'التشنج = انقباض عضلي لا إرادي مستمر.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q24', 'exam_eps_2024_specialty_oct_college', 24, 'مادة التخصص', 'Les élèves qualifiés aux différents événements sportifs scolaires devront être munis de :', false, '[{"id": "A", "text": "Carte de joueur, feuille d''engagement et carte de scolarité."}, {"id": "B", "text": "Certificat de scolarité, feuille d''engagement et carte de scolarité."}, {"id": "C", "text": "Carte de joueur, certificat de scolarité et feuille d''engagement."}, {"id": "D", "text": "Carte de joueur, certificat de scolarité et carte de scolarité."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الوثائق المطلوبة: بطاقة اللاعب (رخصة اللاعب) + شهادة التمدرس + ورقة الالتزام. الخيار A يستبدل الشهادة بـ«بطاقة التمدرس» خطأً.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q25', 'exam_eps_2024_specialty_oct_college', 25, 'مادة التخصص', 'La zone de transmission en course de relais du 4x400m est de :', false, '[{"id": "A", "text": "25 mètres."}, {"id": "B", "text": "30 mètres."}, {"id": "C", "text": "35 mètres."}, {"id": "D", "text": "40 mètres."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'منطقة التسليم في 4×400 م = 20 م (World Athletics، TR 24)، وهي غائبة من الخيارات.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q26', 'exam_eps_2024_specialty_oct_college', 26, 'مادة التخصص', 'Les mouvements du poignet se font par deux articulations :', false, '[{"id": "A", "text": "Radio-carpienne et médio-carpienne."}, {"id": "B", "text": "Radio-ulnaire distale et scapulo-humérale."}, {"id": "C", "text": "Huméro-radiale et fémuro-tibiale."}, {"id": "D", "text": "Radio-ulnaire proximale et scapulo-humérale."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'مفصلا المعصم: الكعبري الرسغي والرسغي الأوسط.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q27', 'exam_eps_2024_specialty_oct_college', 27, 'مادة التخصص', 'En hand-ball les décisions de l''arbitre sont contestées par :', false, '[{"id": "A", "text": "Le capitaine uniquement."}, {"id": "B", "text": "Le coach uniquement."}, {"id": "C", "text": "Le coach et le capitaine uniquement."}, {"id": "D", "text": "Aucun des deux."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'حسب IHF (القاعدة 17:11) «المسؤولون الرسميون عن الفريق» — أي المدرب — وحدهم يحق لهم مخاطبة الحكام أثناء المباراة؛ وقرارات الحكام في الوقائع نهائية. قاعدة «القائد وحده» هي قاعدة كرة القدم لا كرة اليد، لكن إن اعتمد مفتاح الامتحان كتيباً مدرسياً يقول القائد، فالجواب المقصود قد يكون A.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: المدرب وحده يخاطب الحكام حسب IHF — لكن بعض الكتيبات المدرسية تقول القائد')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q28', 'exam_eps_2024_specialty_oct_college', 28, 'مادة التخصص', 'En gymnastique, la répulsion bras est :', false, '[{"id": "A", "text": "Une flexion de l''avant-bras sur le bras."}, {"id": "B", "text": "L''extension complète de l''avant-bras sur le bras."}, {"id": "C", "text": "L''ouverture de l''angle bras-tronc."}, {"id": "D", "text": "Une fermeture de l''angle bras-tronc."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الدفع (répulsion) = بسط كامل للساعد على العضد (بسط المرفق).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q29', 'exam_eps_2024_specialty_oct_college', 29, 'مادة التخصص', 'En course de haie, un athlète est disqualifié si :', false, '[{"id": "A", "text": "Son pied ou sa jambe se trouve au-delà des extrémités de la haie."}, {"id": "B", "text": "[مشوّه]"}, {"id": "C", "text": "Sa jambe d''attaque se trouve au moment du franchissement […]."}, {"id": "D", "text": "Sa jambe d''esquive se trouve au moment du franchissement en-dessous du plan horizontal de la haie."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'قانون World Athletics (TR 22.6): يُقصى العدّاء إذا كانت قدمه أو ساقه (الرجل الخلفية/رجل الإفلات) لحظة العبور تحت المستوى الأفقي لأعلى الحاجز. خيارات A–C مشوّهة في OCR، فالحرف D مؤكد بالمضمون لا بقراءة نظيفة للحروف.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: حروف A–C مشوّهة؛ الجواب صحيح بالمضمون لا بالحرف')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q30', 'exam_eps_2024_specialty_oct_college', 30, 'مادة التخصص', 'En biomécanique, un levier inter-appui comporte :', false, '[{"id": "A", "text": "Une charge entre la force motrice et le point d''appui."}, {"id": "B", "text": "Un point d''appui entre la force motrice et la charge."}, {"id": "C", "text": "Une force motrice entre la charge et le point d''appui."}, {"id": "D", "text": "Un point d''appui entre la charge et le centre de gravité."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الرافعة بينية الدعم (من الصنف الأول): نقطة الارتكاز بين القوة المحركة والحمولة.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q31', 'exam_eps_2024_specialty_oct_college', 31, 'مادة التخصص', 'La quote-part des cotisations d''adhésion allouée au bureau de la succursale provinciale de la fédération royale marocaine du sport scolaire est :', false, '[{"id": "A", "text": "15%."}, {"id": "B", "text": "10%."}, {"id": "C", "text": "65%."}, {"id": "D", "text": "5%."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'المذكرة 074X21 (§6): حصة الفرع الإقليمي = 10%.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q32', 'exam_eps_2024_specialty_oct_college', 32, 'مادة التخصص', 'Un quart temps en Basket-ball en NBA dure :', false, '[{"id": "A", "text": "6 minutes."}, {"id": "B", "text": "8 minutes."}, {"id": "C", "text": "10 minutes."}, {"id": "D", "text": "14 minutes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'ربع مباراة NBA = 12 دقيقة، وهي غائبة من الخيارات (10 دقائق = ربع FIBA). صيغة الجذع في OCR («ex-NBA») قد تعني «en NBA».', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: صيغة «ex-NBA» في OCR قد تعني «en NBA»')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q33', 'exam_eps_2024_specialty_oct_college', 33, 'مادة التخصص', 'Les phases du jeu en handball sont :', false, '[{"id": "A", "text": "L''attaque placée, la contre-attaque, l''organisation en zone et la défense placée."}, {"id": "B", "text": "La circulation de la balle, la circulation des joueurs et anticipation des actions offensives."}, {"id": "C", "text": "Progression de la balle, conservation de la balle et interception de la balle."}, {"id": "D", "text": "Le changement, le glissement, la permutation et la pénétration."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'أطوار اللعب الأربعة: الدفاع الموضّع، الهجوم المضاد/الصعود، الهجوم الموضّع، التراجع الدفاعي؛ A هو الخيار الوحيد الذي يجمعها (و«organisation en zone» نظام دفاعي لا طور، لكن A واضح القصد).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q34', 'exam_eps_2024_specialty_oct_college', 34, 'مادة التخصص', 'Le renouvellement de l''ATP : [أي عبارة صحيحة؟]', false, '[{"id": "A", "text": "Le renouvellement de l''ATP est principalement assuré par la glycolyse anaérobie quelle que soit la durée de l''exercice."}, {"id": "B", "text": "Le renouvellement de l''ATP par la glycolyse anaérobie est beaucoup plus rentable pour le muscle que les oxydations cellulaires qui sont consommatrices d''oxygène."}, {"id": "C", "text": "L''hydrolyse de l''ATP et son renouvellement à partir de la créatine phosphate constituent la principale source d''énergie pour des exercices d''une durée inférieure à dix secondes."}, {"id": "D", "text": "La dégradation des lipides par les oxydations cellulaires est plus élevée dans les fibres musculaires de type II que dans les fibres musculaires de type I."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'التحلل المائي لـATP وتجديده من فوسفات الكرياتين هو المصدر الرئيسي للجهود الأقل من 10 ثوانٍ (المسلك اللاهوائي اللالبني). A خطأ (الجليكوليزا ليست المصدر الرئيسي مهما طال الجهد)، وB خطأ (الأكسدة أغنى بكثير)، وD خطأ (أكسدة الدهون أعلى في الألياف I لا II).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q35', 'exam_eps_2024_specialty_oct_college', 35, 'مادة التخصص', 'Un élève qui présente une crise d''asthme, il faut :', false, '[{"id": "A", "text": "Sécuriser le milieu, faciliter sa respiration et l''aider à prendre son traitement en demander un avis médical."}, {"id": "B", "text": "Sécuriser le milieu, l''aider à boire beaucoup d''eau et demander un avis médical."}, {"id": "C", "text": "Sécuriser le milieu, le faire respirer dans un sac en papier, aider à boire de l''eau en demandant un avis médical."}, {"id": "D", "text": "Sécuriser le milieu, le faire marcher, l''aider à respirer dans un sac de plastique en demandant un avis médical."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'تأمين المكان، تسهيل التنفس (وضعية مريحة)، مساعدته على أخذ بخاخه، وطلب رأي طبي. الكيس الورقي/البلاستيكي والمشي وشرب الماء إجراءات خاطئة في الربو.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q36', 'exam_eps_2024_specialty_oct_college', 36, 'مادة التخصص', 'La formation de la mêlée en rugby se fait après décision de l''arbitre dans :', false, '[{"id": "A", "text": "Les trente secondes qui suivent la décision de l''arbitre."}, {"id": "B", "text": "Les cinq secondes qui suivent la décision de l''arbitre."}, {"id": "C", "text": "Les vingt secondes qui suivent la décision de l''arbitre."}, {"id": "D", "text": "Les dix secondes qui suivent la décision de l''arbitre."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'قانون World Rugby (19.4): يجب أن تكون الفرق جاهزة لتشكيل الملتحمة خلال 30 ثانية من قرار الحكم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q37', 'exam_eps_2024_specialty_oct_college', 37, 'مادة التخصص', 'Un essai en rugby est :', false, '[{"id": "A", "text": "Botter le ballon entre les deux poteaux en dessus de la barre transversale."}, {"id": "B", "text": "Aplatir le ballon dans l''en-but adverse."}, {"id": "C", "text": "Botter le ballon dans l''en-but adverse."}, {"id": "D", "text": "Botter le ballon en demi-volée et l''envoyer par-dessus la barre du but adverse."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'المحاولة = تسطيح الكرة أرضاً في منطقة المرمى الخصم (World Rugby، القانون 8).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q38', 'exam_eps_2024_specialty_oct_college', 38, 'مادة التخصص', 'La source énergétique dominante lors du 5000 mètres :', false, '[{"id": "A", "text": "La filière anaérobie alactique en puissance."}, {"id": "B", "text": "La filière anaérobie lactique en capacité."}, {"id": "C", "text": "La filière aérobie en puissance."}, {"id": "D", "text": "La filière aérobie en capacité."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'سباق 5000 م (~13–15 دقيقة) يهيمن عليه المسلك الهوائي في القدرة (التحمل)؛ القوة الهوائية تبلغ ذروتها في 2–3 دقائق فقط.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q39', 'exam_eps_2024_specialty_oct_college', 39, 'مادة التخصص', 'En saut en longueur la mesure s''effectue en plaçant :', false, '[{"id": "A", "text": "Le 0 du double décamètre à la marque laissée la plus proche de la planche par l''athlète."}, {"id": "B", "text": "Le 0 du double décamètre à la marque laissée au sable par le pied de l''athlète."}, {"id": "C", "text": "Le 0 du double décamètre à la première marque laissée au sable par l''athlète."}, {"id": "D", "text": "Le 0 du double décamètre à la planche d''appel."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'يُقاس من لوح الارتكاز إلى أقرب أثر يتركه أي جزء من جسم الرياضي في الرمل.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q40', 'exam_eps_2024_specialty_oct_college', 40, 'مادة التخصص', 'Une fracture de l''extrémité supérieure de l''humérus entraîne :', false, '[{"id": "A", "text": "Une impotence fonctionnelle partielle ou totale de l''humérus."}, {"id": "B", "text": "Ecchymose au niveau du muscle de l''humérus."}, {"id": "C", "text": "Une dislocation de la tête humérale."}, {"id": "D", "text": "Meurtrissure de la partie supérieure de l''humérus."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'كسر أعلى العضد يقدّم بألم وعجز وظيفي جزئي أو كلي للطرف؛ الكدمة والخلع ليستا النتيجة المميِّزة.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q41', 'exam_eps_2024_specialty_oct_college', 41, 'مادة التخصص', 'Au collège, les séances d''entraînement en ASS sont programmées comme suit :', false, '[{"id": "A", "text": "2 heures le mercredi après-midi, 3 heures le vendredi [après-midi ? — OCR مشوّه]."}, {"id": "B", "text": "3 heures le vendredi après-midi."}, {"id": "C", "text": "2 heures le mercredi après-midi."}, {"id": "D", "text": "3 heures le mercredi après-midi, 3 heures le vendredi après-midi."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'جدول الجمعية الرياضية المدرسية: الكوليج = ساعتان الأربعاء بعد الزوال + ساعتان الجمعة (4 ساعات أسبوعياً)، والثانوي التأهيلي = 3 ساعات الجمعة بعد الزوال. لا خيار من A–D يذكر «ساعتان الأربعاء + ساعتان الجمعة» للكوليج كما قُرئت الخيارات (يبقى احتمال أن يكون الخيار A في الأصل «ساعتان الأربعاء + ساعتان الجمعة» وأن OCR قرأ «2» الثانية «3» — يُعاد فحصه متى توفرت صورة أوضح).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: جدول الكوليج الصحيح — ساعتان الأربعاء + ساعتان الجمعة — غير موجود في الخيارات كما قُرئت')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q42', 'exam_eps_2024_specialty_oct_college', 42, 'مادة التخصص', 'La hauteur du filet de volley-ball pour les seniors est de :', false, '[{"id": "A", "text": "2,42 m pour les hommes et 2,20 m pour les femmes."}, {"id": "B", "text": "2,42 m pour les hommes et 2,24 m pour les femmes."}, {"id": "C", "text": "2,43 m pour les hommes et 2,20 m pour les femmes."}, {"id": "D", "text": "2,43 m pour les hommes et 2,24 m pour les femmes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'قانون FIVB (كبار): الرجال 2,43 م، النساء 2,24 م.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q43', 'exam_eps_2024_specialty_oct_college', 43, 'مادة التخصص', 'En course de haie la jambe d''esquive est celle qui franchit la haie :', false, '[{"id": "A", "text": "En premier avec un mouvement d''adduction-rotation."}, {"id": "B", "text": "En second avec un mouvement d''abduction-rotation."}, {"id": "C", "text": "En premier avec un mouvement d''adduction."}, {"id": "D", "text": "En premier avec un mouvement de rotation."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'رجل الإفلات (الخلفية) تعبر الحاجز ثانيةً (بعد رجل الهجوم) بحركة تبعيد ودوران خارجي.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q44', 'exam_eps_2024_specialty_oct_college', 44, 'مادة التخصص', 'Les fibres II b sont des :', false, '[{"id": "A", "text": "Fibres rapides non oxydatives."}, {"id": "B", "text": "Fibres rapides glycoliques."}, {"id": "C", "text": "Fibres rapides oxydatives."}, {"id": "D", "text": "Fibres lentes oxydatives."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الألياف IIb = ألياف سريعة جليكوليتية (FG) — هذه التسمية القياسية في الكتب. الخيار A («rapides non oxydatives») صحيح وصفياً أيضاً (قدرتها التأكسدية ضعيفة)، لكنه ليس التسمية المعتمدة؛ السؤال ملتبس بصياغته.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: IIb: التسمية القياسية «glycolytiques» مقابل «non oxydatives» الوصفية')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q45', 'exam_eps_2024_specialty_oct_college', 45, 'مادة التخصص', 'Les agrès officiels programmés en gymnastique artistique masculine sont :', false, '[{"id": "A", "text": "Anneaux, barre fixe, cheval d''arçons, sol, barres asymétriques."}, {"id": "B", "text": "Poutre, le sol, barre fixe, barres parallèles et anneaux."}, {"id": "C", "text": "Barre asymétrique, table de saut, barre fixe, barres parallèles et le sol."}, {"id": "D", "text": "Table de saut, barre fixe, barre parallèle, anneaux, cheval d''arçons et le sol."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'أجهزة الرجال الستة: البساط، حصان الحلق، الحلقات، طاولة القفز، المتوازي، العارضة الثابتة. A وC يدرجان «المتوازي المختلف» (جهاز نسائي)، وB يدرج «العارضة» (جهاز نسائي).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q46', 'exam_eps_2024_specialty_oct_college', 46, 'مادة التخصص', 'Quand les parties du corps ont parcouru la même distance, on dit que c''est :', false, '[{"id": "A", "text": "Une supination."}, {"id": "B", "text": "Une translation."}, {"id": "C", "text": "Une pronation."}, {"id": "D", "text": "Une rotation."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الانتقال (translation): كل أجزاء الجسم تقطع المسافة نفسها دون دوران.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q47', 'exam_eps_2024_specialty_oct_college', 47, 'مادة التخصص', 'Le réflexe myotatique :', false, '[{"id": "A", "text": "[خيار غير مقروء — «…par le cerveau» ؟]"}, {"id": "B", "text": "Est constitué de deux neurones."}, {"id": "C", "text": "[غير مقروء]"}, {"id": "D", "text": "[غير مقروء]"}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'المنعكس العضلي أحادي المشبك: عصبونان فقط (حسي + حركي) ومشبك واحد؛ مركزه النخاع لا الدماغ. (انظر أيضاً فبراير 2024 Q60: المنعكس العضلي = منعكس التمدد/الوتري.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q50', 'exam_eps_2024_specialty_oct_college', 50, 'مادة التخصص', 'Les élèves inscrits dans les parcours sport-études bénéficieront d''une adaptation d''emploi du temps :', false, '[{"id": "A", "text": "Matinée consacrée à la formation sportive et l''après-midi aux études."}, {"id": "B", "text": "Matinée consacrée aux études, et l''après-midi à la formation sportive."}, {"id": "C", "text": "2 heures successives de formation sportive de 8h à 10h chaque matin."}, {"id": "D", "text": "[غير مقروء]"}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'في مسار sport-études: الصباح للدراسة، وبعد الزوال للتكوين الرياضي.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q51', 'exam_eps_2024_specialty_oct_college', 51, 'مادة التخصص', 'Quand l''équipe attaquante récupère le ballon après avoir touché le cerceau adverse, elle dispose de [؟] secondes pour tirer :', false, '[{"id": "A", "text": "12 secondes."}, {"id": "B", "text": "24 secondes."}, {"id": "C", "text": "8 secondes."}, {"id": "D", "text": "10 secondes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'حسب FIBA: بعد الاسترداد الهجومي (الكرة لمست الحلقة واستعادها الفريق نفسه) يُعاد ضبط ساعة التصويب على 14 ثانية، و14 ليست من الخيارات. لكن الجذع مشوّه في OCR: إن كان السؤال عن ساعة التصويب العامة فالجواب B (24 ثانية).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: جذع مشوّه: 14 ثانية بعد الاسترداد الهجومي مقابل 24 ثانية العامة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q52', 'exam_eps_2024_specialty_oct_college', 52, 'مادة التخصص', 'Les postes des joueurs sur un terrain de Hand ball sont :', false, '[{"id": "A", "text": "Demi-centre - pivot - arrière - gardien - ailier."}, {"id": "B", "text": "Bloqueur - pivot - arrière - gardien - ailier."}, {"id": "C", "text": "Libéro - pivot - arrière - gardien - ailier."}, {"id": "D", "text": "Demi-centre - pivot - arrière - gardien - intercepteur."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'مراكز كرة اليد: الجناح، الخلفي، صانع اللعب (نصف الوسط)، المحور، الحارس. «Bloqueur» و«Libéro» و«intercepteur» ليست مراكز.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q53', 'exam_eps_2024_specialty_oct_college', 53, 'مادة التخصص', 'Le jet de 7 m en Hand-ball est un tir direct au but qui doit être exécuté dans :', false, '[{"id": "A", "text": "Les 5 secondes qui suivent le coup de sifflet de l''arbitre."}, {"id": "B", "text": "Les 2 secondes qui suivent le coup de sifflet de l''arbitre."}, {"id": "C", "text": "Les 4 secondes qui suivent le coup de sifflet de l''arbitre."}, {"id": "D", "text": "Les 3 secondes qui suivent le coup de sifflet de l''arbitre."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'قانون IHF (14:4): رمية 7 أمتار تُنفذ خلال 3 ثوانٍ من صافرة الحكم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q54', 'exam_eps_2024_specialty_oct_college', 54, 'مادة التخصص', 'Le flottement en Hand-ball est un déplacement :', false, '[{"id": "A", "text": "Défensif étagé en deux rideaux."}, {"id": "B", "text": "Défensif en reculant pour protéger la cible."}, {"id": "C", "text": "Défensif latéral dans le sens de la circulation de la balle."}, {"id": "D", "text": "Défensif en harcelant l''adversaire un contre un sur demi terrain."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الـ«flottement» = تحرك دفاعي جانبي في اتجاه دوران الكرة (حرفياً في كتيبات كرة اليد).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q55', 'exam_eps_2024_specialty_oct_college', 55, 'مادة التخصص', 'Une bonne impulsion du pied d''appel en saut en longueur est caractérisée par :', false, '[{"id": "A", "text": "Un centre de gravité bas et les deux pieds pliés."}, {"id": "B", "text": "Une jambe d''appel tendue, jambe libre pliée et action des bras vers le haut."}, {"id": "C", "text": "Une jambe d''appel fléchie, jambe libre tendue et mains synchronisées."}, {"id": "D", "text": "Une jambe d''appel tendue, jambe libre pliée et les bras le long du corps."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الارتكاز الجيد: رجل الدفع ممدودة (بسط ثلاثي)، الرجل الحرة مثنية (فخذ أفقي)، والذراعان تدفعان نحو الأعلى.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q56', 'exam_eps_2024_specialty_oct_college', 56, 'مادة التخصص', 'En biomécanique, un salto s''exécute :', false, '[{"id": "A", "text": "Dans un plan sagittal par rapport à un axe transversal."}, {"id": "B", "text": "Dans un plan transversal par rapport à un axe longitudinal."}, {"id": "C", "text": "Dans un plan frontal par rapport à un axe latéral."}, {"id": "D", "text": "Dans un plan frontal par rapport à un axe transversal."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'الشقلبة (salto) دوران في المستوى السهمي حول محور مستعرض.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q57', 'exam_eps_2024_specialty_oct_college', 57, 'مادة التخصص', 'L''attaque placée en hand-ball est une organisation collective face à :', false, '[{"id": "A", "text": "Une défense collective déjà regroupée."}, {"id": "B", "text": "Une équipe en repli défensif."}, {"id": "C", "text": "Une défense étagée."}, {"id": "D", "text": "Une défense homme à homme."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'الهجوم الموضّع = تنظيم جماعي في مواجهة دفاع جماعي سبق أن تمركز.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q58', 'exam_eps_2024_specialty_oct_college', 58, 'مادة التخصص', 'La surface sur laquelle la projection du centre de gravité doit se trouver pour tenir l''équilibre du corps est :', false, '[{"id": "A", "text": "La surface de gravité."}, {"id": "B", "text": "Le polygone de sustentation."}, {"id": "C", "text": "Le polygone de gravité."}, {"id": "D", "text": "L''aplomb."}, {"id": "E", "text": "Le triangle de sustentation."}]'::jsonb, ARRAY['B']::text[], 'التوازن يقتضي أن يقع إسقاط مركز الثقل داخل مضلع الاستناد (polygone de sustentation). (ترتيب D/E غير مؤكد في OCR، لكن B واضح.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q59', 'exam_eps_2024_specialty_oct_college', 59, 'مادة التخصص', 'Le résultat du rapport entre les balles conquises et les entrées en possession de la balle (BCEPB) est un indice qui renseigne sur :', false, '[{"id": "A", "text": "La circulation de balle et des joueurs."}, {"id": "B", "text": "La progression vers la cible."}, {"id": "C", "text": "La récupération de la balle."}, {"id": "D", "text": "La conservation de la balle."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'BCEPB = الكرات المسترجعة / مرات امتلاك الكرة: مؤشر استرجاع الكرة. (الحفظ يقاس بمؤشر آخر، والتقدم بمؤشر آخر في شبكة التحليل نفسها.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q60', 'exam_eps_2024_specialty_oct_college', 60, 'مادة التخصص', 'Le rétablissement en gymnastique c''est :', false, '[{"id": "A", "text": "Le passage du haut en bas sur un agrès."}, {"id": "B", "text": "Le passage du bas en haut sur un agrès."}, {"id": "C", "text": "La sortie filet à partir d''un agrès."}, {"id": "D", "text": "Le tour d''appui avant sur un agrès."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الـ«rétablissement» (الباسكول/الارتقاء إلى الدعم) = الانتقال من الأسفل (تعليق) إلى الأعلى (دعم) على الجهاز.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q61', 'exam_eps_2024_specialty_oct_college', 61, 'مادة التخصص', 'Pour un blessé allongé suite à un traumatisme crânien et/ou du rachis, il est nécessaire de :', false, '[{"id": "A", "text": "Immobiliser la tête en exerçant une légère traction."}, {"id": "B", "text": "Immobiliser la tête en s''interdisant toute action."}, {"id": "C", "text": "Exercer une traction en replaçant la tête dans l''axe du tronc."}, {"id": "D", "text": "Mettre le blessé en position latérale de sécurité."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'تثبيت الرأس مع الحفاظ على الوضعية الموجودة وجرّ خفيف؛ C خاطئ لأنه يعيد تموضع الرأس في محور الجذع، وD (الوضعية الجانبية) ممنوعة عند الشك في إصابة العمود الفقري. (ملحوظة: التوجيهات الحديثة للإسعاف تميل إلى التثبيت دون جرّ، لكن A هو جواب الامتحان/الكتاب.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q62', 'exam_eps_2024_specialty_oct_college', 62, 'مادة التخصص', 'Lors d''un lancer franc en basket-ball, les muscles les plus sollicités sont :', false, '[{"id": "A", "text": "Le fléchisseur radial et extenseur ulnaire du carpe."}, {"id": "B", "text": "Le couturier et le quadriceps fémoral."}, {"id": "C", "text": "Le long péronier latéral et le jambier postérieur."}, {"id": "D", "text": "Le triceps sural et le court péronier latéral."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'بالحذف: A هو الزوج الوحيد لعضلات الساعد/الرسغ (القابضة الكعبرية والباسطة الزندية للرسغ)؛ B وC وD عضلات الساق. (الثلاثية والدلتوية أهم في التصويب لكنهما غير معروضتين.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q63', 'exam_eps_2024_specialty_oct_college', 63, 'مادة التخصص', 'Une chandelle en rugby est :', false, '[{"id": "A", "text": "Une passe haute effectuée avec une seule main à un partenaire."}, {"id": "B", "text": "Un coup de pied haut dans les airs."}, {"id": "C", "text": "Un coup de pied placé effectué après avoir marqué un essai."}, {"id": "D", "text": "Une passe effectuée à un partenaire en arrière."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الـ«chandelle» (up-and-under) = ركلة عالية في الهواء يُتنازع عليها عند سقوطها.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q64', 'exam_eps_2024_specialty_oct_college', 64, 'مادة التخصص', 'L''activité physique et sportive peut améliorer la santé mentale et psychique par l''effet de [؟] dans le sang :', false, '[{"id": "A", "text": "La testostérone."}, {"id": "B", "text": "Du cortisol."}, {"id": "C", "text": "De l''adrénaline."}, {"id": "D", "text": "De l''aldostérone."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الجذع مقطوع في OCR («par l''effet de +»)؛ الجواب B صحيح فقط إذا كانت الكلمة الناقصة «diminution/réduction» (النشاط البدني المنتظم يخفّض الكورتيزول المزمن، وهو آلية تحسين الصحة النفسية). ملحوظة: الجهد الحاد يرفع الكورتيزول مؤقتاً، فالصياغة الدقيقة للجذع حاسمة هنا.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: الجذع مقطوع: الجواب B صحيح فقط إذا كانت الكلمة الناقصة «diminution»')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q65', 'exam_eps_2024_specialty_oct_college', 65, 'مادة التخصص', 'La myofibrille est composée :', false, '[{"id": "A", "text": "D''une succession de sarcomères délimités par deux stries Z."}, {"id": "B", "text": "D''une succession de sarcomères délimités par deux bandes M."}, {"id": "C", "text": "De filaments fins contenant des molécules de myosine."}, {"id": "D", "text": "De filaments fins composés uniquement de molécules d''actine contenant des molécules de myosine."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'اللييفة العضلية = تتابع ساركوميرات يحدّ كلاً منها خطا Z.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q66', 'exam_eps_2024_specialty_oct_college', 66, 'مادة التخصص', 'Les éléments techniques pour marquer les points en rugby sont :', false, '[{"id": "A", "text": "L''essai, le drop, la pénalité et le maul."}, {"id": "B", "text": "L''essai, la transformation, le maul et la pénalité."}, {"id": "C", "text": "L''essai, la transformation, le drop et la pénalité."}, {"id": "D", "text": "L''essai, la transformation et la pénalité."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'طرق التسجيل في الرغبي: المحاولة، التحويلة، الضربة الساقطة (drop)، ركلة الجزاء. الـ«maul» ليس طريقة تسجيل.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q67', 'exam_eps_2024_specialty_oct_college', 67, 'مادة التخصص', 'Le calcaneum est l''os :', false, '[{"id": "A", "text": "Le plus volumineux du scapulo-humérale."}, {"id": "B", "text": "Le plus volumineux du crâne."}, {"id": "C", "text": "Le plus volumineux de la ceinture pelvienne."}, {"id": "D", "text": "Le plus volumineux du tarse."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'عظم العقب (calcaneus) أكبر عظام رسغ القدم (tarse).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q68', 'exam_eps_2024_specialty_oct_college', 68, 'مادة التخصص', 'En lancer de poids, le style Barychnikov est un lancer en :', false, '[{"id": "A", "text": "Volte."}, {"id": "B", "text": "Translation."}, {"id": "C", "text": "Demi-tour du corps."}, {"id": "D", "text": "Trois quart du corps."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'أسلوب باريشنيكوف = تقنية الدوران (rotation/volte)، مقابل أسلوب أوبراين (الانزلاق/translation).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q69', 'exam_eps_2024_specialty_oct_college', 69, 'مادة التخصص', 'La quote-part des cotisations d''adhésion allouée au Fonds de soutien au sport scolaire est :', false, '[{"id": "A", "text": "15%."}, {"id": "B", "text": "10%."}, {"id": "C", "text": "65%."}, {"id": "D", "text": "5%."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'المذكرة 074X21 (§6): حصة صندوق الدعم = 5%.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q70', 'exam_eps_2024_specialty_oct_college', 70, 'مادة التخصص', 'Face à des débutants en lancer de poids, il est préférable de travailler en premier lieu :', false, '[{"id": "A", "text": "Le développement de la force explosive des membres inférieurs"}, {"id": "B", "text": "Le développement de la force explosive des membres supérieurs"}, {"id": "C", "text": "La coordination des différentes parties du corps pour ne pas perturber le lancer"}, {"id": "D", "text": "La coordination visio-motrice et orientation de l''angle d''envol"}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'مع المبتدئين يُبنى أولاً التسلسل الحركي الكلي للجسم تدريجياً، لا القوة الانفجارية. المضمون مؤكد من وثائق تعليم رمي الثقل؛ الحرف C غير مؤكد مستقلاً بسبب تشوه OCR.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: المضمون مؤكد، الحرف C غير مؤكد')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q71', 'exam_eps_2024_specialty_oct_college', 71, 'مادة التخصص', 'Lors d''une pirouette, le corps tourne autour d''un axe :', false, '[{"id": "A", "text": "Transversal."}, {"id": "B", "text": "Longitudinal."}, {"id": "C", "text": "Antéro-postérieur."}, {"id": "D", "text": "[؟]"}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الدوران حول النفس (pirouette) = دوران حول المحور الطولي (العمودي).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q72', 'exam_eps_2024_specialty_oct_college', 72, 'مادة التخصص', 'Les qualités physiques les plus sollicitées chez un lanceur de poids sont :', false, '[{"id": "A", "text": "Force, souplesse et adresse."}, {"id": "B", "text": "Force, vitesse et coordination."}, {"id": "C", "text": "Explosivité, réactivité et vélocité."}, {"id": "D", "text": "Equilibre dynamique et souplesse."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'رامي الثقل يحتاج: القوة + السرعة + التنسيق (نصاً في تحليلات بيوميكانيك رمي الثقل).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q73', 'exam_eps_2024_specialty_oct_college', 73, 'مادة التخصص', 'Les phases de jeu offensif en rugby sont :', false, '[{"id": "A", "text": "Statique et dynamique."}, {"id": "B", "text": "Collective et individuelle."}, {"id": "C", "text": "Déployée et groupée."}, {"id": "D", "text": "Etagée et en zone."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'اللعب الهجومي في الرغبي: اللعب المنتشر (déployé) واللعب المجمّع (groupé)؛ والبديل الثالث هو اللعب بالقدم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q74', 'exam_eps_2024_specialty_oct_college', 74, 'مادة التخصص', 'Les membres de l''association sportive scolaire sont :', false, '[{"id": "A", "text": "Le directeur de l''établissement et les professeurs d''éducation physique et sportive."}, {"id": "B", "text": "Les professeurs d''éducation physique et sportive et des élèves."}, {"id": "C", "text": "Le directeur, les professeurs d''éducation physique et sportive, et des élèves."}, {"id": "D", "text": "L''économe et les professeurs de l''éducation physique et sportive."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'أعضاء الجمعية الرياضية المدرسية: المدير + أساتذة التربية البدنية + التلاميذ (والقائمة النظامية الكاملة تضيف ممثلي الآباء وشركاء آخرين، لكن C هو الأكمل بين الخيارات).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q75', 'exam_eps_2024_specialty_oct_college', 75, 'مادة التخصص', 'En course de vitesse le bassin est gainé :', false, '[{"id": "A", "text": "Rétroversion."}, {"id": "B", "text": "Antéversion."}, {"id": "C", "text": "Répulsion."}, {"id": "D", "text": "Rétropulsion."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'في العدو السريع يكون الحوض في ميل أمامي (antéversion) عند ملامسة القدم للأرض؛ أسرع العدائين يظهرون ميلاً أمامياً واضحاً.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q76', 'exam_eps_2024_specialty_oct_college', 76, 'مادة التخصص', 'Le rôle principal du ligament croisé postérieur est de :', false, '[{"id": "A", "text": "Contrôler le déplacement du tibia vers l''avant par rapport au fémur."}, {"id": "B", "text": "Contrôler la torsion du genou."}, {"id": "C", "text": "Contrôler le déplacement vers l''arrière du tibia vis-à-vis du fémur."}, {"id": "D", "text": "Fixer le tibia et le péroné."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'الرباط الصليبي الخلفي يمنع انزلاق الظنبوب نحو الخلف بالنسبة للفخذ (عكس الأمامي).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q77', 'exam_eps_2024_specialty_oct_college', 77, 'مادة التخصص', 'L''âge le plus adéquat pour développer les habiletés motrices est entre :', false, '[{"id": "A", "text": "6 et 12 ans."}, {"id": "B", "text": "12 et 20 ans."}, {"id": "C", "text": "20 et 30 ans."}, {"id": "D", "text": "Le long de la vie."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'الفترة الحساسة لتطوير القدرات التنسيقية/المهارات الحركية هي 6–12 سنة (الدراسات تضع الذروة 7–12 سنة، والخيار A هو الشريحة المقصودة).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q78', 'exam_eps_2024_specialty_oct_college', 78, 'مادة التخصص', 'L''autorité de l''arbitre en football commence :', false, '[{"id": "A", "text": "Dès qu''il établit la feuille de match."}, {"id": "B", "text": "Dès qu''il donne le coup d''envoi."}, {"id": "C", "text": "Dès qu''il pénètre dans le terrain."}, {"id": "D", "text": "Dès qu''il salue les 2 capitaines d''équipes."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'قانون IFAB (القانون 5): سلطة الحكم تبدأ لحظة دخوله أرض الملعب (للتفتيش قبل المباراة)، بما فيها اتخاذ إجراءات تأديبية.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q79', 'exam_eps_2024_specialty_oct_college', 79, 'مادة التخصص', 'En hand-ball le passage du bras est une technique particulière qui sert :', false, '[{"id": "A", "text": "Au pivot pour marquer contre l''appui du gardien."}, {"id": "B", "text": "Au porteur de balle de pénétrer dans les intervalles."}, {"id": "C", "text": "À l''arrière pour tirer des neuf mètres."}, {"id": "D", "text": "À l''ailier pour marquer avec roucoulette."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], '«passage de bras»: حامل الكرة يمرّر ذراعه بحركة دائرية ليتجاوز المدافع ويخترق الفجوات (intervalles) بين المدافعين.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q80', 'exam_eps_2024_specialty_oct_college', 80, 'مادة التخصص', 'Le moment de latence de la réaction motrice est le temps qui :', false, '[{"id": "A", "text": "Traduit la faculté d''exprimer la force maximale en un temps minimal."}, {"id": "B", "text": "Traduit la faculté d''effectuer le plus grand nombre de gestes identiques pendant une seule unité de temps."}, {"id": "C", "text": "Est compris entre le signal et la réaction motrice."}, {"id": "D", "text": "Est compris entre la phase d''accélération et la faculté à maintenir la vitesse maximale."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'زمن الكمون = الفترة بين الإشارة وبدء الاستجابة الحركية (تعريف قياسي).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q81', 'exam_eps_2024_specialty_oct_college', 81, 'مادة التخصص', 'Les échanges gazeux au niveau des alvéoles pulmonaires se réalisent par :', false, '[{"id": "A", "text": "L''aspiration du dioxygène par le dioxyde de carbone."}, {"id": "B", "text": "L''injection de l''air alvéolaire dans le sang."}, {"id": "C", "text": "La différence de pression entre l''air de l''alvéole et le sang."}, {"id": "D", "text": "Le dioxygène est pompé activement par le sang."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'التبادل الغازي السنخي يتم بالانتشار حسب فرق الضغوط الجزئية بين هواء السنخ والدم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q82', 'exam_eps_2024_specialty_oct_college', 82, 'مادة التخصص', 'La transformation en rugby se fait en bottant le ballon :', false, '[{"id": "A", "text": "Vers le camp adverse après sa sortie de la mêlée."}, {"id": "B", "text": "Vers le camp adverse allant directement vers l''en-but."}, {"id": "C", "text": "Vers le camp adverse après une infraction du jeu."}, {"id": "D", "text": "Entre les poteaux de but adverse après un essai marqué."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'التحويلة تُركل بين قائمي مرمى الخصم بعد تسجيل المحاولة.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q83', 'exam_eps_2024_specialty_oct_college', 83, 'مادة التخصص', 'Un mouvement coordonné est caractérisé par :', false, '[{"id": "A", "text": "La réaction, la différenciation, orientation, le rythme et l''équilibre."}, {"id": "B", "text": "La force, la souplesse, adresse, la résistance et l''endurance."}, {"id": "C", "text": "La souplesse, l''agilité, le doigté, l''élasticité et l''explosivité."}, {"id": "D", "text": "La concentration, attention, la focalisation, la réflexion et la perception."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'القدرات التنسيقية الكلاسيكية: رد الفعل، التمييز، التوجيه، الإيقاع، التوازن. (B يعدد القدرات البدنية لا التنسيقية.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q84', 'exam_eps_2024_specialty_oct_college', 84, 'مادة التخصص', 'La fréquence cardiaque maximale de l''homme est obtenue par :', false, '[{"id": "A", "text": "240 moins l''âge."}, {"id": "B", "text": "230 moins l''âge."}, {"id": "C", "text": "210 moins l''âge."}, {"id": "D", "text": "200 moins l''âge."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'الصيغة القياسية (Fox/Haskell) هي 220 − العمر، وهي غائبة من A–D.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q85', 'exam_eps_2024_specialty_oct_college', 85, 'مادة التخصص', 'L''antépulsion est une action qui sert à :', false, '[{"id": "A", "text": "L''ouverture de l''angle bras-tronc."}, {"id": "B", "text": "La flexion de l''avant-bras sur le bras."}, {"id": "C", "text": "L''extension de l''avant-bras sur le bras."}, {"id": "D", "text": "Fermeture de l''angle jambe-tronc."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'الـ«antépulsion» تفتح زاوية الذراع-الجذع (عكس الـ«rétropulsion» التي تقرّبها — انظر فبراير 2024 Q47).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q86', 'exam_eps_2024_specialty_oct_college', 86, 'مادة التخصص', 'La proprioception est une source d''information indispensable surtout pour :', false, '[{"id": "A", "text": "L''équilibre statique."}, {"id": "B", "text": "L''équilibre dynamique."}, {"id": "C", "text": "La souplesse passive."}, {"id": "D", "text": "La récupération active."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'البروبريوسيبشن أساسي للتوازن عموماً (الساكن والديناميكي معاً)؛ ولم يُعثر على مصدر تعليمي يقول إنه «خصوصاً» للتوازن الديناميكي. B هو الجواب المرجّح المقصود، لكنه غير مؤكد — يُعاد فحصه متى توفر مصدر.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', false, '«للتحقق»: البروبريوسيبشن يخدم التوازنين الساكن والديناميكي معاً؛ لا مصدر يرجّح الديناميكي')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q87', 'exam_eps_2024_specialty_oct_college', 87, 'مادة التخصص', 'Le terme du coup de lapin est employé pour désigner un traumatisme :', false, '[{"id": "A", "text": "Au niveau cervical."}, {"id": "B", "text": "Au niveau dorsal."}, {"id": "C", "text": "Au niveau lombaire."}, {"id": "D", "text": "Au niveau de la cheville."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], '«coup du lapin» (whiplash) = رضّ عنقي.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q88', 'exam_eps_2024_specialty_oct_college', 88, 'مادة التخصص', 'La consommation d''oxygène :', false, '[{"id": "A", "text": "Augmente rapidement au début de l''exercice musculaire."}, {"id": "B", "text": "Augmente lentement au début de l''exercice musculaire."}, {"id": "C", "text": "Retourne immédiatement à sa valeur de repos lorsque l''exercice musculaire cesse."}, {"id": "D", "text": "Peut atteindre lors d''un exercice maximal un niveau égal à sa valeur de repos."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'استهلاك الأكسجين يرتفع سريعاً في بداية الجهد العضلي (حركية VO2)، ثم يستقر؛ ولا يعود فوراً لقيمة الراحة عند التوقف.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q89', 'exam_eps_2024_specialty_oct_college', 89, 'مادة التخصص', 'La fracture de Monteggia est :', false, '[{"id": "A", "text": "Une fracture de l''ulna et une luxation de la tête radiale."}, {"id": "B", "text": "Une fracture de l''humérus et une luxation de l''ulna."}, {"id": "C", "text": "Une fracture de la tête radiale et une luxation de l''ulna."}, {"id": "D", "text": "Une fracture de l''humérus et une luxation de l''ulna."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'كسر مونتيجيا = كسر الزند + خلع رأس الكعبرة.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q90', 'exam_eps_2024_specialty_oct_college', 90, 'مادة التخصص', 'La filière énergétique aérobie :', false, '[{"id": "A", "text": "Utilise l''oxygène avec production de lactates."}, {"id": "B", "text": "N''utilise pas l''oxygène."}, {"id": "C", "text": "[مشوّه/مكرر في OCR]"}, {"id": "D", "text": "Utilise l''oxygène sans production de lactates."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'المسلك الهوائي يستعمل الأكسجين دون إنتاج اللاكتات (إنتاج اللاكتات خاص بالمسلك اللاهوائي اللبني).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q91', 'exam_eps_2024_specialty_oct_college', 91, 'مادة التخصص', 'L''animation des séances d''activités de l''association sportive scolaire est :', false, '[{"id": "A", "text": "Obligatoire uniquement pour le professeur coordonnateur de l''équipe pédagogique d''EPS."}, {"id": "B", "text": "Obligatoire pour toute l''équipe pédagogique d''EPS."}, {"id": "C", "text": "Obligatoire pour tous les professeurs d''EPS sauf le coordonnateur."}, {"id": "D", "text": "Pas obligatoire pour toute l''équipe pédagogique d''EPS."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'تنشيط حصص الجمعية الرياضية المدرسية واجب على كل فريق أساتذة التربية البدنية بالمؤسسة، لا على المنسق وحده. (نص المذكرة 074X21 نفسها لم يُسترجع مباشرة؛ التأكيد من النص النظامي الموازي.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q92', 'exam_eps_2024_specialty_oct_college', 92, 'مادة التخصص', 'L''articulation scapulo-humérale relie :', false, '[{"id": "A", "text": "L''humérus et le cubitus."}, {"id": "B", "text": "L''humérus et le radius."}, {"id": "C", "text": "Le radius et le cubitus."}, {"id": "D", "text": "Le radius et les métacarpiens."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['E']::text[], 'المفصل الكتفي العضدي (الحقاني العضدي) يربط العضد بلوح الكتف (omoplate)، ولوح الكتف غائب من A–D (كلها أزواج ساعد/مرفق متسقة، فلا يبدو أن خيار «omoplate» ضاع في OCR).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q93', 'exam_eps_2024_specialty_oct_college', 93, 'مادة التخصص', 'Le projet sport-études est abrité dans les établissements d''enseignement :', false, '[{"id": "A", "text": "Primaires et collégiales."}, {"id": "B", "text": "Secondaires collégiales."}, {"id": "C", "text": "Secondaires collégiales et qualifiants."}, {"id": "D", "text": "Secondaires qualifiants."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['C']::text[], 'مسار sport-études يمتد من السنة الأولى إعدادي إلى البكالوريا، وتستضيفه الثانويات الإعدادية والتأهيلية معاً.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q94', 'exam_eps_2024_specialty_oct_college', 94, 'مادة التخصص', 'Le mouvement des os est :', false, '[{"id": "A", "text": "La cause de la contraction musculaire."}, {"id": "B", "text": "La conséquence de la contraction musculaire."}, {"id": "C", "text": "La conséquence de la contraction des tendons."}, {"id": "D", "text": "La cause de la non sollicitation des tendons."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'حركة العظام نتيجة الانقباض العضلي (عبر الأوتار)، لا سببه.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q95', 'exam_eps_2024_specialty_oct_college', 95, 'مادة التخصص', 'Si la compression directe au niveau d''un membre est inefficace :', false, '[{"id": "A", "text": "Je réalise un point de compression."}, {"id": "B", "text": "Je mets en place un garrot."}, {"id": "C", "text": "J''allonge immédiatement le blessé sur le dos."}, {"id": "D", "text": "Je lui interdis de boire de l''eau."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'إذا فشل الضغط المباشر على نزيف طرف، يُوضع العاصب (garrot)؛ نقاط الضغط لم تعد تُدرَّس في الإسعافات منذ 2007.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q96', 'exam_eps_2024_specialty_oct_college', 96, 'مادة التخصص', 'Dans un muscle strié squelettique :', false, '[{"id": "A", "text": "Le temps de latence observé après une stimulation efficace représente le temps nécessaire à la synthèse de l''ATP."}, {"id": "B", "text": "L''amplitude de la secousse dépend de la fréquence des potentiels d''actions nerveux."}, {"id": "C", "text": "La durée de la secousse augmente sous l''effet des hormones thyroïdiennes."}, {"id": "D", "text": "La vitesse de contraction est plus grande dans les muscles constitués de fibres de type II que dans les muscles constitués de fibres de type I."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'سرعة الانقباض أكبر في عضلات الألياف II منها في عضلات الألياف I. (A خطأ: الكمون ليس زمن تصنيع ATP؛ B خطأ: السعة تعتمد على التجنيد لا التردد؛ C خطأ: هرمونات الغدة الدرقية تقصّر مدة الرعشة.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q97', 'exam_eps_2024_specialty_oct_college', 97, 'مادة التخصص', 'Les fractures des scaphoïdes sont liées à une chute en hyper-extension du :', false, '[{"id": "A", "text": "Coude."}, {"id": "B", "text": "De la hanche."}, {"id": "C", "text": "De la cheville."}, {"id": "D", "text": "Du poignet."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['D']::text[], 'كسور العظم الزورقي (scaphoïde) تتبع سقوطاً على يد ممدودة مع فرط بسط المعصم.', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q98', 'exam_eps_2024_specialty_oct_college', 98, 'مادة التخصص', 'La réaction qui transforme le glucose en gaz carbonique et en eau en présence d''oxygène est :', false, '[{"id": "A", "text": "La neutralisation."}, {"id": "B", "text": "L''oxydation."}, {"id": "C", "text": "La glycosylation."}, {"id": "D", "text": "La fermentation."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'الغلوكوز + الأكسجين ← CO2 + ماء = أكسدة (التنفس الخلوي).', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q99', 'exam_eps_2024_specialty_oct_college', 99, 'مادة التخصص', 'Parmi les huit os du carpe on trouve :', false, '[{"id": "A", "text": "Le scaphoïde et le pisiforme."}, {"id": "B", "text": "Le calcanéum et l''astragale."}, {"id": "C", "text": "Le grand et le petit trochanter."}, {"id": "D", "text": "L''acromion et l''humérus."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['A']::text[], 'من عظام الرسغ الثمانية: الزورقي (scaphoïde) والحمصي (pisiforme). (B: عظام رسغ القدم؛ C: عظم الفخذ؛ D: لوح الكتف والعضد.)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة أكتوبر 2024) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2024_specialty_oct_college_q100', 'exam_eps_2024_specialty_oct_college', 100, 'مادة التخصص', 'L''axe transversal est situé à l''intersection du plan :', false, '[{"id": "A", "text": "Vertical et longitudinal."}, {"id": "B", "text": "Frontal et transversal."}, {"id": "C", "text": "Sagittal et transversal."}, {"id": "D", "text": "Frontal et sagittal."}, {"id": "E", "text": "Toutes les réponses sont fausses."}]'::jsonb, ARRAY['B']::text[], 'المحور المستعرض (الذي يجري من اليمين إلى اليسار) هو تقاطع المستويين الجبهي والمستعرض؛ أما تقاطع الجبهي والسهمي فهو المحور الطولي (العمودي). --- ## المصادر - الورقة: Scribd «Concour d''EPS 2024 Octobre Spécialité» (Aimad El Mesafy، 24 صفحة) — http://fr.scribd.com/document/921703294/Concour-d-EPS-2024-Octobre-Specialite-Aimad-El-Mesafy - الكاروسيل المعلَّم: Facebook «Votre EPS» — https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l (صفحات 1–21، Q1–Q90؛ العلامات الملوّنة غير قابلة للقراءة من النص) - فبراير 2024 (للمقارنة والحصص المالية): https://mesconcours.ma/ar/concours/enseignement/2024-615/ — محفوظة محلياً `2024/mesconcours_2024a.html` (تفسير Q43: تقسيم الكوتيزاسيون حسب المذكرة 074X21 §6) - فيديو يوتيوب (ثبت أنه فبراير 2024، لم يُستعمل): https://www.youtube.com/watch?v=4H1vPke8na8 — نصّه الكامل (61 دقيقة) يطابق ورقة فبراير (Q1 حواجز 8,50 م، Q3 كوتيزاسيون، Q44 خط 6,75 م) ويتوقف عند حدود Q44 - قوانين الاتحادات الدولية: IHF (اللعب السلبي 4 تمريرات من 2022؛ رمية 7 م خلال 3 ثوانٍ؛ مخاطبة الحكام)، FIBA (الخطأ التقني رمية واحدة؛ الإقصاء بخطأين غير رياضيين؛ ساعة التصويب 14 ثانية بعد الاسترداد الهجومي)، FIVB (خطأ التموضع؛ ارتفاع الشبكة 2,43/2,24 م)، World Athletics (منطقة تسليم 4×400 م = 20 م؛ الإقصاء في الحواجز)، World Rugby (التحويلة = نقطتان؛ المحاولة = التسطيح؛ الملتحمة خلال 30 ثانية)، IFAB (سلطة الحكم من دخول الملعب؛ استبدال المطرود قبل الانطلاق؛ الحكام الرسميون) - النصوص المغربية: المذكرة الوزارية 074X21 (30 يونيو 2021) §6 — تقسيم الكوتيزاسيون (65/10/5/15/5) — عبر شرح mesconcours؛ نص المذكرة الكامل نفسه لم يُسترجع مباشرة من الويب (Q24 وQ74 وQ91 تحمل هذا التحفظ)', 'qcm', 'third_party', 'https://www.facebook.com/votreeps/posts/pfbid0TgihjutUr5P5xyGD3zu3vLmuTWDKR4r9GY9TKkVWo8QPw1qG6LjmWfAANMGybr91l', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
