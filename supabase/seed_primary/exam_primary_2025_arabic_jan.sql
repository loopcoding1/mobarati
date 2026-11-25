-- ====================================================================
-- مباراتي — أول امتحان ابتدائي: اللغة العربية، مادة التخصص، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/اللغة العربية - مادة التخصص - دورة يناير 2025.md
--   (سجل الامتحانات رقم 43؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/اللغة العربية - مادة التخصص.pdf (9 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q30 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد النحو والصرف ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التحليلية (Q3، Q5، Q9، Q16، Q17، Q21، Q27، Q29) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[6].
--
-- ملاحظات عن ملف الامتحان:
--   * المسح يبدأ من الصفحة 2/10 — صفحة الغلاف (1/10) مفقودة من الملف؛
--     المدة (60 دقيقة) والمعامل (6) أُخذا أولاً من غلاف دورة نونبر 2025 لنفس المادة،
--     ثم تحقق منهما لدورة يناير 2025 عبر mesconcours.ma (المدة: ساعة واحدة، المعامل 6،
--     30 سؤالاً) — https://mesconcours.ma/ar/concours/enseignement/2025-473/
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_arabic_jan', 'specialty_primary', 2025, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة يناير 2025)', 'دورة يناير 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q1', 'exam_primary_2025_arabic_jan', 1, 'الصرف والميزان الصرفي', '"تُعتبر دراسة تقنية الذكاء الاصطناعي..."، الوزن الصرفي لكلمة "الاصطناعي" هو:', false, '[{"id": "A", "text": "الانفعالي"}, {"id": "B", "text": "الافعلالي"}, {"id": "C", "text": "الافتعالي"}, {"id": "D", "text": "الافتعـلالي"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'أصل الكلمة الثلاثي هو الفعل (صَنَعَ) على وزن (فَعَلَ). والمزيد منه هو (اصْطَنَعَ)؛ وأصله (اصْتَنَعَ) على وزن (افْتَعَلَ)، حيث أُبدلت تاء الافتعال طاءً لمجاورتها الصاد المفخمة، والقاعدة الصرفية أن الإبدال في حروف الزيادة لا يغيّر الميزان الصرفي فتبقى التاء في الميزان. وعليه فإن المصدر (اصطناع) على وزن (افتعال)، وبإضافة "ال" التعريف وياء النسب يصبح الوزن: الافتعالي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q2', 'exam_primary_2025_arabic_jan', 2, 'الأساليب — المدح', '"حبّذا اهتمام المدرّسات والمدرّسين بالذكاء الاصطناعي في تعلم اللغة العربية وتعليمها." هو أسلوب:', false, '[{"id": "A", "text": "إغراء"}, {"id": "B", "text": "تعجب"}, {"id": "C", "text": "ندبة"}, {"id": "D", "text": "مدح"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يُصاغ أسلوب المدح باستعمال "نِعْمَ" أو "حبّذا"؛ فـ"حبَّ" فعل ماضٍ جامد لإنشاء المدح، و"ذا" اسم إشارة في محل رفع فاعل، و"اهتمام" هو المخصوص بالمدح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q3', 'exam_primary_2025_arabic_jan', 3, 'أنواع النصوص', 'النص عبارة عن:', false, '[{"id": "A", "text": "نص توجيهي"}, {"id": "B", "text": "نص إخباري"}, {"id": "C", "text": "نص وصفي"}, {"id": "D", "text": "نص حجاجي"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يهدف النص إلى تقديم معلومات ومعطيات موضوعية حول تقنية الذكاء الاصطناعي ودورها في تعليم اللغة العربية وتعلمها وآفاقها المستقبلية بأسلوب علمي تقريري مباشر، دون أن يقوم على بناء حجاجي (أطروحة وأطروحة نقيض)، كما أنه ليس نصاً وصفياً ولا توجيهياً صرفاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'تصنيف تحليلي للنص (إخباري بأسلوب تقريري)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q4', 'exam_primary_2025_arabic_jan', 4, 'الإملاء — الهمزة', 'الجملة الصحيحة إملائيا في ما يأتي هي:', false, '[{"id": "A", "text": "الأضواء المتلألأة في أرجاء البيداء تبهر الزائرين."}, {"id": "B", "text": "الأضواء المتلئلأة في أرجاء البيداء تبهر الزائرين."}, {"id": "C", "text": "الأضواء المتلئلئة في أرجاء البيداء تبهر الزائرين."}, {"id": "D", "text": "الأضواء المتلألئة في أرجاء البيداء تبهر الزائرين."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'اسم الفاعل المؤنث من الفعل (تلألأ) هو (المُتَلَأْلِئَة): الهمزة الأولى ساكنة بعد فتح (تَلَأْـ) فتُرسم على الألف (لأ). الهمزة الثانية مفتوحة بعد كسر (ـلِئَـ) والكسرة أقوى من الفتحة، فتُرسم على الياء/النبرة (ئ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q5', 'exam_primary_2025_arabic_jan', 5, 'فهم النص — الفكرة العامة', 'فكرة النص العامة هي:', false, '[{"id": "A", "text": "إيجابيات الذكاء الاصطناعي وسلبياته في تعلم اللغة العربية وتعليمها."}, {"id": "B", "text": "أهمية الذكاء الاصطناعي في تعلم اللغة العربية وتعليمها ذاتيا."}, {"id": "C", "text": "أهمية الذكاء الاصطناعي في تطوير تعلم اللغة العربية وتعليمها."}, {"id": "D", "text": "خطر الذكاء الاصطناعي على تعلم اللغة العربية وتعليمها."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتمحور النص بأكمله حول الأهمية البالغة للذكاء الاصطناعي بوصفه قوة موجهة للتغيير وقيمة إضافية لتطوير وتحسين تعليم اللغة العربية وتعلمها. أما الخيار (A) فغير دقيق لأن النص لم يتناول السلبيات كمحور عام، و(B) قصره على التعلم الذاتي خلافاً للنص، و(D) يناقض مضمون النص.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'فكرة عامة تحليلية؛ الخيار C يطابق محور النص كاملاً، ولا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q6', 'exam_primary_2025_arabic_jan', 6, 'جموع التكسير — جمع القلة', '"ويمكن استخدامه لإنشاء أنظمة تعليمية..."، كلمة "أنظمة" في هذه الجملة:', false, '[{"id": "A", "text": "جمع قلة"}, {"id": "B", "text": "جمع كثرة"}, {"id": "C", "text": "صيغة منتهى الجموع"}, {"id": "D", "text": "جمع مؤنث سالم"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'كلمة "أَنْظِمَة" جمع تكسير على وزن "أَفْعِلَة"، وهو أحد أوزان جموع القلة الأربعة القياسية: (أَفْعُل، أَفْعَال، أَفْعِلَة، فِعْلَة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q7', 'exam_primary_2025_arabic_jan', 7, 'النداء — أنواع المنادى', '"يا عبدَ اللهِ، استفد من مستجدات الذكاء الاصطناعي." المنادى في الجملة:', false, '[{"id": "A", "text": "مفرد معرفة"}, {"id": "B", "text": "شبيه بالمضاف"}, {"id": "C", "text": "نكرة غير مقصودة"}, {"id": "D", "text": "مضاف"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '"عبدَ اللهِ" عَلَم مركب تركيباً إضافياً (عبدَ: منادى مضاف منصوب بالفتحة، اللهِ: لفظ الجلالة مضاف إليه مجرور)، ولذلك يُصنف نوع المنادى هنا مضافاً لا مفرداً معرفة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q8', 'exam_primary_2025_arabic_jan', 8, 'إسناد الضمائر — الأفعال المعتلة', '"تعي المُدرّسة أهمية الذكاء الاصطناعي في التعليم"، عند إسناد الضمير "هُنَّ" للجملة تصبح كالآتي:', false, '[{"id": "A", "text": "هنّ تَعِينَ أهمية الذكاء الاصطناعي في التعليم."}, {"id": "B", "text": "هنّ يَعِينَ أهمية الذكاء الاصطناعي في التعليم."}, {"id": "C", "text": "هنّ تَعُون أهمية الذكاء الاصطناعي في التعليم."}, {"id": "D", "text": "هنّ يَعَوْن أهمية الذكاء الاصطناعي في التعليم."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الفعل (وَعَى) لفيف مفروق، مضارعه (يَعِي) بحذف فائه (الواو). وعند إسناده إلى ضمير الغائبات (هُنَّ) يبدأ المضارع بياء الغيبة (وليس بالتاء التي تكون للمخاطبات "أنتنّ تَعِينَ")، وتثبت الياء (لام الفعل) ساكنة قبل نون النسوة، فيُقال: هُنَّ يَعِينَ (على وزن يَعِلْنَ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q9', 'exam_primary_2025_arabic_jan', 9, 'الاسم الممدود والمنقوص', 'كلمة "الداء"، اسم:', false, '[{"id": "A", "text": "ممدود سماعي"}, {"id": "B", "text": "ممدود قياسي"}, {"id": "C", "text": "منقوص سماعي"}, {"id": "D", "text": "منقوص قياسي"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الاسم الممدود في الصرف هو كل اسم معرب آخره همزة قبلها ألف زائدة (يسبقها حرفان أصليان فأكثر، مثل: سماء، صحراء)[1][2]. أما كلمة "الداء" (ومثلها "الماء") فالألف فيها ليست زائدة، بل هي منقلبة عن أصل (واو) إذ أصلها (دَوَأَ) بدليل جمعها على (أدواء)[1][3]؛ وعليه فهي ليست اسماً ممدوداً (بل اسم مهموز الآخر)[4]، وليست بطبيعة الحال اسماً منقوصاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'تصنيف صرفي دقيق: ألف الداء منقلبة عن واو (جمعها أدواء) فليست ممدوداً؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q10', 'exam_primary_2025_arabic_jan', 10, 'الإملاء — الألف المتطرفة', 'الكلمة المكتوبة بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "الأَدْنَى"}, {"id": "B", "text": "الأَجْدا"}, {"id": "C", "text": "الأَعْلا"}, {"id": "D", "text": "الأَقْصا"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تُكتب الألف المتطرفة في الأسماء المعربة غير الثلاثية مقصورة (ى) مطلقاً ما لم تُسبق بياء (نحو: دنيا، قضايا). والكلمات (الأدنى، الأجدى، الأعلى، الأقصى) كلها أسماء رباعية غير مسبوقة ألفها بياء، فوجب رسم ألفها مقصورة، فتكون (الأَدْنَى) هي الصحيحة وحدها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q11', 'exam_primary_2025_arabic_jan', 11, 'إعراب الفعل المضارع', '"ومع ذلك، يجب أن يستخدموا الذكاء..."، "يستخدموا" فعل مضارع:', false, '[{"id": "A", "text": "منصوب بأن وعلامة نصبه حذف النون، والفاعل ضمير مستتر تقديره \"هم\"."}, {"id": "B", "text": "مجزوم بأن وعلامة جزمه حذف النون، وواو الجماعة ضمير متصل في محل رفع فاعل."}, {"id": "C", "text": "منصوب بأن وعلامة نصبه حذف النون، وواو الجماعة ضمير متصل في محل رفع فاعل."}, {"id": "D", "text": "مجزوم بأن وعلامة جزمه الواو، والفاعل ضمير مستتر تقديره \"هم\"."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], '"أنْ" حرف نصب ومصدر، و"يستخدموا" فعل مضارع من الأفعال الخمسة (اتصلت به واو الجماعة)، فيُنصب وعلامة نصبه حذف النون، وتُعرب واو الجماعة ضميراً متصلاً مبنياً في محل رفع فاعل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q12', 'exam_primary_2025_arabic_jan', 12, 'التصغير', '"يُعتبر استخدام الذكاء الاصطناعي ... قيمة إضافية..."، تصغير كلمة "قيمة" هو:', false, '[{"id": "A", "text": "قُيَيْمَة"}, {"id": "B", "text": "قُوَيْمَة"}, {"id": "C", "text": "قووَيْمَة"}, {"id": "D", "text": "قويَيْمَة"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'القاعدة في التصغير أن ثاني الاسم إذا كان حرف علة منقلباً عن أصل فإنه يُردّ إلى أصله عند التصغير. وأصل كلمة (قِيمة) هو (قِوْمة) (من القَوْم/قام يقوم)، إذ قُلبت الواو ياءً لسكونها بعد كسر؛ وعند التصغير يُضم الأول وتُرد الياء إلى أصلها الواو وتُفتح وتُزاد ياء التصغير الساكنة ثالثةً، فتصير: قُوَيْمَة (على وزن فُعَيْلَة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q13', 'exam_primary_2025_arabic_jan', 13, 'العدد — كتابة الأعداد بالحروف', '"منذ بداية القرن 21"، الجملة التي كُتب فيها العدد 21 بالحروف بطريقة صحيحة هي:', false, '[{"id": "A", "text": "منذ بداية القرن الإحدى والعشرين."}, {"id": "B", "text": "منذ بداية القرن الحادي والعشرون."}, {"id": "C", "text": "منذ بداية القرن الإحدى والعشرون."}, {"id": "D", "text": "منذ بداية القرن الحادي والعشرين."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'العدد هنا عدد ترتيبي يصف كلمة "القرنِ" (المذكّرة والمجرورة بالإضافة)، والعدد الترتيبي يطابق المعدود في التذكير والتعريف والإعراب: الحادي: مذكر، نعت مجرور وعلامة جره الكسرة المقدرة على الياء. والعشرين: معطوف على مجرور، وعلامة جره الياء لأنه من ألفاظ العقود (ملحق بجمع المذكر السالم).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q14', 'exam_primary_2025_arabic_jan', 14, 'المشتقات — اسم المفعول', '"يمكن أن يسهم... في تحسين مهارات التحدث والاستماع والقراءة والكتابة... بطرائق مبتكرة." كلمة "مبتكرة":', false, '[{"id": "A", "text": "مصدر صناعي"}, {"id": "B", "text": "اسم فاعل"}, {"id": "C", "text": "اسم مفعول"}, {"id": "D", "text": "مصدر ميمي"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المقصود في السياق "طرائق مُبْتَكَرَة" (أي طرائق تم ابتكارها ووقع عليها الفعل)، وهو اسم مفعول من الفعل غير الثلاثي (ابْتَكَرَ)، صيغ على وزن مضارعه بإبدال حرف المضارعة ميماً مضمومة وفتح ما قبل آخره: (يَبْتَكِرُ ← مُبْتَكَرٌ ← مُبْتَكَرَةٌ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q15', 'exam_primary_2025_arabic_jan', 15, 'الاستفهام المنفي — حرف الجواب', 'أجيب بالإثبات عن السؤال الآتي: "أليس الذكاء الاصطناعي بوسيلة فعالة لتعلم اللغة العربية؟"', false, '[{"id": "A", "text": "نعم، الذكاء الاصطناعي وسيلة لتعلم اللغة العربية."}, {"id": "B", "text": "بلى، الذكاء الاصطناعي وسيلة لتعلم اللغة العربية."}, {"id": "C", "text": "أجل، الذكاء الاصطناعي وسيلة لتعلم اللغة العربية."}, {"id": "D", "text": "لا، الذكاء الاصطناعي وسيلة لتعلم اللغة العربية."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الاستفهام هنا منفي (أليس...)، وفي العربية إذا أردنا الإجابة عن الاستفهام المنفي بـ الإثبات (أي إبطال النفي وإثبات الحكم)، فإننا نستخدم حرف الجواب "بلى"؛ أما "نعم" فتُقرّ النفي (أي: نعم ليس وسيلة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q16', 'exam_primary_2025_arabic_jan', 16, 'فهم النص — الأفكار الأساسية', '"الاستخدام الواعي للذكاء الاصطناعي يساعد على تطوير العملية التعلمية التعليمية"، هذه فكرة أساسية للفقرة:', false, '[{"id": "A", "text": "الأولى"}, {"id": "B", "text": "الثانية"}, {"id": "C", "text": "الثالثة"}, {"id": "D", "text": "الرابعة"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تناولت الفقرة الثالثة دور المدرسات والمدرسين في توظيف الذكاء الاصطناعي لتحضير الدروس وتقديمها بطريقة فعالة، مع تأكيدها على الاستخدام الواعي عبر التعامل معه بحذر لضمان حماية خصوصية المتعلمين وبياناتهم، وتوفير التكوين والتدريب للتعامل معه بكفاءة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'تم التحقق من الفقرة الثالثة في نص الامتحان مباشرة (صفحة النص).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q17', 'exam_primary_2025_arabic_jan', 17, 'مجالات النصوص', 'يندرج هذا النص في مجال:', false, '[{"id": "A", "text": "الابتكارات والاختراعات"}, {"id": "B", "text": "إبداعات وفنون"}, {"id": "C", "text": "الحياة الثقافية والفنية"}, {"id": "D", "text": "تحديات العالم المعاصر"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يركّز النص على التحولات الاجتماعية والتكنولوجية الهائلة في القرن الـ21، و"التحديات الكبيرة" التي تواجه تعليم اللغة العربية وتعلمها في العصر الرقمي، وتحدي حماية الخصوصية والبيانات والتأهيل المهني، وهي قضايا تندرج ضمن مجال "تحديات العالم المعاصر" (الوحدة الخامسة من المستوى السادس ابتدائي وفق المنهاج الدراسي)[5]، علماً أن مجال "العلم والتكنولوجيا" غير وارد ضمن الاختيارات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'مجال النص حسب المنهاج الدراسي (تحديات العالم المعاصر)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q18', 'exam_primary_2025_arabic_jan', 18, 'جموع التكسير — صيغة منتهى الجموع', 'الجمع الصحيح لكلمة "سفرجل" من بين الجموع الآتية هو:', false, '[{"id": "A", "text": "سَفارِج"}, {"id": "B", "text": "سَفاريج"}, {"id": "C", "text": "سَفَرِج"}, {"id": "D", "text": "سَفَريج"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'كلمة (سَفَرْجَل) اسم خماسي الأصول مجرد، وعند جمعه جمع تكسير (صيغة منتهى الجموع على وزن فَعَالِل) يُحذف الحرف الخامس الأصلي (اللام)، فيُجمع على: سَفَارِج (مثل: فرزدق ← فرازد).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q19', 'exam_primary_2025_arabic_jan', 19, 'المصادر — مصدر الفعل الرباعي', 'فعل كلمة "تَعزيز" في ما يأتي هو:', false, '[{"id": "A", "text": "عَزَا"}, {"id": "B", "text": "عَزَّزَ"}, {"id": "C", "text": "تَعَزَّزَ"}, {"id": "D", "text": "تَعَزَّى"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '"تَعْزِيز" مصدر قياسي على وزن (تَفْعِيل)، وهو وزن مصدر الفعل الرباعي المزيد بتضعيف العين (فَعَّلَ) صحيح الآخر؛ إذن فعله هو (عَزَّزَ) (عَزَّزَ يُعَزِّزُ تَعْزِيزاً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q20', 'exam_primary_2025_arabic_jan', 20, 'بناء الفعل للمجهول', '"رافق هذا التطور ممارسات رقمية جديدة ..."، يُبنى فعل "رافق" للمجهول في هذه الجملة كما يأتي:', false, '[{"id": "A", "text": "رُفِقَت ممارسات رقمية جديدة..."}, {"id": "B", "text": "رُفِّقَت ممارسات رقمية جديدة..."}, {"id": "C", "text": "روفِقَت ممارسات رقمية جديدة..."}, {"id": "D", "text": "روفِيقَت ممارسات رقمية جديدة..."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الفعل الماضي (رافَقَ) على وزن (فاعَلَ)، وعند بنائه للمجهول يُضم أوله ويُكسر ما قبل آخره، فتُقلب الألف الزائدة الثانية واواً لمناسبة الضمة قبلها: (رُوفِقَ)، وتُلحق به تاء التأنيث الساكنة لأن نائب الفاعل مؤنث ("ممارسات")، فتصير الجملة: رُوفِقَتْ ممارسات رقمية جديدة....', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q21', 'exam_primary_2025_arabic_jan', 21, 'إعراب الجمل', '"فالذكاء الاصطناعي أصبح قوة موجهة للتغيير في التعليم."، تُعرب "أصبح قوة موجهة..." جملة:', false, '[{"id": "A", "text": "اسمية في محل رفع خبر."}, {"id": "B", "text": "فعلية في محل رفع مبتدأ مؤخر."}, {"id": "C", "text": "اسمية في محل رفع مبتدأ مؤخر."}, {"id": "D", "text": "فعلية في محل رفع خبر."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '"الذكاءُ" مبتدأ مرفوع (و"الاصطناعيُ" نعت له)، وجملة "أصبح قوةً موجهةً..." مبدوءة بفعل ماضٍ ناقص (ناسخ فعلي: "أصبح"، واسمه ضمير مستتر تقديره هو، و"قوةً" خبره منصوب)؛ وعند جمهور النحاة (وابن هشام في مغني اللبيب) وفي الإعراب المدرسي تُعد الجملة التي صدرها فعل ناقص جملة فعلية، ومحلها هنا في محل رفع خبر للمبتدأ "الذكاء".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'حسب الإعراب المدرسي (ابن هشام، مغني اللبيب): الجملة التي صدرها فعل ناقص تُعد فعلية؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q22', 'exam_primary_2025_arabic_jan', 22, 'النواسخ — أخوات كان', 'الجملة الصحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "أضحت المدرستين المتقنتان لاستخدام الذكاء الاصطناعي قادرتان على تطوير الملكة اللغوية لدى المتعلمين."}, {"id": "B", "text": "أضحت المدرستين المتقنتان لاستخدام الذكاء الاصطناعي قادرتين على تطوير الملكة اللغوية لدى المتعلمين."}, {"id": "C", "text": "أضحت المدرستان المتقنتين لاستخدام الذكاء الاصطناعي قادرتان على تطوير الملكة اللغوية لدى المتعلمين."}, {"id": "D", "text": "أضحت المدرستان المتقنتان لاستخدام الذكاء الاصطناعي قادرتين على تطوير الملكة اللغوية لدى المتعلمين."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '"أضحى" ناسخ فعلي (من أخوات كان) يرفع الاسم وينصب الخبر: المدرستان: اسم أضحى مرفوع وعلامة رفعه الألف لأنه مثنى. المتقنتان: نعت تابع للمنعوت في الرفع، وعلامة رفعه الألف لأنه مثنى. قادرتين: خبر أضحى منصوب وعلامة نصبه الياء لأنه مثنى.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q23', 'exam_primary_2025_arabic_jan', 23, 'الأساليب — التحذير', '"إياك والإدمان على الذكاء الاصطناعي." هو أسلوب:', false, '[{"id": "A", "text": "اختصاص"}, {"id": "B", "text": "تحذير"}, {"id": "C", "text": "إغراء"}, {"id": "D", "text": "ذم"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يُصاغ أسلوب التحذير لتنبيه المخاطب إلى أمر مكروه ليتجنبه، ومن أبرز صيغه استعمال الضمير "إياك" متبوعاً بالمحذَّر منه معطوفاً عليه بالواو (إياك والإدمانَ)، والتقدير: أحذّرُكَ واحذرِ الإدمانَ.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q24', 'exam_primary_2025_arabic_jan', 24, 'الفعل المجرد والمزيد', '"ويتزايد الاهتمام بتطبيق التقنيات الحديثة..."، الفعل "يتزايد" في هذه الجملة:', false, '[{"id": "A", "text": "مجرد ناقص"}, {"id": "B", "text": "مجرد أجوف"}, {"id": "C", "text": "مزيد أجوف"}, {"id": "D", "text": "مزيد ناقص"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الماضي من "يتزايد" هو (تَزَايَدَ)، وأصله الثلاثي المجرد هو (زَادَ / زَيَدَ) (مضارعه يَزِيدُ، وجذره: ز ي د). فهو أجوف لأن وسطه (عينه) حرف علة، ومزيد بحرفين هما التاء والألف (تَفاعَلَ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q25', 'exam_primary_2025_arabic_jan', 25, 'التوكيد المعنوي', 'الجملة التي تتضمن توكيدا معنويا هي:', false, '[{"id": "A", "text": "جميع المدرسين وظفوا تقنيات الذكاء الاصطناعي طوروا الملكات اللغوية لدى المتعلمين."}, {"id": "B", "text": "نصف المدرسين وظفوا تقنيات الذكاء الاصطناعي طوروا الملكات اللغوية لدى المتعلمين."}, {"id": "C", "text": "المدرسون جميعهم وظفوا تقنيات الذكاء الاصطناعي طوروا الملكات اللغوية لدى المتعلمين."}, {"id": "D", "text": "المدرسون نصفهم وظفوا تقنيات الذكاء الاصطناعي طوروا الملكات اللغوية لدى المتعلمين."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'لفظ "جميع" من ألفاظ التوكيد المعنوي، وقد توافرت فيه شروط التوكيد في الجملة (C): سبقه المؤكَّد (المدرسون)، واتصل به ضمير عائد على المؤكَّد ومطابق له (جميعُهم)، ويصح حذفه. أما (A) و(B) فتصدرتهما الكلمتان مبتدأً، وأما "نصفهم" في (D) فليست من ألفاظ التوكيد بل هي بدل بعض من كل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q26', 'exam_primary_2025_arabic_jan', 26, 'النسبة', 'النسبة الصحيحة إلى كلمة "كُتُب" في ما يأتي هي:', false, '[{"id": "A", "text": "كِتابيّ"}, {"id": "B", "text": "كُتُبيّ"}, {"id": "C", "text": "كُتْبيّ"}, {"id": "D", "text": "كِتابيي"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'القاعدة الصرفية القياسية عند النسبة إلى الجمع (غير العَلَم والذي له مفرد من لفظه) هي ردّه إلى مفرده ثم النسبة إليه بإلحاق ياء النسبة المشددة وكسر ما قبلها: كُتُب ← مفردها كِتَاب ← كِتَابِيّ[6]. أما (B) و(C) فنسبة إلى لفظ الجمع، وأما (D) فمكتوبة خطأً بياءين[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q27', 'exam_primary_2025_arabic_jan', 27, 'فهم النص — المرادفات', '"وتعكس التحديات والفرص الرؤى المستقبلية..."، مرادف كلمة "الرؤى" في هذه الجملة هو:', false, '[{"id": "A", "text": "التكهنات"}, {"id": "B", "text": "الأماني"}, {"id": "C", "text": "التخمينات"}, {"id": "D", "text": "التصورات"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '"الرؤى" جمع "رؤية"، وتعني في سياق "الرؤى المستقبلية" التصورات والنظرات الاستشرافية المبنية على التفكير والتخطيط، بخلاف التكهنات والتخمينات (التي تفيد الظن والحَدْس غير المؤكد) والأماني (التي تعني الرغبات)[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'مرادف سياقي (التصورات)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q28', 'exam_primary_2025_arabic_jan', 28, 'المصدر المؤول — إعرابه', '"ومن المتوقع أن يزداد انتشار الذكاء الاصطناعي في المدارس..."، يُعرب المصدر المؤول من "أن" والفعل "يزداد":', false, '[{"id": "A", "text": "في محل رفع فاعل."}, {"id": "B", "text": "في محل رفع مبتدأ مؤخر."}, {"id": "C", "text": "في محل رفع خبر."}, {"id": "D", "text": "في محل رفع نائب الفاعل."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'شبه الجملة من الجار والمجرور "من المتوقع" متعلق بمحذوف في محل رفع خبر مقدم، والمصدر المؤول من "أنْ يزدادَ" (تقديره: ازديادُ انتشار الذكاء الاصطناعي) في محل رفع مبتدأ مؤخر، وتأويل الجملة: "ازديادُ انتشارِ الذكاء الاصطناعي كائنٌ من المتوقع".', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q29', 'exam_primary_2025_arabic_jan', 29, 'فهم النص — تعريف الذكاء الاصطناعي', 'يُعرَّف "الذكاء الاصطناعي" بأنه:', false, '[{"id": "A", "text": "قدرة الآلات على التفكير والتصرف بطريقة غير مشابهة للإنسان، مع القدرة على التعلم والفهم والاستدلال والحل الخلاق للمشاكل."}, {"id": "B", "text": "قدرة الآلات على التفكير والتصرف بطريقة مشابهة للإنسان، مع عدم القدرة على التعلم والفهم والاستدلال والحل الخلاق للمشاكل."}, {"id": "C", "text": "قدرة الآلات على التفكير والتصرف بطريقة غير مشابهة للإنسان، مع عدم القدرة على التعلم والفهم والاستدلال والحل الخلاق للمشاكل."}, {"id": "D", "text": "قدرة الآلات على التفكير والتصرف بطريقة مشابهة للإنسان، مع القدرة على التعلم والفهم والاستدلال والحل الخلاق للمشاكل."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يقوم الذكاء الاصطناعي في جوهره على محاكاة الذكاء البشري؛ أي تمكين الآلات والأنظمة الحاسوبية من التفكير والتصرف بطريقة مشابهة للإنسان، مع امتلاكها القدرة على التعلم والفهم والاستدلال وحل المشكلات بطرائق خلاقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, 'تعريف قياسي (محاكاة الذكاء البشري)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة يناير 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_jan_q30', 'exam_primary_2025_arabic_jan', 30, 'الإملاء — همزتا الوصل والقطع', 'الكلمة التي كُتبت بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "إصطناعي"}, {"id": "B", "text": "إقتصادي"}, {"id": "C", "text": "انتاجي"}, {"id": "D", "text": "انساني"}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'جميع الكلمات الواردة تشتمل على خطأ إملائي في همزتي الوصل والقطع: إصطناعي (خطأ): الصواب اصطناعي (همزة وصل، لأنها من مصدر الفعل الخماسي "اصطنع"). إقتصادي (خطأ): الصواب اقتصادي (همزة وصل، لأنها من مصدر الفعل الخماسي "اقتصد"). انتاجي (خطأ): الصواب إنتاجي (همزة قطع، لأنها من مصدر الفعل الرباعي "أنتج"). انساني (خطأ): الصواب إنساني (همزة قطع، لأن كلمة "إنسان" تبدأ بهمزة قطع).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dRm6pdqpbmQrYWQ6EktS8INssCgz2EGK', true, NULL)
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
