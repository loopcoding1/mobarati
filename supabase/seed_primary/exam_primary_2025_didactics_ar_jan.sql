-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك اللغة العربية - دورة يناير 2025.md
--   (سجل الامتحانات رقم 44؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك اللغة العربية.pdf (6 صفحات، مرقمة 2/7–7/7).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q25 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل المنهاج الدراسي للتعليم الابتدائي
--     (الصيغة النهائية، يوليوز 2021)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان،
--     والحل مصدره طرف ثالث (AI Studio).
--   * الأجوبة E («جميع الاختيارات المقترحة خاطئة») في Q4 وQ9 وQ19 موسومة في verification_note
--     مع القيمة الصحيحة حسب المنهاج.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[36].
--
-- ملاحظات عن ملف الامتحان:
--   * صفحة الغلاف (1/7) مفقودة من الملف؛ المدة (45 دقيقة) والمعامل (3) أُخذا من
--     إعلان المباراة الرسمي (دورة يناير 2025، التخصص المزدوج): اختبار في ديداكتيك
--     المواد، اللغة العربية — 45 دقيقة، المعامل 3
--     https://www.scribd.com/document/809322600/Avis-Concours-EnsPrim-2025-VF-17h21-1
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--   * فواصل الخيارات «؛» في ملف الحل حُذفت (فاصلة تعداد لا غير)؛ الخيار E يحتفظ بنقطته
--     الأخيرة كما في الورقة وكما في ملف الحل.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_didactics_ar_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_ar_jan', 'specialty_primary', 2025, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة يناير 2025)', 'دورة يناير 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q1', 'exam_primary_2025_didactics_ar_jan', 1, 'التعليم المبكر للقراءة — مكوناته', 'مكونات التعليم المبكر للقراءة في السنة الثانية هي:', false, '[{"id": "A", "text": "المفردات، الفهم، الطلاقة، المبدأ الألفبائي، تلخيص المسموع"}, {"id": "B", "text": "الفهم، الوعي الصوتي، المبدأ الألفبائي، الطلاقة، تلخيص المسموع"}, {"id": "C", "text": "المبدأ الألفبائي، الوعي الصوتي، الطلاقة، المفردات، الفهم"}, {"id": "D", "text": "الوعي الصوتي، المفردات، الطلاقة، الفهم، إبداء الرأي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يرتكز التعليم المبكر للقراءة في السنتين الأولى والثانية على خمسة مكونات متكاملة ومتفاعلة هي: الوعي الصوتي، المبدأ الألفبائي، الطلاقة، المفردات، والفهم القرائي[3][4]. أما باقي الاختيارات فتُدرج عناصر دخيلة ليست من هذه المكونات الخمسة مثل "تلخيص المسموع" أو "إبداء الرأي"[3].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q2', 'exam_primary_2025_didactics_ar_jan', 2, 'المقاربات البيداغوجية', 'تُعتمد، في المنهاج الدراسي، المقاربات البيداغوجية الآتية:', false, '[{"id": "A", "text": "المقاربة بالكفايات، بيداغوجيا الخطأ، بيداغوجيا المشروع، البيداغوجيا الفارقية"}, {"id": "B", "text": "بيداغوجيا الخطأ، بيداغوجيا المشروع، المقاربة بالكفايات، المقاربة بالمضامين"}, {"id": "C", "text": "البيداغوجيا الفارقية، بيداغوجيا المشروع، المقاربة بالمضامين، بيداغوجيا الخطأ"}, {"id": "D", "text": "البيداغوجيا الفارقية، المقاربة بالمضامين، بيداغوجيا الخطأ، المقاربة بالكفايات"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يعتمد المنهاج الدراسي المغربي المقاربة بالكفايات كإطار بيداغوجي ناظم، تُجرأ عبر بيداغوجيات نشيطة منها بيداغوجيا الخطأ، وبيداغوجيا المشروع، والبيداغوجيا الفارقية[3]. أما "المقاربة بالمضامين" المذكورة في الاختيارات (B وC وD) فهي مقاربة تقليدية متجاوَزة ولم تعد معتمدة[3].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q3', 'exam_primary_2025_didactics_ar_jan', 3, 'التواصل الشفهي — أهدافه', 'من أهداف التواصل الشفهي في السنة الرابعة:', false, '[{"id": "A", "text": "فهم المعاني الضمنية للنصوص المسموعة فقط"}, {"id": "B", "text": "فهم المعاني الصريحة للنصوص المسموعة فقط"}, {"id": "C", "text": "فهم المعاني الصريحة والضمنية للنصوص المسموعة"}, {"id": "D", "text": "فهم المعاني الصريحة والضمنية للنصوص المقروءة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتعلق مكون التواصل الشفهي بالنصوص السماعية (المسموعة لا المقروءة)، ومن أهدافه المنصوص عليها في المنهاج الدراسي تمكين المتعلم(ة) من فهم المعاني الصريحة والضمنية للنصوص المسموعة معاً دون الاقتصار على أحدهما[5].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q4', 'exam_primary_2025_didactics_ar_jan', 4, 'القراءة — النص الشعري', 'في السنة الرابعة، يُستثمر نص شعري واحد في:', false, '[{"id": "A", "text": "حصتين في الأسبوع الرابع من كل وحدة"}, {"id": "B", "text": "ثلاث حصص في الأسبوع الثالث من كل وحدة"}, {"id": "C", "text": "ثلاث حصص في الأسبوع الرابع من كل وحدة"}, {"id": "D", "text": "أربع حصص في الأسبوع الثالث من كل وحدة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'ينص المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021) في موجهات القراءة بالسنة الرابعة على أنه «يُستثمر نص شعري واحد في أربع حصص في الأسبوع الرابع من كل وحدة»[1][7] (وتُخصص الحصة الخامسة للنص المسترسل). وبما أن الاختيار (C) يذكر ثلاث حصص في الأسبوع الرابع (وهذا خاص بالسنتين الخامسة والسادسة)[8]، والاختيار (D) يذكر الأسبوع الثالث، فإن جميع الاختيارات المقترحة خاطئة[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, 'الصحيح حسب المنهاج الدراسي (يوليوز 2021): أربع حصص في الأسبوع الرابع من كل وحدة — غير وارد في الاختيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q5', 'exam_primary_2025_didactics_ar_jan', 5, 'بيداغوجيا المشروع', 'الخطوات العامة لبيداغوجيا المشروع بالتتابع هي:', false, '[{"id": "A", "text": "التخطيط لتنفيذ المشروع، اختيار المشروع، تنفيذ المشروع، تقويم المشروع، تتبع المشروع"}, {"id": "B", "text": "اختيار المشروع، التخطيط لتنفيذ المشروع، تنفيذ المشروع، تقويم المشروع، تتبع المشروع"}, {"id": "C", "text": "التخطيط لتنفيذ المشروع، اختيار المشروع، تتبع المشروع، تنفيذ المشروع، تقويم المشروع"}, {"id": "D", "text": "اختيار المشروع، تنفيذ المشروع، التخطيط لتنفيذ المشروع، تقويم المشروع، تتبع المشروع"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وفق الوثائق البيداغوجية الرسمية المعتمدة، تتدرج الخطوات العامة لبيداغوجيا المشروع منطقياً بالتتابع الآتي: اختيار المشروع، ثم التخطيط لتنفيذ المشروع، ثم تنفيذ المشروع، ثم تقويم المشروع وتتبعه[6][9].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q6', 'exam_primary_2025_didactics_ar_jan', 6, 'التعليم المبكر للقراءة — المفردات', 'مكون المفردات، في التعليم المبكر للقراءة، هو:', false, '[{"id": "A", "text": "استخراج معلومات صريحة من نص مقروء"}, {"id": "B", "text": "استخراج المفردات من نص مقروء"}, {"id": "C", "text": "توظيف معلومات صريحة لفهم نص مقروء"}, {"id": "D", "text": "توظيف استراتيجيات المفردات لفهم نص مقروء"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يرمي مكون المفردات في التعليم المبكر للقراءة إلى إثراء الرصيد المعجمي للمتعلم(ة) وفهم معاني الكلمات الجديدة عبر توظيف استراتيجيات المفردات (شبكة المفردات، خريطة الكلمة، عائلة الكلمة، المعاني المتعددة...) من أجل فهم النص المقروء[4][6]. أما استخراج المعلومات الصريحة فيندرج ضمن مكون الفهم القرائي[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q7', 'exam_primary_2025_didactics_ar_jan', 7, 'القراءة المشتركة', 'تُقدم نصوص القراءة المشتركة في:', false, '[{"id": "A", "text": "السنتين الأولى والثانية"}, {"id": "B", "text": "السنتين الثانية والثالثة"}, {"id": "C", "text": "السنتين الأولى والثالثة"}, {"id": "D", "text": "السنتين الثانية والرابعة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تُعتمد نصوص القراءة المشتركة وفق المنهاج الدراسي في السنتين الثانية والثالثة فقط، بهدف تنمية الطلاقة القرائية وإغناء الرصيد المعجمي إلى جانب الكلمات البصرية[11] (ولا تُدرَّس في السنة الأولى أو المستويات العليا).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q8', 'exam_primary_2025_didactics_ar_jan', 8, 'الكتابة — عناصرها', 'عناصر مكون الكتابة في السنة الرابعة هي:', false, '[{"id": "A", "text": "الشكل والتطبيقات الكتابية والإملاء"}, {"id": "B", "text": "الشكل والتطبيقات الكتابية والتراكيب"}, {"id": "C", "text": "الشكل والتطبيقات الكتابية والصرف والتحويل"}, {"id": "D", "text": "الشكل والتطبيقات الكتابية والتعبير الكتابي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يتكون مكون الكتابة في السنة الرابعة (وكذا الخامسة والسادسة) من الشكل والتطبيقات الكتابية، والتعبير الكتابي[11][12]. أما الصرف والتحويل والتراكيب والإملاء فتندرج ضمن مكون "الظواهر اللغوية"[11].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q9', 'exam_primary_2025_didactics_ar_jan', 9, 'الطلاقة', 'الطلاقة هي:', false, '[{"id": "A", "text": "استخدام استراتيجية شبكة المفردات"}, {"id": "B", "text": "استخدام استراتيجية خريطة الكلمة"}, {"id": "C", "text": "قراءة نصوص بدقة وفهمها"}, {"id": "D", "text": "قراءة نصوص بدقة وتأن"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'يُعرّف المنهاج الدراسي الطلاقة بأنها القدرة على قراءة المقاطع والكلمات والنصوص بدقة، وسرعة مناسبة، وبإيقاع صوتي معبر[11][13][14]. فالاختياران (A وB) يتعلقان باستراتيجيات المفردات، والاختيار (C) يُغفل السرعة والإيقاع الصوتي المعبر، والاختيار (D) يستبدل السرعة المناسبة بـ "التأني"، مما يجعل جميع الاختيارات خاطئة[11][13].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, 'الطلاقة حسب المنهاج: قراءة المقاطع والكلمات والنصوص بدقة وسرعة مناسبة وبإيقاع صوتي معبر — لا اختيار يطابق التعريف كاملاً، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q10', 'exam_primary_2025_didactics_ar_jan', 10, 'الظواهر اللغوية', 'عناصر الظواهر اللغوية في السنتين الخامسة والسادسة:', false, '[{"id": "A", "text": "الصرف والتحويل والتراكيب والإملاء"}, {"id": "B", "text": "الصرف والتحويل والتراكيب والتطبيقات الكتابية"}, {"id": "C", "text": "الصرف والتحويل والتراكيب والتعبير الكتابي"}, {"id": "D", "text": "الصرف والتحويل والتراكيب والشكل"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ينص المنهاج الدراسي على أن عناصر مكون الظواهر اللغوية في السنوات العليا (الرابعة والخامسة والسادسة) تشمل: الصرف والتحويل، التراكيب، والإملاء[13][15]. أما الشكل والتطبيقات الكتابية والتعبير الكتابي فتتبع مكون الكتابة[13].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q11', 'exam_primary_2025_didactics_ar_jan', 11, 'التعبير الكتابي — حصصه', 'تُخصص الحصة الثانية من التعبير الكتابي في السنة الخامسة لـ:', false, '[{"id": "A", "text": "الإنجاز (المحاولة الأولى)"}, {"id": "B", "text": "تقديم المهارة ونمذجتها"}, {"id": "C", "text": "تصحيح الإنجازات"}, {"id": "D", "text": "مراجعة الإنجاز"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تُدبر مهارة التعبير الكتابي في السنتين الخامسة والسادسة في أربع حصص (على مدى أسبوعين بمعدل حصتين في الأسبوع)[16]: الحصة الأولى: تقديم المهارة ونمذجتها، والتخطيط والإعداد للكتابة[13][17]. الحصة الثانية: الإنجاز (المحاولة الأولى)[13][18]. الحصة الثالثة: مراجعة المحاولة الأولى وإتمام الإنجاز[13][18]. الحصة الرابعة: تصحيح الإنجازات وعرضها[13].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q12', 'exam_primary_2025_didactics_ar_jan', 12, 'الحكاية — عناصرها', 'عناصر الحكاية في السنوات الثلاث الأولى هي:', false, '[{"id": "A", "text": "الشخصيات والأحداث والبداية والنهاية"}, {"id": "B", "text": "الشخصيات والأحداث والتحول والزمان"}, {"id": "C", "text": "الشخصيات والأحداث والعقدة والمكان"}, {"id": "D", "text": "الشخصيات والأحداث والزمان والمكان"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يميز المنهاج الدراسي في مكون الاستماع والتحدث بين عناصر الحكاية وهي: الشخصيات، الأحداث، الزمان، والمكان، وبين بنية الحكاية وهي: البداية، التحول، المشكل (العقدة)، الحل، والنهاية[19][20].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q13', 'exam_primary_2025_didactics_ar_jan', 13, 'التعبير الكتابي — الغلاف الزمني', 'تُخصص للتعبير الكتابي في السنة الثالثة:', false, '[{"id": "A", "text": "حصة واحدة في الأسبوع"}, {"id": "B", "text": "حصة واحدة في أسبوعين"}, {"id": "C", "text": "حصتان اثنتان في الأسبوع"}, {"id": "D", "text": "ثلاث حصص في الأسبوع"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق جدول الغلاف الزمني الأسبوعي للسنة الثالثة في المنهاج الدراسي، تُخصص للتعبير الكتابي حصة واحدة في الأسبوع (مدتها 30 دقيقة)[22][23]، ويُنجز موضوع واحد في كل وحدة عبر مراحل الكتابة التفاعلية على مدى أربع حصص[23].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q14', 'exam_primary_2025_didactics_ar_jan', 14, 'الاستماع والتحدث — حصصه', 'في السنتين الأولى والثانية، يُقدم مكون الاستماع والتحدث في:', false, '[{"id": "A", "text": "ثلاث حصص في الأسبوع"}, {"id": "B", "text": "حصتين في الأسبوع"}, {"id": "C", "text": "أربع حصص في الأسبوع"}, {"id": "D", "text": "خمس حصص في الأسبوع"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُقدم مكون الاستماع والتحدث في السنة الأولى في خمس حصص في الأسبوع (5 × 45 دقيقة)، وفي السنة الثانية كذلك في خمس حصص في الأسبوع (4 حصص × 30 دقيقة + حصة × 45 دقيقة)[21].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q15', 'exam_primary_2025_didactics_ar_jan', 15, 'المقاربة بالكفايات — مبادئها', 'تقوم المقاربة بالكفايات على المبادئ الآتية:', false, '[{"id": "A", "text": "مبدأ البناء، مبدأ التوظيف، مبدأ التكرار، مبدأ التوليف والربط، مبدأ الإدماج"}, {"id": "B", "text": "مبدأ البناء، مبدأ التوظيف، مبدأ التكرار، مبدأ التوليف والربط، مبدأ التفكيك"}, {"id": "C", "text": "مبدأ البناء، مبدأ التوظيف، مبدأ التكرار، مبدأ الإدماج، مبدأ التفكيك"}, {"id": "D", "text": "مبدأ البناء، مبدأ التكرار، مبدأ التوليف والربط، مبدأ الإدماج، مبدأ التفكيك"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تقوم أجرأة المقاربة بالكفايات على خمسة مبادئ أساسية هي: البناء، التوظيف، التكرار، التوليف والربط، والإدماج[21]. أما "مبدأ التفكيك" الوارد في الاختيارات (B وC وD) فليس من مبادئها[21].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q16', 'exam_primary_2025_didactics_ar_jan', 16, 'مشروع الوحدة', 'يُدبر مشروع الوحدة، في السنة الثالثة، وفق المراحل المتتابعة بالشكل الآتي:', false, '[{"id": "A", "text": "التخطيط، الإنجاز، المراجعة"}, {"id": "B", "text": "التخطيط، المراجعة، الإنجاز"}, {"id": "C", "text": "التخطيط، العرض، الإنجاز"}, {"id": "D", "text": "التخطيط، الإنجاز، العرض"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُدبر مشروع الوحدة في السنة الثالثة (بمعدل حصة واحدة أسبوعياً خلال أربعة أسابيع) وفق التدرج الآتي: التحديد والتخطيط (الأسبوع الأول)، ثم الإنجاز (الأسبوعان الثاني والثالث)، ثم العرض (الأسبوع الرابع)[21].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q17', 'exam_primary_2025_didactics_ar_jan', 17, 'أناشيد الحروف', 'من معايير إعداد أناشيد الحروف في السنة الأولى:', false, '[{"id": "A", "text": "نشيدان لكل حرف"}, {"id": "B", "text": "نشيدان لكل ثلاثة أحرف"}, {"id": "C", "text": "نشيد لكل حرف"}, {"id": "D", "text": "نشيد لكل حرفين"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص المنهاج الدراسي صراحة في معايير إعداد أناشيد الحروف بالسنة الأولى على تخصيص «نشيد لكل حرف» من الحروف الهجائية، مرتبة حسب تدرجها في البرنامج الدراسي[8][21].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q18', 'exam_primary_2025_didactics_ar_jan', 18, 'التواصل الشفهي — موجهاته', 'من موجهات التواصل الشفهي في الأسبوع الثاني من السنة الرابعة:', false, '[{"id": "A", "text": "القدرة على فهم المسموع"}, {"id": "B", "text": "القدرة على مناقشة المسموع"}, {"id": "C", "text": "القدرة على استثمار المسموع"}, {"id": "D", "text": "القدرة على إعادة الإنتاج الشفهي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُستثمر النص السماعي الواحد على مدى أسبوعين (بمعدل حصة واحدة في الأسبوع): يُخصص الأسبوع الأول لإكساب المتعلم(ة) القدرة على فهم المسموع وتحليله ومناقشته واستثماره، بينما يُخصص الأسبوع الثاني لإكسابه القدرة على إعادة الإنتاج الشفهي (النسج على غرار النص، أو التوسع فيه، أو إنتاج نص شفهي جديد...)[8][25].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q19', 'exam_primary_2025_didactics_ar_jan', 19, 'القراءة — النص المسترسل', 'في السنتين الخامسة والسادسة، تُخصص:', false, '[{"id": "A", "text": "الحصة الثالثة من كل أسبوع من الأسابيع الأربعة للنص المسترسل"}, {"id": "B", "text": "الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص الشعري"}, {"id": "C", "text": "الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص الوظيفي"}, {"id": "D", "text": "الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص السماعي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'ينص المنهاج الدراسي (ص 121) في السنتين الخامسة والسادسة على أنه «تُخصص الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص المسترسل»[8][26][27] (بينما تُخصص الحصص الثلاث الأولى للنص الوظيفي في الأسابيع 1 و2 و3، وللنص الشعري في الأسبوع 4). وبما أن الاختيار (A) وضع النص المسترسل في الحصة الثالثة، وأسندت الاختيارات (B وC وD) الحصة الرابعة لنصوص أخرى، فإن جميع الاختيارات خاطئة[8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, 'الصحيح حسب المنهاج (ص 121): الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص المسترسل — غير وارد في الاختيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q20', 'exam_primary_2025_didactics_ar_jan', 20, 'الظواهر اللغوية — الإضمار', 'تُستضمر الظواهر اللغوية والأسلوبية في السنوات:', false, '[{"id": "A", "text": "الرابعة والخامسة والسادسة"}, {"id": "B", "text": "الثانية والثالثة والرابعة"}, {"id": "C", "text": "الأولى والثانية والثالثة"}, {"id": "D", "text": "الثالثة والرابعة والخامسة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يقوم منهاج اللغة العربية على مبدأ التدرج من الإضمار إلى التصريح[28]؛ حيث تُستضمر (تُمرَّر بشكل ضمني دون تصريح بقواعدها) الظواهر اللغوية والأسلوبية في السنوات الأولى والثانية والثالثة[22][29]، بينما يُصرَّح بها وبقواعدها الضابطة في السنوات الرابعة والخامسة والسادسة[16][28].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q21', 'exam_primary_2025_didactics_ar_jan', 21, 'الاستماع والتحدث — المداخل', 'من بين المداخل المعتمدة في تعليم مهارتي الاستماع والتحدث:', false, '[{"id": "A", "text": "تأطير تعليم مهارة التعبير الشفهي وتعلمها"}, {"id": "B", "text": "تأطير تعليم مهارة التعبير الكتابي وتعلمها"}, {"id": "C", "text": "تأطير تعليم مهارة القراءة وتعلمها"}, {"id": "D", "text": "تأطير تعليم مهارة التلخيص وتعلمها"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يُعد مكون الاستماع والتحدث مكوناً شفهياً قائماً بذاته، ومن بين المداخل المعتمدة في تعليم مهارتيه وتعلمهما: تأطير تعليم مهارة الاستماع (فهم المسموع) وتأطير تعليم مهارة التعبير الشفهي وتعلمها[30].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q22', 'exam_primary_2025_didactics_ar_jan', 22, 'الكتابة — أنواعها', 'في السنوات الثلاث الأولى، يتدرب المتعلم(ة) على نوعين من الكتابة، هما:', false, '[{"id": "A", "text": "الكتابة التصحيحية والخط"}, {"id": "B", "text": "الكتابة التصحيحية والكتابة التفاعلية"}, {"id": "C", "text": "الكتابة التفاعلية والخط"}, {"id": "D", "text": "الكتابة التفاعلية والتطبيقات الكتابية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص المنهاج الدراسي (ص 89) على أن أنشطة الكتابة في السنوات الثلاث الأولى تقوم على تمرين المتعلم(ة) على نوعين من الكتابة هما: الكتابة التصحيحية (التي تضم الخط والنقل والإملاء والتمارين/التطبيقات الكتابية) والكتابة التفاعلية (التعبير الكتابي التفاعلي)[2][31][32].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q23', 'exam_primary_2025_didactics_ar_jan', 23, 'الاستماع والتحدث — الحكاية', 'تُستثمر في مكون الاستماع والتحدث في السنة الأولى:', false, '[{"id": "A", "text": "حكاية واحدة في أسبوع"}, {"id": "B", "text": "حكايتان في أسبوع"}, {"id": "C", "text": "حكاية واحدة في أسبوعين"}, {"id": "D", "text": "حكاية واحدة في ثلاثة أسابيع"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يُبرمج في مكون الاستماع والتحدث بالسنوات الثلاث الأولى استثمار حكاية واحدة في أسبوعين[31] (أي حكايتين في كل وحدة دراسية، بموازاة وضعية تواصلية واحدة في كل أسبوع)[31].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q24', 'exam_primary_2025_didactics_ar_jan', 24, 'التعبير الكتابي — حصصه', 'يُقدم التعبير الكتابي في السنة الرابعة في:', false, '[{"id": "A", "text": "حصة واحدة في الأسبوع"}, {"id": "B", "text": "ثلاث حصص في الأسبوع"}, {"id": "C", "text": "حصتين اثنتين في الأسبوع"}, {"id": "D", "text": "أربع حصص في الأسبوع"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب جدول الغلاف الزمني الأسبوعي للسنة الرابعة، يُقدم مكون التعبير الكتابي في حصة واحدة في الأسبوع مدتها 45 دقيقة[31][33] (بينما يُقدم في حصتين أسبوعياً مدة كل منهما 30 دقيقة في السنتين الخامسة والسادسة[12][16]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يناير 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_jan_q25', 'exam_primary_2025_didactics_ar_jan', 25, 'الفلسفة التربوية — الاختيارات البيداغوجية', 'تقوم الفلسفة التربوية في منظومة التربية والتكوين على الاختيارات البيداغوجية الكبرى الآتية:', false, '[{"id": "A", "text": "طرائق التدريس، القيم، التربية على الاختيار، الكفايات، المضامين"}, {"id": "B", "text": "طرائق التدريس، القيم، الكفايات، المضامين، تنظيم الدراسة"}, {"id": "C", "text": "القيم، التربية على الاختيار، الكفايات، المضامين، تنظيم الدراسة"}, {"id": "D", "text": "القيم، طرائق التدريس، تنظيم الدراسة، الكفايات، التربية على الاختيار"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص الإطار التوجيهي العام للمنهاج الدراسي للتعليم الابتدائي على أن الفلسفة التربوية لمنظومة التربية والتكوين تقوم على خمسة اختيارات بيداغوجية كبرى ناظمة هي: القيم، والتربية على الاختيار، والكفايات، والمضامين، وتنظيم الدراسة[35]. أما "طرائق التدريس" فتندرج ضمن اختيارات تصريف البرامج الدراسية لا ضمن الاختيارات الخمسة الكبرى[36].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1XlTQf7nqEZ-eLls6NC14UIvZ-tt8z-o5', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
