-- ====================================================================
-- مباراتي — امتحان ابتدائي: العلوم، مادة التخصص، دورة دجنبر 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/العلوم - امتحان.md
--   (سجل الامتحانات رقم 19؛ الحل: من المفتاح الرسمي المرفق بالامتحان، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2018/العلوم - امتحان.pdf (4 صفحات).
--   ملف التصحيح الرسمي (في مساحة العمل): exams-ibtida2i/2018/تصحيح العلوم.pdf
--   (صفحتان، مسح ضوئي: عناصر الإجابة الرسمية للمواضيع الثلاثة).
--   البحث في Google: صفحات تجمّع نماذج دورة دجنبر 2018 مع التصحيح
--   (taalimi.info، concoursmarocofficiel.com، 4ostad.com) تستضيف المفتاح
--   الرسمي نفسه أو تصحيحاً تطبيقياً بالفيديو؛ لم يُعثر على حل نصي منشور
--   مستقل يضيف تعليلات، لذلك source_url = NULL.
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q13 وخياراته مطابقة لورقة الامتحان.
--   * الأجوبة الصحيحة مأخوذة حرفياً من المفتاح الرسمي؛ لا يوجد أي تعارض
--     مع حل منشور (لا يوجد حل منشور مستقل).
--   * المدة (90 دقيقة) والمعامل (2) من غلاف ورقة الامتحان.
--   * الترقيم متسلسل Q1-Q13: الموضوع الأول Q1-Q4، الوضعية 1 Q5-Q7،
--     الوضعية 2 Q8-Q9، الموضوع الثالث (ديداكتيك، أسئلة مفتوحة) Q10-Q13.
--   * لا أسئلة محذوفة: جميع أسئلة الورقة الـ13 أُدرجت.
--
-- نقاط تستدعي الانتباه (موسومة في verification_note):
--   * Q2: الاقتراح (أ) يبدو صحيحاً علمياً، لكن المفتاح الرسمي يمنح النقطة
--     لـ (ب) وحده؛ اعتُمد المفتاح الرسمي.
--   * Q5: كلمة «قفصي» في الاقتراحات (ب) و(ج) و(د) كما تُقرأ في المسح؛
--     قد تكون «قصبي».
--   * Q9: عبارة «التكاثر الابتدائي» كما تُقرأ في المسح؛ المقصود التكاثر
--     اللاجنسي/الخضري.
--   * Q10: كلمة واحدة في عناصر إجابة المفتاح الرسمي غير واضحة في المسح.
--
-- تسمية المعرفات: exam_primary_2018_sciences_dec
--   (exam_primary_<year>_<subject>_<session>؛ session: dec = دجنبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_sciences_dec', 'specialty_primary', 2018, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص (دورة دجنبر 2018)', 'دورة دجنبر 2018', 90, 13)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (13 سؤالاً: Q1-Q9 اختيار من متعدد، Q10-Q13 أسئلة مفتوحة)

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q1', 'exam_primary_2018_sciences_dec', 1, 'الكتلة الحجمية والطفو', 'يعطي الجدول الكتل الحجمية لبعض الأجسام الصلبة والسائلة (النحاس 8,9؛ الزجاج 2,5؛ الخشب 0,65؛ البلاستيك 0,95؛ الحليب 1,03؛ الماء 1؛ الزيت 0,92 g/cm³). الأجسام التي تطفو فوق سطح الماء هي:', false, '[{"id": "A", "text": "الحليب والخشب والزجاج"}, {"id": "B", "text": "الخشب والبلاستيك والزجاج"}, {"id": "C", "text": "الخشب والبلاستيك والزيت"}, {"id": "D", "text": "النحاس والزجاج والخشب"}]'::jsonb, ARRAY['C']::text[], 'يطفو فوق الماء كل جسم كتلته الحجمية أصغر من كتلة الماء الحجمية (1 g/cm³): الخشب (0,65) والبلاستيك (0,95) والزيت (0,92). أما الحليب (1,03) والزجاج (2,5) والنحاس (8,9) فكتلها الحجمية أكبر من 1 فتغرق.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q2', 'exam_primary_2018_sciences_dec', 2, 'تغيرات حالات المادة', 'نوجد قطعة من الجليد كتلتها 45g عند درجة الحرارة 0°C (الحالة 1). نترك هذه القطعة في الهواء، ثم نقيس درجة حرارتها، فنجد 5°C (الحالة 2). عند الانتقال من الحالة 1 إلى الحالة 2:', false, '[{"id": "A", "text": "يخضع الجليد إلى عملية ذوبان فيتحول إلى ماء سائل"}, {"id": "B", "text": "تبقى كتلة الماء هي عينها"}, {"id": "C", "text": "يزداد حجم الماء"}, {"id": "D", "text": "تصبح جزيئات الماء غير منتظمة وأقل ارتباطا وأكثر تباعدا"}]'::jsonb, ARRAY['B']::text[], 'الكتلة محفوظة أثناء تغير الحالة الفيزيائية: كتلة الماء الناتج عن ذوبان الجليد تساوي كتلة الجليد (45g). الجواب حسب المفتاح الرسمي.', 'qcm', 'official', NULL, true, 'الاقتراح (أ) يبدو صحيحاً علمياً (الجليد يذوب فعلاً)، لكن المفتاح الرسمي يمنح النقطة للاقتراح (ب) وحده؛ اعتُمد المفتاح الرسمي.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q3', 'exam_primary_2018_sciences_dec', 3, 'الغازات والضغط', 'يحتوي أنبوب مغلق مزود بمكبس على كمية من الهواء عدد دقائقه هو 2.10²³ (الحالة البدئية). حجم الهواء في هذه الحالة هو V₁ وضغطه هو P₁ = 3.10⁵ Pa. نضغط المكبس، فيخضع الغاز إلى عملية انضغاط حيث يصبح حجمه V₂ مع (V₂ = V₁/2) وضغطه P₂ (الحالة النهائية). نعتبر أن الهواء غاز كامل، وأن درجة الحرارة تبقى ثابتة خلال التحول من الحالة البدئية إلى الحالة النهائية. ضع(ي) العلامة (×) في خانة الحرف الموافق لكل اقتراح صحيح:', true, '[{"id": "A", "text": "الهواء خليط غير متجانس مكون أساسا من الأوكسجين والهيدروجين"}, {"id": "B", "text": "في الحالة 2، تكون الدقائق المكونة للهواء في حركة، غير مرتبة ومتقاربة وأكثر رجا"}, {"id": "C", "text": "عدد دقائق الهواء في الحالة النهائية هو 10²²"}, {"id": "D", "text": "قيمة ضغط الهواء في الحالة النهائية هو P₂ = 6.10⁵ Pa"}]'::jsonb, ARRAY['B', 'D']::text[], '(ب) دقائق الغاز في حركة دائمة غير مرتبة، والانضغاط يقرّبها بعضها من بعض ويزيد من وتيرة اصطداماتها. (د) عند ثبات درجة الحرارة، قانون بويل-ماريوت: P₁V₁ = P₂V₂؛ وبما أن V₂ = V₁/2 فإن P₂ = 2P₁ = 6.10⁵ Pa. أما (أ) فخطأ لأن الهواء خليط متجانس مكوّن أساساً من الآزوت والأوكسجين، و(ج) خطأ لأن الأنبوب مغلق فعدد الدقائق يبقى 2.10²³.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q4', 'exam_primary_2018_sciences_dec', 4, 'المحاليل والذوبان', 'نتوفر على كأسين مختلفتين (1) و(2) تحتوي كل منهما على 50g من الماء. ندخل في الكأس (1) قطعة من السكر كتلتها 20g، وندخل في الكأس (2) قطعة من الجليد كتلتها 20g. نقوم بتحريك الكأس (1). معطى: يمكن إذابة 360g على الأكثر من السكر في لتر من الماء. ضع(ي) العلامة (×) في خانة الحرف الموافق لكل اقتراح صحيح:', false, '[{"id": "A", "text": "الماء جسم مذيب بالنسبة للسكر"}, {"id": "B", "text": "الجليد جسم مذاب"}, {"id": "C", "text": "كتلة المحلول (ماء - سكر) هي 50g"}, {"id": "D", "text": "يذوب السكر كليا في الكأس (1)"}]'::jsonb, ARRAY['A']::text[], 'الماء هو المذيب والسكر هو المذاب. (ب) خطأ: الجليد ليس جسماً مذاباً، بل هو ماء في الحالة الصلبة ينصهر في الماء. (ج) خطأ: كتلة المحلول = 50 + 20 = 70g. (د) خطأ: أقصى ما يمكن إذابته في 50g من الماء هو 360 × 50/1000 = 18g، وهي أقل من 20g، فلا يذوب السكر كلياً.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q5', 'exam_primary_2018_sciences_dec', 5, 'التنفس عند الضفدعة', 'نستخلص من هذه الوثيقة أن التنفس خلال مراحل نمو الضفدعة يتحول من:', false, '[{"id": "A", "text": "غلصمي إلى رئوي"}, {"id": "B", "text": "قفصي إلى غلصمي"}, {"id": "C", "text": "قفصي إلى رئوي"}, {"id": "D", "text": "قفصي إلى غلصمي ثم إلى رئوي"}]'::jsonb, ARRAY['A']::text[], 'الشرغوف يعيش في الماء ويتنفس بالغلاصم، والضفدعة البالغة تتنفس بالرئتين (وبالجلد).', 'qcm', 'official', NULL, true, 'كلمة «قفصي» في الاقتراحات (ب) و(ج) و(د) كما تُقرأ في المسح الضوئي؛ قد تكون «قصبي» — المسح غير واضح تماماً في هذا الموضع.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q6', 'exam_primary_2018_sciences_dec', 6, 'نمو الضفدعة', 'تبرز هذه الوثيقة أن للضفدعة نموا:', false, '[{"id": "A", "text": "مباشرا لكوننا نحصل أثناء الانقسام على صغير يعيش مستقلا عن الأم"}, {"id": "B", "text": "مباشرا لكون مجمل النمو يتم خارج الرحم"}, {"id": "C", "text": "غير مباشر لكوننا نحصل أثناء الانقسام على صغير يختلف كثيرا عن الحيوان البالغ"}, {"id": "D", "text": "غير مباشر لكون الانقسام يكون خارجيا"}]'::jsonb, ARRAY['C']::text[], 'النمو غير مباشر لأن الشرغوف (الصغير الناتج عن الانقسام) يختلف كثيراً عن الضفدعة البالغة ويمر بتحوّل ليصل إلى شكل البالغ.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q7', 'exam_primary_2018_sciences_dec', 7, 'دورة نمو الضفدعة', 'تتم دورة نمو الضفدعة عبر تتالي المراحل الآتية:', false, '[{"id": "A", "text": "بيضة ← جنين ← شرغوف ← ضفدعة"}, {"id": "B", "text": "بيضة ← شرغوف ← جنين ← ضفدعة"}, {"id": "C", "text": "بيضة ← شرنقة ← شرغوف ← ضفدعة"}, {"id": "D", "text": "بيضة ← جنين ← شرنقة ← ضفدعة"}]'::jsonb, ARRAY['A']::text[], 'تفقس البيضة عن جنين يتطور إلى شرغوف (ذو ذيل وغلاصم)، ثم يتحول الشرغوف تدريجياً إلى ضفدعة بالغة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q8', 'exam_primary_2018_sciences_dec', 8, 'التكاثر الخضري عند النبات', 'يمثل الشكلان تقنيتين:', false, '[{"id": "A", "text": "الترقيد والانفصال"}, {"id": "B", "text": "الترقيد والتطعيم"}, {"id": "C", "text": "التطعيم والانفصال"}, {"id": "D", "text": "التطعيم والبرعمة"}]'::jsonb, ARRAY['C']::text[], 'الجواب حسب المفتاح الرسمي. الشكل (أ): غرس طعم/فسيلة في التربة؛ الشكل (ب): فرع مربوط على جذع.', 'qcm', 'official', NULL, true, 'كلمة «الانفصال» كما تُقرأ في ورقة الامتحان؛ مطابقة المفتاح الرسمي للشكلين بالتقنيتين مأخوذة من المفتاح كما هي.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q9', 'exam_primary_2018_sciences_dec', 9, 'التكاثر اللاجنسي عند النبات', 'تمكن هاتان التقنيتان من التكاثر الابتدائي:', false, '[{"id": "A", "text": "بفضل الأمشاج الذكرية والأنثوية"}, {"id": "B", "text": "بفضل البذور التي تعد ضرورية لنمو النبات"}, {"id": "C", "text": "بفضل الدرنة لكون الدرنات تتضمن البراعم القابلة للنمو"}, {"id": "D", "text": "بفضل الطعم (أو الفسيلة) الذي يمكن أن ينمو ليعطي فروع نبتة أو نبتة كاملة"}]'::jsonb, ARRAY['D']::text[], 'التكاثر الخضري (اللاجنسي) يتم دون أمشاج ودون بذور: الطعم أو الفسيلة جزء من النبتة الأم ينمو ليعطي نبتة كاملة مطابقة للأم.', 'qcm', 'official', NULL, true, 'عبارة «التكاثر الابتدائي» في نص السؤال كما تُقرأ في المسح؛ والمقصود بها التكاثر اللاجنسي/الخضري.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q10', 'exam_primary_2018_sciences_dec', 10, 'ديداكتيك العلوم — أدوار الوسائل التعليمية', 'أعط(ي) بعض أدوار الوسائل التعليمية في تدريس مادة النشاط العلمي.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة حسب المفتاح الرسمي (ذكر أربعة أدوار من قِبل): تنمية الكفايات المنهجية والتواصلية والتكنولوجية؛ خلق المناخ الملائم لترسيخ المواقف والاتجاهات؛ تطوير منهجية العمل والتربوية في المردودية التربوية لدى الأستاذ(ة)؛ إثراء خبرات المتعلم(ة) وأساليب تعلمه؛ حسن البناء الذاتي للمعرفة وتقوية الجانب النفسي - الحركي لدى المتعلم(ة).', 'open', 'official', NULL, true, 'بعض كلمات المفتاح الرسمي في هذا السؤال صعبة القراءة في المسح الضوئي؛ الصياغة أعلاه أفضل قراءة ممكنة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q11', 'exam_primary_2018_sciences_dec', 11, 'ديداكتيك العلوم — أهداف الدرس', 'حدد(ي) هدفين من بين الأهداف المتوخاة من هذا الدرس.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة حسب المفتاح الرسمي (ذكر هدفين من قِبل): التمكن من ربط تعاقب الليل والنهار بدوران الأرض حول نفسها؛ الكشف عن أصل تعاقب الليل والنهار بناء على الملاحظة والمناولة؛ تعرف توقيت البلدان المختلفة من خلال استعمال الخريطة الأرضية.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q12', 'exam_primary_2018_sciences_dec', 12, 'ديداكتيك العلوم — منهجية الدرس', 'اقترح(ي) منهجية ملائمة لبلوغ الأهداف المتوخاة، ضمن هذه المنهجية أنشطة التعلم والوسائل التعليمية والحصيلة المعرفية المتوخاة.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة حسب المفتاح الرسمي: اقتراح منهجية ملائمة من خلال اعتماد نهج علمي سليم يمكن المتعلمين والمتعلمات من بناء المعارف اعتمادا على الملاحظة والمناولة ومن ربط التعلمات بالواقع المعيش. (أ) تمهيدا (مدخلا) للدرس: توظيف المكتسبات والتمثلات؛ ملاحظات ترتبط بالواقع المعيش؛ طرح تساؤلات ترتبط بسبب تعاقب الليل والنهار؛ طرح فرضيات. (ب) أنشطة ملائمة ترتبط بالإجابة على التساؤلات أو التحقق من الفرضية، من خلال إنجاز الملاحظة والمناولة واستغلال المعطيات: قيام المتعلمين والمتعلمات، في مجموعات، بالمناولة التي تحاكي دوران الأرض حول نفسها مقابل الشمس؛ توظيف النمذجة باستعمال الوسائل الآتية: كرة وقطب ومصباح لتمثيل دوران الأرض حول نفسها؛ توظيف نموذج الكرة الأرضية ومطالبة المتعلمين والمتعلمات بتحديد مواقع البلدان التي تختلف فيما بينها بتعاقب الليل والنهار؛ اعتماد الخريطة الأرضية المتضمنة لخطوط الطول مع مطالبة المتعلمين والمتعلمات بتقدير توقيت بعض البلدان بالنسبة لبعضها البعض. (ج) بناء الحصيلة المعرفية من طرف المتعلمين والمتعلمات: تتضمن هذه الحصيلة تفسيرا لتعاقب الليل والنهار يرتبط بدوران الأرض حول محورها.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_dec_q13', 'exam_primary_2018_sciences_dec', 13, 'ديداكتيك العلوم — التقويم', 'للوقوف على مدى تحقق الأهداف المتوخاة اقترح(ي) نشاطا تقويميا ملائما.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة حسب المفتاح الرسمي: اقتراح نشاط تقويمي يتضمن أسئلة ملائمة يوظف فيها المتعلم والمتعلمة القدرات (المهارات) والمعارف المرتبطة بالدرس.', 'open', 'official', NULL, true, NULL)
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
