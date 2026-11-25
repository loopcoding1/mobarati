-- ====================================================================
-- مباراتي — الرياضيات، مادة التخصص وديداكتيك الرياضيات، دورة يناير 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/الرياضيات - امتحان - دورة يناير 2018.md
--   (سجل الامتحانات رقم 17؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2018/الرياضيات - امتحان - دورة يناير 2018.pdf (4 صفحات).
--   ملف التصحيح الرسمي (في مساحة العمل): exams-ibtida2i/2018/تصحيح الرياضيات - دورة يناير 2018.pdf (3 صفحات).
--   مصدر ثان للمقارنة والتعليل: https://mesconcours.ma/ar/concours/enseignement/2018-1020/
--   (حل منشور يتبع التصحيح الرسمي مع حسابات مُتحقَّق منها).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q23 مطابق لورقة الامتحان؛ جميع الأسئلة مفتوحة (مكتوبة)،
--     لا توجد أسئلة اختيار من متعدد في هذا الجزء.
--   * الأجوبة مأخوذة من التصحيح الرسمي المرفق، ورُوجعت حسابياً واحداً واحداً.
--   * المدة (ساعتان = 120 دقيقة) والمعامل (2) من غلاف ورقة الامتحان (صفحة 1).
--   * ورقة الامتحان هي «اختبار في العلوم والرياضيات»؛ هذا الملف يغطي الجزء الخاص
--     بالرياضيات فقط (Q1–Q23)؛ جزء العلوم (Q24–Q45) يُعالج في ملف مستقل.
--
-- ترقيم الأسئلة (متواصل 1–23، مطابق لترقيم mesconcours.ma):
--   Q1–Q5 = مسألة 1 (الأسئلة 1–5)؛ Q6–Q9 = مسألة 2 (الأسئلة 1–4)؛
--   Q10–Q13 = مسألة 3 (الأسئلة 1–4)؛ Q14–Q23 = ديداكتيك مادة الرياضيات (الأسئلة 1–10).
--   لا توجد أسئلة مُتخطَّاة: جميع الأسئلة الـ23 مُدرَجة بأجوبة موثقة.
--
-- أخطاء مطبعية في المفتاح الرسمي صُححت (مع التنبيه في verification_note):
--   * Q4: المفتاح يكتب البسط 16313، والصواب 15313 (87²+88² = 7569+7744 = 15313).
--   * Q16 (ديداكتيك س3): المفتاح يكتب 384÷12=22m، والصواب 32m (الطريقة الأولى
--     نفسها في المفتاح تعطي 15+17=32m؛ وأكدته mesconcours.ma).
--   * Q1: برهان المفتاح للمتباينة المتعلقة بالجذر يفترض ضمنياً أن a و b موجبان.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2018_maths_jan
--   <exam_id>_q<n>  للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_maths_jan', 'specialty_primary', 2018, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018)', 'دورة يناير 2018', 120, 23)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (23 سؤالاً مفتوحاً)

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q1', 'exam_primary_2018_maths_jan', 1, 'الرياضيات', 'ليكن a و b عددين حقيقيين بحيث: a < b. بيّن أن a < (a+b)/2 < b و a < √((a²+b²)/2) < b.', false, '[]'::jsonb, ARRAY[]::text[], 'برهان بالمقارنة: (a+b)/2 − a = (b−a)/2 > 0 ⇒ (a+b)/2 > a ؛ (a+b)/2 − b = (a−b)/2 < 0 ⇒ (a+b)/2 < b ؛ (√((a²+b²)/2))² − a² = (b²−a²)/2 > 0 ⇒ √((a²+b²)/2) > a ؛ (√((a²+b²)/2))² − b² = (a²−b²)/2 < 0 ⇒ √((a²+b²)/2) < b. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'برهان المفتاح الرسمي للمتباينة المتعلقة بالجذر يفترض ضمنياً أن العددين a و b موجبان (الانتقال من مقارنة المربعات إلى مقارنة الجذور يتطلب ذلك)؛ وهو حال الأعداد المستعملة بعده (87/93 و 88/93).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q2', 'exam_primary_2018_maths_jan', 2, 'الرياضيات', 'هل يوجد عدد صحيح طبيعي محصور بين 87/93 و 88/93؟ (علل جوابك)', false, '[]'::jsonb, ARRAY[]::text[], 'لا يوجد أي عدد صحيح طبيعي محصور بين 87/93 و 88/93، لأن 0 < 87/93 < 1 و 0 < 88/93 < 1، ولا يوجد أي عدد صحيح طبيعي محصور قطعاً بين 0 و 1. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q3', 'exam_primary_2018_maths_jan', 3, 'الرياضيات', 'حدد عددا جذريا محصورا بين 87/93 و 88/93.', false, '[]'::jsonb, ARRAY[]::text[], '175/186: المعدل الحسابي للكسرين (87/93 + 88/93)/2 = (87+88)/186 = 175/186، وهو عدد جذري لأنه خارج عددين صحيحين، ومحصور قطعاً بين الكسرين. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q4', 'exam_primary_2018_maths_jan', 4, 'الرياضيات', 'حدد عددا حقيقيا غير جذري محصورا بين 87/93 و 88/93.', false, '[]'::jsonb, ARRAY[]::text[], '√((87²+88²)/(2×93²)) = √(15313/17298). حسب السؤال 1 يقع هذا الجذر بين 87/93 و 88/93، وهو غير جذري لأن الكسر في صيغته المختزلة ليس خارج مربعين كاملين (17298 ليس مربعاً كاملاً و15313 كذلك). الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'المفتاح الرسمي يكتب البسط 16313 خطأً، والصواب 15313 (87²+88² = 7569+7744 = 15313)؛ وقد نبهت إلى ذلك صفحة mesconcours.ma أيضاً. ولو أُخذ 16313 لخرج الجذر عن المجال.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q5', 'exam_primary_2018_maths_jan', 5, 'الرياضيات', 'أعط ثلاثة أعداد عشرية محصورة بين 4,12 و 4,13.', false, '[]'::jsonb, ARRAY[]::text[], 'مثلاً 4,121 و 4,122 و 4,123 (وكل عدد من 4,121 إلى 4,129): نكتب 4,12 = 4,120 و 4,13 = 4,130، فتظهر بينهما الأعداد العشرية ذات ثلاثة أرقام بعد الفاصلة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q6', 'exam_primary_2018_maths_jan', 6, 'الرياضيات', 'باستعمال ورق مقوى على شكل مستطيل عرضه 21cm وطوله 30cm تم صنع أسطوانتين قائمتين: الأسطوانة (A) ارتفاعها 21cm، والأسطوانة (B) ارتفاعها 30cm. ما هو محيط قاعدة الأسطوانة القائمة (A) بـ cm؟', false, '[]'::jsonb, ARRAY[]::text[], '30cm: الأسطوانة (A) ارتفاعها 21cm، أي أن عرض المستطيل صار ارتفاعاً وأن طوله 30cm التفّ ليكون محيط القاعدة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q7', 'exam_primary_2018_maths_jan', 7, 'الرياضيات', 'أحسب بوحدة dm³ حجم الأسطوانة (A). (محيط دائرة شعاعها R هو 2πR؛ مساحة دائرة شعاعها R هي πR²؛ حجم أسطوانة قائمة ارتفاعها h وشعاع قاعدتها R هو πR²h)', false, '[]'::jsonb, ARRAY[]::text[], 'V(A) = 4725/π cm³ ≈ 1504 cm³ = 1,504 dm³. من المحيط نستخرج الشعاع: R(A) = P/(2π) = 30/(2π) = 15/π ≈ 4,77cm. ثم V(A) = π·R(A)²·h = π×(15/π)²×21 = 4725/π cm³ ≈ 1504 cm³، وبما أن 1 dm³ = 1000 cm³ نجد حوالي 1,504 dm³. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q8', 'exam_primary_2018_maths_jan', 8, 'الرياضيات', 'ما هي الأسطوانة التي تحتوي على أكبر حجم؟ (الأسطوانة (A) ارتفاعها 21cm ومحيط قاعدتها 30cm؛ الأسطوانة (B) ارتفاعها 30cm ومحيط قاعدتها 21cm)', false, '[]'::jsonb, ARRAY[]::text[], 'الأسطوانة (A) هي أكبر حجماً من الأسطوانة (B). محيط قاعدة (B) هو 21cm فشعاعها R(B) = 21/(2π) وارتفاعها 30cm، وحجمها V(B) = π×(21/(2π))²×30 ≈ 1052,8 cm³ = 1,0528 dm³، وهو أصغر من حجم (A) (≈ 1504 cm³). الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q9', 'exam_primary_2018_maths_jan', 9, 'الرياضيات', 'قارن المساحة الجانبية للأسطوانة (A) والمساحة الجانبية للأسطوانة (B).', false, '[]'::jsonb, ARRAY[]::text[], 'لهما نفس المساحة الجانبية: 630 cm² لكل منهما. المساحة الجانبية هي جداء محيط القاعدة في الارتفاع، وهي مساحة الورقة المقواة نفسها (21×30 = 630 cm²)؛ ارتفاع إحداهما هو محيط قاعدة الأخرى، فالجداء واحد. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q10', 'exam_primary_2018_maths_jan', 10, 'الرياضيات', 'a و b عددان صحيحان طبيعيان. حل النظمة التالية: { a + b = 36 ؛ a − b = 4 }', false, '[]'::jsonb, ARRAY[]::text[], 'a = 20 و b = 16. بجمع المعادلتين: 2a = 40 إذن a = 20. وبطرحهما: 2b = 32 إذن b = 16. تحقق: 20+16 = 36 و 20−16 = 4. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q11', 'exam_primary_2018_maths_jan', 11, 'الرياضيات', 'أحسب √(a² − b²).', false, '[]'::jsonb, ARRAY[]::text[], '12. √(a²−b²) = √((a+b)(a−b)) = √(36×4) = √144 = 6×2 = 12. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q12', 'exam_primary_2018_maths_jan', 12, 'الرياضيات', 'فكك العدد 144 إلى جداء عددين صحيحين طبيعيين (أعط جميع الحالات الممكنة).', false, '[]'::jsonb, ARRAY[]::text[], '144 = 1×144 = 2×72 = 3×48 = 4×36 = 6×24 = 8×18 = 9×16 = 12×12. للعدد 144 خمسة عشر قاسماً، أي 7 أزواج من قاسمين مختلفين إضافة إلى 12×12. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q13', 'exam_primary_2018_maths_jan', 13, 'الرياضيات', 'حدد أطوال أضلاع مثلث قائم الزاوية في A بحيث يكون AB = 12 وقياس كل من AC و BC أعدادا صحيحة طبيعية.', false, '[]'::jsonb, ARRAY[]::text[], '(AC ; BC) = (35 ; 37) أو (16 ; 20) أو (9 ; 15) أو (5 ; 13). حسب مبرهنة فيثاغورس: BC² = AB² + AC² ⇔ BC² − AC² = 144 ⇔ (BC+AC)(BC−AC) = 144. العاملان من نفس الزوجية (مجموعهما 2BC زوجي) و BC−AC < BC+AC، فنأخذ الأزواج الزوجية: (72 ; 2) و (36 ; 4) و (24 ; 6) و (18 ; 8)، فنجد (BC ; AC) = (37 ; 35) و (20 ; 16) و (15 ; 9) و (13 ; 5). الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'الزوج (12 ; 12) يعطي AC = 0 فيُستبعد لأنه لا يصلح ضلعاً في مثلث.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q14', 'exam_primary_2018_maths_jan', 14, 'ديداكتيك الرياضيات', 'ما هو المستوى الدراسي المستهدف؟ (درس مأخوذ من كتاب مدرسي: الدرس 48، صفحة 134: «المسائل (8): تنويع طرائق الحل»)', false, '[]'::jsonb, ARRAY[]::text[], 'المستوى الخامس من التعليم الابتدائي. يعتمد الجواب على محتوى الدرس: الكسور البسيطة في الحساب الذهني، والتناسبية بمعامل وبخاصيات الخطية، ومسائل المساحة؛ هذه الموارد مجتمعة مقررة في المستوى الخامس. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q15', 'exam_primary_2018_maths_jan', 15, 'ديداكتيك الرياضيات', 'ما هي المكتسبات القبلية التي يجب على المتعلم التوفر عليها لإنجاز الأنشطة التمهيدية؟', false, '[]'::jsonb, ARRAY[]::text[], 'المكتسبات القبلية اللازم توفرها لإنجاز النشاط الأول هي: مفهوما الجمع والطرح. والمكتسبات القبلية اللازم توفرها لإنجاز النشاط الثاني هي: مفهوما المساحة والقسمة. النشاط الأول يحل بطرح متتال أو بطرح مجموع الخسارات، فيحتاج الجمع والطرح؛ والنشاط الثاني يطلب طولاً انطلاقاً من مساحة وعرض، فيحتاج صيغة مساحة المستطيل وعملية القسمة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q16', 'exam_primary_2018_maths_jan', 16, 'ديداكتيك الرياضيات', 'أعط حلا للنشاط 2.', false, '[]'::jsonb, ARRAY[]::text[], 'AC = 32m. الطريقة الأولى: 180÷12 = 15m ؛ 204÷12 = 17m ؛ 15+17 = 32m. الطريقة الثانية: 180+204 = 384m² ؛ 384÷12 = 32m. المستطيلان لهما نفس العرض 12m؛ يمكن حساب طول كل جزء ثم الجمع، أو جمع المساحتين أولاً ثم القسمة مرة واحدة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'المفتاح الرسمي يكتب في الطريقة الثانية 384÷12=22m خطأً، والصواب 32m؛ وهو ما تعطيه الطريقة الأولى نفسها في المفتاح (15+17=32m)، وما أكدته صفحة mesconcours.ma.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q17', 'exam_primary_2018_maths_jan', 17, 'ديداكتيك الرياضيات', 'اقترح مدة زمنية تراها مناسبة لإنجاز هذه الأنشطة معللا جوابك.', false, '[]'::jsonb, ARRAY[]::text[], 'حصة واحدة من 45 دقيقة تقريباً. طبقاً للتوجيهات التربوية، يمكن تخصيص حصة من 45 دقيقة لحصة الرياضيات بالابتدائي، مع توزيع الوقت بين الحساب الذهني والأنشطة التمهيدية والمسألة المرفقة بحل. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'اقتراح معلل؛ يقبل كل اقتراح معقول معلل بعدد الأنشطة ودرجة صعوبتها وإيقاع المتعلمين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q18', 'exam_primary_2018_maths_jan', 18, 'ديداكتيك الرياضيات', 'ما هي الصعوبات والعوائق المرتقبة عند تدبير المسألة؟', false, '[]'::jsonb, ARRAY[]::text[], 'من بين الصعوبات والعوائق: عدم التمكن من مفهوم التناسبية — الانتقال في جدول التناسب من الأسطر إلى الأعمدة. المسألة المرفقة بحل تعرض طريقتين: معامل التناسب (الانتقال من سطر إلى سطر) وخاصيات الخطية (الانتقال من عمود إلى عمود)؛ والطريقة الثانية أصعب لأنها تتطلب رؤية العلاقات بين الأعداد 12 و3 و6 و9. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q19', 'exam_primary_2018_maths_jan', 19, 'ديداكتيك الرياضيات', 'ما هي المعارف الأساسية التي تهدف إليها الأنشطة التمهيدية؟', false, '[]'::jsonb, ARRAY[]::text[], 'المعارف الأساسية: التجميعية — التوزيعية. النشاطان مبنيان على مقارنة طريقتين تعطيان النتيجة نفسها؛ ما يجعل الطريقتين متكافئتين هو خاصية التجميعية في النشاط الأول (طرح مجموع: 58 − (9+13+15)) وخاصية التوزيعية في الثاني (توزيع القسمة على الجمع)، وهذا هو الهدف المعرفي الذي يمهد لتنويع طرائق الحل. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q20', 'exam_primary_2018_maths_jan', 20, 'ديداكتيك الرياضيات', 'أذكر خطأ يمكن أن يرتكبه التلميذ عند الإجابة عن النشاط 2، وما هو في نظرك مصدر هذا الخطأ؟', false, '[]'::jsonb, ARRAY[]::text[], 'من بين الأخطاء الممكن ارتكابها نجد ربط الطول بوحدة المساحة (كتابة 32m² بدل 32m). وهذا مصدره المكتسبات السابقة (غير المستقرة حول التمييز بين الطول والمساحة ووحداتهما). الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'خطأ ممكن واحد من بين أخطاء معقولة أخرى؛ يقبل كل خطأ معقول مرتبط بالنشاط إذا كان مصدره مبرراً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q21', 'exam_primary_2018_maths_jan', 21, 'ديداكتيك الرياضيات', 'أعط نشاطا، مع تعليل اختيارك، يهدف إلى تقويم تعلمات التلاميذ لتجاوز الخطأ المرتكب.', false, '[]'::jsonb, ARRAY[]::text[], 'لتجاوز هذا الخطأ يمكن التذكير بوحدات قياس الأطوال والمساحة في وضعيات مختلفة. مثلاً: حديقة مستطيلة مساحتها 96m² وعرضها 8m؛ أحسب طولها ومحيطها، واكتب الوحدة المناسبة لكل نتيجة. التعليل: النشاط يضع الطول والمساحة في الوضعية نفسها فيلزم التلميذ بالتمييز بين الوحدتين. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'نشاط علاجي مقترح؛ يقبل كل نشاط علاجي مرتبط مباشرة بالخطأ المذكور في السؤال 7.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q22', 'exam_primary_2018_maths_jan', 22, 'ديداكتيك الرياضيات', 'ما هو موقع الدرس في البرنامج الدراسي؟ (علل جوابك)', false, '[]'::jsonb, ARRAY[]::text[], 'الدرس 48 هو الدرس الأخير من البرنامج الدراسي، لأن عدد دروس البرنامج الدراسي لمادة الرياضيات هو 48 في جميع مستويات سلك الابتدائي. رقم الدرس الظاهر في الصفحة (48) يكفي للجواب؛ وموقعه في آخر السنة منسجم مع طبيعته: درس مسائل يعيد استثمار موارد السنة (العمليات، المساحة، التناسبية) بطرائق حل متنوعة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص وديداكتيك الرياضيات (دورة يناير 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_maths_jan_q23', 'exam_primary_2018_maths_jan', 23, 'ديداكتيك الرياضيات', 'تم اقتراح في فقرة الحساب الذهني الملاحظة التالية: 14 − 1/2 = ((14×2)−1)/2 = (28−1)/2 = 27/2. ويمكن حساب 14 − 1/2 بطريقة أخرى: 14 − 1/2 = 14 − 0,5 = 13,5. لماذا في نظرك تم تجنب الطريقة الثانية؟ (علل جوابك)', false, '[]'::jsonb, ARRAY[]::text[], 'لأن العدد الكسري ليس بالضرورة عددا عشريا (مثلاً 1/3 ليس عددا عشريا). تمارين الحساب الذهني تتضمن 1/3 و 1/4 و 1/10؛ التحويل إلى عدد عشري لا ينجح مع 1/3، بينما توحيد المقامات يعمل دائماً، لذلك تم تعميم الطريقة التي لا تتوقف. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
