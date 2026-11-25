-- ====================================================================
-- مباراتي — ديداكتيك العلوم، دورة أكتوبر 2024 (التعليم الابتدائي)
-- ====================================================================
-- المصدر: ملف الحل solved/2024/ديداكتيك العلوم - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20؛ رابط المحادثة:
--    https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl)
--   ملف الامتحان: exams-ibtida2i/2024/ديداكتيك العلوم.pdf (9 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q76 إلى Q100 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد الديداكتيك ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * أربعة أجوبة هي E («جميع الاقتراحات السابقة خاطئة»): Q84، Q85، Q86، Q89 —
--     سبب كل منها موثّق في verification_note الخاص بالسؤال.
--   * أسئلة تعتمد على وثائق/رسوم/صور في ورقة الامتحان (Q83–Q91، Q94) موسومة
--     في verification_note؛ الوثائق نفسها غير مضمّنة نصاً في قاعدة البيانات.
--   * التعليلات منقولة حرفياً من ملف الحل.
--   * ملاحظة: في هذا الامتحان توجد إجابة صحيحة واحدة فقط لكل سؤال (كما في ملف الحل).
--
-- ملاحظات عن ملف الامتحان:
--   * المسح يبدأ من الصفحة 2/10 — صفحة الغلاف (1/10) مفقودة من الملف؛
--     المدة 45 دقيقة (والمعامل 3) أُخذتا من التوصيف الرسمي للمباراة
--     (ديداكتيك كل مادة: 45 دقيقة، المعامل 3 — ثابت في توصيفات 2023–2026)،
--     ومن صفحة ديداكتيك النشاط العلمي لدورة نونبر 2025 لنفس المسلك
--     (exammaroc: «مدة الإنجاز: 45 دقيقة — المعامل: 3»؛ وmesconcours.ma
--     لديداكتيك الرياضيات نونبر 2025: 45 دقيقة، المعامل 3).
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (X بجانب A في Q90، وC في Q91،
--     وB في Q92) — أُهملت تماماً.
--   * فرق شكلي واحد فقط بين ملف الحل وورقة الامتحان: خيارات Q77 تحمل في ملف
--     الحل شرطة قائمة «- » قبل البند الأول من كل خيار، وهي غير موجودة في الورقة؛
--     أُبقي نص ملف الحل حرفياً في SQL.
--   * لا أسئلة محذوفة: أُدرجت الأسئلة الـ25 كلها (Q76–Q100).
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر) أو oct (دورة أكتوبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_didactics_sciences_oct', 'specialty_primary', 2024, 'didactics_sciences', 'ديداكتيك العلوم', 'امتحان ديداكتيك العلوم (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E، الأرقام الأصلية 76–100)

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q76', 'exam_primary_2024_didactics_sciences_oct', 76, 'المرتكزات والمفاهيم الأساس', 'يتم التقويم من خلال اعتماد المراحل المتتالية الآتية:', false, '[{"id": "A", "text": "التقييم ← القياس ← التشخيص ← الدعم."}, {"id": "B", "text": "القياس ← التقييم ← التشخيص ← الدعم."}, {"id": "C", "text": "القياس ← التشخيص ← التقييم ← الدعم."}, {"id": "D", "text": "التشخيص ← القياس ← التقييم ← الدعم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يمر التقويم التربوي بسيرورة منهجية متتالية تبدأ بـ القياس (جمع المعطيات وتقديرها كمياً أو كيفياً بواسطة أدوات وروائز)، ثم التقييم (إصدار حكم قيمة على تلك النتائج بمقارنتها بمعايير ومؤشرات محددة لتحديد درجة التحكم)، يليه التشخيص (تحليل الفوارق والوقوف على مواطن التعثر وأسبابها)، وأخيراً الدعم (اتخاذ قرارات بيداغوجية وتنفيذ إجراءات المعالجة والتصحيح والتقوية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q77', 'exam_primary_2024_didactics_sciences_oct', 77, 'المرتكزات والمفاهيم الأساس', 'من أجل دعم التعلمات، يركز المدرس(ة) على الإجراءات الآتية:', false, '[{"id": "A", "text": "- معالجة استراتيجيات التعلم؛ - استدراك نقط الضعف وتنمية نقط القوة؛ - الأشكلة؛ - تعديل منهجية التدريس."}, {"id": "B", "text": "- التركيز على تنمية نقط القوة؛ - تطوير المكتسبات؛ - معالجة استراتيجيات التعلم؛ - اعتماد نفس منهجية التدريس."}, {"id": "C", "text": "- تنمية نقط القوة ونقط الضعف؛ - معالجة استراتيجيات التعلم؛ - اعتماد نفس منهجية التدريس؛ - تشخيص المكتسبات."}, {"id": "D", "text": "- استدراك نقط الضعف وتنمية نقط القوة؛ - تثبيت المكتسبات؛ - تعديل منهجية التدريس؛ - معالجة استراتيجيات التعلم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يستهدف الدعم التربوي استدراك التعثرات وتثمين نقط القوة، وتثبيت المكتسبات، وتعديل طرائق ومنهجية التدريس (وهذا ما يُسقط B وC اللذين يتضمنان "اعتماد نفس منهجية التدريس"، كما أن C يتضمن خطأً ظاهراً هو "تنمية نقط الضعف")، ومعالجة استراتيجيات التعلم لدى المتعلمين. أما الاختيار A فيتضمن "الأشكلة" وهي خطوة تخص مرحلة بناء التعلمات وطرح المشكل العلمي وليست من إجراءات الدعم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q78', 'exam_primary_2024_didactics_sciences_oct', 78, 'المرتكزات والمفاهيم الأساس', 'الخطوات التي يختص بها درس باعتماد نهج التقصي هي:', false, '[{"id": "A", "text": "وضعية انطلاق؛ سؤال التقصي؛ تحديد ميثاق العمل؛ عرض وتقاسم عمل المجموعات."}, {"id": "B", "text": "وضعية انطلاق؛ تملك وضعية الانطلاق؛ اقتراح الفرضيات؛ عرض وتقاسم عمل المجموعات."}, {"id": "C", "text": "وضعية انطلاق؛ تملك وضعية الانطلاق؛ تحديد ميثاق العمل؛ عرض وتقاسم عمل المجموعات."}, {"id": "D", "text": "وضعية انطلاق؛ تملك وضعية الانطلاق؛ اختبار صحة الفرضيات؛ عرض وتقاسم عمل المجموعات."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يشترك البحث العلمي (نهج التقصي العلمي) مع درس النشاط العلمي في الخطوات الإبستمولوجية والعلمية الصرفة مثل: سؤال التقصي (الموجود في A)، واقتراح الفرضيات (في B)، واختبار صحة الفرضيات (في D). بينما يختص إنجاز الدرس في الفصل الدراسي بخطوات ديدكتيكية وتدبيرية صرفة مرتبطة بتنظيم التعلم الصفي، وهي: وضعية الانطلاق، تملك وضعية الانطلاق، تحديد ميثاق العمل، وعرض وتقاسم عمل المجموعات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q79', 'exam_primary_2024_didactics_sciences_oct', 79, 'المرتكزات والمفاهيم الأساس', 'المهارات الحياتية المرتبطة بالمحيط البيئي والاجتماعي للمتعلم(ة) هي:', false, '[{"id": "A", "text": "إدارة الذات؛ التعاطف؛ التفاوض؛ اتخاذ القرار؛ التواصل."}, {"id": "B", "text": "التعاون؛ التعاطف؛ التفاوض؛ التشارك؛ التواصل."}, {"id": "C", "text": "التعاون؛ قبول الاختلاف؛ الصمود؛ التشارك؛ التواصل."}, {"id": "D", "text": "الإبداع؛ التعاطف؛ التفاوض؛ التفكير النقدي؛ التواصل."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تتوزع المهارات الحياتية الاثنتا عشرة المعتمدة في المنهاج الدراسي (وفق إطار اليونيسيف) إلى أبعاد معرفية وذاتية واجتماعية. والمهارات المرتبطة بالتفاعل مع الآخرين والمحيط الاجتماعي والبيئي هي كلها مهارات علائقية وتفاعلية وتتمثل في: التعاون، التعاطف، التفاوض، التشارك (المشاركة)، والتواصل. أما الاختيارات الأخرى فتتضمن مهارات ذاتية/شخصية مثل "إدارة الذات" (A) و"الصمود" (C)، أو مهارات معرفية مثل "الإبداع" و"التفكير النقدي" (D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q80', 'exam_primary_2024_didactics_sciences_oct', 80, 'المرتكزات والمفاهيم الأساس', 'يتميز التمثل عن المفهوم العلمي بـ :', false, '[{"id": "A", "text": "ارتباطه بالبيئة الاجتماعية والتجربة الذاتية ويعتمد المماثلة."}, {"id": "B", "text": "انتمائه للحقل الأكاديمي وله حدود صلاحية ومجال تطبيق واسعين."}, {"id": "C", "text": "ارتباطه بالخبرة الإنسانية الموضوعية وطغيان المنطق على المماثلة."}, {"id": "D", "text": "مطابقته لتطور المعارف العالمة ومستوى التطور التكنولوجي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'التمثل (التصور القبلي) هو بنية ذهنية وتفسير شخصي يبنيه المتعلم انطلاقاً من تجربته اليومية الذاتية ومحيطه الاجتماعي والثقافي، وغالباً ما يعتمد فيه على الحدس والمماثلة (التشبيه). في المقابل، تصف الاختيارات (B وC وD) خصائص المفهوم العلمي (الأكاديمي، الموضوعي، المنطقي، والمرتبط بالمعرفة العالمة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q81', 'exam_primary_2024_didactics_sciences_oct', 81, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'يعتبر إعداد هذه المناهج والبرامج :', false, '[{"id": "A", "text": "نقلا ديدكتيكيا خارجيا مقتصرا على مرجعية اجتماعية."}, {"id": "B", "text": "نقلا ديدكتيكيا داخليا مقتصرا على مرجعية علمية."}, {"id": "C", "text": "نقلا ديدكتيكيا خارجيا مستندا إلى مرجعية علمية واجتماعية."}, {"id": "D", "text": "نقلا ديدكتيكيا داخليا مستندا إلى مرجعية علمية واجتماعية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عملية إعداد المناهج والبرامج الدراسية (تحويل المعرفة العالمة والممارسات الاجتماعية المرجعية إلى "معرفة معدة للتدريس") تضطلع بها لجان المناهج وخبراء التربية (النوسفير)، ولذلك تُصنف نقلاً ديدكتيكياً خارجياً (بينما النقل الداخلي يقوم به المدرس داخل القسم). وكما ورد صراحةً في نص الوضعية (حسب ميشيل دوفلاي M. Develay)، فإن هذا النقل يستند معاً إلى مرجعية علمية (المعرفة العالمة) ومرجعية اجتماعية (الممارسات الاجتماعية المرجعية والخصوصيات المحلية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q82', 'exam_primary_2024_didactics_sciences_oct', 82, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'المرجعيات الأكثر تأثيرا في إدراج هذه المواضيع في المناهج التربوية والبرامج الدراسية هي:', false, '[{"id": "A", "text": "المرجعيات العلمية."}, {"id": "B", "text": "المرجعيات الاقتصادية."}, {"id": "C", "text": "المرجعيات التاريخية."}, {"id": "D", "text": "المرجعيات الاجتماعية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'إدراج المواضيع العلمية الحساسة التي تلامس الجوانب القيمية والأخلاقية والثقافية (مثل الصحة الإنجابية) أو تأجيلها أو تحديد زاوية معالجتها في البرامج الدراسية المغربية يخضع بالأساس لـ المرجعيات الاجتماعية (النسق القيمي والثقافي والديني للمجتمع وقابلية تقبله لهذه المواضيع في أعمار معينة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q83', 'exam_primary_2024_didactics_sciences_oct', 83, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'المفهوم العلمي الذي تسمح الوثيقتان ببنائه هو:', false, '[{"id": "A", "text": "تنوع الكائنات الحية."}, {"id": "B", "text": "الأوساط الطبيعية."}, {"id": "C", "text": "مصادر المياه المختلفة."}, {"id": "D", "text": "تركيب الضوء الأبيض."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يشير نص الوضعية إلى دراسة الظواهر الفيزيائية بالمستوى الرابع (مما يستبعد A وB وC المرتبطة بعلوم الحياة والأرض). وتلتقي الوثيقتان حول مفهوم تركيب الضوء الأبيض: فالوثيقة (1) تبرز تبدد الضوء الأبيض عبر قطرات الماء لتشكيل ألوان الطيف (قوس قزح)، والوثيقة (2) تبرز طغيان اللون الأزرق في أعماق البحر نتيجة امتصاص الماء الانتقائي لباقي ألوان طيف الضوء الأبيض للشمس.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على الوثيقتين (1) و(2) في ورقة الامتحان (رسم الشلال وقوس قزح؛ صورة الغواص في أعماق البحر) — غير مضمّنتين نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q84', 'exam_primary_2024_didactics_sciences_oct', 84, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'قرر المدرس(ة) استبعاد الوثيقة (1) لأنه يتعذر على المتعلم(ة) تحديد :', false, '[{"id": "A", "text": "موقع تدفق الشلال على الصخور."}, {"id": "B", "text": "موقع توزيع الأشجار قرب الشلال."}, {"id": "C", "text": "موقع قوس قزح بالنسبة للشلال."}, {"id": "D", "text": "غياب الأشجار على الصخور."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'جميع الاختيارات (A، B، C، D) تصف تفاصيل مكانية/سطحية إما أنها واضحة فعلاً في الرسم ولا تخدم المفهوم العلمي المدروس (الشلال والأشجار والصخور)، أو أنها مذكورة أصلاً في نص الوضعية (قوس قزح خلف الشلال). في حين أن السبب الديدكتيكي الحقيقي لاستبعاد الوثيقة (1) عند بناء مفهوم تركيب الضوء الأبيض هو أنه يتعذر على المتعلم من خلالها تحديد مصدر الضوء الأبيض (الشمس) أو علاقته بظهور ألوان الطيف/قوس قزح (فضلاً عن أن الرسم لا يظهر تعدد الألوان ولا يثير تساؤلاً علمياً حول تركيب الضوء الأبيض)، وهو غير وارد في الاختيارات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'الجواب E («جميع الاقتراحات السابقة خاطئة»): السبب الديدكتيكي الحقيقي لاستبعاد الوثيقة (1) — تعذّر تحديد مصدر الضوء الأبيض (الشمس) وعلاقته بظهور ألوان الطيف — غير وارد في الاختيارات A–D. السؤال يعتمد على الوثيقة (1) في ورقة الامتحان (رسم الشلال وقوس قزح) — غير مضمّنة نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q85', 'exam_primary_2024_didactics_sciences_oct', 85, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'مبرر اعتماد المدرس(ة) الوثيقة (2) كوضعية انطلاق هو:', false, '[{"id": "A", "text": "قدرة الغواص على الوصول إلى أعماق البحر."}, {"id": "B", "text": "قدرة الأسماك على التنفس في أعماق البحر."}, {"id": "C", "text": "قدرة الغواص على التنفس في أعماق البحر."}, {"id": "D", "text": "قدرة الأسماك على الرؤية في أعماق البحر."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الموضوع المدروس هو ظاهرة فيزيائية (تركيب الضوء الأبيض)، ولذلك فإن مبرر اعتماد الوثيقة (2) هو طغيان اللون الأزرق في أعماق البحر رغم كون ضوء الشمس أبيض (مما يخلق دهشة معرفية وتساؤلاً حول مكونات الضوء الأبيض وسبب بقاء اللون الأزرق في العمق). أما الاختيارات الأربعة (A، B، C، D) فكلها مضللة ولا علاقة لها بالظاهرة الفيزيائية المدروسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'الجواب E («جميع الاقتراحات السابقة خاطئة»): مبرر اعتماد الوثيقة (2) هو طغيان اللون الأزرق في أعماق البحر رغم كون ضوء الشمس أبيض (دهشة معرفية حول تركيب الضوء الأبيض)، وهو غير وارد في الاختيارات A–D. السؤال يعتمد على الوثيقة (2) في ورقة الامتحان (صورة الغواص في أعماق البحر) — غير مضمّنة نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q86', 'exam_primary_2024_didactics_sciences_oct', 86, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'العائق الإبستمولوجي الذي يرتبط بهذا التصور أو التمثل هو:', false, '[{"id": "A", "text": "العائق اللغوي."}, {"id": "B", "text": "العائق الإحيائي."}, {"id": "C", "text": "العائق الجوهري."}, {"id": "D", "text": "العائق الاصطناعي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'اعتقاد المتعلم أن اللون الأزرق للبحر ناتج عن انعكاس لون السماء يرتبط بـ عائق التجربة الأولى (أو العائق الحسي المباشر) حسب تصنيف غاستون باشلار؛ إذ يكتفي المتعلم بالملاحظة الحسية السطحية والمباشرة (رؤية السماء الزرقاء فوق سطح الماء وتشبيه الماء بالمرآة) قبل إخضاعها للنقد العلمي. وهو لا يرتبط بالعائق اللغوي (دلالة الألفاظ)، ولا الإحيائي (إضفاء الحياة على الجماد)، ولا الجوهري (إسناد صفة اللون كجوهر داخلي في مادة الماء)، ولا الاصطناعي (الاعتقاد بأن الظاهرة من صنع الإنسان). وبما أن "عائق التجربة الأولى" غير وارد ضمن الاختيارات، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'الجواب E («جميع الاقتراحات السابقة خاطئة»): التصور يرتبط بعائق التجربة الأولى (العائق الحسي المباشر) حسب باشلار، وهو غير وارد في الاختيارات A–D. السؤال يعتمد على الوضعية 3 (تصور المتعلمين عن لون البحر) في ورقة الامتحان.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q87', 'exam_primary_2024_didactics_sciences_oct', 87, 'مبادئ ديدكتيكية', 'تندرج التجربة التي اقترحها المدرس(ة) ضمن :', false, '[{"id": "A", "text": "التجارب الحسية."}, {"id": "B", "text": "التجارب التدخلية."}, {"id": "C", "text": "تجارب التتبع."}, {"id": "D", "text": "تجارب التصميم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'في هذه التجربة (غطس الأيادي في حوض مائي – وهي من الأنشطة الكلاسيكية لدى Sabine Daro لبناء مفهوم ضغط الماء)، يعتمد المتعلمون على حاسة اللمس لإدراك الإحساس بدفع الماء وضغطه على اليدين مباشرة، وهو ما يطابق تماماً تعريف التجارب الحسية الوارد في الجدول ("توظف الحواس لإدراك المعلومة من لدن المعنيين").', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على صورة التجربة (غطس الأيادي في حوض مائي) وجدول تصنيف التجارب في ورقة الامتحان — غير مضمّنين نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q88', 'exam_primary_2024_didactics_sciences_oct', 88, 'مبادئ ديدكتيكية', 'الإجراء الديدكتيكي الذي نتج عنه تناقض بين النتيجتين هو:', false, '[{"id": "A", "text": "إدراج نتيجة التجربة المنجزة على تربة خشنة."}, {"id": "B", "text": "إدراج نتيجة التجربة المنجزة على عينة رمل شاطئي."}, {"id": "C", "text": "انتظار نتيجة التجربة قصد المقارنة."}, {"id": "D", "text": "طرح سؤال التقصي قبل إنجاز التجربة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'أنجز المتعلمون التجربة على عينة تربة خشنة (التي تترسب في عدة طبقات: حصى، رمل، طمي، طين)، لكن المدرسة تسرعت وقدمت لهم وثيقة لنتيجة تجربة منجزة على عينة مختلفة هي الرمل الشاطئي (الشكل ب)، مما أوقع تناقضاً عند استقرار التجربة الفعلية في الكأس (الشكل ج).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على الأشكال (أ) و(ب) و(ج) في ورقة الامتحان (تجربة التربة الخشنة والرمل الشاطئي) — غير مضمّنة نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q89', 'exam_primary_2024_didactics_sciences_oct', 89, 'مبادئ ديدكتيكية', 'المطالبة بتفسير الاختلاف بين النتيجتين إجراء صحيح لأن النتيجتين تخصان:', false, '[{"id": "A", "text": "عينتين من نفس التربة الخشنة."}, {"id": "B", "text": "عينتين من نفس الرمل الشاطئي."}, {"id": "C", "text": "عينة من الرمل وأخرى من الطمي."}, {"id": "D", "text": "عينة من الرمل وأخرى من الطين."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'النتيجتان (الشكل ب والشكل ج) تخصان عينة من الرمل الشاطئي (الشكل ب) وعينة من تربة خشنة (الشكل ج، التي تضم حصى ورملاً وطمياً وطيناً معاً وليس طمياً فقط أو طيناً فقط). وبما أن هذا التوصيف غير موجود في أي من الاختيارات (A، B، C، D)، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'الجواب E («جميع الاقتراحات السابقة خاطئة»): النتيجتان تخصان عينة من الرمل الشاطئي (الشكل ب) وعينة من تربة خشنة (الشكل ج) — وهذا التوصيف غير وارد في الاختيارات A–D. السؤال يعتمد على الشكلين (ب) و(ج) في ورقة الامتحان — غير مضمّنين نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q90', 'exam_primary_2024_didactics_sciences_oct', 90, 'مبادئ ديدكتيكية', 'مطالبة الأستاذة المتعلمين(ات) بإعادة إنجاز تجارب على رمل شاطئي، هو:', false, '[{"id": "A", "text": "تعديل لسيرورة ومسار العملية التعليمية."}, {"id": "B", "text": "تقويم تشخيصي لمكتسبات المتعلمين(ات)."}, {"id": "C", "text": "تقويم إجمالي لمكتسبات المتعلمين(ات)."}, {"id": "D", "text": "تعديل مراحل إنجاز التجربة من لدن المتعلمين(ات)."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'هذا التدخل من الأستاذة استجابةً لحادث ديدكتيكي طارئ وتساؤل المتعلمين يُعد ضبطاً وتعديلاً لسيرورة ومسار العملية التعليمية-التعلمية (Régulation)، حيث تكيّف الأستاذة تدبيرها للحصة لتجاوز الارتباك وبناء المعرفة بشكل سليم، وليس تقويماً تشخيصياً أو إجمالياً، كما أنه لم يغير مراحل البروتوكول التجريبي نفسها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على سياق الوضعية 2 (تجربتا التربة الخشنة والرمل الشاطئي) في ورقة الامتحان.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q91', 'exam_primary_2024_didactics_sciences_oct', 91, 'مبادئ ديدكتيكية', 'الهدف من التدخل الديدكتيكي الذي باشرته المدرسة فيما سبق قصد إعادة توجيه المتعلمين(ات) هو:', false, '[{"id": "A", "text": "تعرف مكونات خلائط متجانسة وغير متجانسة."}, {"id": "B", "text": "تعميم فهم شروط ترسب مكونات خليط غير متجانس."}, {"id": "C", "text": "تعميم فهم شروط فصل مكونات خليط غير متجانس."}, {"id": "D", "text": "ترتيب مكونات خلائط غير متجانسة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'سؤال التقصي الأساس للحصة في المستوى الخامس هو: "كيف يمكن فصل مكونات خليط غير متجانس؟". ويُلاحظ في الشكلين (ب) و(ج) التركيز على التمييز بين جزء سائل وجزء صلب. ومن خلال مقارنة تجربتي التربة الخشنة والرمل الشاطئي، تعيد المدرسة توجيه المتعلمين نحو الهدف التعلمي الرئيس للدرس، وهو تعميم فهم شروط فصل مكونات خليط غير متجانس (بغض النظر عن تنوع مكونات الجزء الصلب أو اختلاف مدة استقرارها).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على سياق الوضعية 2 (تجربتا التربة الخشنة والرمل الشاطئي) في ورقة الامتحان.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q92', 'exam_primary_2024_didactics_sciences_oct', 92, 'مبادئ ديدكتيكية', 'الترتيب الصحيح لمستويات التقصي وفق تطور المستوى النمائي للمتعلم(ة) هو:', false, '[{"id": "A", "text": "(2) ← (4) ← (1) ← (3)."}, {"id": "B", "text": "(4) ← (2) ← (1) ← (3)."}, {"id": "C", "text": "(3) ← (2) ← (1) ← (4)."}, {"id": "D", "text": "(1) ← (2) ← (4) ← (3)."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تتدرج مستويات التقصي عند هيرون (Herron, 1971) مع تطور المستوى النمائي واستقلالية المتعلم من الأكثر توجيهاً من لدن المدرس إلى الأكثر حرية واستقلالية للمتعلم، على النحو الآتي:', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'ترتيب الأرقام في الخيارات منقول كما في ورقة الامتحان (الاتجاه من اليمين إلى اليسار).')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q93', 'exam_primary_2024_didactics_sciences_oct', 93, 'مبادئ ديدكتيكية', 'مستوى التقصي الذي يناسب هذه الوضعية هو:', false, '[{"id": "A", "text": "التقصي الموجه."}, {"id": "B", "text": "التقصي المنظم."}, {"id": "C", "text": "التقصي المفتوح."}, {"id": "D", "text": "تقصي التأكيد."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'بالرجوع إلى نص الوضعية، قام المدرس بـ طرح المشكل (تحديد المشكلة) وطلب من المتعلمين ملاحظة مدققة لبعض الرسومات ومجسمات لطيور في أوضاع طيران مختلفة في شكل مجموعات (تحديد الإجراءات)، بينما تُرك للمتعلمين دور التحقق من الفرضية وصياغة النتيجة (البحث عن الحل). وهذا يطابق تماماً تعريف التقصي المنظم (رقم 2 في الوضعية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q94', 'exam_primary_2024_didactics_sciences_oct', 94, 'مبادئ ديدكتيكية', 'يندرج هذا النشاط ضمن:', false, '[{"id": "A", "text": "أنشطة الدعم والمعالجة."}, {"id": "B", "text": "أنشطة التفتح الفني."}, {"id": "C", "text": "أنشطة التفتح التكنولوجي."}, {"id": "D", "text": "أنشطة موازية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'صنع هاتف بسيط (وتنفيذ مراحل تحديد الأدوات واللوازم والتركيب والتشغيل) هو تطبيق عملي وتقني للتعلمات العلمية الخاصة بمحور الصوت، ويندرج وفق المنهاج الدراسي للتعليم الابتدائي (المستوى الثاني) ضمن المشاريع / أنشطة التفتح التكنولوجي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'السؤال يعتمد على الوثيقة المصوّرة في ورقة الامتحان (مراحل صنع هاتف بسيط) — غير مضمّنة نصاً هنا.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q95', 'exam_primary_2024_didactics_sciences_oct', 95, 'موارد ديدكتيكية', 'جميع الوسائل التعليمية الآتية تُصنّف ضمن الوسائل المحسوسة:', false, '[{"id": "A", "text": "منبع ضوئي؛ عظام حيوان مرتبة في شكل هيكل؛ موقد غازي؛ بذور نباتية."}, {"id": "B", "text": "أنابيب اختبار؛ فيديو لحركات تنفسية عند الجراد؛ محرار طبي؛ عينات صخرية."}, {"id": "C", "text": "أداة قياس الجهد الكهربائي؛ هياكل عظمية؛ برنام يحاكي حركية النظام الشمسي؛ بذور نباتية."}, {"id": "D", "text": "منبع ضوئي؛ هياكل عظمية؛ موشور زجاجي؛ فيلم يقدم مراحل الطيران عند الحمام."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق تصنيف إدغار ديل (Edgar Dale) الوارد في الجدول، فإن الوسائل المحسوسة تتيح خبرات علمية حقيقية وممارسة مباشرة وملموسة. جميع عناصر الاختيار A هي أدوات وعينات حقيقية ملموسة يمكن مناولتها مباشرة. أما الاختيارات الأخرى فتحتوي على وسائل شبه محسوسة (خبرات ممثلة تقوم على المشاهدة)، وهي: "فيديو" (في B)، "برنام محاكاة" (في C)، و"فيلم" (في D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q96', 'exam_primary_2024_didactics_sciences_oct', 96, 'موارد ديدكتيكية', 'الوسائل التعليمية الآتية التي تراعي السياقية هي:', false, '[{"id": "A", "text": "موشور زجاجي؛ كاشف كهربائي؛ مجسم هيكل عظمي لإنسان."}, {"id": "B", "text": "أسلاك موصلة؛ مواد طرية؛ مصابيح."}, {"id": "C", "text": "أداة قياس الجهد الكهربائي؛ أدوات التشريح؛ مجسم النظام الشمسي."}, {"id": "D", "text": "مكبر زوجي؛ محنطات حيوانية؛ ممطار."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'عرّف الجدول شرط السياقية بـ "توفّر الوسيلة التعليمية في بيئة المتعلم(ة) ومحيطه(ا)، بحيث يمكنه(ا) إحضارها معه(ا)". وتتميز الأسلاك الموصلة، والمواد الطرية (مثل الخضر والفواكه والنباتات...)، والمصابيح بسهولة توفرها في المحيط اليومي والمنزلي للمتعلم وإمكانية إحضارها. أما باقي الاختيارات (موشور، كاشف كهربائي، أداة قياس الجهد، مكبر زوجي، ممطار، محنطات...) فهي تجهيزات مخبرية متخصصة لا تتوفر في المحيط المباشر للمتعلم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q97', 'exam_primary_2024_didactics_sciences_oct', 97, 'موارد ديدكتيكية', 'هذه الحقيبة التربوية ملف تراكمي يرصد:', false, '[{"id": "A", "text": "المدرس(ة) من خلاله مدى تحسن مواقف المتعلم(ة) الإيجابية اتجاه القضايا البيئية والصحية."}, {"id": "B", "text": "المتعلم(ة) من خلاله مدى تحقيقه / مسايرته لمواصفات التخرج من سلكه الدراسي."}, {"id": "C", "text": "المتعلم(ة) بواسطته مدى مسايرته لمستوى زملائه في إنجازه واجباته المنزلية."}, {"id": "D", "text": "المدرس(ة) بواسطته مدى تقدم المتعلم(ة) في اكتساب المهارات والمعارف العلمية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'الحقيبة التربوية الشخصية (Portfolio) هي ملف تراكمي يضم مختلف إنتاجات وأعمال المتعلم، ويُوظف كأداة تقويمية يتابع ويرصد المدرس(ة) من خلالها مدى تطور وتقدم المتعلم(ة) في اكتساب المهارات والمعارف العلمية عبر الزمن. (فالاختيار A يحصرها في المواقف فقط، وB وC يخرجان عن وظيفتها التقويمية المنصوص عليها في الوضعية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q98', 'exam_primary_2024_didactics_sciences_oct', 98, 'موارد ديدكتيكية', 'البعد المهيمن على هذه الكفاية هو:', false, '[{"id": "A", "text": "الاستراتيجي."}, {"id": "B", "text": "الثقافي."}, {"id": "C", "text": "المنهجي."}, {"id": "D", "text": "التكنولوجي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'بالتمعن في منطوق الكفاية النوعية لمادة النشاط العلمي، نجد أن البعد الأكثر حضوراً وهيمنة في صياغتها وبنائها هو البعد المنهجي؛ إذ ترتكز على: "باعتماد خطوات ملائمة من نهج التقصي العلمي، قادراً على حل وضعية مشكلة... عبر التساؤل... ومن خلال الملاحظة والافتراض والمناولة والتعريف والمقارنة والمقابلة والتصنيف والاستنتاج"، وهي كلها منهجيات للتفكير العلمي وتنظيم البحث وحل المشكلات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q99', 'exam_primary_2024_didactics_sciences_oct', 99, 'موارد ديدكتيكية', 'عنصر الكفاية الذي يقابل العبارة التي تحتها خط في نص الكفاية أعلاه، هو: (العبارة المسطر تحتها: "وذلك لأجل تأمين سلامة جسمه(ا) ونظافته(ا) وتغذيته(ا) والحفاظ على محيطه(ا) البيئي")', false, '[{"id": "A", "text": "الموارد."}, {"id": "B", "text": "المهمة."}, {"id": "C", "text": "الوظيفة."}, {"id": "D", "text": "ظروف الإنجاز."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تشير عبارة "وذلك لأجل..." بشكل صريح إلى الغاية والهدف من امتلاك الكفاية وتوظيفها في الحياة اليومية (تأمين سلامة الجسم ونظافته وتغذيته والحفاظ على البيئة)، وهو ما يطابق تماماً تعريف الوظيفة الوارد في الجدول ("الغاية من امتلاك الكفاية وأجرأتها في وضعيات متكافئة").', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, 'العبارة المقصودة («وذلك لأجل تأمين سلامة جسمه(ا) ونظافته(ا) وتغذيته(ا) والحفاظ على محيطه(ا) البيئي») مسطّر تحتها في نص الكفاية في ورقة الامتحان؛ التسطير غير ظاهر في النص العادي فأُثبتت العبارة بين قوسين في نص السؤال.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة أكتوبر 2024) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_sciences_oct_q100', 'exam_primary_2024_didactics_sciences_oct', 100, 'موارد ديدكتيكية', 'تعتبر المحاكاة الرقمية من بين البدائل التي تسمح بـ :', false, '[{"id": "A", "text": "تقليد وظيفة أداة فيزيائية أو إحيائية بواسطة نموذج ملموس."}, {"id": "B", "text": "تقليد أداة فيزيائية أو إحيائية بواسطة نموذج مجرد."}, {"id": "C", "text": "تقليد وظيفة أداة فيزيائية أو إحيائية بواسطة نموذج رقمي."}, {"id": "D", "text": "تقليد أداة فيزيائية أو إحيائية بواسطة نموذج صوري."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المحاكاة الرقمية (Simulation numérique) هي مورد بيداغوجي رقمي يعتمد على الحاسوب أو البرمجيات (أي نموذج رقمي) بهدف تقليد وتمثيل كيفية اشتغال ووظيفة ظاهرة أو أداة فيزيائية أو إحيائية يصعب إنجاز تجربتها واقعياً في القسم (وليس نموذجاً ملموساً أو مجرداً أو صورياً جامداً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Uy82Z1EFX62Sk1Cwao6FTfLMhx_e4Ezl', true, NULL)
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
