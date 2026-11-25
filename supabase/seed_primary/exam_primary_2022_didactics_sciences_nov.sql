-- ====================================================================
-- مباراتي — ديداكتيك العلوم، دورة نونبر 2022 (مكون ديداكتيك النشاط العلمي)
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك العلوم - 2022.md
--   (سجل الامتحانات رقم 67؛ الحل: تصحيح منشور على mesconcours.ma، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2022/ديداكتيك العلوم.pdf (6 صفحات مرقمة 1/9 إلى 6/9، مسح ضوئي CamScanner).
--   رابط صفحة التصحيح: https://mesconcours.ma/ar/concours/enseignement/2022-1016/
--
-- الدورة: نونبر 2022 — من غلاف ورقة الامتحان (الصفحة 1: «دورة نونبر 2022»).
-- المدة والمعامل: من الغلاف نفسه — مدة الإنجاز ساعة واحدة (60 دقيقة)، المعامل 2
--   (للاختبار المشترك كاملا: ديداكتيك العلوم + علوم التربية، 30 سؤالا Q91–Q120).
--   لا يوجد عمود للمعامل في جدول exams؛ المعامل مسجل هنا فقط.
--   هذا الملف يغطي مكون ديداكتيك النشاط العلمي فقط (Q91–Q105، 15 سؤالا)؛
--   الأسئلة Q106–Q120 (علوم التربية) في ملف مستقل (علوم التربية.pdf).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q91 إلى Q105 وخياراته الأربعة (A-D) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة كما نشرها mesconcours.ma؛ لا يوجد مفتاح تصحيح رسمي مرفق
--     بالامتحان، والحل مصدره طرف ثالث (source_type = 'third_party').
--   * أوصاف الوثائق والرسوم والجدول ضمن نصوص الوضعيات 4 و5 و6 و7 منقولة من ملف
--     الحل كما نشرها mesconcours.ma (الوثائق نفسها رسوم/جدول في الورقة فقط)؛
--     الأسئلة المعتمدة على وثيقة موسومة في verification_note.
--   * سؤال واحد موسوم بتحفظ من المصدر نفسه: Q96 (التباس بين إطار TIMSS وتصنيف
--     بلوم) — راجع verification_note الخاص به. لا أسئلة محذوفة: 15/15 مدرجة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2022_didactics_sciences_nov
--   <exam_id>_q<n>  للأسئلة، وnumber هو الترقيم الأصلي في الدفتر (91–105 هنا).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_didactics_sciences_nov', 'specialty_primary', 2022, 'didactics_sciences', 'ديداكتيك العلوم', 'امتحان ديداكتيك العلوم (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 15)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (15 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q91', 'exam_primary_2022_didactics_sciences_nov', 91, 'منهاج النشاط العلمي — مكونات البرنامج', 'الوضعية 1: يهدف النموذج الجديد لتدريس العلوم في المدرسة الابتدائية إلى تكوين أطفال قادرين على مواجهة المشكلات العلمية والتكنولوجية في حياتهم اليومية، وقد تم ترتيب هذا النموذج بشكل متماسك ومترابط ومتكامل لتمكين المتعلمات والمتعلمين من مسايرة التعلمات بشكل فعال.
يتكون برنامج مادة النشاط العلمي من ثلاثة مكونات أساسية هي:', false, '[{"id": "A", "text": "علوم الحياة والعلوم الفيزيائية وعلوم الأرض والفضاء."}, {"id": "B", "text": "المضامين الأساسية والممارسات العلمية ونهج التقصي."}, {"id": "C", "text": "المضامين الأساسية والممارسات العلمية والقيم والمواقف."}, {"id": "D", "text": "علوم الحياة والأرض والعلوم الفيزيائية والتكنولوجيا."}]'::jsonb, ARRAY['B']::text[], 'يبنى المنهاج المنقح للنشاط العلمي على ثلاثة مكونات متكاملة: المضامين الأساسية (المعارف موزعة على المحاور)، والممارسات العلمية (ما يقوم به المتعلم كما يقوم به العالم: الملاحظة والتساؤل والتجريب والنمذجة والتواصل)، ونهج التقصي بوصفه الطريقة التي تبنى بها التعلمات. الاقتراحان A وD يذكران مجالات معرفية لا مكونات للبرنامج، والقيم والمواقف أهداف عرضانية وليست مكونا قائما بذاته.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q92', 'exam_primary_2022_didactics_sciences_nov', 92, 'تنظيم الزمن الدراسي — الأسبوع الخامس', 'الوضعية 2: روعي في تنظيم الزمن المخصص لدراسة محاور ومواضيع النشاط العلمي بالتعليم الابتدائي مبدأ التنوع والتوازن بين الأنشطة، وذلك على امتداد السنة الدراسية التي تتكون من ست وحدات، وتشمل كل وحدة دراسية خمسة أسابيع.
يخصص الأسبوع الخامس من كل وحدة دراسية لمواضيع النشاط العلمي:', false, '[{"id": "A", "text": "لتقويم ودعم وتوليف تعلمات الوحدة."}, {"id": "B", "text": "لتقويم تشخيصي للمكتسبات السابقة."}, {"id": "C", "text": "لبناء وتقديم الحصص الدراسية."}, {"id": "D", "text": "لإنجاز فروض المراقبة المستمرة."}]'::jsonb, ARRAY['A']::text[], 'في التنظيم المعتمد، تخصص الأسابيع الأربعة الأولى من كل وحدة لبناء التعلمات، ويخصص الأسبوع الخامس لتقويم تعلمات الوحدة ودعمها وتوليفها. التقويم التشخيصي يجرى في بداية السنة، وفروض المراقبة المستمرة لا تشغل أسبوعا كاملا من الوحدة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q93', 'exam_primary_2022_didactics_sciences_nov', 93, 'نهج التقصي — الخطوات المنهجية', 'الوضعية 3: يسمح اعتماد نهج التقصي في تدريس العلوم بخلق المواقف التي يأخذ فيها المتعلمون دور الباحثين، فيبادرون إلى إجراء بحث علمي اعتمادا على مجموعة من الخطوات المنهجية.
الخطوات المنهجية لنهج التقصي العلمي هي:', false, '[{"id": "A", "text": "اقتراح وتحديد ميثاق العمل - ملاحظة الظاهرة وصياغة سؤال التقصي - تقديم الفرضيات - التقصي لاختبار الفرضيات - تقاسم أعمال المجموعات - التعميم."}, {"id": "B", "text": "ملاحظة الظاهرة وصياغة سؤال التقصي - تقديم الفرضيات - اقتراح وتحديد ميثاق العمل - التقصي لاختبار الفرضيات - تقاسم أعمال المجموعات - التعميم."}, {"id": "C", "text": "ملاحظة الظاهرة وصياغة سؤال التقصي - اقتراح وتحديد ميثاق العمل - تقاسم أعمال المجموعات - التعميم - تقديم الفرضيات - التقصي لاختبار الفرضيات."}, {"id": "D", "text": "ملاحظة الظاهرة - اقتراح وتحديد ميثاق العمل وصياغة سؤال التقصي - تقديم الفرضيات - التقصي لاختبار الفرضيات - التعميم - تقاسم أعمال المجموعات."}]'::jsonb, ARRAY['B']::text[], 'ينطلق نهج التقصي من ملاحظة ظاهرة تثير سؤالا، ثم يقترح المتعلمون فرضيات للإجابة عنه، ثم يتفقون على ميثاق العمل (من يفعل ماذا، بأي أدوات) قبل التقصي لاختبار الفرضيات، ثم تتقاسم المجموعات نتائجها وتنتهي الحصة بالتعميم. لا يمكن تحديد ميثاق العمل قبل وجود سؤال وفرضيات تختبر، ولا التعميم قبل تقاسم النتائج.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q94', 'exam_primary_2022_didactics_sciences_nov', 94, 'محاور النشاط العلمي — خصائص الكائنات الحية', 'الوضعية 4: في إطار تنفيذ برنامج النشاط العلمي، ولأجل التقصي لاختبار إحدى الفرضيات التي صاغها المتعلمون، تم استثمار الوثيقة أسفله والتي تبين جمجمتين لحيوانين مختلفين: الجمجمة 1 بأنياب طويلة حادة وأضراس قاطعة مدببة، والجمجمة 2 بقرنين وأضراس عريضة مسطحة وبدون أنياب.
المحور الذي ينتمي إليه هذا النشاط هو: (الرسم في الملف فقط — صفحة 3)', false, '[{"id": "A", "text": "دورة حياة الكائنات الحية، التكاثر، الوراثة والأنظمة البيئية."}, {"id": "B", "text": "صحة الإنسان والتفاعل مع البيئة."}, {"id": "C", "text": "تاريخ الأرض وتطور الكائنات الحية."}, {"id": "D", "text": "خصائص الكائنات الحية ووظائفها الحيوية وتفاعلاتها مع البيئة."}]'::jsonb, ARRAY['D']::text[], 'مقارنة أسنان جمجمتين للربط بين شكل الأسنان ونوع الغذاء (لاحم أو عاشب) تدرس وظيفة حيوية هي التغذية وتكيف الحيوان مع وسطه، وهذا مضمون محور خصائص الكائنات الحية ووظائفها الحيوية وتفاعلاتها مع البيئة. النشاط لا يتناول التكاثر ولا صحة الإنسان ولا تطور الكائنات عبر الزمن.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على وثيقة الجمجمتين في ورقة الامتحان (الوضعية 4).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q95', 'exam_primary_2022_didactics_sciences_nov', 95, 'الهدف التعلمي — تصنيف الحيوانات', 'الهدف التعلمي المرتبط بهذا النشاط هو:', false, '[{"id": "A", "text": "ينجز نموذجا لفك أسنان حيوان لاحم و/أو حيوان عاشب."}, {"id": "B", "text": "يستنتج بعض الخاصيات المشتركة لحيوانات عاشبة."}, {"id": "C", "text": "يصنف الحيوانات حسب نظامها الغذائي."}, {"id": "D", "text": "يكتشف أن بعض الحيوانات لها قرون وأخرى لا تتوفر على قرون."}]'::jsonb, ARRAY['C']::text[], 'الوثيقة تضع جمجمة حيوان لاحم (أنياب بارزة وأضراس حادة) بجانب جمجمة حيوان عاشب (أضراس مسطحة وغياب الأنياب)، والمقصود أن يربط المتعلم شكل الأسنان بالنظام الغذائي ليصنف الحيوانات على أساسه. إنجاز نموذج لا يتطلب هذه الوثيقة، والاقتراح B يقتصر على العواشب، والقرون صفة لا علاقة لها بالتغذية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على وثيقة الجمجمتين في ورقة الامتحان (الوضعية 4).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q96', 'exam_primary_2022_didactics_sciences_nov', 96, 'المجال المعرفي — إطار TIMSS', 'المجال المعرفي الذي ينتمي إليه هذا الهدف التعلمي هو:', false, '[{"id": "A", "text": "مجال الاستدلال."}, {"id": "B", "text": "مجال التطبيق."}, {"id": "C", "text": "مجال المعرفة."}, {"id": "D", "text": "مجال الفهم."}]'::jsonb, ARRAY['B']::text[], '⚠ تجمع الاقتراحات بين مجالات دراسة TIMSS (المعرفة، التطبيق، الاستدلال) ومستوى من تصنيف بلوم (الفهم). في إطار TIMSS الذي يعتمده منهاج النشاط العلمي، تندرج أفعال "يقارن" و"يميز" و"يصنف" ضمن مجال التطبيق، لأن المتعلم يوظف معرفة (العلاقة بين الأسنان والغذاء) في وضعية جديدة. الاستدلال يتطلب تحليلا وتركيبا لاستخلاص نتائج غير مباشرة، والمعرفة مجرد تذكر. من يعتمد بلوم وحده قد يضع التصنيف في الفهم، لذلك نبهنا إلى هذا الالتباس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, '⚠ جواب موسوم بتحفظ من المصدر (mesconcours.ma): الاقتراحات تجمع بين مجالات TIMSS (المعرفة، التطبيق، الاستدلال) ومستوى من تصنيف بلوم (الفهم)؛ الجواب B حسب إطار TIMSS المعتمد في منهاج النشاط العلمي، ومن يعتمد بلوم وحده قد يضعه في الفهم. يعتمد السؤال على وثيقة الجمجمتين (الوضعية 4).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q97', 'exam_primary_2022_didactics_sciences_nov', 97, 'خصائص المادة — حالات المادة', 'الوضعية 5: للكشف عن بعض خصائص المادة اقترح الأستاذ المناولة الآتية:
تم وضع نفس الحجم V من ثلاث مواد مختلفة "أ" و"ب" و"ج" في إناء يبلغ حجمه أربعة أضعاف الحجم V، وتمثل أشكال الوثيقة أسفله النتائج المحصلة (يمثل الجزء المخطط الحيز الذي تحتله كل مادة داخل الإناء): المادة "أ" كتلة قائمة في وسط قعر الإناء، المادة "ب" طبقة مستوية تغطي قعر الإناء كله، المادة "ج" تملأ الإناء كله.
يتمثل الهدف من إنجاز هذه المناولة في دراسة: (الرسم في الملف فقط — صفحة 4)', false, '[{"id": "A", "text": "الكتلة الحجمية للمواد."}, {"id": "B", "text": "الخصائص الكيميائية للمواد."}, {"id": "C", "text": "الخصائص الفيزيائية للمواد."}, {"id": "D", "text": "العلاقة بين حجم وشكل المواد."}]'::jsonb, ARRAY['C']::text[], 'تلاحظ المناولة كيف تشغل كل مادة الإناء: هل تحافظ على شكلها وحجمها أم تأخذ شكل الإناء أم تملؤه كله. هذه خصائص فيزيائية تميز الحالات الثلاث للمادة. لا يوجد قياس للكتلة، ولا تحول كيميائي، والمناولة لا تدرس علاقة بين الحجم والشكل بل الشكل والحجم معا لكل حالة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على رسم أشكال المواد الثلاث في الإناء (الوضعية 5).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q98', 'exam_primary_2022_didactics_sciences_nov', 98, 'نتائج المناولة — الشكل والحجم', 'بعد إنجاز المناولة يقوم المتعلمون بتحرير النتائج المتوصل إليها. النتيجة المنتظرة من خلال هذه المناولة هي:', false, '[{"id": "A", "text": "تتميز المادتان \"أ\" و\"ب\" بحجم ثابت وشكل متغير، فيما تتميز المادة \"ج\" بحجم متغير وشكل ثابت."}, {"id": "B", "text": "تتميز المادة \"أ\" بشكل وحجم ثابتين، فيما تتميز المادتان \"ب\" و\"ج\" بشكل وحجم متغيرين."}, {"id": "C", "text": "تتميز المادة \"أ\" بشكل وحجم ثابتين، أما المادة \"ب\" فتتميز بحجم ثابت وشكل متغير، فيما تتميز المادة \"ج\" بشكل وحجم متغيرين."}, {"id": "D", "text": "تتميز المادة \"أ\" بشكل ثابت وحجم متغير، أما المادة \"ب\" فتتميز بشكل وحجم متغيرين، فيما تتميز المادة \"ج\" بحجم ثابت وشكل متغير."}]'::jsonb, ARRAY['C']::text[], 'المادة "أ" بقيت كتلة بشكلها الخاص وتشغل الحجم V: شكل وحجم ثابتان. المادة "ب" انتشرت في قعر الإناء وأخذت شكله لكنها لم تشغل إلا الحجم V: حجم ثابت وشكل متغير. المادة "ج" ملأت الإناء كله (4V) فتغير حجمها وشكلها معا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على رسم أشكال المواد الثلاث في الإناء (الوضعية 5).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q99', 'exam_primary_2022_didactics_sciences_nov', 99, 'استنتاج المناولة — حالات المادة', 'الاستنتاج الذي يمكن التوصل إليه من خلال نتائج هذه المناولة هو:', false, '[{"id": "A", "text": "المادة \"أ\" غير قابلة للتمدد في حين أن المادتين \"ب\" و\"ج\" قابلتان للتمدد."}, {"id": "B", "text": "المادتان \"أ\" و\"ب\" قابلتان للتمدد في حين أن المادة \"ج\" غير قابلة للتمدد."}, {"id": "C", "text": "المادة \"أ\" صلبة والمادة \"ب\" سائلة والمادة \"ج\" غازية."}, {"id": "D", "text": "المادة \"أ\" صلبة والمادتان \"ب\" و\"ج\" غازيتان."}]'::jsonb, ARRAY['C']::text[], 'الشكل والحجم الثابتان يميزان الحالة الصلبة، والحجم الثابت مع شكل الإناء يميز الحالة السائلة، وشغل الحيز المتاح كله يميز الحالة الغازية. المادة "ب" احتفظت بحجمها فهي سائلة لا غازية، وهذا يسقط D. والمناولة لم تدرس التمدد بالحرارة، فيسقط A وB.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على رسم أشكال المواد الثلاث في الإناء (الوضعية 5).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q100', 'exam_primary_2022_didactics_sciences_nov', 100, 'التنفس — الهدف من المناولة', 'الوضعية 6: حسب وثيقة المنهاج الدراسي للتعليم الابتدائي، يندرج موضوع التنفس ضمن محور صحة الإنسان والتفاعل مع البيئة في مستوى السنة الثالثة من التعليم الابتدائي، ويستهدف ثلاثة أهداف تعلمية تتمثل في تعرف أعضاء الجهاز التنفسي عند الإنسان، وربط عملية التنفس بحركة وحجم القفص الصدري، وتفسير تأثير التلوث على الجهاز التنفسي.
يشكل هذا الموضوع فرصة لإنجاز العديد من المناولات، من بينها تلك الممثلة في الوثيقة جانبه: طفل يقيس محيط صدره بشريط متري في حالة الشهيق ثم في حالة الزفير.
الهدف من إنجاز هذه المناولة هو: (الرسم في الملف فقط — صفحة 5)', false, '[{"id": "A", "text": "تعرف أعضاء الجهاز التنفسي عند الإنسان."}, {"id": "B", "text": "ربط عملية التنفس بحركة وحجم القفص الصدري."}, {"id": "C", "text": "تفسير تأثير التلوث على الجهاز التنفسي."}, {"id": "D", "text": "الكشف عن امتصاص الأوكسجين وطرح ثنائي أوكسيد الكربون خلال التنفس."}]'::jsonb, ARRAY['B']::text[], 'يقيس الطفل محيط صدره بالشريط المتري في حالتي الشهيق والزفير، فيلاحظ أن المحيط يزداد عند الشهيق وينقص عند الزفير. فالمناولة تربط التنفس بحركة القفص الصدري وتغير حجمه، وهو الهدف الثاني من الأهداف الثلاثة المذكورة. لا تظهر فيها أعضاء الجهاز التنفسي ولا التلوث ولا الغازات.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على وثيقة قياس محيط الصدر بالشريط المتري (الوضعية 6).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q101', 'exam_primary_2022_didactics_sciences_nov', 101, 'التنفس — دور العضلات', 'بخصوص استنتاجات المتعلمين حول دور العضلات في ضمان حركية الهواء من وإلى الرئتين خلال عمليتي الزفير والشهيق، الاستنتاج الصحيح هو:', false, '[{"id": "A", "text": "أثناء الزفير ترتخي العضلات الصدرية وتتقلص عضلة الحجاب الحاجز فيتقلص حجم القفص الصدري مما يسمح بطرد الهواء من الرئتين."}, {"id": "B", "text": "أثناء الشهيق ترتخي العضلات الصدرية وعضلة الحجاب الحاجز فيتسع القفص الصدري مما يسمح للهواء بالدخول إلى الرئتين."}, {"id": "C", "text": "أثناء الشهيق تتقلص العضلات الصدرية وعضلة الحجاب الحاجز فيتسع القفص الصدري مما يسمح للهواء بالدخول إلى الرئتين."}, {"id": "D", "text": "أثناء الزفير تتقلص العضلات الصدرية وترتخي عضلة الحجاب الحاجز فيتقلص حجم القفص الصدري مما يسمح بطرد الهواء من الرئتين."}]'::jsonb, ARRAY['C']::text[], 'الشهيق عملية نشيطة: تتقلص العضلات بين الضلوع فترفع الأضلاع، ويتقلص الحجاب الحاجز فينبسط وينخفض، فيتسع القفص الصدري ويدخل الهواء. أما الزفير فيحدث حين ترتخي هذه العضلات كلها فيعود القفص الصدري إلى حجمه ويطرد الهواء. الاقتراحات الأخرى تخلط بين التقلص والارتخاء في إحدى العمليتين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على وثيقة قياس محيط الصدر بالشريط المتري (الوضعية 6).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q102', 'exam_primary_2022_didactics_sciences_nov', 102, 'تصحيح تمثل — وسيلة ديدكتيكية', 'يعتبر بعض المتعلمين أن حركية الهواء من وإلى داخل الرئتين هي التي تتسبب في نقصان أو زيادة حجم القفص الصدري، ولتصحيح هذا التمثل، المرتبط بمفهوم التنفس، يمكن الاستعانة بإحدى الوسائل الديدكتيكية الآتية:', false, '[{"id": "A", "text": "قطع من رئة خروف لإبراز المكونات الداخلية للرئة."}, {"id": "B", "text": "آلة نفخ تقليدية (كير أو مضخة يدوية)."}, {"id": "C", "text": "مجلوف يبين تموضع الرئتين داخل القفص الصدري."}, {"id": "D", "text": "وثائق من الكتاب المدرسي تبين شكل الرئتين أثناء الشهيق والزفير."}]'::jsonb, ARRAY['B']::text[], 'التمثل الخاطئ يقلب العلاقة السببية: الهواء هو الذي يحرك الصدر. الكير نموذج يجعل المتعلم يلاحظ العكس بيديه: حين يباعد بين ذراعيه يزداد حجمه فيدخل الهواء، وحين يضمهما ينقص حجمه فيخرج الهواء، فتغير الحجم هو سبب حركة الهواء. قطع الرئة والمجلوف والوثائق تصف البنية أو الشكل ولا تبرز هذه العلاقة السببية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على وثيقة قياس محيط الصدر بالشريط المتري (الوضعية 6).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q103', 'exam_primary_2022_didactics_sciences_nov', 103, 'خصائص النباتات — التغذية والنمو', 'الوضعية 7: في إطار دراسة خصائص النباتات وتفاعلها مع الوسط البيئي، طالب الأستاذ تلاميذه بغرس نبتات من نفس النوع ولها نفس الطول في أربعة أصص في ظروف تجريبية مختلفة، يبين الجدول أسفله الظروف التجريبية والنتائج المحصلة بعد أسبوعين.
رقم الأصيص | الظروف التجريبية | شكل النبتة بعد أسبوعين | طول النبتة
1 | تربة حقل + ماء مقطر + إضاءة جيدة | نبتة قوية بأوراق كثيرة وعريضة | 19 cm
2 | رمل مغسول + ماء مقطر + إضاءة جيدة | نبتة صغيرة بأوراق قليلة | 13 cm
3 | تربة حقل + إضاءة جيدة (بدون ماء) | نبتة ذابلة منحنية | 10 cm
4 | تربة حقل + ماء مقطر + ظلام | ساق رفيعة طويلة شاحبة بأوراق صغيرة جدا | 25 cm
خصائص النباتات التي تكشف عنها هذه المناولات هي:', false, '[{"id": "A", "text": "النمو والتكاثر."}, {"id": "B", "text": "التنفس والتكاثر."}, {"id": "C", "text": "التغذية والنمو."}, {"id": "D", "text": "التغذية والتنفس."}]'::jsonb, ARRAY['C']::text[], 'تغير المناولات عوامل التغذية (الأملاح المعدنية في تربة الحقل، الماء، الضوء اللازم لصنع الغذاء) وتقيس النتيجة بطول النبتة وشكلها، أي بالنمو. لا يوجد في التجربة ما يتعلق بالتكاثر (أزهار، بذور) ولا بالتبادل الغازي للتنفس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على جدول الأصص الأربعة في ورقة الامتحان (الوضعية 7).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q104', 'exam_primary_2022_didactics_sciences_nov', 104, 'الأملاح المعدنية — المقارنة التجريبية', 'لإبراز أهمية الأملاح المعدنية في حياة النباتات، ينبغي على المتعلمين القيام ب:', false, '[{"id": "A", "text": "مقارنة بين النتائج المحصلة في الأصيصين 1 و2."}, {"id": "B", "text": "مقارنة بين النتائج المحصلة في الأصيصين 2 و3."}, {"id": "C", "text": "مقارنة بين النتائج المحصلة في الأصيصين 1 و4."}, {"id": "D", "text": "مقارنة بين النتائج المحصلة في الأصيصين 3 و4."}]'::jsonb, ARRAY['A']::text[], 'لدراسة عامل واحد يجب مقارنة أصيصين لا يختلفان إلا فيه. الأصيصان 1 و2 يتلقيان الماء المقطر والإضاءة الجيدة نفسيهما، ويختلفان فقط في الوسط: تربة حقل غنية بالأملاح المعدنية (19 cm) ورمل مغسول خال منها (13 cm). المقارنات الأخرى تغير أكثر من عامل أو تدرس الماء والضوء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على جدول الأصص الأربعة في ورقة الامتحان (الوضعية 7).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة نونبر 2022) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_sciences_nov_q105', 'exam_primary_2022_didactics_sciences_nov', 105, 'الإضاءة — قراءة النتائج التجريبية', 'خلال مناقشة أهمية عامل الإضاءة في حياة النباتات، أفاد أحد المتعلمين بما يلي: "النباتات لا تحتاج إلى الإضاءة للنمو لأن النبتة في الأصيص أربعة نمت بشكل أفضل في الظلام". بالاعتماد على النتائج التجريبية أعلاه يمكن اعتبار هذه الإجابة:', false, '[{"id": "A", "text": "صحيحة لكونها توافق النتائج التجريبية."}, {"id": "B", "text": "خاطئة لكونها لا توافق النتائج التجريبية."}, {"id": "C", "text": "صحيحة لكونها توافق المستوى الإدراكي للمتعلمين."}, {"id": "D", "text": "خاطئة لكونها لا توافق المعرفة الأكاديمية."}]'::jsonb, ARRAY['B']::text[], 'صحيح أن نبتة الأصيص 4 أطول (25 cm)، لكن الرسم يبين ساقا رفيعة شاحبة بأوراق صغيرة جدا: إنها استطالة في الظلام بحثا عن الضوء، لا نمو جيد. مقارنتها بالأصيص 1 (نبتة قوية خضراء كثيرة الأوراق) تبين أن الضوء ضروري، فالإجابة خاطئة لأنها لا تقرأ النتائج التجريبية كاملة. الحكم يبنى على التجربة نفسها لا على سلطة المعرفة الأكاديمية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1016/', true, 'يعتمد السؤال على جدول الأصص الأربعة في ورقة الامتحان (الوضعية 7).')
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
