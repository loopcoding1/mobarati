-- ====================================================================
-- مباراتي — اللغة العربية، مادة التخصص، دورة يونيو 2017
-- ====================================================================
-- المصدر: ملف الحل solved/2017/اللغة العربية - 2017.md
--   (سجل الامتحانات رقم 5؛ الحل منشور على mesconcours.ma +
--    المفتاح الرسمي في مساحة العمل)
--   ملف الامتحان: exams-ibtida2i/2017/اللغة العربية - امتحان.pdf
--   (13 صفحة، ممسوحة ضوئيا؛ مادة التخصص صفحات 1-9، والديداكتيك
--    صفحات 10-13 خارج نطاق هذا الملف).
--   ملف التصحيح: exams-ibtida2i/2017/تصحيح اللغة العربية.pdf
--   (11 صفحة؛ ملف مركّب: ص 1-3 تصحيح العلوم والرياضيات،
--    ص 4-6 مفتاح مادة التخصص Q14-Q30، ص 7-8 من ورقة الامتحان،
--    ص 9-11 شبكة تصحيح الديداكتيك الرسمية).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * الغلاف: دورة يونيو 2017 (وليس نونبر)، المدة 3 ساعات، المعامل 2،
--     النقطة النهائية على 60، مادة التخصص 30 نقطة.
--   * نصوص الأسئلة Q1 إلى Q30 وخياراتها مطابقة حرفياً لورقة الامتحان
--     (رُوجعت بتكبير 300dpi في المواضع الملتبسة: Q2، Q6، Q7، Q10،
--     Q12، Q13، Q15، Q16، Q19، Q27، Q28، Q29، Q30).
--   * الأجوبة: Q1-Q13 من mesconcours.ma (حل من إعداد الموقع،
--     source_type='third_party')؛ وQ14-Q30 من المفتاح الرسمي في
--     مساحة العمل (source_type='official'). المصدران متفقان على كل
--     الأسئلة المتداخلة (Q14-Q30: 17/17).
--   * لا أسئلة متخطاة: أُدرجت الأسئلة الـ30 كلها.
--
-- ملاحظات عن النقل:
--   * Q12: ورقة الامتحان تكتب عائلة «غَرَضَ» (أَغْرَضْنَ، تَغَرَّضْنَ،
--     غَرَضْنَ، غَرَّضْنَ)؛ وينقلها mesconcours.ma وmostajad-maroc عائلة
--     «عَرَضَ». الحروف والمطابقة واحدة في الحالين، والمعتمد نص الورقة.
--   * Q2 وQ10: ترتيب الخيارات الخاطئة يختلف بين النسخ المنقولة على
--     الإنترنت؛ المعتمد هنا نص الورقة الممسوحة.
--   * أسئلة المطابقة (Q7، Q9، Q12، Q16، Q24، Q26، Q28) من نوع
--     'matching' حسب اتفاقية الملفات الشقيقة (مثال: 2018 عربية):
--     options هي عناصر القائمة الثانية بأرقام "1".."5" ("1".."4" في
--     Q26)، وcorrect_answers مصفوفة مرتبة حسب عناصر القائمة الأولى
--     تعطي رقم العنصر المطابق لكل منها، وverification_note يسجل
--     المطابقة بالحروف. is_multiple=false كما في الملف الشقيق.
--   * المدة 180 دقيقة هي مدة الاختبار كاملا (التخصص + الديداكتيك)
--     حسب الغلاف؛ هذا الملف يغطي مادة التخصص فقط، والديداكتيك ملف
--     مستقل (didactics_ar).
--
-- تسمية المعرفات: exam_primary_2017_arabic_jun / exam_primary_2017_arabic_jun_q<n>
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_arabic_jun', 'specialty_primary', 2017, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة يونيو 2017)', 'دورة يونيو 2017', 180, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً: 23 QCM + 7 مطابقة)

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q1', 'exam_primary_2017_arabic_jun', 1, 'أنواع النصوص — فهم النص', 'حدد(ي) نوعية النص بوضع علامة (X) داخل الخانة المقابلة للجواب الملائم في ما يلي:', false, '[{"id": "A", "text": "نص سردي وصفي"}, {"id": "B", "text": "نص تفسيري حجاجي"}, {"id": "C", "text": "نص سردي إخباري"}, {"id": "D", "text": "نص تفسيري سردي"}]'::jsonb, ARRAY['B']::text[], 'لا يحكي الكاتب أحداثا ولا يصف مشاهد، بل يعرض قضية (تطور العربية ومشكلاتها) ويفسر أسبابها، ثم يدافع عن موقف: أن تعتبر العربية اللغة الأم ذات السيادة الكاملة. التفسير مع الدفاع عن رأي يجعل النص تفسيريا حجاجيا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q2', 'exam_primary_2017_arabic_jun', 2, 'الإعراب — النصب', 'ضع(ي) علامة (X) في الخانة المقابلة للشكل الصحيح، وفق النص، في ما يلي:', false, '[{"id": "A", "text": "تُوَاجِهُ مُشْكِلاتٍ كَثِيرَةً"}, {"id": "B", "text": "تُوَاجِهُ مُشْكِلاتٌ كَثِيرَةٌ"}, {"id": "C", "text": "تُوَاجِهُ مُشْكِلاتٍ كَثِيرَةٍ"}, {"id": "D", "text": "تُوَاجِهُ مُشْكِلاتٌ كَثِيرَةٍ"}]'::jsonb, ARRAY['A']::text[], '«تواجه» فعل مضارع مرفوع لم يسبقه ناصب ولا جازم. «مشكلات» مفعول به منصوب، وهو جمع مؤنث سالم فينصب بالكسرة مع التنوين لأنه نكرة غير مضافة. «كثيرة» نعت يتبع منعوته في النصب والتنكير: كثيرةً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q3', 'exam_primary_2017_arabic_jun', 3, 'المشتقات — اسم المفعول', '«وما يجد فيه من معارف وعلوم ووسائل التواصل المستحدثة»؛ كلمة «المستحدثة»:', false, '[{"id": "A", "text": "مصدر ميمي"}, {"id": "B", "text": "اسم زمان"}, {"id": "C", "text": "اسم فاعل"}, {"id": "D", "text": "اسم مفعول"}]'::jsonb, ARRAY['D']::text[], 'المعنى: الوسائل التي استُحدثت، أي أُحدثت حديثا، فهي واقع عليها الفعل. تصاغ من غير الثلاثي «استحدث» على وزن مضارعه مع إبدال حرف المضارعة ميما مضمومة وفتح ما قبل الآخر: مُسْتَحْدَثة، وهذا اسم مفعول. ولو كسر ما قبل الآخر لكان اسم فاعل، وهو لا يناسب المعنى.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q4', 'exam_primary_2017_arabic_jun', 4, 'فهم النص', 'يُرجع كاتب النص السبب الرئيس لتدهور اللغة إلى:', false, '[{"id": "A", "text": "ضعف اللغة وانهيارها"}, {"id": "B", "text": "تحدي العولمة"}, {"id": "C", "text": "أهل اللغة"}, {"id": "D", "text": "فقر اللغة في التعبير"}]'::jsonb, ARRAY['C']::text[], 'يقول الكاتب إن مشكلات العربية «تكشف أن موقفنا منها هو أبرز مظاهر واقعنا وما نعاني فيه من ضعف وانهيار وحيرة وتردد وعجز عن مصارحة الذات». الضعف ضعفنا نحن، أي أهل اللغة. أما تحدي العولمة والفقر في التعبير فهما من التحديات الراهنة التي تذكر بعد ذلك، لا السبب الرئيس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q5', 'exam_primary_2017_arabic_jun', 5, 'الإعراب — التمييز', '«اللغة العربية أكثر انتشارا من مجموعة من اللغات». تُعرب كلمة (انتشارا) في الجملة السابقة:', false, '[{"id": "A", "text": "اسم تفضيل"}, {"id": "B", "text": "مفعولا مطلقا"}, {"id": "C", "text": "تمييزا ملفوظا"}, {"id": "D", "text": "تمييزا ملحوظا"}]'::jsonb, ARRAY['D']::text[], 'بعد اسم التفضيل «أكثر» يأتي اسم نكرة منصوب يزيل الإبهام عن نسبة الكثرة إلى المبتدأ: هذا تمييز نسبة، ويسمى تمييزا ملحوظا لأن المميَّز غير مذكور لفظا. أما التمييز الملفوظ فيأتي بعد عدد أو مقدار مذكور.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q6', 'exam_primary_2017_arabic_jun', 6, 'النسب', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجواب الصحيح للمنسوب إلى كلمة (بديهة) في ما يلي:', false, '[{"id": "A", "text": "بَدِيهِيٌّ"}, {"id": "B", "text": "بَدْهِيٌّ"}, {"id": "C", "text": "بَدَهِيٌّ"}, {"id": "D", "text": "بَداهِيٌّ"}]'::jsonb, ARRAY['C']::text[], 'عند النسب إلى ما كان على وزن «فَعِيلة» صحيح العين غير مضعفها تحذف التاء والياء وتفتح العين: فَعَلِيّ، مثل مدينة ومَدَنِيّ وطبيعة وطَبَعِيّ. فيكون المنسوب إلى بديهة «بَدَهِيّ». وشاع على الألسنة «بديهي» لكنه غير القياسي المطلوب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q7', 'exam_primary_2017_arabic_jun', 7, 'النداء — أنواع المنادى', 'صل(ي) بسهم بين نوع النداء والجملة التي تتضمنه في ما يلي:
1. منادى نكرة مقصودة
2. منادى شبيه بالمضاف
3. منادى مضاف
4. منادى نكرة غير مقصودة', false, '[{"id": "1", "text": "أيا أحمدُ، اهتمَّ بلغتك العربية"}, {"id": "2", "text": "يا متعلِّمَ اللغةِ العربية، اهتمَّ بها"}, {"id": "3", "text": "أيا متعلِّمًا، اهتمَّ بلغتك العربية"}, {"id": "4", "text": "يا متعلِّمًا لغتَه، اهتمَّ بلغتك العربية"}, {"id": "5", "text": "أيا متعلِّمُ، اهتمَّ بلغتك العربية"}]'::jsonb, ARRAY['5','4','2','3']::text[], 'النكرة المقصودة يقصد بها معين فتبنى على الضم دون تنوين: «أيا متعلِّمُ». أما «أيا أحمدُ» فمبني على الضم أيضا لكنه علم مفرد، لا نكرة. الشبيه بالمضاف ما اتصل به شيء من تمام معناه (هنا مفعول به «لغتَه» لاسم الفاعل)، وهو منصوب منون: «يا متعلِّمًا لغتَه». المنادى المضاف منصوب، والمضاف إليه بعده مجرور: «يا متعلِّمَ اللغةِ». النكرة غير المقصودة لا يراد بها شخص بعينه فتنصب منونة: «أيا متعلِّمًا».', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←هـ (أيا متعلِّمُ)، 2←د (يا متعلِّمًا لغتَه)، 3←ب (يا متعلِّمَ اللغةِ)، 4←ج (أيا متعلِّمًا).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q8', 'exam_primary_2017_arabic_jun', 8, 'الإملاء — الهمزة المتطرفة', 'ضع(ي) علامة (X) في الخانة المقابلة للكلمة المكتوبة بطريقة صحيحة إملائيا في ما يلي:', false, '[{"id": "A", "text": "بطيئٌ"}, {"id": "B", "text": "بطيءٌ"}, {"id": "C", "text": "بطيؤٌ"}, {"id": "D", "text": "بطيٌّ"}]'::jsonb, ARRAY['B']::text[], 'الهمزة المتطرفة تكتب حسب حركة ما قبلها، فإذا سبقها حرف ساكن (هنا ياء المد الساكنة) كتبت مفردة على السطر: بطيء، مثل شيء ودفء. لا تكتب على نبرة ولا على واو.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q9', 'exam_primary_2017_arabic_jun', 9, 'البدل', 'صل(ي) بسهم بين نوع البدل والجملة التي تتضمنه في ما يلي:
1. بدل البعض من الكل
2. البدل المباين
3. البدل المطابق
4. بدل الاشتمال', false, '[{"id": "1", "text": "عرفت اللغة العربية، لغة الضاد، تطورات ملموسة"}, {"id": "2", "text": "عرفت اللغة العربية كلُّها تطورات ملموسة"}, {"id": "3", "text": "عرفت اللغة العربية نصفُها تطورات ملموسة"}, {"id": "4", "text": "عرفت اللغة العربية علومُها تطورات ملموسة"}, {"id": "5", "text": "عرفت اللغة العربية، العامية، تطورات ملموسة"}]'::jsonb, ARRAY['3','5','1','4']::text[], '«نصفُها» جزء من اللغة ومتصل بضمير يعود عليها: بدل بعض من كل. «العامية» لا تطابق «اللغة العربية» ولا هي جزء منها ولا مما تشتمل عليه، بل ذكرت مكانها غلطا أو إضرابا: بدل مباين. «لغة الضاد» هي اللغة العربية نفسها: بدل مطابق (كل من كل). «علومُها» مما تشتمل عليه اللغة وليست جزءا من ذاتها، مع ضمير رابط: بدل اشتمال. أما «كلُّها» فتوكيد معنوي لا بدل.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←ج (نصفُها)، 2←هـ (العامية)، 3←أ (لغة الضاد)، 4←د (علومُها). «كلُّها» توكيد معنوي لا بدل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q10', 'exam_primary_2017_arabic_jun', 10, 'النواسخ — خبر إنّ', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة لغويا في ما يلي:', false, '[{"id": "A", "text": "إنّ اللغة العربية واللغة الأم متعايشةٌ"}, {"id": "B", "text": "إنّ اللغة العربية واللغة الأم متعايشتين"}, {"id": "C", "text": "إنّ اللغة العربية واللغة الأم متعايشتان"}, {"id": "D", "text": "إنّ اللغة العربية واللغة الأم متعايشةً"}]'::jsonb, ARRAY['C']::text[], 'اسم إنّ متعدد بالعطف (اللغة العربية واللغة الأم)، فالخبر مثنى مؤنث، وخبر إنّ مرفوع، والمثنى يرفع بالألف: متعايشتان.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q11', 'exam_primary_2017_arabic_jun', 11, 'الاستثناء — الإعراب', '«ما حضر اللقاء إلا المهتم باللغة العربية». تُعرب كلمة (المهتم) في الجملة السابقة:', false, '[{"id": "A", "text": "استثناء"}, {"id": "B", "text": "مستثنى منه"}, {"id": "C", "text": "فاعل"}, {"id": "D", "text": "اسم فاعل"}]'::jsonb, ARRAY['C']::text[], 'الاستثناء مفرغ: الكلام منفي والمستثنى منه محذوف، فـ«إلا» أداة حصر لا عمل لها، ويعرب ما بعدها حسب موقعه. والفعل «حضر» ينقصه فاعل، فـ«المهتمُّ» فاعل مرفوع. و«اسم فاعل» وصف لصيغته لا إعراب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q12', 'exam_primary_2017_arabic_jun', 12, 'المصادر', 'صل(ي) بسهم بين الفعل ومصدره في ما يلي:
1. أَغْرَضْنَ
2. تَغَرَّضْنَ
3. غَرَضْنَ
4. غَرَّضْنَ', false, '[{"id": "1", "text": "تَغَرُّض"}, {"id": "2", "text": "اعْتِراض"}, {"id": "3", "text": "إِغْراض"}, {"id": "4", "text": "غَرَض"}, {"id": "5", "text": "تَغْرِيض"}]'::jsonb, ARRAY['3','1','4','5']::text[], '«أَفْعَلَ» مصدره «إِفْعال»: أغرض إغرضا. «تَفَعَّلَ» مصدره «تَفَعُّل»: تغرّض تغرّضا. الثلاثي المتعدي على «فَعَلَ» مصدره القياسي «فَعْل»: غرض غرضا. «فَعَّلَ» مصدره «تَفْعِيل»: غرّض تغريضا. و«اعتراض» مصدر «اعترض» وليس في القائمة، فلا مقابل له.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←ج (إِغْراض)، 2←أ (تَغَرُّض)، 3←د (غَرَض)، 4←هـ (تَغْرِيض). ورقة الامتحان تكتب عائلة «غَرَضَ»؛ وينقلها mesconcours.ma عائلة «عَرَضَ» — الحروف والمطابقة واحدة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q13', 'exam_primary_2017_arabic_jun', 13, 'العدد', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجملة الصحيحة، في ما يلي:', false, '[{"id": "A", "text": "نظّم معهد اللغة العربية خمسةُ مؤتمرات وعشرون ندوة"}, {"id": "B", "text": "نظّم معهد اللغة العربية خمسُ مؤتمرات وعشرون ندوة"}, {"id": "C", "text": "نظّم معهد اللغة العربية خمسةَ مؤتمرات وعشرين ندوة"}, {"id": "D", "text": "نظّم معهد اللغة العربية خمسَ مؤتمرات وعشرين ندوة"}]'::jsonb, ARRAY['C']::text[], 'العدد من 3 إلى 10 يخالف معدوده، ومفرد «مؤتمرات» مؤتمر مذكر، فنقول «خمسة». والعدد مفعول به منصوب: خمسةَ. و«عشرين» معطوف على منصوب، وألفاظ العقود تنصب بالياء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q14', 'exam_primary_2017_arabic_jun', 14, 'إعراب الفعل المضارع المعتل', '«وما تعاني فيه من ضعف وانهيار». «تعاني» في هذه الجملة فعل مضارع مرفوع، وعلامة رفعه:', false, '[{"id": "A", "text": "الكسرة المقدرة على الياء، منع من ظهورها الاستثقال"}, {"id": "B", "text": "الضمة المقدرة على الياء، منع من ظهورها التعذر"}, {"id": "C", "text": "الضمة المقدرة على الياء، منع من ظهورها الاستثقال"}, {"id": "D", "text": "الكسرة المقدرة على الياء، منع من ظهورها التعذر"}]'::jsonb, ARRAY['C']::text[], 'المضارع المرفوع علامته الضمة. وفي المعتل الآخر بالياء تقدر الضمة لثقلها على الياء (لا لاستحالتها)، فيقال منع من ظهورها الثقل أو الاستثقال. التعذر خاص بالألف.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q15', 'exam_primary_2017_arabic_jun', 15, 'العدد 12', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة الصحيحة مما يلي:', false, '[{"id": "A", "text": "اشترى أبي اثني عشر مجلة"}, {"id": "B", "text": "اشترى أبي اثني عشرة مجلة"}, {"id": "C", "text": "اشترى أبي اثنتي عشر مجلة"}, {"id": "D", "text": "اشترى أبي اثنتي عشرة مجلة"}]'::jsonb, ARRAY['D']::text[], 'العدد 12 يوافق معدوده في جزأيه. «مجلة» مؤنث، فنقول «اثنتا عشرة». وهو مفعول به منصوب، والجزء الأول يعرب إعراب المثنى فينصب بالياء: اثنتي عشرة مجلة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q16', 'exam_primary_2017_arabic_jun', 16, 'أنواع الفعل', 'صل(ي) بسهم بين الفعل ونوعه في ما يلي:
1. اشْتَدَّ
2. لَمْ يَنَمْ
3. يَئِسَ
4. تَساءَلَ', false, '[{"id": "1", "text": "فعل صحيح مهموز"}, {"id": "2", "text": "فعل معتل أجوف"}, {"id": "3", "text": "فعل صحيح مضعف"}, {"id": "4", "text": "فعل معتل مثال"}, {"id": "5", "text": "فعل معتل ناقص"}]'::jsonb, ARRAY['3','2','4','1']::text[], 'أصله «شدّ»: عينه ولامه من جنس واحد (ش د د)، فهو صحيح مضعف. أصله «نام» (ن و م)، وسطه حرف علة حذف للجزم: معتل أجوف. «يئس» فاؤه ياء (ي ء س)، فهو معتل مثال يائي؛ وفيه همزة، لكن وجود حرف العلة يخرجه من الصحيح، فلا يكون «صحيحا مهموزا». أصله «سأل» (س أ ل)، لا حرف علة في أصوله وفيه همزة: صحيح مهموز. ويبقى «معتل ناقص» بلا مقابل.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←ج (صحيح مضعف)، 2←ب (معتل أجوف)، 3←د (معتل مثال)، 4←أ (صحيح مهموز).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q17', 'exam_primary_2017_arabic_jun', 17, 'فهم النص', 'من أجل الارتقاء باللغة العربية، يشترط الكاتب على العرب، تبعا للنص:', false, '[{"id": "A", "text": "هيمنة لغة أجنبية وعدم فرض لهجة محلية"}, {"id": "B", "text": "عدم هيمنة لغة أجنبية وعدم فرض لهجة محلية"}, {"id": "C", "text": "عدم هيمنة لغة أجنبية وفرض لهجة محلية"}, {"id": "D", "text": "هيمنة لغة أجنبية وفرض لهجة محلية"}]'::jsonb, ARRAY['B']::text[], 'الفقرة الأخيرة تشترط أن تكون العربية «بعيدا عن أي هيمنة تكون للغة أجنبية» و«بعيدا كذلك عن كل محاولة لفرض لهجة عامية محلية». الشرطان منفيان معا.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q18', 'exam_primary_2017_arabic_jun', 18, 'الميزان الصرفي', '«التلميذان استبقا الأستاذ في الجواب». وزن الفعل في هذه الجملة هو:', false, '[{"id": "A", "text": "استفعل"}, {"id": "B", "text": "افتعل"}, {"id": "C", "text": "انفعل"}, {"id": "D", "text": "افعولل"}]'::jsonb, ARRAY['B']::text[], 'الفعل «استبقا» أصله «استبق» (س ب ق)، والألف ألف الاثنين. جذره ثلاثي زيدت عليه همزة الوصل والتاء بعد الفاء: ا-س-ت-ب-ق على وزن افْتَعَل. السين هنا أصلية، فليس على وزن استفعل.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q19', 'exam_primary_2017_arabic_jun', 19, 'الإملاء — الهمزة', 'ضع(ي) علامة (X) داخل الخانة المقابلة للكلمة السليمة إملائيا في ما يلي:', false, '[{"id": "A", "text": "مُتَلَأْلُؤٌ"}, {"id": "B", "text": "مُتَلَئْلِئٌ"}, {"id": "C", "text": "مُتَلَئْلُؤٌ"}, {"id": "D", "text": "مُتَلَأْلِئٌ"}]'::jsonb, ARRAY['D']::text[], 'اسم الفاعل من «تلألأ» هو «مُتَلَأْلِئ». الهمزة الوسطى ساكنة بعد فتح فتكتب على الألف (لأْ)، والهمزة المتطرفة بعد كسر تكتب على الياء (لِئ).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q20', 'exam_primary_2017_arabic_jun', 20, 'حروف الجواب', 'وفق النص، ضع(ي) علامة (X) داخل الخانة المقابلة للجواب المناسب عن السؤال التالي: «ألم تتعرض اللغة العربية لتطورات كثيرة؟»', false, '[{"id": "A", "text": "نعم، تعرضت اللغة العربية لتطورات كثيرة"}, {"id": "B", "text": "أجل، تعرضت اللغة العربية لتطورات كثيرة"}, {"id": "C", "text": "بلى، تعرضت اللغة العربية لتطورات كثيرة"}, {"id": "D", "text": "لا، لم تتعرض اللغة العربية لتطورات كثيرة"}]'::jsonb, ARRAY['C']::text[], 'النص يثبت أن العربية تعرضت لتطورات كثيرة، والسؤال منفي. حرف الجواب الذي ينقض النفي ويثبت هو «بلى». أما «نعم» بعد النفي فتقرره، أي تعني «لم تتعرض».', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q21', 'exam_primary_2017_arabic_jun', 21, 'الإملاء — التاء المربوطة', 'ضع(ي) علامة (X) داخل الخانة المقابلة للكلمة الخاطئة إملائيا في ما يلي:', false, '[{"id": "A", "text": "مبالاة"}, {"id": "B", "text": "منادات"}, {"id": "C", "text": "مباريات"}, {"id": "D", "text": "مداواة"}]'::jsonb, ARRAY['B']::text[], '«مناداة» مصدر «نادى» على وزن مُفاعَلة، تنتهي بتاء مربوطة كمبالاة ومداواة. أما «مباريات» فجمع مؤنث سالم تكتب تاؤه مبسوطة. فالخاطئة هي «منادات» بالتاء المبسوطة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q22', 'exam_primary_2017_arabic_jun', 22, 'المرادفات', 'ضع(ي) علامة (X) داخل الخانة المناسبة لمرادف كلمة «علاج» الواردة في النص مما يلي:', false, '[{"id": "A", "text": "نقاهة"}, {"id": "B", "text": "شفاء"}, {"id": "C", "text": "مداواة"}, {"id": "D", "text": "إنعاش"}]'::jsonb, ARRAY['C']::text[], 'العلاج هو المداواة، أي الفعل الذي يقصد به الشفاء. الشفاء نتيجته، والنقاهة مرحلة بعده، والإنعاش إسعاف خاص.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q23', 'exam_primary_2017_arabic_jun', 23, 'التعجب', '«ما أجمل اللغة العربية». ضع(ي) علامة (X) داخل الخانة المقابلة للإعراب الصحيح لكلمة «اللغة» في ما يلي:', false, '[{"id": "A", "text": "مفعول به منصوب، وعلامة نصبه الفتحة الظاهرة على آخره"}, {"id": "B", "text": "خبر ما منصوب، وعلامة نصبه الفتحة الظاهرة على آخره"}, {"id": "C", "text": "فاعل مرفوع، وعلامة رفعه الضمة الظاهرة على آخره"}, {"id": "D", "text": "مضاف إليه مجرور، وعلامة جره الكسرة الظاهرة على آخره"}]'::jsonb, ARRAY['A']::text[], 'في صيغة التعجب «ما أفعلَ»: «ما» نكرة تامة مبتدأ، و«أجملَ» فعل ماض فاعله ضمير مستتر، و«اللغةَ» مفعول به منصوب، والجملة الفعلية خبر «ما».', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q24', 'exam_primary_2017_arabic_jun', 24, 'الإعلال', 'صل(ي) بخط بين نوع الإعلال والكلمات المتضمنة له في ما يأتي:
1. إعلال بالقلب
2. إعلال بالحذف
3. إعلال بالنقل والحذف
4. إعلال بالتسكين', false, '[{"id": "1", "text": "إقامة"}, {"id": "2", "text": "يَدْعُو"}, {"id": "3", "text": "يَعِدُ"}, {"id": "4", "text": "ميعاد"}, {"id": "5", "text": "مَقول"}]'::jsonb, ARRAY['4','3','5','2']::text[], '«ميعاد» أصله «مِوْعاد»: الواو الساكنة بعد كسر قلبت ياء. «يَعِدُ» أصله «يَوْعِدُ»: حذفت الواو (فاء المثال) لوقوعها بين ياء مفتوحة وكسرة. «مَقُول» أصله «مَقْوُول»: نقلت ضمة الواو إلى القاف الساكنة قبلها، فالتقى ساكنان فحذفت إحدى الواوين. «يَدْعُو» أصله «يَدْعُوُ»: سكنت الواو لثقل الضمة عليها، وهذا إعلال بالتسكين. أما «إقامة» فاجتمع فيها النقل والقلب والحذف، فلا تختص بالنقل والحذف وحده، وتبقى بلا مقابل.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←د (ميعاد)، 2←ج (يَعِدُ)، 3←هـ (مَقول)، 4←ب (يَدْعُو). «إقامة» اجتمع فيها النقل والقلب والحذف فلا تختص بالنقل والحذف وحده.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q25', 'exam_primary_2017_arabic_jun', 25, 'الإعراب — المقصور', '«مساعدة الفتى على تعلم اللغة العربية واجب». كلمة «الفتى» في الجملة، مضاف إليه مجرور وعلامة جره الكسرة:', false, '[{"id": "A", "text": "المقدرة على الألف، منع من ظهورها الاستثقال"}, {"id": "B", "text": "النائبة عن الألف، منع من ظهورها التعذر"}, {"id": "C", "text": "المقدرة على الألف، منع من ظهورها التعذر"}, {"id": "D", "text": "النائبة عن الألف، منع من ظهورها الاستثقال"}]'::jsonb, ARRAY['C']::text[], '«الفتى» اسم مقصور، والألف لا تقبل الحركة أصلا، فتقدر عليها جميع الحركات ويكون المانع التعذر (الاستحالة). الكسرة هنا مقدرة لا نائبة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q26', 'exam_primary_2017_arabic_jun', 26, 'أنواع الاسم — المقصور والمنقوص والممدود', 'صل(ي) بخط بين نوع الاسم والكلمة المناسبة له مما يلي:
1. اسم منقوص
2. اسم مقصور
3. اسم ممدود', false, '[{"id": "1", "text": "الاجتماعي"}, {"id": "2", "text": "الساعي"}, {"id": "3", "text": "الغذاء"}, {"id": "4", "text": "العلا"}]'::jsonb, ARRAY['2','4','3']::text[], 'المنقوص اسم معرب آخره ياء لازمة غير مشددة مكسور ما قبلها: «الساعي». المقصور اسم معرب آخره ألف لازمة: «العلا». الممدود اسم معرب آخره همزة قبلها ألف زائدة: «الغذاء». أما «الاجتماعي» فياؤه مشددة للنسب، فليس منقوصا، ويبقى بلا مقابل.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←ب (الساعي)، 2←د (العلا)، 3←ج (الغذاء). «الاجتماعي» ياؤه مشددة للنسب فليس منقوصا.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q27', 'exam_primary_2017_arabic_jun', 27, 'الجملة السليمة', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة مما يلي:', false, '[{"id": "A", "text": "متكلموا اللغة العربية عليهم أن يوظفوا قواعدها"}, {"id": "B", "text": "متكلمي اللغة العربية عليهم أن يوظفو قواعدها"}, {"id": "C", "text": "متكلمو اللغة العربية عليهم أن يوظفوا قواعدها"}, {"id": "D", "text": "متكلمي اللغة العربية عليهم أن يوظفوا قواعدها"}]'::jsonb, ARRAY['C']::text[], '«متكلمو» مبتدأ مرفوع بالواو لأنه جمع مذكر سالم، حذفت نونه للإضافة، ولا تلحقه ألف فارقة لأنها لا تكتب إلا بعد واو الجماعة في الأفعال. و«يوظفوا» مضارع منصوب بأن بحذف النون، تلحقه الألف الفارقة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q28', 'exam_primary_2017_arabic_jun', 28, 'المفاعيل', 'صل(ي) بسهم بين «المفعول» وبين نوعه في الجمل التالية:
1. مفعول مطلق
2. مفعول به
3. مفعول معه
4. مفعول لأجله', false, '[{"id": "1", "text": "تعرّضت اللغة العربية لتطورات ملموسة لمواكبة العصر"}, {"id": "2", "text": "عرفت اللغة العربية تطورات ملموسة لمواكبة العصر"}, {"id": "3", "text": "تعرّضت اللغة العربية لتطورات متعددة رغبةً في مواكبة العصر"}, {"id": "4", "text": "تطوّرت اللغة العربية تطوراتٍ ملموسة لمواكبة العصر"}, {"id": "5", "text": "تطوّرت اللغة العربية وتطوراتِ العصر"}]'::jsonb, ARRAY['4','2','5','3']::text[], '«تطوراتٍ» مصدر من لفظ الفعل «تطورت» يبين نوعه (موصوف بملموسة): مفعول مطلق. «تطورات» وقع عليها فعل «عرفت» المتعدي: مفعول به. الواو بمعنى «مع» بعد جملة تامة، وما بعدها منصوب: «وتطوراتِ العصر» مفعول معه. «رغبةً» مصدر قلبي منصوب يبين سبب الفعل: مفعول لأجله. والجملة الأولى ليس فيها مفعول منصوب، فهي للتمويه.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, 'مطابقة: 1←د (تطوّرت... تطوراتٍ ملموسة)، 2←ب (عرفت... تطورات)، 3←هـ (...وتطوراتِ العصر)، 4←ج (...رغبةً). الجملة (أ) ليس فيها مفعول منصوب.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q29', 'exam_primary_2017_arabic_jun', 29, 'المجرد والمزيد', 'ضع(ي) علامة (X) في الخانة المقابلة للفعل المجرد مما يلي:', false, '[{"id": "A", "text": "يَسْتَشْهِدُ"}, {"id": "B", "text": "يَنْتَصِرُ"}, {"id": "C", "text": "يَتَقَدَّمُ"}, {"id": "D", "text": "يَخْتَبِرُ"}, {"id": "E", "text": "يَيْأَسُ"}]'::jsonb, ARRAY['E']::text[], 'المجرد ما كانت حروف ماضيه كلها أصلية. «ييأس» ماضيه «يئس» (ي ء س) بلا زيادة. أما الأخرى فمزيدة: استشهد (استفعل)، انتصر واختبر (افتعل)، تقدم (تفعّل).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يونيو 2017) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_arabic_jun_q30', 'exam_primary_2017_arabic_jun', 30, 'النواسخ — كان', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة مما يلي:', false, '[{"id": "A", "text": "كانت اللغتان العربية والأمازيغية أكثرُ اللغات تداولا بين المغاربة"}, {"id": "B", "text": "كانت اللغتان العربية والأمازيغية أكثرَ اللغات تداولا بين المغاربة"}, {"id": "C", "text": "كانت اللغتين العربية والأمازيغية أكثرُ اللغات تداولا بين المغاربة"}, {"id": "D", "text": "كانت اللغتين العربية والأمازيغية أكثرَ اللغات تداولا بين المغاربة"}]'::jsonb, ARRAY['B']::text[], 'اسم «كان» مرفوع، والمثنى يرفع بالألف: «اللغتان». وخبرها منصوب: «أكثرَ».', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
