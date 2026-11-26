-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة يونيو 2017
-- ====================================================================
-- المصدر: ملف الحل solved/2017/ديداكتيك اللغة العربية - دورة يونيو 2017.md
--   (ديداكتيك اللغة العربية، صفحات 10-13 من ملف الامتحان؛
--    التخصص المزدوج، دورة يونيو 2017).
--   ملف الامتحان: exams-ibtida2i/2017/اللغة العربية - امتحان.pdf
--   (13 صفحة، ممسوحة ضوئيا؛ مادة التخصص صفحات 1-9، والديداكتيك
--    صفحات 10-13 — هذا الملف يغطي الديداكتيك فقط).
--   ملف التصحيح: exams-ibtida2i/2017/تصحيح اللغة العربية.pdf
--   (11 صفحة؛ ص 9-11 شبكة تصحيح الديداكتيك الرسمية «عناصر الإجابة»).
--   الحل المنشور: mesconcours.ma/ar/concours/enseignement/2017-992/
--   (أسئلة الديداكتيك Q51-Q59 حسب ترقيم الموقع؛ أجوبتها هي الشبكة
--    الرسمية نفسها، مع أمثلة توضيحية من إعداد الموقع موسومة بذلك).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صورا وقراءته صفحة بصفحة):
--   * الغلاف: دورة يونيو 2017، المدة 3 ساعات، المعامل 2، النقطة
--     النهائية على 60؛ ديداكتيك التخصص 30 نقطة.
--   * نصوص الأسئلة التسعة وخياراتها مطابقة حرفيا لورقة الامتحان
--     (صفحات 10-13: إنتاج نص قرائي + جذاذة حصة قرائية).
--   * الأجوبة: من الشبكة الرسمية في مساحة العمل (ص 9-11 من ملف
--     التصحيح)؛ وطابقها حرفيا الحل المنشور على mesconcours.ma
--     (Q51-Q59) — تطابق تام في كل البنود التسعة.
--   * لا أسئلة متخطاة: أُدرجت البنود التسعة كلها.
--   * لا نص نموذجي رسمي ولا جذاذة نموذجية رسمية — الجواب هو معايير
--     الشبكة الرسمية؛ الأمثلة التوضيحية من mesconcours موسومة بذلك.
--
-- ملاحظات عن النقل:
--   * الترقيم متسلسل 1-9 حسب ترقيم الورقة: Q1 = إنتاج النص القرائي؛
--     Q2 = 1.2 مواصفات المتعلمين؛ Q3 = 2.2 هدفان تعلميان؛
--     Q4-Q9 = عناصر 3.2 (مراحل، أنشطة، أشكال العمل، أسئلة الفهم،
--     الصعوبة، المعالجة). يقابلها على mesconcours.ma Q51-Q59.
--   * الأسئلة كلها مفتوحة (إنتاج وكتابة)، بلا اختيار من متعدد:
--     options = [] وcorrect_answers = [] كما في ملفات 2016 المفتوحة،
--     والجواب الكامل في حقل explanation.
--   * الشرطان الإلزاميان لقبول النص (التمحور حول مجال الأسرة والمجتمع،
--     والترويج لقيمة التسامح الفكري) غياب أحدهما يستوجب النقطة 0
--     على 30 كاملة (النص والجذاذة معا) — حسب الشبكة الرسمية.
--   * المدة 60 دقيقة هي حصة الديداكتيك من الاختبار (جلسة الكتيب)؛
--     مدة الاختبار كاملا 180 دقيقة حسب الغلاف.
--
-- تسمية المعرفات: exam_primary_2017_didactics_ar_jun / exam_primary_2017_didactics_ar_jun_q<n>
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_didactics_ar_jun', 'specialty_primary', 2017, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة يونيو 2017)', 'دورة يونيو 2017', 60, 9)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (9 أسئلة مفتوحة)

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q1', 'exam_primary_2017_didactics_ar_jun', 1, 'ديداكتيك اللغة العربية — إنتاج نص قرائي', 'أنتج(ي) نصا قرائيا يتكون من 60 إلى 80 كلمة، ويتلاءم مع مواصفات متعلمات ومتعلمي المستوى الرابع من التعليم الابتدائي، وذلك وفق الشروط التالية: 1. أن يتمحور النص القرائي المنتج حول مجال الأسرة والمجتمع؛ 2. أن يروج النص المنتج لقيمة التسامح الفكري؛ 3. أن يتضمن النص القرائي جملا تحتوي على الظواهر التي ستوظف وستستثمر في الدرس اللغوي: الفعل اللازم والفعل المتعدي واسم الفاعل واسم المفعول. (10 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'شرطان لا بد منهما لقبول النص (غياب أحدهما يستوجب النقطة 0 على 30): أن يتمحور النص القرائي المنتج حول مجال الأسرة والمجتمع، وأن يروج لقيمة التسامح الفكري. يقصد بمجال الأسرة والمجتمع الأحداث والقضايا الأسرية والمجتمعية القريبة من محيط الطفل وإدراكه، كما يقصد بالتسامح الفكري القدرة على تقبل أفكار الآخرين المختلفة ومعتقداتهم ودياناتهم دون تمييز، بما يضمن التعايش وحرية الرأي والتعبير والسلم والتطور. ويمكن للنص المنتج أن يكون وصفا أو سردا أو حوارا أو قصة أو غير هذا. الملاءمة (1 ن): أن يكون النص متلائما مع متعلمات ومتعلمي المستوى الرابع من التعليم الابتدائي من حيث المواصفات السوسيوثقافية التي حددها المترشح(ة) في السؤال الثاني، وأن يكون في مستوى السنة الرابعة بحيث لا يكون سهلا مبتذلا أو مستعصيا على الفهم. توظيف الظواهر اللغوية (1 ن): أن يتضمن النص جملا تحتوي على الظواهر اللغوية التي ستوظف في حصص الدرس اللغوي: الفعل اللازم؛ الفعل المتعدي؛ اسم الفاعل؛ اسم المفعول — ربع نقطة عن كل ظاهرة لا تمثلها جملة على الأقل. الانسجام (2 ن): ترابط عناصر النص وعدم تناقض أفكاره مع المطلوب وعمقها. سلامة اللغة (2 ن): خلو المنتج من الأخطاء اللغوية بكل أنواعها (إملائية، تركيبية، صرفية، ركاكة): سلامة تامة (خطآن على الأكثر) 2 ن؛ سلامة جزئية (3-4 أخطاء) 1 ن؛ سلامة منعدمة (أكثر من 4 أخطاء) 0. جودة عرض المنتج (2 ن): أن يحرر النص بشكل واضح ومقروء، وأن يحتوي على علامات الترقيم الملائمة؛ ولا يؤخذ بعين الاعتبار شكل النص من عدمه. الحجم (2 ن): حجم جيد (60-80 كلمة) 2 ن؛ حجم ناقص (50-59 كلمة) أو زائد (81-90 كلمة) 1 ن؛ حجم غير مناسب (أقل من 50 أو أكثر من 90 كلمة) 0. مثال توضيحي من mesconcours.ma (وليس نصا نموذجيا رسميا): «اختلف سعيد وجاره في الرأي، فجلس الأب مستمعا إليهما...»: «جلس» فعل لازم، «استمع إلى» و«احترم الرأيَ» فعلان متعديان، «مستمع» اسم فاعل، «الرأي المحترَم» اسم مفعول.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q2', 'exam_primary_2017_didactics_ar_jun', 2, 'ديداكتيك اللغة العربية — مواصفات المتعلمين', 'تحديد مواصفات المتعلمات والمتعلمين الاجتماعية والجغرافية والثقافية ومستوى التحصيل الدراسي (في حوالي أربعة أسطر). (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يصف المترشح(ة) أهم مواصفات المتعلمات والمتعلمين المعنيين بالأنشطة التي سينتجها لفائدتهم، للتأكد من مدى ملاءمة الأنشطة المقترحة لهذه المواصفات، من حيث: الانتماءات الاجتماعية والاقتصادية؛ مميزات المنطقة الثقافية واللغوية؛ المميزات الطبيعية والجغرافية؛ وسط قروي أو حضري؛ حصيلة المكتسبات الدراسية للمتعلمات والمتعلمين وطبيعة الفوارق الفردية المسجلة بينهم؛ وغيرها من المواصفات ذات الصلة ببناء النص القرائي وأنشطة لها معنى عند المتعلمات والمتعلمين خلال حصة القراءة. التنقيط (4 ن): نقطة على الأكثر لكل صنف من المواصفات يذكره المترشح(ة)، وله علاقة بإنتاج النص وأنشطة الحصة، مع مراعاة دقة الوصف وجودته والتزامه بالحجم المطلوب (حوالي أربعة أسطر).', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q3', 'exam_primary_2017_didactics_ar_jun', 3, 'ديداكتيك اللغة العربية — الأهداف التعلمية', 'تحديد هدفين تعلميين ترمي حصة القراءة هذه لتحقيقهما. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'ينبغي لكل هدف تعلمي أن يطبق قدرة معينة (التمييز، التحليل، الملاحظة، ...) على محتوى معرفي معين، مثلا: القدرة على استخلاص المعاني الرئيسة للنص القرائي؛ التمييز بين التسامح الفكري وضده؛ اتخاذ موقف إيجابي من التسامح الفكري؛ القراءة الجهرية السليمة للنص القرائي مع احترام علامات الترقيم. التنقيط (2 ن): في حدود نقطة واحدة لكل هدف تعلمي تبعا لجودة الصياغة؛ وإذا ذكر أكثر من هدفين فينبغي الحرص على انسجامها مع الأنشطة.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q4', 'exam_primary_2017_didactics_ar_jun', 4, 'ديداكتيك اللغة العربية — مراحل الحصة', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: أهم مراحل هذه الحصة. (1 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'قد تختلف المراحل وتسمياتها من إنتاج إلى آخر، كما قد يختلف ترتيبها، لكن عموما يمكن أن يحتوي التخطيط على المراحل التالية أو على بعضها، مما يراه المترشح(ة) مناسبا للمدة الزمنية: مناقشة صورة أو دعامة ديدكتيكية مرافقة للنص؛ اقتراح فرضيات للنص القرائي؛ القراءة الصامتة للنص؛ القراءات الجهرية؛ أسئلة لفهم معاني النص المباشرة؛ أسئلة لفهم معاني النص غير المباشرة؛ مناقشة الأفكار الواردة في النص واستثمارها؛ اتخاذ موقف من النص وقيمة التسامح الفكري التي يطرحها؛ البحث والتوسع في معاني النص. التنقيط (1 ن): ربع نقطة لكل مرحلة رئيسية يتم ذكرها في حدود نقطة واحدة للمجموع؛ وللمصحح(ة) صلاحية تقدير جودة صياغة كل مرحلة وأهميتها.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q5', 'exam_primary_2017_didactics_ar_jun', 5, 'ديداكتيك اللغة العربية — أنشطة الحصة', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: الأنشطة المقترحة لكل مرحلة. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) أنشطة متنوعة للحصة القرائية من حيث الوضعيات والأسئلة ومنهجية العمل وكيفية تقويم كل مرحلة وتجاوز أخطائها وصعوباتها، في علاقة مع الأهداف المحددة وفي علاقة مع قيمة التسامح الفكري. مثال: ملاحظة صورة أسرة تتحاور ووضع فرضيات؛ قراءة صامتة موجهة بسؤال؛ قراءات جهرية فردية مع تصحيح الأخطاء؛ أسئلة فهم؛ نقاش حول موقف من شخصيات النص. التنقيط (3 ن): للمصحح(ة) صلاحية توزيع النقط على الأنشطة المقترحة تبعا لجودتها وأهميتها.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q6', 'exam_primary_2017_didactics_ar_jun', 6, 'ديداكتيك اللغة العربية — أشكال العمل والتنشيط', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: أشكال العمل (فردي، جماعي، مجموعات...) وتقنيات التنشيط والوسائل الموظفة. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'ينبغي أن يصف المترشح(ة) كيفية اشتغال المتعلمات والمتعلمين تبعا لكل مرحلة: ضمن جماعة القسم الكبرى؛ في إطار فردي؛ في إطار مجموعات صغيرة تبعا لمعايير تصنيف معينة؛ كيفية تدبير النقاش وتقنيات التنشيط الموظفة (مناقشة، زوبعة ذهنية، تقنيات المجموعات، القراءات الصامتة، لعب الأدوار والمحاكاة، ... إلخ)؛ جودة الوسائل والدعامات المقترحة لتدبير الحصة القرائية وحسن توظيفها. التنقيط (2 ن): للمصحح(ة) صلاحية تقدير توزيع النقط على العناصر المذكورة. مثال: القراءة الصامتة فردية، الفرضيات جماعية، ومناقشة الموقف في مجموعات أو بلعب الأدوار؛ والوسائل: صورة، سبورة، بطاقات.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q7', 'exam_primary_2017_didactics_ar_jun', 7, 'ديداكتيك اللغة العربية — أسئلة الفهم', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: أسئلة تستهدف قراءة النص وفهمه (أربعة أسئلة، على الأقل، لقياس مهارات قرائية مختلفة). (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'ينبغي أن تتضمن أنشطة الجذاذة أربعة أسئلة على الأقل ينتمي كل سؤال منها إلى مهارة قرائية معينة، بحيث تكون هذه المهارات متدرجة في مستويات القراءة بمعناها الحقيقي الذي يتجاوز مجرد تشفيه النص (قراءة جهرية) إلى اكتشاف مختلف معاني النص المباشرة وغير المباشرة وتقويم النص واتخاذ مواقف إيجابية من القيم والأفكار التي يطرحها. ويمكن الاستئناس بالمهارات التالية: القدرة على توقع مكونات النص (أحداثه، موضوعه، أو عنوانه)؛ القراءة الجهرية السليمة للنص؛ فهم المعاني المباشرة للنص من معجم وغيره؛ فهم المعاني التي يقدمها النص بصفة غير مباشرة؛ مناقشة الأفكار الواردة في النص واستثمارها؛ اتخاذ موقف من النص وقيمة التسامح الفكري التي يطرحها؛ البحث والتوسع في معاني النص. التنقيط (4 ن): نقطة واحدة عن كل سؤال يمثل صنفا من المهارات القرائية، في حدود أربعة نقط للمجموع. أمثلة أسئلة متدرجة من mesconcours.ma (وليست أسئلة رسمية): «ما عنوان مناسب للصورة؟» (توقع)، «من الشخصيات؟» (فهم مباشر)، «لماذا ابتسم الأب؟» (فهم غير مباشر)، «ما رأيك في موقف سعيد؟» (موقف). أربعة أسئلة من المستوى نفسه لا تأخذ النقطة كاملة.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q8', 'exam_primary_2017_didactics_ar_jun', 8, 'ديداكتيك اللغة العربية — الصعوبة المتوقعة', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: صعوبة واحدة يفترض أن تواجه بعض المتعلمات والمتعلمين، مرتبطة بالهدفين اللذين حددتهما. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يصف المترشح(ة) إحدى الصعوبات المفترض وقوع المتعلمين أو بعضهم فيها، وينبغي أن تكون مرتبطة بالهدفين التعليميين اللذين حددهما المترشح(ة) (مهارة قرائية، قيمة التسامح الفكري، ...)، مثل: صعوبة استخلاص المعنى غير المباشر للنص، أو الخلط بين التسامح الفكري والتنازل عن الرأي. التنقيط (2 ن): في حدود نقطتين تبعا لدقة صياغة الصعوبة ووضوحها. (توضيح: الصعوبة يجب أن تنبع من الهدفين لا أن تكون عامة: إذا كان الهدف استخلاص المعاني الرئيسة، فالصعوبة المناسبة هي التوقف عند التفاصيل وعدم التمييز بين الفكرة الرئيسة والفرعية.)', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة يونيو 2017) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_didactics_ar_jun_q9', 'exam_primary_2017_didactics_ar_jun', 9, 'ديداكتيك اللغة العربية — معالجة الصعوبة', 'التخطيط (الجذاذة) لأنشطة الحصة يتم بتعبئة خانات الجدول (المراحل، مهام المدرس(ة)، مهام المتعلمين والمتعلمات) عبر تحديد ما يلي: نشاط / أنشطة لمعالجة هذه الصعوبة. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) نشاطا أو أنشطة ملائمة لمعالجة هذه الصعوبة (وضعيات مشكلة، تمارين، ...)، مثل: تقطيع النص إلى فقرات وإعطاء عنوان لكل فقرة، أو بطاقات جمل يختار منها المتعلم ما يعبر عن الفكرة الرئيسة، أو لعب أدوار لموقف اختلاف في الرأي. التنقيط (2 ن): في حدود نقطتين تبعا لجودة الأنشطة المقترحة. (توضيح: المعالجة تكون من نوع غير النشاط الأول وموجهة للمتعثرين، وتستهدف مصدر الصعوبة مباشرة.)', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2017-992/', true, NULL)
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
