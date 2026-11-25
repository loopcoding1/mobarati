-- ====================================================================
-- مباراتي — امتحان ابتدائي: علوم التربية، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/علوم التربية - دورة أكتوبر 2024.md
--   (الحل: تصحيح منشور على mesconcours.ma — حل من إعداد الموقع، وليس
--    تصحيحا رسميا؛ الموقع نفسه يقول: لا يوجد تصحيح رسمي، الأجوبة حُلّت
--    من طرفهم وكل سؤال مشروح. حل 2026-11-25، بحث Google أولا، لم يُستعمل
--    AI Studio لهذا الامتحان.)
--   رابط صفحة التصحيح: https://mesconcours.ma/ar/concours/enseignement/2024-1002/
--   ملف الامتحان: exams-ibtida2i/2024/علوم التربية.pdf (12 صفحة).
--
-- ⚠ حالة ملف PDF — مهم: الملف مسح مدمج (merged scan) وليس دفتر أكتوبر 2024 وحده:
--   * صفحات PDF 1-5 = دفتر أكتوبر 2024: الغلاف (1/6)، ثم 2/6 (Q101–Q105)،
--     3/6 (Q106–Q110)، 5/6 (Q116–Q120)، 6/6 (Q121–Q125).
--   * صفحة دفتر أكتوبر 4/6 (Q111–Q115) مفقودة من الملف — ملاحظة ملف الحل
--     «لا صفحات مفقودة» غير صحيحة.
--   * صفحة PDF 6 هي صفحة 4/6 من دورة فبراير 2024 (Q111–Q115 مختلفة تماما،
--     بأربعة اختيارات فقط A-D) — لا تخص هذا الامتحان إطلاقا ويجب عدم استعمالها.
--   * صفحات PDF 7-12 = امتحان ديداكتيك اللغة العربية، دورة أكتوبر 2024 (Q1–Q25)
--     — لا تخص هذا الامتحان.
--
-- التحقق (مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * Q101–Q110 و Q116–Q125: نص كل سؤال وخياراته الخمسة (A-E) مطابقة حرفياً
--     لورقة الامتحان (صفحات PDF 2-5)؛ والأجوبة رُوجعت مقابل تعليل الموقع.
--   * Q111–Q115: مُستثناة من هذا الملف (انظر أدناه) لأن صفحة الدفتر مفقودة
--     من الـPDF؛ نصوصها في ملف الحل مطابقة حرفياً لصفحة mesconcours.ma
--     (أسئلة الموقع 11-15)، لكنها لم تُتحقق مقابل ورقة الامتحان.
--   * لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان؛ الحل مصدره طرف ثالث.
--   * التعليلات منقولة حرفياً من ملف الحل.
--   * الأسئلة الموسومة بتحفظ الموقع (⚠): Q101، Q105، Q107، Q119، Q121 —
--     سبب كل تحفظ في verification_note. (تحفظ Q112 مذكور في قسم الاستثناء
--     أدناه لأن السؤال نفسه مستثنى.)
--
-- الأسئلة المستثناة (5 أسئلة — لم تُدرج لأن جوابها لم يُتحقق مقابل الـPDF):
--   * Q111 (الجواب D — الصراع السوسيومعرفي)، Q112 (الجواب A — حل جماعي؛
--     تحفظ الموقع ⚠: التباس بين A «جماعي» وC «توافقي»، والأرجح A لأنه الصيغة
--     المتداولة في أدبيات التعلم التعاوني)، Q113 (الجواب A — المثير الخارجي)،
--     Q114 (الجواب A — نشاط قريب من منطقة النمو مع المساعدة)، Q115 (الجواب B —
--     تعميم تعليم ذي جودة ودامج ومنصف). نصوصها وخياراتها وأجوبتها في ملف الحل
--     مطابقة حرفياً لصفحة mesconcours.ma؛ تُضاف لاحقاً متى وُجدت صفحة الدفتر
--     4/6 لدورة أكتوبر 2024 أو قُبل التحقق مقابل صفحة الحل المنشورة وحدها،
--     وعندها يصبح questions_count = 25.
--
-- المدة والمعامل: من غلاف الدفتر (صفحة PDF 1): مدة الاختبار ساعة واحدة
--   (60 دقيقة)، المعامل 8. أكدتهما صفحة mesconcours.ma («المدة: ساعة واحدة»،
--   «Durée : 1 heure · Coefficient 8»). لا يوجد عمود للمعامل في جدول exams
--   في صيغة ملف البذرة المعتمد، فالمعامل موثق هنا فقط.
--   تنقيط الامتحان: 1 نقطة لكل جواب صحيح، 0 للجواب الخاطئ أو الملغى.
--
-- تسمية المعرفات (نفس اتفاقية الملف التجريبي):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_sciences_edu_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على ترقيم الدفتر Q101–Q125 (لا إعادة ترقيم).
--   ترقيم الموقع 1–25 يقابل ترقيم الدفتر Q101–Q125.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
--    ملاحظة: questions_count = 20 هو عدد الأسئلة المُدرجة فعلاً في هذا الملف؛
--    الدفتر يحوي 25 سؤالاً، والخمسة الباقية (Q111–Q115) مستثناة مؤقتاً (انظر الأعلى).
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_sciences_edu_oct', 'specialty_primary', 2024, 'sciences_edu', 'علوم التربية', 'امتحان علوم التربية (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 60, 20)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (20 سؤالاً مُدرجاً من أصل 25، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q101', 'exam_primary_2024_sciences_edu_oct', 101, 'دينامية الجماعات — التوازن', 'من القوانين الرئيسة في دينامية الجماعات اعتبار "التوازن" الذي تعمل كل جماعة على تحقيقه توازنا:', false, '[{"id": "A", "text": "ثابتا"}, {"id": "B", "text": "بنيويا"}, {"id": "C", "text": "دائما"}, {"id": "D", "text": "جوهريا"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['E']::text[], 'يصف كورت لوين توازن الجماعة بأنه توازن دينامي أو "شبه ثابت": هو حصيلة مؤقتة لقوى متعارضة داخل الحقل، يختل كلما تغيرت إحدى هذه القوى ثم يعاد بناؤه. لذلك لا يصح وصفه بالثابت ولا بالدائم ولا بالجوهري، كما أن "البنيوي" ليس الوصف الذي يعتمده لوين. الصفة المنتظرة (دينامي أو متحرك) غير واردة بين الاختيارات، فالجواب E، مع تحفظ لأن المقترحات لا تذكر الوصف بلفظه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, 'تحفظ الموقع (⚠): التوازن عند لوين دينامي أو «شبه ثابت»؛ الصفة المنتظرة (دينامي أو متحرك) غير واردة بين الاختيارات، فالجواب E مع تحفظ لأن المقترحات لا تذكر الوصف بلفظه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q102', 'exam_primary_2024_sciences_edu_oct', 102, 'بيداغوجيا التمكن — الزمن الفعلي', 'ما المقصود بمفهوم "الزمن الفعلي" في بيداغوجيا التمكن؟', false, '[{"id": "A", "text": "زمن التعلم"}, {"id": "B", "text": "زمن التعليم"}, {"id": "C", "text": "زمن الدعم"}, {"id": "D", "text": "زمن الدمج"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تقوم بيداغوجيا التمكن (كارول ثم بلوم) على أن درجة التعلم تساوي نسبة الزمن الذي يقضيه المتعلم فعليا في التعلم إلى الزمن الذي يحتاجه. فالزمن الفعلي هو الزمن الذي ينشغل فيه المتعلم بالتعلم نفسه، أي زمن التعلم، لا الزمن الذي يقضيه المدرس في التعليم. أما الدعم فهو وسيلة لتمديد هذا الزمن عند من يحتاجه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q103', 'exam_primary_2024_sciences_edu_oct', 103, 'التحليل النفسي — اللاوعي عند فرويد', 'فيم تتمثل أهمية اللاوعي حسب نظرية فرويد في التحليل النفسي؟', false, '[{"id": "A", "text": "في تحكمه في خيارات المتعلم"}, {"id": "B", "text": "في قابليته للتحكم فيه"}, {"id": "C", "text": "في كونه مجرد سلطة خارجية"}, {"id": "D", "text": "في تحقيق التوازن بين الهو والأنا الأعلى"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يرى فرويد أن الجزء الأكبر من الحياة النفسية لاشعوري، وأن الرغبات المكبوتة فيه توجه السلوك والاختيارات دون أن يعيها الفرد، ومن هنا أهميته. أما التوفيق بين مطالب الهو وضغوط الأنا الأعلى فهو وظيفة الأنا لا اللاوعي. واللاوعي داخلي بطبيعته وليس سلطة خارجية، ولا يخضع لتحكم الفرد المباشر.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q104', 'exam_primary_2024_sciences_edu_oct', 104, 'المنهاج المنقح — غايات التربية والتكوين', 'يسعى نظام التربية والتكوين في المغرب إلى تحقيق أهداف صنفها المنهاج الجديد للتعليم الابتدائي حسب مستويين هما:', false, '[{"id": "A", "text": "شخصي ومجتمعي عام"}, {"id": "B", "text": "جهوي ووطني"}, {"id": "C", "text": "ديداكتيكي وبيداغوجي"}, {"id": "D", "text": "منهاجي واستراتيجي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يعرض المنهاج المنقح للتعليم الابتدائي غايات نظام التربية والتكوين على مستويين: مستوى شخصي يخص نمو المتعلم وتفتح شخصيته واستقلاليته، ومستوى مجتمعي عام يخص إعداد مواطن منخرط في مجتمعه ومنفتح على محيطه. أما التقسيم إلى جهوي ووطني فيخص تدبير المنهاج لا تصنيف أهدافه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q105', 'exam_primary_2024_sciences_edu_oct', 105, 'الكفاية والقدرة والمهارة', 'المعرفة العرضانية التي تجمع بين عدد من المهارات التي يستخدمها المتعلم في وضعيات هي:', false, '[{"id": "A", "text": "الخبرة"}, {"id": "B", "text": "الكفاية"}, {"id": "C", "text": "القدرة"}, {"id": "D", "text": "المهارة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'في التمييز المعتمد (روجيرس، ميريو) تكون المهارة أداء محددا، والقدرة نشاطا ذهنيا يجمع عددا من المهارات ويتميز بطابعه العرضاني، أي أنه يمارس في وضعيات ومواد مختلفة. أما الكفاية فتعبئة مدمجة للموارد مرتبطة بفئة محددة من الوضعيات ومحتوى معين. لذلك فالمعرفة العرضانية الموصوفة هي القدرة، مع تحفظ لأن عبارة "في وضعيات" قد تدفع بعض المصححين إلى الكفاية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, 'تحفظ الموقع (⚠): عبارة «في وضعيات» قد تدفع بعض المصححين إلى الكفاية بدل القدرة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q106', 'exam_primary_2024_sciences_edu_oct', 106, 'دينامية الجماعات — النجم السوسيومتري', 'يمكن للمدرس أن يستعين بـ"النجم السوسيومتري" من أجل:', false, '[{"id": "A", "text": "بناء المشروع الشخصي للمتعلمين"}, {"id": "B", "text": "وضع قواعد النظام الداخلي للقسم"}, {"id": "C", "text": "تحقيق التواصل الفعال بين أفراد الجماعة"}, {"id": "D", "text": "اقتراح استراتيجيات الدعم المندمج"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'النجم السوسيومتري (السوسيوغرام عند مورينو) رسم يبين شبكة الجذب والنفور بين أفراد الجماعة: المعزولين والمحبوبين والثنائيات. يستعمله المدرس لفهم هذه العلاقات ثم لتكوين مجموعات منسجمة وإدماج المعزولين، أي لتحسين التواصل والتفاعل بين أفراد الجماعة. ولا علاقة مباشرة له بالمشروع الشخصي أو بالنظام الداخلي أو بالدعم.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q107', 'exam_primary_2024_sciences_edu_oct', 107, 'بياجي — الاستيعاب', 'كيف يتحقق الاستيعاب حسب بياجي؟', false, '[{"id": "A", "text": "بالشرح الجيد للدرس"}, {"id": "B", "text": "بالتدرب الجيد على تمارين مختلفة"}, {"id": "C", "text": "بالإجابة عن أسئلة المتعلمين"}, {"id": "D", "text": "بوضع المتعلم في وضعية مشكلة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'الاستيعاب (assimilation) عند بياجي هو إدماج معطيات جديدة في خطاطات قائمة دون تغييرها، ويتقوى بتطبيق الخطاطة نفسها على موضوعات متنوعة (الاستيعاب التعميمي)، وهذا ما يقابله التدرب على تمارين مختلفة. أما الوضعية المشكلة فتخلق اختلالا يستدعي الملاءمة (accommodation) ثم التوازن. الشرح والإجابة عن الأسئلة نشاطان من جهة المدرس لا آليتان معرفيتان. يبقى السؤال ملتبسا لأن "الاستيعاب" قد يقصد به الفهم بمعناه العام.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, 'تحفظ الموقع (⚠): السؤال ملتبس لأن «الاستيعاب» قد يقصد به الفهم بمعناه العام.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q108', 'exam_primary_2024_sciences_edu_oct', 108, 'النشاط العلمي — منهج التقصي', 'يحدد المنهاج الجديد للتعليم الابتدائي المنهج المعتمد في تدريس مادة النشاط العلمي في منهج:', false, '[{"id": "A", "text": "التجريب"}, {"id": "B", "text": "الإسقاط"}, {"id": "C", "text": "المحاولة والخطأ"}, {"id": "D", "text": "التقصي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'يعتمد المنهاج المنقح في النشاط العلمي نهج التقصي (démarche d''investigation): وضعية انطلاق، طرح مشكلة، صياغة فرضيات، تقص (ملاحظة، تجريب، بحث وثائقي، نمذجة)، ثم استنتاج وتواصل. التجريب أداة من أدوات التقصي وليس المنهج كله، والمحاولة والخطأ تصور سلوكي للتعلم.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q109', 'exam_primary_2024_sciences_edu_oct', 109, 'الكفاية المهنية', 'عندما يكون المدرس قادرا على تعبئة مجموعة من المعارف والقدرات لمعالجة وضعيات مهنية مختلفة، فإن ذلك يدل على تَمَلُّكِه:', false, '[{"id": "A", "text": "خبرةً مهنية"}, {"id": "B", "text": "كفايةً مهنية"}, {"id": "C", "text": "قدرةً مهنية"}, {"id": "D", "text": "مهارةً مهنية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'الكفاية هي القدرة على تعبئة مجموعة مندمجة من الموارد (معارف، قدرات، مواقف) لحل فئة من الوضعيات. ونص السؤال يكاد يكون تعريفها حرفيا، مطبقا على الوضعيات المهنية للمدرس. القدرة والمهارة موارد تعبأ داخل الكفاية، والخبرة تراكم للممارسة عبر الزمن.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q110', 'exam_primary_2024_sciences_edu_oct', 110, 'بورديو — العمل التربوي', 'يتصف العمل التربوي في نظر بورديو بكونه عملا:', false, '[{"id": "A", "text": "منظما تُحدّده مبادئ بيداغوجية خالصة"}, {"id": "B", "text": "ترسيخيا ومتواصلا وطويل الأمد"}, {"id": "C", "text": "مؤقتا ينتهي بانتهاء السنة الدراسية"}, {"id": "D", "text": "محدودا في الزمان والمكان"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في "إعادة الإنتاج" يعرف بورديو وباسرون العمل التربوي بأنه عمل ترسيخ (inculcation) يجب أن يدوم مدة كافية لينتج تكوينا دائما، أي الهابيتوس الذي يستمر بعد انقطاع العمل التربوي. فهو متواصل وطويل الأمد، لا مؤقت ولا محدود. كما يرى أنه عنف رمزي يفرض تعسفا ثقافيا، لا مجرد تطبيق لمبادئ بيداغوجية خالصة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- --------------------------------------------------------------------
-- الأسئلة Q111–Q115 مستثناة من هذا الملف: صفحة الدفتر 4/6 لدورة أكتوبر 2024
-- مفقودة من ملف الـPDF (انظر الترويسة أعلاه). لا تُدرج أسئلة من صفحة PDF 6،
-- فهي من دورة فبراير 2024 وأسئلتها مختلفة تماما.
-- --------------------------------------------------------------------

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q116', 'exam_primary_2024_sciences_edu_oct', 116, 'التربية الدامجة — النجاح والفشل', 'من المبادئ الأساسية في التربية الدامجة اعتبار النجاح والفشل في التعلم:', false, '[{"id": "A", "text": "مرتبطاً بالمتعلم وبأسرته"}, {"id": "B", "text": "منفصلاً عن بيئة التعلم وأدواته"}, {"id": "C", "text": "مرتبطاً بالمتعلم وفضاء التعلم"}, {"id": "D", "text": "بعيدا عن نوع الوساطة التربوية المقدمة للمتعلم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'تنقل التربية الدامجة النظر من عجز المتعلم وحده إلى التفاعل بينه وبين بيئته: فالنجاح أو الفشل يتوقف أيضا على ملاءمة الفضاء والوسائل والوساطة التربوية. لذلك تلزم المدرسة بتكييف بيئة التعلم بدل مطالبة المتعلم وحده بالتكيف. وتنقض هذه الفكرة الاختيارين B وD، وحصر الأمر في المتعلم وأسرته ينقضها كذلك.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q117', 'exam_primary_2024_sciences_edu_oct', 117, 'كولبورغ — النمو الأخلاقي', 'تمتد المرحلة التوافقية عند الطفل، حسب كولبورغ، خلال الفترة العمرية بين:', false, '[{"id": "A", "text": "5 و7 سنوات"}, {"id": "B", "text": "7 و10 سنوات"}, {"id": "C", "text": "10 و13 سنة"}, {"id": "D", "text": "13 و15 سنة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'يقسم كولبرغ النمو الأخلاقي إلى ثلاثة مستويات: ما قبل التوافقي (حتى 9 أو 10 سنوات تقريبا)، ثم التوافقي (من 10 إلى 13 سنة تقريبا) حيث يلتزم الطفل بتوقعات الجماعة والقانون، ثم ما بعد التوافقي (من 13 سنة فما فوق، وقد لا يبلغه كثيرون). فالفترة المناسبة هي 10 إلى 13 سنة، وهي الحدود الشائعة في كتب علم النفس التربوي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q118', 'exam_primary_2024_sciences_edu_oct', 118, 'دوركهايم — اكتساب القيم', 'حسب دوركهايم، يكتسب الطفل القيم والأفعال الأخلاقية من خلال:', false, '[{"id": "A", "text": "التحقيق الفعلي للسلوك مع دعمه بالممارسة والتمرين"}, {"id": "B", "text": "إعداد دروس غايتها بيان المبادئ الأخلاقية لكل سلوك"}, {"id": "C", "text": "ترسيخ القيم الدينية التي تشبع بها الطفل قبل التمدرس"}, {"id": "D", "text": "الاعتماد على القيم الأخلاقية التي اكتسبها الطفل سابقا"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'في "التربية الأخلاقية" يرى دوركهايم أن الأخلاق تكتسب بالممارسة داخل الحياة المدرسية: الانضباط للقاعدة، والتعلق بالجماعة، ثم استقلالية الإرادة، لا بدروس نظرية تشرح المبادئ. كما يدعو إلى أخلاق علمانية مستقلة عن الدين، فلا يجعل القيم الدينية السابقة أساسا لها. لذلك يكتسب الطفل القيم بتحقيق السلوك فعليا وترسيخه بالتمرين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q119', 'exam_primary_2024_sciences_edu_oct', 119, 'والون — النمو الاجتماعي', 'حسب نظرية النمو الاجتماعي لوالون، يمر الطفل خلال مرحلة التعليم الابتدائي:', false, '[{"id": "A", "text": "من مرحلة الاندفاع إلى مرحلة الانفعال"}, {"id": "B", "text": "من مرحلة الانفعال إلى المرحلة الحسية الحركية"}, {"id": "C", "text": "من المرحلة الحسية الحركية إلى مرحلة اكتساب الشخصية"}, {"id": "D", "text": "من مرحلة الشخصنة إلى مرحلة الشخصية المتعددة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'مراحل والون: الاندفاع الحركي (0-6 أشهر)، الانفعال (6-12 شهرا)، الحسية الحركية والإسقاطية (1-3 سنوات)، الشخصنة (3-6 سنوات)، ثم المرحلة المقولية (6-11 سنة) التي يندمج فيها الطفل في جماعات متعددة فيكتسب ما يسميه والون "الشخصية متعددة الأدوار" (polyvalente). فالطفل حين يدخل الابتدائي في السادسة ينتقل من الشخصنة إلى هذه المرحلة، والاختيارات الأخرى تخص سن ما قبل التمدرس. التحفظ آت من التسمية المختصرة "الشخصية المتعددة".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, 'تحفظ الموقع (⚠): التسمية المختصرة «الشخصية المتعددة» — والون يسميها «الشخصية متعددة الأدوار» (polyvalente).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q120', 'exam_primary_2024_sciences_edu_oct', 120, 'الوضعية المشكلة', 'كيف نسمي الوضعيةَ التي لا يمكن للمتعلم إنجازها دون إزالةِ العائق أمام تنفيذها؟', false, '[{"id": "A", "text": "الوضعية الديداكتيكية"}, {"id": "B", "text": "الوضعية المشكلة"}, {"id": "C", "text": "الوضعية التعليمية"}, {"id": "D", "text": "الوضعية التعلمية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'الوضعية المشكلة وضعية تعلمية تتضمن عائقا (معرفيا في الغالب) لا يستطيع المتعلم تجاوزه بمكتسباته الحالية، فيضطر إلى بناء معرفة جديدة لإزالته (أستولفي، ميريو). هذا العائق هو ما يميزها عن الوضعيات الديداكتيكية والتعليمية والتعلمية بمعناها العام.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q121
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q121', 'exam_primary_2024_sciences_edu_oct', 121, 'النظرية البنائية — بناء التعلمات', 'كيف تُبنى التعلمات حسب النظرية البنائية؟', false, '[{"id": "A", "text": "بالتفاعل مع الأقران"}, {"id": "B", "text": "بمعزل عن الواقع"}, {"id": "C", "text": "باعتماد منطق استقرائي"}, {"id": "D", "text": "باعتماد منطق استنباطي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'ترى البنائية أن المتعلم يبني معرفته بنشاطه وتفاعله مع محيطه، وهي تنقض فكرة التعلم بمعزل عن الواقع. ولا تقوم على منطق استقرائي أو استنباطي بعينه، فهذان نمطان في الاستدلال لا تصوران لبناء المعرفة. يبقى التفاعل هو الاختيار الوحيد المنسجم معها، وإن كان التفاعل مع الأقران تخصيصا تبرزه السوسيوبنائية أكثر من بنائية بياجي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, 'تحفظ الموقع (⚠): التفاعل مع الأقران تخصيص تبرزه السوسيوبنائية أكثر من بنائية بياجي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q122
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q122', 'exam_primary_2024_sciences_edu_oct', 122, 'التعليمة', 'بِمَ نسمي الأمر الذي يوضح للمتعلم الهدف المطلوبِ تحقيقهُ والمهمة المطلوب بتنفيذها؟', false, '[{"id": "A", "text": "نصيحة"}, {"id": "B", "text": "مَطْلَبٌ"}, {"id": "C", "text": "واجبٌ"}, {"id": "D", "text": "تعليمةٌ"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'التعليمة (consigne) نص قصير موجه إلى المتعلم يحدد المهمة المطلوبة وشروط إنجازها والهدف المنتظر منها، وهي عنصر أساسي في بناء الوضعية وفي التقويم. النصيحة إرشاد غير ملزم، والواجب عمل مكلف به، والمطلب ليس مصطلحا ديداكتيكيا بهذا المعنى.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q123
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q123', 'exam_primary_2024_sciences_edu_oct', 123, 'الرؤية الاستراتيجية 2015-2030', 'حسب الرؤية الاستراتيجية 2015-2030، ما هي القاعدة الأساس لكل إصلاح تربوي؟', false, '[{"id": "A", "text": "التعليم الأولي"}, {"id": "B", "text": "المنهاج التعليمي"}, {"id": "C", "text": "النموذج البيداغوجي"}, {"id": "D", "text": "اكتساب اللغات"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تجعل الرؤية الاستراتيجية 2015-2030 في رافعتها الثانية من التعليم الأولي القاعدة الأساس لكل إصلاح تربوي، وتدعو إلى تعميمه وإلزاميته للأطفال من 4 إلى 6 سنوات ودمجه تدريجيا في التعليم الابتدائي. وقد كرس القانون الإطار 51.17 هذا الاختيار. أما المنهاج والنموذج البيداغوجي واللغات فرافعات أخرى للإصلاح.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q124
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q124', 'exam_primary_2024_sciences_edu_oct', 124, 'السلوكية — التعزيز', 'يهدف التعزيز لدى السلوكيين إلى:', false, '[{"id": "A", "text": "الرفع من نوعية التعلمات المنجزة"}, {"id": "B", "text": "الربط بين المعارف السابقة والجديدة"}, {"id": "C", "text": "التحكم في زمن التعليم والتعلم"}, {"id": "D", "text": "الحث على الإبداع والحس النقدي لدى المتعلمين"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'التعزيز عند سكينر هو ما يلي الاستجابة فيزيد من احتمال تكرارها وتثبيتها، فهو أداة لتقوية السلوك المرغوب وتجويد التعلمات المنجزة. الربط بين المعارف السابقة والجديدة فكرة بنائية ومعرفية، والإبداع والحس النقدي ليسا من أهداف السلوكية التي تشكل سلوكا محددا مسبقا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q125
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q125', 'exam_primary_2024_sciences_edu_oct', 125, 'التربية الدامجة — حالة فرط الحركة', '"ماهر" تلميذ مصاب باضطراب فرط الحركة المصحوب باضطراب الذاكرة وفقدان التركيز والانتباه. "ماهر" يدرس بالسنة الأولى ابتدائي في قسم دامج ويستفيد من خدمات مُرافقةٍ تساعده على التعلم. ما الذي يجب على المدرس فعله عندما يُكلف جماعة المتعلمين بإنجاز نشاط تعلّمي ما؟', false, '[{"id": "A", "text": "يترك المرافقة تنجز هذا النشاط نيابة عن ماهر"}, {"id": "B", "text": "يطلب من المرافقة الاشتغال مع ماهر في قاعة معزولة"}, {"id": "C", "text": "يكتفي فقط بتقديم التعليمات للمرافقة"}, {"id": "D", "text": "يتعامل مع ماهر مثل بقية المتعلمين"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'في التربية الدامجة يبقى المدرس مسؤولا عن تعلم كل متعلمي القسم، ومنهم ماهر، فيشركه في النشاط نفسه مع زملائه مع تكييفات ملائمة، بينما تقتصر المرافقة على الدعم. إنجاز النشاط نيابة عنه يحرمه من التعلم، وعزله في قاعة أخرى يناقض مبدأ الدمج، ومخاطبة المرافقة وحدها تقصيه من التفاعل المباشر مع المدرس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
