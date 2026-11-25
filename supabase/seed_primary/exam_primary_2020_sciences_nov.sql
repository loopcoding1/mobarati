-- ====================================================================
-- مباراتي — العلوم، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- الجزء الأول (5 نقط): 4 وضعيات، QCM أ/ب/ج/د، نقطة لكل إجابة صحيحة.
-- الجزء الثاني (5 نقط): أسئلة مفتوحة، ترقيم الورقة 1، 2.1، 2.2، 2.3 — مرقمة 6–9 هنا.
-- ⚠️ تحفظات: Q4 — البديل الصحيح (ب) يقول إن التجمّد «مقرون باكتساب حرارة»؛ فيزيائياً
--   التجمّد يُطلِق حرارة لا يكتسبها، لكن «ب» هو البديل الوحيد الذي يجمع بين «تجمدا»
--   وثبات درجة الحرارة، فهو الجواب المقصود. Q5 — وصف الجسم C بأنه «شفاف» يناسب الزجاج
--   لا الخشب، لكن باقي المعطيات (سلسلة الكثافة، طفو D، مغناطيسية B) تجعل ج البديل الوحيد المتسق.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_sciences_nov', 'specialty_primary', 2020, 'sciences', 'العلوم', 'امتحان العلوم (دورة نونبر 2020)', 'دورة نونبر 2020', 240, 9)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (9 سؤالاً)

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q1', 'exam_primary_2020_sciences_nov', 1, 'العلوم الطبيعية', 'الوضعية 1 (هضم المواد العضوية): حسب الوثيقة 1 (جدول تراكيز المواد في الأنبوب الهضمي)، أي اقتراح صحيح؟', false, '[{"id": "أ", "text": "هضم النشا يبدأ على مستوى المعدة وينتهي على مستوى الجزء الأول من المعي الدقيق."}, {"id": "ب", "text": "هضم الأحماض الدهنية يتم على مستوى الجزء الأول من المعي الدقيق."}, {"id": "ج", "text": "هضم البروتيدات يبدأ على مستوى المعدة ويتواصل على مستوى الجزء الأول من المعي الدقيق."}, {"id": "د", "text": "هضم الكليكوز يبدأ على مستوى الفم ويكتمل على مستوى الجزء الأول من المعي الدقيق."}]'::jsonb, ARRAY['ج']::text[], 'جدول الوثيقة 1 يبين أن البروتينات تتناقص من الفم (+++) إلى المعدة (++) إلى المعي الدقيق (آثار) بينما تظهر الأحماض الأمينية (ناتج هضمها) في المعدة (آثار) ثم المعي الدقيق (++) — أي أن هضم البروتيدات يبدأ في المعدة ويتواصل في المعي الدقيق. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q2', 'exam_primary_2020_sciences_nov', 2, 'العلوم الطبيعية', 'الوضعية 1: حسب الوثيقة 2 (منحنى النسب % حسب المسافة من الفم)، أي اقتراح صحيح؟', false, '[{"id": "أ", "text": "استقرار نسبة السكريات والدهنيات والبروتيدات على امتداد 70cm الأولى من الأنبوب الهضمي راجع إلى استهلاكها من طرف الجسم."}, {"id": "ب", "text": "تناقص نسبة السكريات والدهنيات والبروتيدات بعد تجاوز طول 70cm من الأنبوب الهضمي راجع إلى تخلص الجسم منها على شكل فضلات."}, {"id": "ج", "text": "تناقص نسبة السكريات والدهنيات والبروتيدات بعد تجاوز طول 70cm من الأنبوب الهضمي راجع إلى امتصاصها على مستوى المعي الدقيق."}, {"id": "د", "text": "تناقص نسبة السكريات والدهنيات والبروتيدات في الأنبوب الهضمي راجع إلى امتصاصها على مستوى المعدة."}]'::jsonb, ARRAY['ج']::text[], 'منحنى الوثيقة 2 يبين أن النسب تبقى ثابتة في أول 70cm (الفم والمريء والمعدة) ثم تتناقص بعد ذلك — وهذا التناقص هو الامتصاص على مستوى المعي الدقيق (الذي يبدأ بعد ~70cm من الفم). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q3', 'exam_primary_2020_sciences_nov', 3, 'العلوم الطبيعية', 'الوضعية 2 (إنبات بذور العدس): 4 مناولات: (1) قطن جاف، 20° ← عدم إنبات؛ (2) قطن مبلل، 20° ← إنبات؛ (3) قطن مبلل، 4° ← عدم إنبات؛ (4) قطن مبلل، 20°، بذور مطبوخة ← عدم إنبات. أي اقتراح صحيح؟', false, '[{"id": "أ", "text": "تكشف مقارنة المناولتين 1 و2 عن أهمية الرطوبة فيما تكشف مقارنة المناولتين 3 و4 عن أهمية درجة الحرارة."}, {"id": "ب", "text": "تكشف مقارنة المناولتين 3 و4 عن أهمية الرطوبة فيما تكشف مقارنة المناولتين 2 و4 عن أهمية درجة الحرارة."}, {"id": "ج", "text": "تكشف مقارنة المناولتين 1 و3 عن أهمية الرطوبة فيما تكشف مقارنة المناولتين 1 و4 عن أهمية درجة الحرارة."}, {"id": "د", "text": "تكشف مقارنة المناولتين 1 و2 عن أهمية الرطوبة فيما تكشف مقارنة المناولتين 2 و3 عن أهمية درجة الحرارة."}]'::jsonb, ARRAY['د']::text[], 'المناولتان 1 و2 تختلفان في الرطوبة فقط (جاف/مبلل، نفس الحرارة 20°)؛ والمناولتان 2 و3 تختلفان في درجة الحرارة فقط (20°/4°، نفس الرطوبة). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q4', 'exam_primary_2020_sciences_nov', 4, 'العلوم الطبيعية', 'الوضعية 3 (النموذج الدقائقي لجسم في حالتين فيزيائيتين مختلفتين: (1) حالة مدمجة مرتبة، (2) حالة منتشرة): ما التحول الذي يحدث عند الانتقال من الحالة (2) إلى الحالة (1)؟', false, '[{"id": "أ", "text": "انصهاراً ويكون مقروناً بارتفاع درجة الحرارة واكتساب حرارة."}, {"id": "ب", "text": "تجمداً ويكون مقروناً باكتساب حرارة دون تغير في درجة الحرارة."}, {"id": "ج", "text": "تجمداً ويكون مقروناً بارتفاع درجة الحرارة وزيادة في حجم الجسم."}, {"id": "د", "text": "تكاثفاً ويكون مقروناً باستقرار في درجة الحرارة وزيادة في حجم الجسم."}]'::jsonb, ARRAY['ب']::text[], 'الانتقال من الحالة المنتشرة (سائلة) إلى الحالة المدمجة المرتبة (صلبة) هو تجمد، ويتم عند درجة حرارة ثابتة. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, 'تحفّظ على صياغة المفتاح: «باكتساب حرارة» غير دقيق فيزيائياً — التجمّد يُطلِق حرارة (يفقد الجسم حرارة) لا يكتسبها؛ لكن «ب» هو البديل الوحيد الذي يجمع بين «تجمدا» وثبات درجة الحرارة، فهو الجواب المقصود.')
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q5', 'exam_primary_2020_sciences_nov', 5, 'العلوم الطبيعية', 'الوضعية 4: الأجسام A–E: A موصل غير مغناطيسي؛ B موصل ينجذب بمغناطيس؛ C عازل ثقيل قابل للانكسار؛ D عازل خفيف يطفو فوق الماء؛ E موصل أحمر آجوري، كثافته > B > A. ما هوية كل جسم؟', false, '[{"id": "أ", "text": "A: الحديد؛ B: البلاستيك؛ C: الخشب؛ D: الزجاج؛ E: النحاس."}, {"id": "ب", "text": "A: الألومنيوم؛ B: الحديد؛ C: الخشب؛ D: الزجاج؛ E: النحاس."}, {"id": "ج", "text": "A: الألومنيوم؛ B: الحديد؛ C: الخشب؛ D: البلاستيك؛ E: النحاس."}, {"id": "د", "text": "A: النحاس؛ B: البلاستيك؛ C: الزجاج؛ D: البلاستيك؛ E: النحاس."}]'::jsonb, ARRAY['ج']::text[], 'B وحده ينجذب بالمغناطيس ← الحديد؛ E لونه أحمر آجوري وكتلته الحجمية أكبر من B ← النحاس؛ A موصل غير مغناطيسي وكتلته الحجمية أصغر من B ← الألومنيوم؛ D عازل خفيف يطفو ← البلاستيك (لا الزجاج)؛ C عازل ثقيل قابل للانكسار ← الخشب. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, 'وصف الجسم C بأنه «شفاف» يناسب الزجاج لا الخشب، لكن باقي المعطيات (سلسلة الكثافة، طفو D، مغناطيسية B) تجعل ج البديل الوحيد المتسق.')
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q6', 'exam_primary_2020_sciences_nov', 6, 'ديداكتيك العلوم', 'الجزء الثاني — دراسة خصائص النباتات وتفاعلها مع الوسط البيئي (مستوى الثالث ابتدائي). 1. ما المفهوم العلمي الذي تستهدفه هذه الدراسة؟ (0,5ن)', false, '[]'::jsonb, ARRAY[]::text[], 'مفهوم التغذية / الاقتيات عند النباتات. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q7', 'exam_primary_2020_sciences_nov', 7, 'ديداكتيك العلوم', 'الجزء الثاني — 2.1. صياغة هدفين تعليميين. (0,5ن)', false, '[]'::jsonb, ARRAY[]::text[], 'الكشف عن أهمية الأملاح المعدنية في تغذية النباتات؛ الكشف عن أهمية الضوء في تغذية النباتات. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q8', 'exam_primary_2020_sciences_nov', 8, 'ديداكتيك العلوم', 'الجزء الثاني — 2.2. صياغة فرضيتين يمكن التحقق منهما باستثمار المناولتين 1 و2. (1ن)', false, '[]'::jsonb, ARRAY[]::text[], 'الأملاح المعدنية ضرورية لتغذية ونمو النباتات؛ الضوء ضروري لتغذية ونمو النباتات. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم (دورة نونبر 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_sciences_nov_q9', 'exam_primary_2020_sciences_nov', 9, 'ديداكتيك العلوم', 'الجزء الثاني — 2.3. أنشطة التحقق من الفرضيات: مراحل التحقق (التقصي لاختبار الفرضيات؛ تقديم وتقاسم الانتاجات؛ التعميم)، أدوار الأستاذ، مهام المتعلم، شكل العمل. (3ن)', false, '[]'::jsonb, ARRAY[]::text[], 'أدوار الأستاذ (1,5ن): توزيع المتعلمين إلى مجموعات؛ ضبط المهام والأدوار داخل كل مجموعة؛ توجيه ومساعدة المجموعات على حسن استثمار الوثائق والتأكد من فهمها؛ تتبع عمل المجموعات لرصد الصعوبات والمساعدة على تجاوزها؛ حث المتعلمين على تدوين ملاحظاتهم وتفسيراتهم؛ تذكير المتعلمين بالمشكل المطروح؛ مطالبة المتعلمين بتحديد الخطوات المتبعة في عملهم؛ مجابهة نتائج المتعلمين والمساهمة في تمحيص فرضياتهم؛ توجيه المتعلمين إلى صياغة الاستنتاج وخلاصة النتائج المحصل عليها؛ تدوين الخلاصة على السبورة. مهام المتعلم (1,5ن): مقارنة نتائج المناولات المقترحة؛ تفسير الاختلافات الملاحظة؛ استنتاج الحاجيات الاقتياتية للنبات الأخضر؛ يدون مقرر كل مجموعة الخلاصات التي توصلت إليها المجموعة بمساعدة من زملائه وتوجيه من المدرس؛ يعرض مقرر كل مجموعة نتائج عمل مجموعته؛ مناقشة النتائج والخلاصات ومقارنتها بالفرضيات المقترحة من أجل إثباتها أو دحضها؛ يشارك في صياغة الاستنتاج وذلك بناء على النتائج المصادق عليها؛ يدون الخلاصات المتوصل إليها. شكل العمل: عمل في مجموعات / عمل جماعي / عمل فردي. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
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
