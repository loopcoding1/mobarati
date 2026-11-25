-- ====================================================================
-- مباراتي — امتحان مستجدات نظام التربية والتكوين، دورة دجنبر 2018
-- (التعليم الابتدائي — التخصص المزدوج واللغة الأمازيغية)
-- ====================================================================
-- المصدر: ملف الحل solved/2018/مستجدات التعليم - امتحان.md
--   (سجل الامتحانات رقم 30؛ الحل من المفتاح الرسمي في مجلد الامتحان)
--   ملف الامتحان: exams-ibtida2i/2018/مستجدات التعليم - امتحان.pdf (4 صفحات، ممسوح).
--   ملف التصحيح الرسمي: exams-ibtida2i/2018/تصحيح مستجدات التعليم.pdf (3 صفحات).
--   حل منشور للمقارنة (الوضعية الأولى فقط، إعداد د. محمد كوحيلة):
--   https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q25 وخياراته مطابق حرفياً لورقة الامتحان.
--   * الأجوبة كلها من المفتاح الرسمي (source_type = official)؛ التعليلات الموجزة
--     لأسئلة الوضعية الأولى مضافة من المحرر وتستند إلى نص الامتحان والمراجع المعروفة.
--   * بنية الامتحان: وضعيتان (20ن + 20ن)، المجموع 40 نقطة، المدة 90 دقيقة، المعامل 2.
--     الوضعية الأولى: 20 عنصراً موضوعياً (QCM 6ن + إتمام قوائم 5ن + صحيح/خطأ 4ن
--     + ربط بسهم 5ن)، نقطة واحدة لكل عنصر حسب عناوين الأجزاء في المفتاح الرسمي.
--     الوضعية الثانية: 5 أسئلة مفتوحة (3ن + 4ن + 4ن + 5ن + 4ن)؛ ترقيم SQL لها 21–25.
--   * ترقيم SQL: 1–20 = ترقيم الامتحان للوضعية الأولى؛ 21–25 = أسئلة الوضعية الثانية (1–5).
--
-- تعارضات الحل المنشور (taalimpress) مع المفتاح الرسمي — المعتمد هو الرسمي:
--   Q1: المنشور أ (وثيقة دستورية) ← الرسمي ب (توجهات عامة).
--   Q6: المنشور أ (تابعة للجماعة الترابية) ← الرسمي ج (مندمجة).
--   Q7: المنشور «الامتحان الموحد على صعيد المؤسسة» ← الرسمي «الامتحان الموحد المحلي».
--   Q8: المنشور «العلوم» ← الرسمي «مجال العلوم والرياضيات».
--   Q9: المنشور «التربية على الاختيار» ← الرسمي «تنظيم الدراسة».
--   Q17: المنشور يذكر الحرف ج مع نص «تجاوز تعثراتهم» (= الخيار د في الورقة) ← الرسمي د.
--   (مسجلة أيضاً في verification_note لكل سؤال معني.)
--
-- ملاحظات:
--   * السؤال 24 (الوضعية الثانية، السؤال 4): المفتاح يشترط مثالين توضيحيين؛ مثال التفاعل
--     مع المعارف من اختيار المترشح، وأمثلة تمثل القيم مذكورة في المفتاح نفسه.
--   * السؤال 22: «المقاربة العملية» كما هي مطبوعة في المفتاح؛ المصطلح المتداول في وثائق
--     المنهاج هو «المقاربة بالفعل».
--   * تاريخ الإجراء: السبت 22 دجنبر 2018 (حسب إعلانات الأكاديميات الجهوية).
--
-- أسئلة متخطاة: لا شيء — جميع الأسئلة الـ25 لها جواب معتمد وأُدرجت كلها.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_sciences_edu_dec', 'specialty_primary', 2018, 'sciences_edu', 'مستجدات نظام التربية والتكوين', 'امتحان مستجدات نظام التربية والتكوين — دورة دجنبر 2018', 'دورة دجنبر 2018', 90, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً: QCM وإتمام وصحيح/خطأ وربط وأسئلة مفتوحة)

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q1', 'exam_primary_2018_sciences_edu_dec', 1, 'الوضعية الأولى — اختيار من متعدد', 'يقصد بالميثاق الوارد في النص:', false, '[{"id": "A", "text": "وثيقة دستورية"}, {"id": "B", "text": "توجهات عامة"}, {"id": "C", "text": "مخطط مرحلي"}, {"id": "D", "text": "استراتيجية تدبيرية"}]'::jsonb, ARRAY['B']::text[], 'الميثاق المقصود في النص هو الميثاق الوطني للتربية والتكوين (1999)، وهو وثيقة مرجعية وطنية تحدد التوجهات العامة لإصلاح منظومة التربية والتكوين، وليس وثيقة دستورية ولا مخططا مرحليا.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'تعارض مع الحل المنشور على taalimpress (يقول أ: وثيقة دستورية)؛ المعتمد هو المفتاح الرسمي: ب.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q2', 'exam_primary_2018_sciences_edu_dec', 2, 'الوضعية الأولى — اختيار من متعدد', 'الشراكة:', false, '[{"id": "A", "text": "تدبير للتعلمات"}, {"id": "B", "text": "تدبير جماعي"}, {"id": "C", "text": "تدبير الشراكة"}, {"id": "D", "text": "تدبير توقعي"}]'::jsonb, ARRAY['B']::text[], 'الشراكة كما يصفها النص (شراكة تعاقدية مع الجماعات الترابية والقطاع الخاص، وإشراك المؤسسات الاقتصادية) هي تدبير جماعي تشاركي لشؤون التمدرس، يقوم على تعبئة مختلف الفاعلين والشركاء.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q3', 'exam_primary_2018_sciences_edu_dec', 3, 'الوضعية الأولى — اختيار من متعدد', 'تستهدف التربية غير النظامية:', false, '[{"id": "A", "text": "الفئات المتمدرسة"}, {"id": "B", "text": "الفئات ذات الاحتياجات الخاصة"}, {"id": "C", "text": "الفئات المستفيدة من مسار"}, {"id": "D", "text": "الفئات المنقطعة عن الدراسة"}]'::jsonb, ARRAY['D']::text[], 'التربية غير النظامية (مدرسة الفرصة الثانية) موجهة أساسا للأطفال واليافعين المنقطعين عن الدراسة أو غير المتمدرسين، لإعادة إدماجهم في التعليم أو التكوين. والنص نفسه يربطها بتمويل برامج التربية غير النظامية ومحو الأمية.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q4', 'exam_primary_2018_sciences_edu_dec', 4, 'الوضعية الأولى — اختيار من متعدد', 'النظرية التي اهتمت بنمو الطفل هي:', false, '[{"id": "A", "text": "السلوكية"}, {"id": "B", "text": "الجشطالتية"}, {"id": "C", "text": "اللاتوجيهية"}, {"id": "D", "text": "التحليل النفسي"}]'::jsonb, ARRAY['D']::text[], 'نظرية التحليل النفسي لسيغموند فرويد هي التي بنت تصورا لمراحل نمو الطفل (المرحلة الفمية، الشرجية، القضيبية، الكمون، التناسلية). أما السلوكية والجشطالتية فهما نظريتان في التعلم لا في نمو الطفل.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q5', 'exam_primary_2018_sciences_edu_dec', 5, 'الوضعية الأولى — اختيار من متعدد', 'أحد هؤلاء أسس لنظرية الحرية في التربية:', false, '[{"id": "A", "text": "سكينر"}, {"id": "B", "text": "ابن خلدون"}, {"id": "C", "text": "واطسون"}, {"id": "D", "text": "روسو"}]'::jsonb, ARRAY['D']::text[], 'جان جاك روسو، صاحب كتاب «إميل أو التربية»، هو مؤسس نظرية الحرية في التربية (التربية السلبية): دعا إلى ترك الطفولة تنضج في الطفل دون وصاية، وإلى احترام الطبيعة وحريتها. أما سكينر وواطسون فسلوكيان، وابن خلدون مفكر تربوي كلاسيكي لا يرتبط بنظرية الحرية الحديثة.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q6', 'exam_primary_2018_sciences_edu_dec', 6, 'الوضعية الأولى — اختيار من متعدد', 'المدرسة الجماعاتية:', false, '[{"id": "A", "text": "مؤسسة تعليمية تابعة للجماعة الترابية"}, {"id": "B", "text": "مؤسسة تعليمية داخلية"}, {"id": "C", "text": "مؤسسة تعليمية مندمجة"}, {"id": "D", "text": "مؤسسة تعليمية تسير بشكل جماعي"}]'::jsonb, ARRAY['C']::text[], 'المدرسة الجماعاتية مؤسسة تعليمية مندمجة تجمع في بنية واحدة عدة مدارس أو مستويات (وغالبا مع الداخليات) في العالم القروي، لضمان جودة التعليم وتقليص التشتت.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'تعارض مع الحل المنشور على taalimpress (يقول أ: مؤسسة تعليمية تابعة للجماعة الترابية)؛ المعتمد هو المفتاح الرسمي: ج.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q7', 'exam_primary_2018_sciences_edu_dec', 7, 'الوضعية الأولى — إتمام القوائم', 'مكونات امتحان نيل شهادة الدروس الابتدائية هي: الامتحان الموحد الإقليمي، [...]، المراقبة المستمرة. ما العنصر الناقص؟', false, '[]'::jsonb, ARRAY[]::text[], 'العنصر الناقص: الامتحان الموحد المحلي. مكونات الامتحان الثلاثة هي: الامتحان الموحد الإقليمي، والامتحان الموحد المحلي (على صعيد المؤسسة)، والمراقبة المستمرة.', 'open', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'تعارض مع الحل المنشور (يسمي العنصر «الامتحان الموحد على صعيد المؤسسة»)؛ المعتمد صيغة المفتاح الرسمي: الامتحان الموحد المحلي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q8', 'exam_primary_2018_sciences_edu_dec', 8, 'الوضعية الأولى — إتمام القوائم', 'تنتظم التعلمات بالتعليم الابتدائي في مجالات هي: مجال اللغات، [...]، التربية على السلوك المدني. ما المجال الناقص؟', false, '[]'::jsonb, ARRAY[]::text[], 'المجال الناقص: مجال العلوم والرياضيات. مجالات التعلم الثلاثة هي: مجال اللغات، ومجال العلوم والرياضيات، والتربية على السلوك المدني.', 'open', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'تعارض مع الحل المنشور (يقول «العلوم» فقط)؛ المعتمد صيغة المفتاح الرسمي: مجال العلوم والرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q9', 'exam_primary_2018_sciences_edu_dec', 9, 'الوضعية الأولى — إتمام القوائم', 'يقوم إصلاح النظام التربوي في الكتاب الأبيض على أربعة اختيارات هي: القيم، الكفايات، المضامين، [...]. ما الاختيار الناقص؟', false, '[]'::jsonb, ARRAY[]::text[], 'الاختيار الناقص: تنظيم الدراسة. اختيارات الكتاب الأبيض الأربعة هي: التربية على القيم، والكفايات، والمضامين، وتنظيم الدراسة.', 'open', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'تعارض مع الحل المنشور (يقول «التربية على الاختيار»)؛ المعتمد هو المفتاح الرسمي: تنظيم الدراسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q10', 'exam_primary_2018_sciences_edu_dec', 10, 'الوضعية الأولى — إتمام القوائم', 'تتحدد اختيارات النظام التربوي الأسلمية في مجال القيم في: قيم الشريعة الإسلامية، القيم الحضارية ومبادئها الأخلاقية والثقافية، قيم حقوق الإنسان ومبادئها الكونية، [...]. ما العنصر الناقص؟', false, '[]'::jsonb, ARRAY[]::text[], 'العنصر الناقص: قيم المواطنة. في مجال القيم، يحدد الكتاب الأبيض أربعة اختيارات أسلمية: قيم الشريعة الإسلامية، والقيم الحضارية ومبادئها الأخلاقية والثقافية، وقيم حقوق الإنسان ومبادئها الكونية، وقيم المواطنة.', 'open', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q11', 'exam_primary_2018_sciences_edu_dec', 11, 'الوضعية الأولى — إتمام القوائم', 'يستهدف المنهاج الدراسي المغربي الكفايات الآتية: الكفاية الثقافية، الكفاية المنهجية، الكفاية التواصلية، الكفاية التكنولوجية، الكفاية [...]. ما الكفاية الناقصة؟', false, '[]'::jsonb, ARRAY[]::text[], 'الكفاية الناقصة: الكفاية الاستراتيجية. الكفايات الخمس التي يستهدفها المنهاج الدراسي المغربي هي: الثقافية، والمنهجية، والتواصلية، والتكنولوجية، والاستراتيجية (وتشمل التعرف على الذات والتعبير عنها والتموقع في الزمان والمكان وبالنسبة للآخر).', 'open', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q12', 'exam_primary_2018_sciences_edu_dec', 12, 'الوضعية الأولى — صحيح أو خطأ', 'يهم الكتاب الأبيض مجال البرامج والمناهج.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الكتاب الأبيض (2002) وثيقة مرجعية تحدد اختيارات إصلاح المنظومة التربوية في مجالات القيم والكفايات والمضامين وتنظيم الدراسة، أي في صلب البرامج والمناهج.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q13', 'exam_primary_2018_sciences_edu_dec', 13, 'الوضعية الأولى — صحيح أو خطأ', 'يعتبر مشروع المؤسسة قانونا داخليا لتدبير المؤسسة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'مشروع المؤسسة خطة عمل تربوية وبيداغوجية تشاركية لتطوير أداء المؤسسة، وليس قانونا داخليا؛ القانون الداخلي وثيقة تنظيمية مستقلة تحدد قواعد السير والانضباط داخل المؤسسة.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q14', 'exam_primary_2018_sciences_edu_dec', 14, 'الوضعية الأولى — صحيح أو خطأ', 'الكتاب المدرسي هو المقرر الدراسي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الكتاب المدرسي دعامة ديداكتيكية (وسيلة تعلمية) من بين الوسائل، أما المقرر الدراسي فهو مجموع المضامين والبرامج والمحتويات المقررة رسميا لتدريس مادة أو مستوى؛ فالكتاب وسيلة لتنفيذ المقرر وليس هو المقرر نفسه.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q15', 'exam_primary_2018_sciences_edu_dec', 15, 'الوضعية الأولى — صحيح أو خطأ', 'تنحصر وظيفة التقويم الإجمالي في رصد تعثرات المتعلمين/ت.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'رصد تعثرات المتعلمين وظيفة التقويم التكويني (والتشخيصي)، أما التقويم الإجمالي (الإشهادي) فيأتي في نهاية مرحلة ليصدر حكما شاملا على المكتسبات ويتخذ قرارات (النجاح، الانتقال، الشهادة)، ولا تنحصر وظيفته في رصد التعثرات.', 'qcm', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q16', 'exam_primary_2018_sciences_edu_dec', 16, 'الوضعية الأولى — الربط بسهم', 'صل/ي بسهم: الدعم الاجتماعي ← ؟', false, '[{"id": "A", "text": "تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين"}, {"id": "B", "text": "تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت"}, {"id": "C", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم"}, {"id": "D", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم"}, {"id": "E", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم"}, {"id": "F", "text": "تطبيق معلوماتي لتدبير عملية الدعم الاجتماعي"}]'::jsonb, ARRAY['C']::text[], 'المطابقة الصحيحة: الدعم الاجتماعي ← آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم. الدعم الاجتماعي (الإطعام، النقل، المحفظة، الداخليات...) يزيل العوائق المادية والاجتماعية التي تهدد تمدرس التلاميذ، فيمكنهم من مواصلة دراستهم.', 'matching', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q17', 'exam_primary_2018_sciences_edu_dec', 17, 'الوضعية الأولى — الربط بسهم', 'صل/ي بسهم: الدعم النفسي ← ؟', false, '[{"id": "A", "text": "تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين"}, {"id": "B", "text": "تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت"}, {"id": "C", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم"}, {"id": "D", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم"}, {"id": "E", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم"}, {"id": "F", "text": "تطبيق معلوماتي لتدبير عملية الدعم الاجتماعي"}]'::jsonb, ARRAY['D']::text[], 'المطابقة الصحيحة: الدعم النفسي ← آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم. الدعم النفسي يرافق التلاميذ الذين يعانون صعوبات نفسية أو تعثرات في التعلم، ويساعدهم على تجاوزها.', 'matching', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, 'الحل المنشور على taalimpress يذكر الحرف ج مع هذا النص؛ نص الخيار في ورقة الامتحان هو د، والمعتمد هو المفتاح الرسمي: د.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q18', 'exam_primary_2018_sciences_edu_dec', 18, 'الوضعية الأولى — الربط بسهم', 'صل/ي بسهم: منظومة مسار ← ؟', false, '[{"id": "A", "text": "تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين"}, {"id": "B", "text": "تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت"}, {"id": "C", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم"}, {"id": "D", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم"}, {"id": "E", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم"}, {"id": "F", "text": "تطبيق معلوماتي لتدبير عملية الدعم الاجتماعي"}]'::jsonb, ARRAY['B']::text[], 'المطابقة الصحيحة: منظومة مسار ← تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت. منظومة «مسار» نظام معلوماتي وطني لتدبير تمدرس التلاميذ: التسجيل، النقط، الغياب، النتائج، التوجيه.', 'matching', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q19', 'exam_primary_2018_sciences_edu_dec', 19, 'الوضعية الأولى — الربط بسهم', 'صل/ي بسهم: منظومة مسير ← ؟', false, '[{"id": "A", "text": "تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين"}, {"id": "B", "text": "تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت"}, {"id": "C", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم"}, {"id": "D", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم"}, {"id": "E", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم"}, {"id": "F", "text": "تطبيق معلوماتي لتدبير عملية الدعم الاجتماعي"}]'::jsonb, ARRAY['A']::text[], 'المطابقة الصحيحة: منظومة مسير ← تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين. منظومة «مسير» نظام معلوماتي لتدبير الموارد البشرية (أطر هيئة التدريس والإدارة) في قطاع التربية والتكوين.', 'matching', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q20', 'exam_primary_2018_sciences_edu_dec', 20, 'الوضعية الأولى — الربط بسهم', 'صل/ي بسهم: الدعم المندمج ← ؟', false, '[{"id": "A", "text": "تطبيق معلوماتي لتدبير الموارد البشرية لقطاع التربية والتكوين"}, {"id": "B", "text": "تطبيق معلوماتي لتدبير المسار الدراسي للتلاميذ/ت"}, {"id": "C", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على مواصلة دراستهم"}, {"id": "D", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تجاوز تعثراتهم"}, {"id": "E", "text": "آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم"}, {"id": "F", "text": "تطبيق معلوماتي لتدبير عملية الدعم الاجتماعي"}]'::jsonb, ARRAY['E']::text[], 'المطابقة الصحيحة: الدعم المندمج ← آلية لدعم التلاميذ/ت ومساعدتهم على تحسين تعلماتهم. الدعم المندمج يجمع بين أشكال الدعم (البيداغوجي والاجتماعي والنفسي) داخل سيرورة التعلم نفسها، بهدف تحسين تعلمات التلاميذ.', 'matching', 'official', 'https://www.taalimpress.info/2018/12/22-2018_26.html?hl=en', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q21', 'exam_primary_2018_sciences_edu_dec', 21, 'الوضعية الثانية — أسئلة مفتوحة (مراجعة المناهج)', 'بيّن/ي من خلال النص أهداف مراجعة المنهاج الدراسي للتعليم الابتدائي، والنتائج المترتبة عنها.', false, '[]'::jsonb, ARRAY[]::text[], 'أهداف مراجعة المنهاج الدراسي للتعليم الابتدائي انطلاقا من النص: ملاءمة المنهاج لمتطلبات إعداد المتعلمين/ات للانخراط في مجتمع المعرفة والتواصل؛ تعزيز تفاعلهم مع القيم والمعارف وتمثلهم للقيم التي يقتضيها التعليم العصري والجيد؛ تنمية قدراتهم وكفاياتهم الذاتية، وصقل مهاراتهم؛ تفعيل الذكاء والحس النقدي وتفتح ملكات الإبداع والابتكار لديهم؛ تشجيعهم على التشبع بقواعد العيش المشترك والالتزام بقيم الحرية والمساواة واحترام التنوع والاختلاف. نتائج المراجعة: توفير الأدوات الكفيلة بتوجيه الممارسة التربوية؛ ضمان الانسجام والتفاعل بين مكونات المنهاج؛ تيسير الأداء المهني لمختلف الفاعلين؛ تحيين مختلف مكونات المنهاج الدراسي.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q22', 'exam_primary_2018_sciences_edu_dec', 22, 'الوضعية الثانية — أسئلة مفتوحة (مراجعة المناهج)', 'أذكر/ي منطلقات مراجعة البرامج والمناهج. وبين/ي أهمية استحضار نتائج التقويمات الوطنية والدولية في عملية المراجعة.', false, '[]'::jsonb, ARRAY[]::text[], 'منطلقات مراجعة المناهج كما وردت في النص: حصيلة التجديدات التربوية التي شهدتها منظومة التربية والتكوين ببلادنا؛ نتائج الأبحاث والدراسات العلمية والتربوية، وكذا التقويمات الوطنية والدولية؛ الأسس الثقافية والاجتماعية للمجتمع المغربي؛ سلم القيم بسلك التعليم الابتدائي؛ وتيرة النمو الجسدي للمتعلم(ة) ونضج شخصيته في أبعاده العقلية والمهارية والوجدانية؛ اعتماد مختلف المعارف وأساليب التعبير اللغوي والفكري والفني والجسدي لديه. استحضار نتائج التقويمات الوطنية والدولية: يشير المترشح إلى استثمار نتائج تقويم التحصيل الدراسي في اللغة والرياضيات والعلوم التي أنجزت في إطار برامج دولية (بيرلز Pirls، وتيمس Timss) أو في إطار البرنامج الوطني لتقويم التعلمات PNEA، التي أبانت جميعها على ضعف تحصيل التلاميذ، وخاصة المواد الأساسية (اللغة العربية باعتماد منهجية القراءة المبكرة، واللغة الفرنسية باعتماد المقاربة التي تنطلق من اعتبار المتعلم فاعلا اجتماعيا (المقاربة العملية)، والرياضيات: تجديد منهجية التدريس).', 'open', 'official', NULL, true, '«المقاربة العملية» كما هي مطبوعة في المفتاح الرسمي؛ المصطلح المتداول في وثائق المنهاج هو «المقاربة بالفعل».')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q23', 'exam_primary_2018_sciences_edu_dec', 23, 'الوضعية الثانية — أسئلة مفتوحة (مراجعة المناهج)', 'وضح/ي وظيفة المنهاج في توجيه عمل المدرس/ة وتطوير كفاياته المهنية.', false, '[]'::jsonb, ARRAY[]::text[], 'توجيه عمل المدرس: استناد المدرس في عمله، سواء على مستوى التخطيط أم في مستوى التنفيذ أم في مستوى التقويم، إلى المنهاج باعتباره الإطار الذي تنتظم فيه مختلف مكونات العملية التعليمية التعلمية. تطوير كفاياته: يبين المترشح أن العودة المستمرة إلى المنهاج في إنجاز مختلف العمليات التي تترجم وظيفة التدريس (تحديد الأهداف وتحقيقها، تحديد المضامين وطرائق تدبير التعلمات، وانتقاء تقنيات التنشيط الملائمة والوسائل الداعمة، في استحضار لحاجات المتعلمين والفوارق الموجودة بينهم، واختيار أدوات التقويم وصيغ الدعم) — كل ذلك يساعد المدرس على امتلاك حس نقدي وموقف تبصري، ويمده بآليات التطوير المستمر لكفاياته المهنية.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q24', 'exam_primary_2018_sciences_edu_dec', 24, 'الوضعية الثانية — أسئلة مفتوحة (مراجعة المناهج)', 'بين/ي دور طرائق التنشيط في تعزيز تفاعل التلاميذ/ات مع المعارف من جهة، وتمثلهم للقيم من جهة أخرى، معزز/ة جوابك بمثالين توضيحيين.', false, '[]'::jsonb, ARRAY[]::text[], 'طرائق التنشيط وتعزيز تفاعل التلاميذ/ات مع المعارف: أهمية توظيف الطرائق المتنوعة من أجل حفز المتعلمات والمتعلمين وجعلهم يدركون وظيفة المعارف ومكانها في سياقات مختلفة، مما يعزز انخراطهم على نحو فعال في سيرورة بناء تعلماتهم (مع تقديم مثال توضيحي). طرائق التنشيط وتمثل القيم: اعتماد تقنيات التنشيط يجعل المتعلمات والمتعلمين يتمثلون القيمة العملية للقيم، كما يجعلهم يدركون معنى القيم ودلالاتها من خلال التعلم. على سبيل المثال: العمل الجماعي، التعاون، تقدير المسؤولية والقدرة على تحملها، الحق في الاختلاف، احترام الآخر...', 'open', 'official', NULL, true, 'المفتاح الرسمي يشترط مثالين توضيحيين؛ مثال التفاعل مع المعارف من اختيار المترشح، وأمثلة تمثل القيم مذكورة في المفتاح نفسه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة دجنبر 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_dec_q25', 'exam_primary_2018_sciences_edu_dec', 25, 'الوضعية الثانية — أسئلة مفتوحة (مراجعة المناهج)', 'لتدبير التعلمات في الأقسام المتعددة المستويات (الأقسام المشتركة) مقتضيات بيداغوجية يلزم على المدرس/ة التقيد بها. وضح/ي ذلك.', false, '[]'::jsonb, ARRAY[]::text[], 'تعريف الأقسام المشتركة: هي أقسام تجمع مستويين مختلفين (وقد تضم أكثر من مستويين) في حجرة واحدة تحت مسؤولية أستاذ(ة) واحد/ة يشتغل على برنامجين دراسيين (أو أكثر)؛ والإشارة إلى حجم هذه الظاهرة بالمدرسة المغربية وخاصة بالعالم القروي، مما اقتضى التفكير في سبل جديدة تستهدف الارتقاء بأداء المدرس وتحسين جودة التعلمات. المقتضيات البيداغوجية: الإلمام بالبرامج الدراسية المختلفة ومضامينها وتحديد التمفصلات الموجودة بينها؛ إعادة تنظيم الموارد على النحو الذي يضمن النجاعة لعملية التدريس؛ تدبير الزمن تدبيرا خاصا؛ التمييز بين التعلمات المتجانسة والتعلمات المتباينة؛ اعتماد مبدأ المراوحة بين العمل الموجه حيث ينجز الأستاذ أنشطة تعليمية تعلمية، والعمل المستقل حيث يكلف التلاميذ بالاشتغال في استقلال وفق تعليمات محددة؛ مراعاة الفروق الفردية في أبعادها الجسمية والعقلية والاجتماعية والوجدانية؛ تنظيم فضاء الفصل تنظيما وظيفيا؛ تنويع طرائق التدريس وانتقاء تقنيات التنشيط الملائمة.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
