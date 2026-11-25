-- ====================================================================
-- مباراتي — ديداكتيك الرياضيات، دورة أكتوبر 2024 (التخصص المزدوج)
-- ====================================================================
-- المصدر: ملف الحل solved/2024/ديداكتيك الرياضيات - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/ديداكتيك الرياضيات.pdf (7 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   رابط AI Studio: https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q51 إلى Q75 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل نص المنهاج (يوليوز 2021) كما
--     تستشهد به التعليلات؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان،
--     والحل مصدره طرف ثالث (AI Studio).
--   * الوضعيات الثلاث المرتبطة أُدرج نصها كاملاً في متن كل سؤال مرتبط بها،
--     حتى يكون السؤال مكتفياً بذاته: الوضعية 1 (Q60–Q62)، الوضعية 2
--     (Q64–Q65)، الوضعية 3 (Q66–Q68).
--   * التعليلات منقولة حرفياً من ملف الحل.
--
-- ملاحظات عن ملف الامتحان:
--   * المسح يبدأ من الصفحة 2/8 — صفحة الغلاف (1/8) مفقودة من الملف؛
--     ورقة الامتحان تحمل علامة قلم من مرشح سابق (X على الاختيار C في Q70)
--     — أُهملت تماماً.
--   * المدة 45 دقيقة: غلاف هذه الدورة نفسها يصف الاختبار بأنه «اختبار ديداكتيك
--     الرياضيات لمدة 45 دقيقة (Q51–Q75)» كما هو موثق في نسخة الكتيب الكاملة
--     المتداولة؛ وتؤكدها صفحة mesconcours.ma لديداكتيك الرياضيات
--     (دورة نونبر 2025، نفس المسلك): 45 دقيقة، المعامل 3 —
--     https://mesconcours.ma/ar/concours/enseignement/2025-119/
--     والمعامل 3 مذكور هنا فقط لأن جدول exams لا يحوي عمود معامل.
--   * الوضعية 3 (الشكل الرباعي): في الشكل المطبوع الزاوية B موسومة بعلامة
--     الزاوية القائمة، والزاوية A منفرجة والزاوية D حادة؛ وبقياس زوايا الشكل
--     كما هو مرسوم لا توجد إلا زاوية واحدة أصغر من القائمة (D)، فمهمة
--     الوضعية نفسها (اختيار زاويتين أصغر من القائمة) بلا زوج صحيح كما هي
--     مطبوعة. هذه المهمة ليست من الأسئلة المرقمة، وأجوبة Q66–Q68 لا تتوقف
--     عليها — انظر verification_note في Q66.
--   * خيارات Q75 تحمل بين قوسين قراءة اتجاه الأسهم كما وردت في ملف الحل
--     («أي: ...»)، وهي إضافة توضيحية من الحل غير مطبوعة على الورقة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_didactics_maths_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على ترقيم المصدر 51–75 (بلا إعادة ترقيم).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_didactics_maths_oct', 'specialty_primary', 2024, 'didactics_maths', 'ديداكتيك الرياضيات', 'امتحان ديداكتيك الرياضيات (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q51', 'exam_primary_2024_didactics_maths_oct', 51, 'بناء المفهوم الرياضياتي', 'حدد(ي) العنصر الذي يتم من خلاله بناء المفهوم في الرياضيات.', false, '[{"id": "A", "text": "مسألة رياضياتية معقدة يؤدي حلها إلى بناء المفهوم."}, {"id": "B", "text": "تلقي المتعلم للمفهوم من خلال تمارين تطبيقية."}, {"id": "C", "text": "ممارسة مستقلة على وضعيات متنوعة لاكتساب المفهوم."}, {"id": "D", "text": "إنجاز تدريجي منهجي لوضعية ديدكتيكية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُبنى المفهوم الرياضياتي وفق المقاربة البنائية عبر وضعية ديدكتيكية تُدبَّر بشكل تدريجي ومنهجي (مراحل الفعل، الصياغة، المصادقة، والمأسسة) بتوجيه من الأستاذ(ة) ومشاركة نشطة للمتعلم. أما الاختيار A فيتضمن وصف "معقدة"، بينما ينص المنهاج على أن الوضعية يجب ألا تكون سهلة مبتذلة ولا صعبة معقدة تفوق قدرات المتعلم؛ والتمارين التطبيقية (B) تخص مرحلة الترييض والتثبيت لا البناء.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q52', 'exam_primary_2024_didactics_maths_oct', 52, 'النقل الديدكتيكي', 'يتم تحويل المعرفة في إطار النقل الديدكتيكي وفق الترتيب الآتي:', false, '[{"id": "A", "text": "المعرفة العالمة - المعرفة المُدَرَّسَة - المعرفة المدرسية - المعرفة المكتسبة."}, {"id": "B", "text": "المعرفة العالمة - المعرفة المكتسبة - المعرفة المدرسية - المعرفة المُدَرَّسَة."}, {"id": "C", "text": "المعرفة العالمة - المعرفة المدرسية - المعرفة المُدَرَّسَة - المعرفة المكتسبة."}, {"id": "D", "text": "المعرفة العالمة - المعرفة المكتسبة - المعرفة المُدَرَّسَة - المعرفة المدرسية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يمر النقل الديدكتيكي (حسب إيف شوفالار) بأربع محطات متسلسلة: المعرفة العالمة (التي ينتجها العلماء والباحثون) ← المعرفة المدرسية / الواجب تدريسها (في البرامج والكتب المدرسية) ← المعرفة المُدَرَّسَة (ما يقدمه الأستاذ فعلياً داخل القسم) ← المعرفة المكتسبة (ما يستوعبه المتعلم فعلياً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q53', 'exam_primary_2024_didactics_maths_oct', 53, 'العقد الديدكتيكي', 'يُعتبر العقد الديدكتيكي:', false, '[{"id": "A", "text": "التزام من المدرس بتقديم وضعيات ديدكتيكية."}, {"id": "B", "text": "يحدد التزامات كل من المدير والمدرس والمتعلم."}, {"id": "C", "text": "اتفاق بين المدرس والمتعلم على تحديد مواضيع المحتوى الدراسي."}, {"id": "D", "text": "مجموع القواعد التي تحدد التزامات كل من المدرس والمتعلم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'العقد الديدكتيكي (حسب غي بروسو) هو مجموع القواعد (الضمنية في الغالب، والصريحة أحياناً) التي تحدد التزامات وتوقعات كل من المدرس والمتعلم تجاه المعرفة موضوع التعلم. ولا يدخل المدير في هذا العقد (B)، ولا يختزل في التزام طرف واحد (A) أو اختيار المضامين (C).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q54', 'exam_primary_2024_didactics_maths_oct', 54, 'تقديم مفهوم المساحة', 'أي من الوضعيات الآتية تعتبر وضعية ديدكتيكية مناسبة لتقديم مفهوم المساحة؟', false, '[{"id": "A", "text": "مطالبة المتعلمين بإنجاز تمرين خاص بالمساحة على الكراسة."}, {"id": "B", "text": "تقديم قاعدة حساب المساحة ومطالبة المتعلمين بتطبيقها."}, {"id": "C", "text": "إنشاء شكل هندسي على السبورة وقياس مساحته باستعمال المسطرة."}, {"id": "D", "text": "مطالبة المتعلمين بقياس مساحة طاولاتهم باعتماد وحدات اعتباطية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُقدم مفهوم المساحة ديدكتيكياً بالانتقال من المحسوس إلى المجرد عبر أنشطة المناولة والترصيف وتغطية السطوح بوحدات اعتباطية (مثل مربعات ورقية أو بطاقات متساوية) وعدّها قبل الانتقال إلى الوحدات الاعتيادية والقواعد الحسابية. أما تقديم القاعدة مباشرة (B) فهو نهج تقليدي، والمسطرة (C) أداة لقياس الطول لا المساحة مباشرة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q55', 'exam_primary_2024_didactics_maths_oct', 55, 'التوجيهات التربوية', 'الهدف الرئيس من التوجيهات التربوية في مادة الرياضيات هو:', false, '[{"id": "A", "text": "توجيه حول المحتوى الدراسي ومواعيد الامتحانات."}, {"id": "B", "text": "توجيه المتعلمين والمتعلمات لتحسين طرق التعلم."}, {"id": "C", "text": "توجيه المدرسين نحو أفضل الممارسات التعليمية."}, {"id": "D", "text": "تقييم أداء المدرسين وتحديد المحتوى الدراسي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تُعد التوجيهات التربوية وثيقة مرجعية موجهة أساساً للأستاذات والأساتذة قصد تأطير عملهم وتوجيههم نحو أفضل الممارسات التعليمية والاختيارات البيداغوجية والديدكتيكية الكفيلة ببناء التعلمات وتقويمها ودعمها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q56', 'exam_primary_2024_didactics_maths_oct', 56, 'النموذج الديدكتيكي', 'يهتم النموذج الديدكتيكي بتخطيط وتدبير الوضعيات التعليمية التعلمية بناء على عدة مكونات. حدد(ي) الاختيار الذي يتضمن المكونات الأساسية لهذا النموذج.', false, '[{"id": "A", "text": "الوضعيات الديدكتيكية، البرنامج الدراسي، التفاعلات بين الأستاذ(ة) ومتعلميه، والعقد الديدكتيكي."}, {"id": "B", "text": "الوضعيات الديدكتيكية، المكتسبات القبلية، التفاعلات بين الأستاذ(ة) ومتعلميه، والبرنامج الدراسي."}, {"id": "C", "text": "الوضعيات الديدكتيكية، المكتسبات القبلية، البرنامج الدراسي، والعقد الديدكتيكي."}, {"id": "D", "text": "الوضعيات الديدكتيكية، المكتسبات القبلية، العقد الديدكتيكي، والتفاعلات بين الأستاذ(ة) ومتعلميه."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يرتبط تخطيط وتدبير الوضعية التعليمية التعلمية في إطار النموذج الديدكتيكي بمكونات التفاعل الصفي والمثلث الديدكتيكي: الوضعيات الديدكتيكية، المكتسبات القبلية للمتعلمين، العقد الديدكتيكي، والتفاعلات بين الأستاذ(ة) ومتعلميه. أما البرنامج الدراسي فهو إطار مؤسساتي مرجعي سابق ومحيط بالعملية وليس مكوناً داخلياً لتدبير التفاعل الديدكتيكي نفسه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q57', 'exam_primary_2024_didactics_maths_oct', 57, 'النهج الرياضياتي', 'حدد(ي) ما يُعتبر مبدأ رئيسيا للنهج الرياضياتي في التعليم الابتدائي من بين ما يلي:', false, '[{"id": "A", "text": "اكتساب المعارف بشكل تدريجي ومنهجي."}, {"id": "B", "text": "تدريب المتعلمين على إنجاز التمارين بشكل منهجي."}, {"id": "C", "text": "تنمية مهارة التجريد لدى المتعلمين بشكل منهجي."}, {"id": "D", "text": "تطوير مهارة إنجاز العمليات الرياضياتية بشكل منهجي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يرتكز النهج الرياضياتي في التعليم الابتدائي على مبدأ التدرج والاستمرارية والمنهجية في بناء واكتساب المعارف والمفاهيم (من الملموس إلى المجرد، ومن البسيط إلى المركب، وبناءً على المكتسبات السابقة). أما التمارين والعمليات الحسابية فهي مجرد أدوات ومكونات جزئية ضمن هذا المسار.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q58', 'exam_primary_2024_didactics_maths_oct', 58, 'وسائل تقديم درس الكسور', 'أي وسيلة من الوسائل الآتية يمكن للأستاذ(ة) أن يستعين بها في تقديم درس الكسور؟', false, '[{"id": "A", "text": "الكتاب المدرسي."}, {"id": "B", "text": "نماذج دائرية قابلة للتقسيم."}, {"id": "C", "text": "بطاقات الأعداد."}, {"id": "D", "text": "القضبان والصفائح."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تُمكّن النماذج الدائرية القابلة للتقسيم (الأقراص المجزأة) من تجسيد مفهوم الكسر كجزء من وحدة مقسمة إلى أجزاء متساوية بصورة بصرية ومحسوسة (النصف، الربع، الثلث...). بينما تُستخدم القضبان والصفائح لتمثيل نظمة العد العشري (وحدات، عشرات، مئات)، وبطاقات الأعداد للحساب الذهني.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q59', 'exam_primary_2024_didactics_maths_oct', 59, 'الوضعية المشكلة', 'حدد(ي) الهدف الرئيس لتوظيف الوضعية المشكلة في تقديم المفاهيم الرياضياتية.', false, '[{"id": "A", "text": "تحسين نتائج التلاميذ من خلال التقييم والدعم."}, {"id": "B", "text": "إنجاز التمارين الرياضياتية وتحفيز المتعلمين."}, {"id": "C", "text": "تقليل زمن اكتساب المفهوم الرياضياتي."}, {"id": "D", "text": "تحفيز التفكير وبناء المعرفة لدى المتعلمين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تُعد الوضعية المشكلة في منهاج الرياضيات حافزاً للتعلم ومنطلقاً لإثارة الصراع المعرفي، بهدف تحفيز التفكير وبناء المعرفة الرياضياتية من طرف المتعلم نفسه بدل تلقيها جاهزة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q60 (الوضعية 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q60', 'exam_primary_2024_didactics_maths_oct', 60, 'الوضعية 1 — المجال', 'الوضعية 1: سافر ياسين بدراجته لمدة 4 أيام. كان يقطع المسافة نفسها كل يوم. في المجموع قطع مسافة قياسها 76 كيلومتراً. ما المسافة التي قطعها ياسين كل يوم؟ حدد(ي) المجال الذي تنتمي إليه هذه الوضعية 1.', false, '[{"id": "A", "text": "الأعداد والحساب."}, {"id": "B", "text": "الهندسة."}, {"id": "C", "text": "القياس."}, {"id": "D", "text": "تنظيم ومعالجة البيانات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تستهدف الوضعية توظيف عملية حسابية (القسمة: 76 ÷ 4 = 19) لإيجاد المسافة المقطوعة في اليوم الواحد، ولا تتطلب قياساً أو تحويلاً بين وحدات الطول؛ إذ يمثل "الكيلومتر" و"الأيام" مجرد سياق للمسألة، مما يجعلها تندرج ضمن مجال الأعداد والحساب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q61 (الوضعية 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q61', 'exam_primary_2024_didactics_maths_oct', 61, 'الوضعية 1 — المفهوم', 'الوضعية 1: سافر ياسين بدراجته لمدة 4 أيام. كان يقطع المسافة نفسها كل يوم. في المجموع قطع مسافة قياسها 76 كيلومتراً. ما المسافة التي قطعها ياسين كل يوم؟ حدد(ي) المفهوم الذي تعالجه الوضعية 1.', false, '[{"id": "A", "text": "الأيام والشهور والسنة."}, {"id": "B", "text": "المتر والكيلومتر."}, {"id": "C", "text": "الكيلومتر."}, {"id": "D", "text": "الجمع المتكرر."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'المفهوم الرياضياتي الذي تعالجه الوضعية هو القسمة (توزيع المسافة الإجمالية 76 km بالتساوي على 4 أيام للحصول على حصة اليوم الواحد: 76 ÷ 4 = 19). وبما أن مفهوم "القسمة" غير وارد ضمن الاختيارات المقترحة، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, 'الجواب E لأن مفهوم «القسمة» غير وارد ضمن الاختيارات المقترحة؛ الوضعية تعالج القسمة (76 ÷ 4 = 19). لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q62 (الوضعية 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q62', 'exam_primary_2024_didactics_maths_oct', 62, 'الوضعية 1 — السنة الدراسية', 'الوضعية 1: سافر ياسين بدراجته لمدة 4 أيام. كان يقطع المسافة نفسها كل يوم. في المجموع قطع مسافة قياسها 76 كيلومتراً. ما المسافة التي قطعها ياسين كل يوم؟ ابتداء من أي سنة دراسية يمكن تقديم الوضعية 1؟', false, '[{"id": "A", "text": "السنة الثالثة."}, {"id": "B", "text": "السنة الرابعة."}, {"id": "C", "text": "السنة الخامسة."}, {"id": "D", "text": "السنة السادسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021، ص 309)، يتضمن برنامج السنة الثالثة تقديم مفهوم القسمة انطلاقاً من التوزيع بالتساوي، وحساب الخارج المضبوط لقسمة عدد من رقمين على عدد من رقم واحد (76 ÷ 4) وحل وضعيات مسائل مرتبطة بها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q63', 'exam_primary_2024_didactics_maths_oct', 63, 'جداء عددين كسريين', 'يتم تقديم تقنية حساب جداء عددين كسريين عن طريق وضعية ديدكتيكية، يُوظَّف فيها:', false, '[{"id": "A", "text": "مساحة المستطيل."}, {"id": "B", "text": "مساحة المثلث."}, {"id": "C", "text": "محيط المثلث."}, {"id": "D", "text": "محيط المستطيل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يُعتمد في بناء وتقريب تقنية حساب جداء عددين كسريين على مساحة المستطيل؛ حيث يُقسَّم مستطيل (أو مربع الوحدة) طولياً حسب مقام الكسر الأول وعرضياً حسب مقام الكسر الثاني، فتُجسِّد مساحة الجزء المشترك الملون جداء الكسرين، ومنها يتم استنتاج قاعدة ضرب البسط في البسط والمقام في المقام.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q64 (الوضعية 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q64', 'exam_primary_2024_didactics_maths_oct', 64, 'الوضعية 2 — المكتسبات القبلية', 'الوضعية 2: الشكل أدناه عبارة عن مستطيل، قياس طوله 6 cm، وقياس عرضه 4 cm. أحسب قياس محيط هذا المستطيل. حدد(ي) المكتسبات القبلية اللازم توافرها لدى المتعلم(ة) لحل الوضعية 2، من بين التعلمات الآتية:', false, '[{"id": "A", "text": "تعرف المتر."}, {"id": "B", "text": "تعرف السنتمتر."}, {"id": "C", "text": "تعرف السنتمتر والمتر."}, {"id": "D", "text": "تعرف مساحة المستطيل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'أبعاد المستطيل معطاة بوحدة السنتمتر (6 cm و 4 cm)، وبالتالي يحتاج المتعلم إلى تعرف هذه الوحدة وفهم دلالتها، بينما لا تتطلب الوضعية أي تحويل إلى المتر، ولا علاقة لها بمساحة المستطيل (التي تُقدَّم لاحقاً في السنة الرابعة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q65 (الوضعية 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q65', 'exam_primary_2024_didactics_maths_oct', 65, 'الوضعية 2 — السنة الدراسية', 'الوضعية 2: الشكل أدناه عبارة عن مستطيل، قياس طوله 6 cm، وقياس عرضه 4 cm. أحسب قياس محيط هذا المستطيل. ابتداء من أي سنة دراسية يمكن تقديم الوضعية 2؟', false, '[{"id": "A", "text": "السنة الثانية."}, {"id": "B", "text": "السنة الثالثة."}, {"id": "C", "text": "السنة الرابعة."}, {"id": "D", "text": "السنة الخامسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021، ص 310 و312) على تقديم مفهوم المحيط وحساب محيط المربع والمستطيل والمثلث وحل مسائل مرتبطة بها ابتداءً من السنة الثالثة ابتدائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q66 (الوضعية 3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q66', 'exam_primary_2024_didactics_maths_oct', 66, 'الوضعية 3 — المجال', 'الوضعية 3: A^، B^، C^، D^ هي زوايا الشكل الهندسي التالي (رباعي). أختار الزاويتين اللتين قياس كل منهما أصغر من قياس الزاوية القائمة؟ (في الشكل: الزاوية B موسومة بعلامة الزاوية القائمة، والزاوية A منفرجة، والزاوية D حادة.) حدد(ي) المجال الذي تندرج ضمنه الوضعية 3.', false, '[{"id": "A", "text": "الأعداد والحساب."}, {"id": "B", "text": "الهندسة."}, {"id": "C", "text": "القياس."}, {"id": "D", "text": "تنظيم ومعالجة البيانات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تعرف الزوايا ومقارنة فتحاتها بالزاوية القائمة وتصنيفها داخل الأشكال الهندسية يندرج في المنهاج الدراسي ضمن مجال الهندسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, 'ملاحظة على الشكل المطبوع للوضعية 3: الزاوية B موسومة بعلامة الزاوية القائمة، والزاوية A منفرجة والزاوية D حادة؛ وبقياس زوايا الشكل كما هو مرسوم لا توجد إلا زاوية واحدة أصغر من القائمة (D)، فمهمة الوضعية نفسها (اختيار زاويتين أصغر من القائمة) بلا زوج صحيح كما هي مطبوعة. هذه المهمة ليست من الأسئلة المرقمة، وأجوبة Q66–Q68 لا تتوقف عليها.')
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q67 (الوضعية 3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q67', 'exam_primary_2024_didactics_maths_oct', 67, 'الوضعية 3 — المكتسب القبلي', 'الوضعية 3: A^، B^، C^، D^ هي زوايا الشكل الهندسي التالي (رباعي). أختار الزاويتين اللتين قياس كل منهما أصغر من قياس الزاوية القائمة؟ (في الشكل: الزاوية B موسومة بعلامة الزاوية القائمة، والزاوية A منفرجة، والزاوية D حادة.) حدد(ي) مكتسبا قبليا لازما للإجابة على هذا السؤال من بين ما يلي:', false, '[{"id": "A", "text": "الزاوية الحادة."}, {"id": "B", "text": "الزاوية المنفرجة."}, {"id": "C", "text": "زوايا المثلث."}, {"id": "D", "text": "الأشكال الهندسية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'للإجابة عن السؤال («الزاويتين اللتين قياس كل منهما أصغر من قياس الزاوية القائمة»)، يحتاج المتعلم إلى مكتسب قبلي أساسي هو تعرف الزاوية القائمة (وكيفية التحقق منها باستعمال المزواة، وهو ما يُكتسب في السنة الثانية) باعتبارها المرجع الأساس للمقارنة. وبما أن «الزاوية القائمة» غير واردة ضمن الاختيارات (بينما الزاوية الحادة والمنفرجة هما التعلم الجديد المستهدف في هذا الدرس)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, 'الجواب E لأن المكتسب القبلي المطلوب (تعرف الزاوية القائمة) غير وارد ضمن الاختيارات المقترحة. لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q68 (الوضعية 3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q68', 'exam_primary_2024_didactics_maths_oct', 68, 'الوضعية 3 — السنة الدراسية', 'الوضعية 3: A^، B^، C^، D^ هي زوايا الشكل الهندسي التالي (رباعي). أختار الزاويتين اللتين قياس كل منهما أصغر من قياس الزاوية القائمة؟ (في الشكل: الزاوية B موسومة بعلامة الزاوية القائمة، والزاوية A منفرجة، والزاوية D حادة.) ابتداء من أي سنة دراسية يمكن تقديم الوضعية 3؟', false, '[{"id": "A", "text": "السنة الأولى من التعليم الابتدائي."}, {"id": "B", "text": "السنة الثانية من التعليم الابتدائي."}, {"id": "C", "text": "السنة الثالثة من التعليم الابتدائي."}, {"id": "D", "text": "السنة الرابعة من التعليم الابتدائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتضمن برنامج السنة الثالثة من التعليم الابتدائي (منهاج يوليوز 2021، ص 310) درس «الزوايا»، والذي يستهدف تعرف الزوايا والتمييز بين الزاوية القائمة والزاوية الأصغر منها (الحادة) والأكبر منها (المنفرجة) باستعمال الأدوات الهندسية المناسبة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q69', 'exam_primary_2024_didactics_maths_oct', 69, 'الحساب الذهني — العمليات', 'ينص منهاج التعليم الابتدائي بضرورة اعتماد الحساب الذهني في بداية كل حصة من حصص الرياضيات، قصد تمكين المتعلمات والمتعلمين من "الطلاقة الحسابية". يركز الحساب الذهني بدرجة أولى على إنجاز عمليات حسابية مرتبطة بـ:', false, '[{"id": "A", "text": "الجمع والضرب والقسمة."}, {"id": "B", "text": "الجمع والطرح والضرب."}, {"id": "C", "text": "الجمع والطرح والقسمة."}, {"id": "D", "text": "الطرح والضرب والقسمة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص منهاج التعليم الابتدائي (يوليوز 2021، ص 277-278) على أن أنشطة الحساب الذهني اليومية ترتكز بالدرجة الأولى على الجمع والطرح والضرب (المجاميع الجزئية، الطرح، وجداول الضرب) لإكساب المتعلمين الدقة والسرعة و«الطلاقة الحسابية».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q70', 'exam_primary_2024_didactics_maths_oct', 70, 'الحساب الذهني — الوسيلة', 'حدد(ي) الوسيلة الديدكتيكية الأساسية التي ينبغي اعتمادها خلال تقديم أنشطة الحساب الذهني من بين الوسائل الآتية:', false, '[{"id": "A", "text": "الألواح."}, {"id": "B", "text": "دفاتر المتعلمين."}, {"id": "C", "text": "بطاقات الأعداد."}, {"id": "D", "text": "الخشيبات والأقراص."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تنص وثيقة المنهاج الدراسي (يوليوز 2021، ص 277-278) صراحة على اعتماد بطاقات الأعداد (11 بطاقة من 0 إلى 10) كوسيلة ديدكتيكية أساسية وفعالة تُستثمر يومياً لمدة 3 إلى 5 دقائق في بداية كل حصة لتطوير مهارات الحساب الذهني.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q71', 'exam_primary_2024_didactics_maths_oct', 71, 'أسس تدريس الرياضيات', 'أي من الاختيارات يعتبر من الأسس الموجهة لتدريس الرياضيات؟', false, '[{"id": "A", "text": "تنمية حس التجريد والتجريب."}, {"id": "B", "text": "تنمية القدرة على إنجاز العمليات الحسابية."}, {"id": "C", "text": "تنمية مهارات التفكير النقدي."}, {"id": "D", "text": "تنمية مهارات الحفظ والتذكر."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'من الأسس والمبادئ الموجهة لتدريس الرياضيات في المنهاج الدراسي إغناء قدرات المتعلم في البحث والملاحظة وتنمية حس التجريد والتجريب، بالانتقال التدريجي من المناولة والتجريب المحسوس إلى بناء المفاهيم والعلاقات المجردة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q72', 'exam_primary_2024_didactics_maths_oct', 72, 'التوزيعية في الضرب', 'أكدت وثيقة المنهاج على ضرورة اعتماد الوسائل الديدكتيكية في تقديم دروس الرياضيات. وتتنوع هذه الوسائل حسب نوع وخصوصية كل درس. ويلجأ الأستاذ(ة) خلال شرح مفهوم التوزيعية في الضرب إلى:', false, '[{"id": "A", "text": "الشبكات التربيعية."}, {"id": "B", "text": "الأكياس والكلل."}, {"id": "C", "text": "الأقراص والخشيبات."}, {"id": "D", "text": "المستقيم العددي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تتيح الشبكات التربيعية تمثيل الجداء على شكل مستطيل من التربيعات يمكن تجزيئه إلى مستطيلين فرعيين لإبراز خاصية توزيعية الضرب بالنسبة للجمع بشكل ملموس وبصري، مثل: 7 × 6 = 7 × (4 + 2) = (7 × 4) + (7 × 2).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q73', 'exam_primary_2024_didactics_maths_oct', 73, 'التناسبية — التقديم', 'أولى منهاج التعليم الابتدائي أهمية كبرى لمفهوم "التناسبية" في مادة الرياضيات، وخصص لها غلافاً زمنياً هاماً. ابتداء من أي سنة دراسية يتم تقديم مفهوم التناسبية؟', false, '[{"id": "A", "text": "السنة الأولى من التعليم الابتدائي."}, {"id": "B", "text": "السنة الثانية من التعليم الابتدائي."}, {"id": "C", "text": "السنة الثالثة من التعليم الابتدائي."}, {"id": "D", "text": "السنة الرابعة من التعليم الابتدائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'من مستجدات المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021، ص 310 و338) تقديم مفهوم التناسبية ابتداءً من السنة الثالثة من التعليم الابتدائي عبر درسي «نحو التناسبية: العلاقات العددية» و«تقديم التناسبية: جدول أعداد متناسبة»، بعد أن كان يُقدم في المنهاج السابق ابتداءً من السنة الرابعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q74', 'exam_primary_2024_didactics_maths_oct', 74, 'التناسبية — المكتسب القبلي', 'حدد(ي) من بين التعلمات الآتية مكتسباً قبلياً أساسياً لبناء مفهوم التناسبية.', false, '[{"id": "A", "text": "الجمع."}, {"id": "B", "text": "الضرب."}, {"id": "C", "text": "الأعداد الستينية."}, {"id": "D", "text": "القوى 2 والقوى 3."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يعتمد بناء مفهوم التناسبية على إدراك العلاقة الضربية الثابتة (معامل التناسب) التي تسمح بالانتقال من قيم السطر الأول إلى القيم الموافقة في السطر الثاني؛ لذا يُعد التحكم في عملية الضرب مكتسباً قبلياً أساسياً ولازماً لبناء التناسبية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة أكتوبر 2024) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_maths_oct_q75', 'exam_primary_2024_didactics_maths_oct', 75, 'التناسبية — تدرج الأهداف', 'نعتبر الأهداف التعلمية الآتية المرتبطة بموضوع التناسبية: ① ملء جداول أعداد متناسبة. ② تعرف جداول أعداد متناسبة. ③ تمثيل وضعية أعداد متناسبة بواسطة رسم مبياني. حدد(ي) التدرج الصحيح لتقديم الأهداف التعلمية أعلاه المرتبطة بالتناسبية.', false, '[{"id": "A", "text": "③ ← ② ← ① (أي: ① ثم ② ثم ③)"}, {"id": "B", "text": "③ ← ① ← ② (أي: ② ثم ① ثم ③)"}, {"id": "C", "text": "① ← ② ← ③ (أي: ③ ثم ② ثم ①)"}, {"id": "D", "text": "① ← ③ ← ② (أي: ② ثم ③ ثم ①)"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وفق التدرج المنطقي والديدكتيكي الوارد في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021، ص 310): يبدأ المتعلم أولاً بـ (②) تعرف جداول أعداد متناسبة (التمييز بين جدول تناسب وغيره وتعرف خاصيته). ينتقل ثانياً إلى (①) ملء جداول أعداد متناسبة (توظيف معامل التناسب أو خاصيات التناسبية لإكمال الجدول). ثم يصل ثالثاً إلى (③) تمثيل وضعية أعداد متناسبة بواسطة رسم مبياني (الانتقال إلى التمثيل المبياني كمرحلة أعلى من التمثيل والتجريد).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1WsTiIPJF_2EQk2ju-FZoj3bggP26T0N5', true, NULL)
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
