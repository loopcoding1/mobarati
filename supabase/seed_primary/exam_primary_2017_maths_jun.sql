-- ====================================================================
-- مباراتي — امتحان ابتدائي: الرياضيات، دورة يونيو 2017
-- ====================================================================
-- المصدر: ملف الحل solved/2017/الرياضيات - 2017.md (سجل الامتحانات رقم 6)
--   ملف الامتحان: exams-ibtida2i/2017/الرياضيات - امتحان.pdf (4 صفحات).
--   ملف التصحيح: exams-ibtida2i/2017/تصحيح الرياضيات.pdf (3 صفحات) — تصحيح رسمي
--   (عناصر الإجابة، المركز الوطني للتقويم والامتحانات والتوجيه) وهو مرجع الأجوبة.
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال وخياراته مطابقة لورقة الامتحان؛ الأجوبة مأخوذة من مفتاح
--     التصحيح الرسمي (جداول X للاختيار من متعدد + عناصر إجابة المقالي).
--   * لم يعثر بحث Google على حل منشور كامل لهذا الامتحان نفسه
--     (mesconcours.ma يعرض فقط امتحاني التفتيش التربوي لماي 2017؛
--     concoursmarocofficiel.com يربط حزمة PDF دون حل مكتوب)؛
--     لذلك لم يستعمل AI Studio ولا حل طرف ثالث.
--   * الأسئلة المقالية الستة في الديداكتيك (Q12-Q17) بلا خيارات ولا جواب
--     وحيد: نص السؤال + عناصر الإجابة الرسمية في حقل explanation.
--   * السؤال 11 (Q3 ديداكتيك): الجواب من المفتاح الرسمي؛ التعليل تفسير
--     موسوم «للتحقق» في verification_note.
--   * السؤال 17 (Q6 ديداكتيك): عناصر الإجابة في التصحيح الرسمي مقطوعة
--     في أسفل الصفحة 3 من المسح؛ التعليل المقترح مبني على قواعد الديداكتيك
--     العامة وموسوم «للتحقق» في verification_note.
--   * لائحة الأثمنة في نشاط السؤال 11 غير واضحة تماما في المسح؛ لم تنسخ حرفيا.
--
-- ملاحظات عن ملف الامتحان:
--   * صيغة قديمة (يونيو 2017): 20 نقطة — الرياضيات (10 نقط: 5 اختيار من
--     متعدد + مسألتان) + ديداكتيك الرياضيات (10 نقط: 3 أسئلة اختيار من
--     متعدد، الأول بفرعين، + 6 أسئلة مقالية). المجموع 17 سؤالا.
--   * مدة الإنجاز 4 ساعات والمعامل 2 على الغلاف يخصان الاختبار الكامل
--     «في العلوم والرياضيات» (علوم + رياضيات)، ولا مدة خاصة بجزء
--     الرياضيات وحده؛ لذلك duration_minutes = 240 (مدة الاختبار الكامل؛ لا مدة خاصة بالجزء وحده).
--   * الآلة الحاسبة ممنوعة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2017_maths_jun
--   <exam_id>_q<n>  للأسئلة.  session: jun (دورة يونيو 2017).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_maths_jun', 'specialty_primary', 2017, 'maths', 'الرياضيات', 'اختبار في العلوم والرياضيات — الرياضيات وديداكتيك الرياضيات (دورة يونيو 2017)', 'دورة يونيو 2017', 240, 17)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (17 سؤالا: 9 اختيار من متعدد + 8 مقالية)

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q1', 'exam_primary_2017_maths_jun', 1, 'الرياضيات — اختيار من متعدد', 'ثمن القنطار الواحد من القمح هو 350 درهما. ارتفع ثمن القمح بنسبة 16%، إذن الثمن الجديد بالدرهم للقنطار الواحد من القمح هو:', false, '[{"id": "A", "text": "368"}, {"id": "B", "text": "410"}, {"id": "C", "text": "400"}, {"id": "D", "text": "406"}, {"id": "E", "text": "380"}]'::jsonb, ARRAY['D']::text[], 'الثمن الجديد = 350 × (1 + 16/100) = 350 × 1,16 = 406 درهما.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q2', 'exam_primary_2017_maths_jun', 2, 'الرياضيات — اختيار من متعدد', 'دائرة شعاعها r، إذن مساحة هذه الدائرة هي:', false, '[{"id": "A", "text": "π² × r"}, {"id": "B", "text": "2π × r²"}, {"id": "C", "text": "π × r"}, {"id": "D", "text": "2 × π × r"}, {"id": "E", "text": "π × r²"}]'::jsonb, ARRAY['E']::text[], 'مساحة الدائرة = π × r². أما 2 × π × r فهو المحيط، لا المساحة.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q3', 'exam_primary_2017_maths_jun', 3, 'الرياضيات — اختيار من متعدد', 'مكعب حرفه a، إذن حجم هذا المكعب هو:', false, '[{"id": "A", "text": "3a"}, {"id": "B", "text": "a³"}, {"id": "C", "text": "3a³"}, {"id": "D", "text": "a²"}, {"id": "E", "text": "3a²"}]'::jsonb, ARRAY['B']::text[], 'حجم المكعب = الحرف × الحرف × الحرف = a³.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q4', 'exam_primary_2017_maths_jun', 4, 'الرياضيات — اختيار من متعدد', 'نعتبر العدد M = 3 − 5/(1 + 3/2)؛ بعد تبسيط كتابة العدد M نتوصل إلى أن:', false, '[{"id": "A", "text": "M = 0"}, {"id": "B", "text": "M = 2,5"}, {"id": "C", "text": "M = 1"}, {"id": "D", "text": "M = 0,5"}, {"id": "E", "text": "M = 2"}]'::jsonb, ARRAY['C']::text[], '1 + 3/2 = 5/2، و5 ÷ (5/2) = 5 × (2/5) = 2، إذن M = 3 − 2 = 1.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q5', 'exam_primary_2017_maths_jun', 5, 'الرياضيات — اختيار من متعدد', 'سرعة الصوت في الهواء هي 3,4×10⁴ cm/s، إن المسافة التي سيقطعها الصوت في الهواء في دقيقة و40 ثانية هي:', false, '[{"id": "A", "text": "3,4 km"}, {"id": "B", "text": "340 km"}, {"id": "C", "text": "34 km"}, {"id": "D", "text": "3400 km"}, {"id": "E", "text": "134 km"}]'::jsonb, ARRAY['C']::text[], 'المدة = دقيقة و40 ثانية = 100 ثانية. المسافة = السرعة × المدة = 3,4×10⁴ × 100 = 3,4×10⁶ cm = 34 km (إذ 1 km = 10⁵ cm).', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q6', 'exam_primary_2017_maths_jun', 6, 'الرياضيات — مسائل', 'في مدرسة ابتدائية، تبين أنه عندما يوزع التلاميذ التابعين لها إلى مجموعات من 12 تلميذا أو 18 تلميذا أو 20 تلميذا، فإنه يبقى في كل مرة 3 تلاميذ غير منتمين للمجموعات المكونة. حدد (ي) عدد التلاميذ التابعين لهذه المدرسة إذا علمت أن هذا العدد محصور بين 700 و800.', false, '[]'::jsonb, ARRAY[]::text[], 'ليكن N عدد التلاميذ؛ العدد N − 3 مضاعف مشترك للأعداد 12 و18 و20. المضاعف المشترك الأصغر لها هو 180 (12 = 2²×3، 18 = 2×3²، 20 = 2²×5، إذن المضاعف المشترك الأصغر = 2²×3²×5 = 180). بين 700 و800، العدد الوحيد الذي ينقصه 3 ويقبل القسمة على 180 هو 720 + 3 = 723. تحقق: 720 = 12×60 = 18×40 = 20×36. الجواب: 723 تلميذا.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q7', 'exam_primary_2017_maths_jun', 7, 'الرياضيات — مسائل', 'نعتبر الشكل جانبه. حدد (ي) بـ cm²، مساحة المثلث ABH. (الشكل: ABCD شبه منحرف قائم الزاوية في D وفي C؛ AD = DH حسب علامتي التساوي على الشكل؛ DH = 3 cm، HC = 7 cm، BC = 5 cm؛ H نقطة على [DC]؛ المثلث ABH مظلل.)', false, '[]'::jsonb, ARRAY[]::text[], 'مساحة شبه المنحرف ABCD = (AD + BC) × DC / 2 = (3 + 5) × 10 / 2 = 40 cm². مساحة المثلث ADH = 3 × 3 / 2 = 4,5 cm². مساحة المثلث BCH = 7 × 5 / 2 = 17,5 cm². إذن مساحة المثلث ABH = 40 − 4,5 − 17,5 = 18 cm².', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q8', 'exam_primary_2017_maths_jun', 8, 'ديداكتيك الرياضيات — اختيار من متعدد', 'نجد في الأدبيات المتعلقة بصياغة الأهداف التعليمية في تدريس الرياضيات، التصنيف التالي: (A) هدف مرتبط بالمعرفة فقط (معرفي محض)؛ (B) هدف مرتبط بالمهارة (هدف مهاراتي)؛ (C) هدف مرتبط بالتعليل (هدف تعليلي)؛ (D) هدف مرتبط بمنهجية حل المسائل (هدف منهجي). «أن يميز المتعلم معطيات المسألة إلى معطيات أساسية، زائدة، ناقصة»، هو هدف من الصنف:', false, '[{"id": "A", "text": "هدف مرتبط بالمعرفة فقط (معرفي محض)"}, {"id": "B", "text": "هدف مرتبط بالمهارة (هدف مهاراتي)"}, {"id": "C", "text": "هدف مرتبط بالتعليل (هدف تعليلي)"}, {"id": "D", "text": "هدف مرتبط بمنهجية حل المسائل (هدف منهجي)"}]'::jsonb, ARRAY['D']::text[], 'تمييز معطيات المسألة (أساسية/زائدة/ناقصة) خطوة من خطوات منهجية حل المسائل (مرحلة فهم الوضعية وتحليلها)، وليس معرفة محضة ولا مهارة حسابية إجرائية.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q9', 'exam_primary_2017_maths_jun', 9, 'ديداكتيك الرياضيات — اختيار من متعدد', 'نجد في الأدبيات المتعلقة بصياغة الأهداف التعليمية في تدريس الرياضيات، التصنيف التالي: (A) هدف مرتبط بالمعرفة فقط (معرفي محض)؛ (B) هدف مرتبط بالمهارة (هدف مهاراتي)؛ (C) هدف مرتبط بالتعليل (هدف تعليلي)؛ (D) هدف مرتبط بمنهجية حل المسائل (هدف منهجي). «أن يستخدم المتعلم التقنية الاعتيادية للجمع بالاحتفاظ»، هو هدف من الصنف:', false, '[{"id": "A", "text": "هدف مرتبط بالمعرفة فقط (معرفي محض)"}, {"id": "B", "text": "هدف مرتبط بالمهارة (هدف مهاراتي)"}, {"id": "C", "text": "هدف مرتبط بالتعليل (هدف تعليلي)"}, {"id": "D", "text": "هدف مرتبط بمنهجية حل المسائل (هدف منهجي)"}]'::jsonb, ARRAY['B']::text[], 'استعمال التقنية الاعتيادية للجمع بالاحتفاظ مهارة إجرائية (إتقان خوارزمية حسابية)، فيصنف هدفا مهاراتيا.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q10', 'exam_primary_2017_maths_jun', 10, 'ديداكتيك الرياضيات — اختيار من متعدد', 'العقد الديدكتيكي (Le contrat didactique) هو:', false, '[{"id": "A", "text": "مجموعة تصرفات الأستاذ المنتظرة من المتعلم"}, {"id": "B", "text": "مجموعة تصرفات المتعلم المنتظرة من الأستاذ"}, {"id": "C", "text": "مجموعة قواعد معمول بها داخل القسم لا ترتبط بالضرورة بمادة دراسية معينة"}, {"id": "D", "text": "مجموعة قواعد ضمنية وأحيانا صريحة، تمكن من تحديد الأدوار المناسبة لكل من الأستاذ والمتعلم داخل القسم بالنسبة لتدريس معرفة معينة"}]'::jsonb, ARRAY['D']::text[], 'تعريف بروسو (Brousseau) للعقد الديدكتيكي: مجموع القواعد — الضمنية غالبا — التي تحدد ما ينتظره كل طرف (الأستاذ والمتعلم) من الآخر بالنسبة إلى معرفة معينة.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q11', 'exam_primary_2017_maths_jun', 11, 'ديداكتيك الرياضيات — اختيار من متعدد', 'اقترح (ت) أستاذ(ة) على المتعلمين النشاط التالي: اقرأ نص المسألة مع الأسئلة، ثم ضع علامة في الخانات المناسبة للجدول. المسألة: خرجت السيدة فاطمة على الساعة الثامنة صباحا من منزلها باتجاه السوق المركزي، وبحافظة نقودها 100 درهم، وبعد ساعة ونصف عادت إلى المنزل حاملة مشترياتها. أ- ما المبلغ الذي حملته فاطمة إلى السوق؟ ب- بكم يبعد البيت عن السوق؟ ج- ما هو المبلغ الذي صرفته لشراء الخضر؟ د- في أي ساعة عادت إلى المنزل؟ و- ما اسم اليوم الذي ذهبت فيه إلى السوق؟ (مع المسألة لائحة أثمنة المشتريات، والجدول بأعمدة: اقرأ الجواب مباشرة من نص المسألة / يجب أن أقوم بعمليات حسابية لكي أجيب عن السؤال / لا يمكن أن أجيب عن السؤال.) العنصر الذي لا يعتبر من مؤثرات «العقد الديدكتيكي» (Effets du contrat didactique) في النشاط هو:', false, '[{"id": "A", "text": "التعليمية (اقرأ نص المسألة مع الأسئلة، ثم ضع علامة في الخانات المناسبة للجدول)"}, {"id": "B", "text": "مضمون خانات السطر الأول للجدول"}, {"id": "C", "text": "محتوى لائحة الأثمنة"}, {"id": "D", "text": "المعطيات الواردة في نص سياق المسألة"}]'::jsonb, ARRAY['C']::text[], 'التعليمية ومضمون خانات الجدول ومعطيات سياق المسألة كلها عناصر يوظفها الأستاذ ضمن العقد الديدكتيكي لتوجيه سلوك المتعلم وتوقعاته؛ أما محتوى لائحة الأثمنة فمعطى عددي محايد لا يوجه العقد.', 'qcm', 'official', NULL, true, 'الجواب من مفتاح التصحيح الرسمي؛ التعليل تفسير مبني على تعريف مؤثرات العقد الديدكتيكي — للتحقق.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q12', 'exam_primary_2017_maths_jun', 12, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» حدد(ي) هدفين لهذا النشاط.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: قراءة نص مسألة وتحليله وفهمه؛ التمييز بين المعطيات الأساسية والمعطيات الزائدة. ملاحظة التصحيح الرسمي: يعتبر الجواب صحيحا إذا كان الهدف المقترح مرتبطا بحل المسائل.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q13', 'exam_primary_2017_maths_jun', 13, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» لأي وظيفة من وظائف التقويم (تشخيصي - تكويني - جزائي - إشهادي - ...) تم تقديم هذا النشاط؟ علل(ي) جوابك.', false, '[]'::jsonb, ARRAY[]::text[], 'تقويم تكويني. التعليل (عناصر الإجابة الرسمية): في السياق (المقدمة) نتحدث عن التقويم كمرحلة من مراحل الدرس؛ وفي النشاط المقترح من طرف الأستاذ نتحدث عن حصة تدريب على استثمار التعلمات المكتسبة؛ والهدف هو تقييم مدى اكتساب منهجية حل مسألة — أي تقويم مصاحب للتعلم يهدف إلى التعديل والتحسين، لا إلى الحكم النهائي أو الإشهاد.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q14', 'exam_primary_2017_maths_jun', 14, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» اذكر(ي) صعوبتين يمكن أن تعيقا عملية فهم المسألة لدى المتعلم(ة)، مستدلا بأمثلة توضيحية من النشاط المقترح.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: 1) درجة تركيب وصياغة نص المسألة: جمل طويلة مركبة («رافقت زينب ابنة خالتها إلى سوق مركزي»، «سلسلة قصص الخيال العلمي تتكون من 4 أجزاء»، الأثمنة باستعمال الرمز «dh»...)؛ 2) وجود مفردات لغوية صعبة (لا يفهمها المتعلم): سوق مركزي، قصص الخيال العلمي، صغيرة الحجم، الأداء...', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q15', 'exam_primary_2017_maths_jun', 15, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» أعد(ي) صياغة النشاط المقترح بحيث تساعد(ة) المتعلم(ة) على تجاوز بعض الصعوبات المتعلقة بالفهم.', false, '[]'::jsonb, ARRAY[]::text[], 'يقدم المترشح صياغة للنشاط بلغة بسيطة، تأخذ بعين الاعتبار المستوى الدراسي للمتعلم، والهدف أو الأهداف المتوخاة من النشاط والحصة. مثال التصحيح الرسمي: «اشترت زينب 4 قصص بـ 67 درهما و6 أقلام بـ 14 درهما، دفعت للكتبي ورقة مالية من فئة 100 درهم. كم رد عليها؟» (ملاحظة: مثال التصحيح يستبدل «محفظة صغيرة الحجم» بـ«6 أقلام» — ينقل كما ورد في التصحيح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q16', 'exam_primary_2017_maths_jun', 16, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» ضع(ي) تصورا لسيناريو لتدبير هذا النشاط مبرزا: أهم مراحل حل المسألة الرياضياتية؛ مهام وأدوار الأستاذ(ة)؛ مهام وأدوار المتعلم(ة)؛ الوسائل الديداكتيكية المستعملة؛ صيغ العمل.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: مراحل حل المسألة: فهم الوضعية (فهم عناصر الوضعية: السياق، الكلمات الصعبة... وتحديد المعطيات والشروط والمطلوب)؛ إعداد خطة للحل (ربط بين المعطيات والمطلوب، والربط بين الوضعية والوضعيات السابقة التي سبق حلها)؛ تنفيذ الخطة من أجل الوصول إلى الحل؛ التحقق من الحل (التحقق من النتيجة ومن قيمتها، والتحقق من التمثيل والأسئلة والمنهجية المتبعة، ومقارنة الحل مع حلول الآخرين في حالة العمل في مجموعات). مهام وأدوار الأستاذ(ة): مساعدة المتعلمين على الفهم؛ توضيح المعطيات ودرجة الصعوبات أثناء التحليل؛ حث المتعلمين على تحديد القدرات الضرورية؛ الربط بين المعطيات والمكتسبات السابقة؛ تدريب المتعلمين على استراتيجية الحل من خلال تعويدهم على التساؤل والبحث ومساعدتهم على تنظيم أفكارهم. مهام وأدوار المتعلم: قراءة المسألة وتحديد المعطيات؛ تحديد العمليات الضرورية؛ استخدام المفاهيم الرياضياتية وربط العلاقات فيما بينها؛ وضع نموذج مبسط لحل المسألة (وضع خطة حل المسألة)؛ تنفيذ خطة الحل؛ التحقق من صحة الحل. الوسائل الديداكتيكية المستعملة: رسوم للمشتريات في الوضعية، قطع وأوراق نقدية... صيغ العمل: يمكن العمل بمجموعات من 4 إلى 6 أفراد.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات (دورة يونيو 2017) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_maths_jun_q17', 'exam_primary_2017_maths_jun', 17, 'ديداكتيك الرياضيات — أسئلة مقالية', 'وضعية: «رافقت زينب ابنة خالتها إلى سوق مركزي لشراء سلسلة قصص الخيال العلمي تتكون من 4 أجزاء بـ 67dh ومحفظة صغيرة الحجم بـ 14dh؛ دفعت عند الأداء ورقة مالية من فئة 100 dh. كم رد عليها؟» اقترح(ي) سبلا لمعالجة الصعوبات المتعلقة باستعمال وتوظيف التعلمات المدرسة.', false, '[]'::jsonb, ARRAY[]::text[], 'تشخيص موطن الضعف بدقة (تحديد المفاهيم والمهارات الضرورية لحل المسألة التي لم تكتسب بعد)؛ ثم أنشطة علاجية موجهة: إعادة تدريس المفهوم الناقص بالمناولة والأمثلة المحسوسة (قطع وأوراق نقدية)، تمارين متدرجة من البسيط إلى المركب لتوظيف التعلمات، عمل في مجموعات صغيرة مع تتبع فردي، ثم تقويم تكويني لاحق للتحقق من تجاوز الصعوبة.', 'open', 'official', NULL, true, 'عناصر الإجابة في التصحيح الرسمي مقطوعة في أسفل الصفحة 3 من المسح («يقترح المترشح خطوات لمعالجة: ضعف في تحديد المفاهيم والمهارات الضرورية والمساعدة في حل...» ثم ينقطع النص)؛ التعليل المقترح مبني على قواعد الديداكتيك العامة — للتحقق.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
