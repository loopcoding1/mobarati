-- ====================================================================
-- مباراتي — اللغة العربية، مادة التخصص، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/اللغة العربية - مادة التخصص - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/اللغة العربية - مادة التخصص.pdf (10 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   النص: دور المدرسة في تنمية السلوك المدني، من رأي للمجلس الأعلى للتعليم.
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q30 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد النحو والصرف ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التحليلية/الفهمية (Q2، Q5، Q8، Q16، Q19) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل (فقرات التعليل الطويلة في Q12 وQ18
--     جُمعت بفاصل مسافة واحدة بدلاً من سطر جديد، دون تغيير أي كلمة).
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (60 دقيقة) والمعامل (6) من غلاف ورقة الامتحان نفسها (الصفحة 1/11).
--     لا يوجد عمود للمعامل في جدول exams، فسُجّلت المدة فقط (duration_minutes=60).
--   * الغلاف يرقّم الصفحات إلى 11، بينما ملف PDF فيه 10 صفحات فقط؛ الصفحة
--     المفقودة (11/11) هي ورقة الإجابة (Feuille de réponse) وليست صفحة أسئلة —
--     الأسئلة الثلاثون كلها موجودة (Q29 وQ30 في الصفحة 10/11).
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (نجوم وتشطيبات) — أُهملت تماماً.
--   * Q12 ملتبس: الجواب المقصود B، لكن C صحيح أيضاً نحوياً (نكرة مقصودة)؛
--     أُدرج B مع التنبيه في verification_note.
--   * Q18: «مفاتح» جمع صحيح أيضاً لمفرد «مَفْتَح» في الفصحى، مع أن الجواب
--     المقصود هو C (عناكب)؛ التنبيه في verification_note.
--   * لا أسئلة محذوفة: أُدرجت الأسئلة الثلاثون كلها (Q1–Q30).
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر) أو oct (دورة أكتوبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_arabic_oct', 'specialty_primary', 2024, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q1', 'exam_primary_2024_arabic_oct', 1, 'الإملاء — ألف ابن', 'الجملة التي كتبت فيها كلمة "ابن" بطريقة صحيحة هي:', false, '[{"id": "A", "text": "ابن مصطفى عضو في نادي حقوق الطفل بمدرستنا."}, {"id": "B", "text": "هذا رشيد ابن خالد معني بخدمة الوطن."}, {"id": "C", "text": "يا ابن علي احترم زميلاتك وزملاءك."}, {"id": "D", "text": "أ ابن أخيك من كتب في التربية على قيم المواطنة وحقوق الطفل؟"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تثبت ألف "ابن" في بداية الجملة كما في (A)، بينما تُحذف وجوباً إذا وقعت بين علمين ثانيهما أب للأول (الصواب في B: رشيد بن خالد)، أو بعد أداة النداء "يا" (الصواب في C: يا بن علي)، أو بعد همزة الاستفهام (الصواب في D: أبن أخيك).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q2', 'exam_primary_2024_arabic_oct', 2, 'فهم النص — مجال النص', 'يندرج هذا النص في مجال:', false, '[{"id": "A", "text": "وسائل الاتصال والتواصل"}, {"id": "B", "text": "المواطنة والسلوك المدني"}, {"id": "C", "text": "الحياة الثقافية والفنية"}, {"id": "D", "text": "تحديات العالم المعاصر"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يتمحور النص بكامله حول دور المدرسة في تنمية السلوك المدني وترسيخ قيم المواطنة، وهو مجال صريح ومعتمد في منهاج اللغة العربية بالتعليم الابتدائي (المستوى السادس).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال تحليلي مرتبط بفهم النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q3', 'exam_primary_2024_arabic_oct', 3, 'النحو — إعراب الجمل', '"الدينامية التي ما فتئ يحركها إصلاح منظومة التربية والتكوين..."، جملة "يحركها إصلاح منظومة" تعرب:', false, '[{"id": "A", "text": "مفعولا به"}, {"id": "B", "text": "فاعلا"}, {"id": "C", "text": "نعتا"}, {"id": "D", "text": "بدلا"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الفعل "ما فتئ" من أخوات "كان" (فعل ماضٍ ناقص ناسخ ملازم للنقصان)، والجملة الفعلية "يحركها إصلاح منظومة..." تقع في محل نصب خبر "ما فتئ" (وليست مفعولاً به ولا فاعلاً ولا نعتاً ولا بدلاً)، وبما أن الإعراب الصحيح غير وارد في الخيارات الأربعة الأولى، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q4', 'exam_primary_2024_arabic_oct', 4, 'الصرف — الميزان الصرفي', '"... في إطار السهر الدائم على اضطلاع المؤسسات ..."، الوزن الصرفي لكلمة "اضطلاع" هو:', false, '[{"id": "A", "text": "انفعال"}, {"id": "B", "text": "افعلال"}, {"id": "C", "text": "افتعال"}, {"id": "D", "text": "اتفعال"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], '"اضطلاع" مصدر الفعل "اضطلع" من الجذر الثلاثي (ض ل ع)، وأصلها "اضتِلاع" على وزن افتعال؛ حيث أُبدلت تاء الافتعال طاءً لتناسب حرف الإطباق (الضاد) قبلها، ويبقى الميزان الصرفي على الأصل دون تغيير: افتعال.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q5', 'exam_primary_2024_arabic_oct', 5, 'أنواع النصوص', 'النص عبارة عن:', false, '[{"id": "A", "text": "نص توجيهي."}, {"id": "B", "text": "نص إخباري."}, {"id": "C", "text": "نص وصفي."}, {"id": "D", "text": "نص حجاجي."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'النص مقتطف من "رأي" للمجلس الأعلى للتعليم يدافع فيه عن أطروحة مركزية دور المدرسة وحسمه في تنمية السلوك المدني، موظفاً بنية حجاجية وروابط منطقية واستدلالية واضحة من قبيل: (غير أن، ويتأكد، باعتبار، ذلك أن، اعتباراً لذلك).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال تحليلي مرتبط بفهم النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q6', 'exam_primary_2024_arabic_oct', 6, 'الصرف — الاسم المشتق', 'الاسم المشتق في ما يأتي هو:', false, '[{"id": "A", "text": "قراءة"}, {"id": "B", "text": "عِلْم"}, {"id": "C", "text": "سَقْف"}, {"id": "D", "text": "مُجتمع"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'كلمة مُجتمع اسم مكان (أو اسم مفعول) مشتق من الفعل غير الثلاثي "اجتمع" (على وزن مضارعه بإبدال حرف المضارعة ميماً مضمومة وفتح ما قبل الآخر)، أما "قراءة" و"عِلْم" و"سَقْف" فأسماء جامدة (مصادر/أسماء ذات).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q7', 'exam_primary_2024_arabic_oct', 7, 'الإملاء — التاء المربوطة والمبسوطة', 'الكلمة المكتوبة بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "اللامبالات"}, {"id": "B", "text": "المُباريات"}, {"id": "C", "text": "المعانات"}, {"id": "D", "text": "المغالات"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'المُباريات جمع مؤنث سالم لمفرد "مباراة" فتُكتب بالتاء المبسوطة، أما بقية الكلمات فهي مصادر مفردة مؤنثة الصواب فيها التاء المربوطة: (اللامبالاة، المعاناة، المغالاة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q8', 'exam_primary_2024_arabic_oct', 8, 'فهم النص — الفكرة العامة', 'فكرة النص العامة هي:', false, '[{"id": "A", "text": "فضاءات المدرسة ودورها في تنمية السلوك المدني ضمن سياقات دالة."}, {"id": "B", "text": "أهداف المدرسة في تنمية السلوك المدني ضمن سياقات دالة."}, {"id": "C", "text": "مكونات المدرسة في تنمية السلوك المدني ضمن سياقات دالة."}, {"id": "D", "text": "دور المدرسة في تنمية السلوك المدني ضمن سياقات دالة."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يعالج النص منذ فقرته الأولى وحتى نهايته دور المدرسة في تنمية السلوك المدني ويختم ببيان السياقات الدالة التي يندرج ضمنها هذا الدور، وهو ما يطابق عنوان المصدر نفسه ("دور المدرسة في تنمية السلوك المدني").', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال تحليلي مرتبط بفهم النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q9', 'exam_primary_2024_arabic_oct', 9, 'الأساليب — المدح', '"نعم الأستاذ العامل على ترسيخ السلوك المدني"، هو أسلوب:', false, '[{"id": "A", "text": "تحذير"}, {"id": "B", "text": "تعجب"}, {"id": "C", "text": "مدح"}, {"id": "D", "text": "توكيد"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'صُدّرت الجملة بالفعل الماضي الجامد "نِعْمَ" الدال على إنشاء المدح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q10', 'exam_primary_2024_arabic_oct', 10, 'الصرف — جموع التكسير', '"... المرتكزة على احترام القوانين..."، كلمة "القوانين" في هذه الجملة:', false, '[{"id": "A", "text": "جمع كثرة"}, {"id": "B", "text": "جمع قلة"}, {"id": "C", "text": "جمع مؤنث سالم"}, {"id": "D", "text": "جمع مذكر سالم"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], '"القوانين" (مفردها: قانون) هي جمع تكسير على وزن "فواعيل" (من صيغ منتهى الجموع)، وليست جمع مذكر سالماً لأن صورة مفردها تغيرت. وتُصنف صيغ منتهى الجموع ضمن جموع الكثرة، لأن أوزان جمع القلة محصورة في أربعة أوزان فقط هي: (أَفْعُل، أَفْعال، أَفْعِلة، فِعْلة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q11', 'exam_primary_2024_arabic_oct', 11, 'النحو — إعراب الجمل', '"غير أن أبعاده الأخلاقية... وحقوق الإنسان، تجعل تنميته ..." ، جملة "تجعل تنميته ..." تعرب:', false, '[{"id": "A", "text": "لا محل لها من الإعراب"}, {"id": "B", "text": "بدلا"}, {"id": "C", "text": "نعتا"}, {"id": "D", "text": "خبرا"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '"أنّ" ناسخ حرفي، و"أبعاده" اسم "أنّ" منصوب، وتلتها نعوت ومعطوفات، ثم جاءت الجملة الفعلية "تجعل تنميته..." لتتمم المعنى، فهي في محل رفع خبر "أنّ".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q12', 'exam_primary_2024_arabic_oct', 12, 'النحو — النداء', 'الجملة الصحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "أيا متعلمي تحلّوا بالأخلاق الحسنة في المدرسة وخارجها."}, {"id": "B", "text": "أيا متعلمين تحلّوا بالأخلاق الحسنة في المدرسة وخارجها."}, {"id": "C", "text": "أيا متعلمون تحلّوا بالأخلاق الحسنة في المدرسة وخارجها."}, {"id": "D", "text": "أيا متعلمو تحلّوا بالأخلاق الحسنة في المدرسة وخارجها."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الجملة (B) صحيحة لأن المنادى هنا نكرة غير مقصودة، وحكمها النصب (منادى منصوب وعلامة نصبه الياء لأنه جمع مذكر سالم)، وهو الأرجح والأقرب لسياق الجملة لعموم الخطاب الموجه لجميع المتعلمين مع استعمال أداة النداء للبعيد "أيا". تنبيه نحوي: الجملة (C) تُعدّ أيضاً صحيحة من حيث القاعدة النحوية المحضة إذا اعتُبر المنادى نكرة مقصودة (منادى مبني على الواو في محل نصب)، وهذا من مواطن الالتباس في صياغة السؤال؛ غير أن السياق التوجيهي العام يرجّح النكرة غير المقصودة (B). أما (A) و(D) فخاطئتان لحذف النون من جمع المذكر السالم دون وجود مضاف إليه بعده.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال ملتبس: الجواب المقصود B (منادى نكرة غير مقصودة منصوب)، لكن C صحيح أيضاً نحوياً إذا اعتُبر المنادى نكرة مقصودة (مبني على الواو)؛ السياق التوجيهي العام يرجّح B. لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q13', 'exam_primary_2024_arabic_oct', 13, 'الصرف — الاسم الممدود', 'الاسم الممدود هو:', false, '[{"id": "A", "text": "المتحلي"}, {"id": "B", "text": "الداء"}, {"id": "C", "text": "النماء"}, {"id": "D", "text": "الماء"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الاسم الممدود هو كل اسم معرب آخره همزة قبلها ألف زائدة (يسبق الألف حرفان أصليان فأكثر). في كلمة "النماء" (من نما ينمو) الألف زائدة والهمزة منقلبة عن أصل (واو)، فهو اسم ممدود. أما "الداء" و"الماء" فالألف فيهما أصلية منقلبة عن واو (أصلهما: دَوَء ومَوَه) وليست زائدة، فلا يُعدّان من الأسماء الممدودة، و"المتحلي" اسم منقوص.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q14', 'exam_primary_2024_arabic_oct', 14, 'الأساليب — التعجب', '"ما أجملَ إحداثَ نادي المواطنة وحقوق الطفل في مؤسستنا..."، هو أسلوب:', false, '[{"id": "A", "text": "إغراء"}, {"id": "B", "text": "مدح"}, {"id": "C", "text": "ندبة"}, {"id": "D", "text": "تعجب"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'جاءت الجملة على الصيغة القياسية للتعجب "ما أفعلَ" (ما أجملَ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q15', 'exam_primary_2024_arabic_oct', 15, 'الصرف — التصغير', '"... تقع في صميم عمل المدرسة." تصغير كلمة "المدرسة" هو:', false, '[{"id": "A", "text": "مُدَيْرَسَة"}, {"id": "B", "text": "مُدَيْرِسَة"}, {"id": "C", "text": "مودَيْرَسَة"}, {"id": "D", "text": "مودَيْرِسَة"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'كلمة "مَدْرَسَة" اسم رباعي (إذ لا تُعتد تاء التأنيث في عدّ الحروف)، ويُصغّر الرباعي على وزن فُعَيْعِل (بضم الأول وفتح الثاني وإضافة ياء التصغير الساكنة ثالثةً وكسر ما بعد ياء التصغير)، فتصبح: مُدَيْرِسَة (بكسر الراء). أما الخيار (A) فبفتح الراء وهو خطأ، والخياران (C) و(D) فيهما واو زائدة لا مسوّغ لها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q16', 'exam_primary_2024_arabic_oct', 16, 'المعجم — مرادف كلمة', '"تحيل تنمية السلوك المدني إلى امتداداته في المجتمع..."، مرادف كلمة "تحيل" في هذه الجملة هو:', false, '[{"id": "A", "text": "تشير إلى"}, {"id": "B", "text": "ترجع إلى"}, {"id": "C", "text": "تدل على"}, {"id": "D", "text": "تظهر أن"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'فعل "أحال إلى" في هذا السياق يفيد الإحالة بمعنى الإشارة إلى شيء وتوجيه الذهن إليه، فيستقيم المعنى بوضوح عند التعويض: "تشير تنمية السلوك المدني إلى امتداداته في المجتمع...".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال تحليلي مرتبط بفهم النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q17', 'exam_primary_2024_arabic_oct', 17, 'النحو — المصدر المؤول', '"من أهداف التربية على السلوك المدني أن تنمي السلوك الإيجابي"، المصدر المؤول من "أنْ" والفعل "تنمي":', false, '[{"id": "A", "text": "في محل جر مضاف إليه."}, {"id": "B", "text": "لا محل له من الإعراب."}, {"id": "C", "text": "في محل رفع خبر."}, {"id": "D", "text": "في محل رفع مبتدأ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'شبه الجملة "من أهداف..." في محل رفع خبر مقدم، والمصدر المؤول "أن تنمي" (بتأويل: تنميةُ السلوك الإيجابي من أهداف التربية...) يقع في محل رفع مبتدأ مؤخر.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q18', 'exam_primary_2024_arabic_oct', 18, 'الصرف — جموع التكسير', 'الجمع الصحيح من بين الجموع الآتية هو:', false, '[{"id": "A", "text": "مفاتح"}, {"id": "B", "text": "عناديل"}, {"id": "C", "text": "عناكب"}, {"id": "D", "text": "أباطيرة"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عناكب هو الجمع القياسي الصحيح والمشهور لكلمة "عنكبوت" (بحذف الواو والتاء الزائدتين). أما أباطيرة فخطأ والصحيح "أباطرة" (جمع إمبراطور). وعناديل يُعدّ في المقرر الدراسي للتعليم الابتدائي (المستوى السادس) خطأً والصحيح هو "عنادل" (جمع عندليب). ملاحظة لغوية حول (A): جمع "مِفتاح" هو "مفاتيح"، ولذلك أورده واضع السؤال كخيار خاطئ، غير أن "مفاتح" في الفصحى جمع صحيح أيضاً لمفرد آخر هو "مَفْتَح" (بفتح الميم) كما في قوله تعالى: ﴿وعنده مفاتح الغيب﴾؛ ويبقى الجواب المقصود بلا خلاف هو C.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'ملاحظة لغوية: «مفاتح» جمع صحيح أيضاً لمفرد «مَفْتَح» في الفصحى (﴿وعنده مفاتح الغيب﴾)، مع أن الجواب المقصود هو C (عناكب). لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q19', 'exam_primary_2024_arabic_oct', 19, 'فهم النص — الفكرة الأساسية', 'الفكرة الأساسية للفقرة الثانية هي:', false, '[{"id": "A", "text": "التربية والتنشئة هي المسؤولية الرئيسة للمؤسسة التعليمية."}, {"id": "B", "text": "القراءة والكتابة هي المسؤولية الرئيسة للمؤسسة التعليمية."}, {"id": "C", "text": "تعليم المهارات هي المسؤولية الرئيسة للمؤسسة التعليمية."}, {"id": "D", "text": "تنمية الحس النقدي هي المسؤولية الرئيسة للمؤسسة التعليمية."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'نصّت الفقرة الثانية صراحة على وظائف المدرسة بقولها: "المتمثلة في التعليم والتعلم والتكوين والتأهيل، ولاسيما في التربية والتنشئة، باعتبار تلك الوظائف تجعل مسؤولية المؤسسة التعليمية مركزية..."، بينما لم تذكر القراءة والكتابة ولا تعليم المهارات، وتحدثت عن "الحس المدني" لا "الحس النقدي".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, 'سؤال تحليلي مرتبط بفهم النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q20', 'exam_primary_2024_arabic_oct', 20, 'الصرف — مصدر الفعل', 'فعل مصدر "تنمية" في ما يأتي هو:', false, '[{"id": "A", "text": "نما"}, {"id": "B", "text": "تنمّى"}, {"id": "C", "text": "نمّى"}, {"id": "D", "text": "تنامى"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الفعل الرباعي المضعف العين المعتل الآخر على وزن "فَعَّلَ" يأتي مصدره على وزن "تَفْعِلة": نمّى ← تنمية (مثل: ربّى ← تربية). أما مصادر الأفعال الأخرى فهي: نما (نموّ/نماء)، تنمّى (تنمٍّ)، تنامى (تنامٍ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q21', 'exam_primary_2024_arabic_oct', 21, 'النحو — إنّ وأخواتها', 'الجملة الصحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "إنَّ المدرسان الماهران متقنان لتدبير تنمية السلوك عند التلاميذ."}, {"id": "B", "text": "إنَّ المدرسان الماهرين متقنان لتدبير تنمية السلوك عند التلاميذ."}, {"id": "C", "text": "إنَّ المدرسيْن الماهران متقنان لتدبير تنمية السلوك عند التلاميذ."}, {"id": "D", "text": "إنَّ المدرسيْن الماهريْن متقنين لتدبير تنمية السلوك عند التلاميذ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الصياغة الصحيحة هي: "إنَّ المدرسيْنِ الماهريْنِ متقنانِ..." لأن اسم "إنّ" ونعته مثنّيان منصوبان بالياء، وخبرها مثنى مرفوع بالألف. وفي الخيارات السابقة كلها خطأ: (A) و(B): رُفع اسم "إنّ" بالألف (المدرسان). (C): رُفع نعت اسم "إنّ" المنصوب (الماهران). (D): نُصب خبر "إنّ" بالياء (متقنين).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q22', 'exam_primary_2024_arabic_oct', 22, 'النحو — التوكيد والمبتدأ', '"... جميعها سياقات دالة." تعرب كلمة "جميعها" في هذه الجملة:', false, '[{"id": "A", "text": "خبرا مرفوعا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "B", "text": "نعتا مرفوعا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "C", "text": "توكيدا معنويا مرفوعا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "D", "text": "مبتدأ مرفوعا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'لا تُعرب "جميعها" توكيداً معنوياً إلا إذا سبقها مؤكدٌ في الجملة وصحَّ حذفها دون اختلال التركيب. وفي الجملة المعطاة ("... جميعها سياقات دالة.") لا يوجد مؤكد مذكور قبلها ولا يستقيم الكلام بحذفها، لذا تُعرب مبتدأ مرفوعاً وعلامة رفعه الضمة (و"ها" مضاف إليه)، و"سياقات" خبرها المرفوع.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q23', 'exam_primary_2024_arabic_oct', 23, 'الصرف — إسناد الفعل للضمائر', '"وأنت تدعو التلاميذ إلى التحلي بقيم السلوك المدني". عند إسناد هذه الجملة للضمير "أنتن" تصبح كالآتي:', false, '[{"id": "A", "text": "وأنتن تَدْعَوْنَ التلاميذ إلى التحلي بقيم السلوك المدني."}, {"id": "B", "text": "وأنتن تَدْعُنَ التلاميذ إلى التحلي بقيم السلوك المدني."}, {"id": "C", "text": "وأنتن تَدْعُوونَ التلاميذ إلى التحلي بقيم السلوك المدني."}, {"id": "D", "text": "وأنتن تَدْعُوْنَ التلاميذ إلى التحلي بقيم السلوك المدني."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'الفعل "تَدْعُو" مضارع ناقص واوي مضموم العين؛ وعند إسناده إلى نون النسوة ("أنتن") يُبنى على السكون وتبقى واوه الأصلية كما هي دون حذف ولا زيادة، وتُلحق به نون النسوة المفتوحة: تَدْعُوْنَ (على وزن تَفْعُلْنَ). أما (A) فأخطأ بفتح العين، و(B) بحذف الواو، و(C) بزيادة واو ثانية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q24', 'exam_primary_2024_arabic_oct', 24, 'الصرف — الفعل الجامد والمتصرف', 'الفعل المتصرف من بين الأفعال الآتية هو:', false, '[{"id": "A", "text": "نعم"}, {"id": "B", "text": "عسى"}, {"id": "C", "text": "لَيْسَ"}, {"id": "D", "text": "بِئْسَ"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الأفعال الأربعة الواردة (نِعْمَ للمدح، عَسَى للرجاء، لَيْسَ للنفي، بِئْسَ للذم) كلها أفعال جامدة تلازم صيغة الماضي ولا تتصرف.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q25', 'exam_primary_2024_arabic_oct', 25, 'الصرف — البناء للمجهول', '"... في خضم التحولات التي شاهدتها المنظومات القيمية مؤخرا"، يُبنى الفعل للمجهول في هذه الجملة كما يأتي:', false, '[{"id": "A", "text": "شوهِدَتْ مؤخرا."}, {"id": "B", "text": "شُهِدَتْ مؤخرا."}, {"id": "C", "text": "شوهيدت مؤخرا."}, {"id": "D", "text": "شُهِيدت مؤخرا."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'الفعل في الجملة هو الماضي الرباعي "شَاهَدَ" (على وزن فاعَلَ)، وعند بنائه للمجهول يُضم أوله فتُقلب الألف الزائدة واواً لمناسبة الضمة ويُكسر ما قبل آخره: شُوهِدَ، ومع تاء التأنيث الساكنة: شُوهِدَتْ. أما "شُهِدَتْ" فهي مبني للمجهول من الفعل الثلاثي "شَهِدَ".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q26', 'exam_primary_2024_arabic_oct', 26, 'الإملاء — همزة القطع والوصل', 'الكلمة التي كُتبت بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "إستخراج"}, {"id": "B", "text": "إنفعال"}, {"id": "C", "text": "إنصاف"}, {"id": "D", "text": "إمتحان"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'إنصاف مصدر الفعل الرباعي "أنصفَ"، وهمزة الفعل الرباعي ومصدره همزة قطع، بخلاف "استخراج" (مصدر فعل سداسي) و"انفعال" و"امتحان" (مصدرا فعلين خماسيين) فجميعها تُكتب بهمزة وصل (استخراج، انفعال، امتحان).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q27', 'exam_primary_2024_arabic_oct', 27, 'النحو — الأفعال الخمسة', '"الأساتذة يقرّون بأهمية التربية المدنية في تنشئة التلاميذ..."، تُعرَب "يقرّون ..." فعلا مضارعا مرفوعا:', false, '[{"id": "A", "text": "وعلامة رفعه الضمة، والفاعل ضمير مستتر تقديره (هم)، والجملة الفعلية في رفع خبر."}, {"id": "B", "text": "بثبوت النون، والفاعل ضمير مستتر تقديره (هم)، والجملة الفعلية في رفع خبر."}, {"id": "C", "text": "وعلامة رفعه الضمة، وواو الجماعة ضمير متصل في محل رفع فاعل، والجملة الفعلية في رفع خبر."}, {"id": "D", "text": "بثبوت النون، وواو الجماعة ضمير متصل في محل رفع فاعل، والجملة الفعلية في رفع خبر."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'الفعل "يُقِرُّون" من الأفعال الخمسة لاتصاله بواو الجماعة، لذا يُرفع وعلامة رفعه ثبوت النون، وتعرب واو الجماعة ضميراً متصلاً مبنياً في محل رفع فاعل، والجملة الفعلية في محل رفع خبر للمبتدأ "الأساتذة".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q28', 'exam_primary_2024_arabic_oct', 28, 'الصرف — النسبة', 'النسبة الصحيحة إلى كلمة "تربية" في ما يأتي هي:', false, '[{"id": "A", "text": "تَرْبِيَئِيّ"}, {"id": "B", "text": "تَرْباوِيّ"}, {"id": "C", "text": "تَرْبِيّ"}, {"id": "D", "text": "تَرْبِيائِيّ"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عند النسبة إلى "تَرْبِيَة"، تُحذف تاء التأنيث أولاً فتصبح "تَرْبِي" (اسم منقوص ياؤه رابعة)، وحكم النسبة إلى المنقوص ذي الياء الرابعة جواز وجهين قياسيين: حذف الياء الرابعة وإضافة ياء النسب المشددة (وهو الوجه الأول والأرجح قياساً): تَرْبِيّ (الخيار C). قلب الياء واواً وفتح ما قبلها: تَرْبَوِيّ (بلا ألف، لذلك فإن الخيار B "تَرْباوِيّ" خاطئ لزيادة الألف).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q29', 'exam_primary_2024_arabic_oct', 29, 'النحو — العدد والمعدود', '"أصدر المجلس الأعلى للتربية والتكوين والبحث العلمي 11 مجلة تربوية"، الجملة التي كُتب فيها العدد 11 بالحروف بطريقة صحيحة هي:', false, '[{"id": "A", "text": "أصدر المجلس الأعلى للتربية والتكوين والبحث العلمي إحدى عشر مجلة تربوية."}, {"id": "B", "text": "أصدر المجلس الأعلى للتربية والتكوين والبحث العلمي أحد عشر مجلة تربوية."}, {"id": "C", "text": "أصدر المجلس الأعلى للتربية والتكوين والبحث العلمي أحد عشرة مجلة تربوية."}, {"id": "D", "text": "أصدر المجلس الأعلى للتربية والتكوين والبحث العلمي إحدى عشرة مجلة تربوية."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'العدد المركب 11 يطابق المعدود في التذكير والتأنيث بجزأيه معاً؛ وبما أن المعدود "مجلة" مؤنث، يُكتب العدد مؤنثاً في جزأيه: إحدى عشرةَ مجلةً تربويةً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة أكتوبر 2024) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_arabic_oct_q30', 'exam_primary_2024_arabic_oct', 30, 'الصرف — أنواع الفعل', '"اعتبارا لذلك، ينبغي أن تكون المدرسة..."، الفعل "ينبغي" في هذه الجملة:', false, '[{"id": "A", "text": "مجرد ناقص"}, {"id": "B", "text": "مزيد أجوف"}, {"id": "C", "text": "مزيد مهموز"}, {"id": "D", "text": "مجرد سالم"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الفعل "ينبغي" ماضيه "اِنْبَغَى" (من الجذر الثلاثي "بَغَى")؛ فهو فعل مزيد (ثلاثي مزيد بحرفين هما الألف والنون) وناقص (معتل الآخر بالياء)، أي أنه "مزيد ناقص"، وهذا الخيار غير موجود ضمن الاختيارات (A-D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bObnVG0fSyGfdz1WK7tK0cgJuLLhwuLp', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
