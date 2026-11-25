-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة أكتوبر 2024 (التخصص المزدوج)
-- ====================================================================
-- المصدر: ملف الحل solved/2024/ديداكتيك اللغة العربية - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/ديداكتيك اللغة العربية.pdf (6 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   رابط AI Studio: https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q25 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * لا يوجد اختلاف جوهري بين ملف الحل وورقة الامتحان؛ الفروق الوحيدة شكلية
--     (تشكيل/ترقيم: Q10 «تُدرَّس»، Q17 فاصلة بعد «القراءة»، Q19 «يُنجز»)،
--     وقد أُبقي على نص ملف الحل حرفياً.
--   * المسح يبدأ من الصفحة 2/7 — صفحة الغلاف (1/7) مفقودة من الملف؛
--     ورقة الامتحان تحمل علامات قلم من مرشح سابق (Q3 ‏A، Q6 ‏C، Q17 ‏A، Q18 ‏C،
--     Q21 ‏B، Q22 ‏C) — أُهملت تماماً، وهي لا تُستعمل دليلاً على الأجوبة.
--   * لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان؛ الحل مصدره طرف ثالث (AI Studio).
--
-- المدة والمعامل (ليسا على ورقة الامتحان الظاهرة):
--   * المدة 45 دقيقة والمعامل 1، من صفحة mesconcours.ma لديداكتيك اللغة العربية
--     (دورة أكتوبر 2024): https://mesconcours.ma/ar/concours/enseignement/2024-1000/
--     وتؤكدها educoncours.com لاختبار التخصص المزدوج نفسه (25 سؤالاً، 45 دقيقة).
--   * جدول exams لا يحوي عمود معامل؛ المعامل 1 مذكور هنا فقط.
--
-- تقاطع مع تصحيح منشور آخر (تنبيه مهم):
--   * صفحة mesconcours.ma أعلاه تخص ورقة موازية لمسلك اللغة الأمازيغية
--     (نفس الأسئلة الـ25، Q26–Q50 في الكتيب، مع اختلاف لفظي طفيف في Q1B وQ10)،
--     لا ورقة التخصص المزدوج هذه. تصحيحها يوافق حل AI Studio في 20/25 سؤالاً،
--     ويختلف في 5 أسئلة: Q3 (B)، Q6 (A — ست ساعات ونصف، وهو غلاف خاص بمسلك
--     الأمازيغية حيث تقلصت ساعات العربية)، Q11 (A)، Q16 (D)، Q23 (A).
--     أُبقي على أجوبة ملف الحل لأنها مستندة إلى نص المنهاج (يوليوز 2021) مباشرة،
--     ولأن تصحيح mesconcours نفسه يضع علامة عدم يقين على Q3 وQ6 وQ11 وQ16؛
--     وكل سؤال من الخمسة موسوم في verification_note.
--   * ورقة تصحيح متداولة على فيسبوك بعنوان «دورة أكتوبر 2025» لنفس الأسئلة
--     تبدأ أجوبتها بـ D وC وE، بما يوافق حل AI Studio في Q1–Q3.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_didactics_ar_oct
--   <exam_id>_q<n>  للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_didactics_ar_oct', 'specialty_primary', 2024, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q1', 'exam_primary_2024_didactics_ar_oct', 1, 'مبادئ منهاج اللغة العربية — الانغماس اللغوي', 'يقتضي مبدأ "الانغماس اللغوي":', false, '[{"id": "A", "text": "التغلب على صعوبات استعمال اللغة العربية الفصيحة؛"}, {"id": "B", "text": "اعتبار المتعلم محورا في تعليم اللغة العربية الفصيحة؛"}, {"id": "C", "text": "دعم المتعلمين في اكتساب اللغة العربية الفصيحة؛"}, {"id": "D", "text": "استعمال اللغة العربية الفصيحة في التعليم والتعلم والتواصل؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'ينص المنهاج الدراسي للتعليم الابتدائي على أن مبدأ "الانغماس اللغوي" يقتضي استعمال اللغة العربية الفصحى في التعليم والتعلم والتواصل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q2', 'exam_primary_2024_didactics_ar_oct', 2, 'التعليم المبكر للقراءة — الوعي الصوتي', 'الوعي الصوتي هو:', false, '[{"id": "A", "text": "حسن الاستماع والقدرة على تمييز وحدات المقاطع الصوتية المسموعة؛"}, {"id": "B", "text": "النطق الجيد للحروف واحترام مخارج الأصوات؛"}, {"id": "C", "text": "القدرة على تمييز وحدات المقاطع الصوتية المسموعة، وتعرفها، واللعب بها؛"}, {"id": "D", "text": "تحويل الأصوات إلى رموز مكتوبة وتعرفها واللعب بها؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يُعرّف المنهاج الدراسي الوعي الصوتي بأنه القدرة على تعرف وحدات الأصوات والمقاطع الصوتية المسموعة وتمييزها واللعب بها. أما الربط بين الأصوات والرموز المكتوبة فيرتبط بالمبدأ الألفبائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q3', 'exam_primary_2024_didactics_ar_oct', 3, 'الكتابة — التعبير الكتابي', 'لتنمية المهارات الكتابية ينطلق الاهتمام المبكر بالتعبير الكتابي منذ:', false, '[{"id": "A", "text": "السنة الثالثة من التعليم الابتدائي؛"}, {"id": "B", "text": "السنة الثانية من التعليم الابتدائي؛"}, {"id": "C", "text": "السنة الرابعة من التعليم الابتدائي؛"}, {"id": "D", "text": "السنة الخامسة من التعليم الابتدائي؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'ينص المنهاج الدراسي للتعليم الابتدائي حرفياً على أن تنمية المهارات الكتابية تتطلب «الاهتمام المبكر بالتعبير الكتابي منذ السنة الأولى من التعليم الابتدائي» لتمكين المتعلم من إنتاج كلمات وجمل وفقرات قصيرة. وبما أن السنة الأولى غير واردة في الاختيارات الأربعة، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, 'لا يوجد مفتاح تصحيح رسمي؛ تصحيح mesconcours.ma المنشور لورقة موازية (مسلك اللغة الأمازيغية) يعطي B، لكن حل AI Studio يستند إلى نص المنهاج حرفياً («الاهتمام المبكر بالتعبير الكتابي منذ السنة الأولى») فأُبقي على E.')
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q4', 'exam_primary_2024_didactics_ar_oct', 4, 'البعد الوظيفي للغة — الخطابات', 'من بين الخطابات المعتمدة لضمان البعد الوظيفي للغة العربية بالسلك الابتدائي:', false, '[{"id": "A", "text": "الخطاب السردي والخطاب الوصفي والخطاب الإعلامي والخطاب الإشهاري؛"}, {"id": "B", "text": "الخطاب التفسيري والخطاب القصصي والخطاب الإعلامي والخطاب الإشهاري؛"}, {"id": "C", "text": "الخطاب الإخباري والخطاب التفسيري والخطاب السردي والخطاب الوصفي؛"}, {"id": "D", "text": "الخطاب التوجيهي والخطاب الحجاجي والخطاب الحكائي والخطاب التفسيري؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حدد المنهاج الدراسي ستة أنواع من الخطابات المعتمدة لضمان البعد الوظيفي للغة العربية، وهي: الخطاب السردي، والإخباري، والوصفي، والتوجيهي، والحجاجي، والتفسيري. والاختيار C هو الوحيد الذي يتطابق تماماً مع هذه التسميات الرسمية دون إقحام تسميات غير معتمدة في النص المنهاجي (مثل: الإعلامي، الإشهاري، القصصي، الحكائي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q5', 'exam_primary_2024_didactics_ar_oct', 5, 'كفاية السنة الأولى', 'من بين المهارات اللغوية التي تستهدفها كفاية السنة الأولى:', false, '[{"id": "A", "text": "إنتاج نص شفهي يغلب عليه طابع التفسير؛"}, {"id": "B", "text": "إنتاج نص شفهي يغلب عليه طابع الحجاج؛"}, {"id": "C", "text": "إنتاج نص كتابي يغلب عليه طابع التفسير؛"}, {"id": "D", "text": "إنتاج نص كتابي يغلب عليه طابع الحجاج؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'تنص كفاية نهاية السنة الأولى على إنتاج نصوص شفهية وكتابية قصيرة وبسيطة يغلب عليها طابع السرد والإخبار والوصف والتوجيه فقط. أما نمطا التفسير والحجاج فلا يُدرجان ضمن الكفاية إلا ابتداءً من السنوات الثلاث العليا (الرابعة والخامسة والسادسة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q6', 'exam_primary_2024_didactics_ar_oct', 6, 'الغلاف الزمني للغة العربية', 'الغلاف الزمني الأسبوعي المخصص للغة العربية في السنة الثانية من سلك الابتدائي هو:', false, '[{"id": "A", "text": "ست ساعات ونصف؛"}, {"id": "B", "text": "سبع ساعات؛"}, {"id": "C", "text": "ثمان ساعات؛"}, {"id": "D", "text": "عشر ساعات؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الغلاف الزمني الأسبوعي المخصص للغة العربية في السنة الثانية هو تسع ساعات (9 ساعات)، وهو غير وارد ضمن الاختيارات المقترحة (فعشر ساعات تخص السنة الأولى، وثمان ساعات تخص السنة الثالثة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, 'لا يوجد مفتاح تصحيح رسمي؛ تصحيح mesconcours.ma المنشور لورقة موازية (مسلك اللغة الأمازيغية) يعطي A (ست ساعات ونصف)، وهو غلاف خاص بمسلك الأمازيغية حيث تقلصت ساعات العربية بعد إدراج الأمازيغية؛ هذا الامتحان لمسلك التخصص المزدوج والمنهاج (يوليوز 2021) يحدد 9 ساعات للسنة الثانية فأُبقي على E.')
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q7', 'exam_primary_2024_didactics_ar_oct', 7, 'التقويم والدعم', 'ينجز التقويم التشخيصي والدعم الاستدراكي في:', false, '[{"id": "A", "text": "بداية كل أسبوع جديد؛"}, {"id": "B", "text": "بداية كل أسدوس دراسي؛"}, {"id": "C", "text": "نهاية كل وحدة دراسية؛"}, {"id": "D", "text": "بداية كل سنة دراسية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب التنظيم البيداغوجي العام للبرنامج الدراسي في المنهاج، يُخصص الأسبوع الأول من كل سنة دراسية للتقويم التشخيصي والدعم الاستدراكي. بينما تُخصص نهاية كل وحدة للتقويم والدعم والتوليف، ونهاية كل أسدوس لتقويم ودعم الأسدوس.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q8', 'exam_primary_2024_didactics_ar_oct', 8, 'مكونات اللغة العربية — الاستماع والتحدث', 'الاستماع والتحدث من مكونات اللغة العربية في:', false, '[{"id": "A", "text": "السنة الأولى فقط؛"}, {"id": "B", "text": "السنتين الأولى والثانية فقط؛"}, {"id": "C", "text": "السنة الثانية والثالثة فقط؛"}, {"id": "D", "text": "السنوات الأولى والثانية والثالثة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يعتمد برنامج اللغة العربية مكون "الاستماع والتحدث" (الحكايات والوضعيات التواصلية) في السنوات الثلاث الأولى (الأولى والثانية والثالثة)، ثم يتحول المكون في السنوات الثلاث العليا (الرابعة والخامسة والسادسة) إلى "التواصل الشفهي" (النص السماعي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q9', 'exam_primary_2024_didactics_ar_oct', 9, 'الكتابة في السنة الثانية', 'تتكون "الكتابة" في السنة الثانية من:', false, '[{"id": "A", "text": "الخط، النقل، الإملاء، تمارين كتابية؛"}, {"id": "B", "text": "الخط، الإملاء، تمارين كتابية، التعبير الكتابي؛"}, {"id": "C", "text": "الإملاء، التعبير الكتابي، تمارين كتابية، النقل؛"}, {"id": "D", "text": "الخط، الإملاء، التعبير الكتابي، النقل؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المنهاج الدراسي للتعليم الابتدائي، تتوزع حصص مكون "الكتابة" في السنة الثانية (5 حصص أسبوعياً) على الخط (حصة واحدة)، الإملاء (حصتان)، تمارين كتابية (حصة واحدة)، التعبير الكتابي (حصة واحدة). (بينما يوجد عنصر "النقل" في السنة الأولى فقط).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q10', 'exam_primary_2024_didactics_ar_oct', 10, 'الظواهر اللغوية — الإضمار والتصريح', 'تُدرّس الظواهر اللغوية في السنة الثالثة:', false, '[{"id": "A", "text": "بصفة صريحة، وتخصص لها حصة واحدة أسبوعيا؛"}, {"id": "B", "text": "بصفة صريحة بدون حصة مخصصة؛"}, {"id": "C", "text": "بصفة ضمنية بدون حصص خاصة؛"}, {"id": "D", "text": "بصفة ضمنية مع تخصيص حصة واحدة أسبوعيا؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'وفق مبدأ الإضمار والتصريح، تُمرّر الظواهر اللغوية في السنوات الثلاث الأولى (بما فيها السنة الثالثة) بصفة ضمنية بدون حصص خاصة عبر باقي مكونات المادة. ولا تبدأ دراستها بصفة صريحة في حصص مستقلة إلا ابتداءً من السنة الرابعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q11', 'exam_primary_2024_didactics_ar_oct', 11, 'الاستماع والتحدث في السنة الثالثة', 'يتم تدبير مكون الاستماع والتحدث في السنة الثالثة باستثمار:', false, '[{"id": "A", "text": "حكاية واحدة في كل أسبوع؛"}, {"id": "B", "text": "حكاية واحدة في ثلاثة أسابيع؛"}, {"id": "C", "text": "حكايتين في كل أسبوع؛"}, {"id": "D", "text": "ثلاث حكايات في أسبوعين؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'يُدبّر مكون الاستماع والتحدث في السنة الثالثة باستثمار حكاية واحدة في أسبوعين (بمعدل 3 حصص متتالية في كل أسبوع، أي حكايتين في الوحدة الدراسية)، إلى جانب وضعية تواصلية واحدة في كل وحدة دراسية. وبما أن "حكاية واحدة في أسبوعين" غير مذكورة ضمن الاختيارات، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, 'لا يوجد مفتاح تصحيح رسمي؛ تصحيح mesconcours.ma المنشور لورقة موازية (مسلك اللغة الأمازيغية) يعطي A (حكاية واحدة في كل أسبوع)، بينما حل AI Studio يستند إلى تدبير حكاية واحدة في أسبوعين في السنة الثالثة فأُبقي على E.')
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q12', 'exam_primary_2024_didactics_ar_oct', 12, 'الغلاف الزمني — حصة القراءة', 'الغلاف الزمني المخصص لحصة واحدة لمكون القراءة في السنة الثانية هو:', false, '[{"id": "A", "text": "35 دقيقة؛"}, {"id": "B", "text": "45 دقيقة؛"}, {"id": "C", "text": "50 دقيقة؛"}, {"id": "D", "text": "30 دقيقة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يخصص المنهاج الدراسي لمكون القراءة في السنة الثانية (كما في السنة الأولى) 5 حصص أسبوعياً مدة كل حصة 45 دقيقة (بمجموع 225 دقيقة أسبوعياً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q13', 'exam_primary_2024_didactics_ar_oct', 13, 'التعليم المبكر للقراءة — الطلاقة', 'الطلاقة هي:', false, '[{"id": "A", "text": "القدرة على تمييز وحدات المقاطع الصوتية المسموعة بسرعة؛"}, {"id": "B", "text": "القدرة على القراءة بدقة وسرعة وإيقاع صوتي معبر؛"}, {"id": "C", "text": "القدرة على الربط بين الحروف وأصواتها؛"}, {"id": "D", "text": "القدرة على القراءة بدقة وإدراك المعنى؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يعرّف المنهاج الدراسي "الطلاقة في القراءة" بأنها تمكن المتعلم من قراءة المقاطع والكلمات والنصوص بدقة وسرعة مناسبة وبإيقاع صوتي يعبر عن معاني المقروء.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q14', 'exam_primary_2024_didactics_ar_oct', 14, 'التعليم المبكر للقراءة — المفردات', 'مكون "المفردات" من مكونات التعليم المبكر للقراءة، ويهدف إلى:', false, '[{"id": "A", "text": "دمج المقاطع الصوتية لتركيب كلمات؛"}, {"id": "B", "text": "اللعب بأصوات الكلمات والمقاطع الصوتية لإنتاج كلمات جديدة؛"}, {"id": "C", "text": "استخدام استراتيجية واحدة خاصة بشبكة المفردات؛"}, {"id": "D", "text": "ترتيب الحروف لتكوين مفردات؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'يهدف مكون "المفردات" إلى تنمية الرصيد المعجمي للمتعلم وتمكينه من توظيف استراتيجيات متنوعة لفهم المفردات الجديدة (شبكة المفردات، خريطة الكلمة، عائلة الكلمة، مفاتيح السياق...) ولا يقتصر على استراتيجية واحدة خاصة بشبكة المفردات (C). أما الاختيارات A وB وD فتندرج ضمن الوعي الصوتي والمبدأ الألفبائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q15', 'exam_primary_2024_didactics_ar_oct', 15, 'التعليم المبكر للقراءة — مكوناته', 'مكونات التعليم المبكر للقراءة في المستويين الأول والثاني:', false, '[{"id": "A", "text": "المفردات، الوعي الصوتي، الطلاقة، الفهم، اللعب بأصوات الكلمات؛"}, {"id": "B", "text": "الطلاقة، الفهم، الوعي الصوتي، المبدأ الألفبائي، التلخيص؛"}, {"id": "C", "text": "الوعي الصوتي، المبدأ الألفبائي، الطلاقة، المفردات، الفهم؛"}, {"id": "D", "text": "المبدأ الألفبائي، الطلاقة، الفهم، المفردات، التوقع؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حدد المنهاج الدراسي مكونات التعليم المبكر للقراءة في خمسة مكونات مترابطة هي: الوعي الصوتي، المبدأ الألفبائي، الطلاقة، المفردات، الفهم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q16', 'exam_primary_2024_didactics_ar_oct', 16, 'استراتيجيات القراءة — ما بعد القراءة', 'من استراتيجيات ما بعد القراءة في المستوى الثالث:', false, '[{"id": "A", "text": "تحديد الهدف من القراءة؛"}, {"id": "B", "text": "استخراج المعاني الصريحة؛"}, {"id": "C", "text": "توظيف استراتيجيات المفردات؛"}, {"id": "D", "text": "استخراج المعاني الضمنية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], '• تحديد الهدف من القراءة (A): من استراتيجيات ما قبل القراءة. • استخراج المعاني الصريحة (B) والضمنية (D) وتوظيف استراتيجيات المفردات (C): من استراتيجيات أثناء القراءة. • أما استراتيجيات ما بعد القراءة فتشمل: فحص التوقعات القبلية، تلخيص النص، وتقويم المقروء. وعليه فجميع الاختيارات المقترحة خاطئة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, 'لا يوجد مفتاح تصحيح رسمي؛ تصحيح mesconcours.ma المنشور لورقة موازية (مسلك اللغة الأمازيغية) يعطي D (استخراج المعاني الضمنية من استراتيجيات ما بعد القراءة)، بينما حل AI Studio يصنف استخراج المعاني الضمنية ضمن استراتيجيات أثناء القراءة وأن ما بعد القراءة هو فحص التوقعات القبلية وتلخيص النص وتقويم المقروء فأُبقي على E.')
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q17', 'exam_primary_2024_didactics_ar_oct', 17, 'القراءة في السنة الخامسة — النص المسترسل', 'في السنة الخامسة، تخصص الحصة الرابعة لمكون القراءة من كل أسبوع من الأسابيع الأربعة:', false, '[{"id": "A", "text": "للنص المسترسل؛"}, {"id": "B", "text": "للنص الشعري؛"}, {"id": "C", "text": "للنص الوظيفي؛"}, {"id": "D", "text": "للنص السماعي؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تُدبر أنشطة القراءة في السنتين الخامسة والسادسة في أربع حصص أسبوعياً (30 دقيقة لكل حصة)؛ حيث تُخصص الحصص الثلاث الأولى للنص الوظيفي، بينما تُخصص الحصة الرابعة من كل أسبوع من الأسابيع الأربعة للنص المسترسل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q18', 'exam_primary_2024_didactics_ar_oct', 18, 'التطبيقات الكتابية في السنة الثالثة', 'يتم تدبير التطبيقات الكتابية بالسنة الثالثة، في:', false, '[{"id": "A", "text": "حصتين في كل أسبوع؛"}, {"id": "B", "text": "حصة واحدة في كل أسبوعين؛"}, {"id": "C", "text": "حصة واحدة في كل أسبوع؛"}, {"id": "D", "text": "نهاية كل وحدة دراسية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'وفق التوزيع الأسبوعي للغلاف الزمني في السنة الثالثة، تُخصص للتطبيقات الكتابية حصة واحدة في كل أسبوع مدتها 30 دقيقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q19', 'exam_primary_2024_didactics_ar_oct', 19, 'مشروع الوحدة', 'ينجز مشروع الوحدة في السنة الثالثة عبر تدبير:', false, '[{"id": "A", "text": "مشروع واحد في كل وحدة دراسية؛"}, {"id": "B", "text": "مشروع واحد في كل أسبوع؛"}, {"id": "C", "text": "مشروع واحد في كل وحدتين دراسيتين؛"}, {"id": "D", "text": "مشروعين في كل وحدة دراسية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يُدبّر مكون "مشروع الوحدة" في السنة الثالثة (وكذا في السنوات العليا) بإنجاز مشروع واحد في كل وحدة دراسية يرتبط بمجالها، وتخصص له حصة واحدة في الأسبوع (30 دقيقة) تمتد على أسابيع الوحدة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q20', 'exam_primary_2024_didactics_ar_oct', 20, 'الظواهر اللغوية في السنوات العليا', 'تتكون "الظواهر اللغوية" في السنوات الثلاث العليا من:', false, '[{"id": "A", "text": "التراكيب – الصرف والتحويل – التطبيقات الكتابية؛"}, {"id": "B", "text": "الإملاء – التراكيب – التطبيقات الكتابية؛"}, {"id": "C", "text": "الصرف والتحويل – التراكيب – الإملاء؛"}, {"id": "D", "text": "الصرف والتحويل – الإملاء – التطبيقات الكتابية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتكون مكون "الظواهر اللغوية" في السنوات الثلاث العليا (الرابعة والخامسة والسادسة) من ثلاثة عناصر تُدرَّس بصفة صريحة: الصرف والتحويل، والتراكيب، والإملاء. أما التطبيقات الكتابية فتندرج ضمن مكون الكتابة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q21', 'exam_primary_2024_didactics_ar_oct', 21, 'القراءة في السنة الرابعة — موجهات', 'من موجهات مكون القراءة في السنة الرابعة:', false, '[{"id": "A", "text": "استثمار نص شعري واحد في أربع حصص في الأسابيع الثلاثة الأولى للوحدة؛"}, {"id": "B", "text": "استثمار نص وظيفي واحد في أربع حصص في الأسابيع الثلاثة الأولى للوحدة؛"}, {"id": "C", "text": "استثمار نص مسترسل واحد في الأسبوع الرابع من كل وحدة؛"}, {"id": "D", "text": "استثمار نص شعري واحد في الأسبوع الخامس من كل وحدة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تنص موجهات مكون القراءة في السنة الرابعة (حيث تُدبر القراءة في 5 حصص أسبوعياً) على ما يلي: • استثمار نص وظيفي واحد في أربع حصص في الأسابيع الثلاثة الأولى للوحدة (وهو الاختيار B). • استثمار نص شعري واحد في أربع حصص في الأسبوع الرابع من كل وحدة. • تخصيص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص المسترسل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q22', 'exam_primary_2024_didactics_ar_oct', 22, 'النصوص السماعية — معايير الاختيار', 'من معايير اختيار النصوص السماعية في السنة الخامسة:', false, '[{"id": "A", "text": "تزخر بالصور والمشاهد والرسومات؛"}, {"id": "B", "text": "تتضمن الظواهر اللغوية المدروسة؛"}, {"id": "C", "text": "ترتبط بالمجال الدراسي ارتباطا وثيقا؛"}, {"id": "D", "text": "يتراوح عدد كلمات النص بين 280 و300 كلمة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'نص المنهاج الدراسي ضمن معايير اختيار النصوص السماعية على ارتباطها بالمجال الدراسي ارتباطاً وثيقاً. أما الاختيار D فخاطئ لأن عدد كلمات النص السماعي في السنة الخامسة يتراوح بين 250 و280 كلمة (بينما 280 إلى 300 كلمة تخص السنة السادسة)، والاختيار B يخص معايير النصوص الوظيفية وليس السماعية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q23', 'exam_primary_2024_didactics_ar_oct', 23, 'الكتابة في السنوات العليا', 'تتكون "الكتابة" في السنوات الثلاث العليا من:', false, '[{"id": "A", "text": "التعبير الكتابي – مشروع الوحدة؛"}, {"id": "B", "text": "التعبير الكتابي – الإملاء؛"}, {"id": "C", "text": "الظواهر اللغوية – التعبير الكتابي؛"}, {"id": "D", "text": "الشكل والتطبيقات الكتابية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'يتكون مكون "الكتابة" في السنوات الثلاث العليا (الرابعة والخامسة والسادسة) من عنصرين أساسيين معاً هما الشكل والتطبيقات الكتابية والتعبير الكتابي (الإنشاء). وبما أن الاختيار D يقتصر على عنصر واحد فقط، وباقي الاختيارات تدمج مكونات مستقلة (مشروع الوحدة، الإملاء، الظواهر اللغوية)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, 'لا يوجد مفتاح تصحيح رسمي؛ تصحيح mesconcours.ma المنشور لورقة موازية (مسلك اللغة الأمازيغية) يعطي A (التعبير الكتابي – مشروع الوحدة)، بينما حل AI Studio يعتبر مشروع الوحدة مكوناً مستقلاً وأن الكتابة في السنوات العليا تتكون من الشكل والتطبيقات الكتابية والتعبير الكتابي فأُبقي على E.')
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q24', 'exam_primary_2024_didactics_ar_oct', 24, 'النصوص القرائية في السنة الخامسة', 'أنواع النصوص القرائية المعتمدة في السنة الخامسة:', false, '[{"id": "A", "text": "نصوص توجيهية – نصوص وظيفية – نصوص مسترسلة؛"}, {"id": "B", "text": "نصوص مسترسلة – نصوص حجاجية – نصوص شعرية؛"}, {"id": "C", "text": "نصوص وظيفية – نصوص شعرية – نصوص مسترسلة؛"}, {"id": "D", "text": "نصوص إخبارية – نصوص وظيفية – نصوص حجاجية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص المنهاج الدراسي على اعتماد ثلاثة أنواع من النصوص القرائية في السنوات الثلاث العليا (ومنها السنة الخامسة): النصوص الوظيفية، والنصوص الشعرية، والنصوص المسترسلة. أما (التوجيهية، الحجاجية، الإخبارية) فهي أنماط نصوص تندرج ضمن النصوص الوظيفية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة العربية (دورة أكتوبر 2024) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_ar_oct_q25', 'exam_primary_2024_didactics_ar_oct', 25, 'القراءة في السنة الرابعة — النص الشعري', 'يُستثمر نص شعري واحد في السنة الرابعة من خلال:', false, '[{"id": "A", "text": "ثلاث حصص في الأسبوع الرابع من كل وحدة؛"}, {"id": "B", "text": "أربع حصص في الأسبوع الرابع من كل وحدة؛"}, {"id": "C", "text": "ثلاث حصص في الأسبوع الثالث من كل وحدة؛"}, {"id": "D", "text": "أربع حصص في الأسبوع الثالث من كل وحدة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تنص موجهات مكون القراءة في السنة الرابعة (المنهاج ص. 117) حرفياً على أنه: «يُستثمر نص شعري واحد في أربع حصص في الأسبوع الرابع من كل وحدة» (مدة كل حصة 30 دقيقة)، بينما تُخصص له ثلاث حصص فقط في السنتين الخامسة والسادسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1Ga4eHyiqt0TDXHybtWwVKuLwUwqIK4iN', true, NULL)
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
