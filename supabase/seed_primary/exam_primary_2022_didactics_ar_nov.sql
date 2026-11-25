-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك اللغة العربية - 2022.md
--   (سجل الامتحانات رقم 69؛ الحل: تصحيح مقترح منشور على manasseb.com، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2022/ديداكتيك اللغة العربية.pdf (4 صفحات، مسح ضوئي CamScanner).
--   رابط صفحة التصحيح: https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/
--   لا يوجد ملف تصحيح رسمي لهذا المكون؛ manasseb.com هو المصدر الوحيد المنشور
--   الذي عُثر عليه، والموقع نفسه يقول إنه «تصحيح مقترح ... وليس تصحيحًا رسميًا».
--
-- الدورة: نونبر 2022 — من غلاف ورقة الامتحان نفسها (الصفحة 1: «دورة نونبر 2022»).
-- المدة 60 دقيقة والمعامل 3: من الغلاف أيضاً، وهما للاختبار المشترك كاملاً
--   (30 سؤالاً: ديداكتيك اللغة العربية Q1–Q15 + علوم التربية Q16–Q30 في ملف مستقل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q15 وخياراته الأربعة (A-D) مطابق حرفياً لورقة الامتحان؛
--     لا توجد أي اختلافات بين ملف الحل وورقة الامتحان في النصوص أو الخيارات.
--   * الأجوبة من manasseb.com (مصدر وحيد، لا تعارضات مسجلة).
--   * 7 أجوبة موسومة «للتحقق» في المصدر نفسه (Q1، Q3، Q4، Q5، Q7، Q8، Q10):
--     سُجلت verified=false مع ملاحظة في verification_note.
--   * لا أسئلة متخطاة: الأسئلة الـ15 كلها مدرجة.
--
-- ملاحظة على السؤال Q7: الخياران B وC متطابقان تماماً في المسح الضوئي
--   (نفس تسلسل المراحل)، وهو على الأرجح خطأ مطبعي في ورقة الامتحان الأصلية؛
--   المصدر يعطي الجواب B فأُبقي عليه كما هو دون اختلاق أي فرق بين الخيارين.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_didactics_ar_nov', 'specialty_primary', 2022, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 15)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (15 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q1', 'exam_primary_2022_didactics_ar_nov', 1, 'الوضعيات التواصلية', 'تركز الوضعيات التواصلية بالمستويين الأول والثاني على استثمار:', false, '[{"id": "A", "text": "نص سماعي ومواقف تعبيرية ومقامات تواصلية وأفعال كلامية."}, {"id": "B", "text": "نص قرائي ومواقف تعبيرية ومقامات تواصلية وأفعال كلامية."}, {"id": "C", "text": "وضعيات ومواقف تعبيرية ومقامات تواصلية وأفعال كلامية."}, {"id": "D", "text": "نص سماعي ووضعيات ومواقف تعبيرية ومقامات تواصلية وأفعال كلامية."}]'::jsonb, ARRAY['C']::text[], 'في المستويين الأول والثاني تنطلق الوضعيات التواصلية من وضعيات ومواقف تعبيرية ومقامات تواصلية وأفعال كلامية، بينما يرتبط النص السماعي بنشاط الحكاية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q2', 'exam_primary_2022_didactics_ar_nov', 2, 'الوعي الصوتي', 'من خاصيات الوعي الصوتي:', false, '[{"id": "A", "text": "قراءة المتعلم(ة) مقاطع بدقة وسرعة وإيقاع."}, {"id": "B", "text": "تمييز المتعلم(ة) المقاطع الصوتية المسموعة وتعرفها واللعب بها."}, {"id": "C", "text": "تعرف رصيد معجمي لفهم معاني الكلمات المكتوبة التي يقرؤها."}, {"id": "D", "text": "تمكن المتعلم(ة) من التوافقات الخطية الصوتية بناء على التعليم الصريح والمباشر للمقاطع."}]'::jsonb, ARRAY['B']::text[], 'الوعي الصوتي هو القدرة على تمييز المقاطع والأصوات المسموعة ومعالجتها شفهيا (العزل، الدمج، الحذف…)، أما A فتخص الطلاقة وD المبدأ الألفبائي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q3', 'exam_primary_2022_didactics_ar_nov', 3, 'أنواع القراءة', 'أنواع القراءة باعتبار الأداء هي:', false, '[{"id": "A", "text": "جهرية - هامسة - فردية - جماعية"}, {"id": "B", "text": "جهرية - هامسة - وظيفية - جماعية"}, {"id": "C", "text": "جهرية - هامسة - وظيفية - مسترسلة"}, {"id": "D", "text": "جهرية - هامسة - فردية - مسترسلة"}]'::jsonb, ARRAY['A']::text[], 'باعتبار الأداء: جهرية وهامسة (صامتة)، وفردية وجماعية؛ أما الوظيفية فتصنيف باعتبار الغرض.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q4', 'exam_primary_2022_didactics_ar_nov', 4, 'مكون الكتابة — السنة الثالثة', 'عناصر مكون الكتابة في السنة الثالثة هي:', false, '[{"id": "A", "text": "نقل - تمارين كتابية - تعبير كتابي"}, {"id": "B", "text": "نقل - تطبيقات كتابية - تعبير كتابي"}, {"id": "C", "text": "إملاء - تمارين كتابية - تعبير كتابي"}, {"id": "D", "text": "إملاء - تطبيقات كتابية - تعبير كتابي"}]'::jsonb, ARRAY['D']::text[], 'في السنة الثالثة: الإملاء والتطبيقات الكتابية والتعبير الكتابي؛ النقل خاص بالسنتين الأولى والثانية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q5', 'exam_primary_2022_didactics_ar_nov', 5, 'الحكاية', 'تستثمر الحكاية في السنوات:', false, '[{"id": "A", "text": "الأولى والثانية والرابعة"}, {"id": "B", "text": "الأولى والثانية والخامسة"}, {"id": "C", "text": "الأولى والثانية والثالثة"}, {"id": "D", "text": "الأولى والثانية والسادسة"}]'::jsonb, ARRAY['C']::text[], 'تُعتمد الحكاية في السنوات الأولى والثانية والثالثة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q6', 'exam_primary_2022_didactics_ar_nov', 6, 'الطلاقة', 'من بين أهداف الطلاقة:', false, '[{"id": "A", "text": "استظهار نص بسرعة وبطريقة معبرة."}, {"id": "B", "text": "تمييز المقاطع الصوتية والكلمات في الجمل المسموعة."}, {"id": "C", "text": "ترجمة الحروف والحركات المكتوبة إلى أصوات منطوقة."}, {"id": "D", "text": "قراءة نص بدقة وسرعة وبطريقة معبرة."}]'::jsonb, ARRAY['D']::text[], 'الطلاقة: القراءة بدقة وسرعة وتعبير مناسب.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q7', 'exam_primary_2022_didactics_ar_nov', 7, 'الحكاية — مراحل استثمارها', 'تستثمر الحكاية عبر المراحل المتتالية الآتية:', false, '[{"id": "A", "text": "الملاحظة والتوقع - عناصر الحكاية - بنية الحكاية - القيم - الأساليب والظواهر اللغوية - الرصيد اللغوي - التشخيص - الإنتاج"}, {"id": "B", "text": "الملاحظة والتوقع - عناصر الحكاية - بنية الحكاية - الرصيد اللغوي - الأساليب والظواهر اللغوية - القيم - التشخيص - الإنتاج"}, {"id": "C", "text": "الملاحظة والتوقع - عناصر الحكاية - بنية الحكاية - الرصيد اللغوي - الأساليب والظواهر اللغوية - القيم - التشخيص - الإنتاج"}, {"id": "D", "text": "الملاحظة والتوقع - عناصر الحكاية - بنية الحكاية - القيم - الرصيد اللغوي - الأساليب والظواهر اللغوية - التشخيص - الإنتاج"}]'::jsonb, ARRAY['B']::text[], 'يُنتقل من الفهم (الملاحظة والتوقع، عناصر الحكاية، بنيتها) إلى اللغة (الرصيد، الأساليب والظواهر) ثم القيم، فالتشخيص والإنتاج.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ الخياران B وC متطابقان تماماً في ورقة الامتحان الأصلية (خطأ مطبعي محتمل في الورقة) والمصدر يعطي الجواب B؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q8', 'exam_primary_2022_didactics_ar_nov', 8, 'الكتابة التفاعلية', 'مراحل الكتابة التفاعلية هي:', false, '[{"id": "A", "text": "التخطيط - الممارسة الموجهة - الممارسة المستقلة - العرض"}, {"id": "B", "text": "التخطيط - الممارسة الموجهة - المراجعة - العرض"}, {"id": "C", "text": "التخطيط - المسودة - الممارسة المستقلة - العرض"}, {"id": "D", "text": "التخطيط - المسودة - المراجعة - العرض"}]'::jsonb, ARRAY['D']::text[], 'مراحل الكتابة كسيرورة: التخطيط، كتابة المسودة، المراجعة، ثم العرض/النشر.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q9', 'exam_primary_2022_didactics_ar_nov', 9, 'استراتيجيات ما قبل القراءة', 'من بين استراتيجيات ما قبل القراءة:', false, '[{"id": "A", "text": "التصفح الأولي - تحديد الهدف من القراءة - وضع توقعات قبلية - استثمار المعرفة القبلية"}, {"id": "B", "text": "التصفح الأولي - تحديد الهدف من القراءة - وضع توقعات قبلية - تقديم تلخيص للنص"}, {"id": "C", "text": "التصفح الأولي - تحديد الهدف من القراءة - وضع توقعات قبلية - تقديم الفكرة العامة"}, {"id": "D", "text": "التصفح الأولي - تحديد الهدف من القراءة - وضع توقعات قبلية - إغناء الرصيد المعجمي"}]'::jsonb, ARRAY['A']::text[], 'استثمار المعرفة القبلية استراتيجية قبلية؛ التلخيص والفكرة العامة تأتيان أثناء القراءة أو بعدها.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q10', 'exam_primary_2022_didactics_ar_nov', 10, 'مكون الكتابة — السنة السادسة', 'عناصر مكون الكتابة في السنة السادسة هي:', false, '[{"id": "A", "text": "الإملاء والتطبيقات الكتابية - التعبير الكتابي"}, {"id": "B", "text": "الإملاء والتمارين الكتابية - التعبير الكتابي"}, {"id": "C", "text": "الشكل والتطبيقات الكتابية - التعبير الكتابي"}, {"id": "D", "text": "الشكل والتمارين الكتابية - التعبير الكتابي"}]'::jsonb, ARRAY['C']::text[], 'في السنة السادسة يحل الشكل محل الإملاء إلى جانب التطبيقات الكتابية والتعبير الكتابي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', false, 'الجواب موسوم «للتحقق» في مصدر الحل (manasseb.com)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q11', 'exam_primary_2022_didactics_ar_nov', 11, 'الاستماع والتحدث', 'من بين أهداف أنشطة الاستماع والتحدث:', false, '[{"id": "A", "text": "تحليل المقروء وتحديد عناصره."}, {"id": "B", "text": "تمييز عناصر الحكاية التي استمع المتعلم إليها."}, {"id": "C", "text": "إعادة إنتاج المقروء بلغة عربية فصيحة."}, {"id": "D", "text": "التحقق من التوقع بعد قراءة النص ومناقشته."}]'::jsonb, ARRAY['B']::text[], 'هدف استماعي: تمييز عناصر الحكاية المسموعة؛ باقي الاقتراحات تخص المقروء.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q12', 'exam_primary_2022_didactics_ar_nov', 12, 'مكون الكتابة — السنتان الخامسة والسادسة', 'من بين أهداف مكون الكتابة في السنتين الخامسة والسادسة:', false, '[{"id": "A", "text": "استحضار التعلمات والمكتسبات السابقة، واستثمارها الاستثمار الأنسب في الكتابة."}, {"id": "B", "text": "التواصل شفهيا باستعمال رصيد معجمي وظيفي حسب سياقات تواصلية."}, {"id": "C", "text": "دعم المتعلم(ة) رأيه في المقروء بحجج وأدلة مناسبة."}, {"id": "D", "text": "اكتساب آليات التعامل مع مختلف أنواع النصوص القرائية."}]'::jsonb, ARRAY['A']::text[], 'توظيف المكتسبات في الكتابة؛ B تواصل شفهي وC وD قراءة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q13', 'exam_primary_2022_didactics_ar_nov', 13, 'مكون الكتابة — السنوات الثلاث الأولى', 'من بين أهداف مكون الكتابة، في السنوات الثلاث الأولى:', false, '[{"id": "A", "text": "إعادة إنتاج المقروء بلغة عربية فصيحة."}, {"id": "B", "text": "نقل كلمات وجمل ونصوص قصيرة بتطبيق مقاييس الخط."}, {"id": "C", "text": "تحليل المقروء وتحديد عناصره."}, {"id": "D", "text": "إعادة المتعلم(ة) ما سمعه بأسلوبه الخاص."}]'::jsonb, ARRAY['B']::text[], 'النقل بتطبيق مقاييس الخط من أهداف الكتابة في السنوات الأولى.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q14', 'exam_primary_2022_didactics_ar_nov', 14, 'النص الوظيفي', 'يعتبر النص الوظيفي مجالا لتنمية:', false, '[{"id": "A", "text": "الطلاقة وإغناء المعجم والفهم الصريح واستثمار الأساليب والتراكيب والقيم."}, {"id": "B", "text": "الطلاقة وإغناء المعجم والفهم الضمني واستثمار الأساليب والتراكيب والقيم."}, {"id": "C", "text": "الطلاقة وإغناء المعجم والفهم الصريح والضمني واستثمار الأساليب والتراكيب والقيم."}, {"id": "D", "text": "الطلاقة والفهم الصريح والضمني واستثمار الأساليب والتراكيب والقيم."}]'::jsonb, ARRAY['C']::text[], 'النص الوظيفي يخدم الطلاقة والمعجم والفهم بشقيه الصريح والضمني والأساليب والتراكيب والقيم (الجواب الأشمل).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة نونبر 2022) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_ar_nov_q15', 'exam_primary_2022_didactics_ar_nov', 15, 'اكتساب اللغة', 'تُكتسب اللغة، في المستويات الثلاثة الأولى، عبر التسلسل الآتي:', false, '[{"id": "A", "text": "القراءة - الاستماع - الكتابة - التحدث"}, {"id": "B", "text": "القراءة - الاستماع - التحدث - الكتابة"}, {"id": "C", "text": "الاستماع - التحدث - الكتابة - القراءة"}, {"id": "D", "text": "الاستماع - التحدث - القراءة - الكتابة"}]'::jsonb, ARRAY['D']::text[], 'التسلسل الطبيعي لاكتساب اللغة: الاستماع ثم التحدث ثم القراءة ثم الكتابة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41910-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;