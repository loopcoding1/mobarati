-- ====================================================================
-- مباراتي — الرياضيات، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- خيارات أسئلة الاختيار المتعدد في هذه المادة بلا حروف في الورقة (خانات اختيار فقط)؛
--   تُرقَّم الخيارات 1–4 حسب ترتيب ظهورها في الورقة.
-- ترقيم المفتاح: المفتاح يرقّم حساب المعدل «تمرين 10» بينما الورقة تضعها ضمن «تمرين 9 (2)»؛
--   اتُّبع ترقيم المفتاح: T9 = رسم المبيان، T10 = حساب المعدل.
-- ⚠️ تعارضات مع المفتاح (الجواب المسجَّل هو جواب المفتاح الرسمي، مع التحفظ في verification_note):
--   T3: المفتاح 8 (الصف 8)؛ الحساب الصحيح يعطي الصف 9 (18 مقعداً/صف؛ 157÷18=8,72).
--   T7: المفتاح 75°؛ علامات التساوي كما هي مطبوعة تعطي 37,5° (ليست من الخيارات) —
--       جواب المفتاح يتطلب NP=MP، أي أن إحدى علامات التساوي خطأ طباعي.
--   T8: المفتاح «7DH و 8DH»؛ حل المعادلتين يعطي موز 8DH وإجاص 7DH (تبديل القيمتين).
-- T4 و T9 و T10 أسئلة مفتوحة (إنشاء/رسم/حساب) — options فارغة و correct_answers فارغة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_maths_nov', 'specialty_primary', 2020, 'maths', 'الرياضيات', 'امتحان الرياضيات (دورة نونبر 2020)', 'دورة نونبر 2020', 240, 10)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (10 سؤالاً)

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q1', 'exam_primary_2020_maths_nov', 1, 'الأعداد والحساب', 'نعتبر العددين A = (4/3 + 1/2)/(1/3 − 1/4)، و B = 1/12، لدينا:', false, '[{"id": "1", "text": "A×B = 2"}, {"id": "2", "text": "A×B = 1"}, {"id": "3", "text": "A×B = 11/6"}, {"id": "4", "text": "A×B = −2"}]'::jsonb, ARRAY['3']::text[], 'A = (11/6) ÷ (1/12) = 22؛ وB = 1/12؛ إذن A×B = 22 × 1/12 = 11/6. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q2', 'exam_primary_2020_maths_nov', 2, 'الأعداد والحساب', 'نضع 600 = 2^n × 3 × 5²، لدينا:', false, '[{"id": "1", "text": "n = 4"}, {"id": "2", "text": "n = 5"}, {"id": "3", "text": "n = 3"}, {"id": "4", "text": "n = 6"}]'::jsonb, ARRAY['3']::text[], '600 = 2³ × 3 × 5² (600 = 8 × 75). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q3', 'exam_primary_2020_maths_nov', 3, 'الأعداد والحساب', 'يسع مدرج 396 مقعداً مرقماً بالترتيب التزايدي. المقاعد موزعة على 22 صفاً، المقعد رقم 157 يقع في الصف رقم:', false, '[{"id": "1", "text": "6"}, {"id": "2", "text": "7"}, {"id": "3", "text": "8"}, {"id": "4", "text": "9"}]'::jsonb, ARRAY['3']::text[], 'الجواب من المفتاح الرسمي (الصف 8).', 'qcm', 'official', NULL, true, '⚠️ تعارض: الحساب الصحيح يعطي الصف 9 (18 مقعداً في الصف؛ الصفوف 1–8 تضم المقاعد 1–144؛ المقعد 157 يقع في الصف 9؛ 157÷18 = 8,72). المفتاح يبدو أنه أخذ الجزء الصحيح من القسمة (خطأ off-by-one).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q4', 'exam_primary_2020_maths_nov', 4, 'الهندسة', 'ABC مثلث. أنشئ المستقيم المار من النقطة A والموازي لارتفاع المثلث ABC الناشئ من النقطة B.', false, '[]'::jsonb, ARRAY[]::text[], 'إنشاء صحيح (المفتاح: «شكل صحيح») — يُرسم الارتفاع من B على الضلع AC، ثم المستقيم المار من A والموازي له.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q5', 'exam_primary_2020_maths_nov', 5, 'الهندسة', 'الشكل أسفله نشر لمجسم (مربع + 4 مثلثات على أضلاعه): هذا المجسم هو:', false, '[{"id": "1", "text": "موشور قائم"}, {"id": "2", "text": "هرم قاعدته مستطيل"}, {"id": "3", "text": "هرم قاعدته مربع"}, {"id": "4", "text": "رباعي أوجه"}]'::jsonb, ARRAY['3']::text[], 'نشر مربع تحيط به 4 مثلثات هو نشر هرم رباعي قاعدته مربع. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q6', 'exam_primary_2020_maths_nov', 6, 'الهندسة', 'نعتبر مثلثاً قائم الزاوية (انظر الشكل). دوران المثلث بربع دورة في اتجاه عقارب الساعة هو:', false, '[{"id": "1", "text": "الشكل 1"}, {"id": "2", "text": "الشكل 2"}, {"id": "3", "text": "الشكل 3"}, {"id": "4", "text": "الشكل 4"}]'::jsonb, ARRAY['1']::text[], 'المثلث الأصلي قائم الزاوية في أسفله الأيسر، ضلعه القصير عمودي على اليسار وضلعه الطويل أفقي في الأسفل؛ بعد دوران 90° باتجاه عقارب الساعة تصبح الزاوية القائمة في الأعلى الأيسر، والضلع القصير في الأعلى والضلع الطويل على اليسار — وهو الشكل 1. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q7', 'exam_primary_2020_maths_nov', 7, 'الهندسة', 'باستعمال المعطيات الواردة في الشكل أسفله، قياس الزاوية PMQ هو: (مثلث MNQ، والنقطة P على NQ؛ الزاوية عند N تساوي 35°؛ علامات التساوي في الشكل: NM = NP = MQ بعلامة واحدة، وMP بعلامتين.)', false, '[{"id": "1", "text": "105°"}, {"id": "2", "text": "90°"}, {"id": "3", "text": "60°"}, {"id": "4", "text": "75°"}]'::jsonb, ARRAY['4']::text[], 'الجواب من المفتاح الرسمي (75°).', 'qcm', 'official', NULL, true, '⚠️ تعارض: علامات التساوي كما هي مطبوعة تعطي PMQ = 37,5° (NM=MQ ← الزاوية NMQ = 110°؛ NM=NP ← الزاوية NMP = 72,5°؛ إذن PMQ = 110 − 72,5 = 37,5°، وهي ليست من الخيارات). جواب المفتاح (75°) يتطلب NP=MP (الزاوية NMP = 35°)، أي أن إحدى علامات التساوي في الشكل خطأ طباعي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q8', 'exam_primary_2020_maths_nov', 8, 'الأعداد والحساب', 'اشترى علي 5kg من الموز و 3kg من الإجاص بثمن 61DH، واشترى أحمد 4kg من الموز و 6kg من الإجاص بثمن 74DH. ثمن 1kg من الموز و 1kg من الإجاص على التوالي هما:', false, '[{"id": "1", "text": "7DH و 8DH"}, {"id": "2", "text": "6DH و 8DH"}, {"id": "3", "text": "8DH و 7DH"}, {"id": "4", "text": "8DH و 6DH"}]'::jsonb, ARRAY['1']::text[], 'الجواب من المفتاح الرسمي (7DH و 8DH).', 'qcm', 'official', NULL, true, '⚠️ تعارض: حلّ النظام 5x+3y=61 و4x+6y=74 يعطي ثمن الموز 8DH وثمن الإجاص 7DH (البديل 3 «8DH و 7DH»)؛ فالمفتاح يبدو أنه بدّل القيمتين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q9', 'exam_primary_2020_maths_nov', 9, 'تنظيم ومعالجة البيانات', 'سجلت السلطات الصحية بجهة الرباط سلا القنيطرة من 21 إلى 27 أكتوبر 2020 عدداً من الإصابات بجائحة كوفيد 19. الجدول التالي يحدد النتائج المسجلة: (اليوم 21 ← 379، 22 ← 496، 23 ← 500، 24 ← 470، 25 ← 726، 26 ← 325، 27 ← 587). (1) حوّل معطيات الجدول إلى مبيان بخط منكسر.', false, '[]'::jsonb, ARRAY[]::text[], 'مخطط منكسر صحيح — تمثيل النقط (21، 379)، (22، 496)، (23، 500)، (24، 470)، (25، 726)، (26، 325)، (27، 587) وربطها بخط منكسر. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الرياضيات (دورة نونبر 2020) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_maths_nov_q10', 'exam_primary_2020_maths_nov', 10, 'تنظيم ومعالجة البيانات', '(2) احسب معدل انتشار الوباء بهذه الجهة خلال الأسبوع المحدد.', false, '[]'::jsonb, ARRAY[]::text[], 'معدل انتشار الوباء = (379+496+500+470+726+325+587) ÷ 7 = 3483 ÷ 7 = 497,5 إصابة في اليوم. (المفتاح الرسمي؛ المفتاح يرقّم هذا التمرين 10.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
