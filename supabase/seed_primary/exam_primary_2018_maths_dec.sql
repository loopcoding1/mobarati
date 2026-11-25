-- ====================================================================
-- مباراتي — امتحان ابتدائي: الرياضيات، دورة دجنبر 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/الرياضيات - امتحان.md
--   (سجل الامتحانات رقم 15؛ الحل من المفتاح الرسمي، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2018/الرياضيات - امتحان.pdf (6 صفحات، ممسوح ضوئيا).
--   ملف التصحيح الرسمي في مساحة العمل: exams-ibtida2i/2018/تصحيح الرياضيات.pdf
--   (4 صفحات؛ صفحتا مفتاح الرياضيات هما 3 و4 — الصفحتان 1 و2 مفتاح العلوم
--   من الورقة نفسها «اختبار في العلوم والرياضيات»).
--   مصدر منشور مؤكد: مدونة جريدة التربية تنشر الموضوع وعناصر الإجابة نفسيهما:
--   https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q16 مطابق لورقة الامتحان؛ الأجوبة من المفتاح الرسمي.
--   * Q1-Q3: QCM بأربعة اختيارات a-d (وضع علامة × في الخانة المناسبة).
--   * Q4-Q16: أسئلة مفتوحة (أجوبة مكتوبة)؛ الجواب المتوقع في حقل explanation.
--   * الترقيم: Q1=التمرين الأول، Q2=الثاني، Q3=الثالث، Q4-Q7=الرابع (1أ،1ب،1ج،2)،
--     Q8-Q10=الخامس (1،2،3)، Q11=ديداكتيك (I)، Q12=(II)، Q13=(III)،
--     Q14-Q16=ديداكتيك (IV) (1،2،3).
--   * لا أسئلة محذوفة: 16 سؤالاً مدرجة كاملة.
--   * (IV)(1): القيمة المعطاة في الجدول هي 40 دقيقة لمسافة 60 كلم (وليس 48 كلم)؛
--     لذلك 48 كلم ← 32 دقيقة، و360 كلم ← 4 ساعات — مطابق للمفتاح الرسمي.
--   * Q9: المفتاح يكتفي بالمساواة OA=OB=OC=OD؛ القيمة 2√2 cm مشتقة بالحساب.
--   * Q13 وQ15 وQ16: المفتاح يعطي معيار القبول فقط دون محتوى محدد؛
--     الأجوبة المقدمة نماذج مقترحة ملائمة (موسومة في verification_note).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2018_maths_dec
--   <exam_id>_q<n>  للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_maths_dec', 'specialty_primary', 2018, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة دجنبر 2018)', 'دورة دجنبر 2018', 90, 16)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (16 سؤالاً: Q1-Q3 QCM بأربعة اختيارات a-d، وQ4-Q16 مفتوحة)

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q1', 'exam_primary_2018_maths_dec', 1, 'الرياضيات', 'احسب: A = (2/5 + 1/4) × 2/13', false, '[{"id": "a", "text": "A = 1/5"}, {"id": "b", "text": "A = 1/10"}, {"id": "c", "text": "A = 1/20"}, {"id": "d", "text": "A = 13/40"}]'::jsonb, ARRAY['b']::text[], '2/5 + 1/4 = 8/20 + 5/20 = 13/20، ثم 13/20 × 2/13 = 26/260 = 1/10.', 'qcm', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q2', 'exam_primary_2018_maths_dec', 2, 'الرياضيات', 'نسبة نجاح تلاميذ في امتحان الشهادة الابتدائية بإحدى المؤسسات التعليمية هو 90%. علما أن عدد المترشحين في هذا الامتحان هو 300، فإن عدد الراسبين هو:', false, '[{"id": "a", "text": "15"}, {"id": "b", "text": "20"}, {"id": "c", "text": "25"}, {"id": "d", "text": "30"}]'::jsonb, ARRAY['d']::text[], 'نسبة الرسوب = 100% − 90% = 10%، وعدد الراسبين = 10% من 300 = 30 تلميذا.', 'qcm', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q3', 'exam_primary_2018_maths_dec', 3, 'الرياضيات', 'قطر الدائرة الموجودة في وسط ملعب لكرة القدم هو 20m. باعتبار أن قيمة تقريبية للعدد π هي 3.14، فإن مساحة الدائرة الموجودة في وسط الملعب S بـ m² هي:', false, '[{"id": "a", "text": "S = 312"}, {"id": "b", "text": "S = 314"}, {"id": "c", "text": "S = 316"}, {"id": "d", "text": "S = 341"}]'::jsonb, ARRAY['b']::text[], 'نصف القطر r = 20 ÷ 2 = 10m، والمساحة S = π × r² = 3.14 × 100 = 314 m².', 'qcm', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q4', 'exam_primary_2018_maths_dec', 4, 'الرياضيات', 'ليكن a عددا حقيقيا غير منعدم. احسب مع التبسيط (إن أمكن): A = (2/a)(a + 1/2) − 1/a', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: A = 2. التعليل: (2/a)(a + 1/2) = 2 + 1/a، إذن A = 2 + 1/a − 1/a = 2.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q5', 'exam_primary_2018_maths_dec', 5, 'الرياضيات', 'ليكن a عددا حقيقيا غير منعدم. احسب مع التبسيط (إن أمكن): B = (a+1)² − (a−1)²', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: B = 4a. التعليل: (a+1)² = a² + 2a + 1 و(a−1)² = a² − 2a + 1، إذن B = 4a.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q6', 'exam_primary_2018_maths_dec', 6, 'الرياضيات', 'ليكن a عددا حقيقيا غير منعدم. احسب مع التبسيط (إن أمكن): C = (a⁶ × (a³)⁻¹) / (a⁻¹ × a⁴)', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: C = 1. التعليل: البسط a⁶ × a⁻³ = a³، والمقام a⁻¹ × a⁴ = a³، إذن C = a³/a³ = 1 (لأن a غير منعدم).', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q7', 'exam_primary_2018_maths_dec', 7, 'الرياضيات', 'احسب: D = √((2026)² − (2024)²)', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: D = 90. التعليل: (2026)² − (2024)² = (2026−2024)(2026+2024) = 2 × 4050 = 8100، إذن D = √8100 = 90.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q8', 'exam_primary_2018_maths_dec', 8, 'الرياضيات', 'ABCD مربع مركزه O طول حرفه 4cm. النقط E وF وG وH هي على التوالي منتصفات القطع [OA] و[OB] و[OC] و[OD]. حدد محاور تماثل المربع ABCD.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: محاور تماثل المربع ABCD هي المستقيمات (AC) و(BD) وواسطا القطعتين [AB] و[AD] (أربعة محاور: مستقيما القطرين ومستقيما واسطي ضلعين متقابلين).', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q9', 'exam_primary_2018_maths_dec', 9, 'الرياضيات', 'ABCD مربع مركزه O طول حرفه 4cm. حدد مسافة كل من النقطتين A وB بالنسبة للنقطة O.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: مسافة النقطة A بالنسبة للنقطة O هي مسافة النقطة C، وهي مسافة النقطة B بالنسبة للنقطة O، وهي مسافة النقطة D — أي OA = OB = OC = OD. والقيمة العددية المشتقة: قطر المربع AC = √(4²+4²) = 4√2 cm، إذن OA = OB = 2√2 cm.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, 'المفتاح الرسمي يكتفي بالمساواة OA = OB = OC = OD دون إعطاء القيمة العددية؛ القيمة 2√2 cm مشتقة بالحساب.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q10', 'exam_primary_2018_maths_dec', 10, 'الرياضيات', 'ABCD مربع مركزه O طول حرفه 4cm. النقط E وF وG وH هي على التوالي منتصفات القطع [OA] و[OB] و[OC] و[OD]. احسب بـ cm² مساحة الرباعي EFGH.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: مساحة الرباعي EFGH هي 4cm². التعليل: E وF منتصفا [OA] و[OB]، ففي المثلث OAB تكون EF موازية لـ AB وEF = AB ÷ 2 = 2cm (مبرهنة المنتصفين)؛ وبالمثل جميع أضلاع EFGH تساوي 2cm، وهو مربع، إذن مساحته = 2 × 2 = 4cm².', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q11', 'exam_primary_2018_maths_dec', 11, 'ديداكتيك الرياضيات', 'اذكر كفايتين لمفهوم العدد الكسري يستهدفها برنامج وحدة الرياضيات بالسنة السادسة الابتدائية.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي (أي كفايتين من القائمة، 0.75 ن لكل كفاية): التعبير عن عدد كسري بكتابات كسرية مختلفة؛ اختزال عدد كسري وتوحيد مقامي عددين كسريين في حالات بسيطة؛ مقارنة وترتيب أعداد كسرية؛ التمكن من التقنيات الاعتيادية للجمع والطرح والضرب على الأعداد الكسرية؛ تقريب عدد كسري غير عشري.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q12', 'exam_primary_2018_maths_dec', 12, 'ديداكتيك الرياضيات', 'حدد هدفين لمفهوم تساوي عددين كسريين بالسنة السادسة الابتدائية.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي (أي هدفين من القائمة، 0.75 ن لكل هدف): التعبير بأعداد كسرية عن وضعيات مختلفة للتعلم؛ الانتقال من كتابة كسرية إلى كتابة كسرية أخرى لنفس العدد الكسري؛ الانتقال من الكتابة العشرية إلى الكتابة الكسرية لعدد أو العكس.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q13', 'exam_primary_2018_maths_dec', 13, 'ديداكتيك الرياضيات', 'أعط نشاطا تقويميا على شكل تمرين تطبيقي بالسنة السادسة الابتدائية يستهدف تعرف المتعلمين (المتعلمات) على تساوي عددين كسريين.', false, '[]'::jsonb, ARRAY[]::text[], 'المفتاح الرسمي يقبل أي نشاط تقويمي ملائم. نموذج مقترح: ضع العلامة المناسبة (= أو ≠) في كل حالة مع تعليل جوابك: 1/2 ... 2/4 ؛ 3/4 ... 6/8 ؛ 2/3 ... 3/5 ؛ ثم أوجد كتابة كسرية أخرى مساوية للعدد الكسري 3/5.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, 'المفتاح الرسمي يعطي معيار القبول فقط («نشاطا تقويميا ملائما») دون محتوى محدد؛ النشاط المقدم نموذج مقترح وليس منقولا عن المفتاح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q14', 'exam_primary_2018_maths_dec', 14, 'ديداكتيك الرياضيات', 'سافر سائق بسيارته من مدينة A نحو مدينة B. بيّن الجدول التالي العلاقة بين المسافة (بالكيلومترات) التي قطعها هذا السائق والوقت المستغرق لقطعها (بالدقائق): المسافة بالكلم: 48، 60، 90، 120 — والوقت المستغرق بالدقائق: (فارغ)، 40، (فارغ)، (فارغ). أ) أتمم ملأ الجدول السابق علما أن السرعة المتوسطة لهذا السائق ثابتة. ب) حدد بالساعات الوقت الذي سيستغرقه هذا السائق إذا كان عليه قطع مسافة 360 Km.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: الجدول المكتمل: 48 كلم ← 32 دقيقة، 60 كلم ← 40 دقيقة، 90 كلم ← 60 دقيقة، 120 كلم ← 80 دقيقة. والوقت اللازم لقطع 360 Km هو 4 ساعات. التعليل: السرعة ثابتة: 60 كلم في 40 دقيقة، أي معامل التناسب 40 ÷ 60 = 2/3 دقيقة لكل كيلومتر؛ إذن 48 × 2/3 = 32، و90 × 2/3 = 60، و120 × 2/3 = 80، و360 × 2/3 = 240 دقيقة = 4 ساعات.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, 'القيمة المعطاة في الجدول هي 40 دقيقة لمسافة 60 كلم (تحقق منها في ورقة الامتحان)؛ المفتاح يؤكد 48 كلم ← 32 دقيقة و360 كلم ← 4 ساعات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q15', 'exam_primary_2018_maths_dec', 15, 'ديداكتيك الرياضيات', 'حدد ثلاث مكتسبات قبلية لإنجاز هذا النشاط مع ذكر سبل التأكد من تحكم المتعلمين (المتعلمات) في هذه المكتسبات.', false, '[]'::jsonb, ARRAY[]::text[], 'المفتاح الرسمي يقبل أي ثلاث مكتسبات قبلية ملائمة (0.25 ن لكل مكتسب). نموذج مقترح: 1) مفهوم التناسبية ومعامل التناسب — التأكد: تمرين قصير يطلب إكمال جدول تناسبية بسيط. 2) العمليات على الأعداد وتحويل الوحدات (الضرب والقسمة، وتحويل الدقائق إلى ساعات) — التأكد: أسئلة كتابية/شفوية قصيرة. 3) قراءة جدول ذي مدخلين واستغلال معطياته — التأكد: تمرين يطلب استخراج معلومة من جدول معطى.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, 'المفتاح الرسمي يعطي معيار القبول فقط («ثلاث مكتسبات قبلية») دون محتوى محدد؛ المكتسبات المقدمة نموذج مقترح وليس منقولا عن المفتاح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة دجنبر 2018 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_dec_q16', 'exam_primary_2018_maths_dec', 16, 'ديداكتيك الرياضيات', 'اذكر بعض الصعوبات التي قد تعترض المتعلم (ة) وسبل تجاوزها.', false, '[]'::jsonb, ARRAY[]::text[], 'المفتاح الرسمي يقبل أي صعوبات ملائمة مع سبل تجاوزها. نموذج مقترح: صعوبة فهم التناسبية والخلط بين العلاقة الجمعية والعلاقة الضربية — التجاوز: التذكير بأن السرعة ثابتة واللجوء إلى معامل التناسب وتمثيلات بصرية؛ صعوبة تحويل الدقائق إلى ساعات (240 دقيقة = 4 ساعات) — التجاوز: تدريب على التحويل بالقسمة على 60؛ صعوبة قراءة الجدول وتحديد الخانة المناسبة — التجاوز: تدريب على قراءة الجداول وتسطير المعطيات قبل الحساب.', 'open', 'official', 'https://jarida-tarbiya.blogspot.com/2018/12/math-primaire-contrat-dec-2018.html', true, 'المفتاح الرسمي يعطي معيار القبول فقط («بعض الصعوبات وسبل تجاوزها») دون محتوى محدد؛ الصعوبات المقدمة نموذج مقترح وليس منقولا عن المفتاح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
