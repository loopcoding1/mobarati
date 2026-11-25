-- ====================================================================
-- مباراتي — امتحان ابتدائي: اللغة العربية، مادة التخصص، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/اللغة العربية - 2022.md
--   (سجل الامتحانات رقم 68؛ الحل 2026-11-25: بحث Google أولاً، وُجد الحل كاملاً
--    على mesconcours.ma وmanasseb.com، فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2022/اللغة العربية - امتحان.pdf (7 صفحات، كاملة).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * الغلاف (ص 1): مباراة توظيف أساتذة التعليم الابتدائي الأطر النظامية
--     للأكاديميات — التخصص المزدوج، دورة نونبر 2022؛ المدة: ساعة واحدة، المعامل 3؛
--     30 سؤالاً من Q1 إلى Q30، 4 اختيارات (A-D)، جواب صحيح واحد، نقطة واحدة لكل جواب صحيح.
--   * النص (ص 2): «الرياضة والمجتمع»، د. أمين أنور الخولي، عالم المعرفة، عدد 216،
--     ديسمبر 1996، ص. 27 (بتصرف) — مطابق لما في ملف الحل.
--   * نص كل سؤال من Q1 إلى Q30 وخياراته الأربعة (A-D) مطابقة حرفياً لورقة الامتحان.
--   * لا يوجد تصحيح رسمي لهذا الامتحان؛ الأجوبة من تصحيح منشور على mesconcours.ma
--     (حل من إعداد الموقع) واقتراح تصحيح من مناصب — والمصدران متفقان على الأجوبة
--     الثلاثين كلها، بلا أي تعارض بينهما.
--   * الأسئلة الموسومة بعدم اليقين (Q2، Q5، Q6، Q22) موسومة في verification_note.
--   * نص السؤال Q1 هو «النص عبارة عن:» فقط (دون نص القراءة الكامل)، اتباعاً لاتفاقية
--     ملف exam_primary_2025_arabic_jan.sql المرجعي.
--   * لا توجد أسئلة متخطاة: أُدرجت الأسئلة الثلاثون كلها.
--
-- المعامل: 3 (من غلاف الامتحان، ص 1) — لا يوجد عمود للمعامل في جدول exams،
--   فيُذكر هنا في التعليق فقط.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_arabic_nov', 'specialty_primary', 2022, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q1', 'exam_primary_2022_arabic_nov', 1, 'أنواع النصوص', 'النص عبارة عن:', false, '[{"id": "A", "text": "نص سردي"}, {"id": "B", "text": "نص إخباري"}, {"id": "C", "text": "نص توجيهي"}, {"id": "D", "text": "نص حجاجي"}]'::jsonb, ARRAY['B']::text[], 'النص يقدم معلومات ومعارف عن دور اللعب في تكوين الطفل من المنظور الاجتماعي، دون أحداث وشخصيات تجعله سرديا، ودون أوامر ونصائح تجعله توجيهيا. وهو لا يناقش رأيا مخالفا ولا يبني دحضا كما في الحجاج، بل يعرض ويشرح. لذلك فهو نص إخباري (تفسيري).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q2', 'exam_primary_2022_arabic_nov', 2, 'المشتقات — اسم المفعول', '"يعتبر اللعب أحد السبل التي يوفرها المجتمع للأطفال..."؛ كلمة "المجتمع":', false, '[{"id": "A", "text": "مصدر ميمي"}, {"id": "B", "text": "مصدر صريح"}, {"id": "C", "text": "اسم فاعل"}, {"id": "D", "text": "اسم مفعول"}]'::jsonb, ARRAY['D']::text[], 'المجتمَع بفتح الميم الثانية مشتقة من الفعل المزيد "اجتمع" على وزن مضارعه مع إبدال حرف المضارعة ميما مضمومة وفتح ما قبل الآخر، وهذه صيغة اسم المفعول من غير الثلاثي. ولو كسرت الميم (المجتمِع) لكانت اسم فاعل، وهذا غير مقصود هنا لأن المجتمع هو الجماعة المجتمَع فيها.
ملاحظة مناصب: إجابة مرجّحة — «المُجتمَع» على وزن اسم المفعول من «اجتمع»، لكن اسم المكان والمصدر الميمي من غير الثلاثي لهما الوزن نفسه، لذلك قد يُقبل جواب آخر.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, 'إجابة مرجّحة حسب مناصب: اسم المكان والمصدر الميمي من غير الثلاثي لهما الوزن نفسه، فقد يُقبل جواب آخر؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q3', 'exam_primary_2022_arabic_nov', 3, 'إعراب الجمل', '"ظننت الأطفال يتكيفون مع البيئة ..."؛ جملة "يتكيفون مع البيئة" تعرب:', false, '[{"id": "A", "text": "نعتا"}, {"id": "B", "text": "فاعلا"}, {"id": "C", "text": "مفعولا به"}, {"id": "D", "text": "حالا"}]'::jsonb, ARRAY['C']::text[], 'الفعل "ظن" من أفعال القلوب ينصب مفعولين أصلهما مبتدأ وخبر: "الأطفال" مفعول به أول، وجملة "يتكيفون مع البيئة" في محل نصب مفعول به ثان (وهي في الأصل خبر). فالجملة تعرب مفعولا به.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q4', 'exam_primary_2022_arabic_nov', 4, 'الفعل المجرد والمزيد', 'الفعل المجرد من بين الأفعال الآتية هو:', false, '[{"id": "A", "text": "يَكْتَسِب"}, {"id": "B", "text": "يُكْسِب"}, {"id": "C", "text": "يُكَسِّب"}, {"id": "D", "text": "يَكْسِب"}]'::jsonb, ARRAY['D']::text[], 'المجرد ما كانت حروف ماضيه كلها أصلية. "يَكْسِب" مضارع "كَسَبَ" (ك س ب) فهو مجرد. أما "يكتسب" فمن "اكتسب" بزيادة الهمزة والتاء، و"يُكْسِب" من "أكسب" بزيادة الهمزة، و"يُكَسِّب" من "كسّب" بتضعيف العين، وكلها مزيدة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q5', 'exam_primary_2022_arabic_nov', 5, 'الإملاء — همزة ابن', 'كلمة "ابن" المكتوبة بطريقة خاطئة هي:', false, '[{"id": "A", "text": "يا بن آدم، أقبل!"}, {"id": "B", "text": "علي بن ربيعة"}, {"id": "C", "text": "مستشفى ابن سيناء"}, {"id": "D", "text": "محمد بن عبد الله"}]'::jsonb, ARRAY['A']::text[], '⚠ القاعدة المدرسية المقصودة: تحذف همزة "ابن" إذا وقعت مفردة بين علمين ثانيهما أب للأول، كما في "علي بن ربيعة" و"محمد بن عبد الله"، وتثبت في أول الكلام كما في "مستشفى ابن سيناء". الجواب المنتظر هو "يا بن آدم" لأن "ابن" لم تقع بين علمين. ننبه إلى أن كثيرا من كتب الإملاء تجيز حذف الألف بعد "يا" النداء، فالعبارة ليست خطأ عند الجميع، لكنها الوحيدة التي تخرج عن القاعدة المدروسة.
ملاحظة مناصب: إجابة مرجّحة — الأصل «يا ابنَ آدم» عند من لا يجيز حذف الألف بعد «يا»؛ وبعض كتب الإملاء تجيز «يا بن». الاختيارات الأخرى صحيحة في كتابة «ابن» (مع أن الصواب «ابن سينا» دون همزة).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, 'إجابة مرجّحة: كثير من كتب الإملاء تجيز حذف الألف بعد «يا» النداء، فالعبارة ليست خطأ عند الجميع، لكنها الوحيدة التي تخرج عن القاعدة المدروسة؛ لا يوجد مفتاح تصحيح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q6', 'exam_primary_2022_arabic_nov', 6, 'الاسم الجامد والمشتق', 'الاسم الجامد في ما يأتي هو:', false, '[{"id": "A", "text": "الحجر"}, {"id": "B", "text": "المجتمع"}, {"id": "C", "text": "اللعب"}, {"id": "D", "text": "التحصيل"}]'::jsonb, ARRAY['A']::text[], '⚠ "الحجر" اسم ذات لا يؤخذ من فعل، فهو جامد بلا خلاف، وهو الجواب المنتظر. "المجتمع" اسم مفعول مشتق. أما "اللعب" و"التحصيل" فمصدران، والمصدر يعده كثير من النحاة جامدا (جامد معنى) لأنه أصل الاشتقاق، لكن المقصود في هذا السؤال هو الاسم الذي لا صلة له بفعل، أي اسم الذات.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, 'تحفظ: «اللعب» و«التحصيل» مصدران، والمصدر يعده كثير من النحاة جامداً (جامد معنى) لأنه أصل الاشتقاق؛ المقصود في السؤال هو الاسم الذي لا صلة له بفعل، أي اسم الذات؛ لا يوجد مفتاح تصحيح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q7', 'exam_primary_2022_arabic_nov', 7, 'الإملاء — الهمزة', 'الكلمة المكتوبة بطريقة صحيحة هي:', false, '[{"id": "A", "text": "تَساءُل"}, {"id": "B", "text": "تَلألُؤ"}, {"id": "C", "text": "تَفاءُل"}, {"id": "D", "text": "تَثائُب"}]'::jsonb, ARRAY['B']::text[], 'في "تلألؤ" همزة متطرفة قبلها ضمة فتكتب على الواو، وهذا صحيح. الهمزة المتوسطة المضمومة بعد ألف ساكنة تكتب على الواو: "تساؤل" و"تفاؤل"، فكتابتها على السطر خطأ. و"تثاؤب" تكتب على الواو لأن الضمة أقوى من السكون، فكتابتها على النبرة خطأ.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q8', 'exam_primary_2022_arabic_nov', 8, 'فهم النص — الفكرة العامة', 'فكرة النص العامة هي:', false, '[{"id": "A", "text": "اللعب له دور محدود في تنمية شخصية الطفل."}, {"id": "B", "text": "اللعب له دور ثانوي في تنمية شخصية الطفل."}, {"id": "C", "text": "اللعب له دور متواضع في تنمية شخصية الطفل."}, {"id": "D", "text": "اللعب له دور أساس في تنمية شخصية الطفل."}]'::jsonb, ARRAY['D']::text[], 'يعدد النص أدوار اللعب في تشكيل جوانب الطفل المعرفية والوجدانية والمهارية، وفي تنمية قدراته البدنية، وإكسابه مهارات التواصل والقيم الاجتماعية، والتعبير عن نفسه. فالنص يقدم اللعب عنصرا أساسا في بناء شخصية الطفل، لا دورا محدودا أو ثانويا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q9', 'exam_primary_2022_arabic_nov', 9, 'الأساليب — القسم', '"لَعَمْرُك، إنْ لَعِبْتَ باستمتاع، إنَّ لَعِبَك لمحمود"؛ أسلوب هذه الجملة هو:', false, '[{"id": "A", "text": "أسلوب مدح"}, {"id": "B", "text": "أسلوب إغراء"}, {"id": "C", "text": "أسلوب قسم"}, {"id": "D", "text": "أسلوب شرط"}]'::jsonb, ARRAY['C']::text[], 'تبدأ الجملة بـ"لعمرك"، وهي من ألفاظ القسم: اللام للابتداء و"عمرك" مبتدأ خبره محذوف تقديره قسمي. واجتمع القسم والشرط "إن لعبت"، فكان الجواب للقسم المتقدم: "إن لعبك لمحمود". فالأسلوب الغالب على الجملة أسلوب قسم.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q10', 'exam_primary_2022_arabic_nov', 10, 'جموع التكسير — جمع القلة', 'كلمة "أطفال" عبارة عن:', false, '[{"id": "A", "text": "جمع قلة"}, {"id": "B", "text": "جمع كثرة"}, {"id": "C", "text": "صيغة منتهى الجموع"}, {"id": "D", "text": "جمع مذكر سالم"}]'::jsonb, ARRAY['A']::text[], '"أطفال" جمع تكسير على وزن "أفعال"، وهو من أوزان جمع القلة الأربعة: أفْعُل، أفعال، أفْعِلة، فِعْلة. وليس على صيغة منتهى الجموع (مفاعل أو مفاعيل)، ولا جمعا سالما.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q11', 'exam_primary_2022_arabic_nov', 11, 'المصدر المؤول', '"يجب على الأطفال أن يلعبوا لتنمية كفاياتهم"؛ المصدر المؤول "أن يلعبوا":', false, '[{"id": "A", "text": "لا محل له من الإعراب"}, {"id": "B", "text": "مضاف إليه"}, {"id": "C", "text": "فاعل"}, {"id": "D", "text": "مفعول به"}]'::jsonb, ARRAY['C']::text[], 'المصدر المؤول من "أن" والفعل تقديره "لعبُهم"، فتصير الجملة "يجب على الأطفال لعبُهم". والفعل "يجب" يحتاج إلى فاعل، وهو المصدر المؤول، في محل رفع فاعل.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q12', 'exam_primary_2022_arabic_nov', 12, 'النداء — المنادى المضاف', 'الجملة الصحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "أيا موظفين اللعب في التعلم، أحسنوا توظيفه."}, {"id": "B", "text": "أيا موظفو اللعب في التعلم، أحسنوا توظيفه."}, {"id": "C", "text": "أيا موظفي اللعب في التعلم، أحسنوا توظيفه."}, {"id": "D", "text": "أيا موظفون اللعب في التعلم، أحسنوا توظيفه."}]'::jsonb, ARRAY['C']::text[], '"موظفي" منادى مضاف إلى "اللعب"، والمنادى المضاف منصوب، وعلامة نصب جمع المذكر السالم الياء، وتحذف نونه للإضافة. فالصواب: "أيا موظفي اللعب". "موظفين" أبقت النون مع الإضافة، و"موظفو" و"موظفون" مرفوعتان.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q13', 'exam_primary_2022_arabic_nov', 13, 'إعراب الجمل — الحال', '"وكثيرا ما يشاهد الأطفال يلعبون وهم يقلدون أصوات بعض الحيوانات." جملة "وهم يقلدون أصوات بعض الحيوانات" وقعت:', false, '[{"id": "A", "text": "خبرا"}, {"id": "B", "text": "نعتا"}, {"id": "C", "text": "بدلا"}, {"id": "D", "text": "حالا"}]'::jsonb, ARRAY['D']::text[], 'الجملة مسبوقة بواو الحال وتصف هيئة الأطفال وقت لعبهم: يلعبون وهم في حال تقليد. فهي جملة اسمية في محل نصب حال، والواو واو الحال.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q14', 'exam_primary_2022_arabic_nov', 14, 'الأساليب — الإغراء', '"التعاونَ على تنمية المهارات الحركية لدى الأطفال" أسلوب هذه الجملة:', false, '[{"id": "A", "text": "أسلوب مدح"}, {"id": "B", "text": "أسلوب إغراء"}, {"id": "C", "text": "أسلوب اختصاص"}, {"id": "D", "text": "أسلوب تحذير"}]'::jsonb, ARRAY['B']::text[], '"التعاونَ" اسم منصوب بفعل محذوف تقديره "الزموا"، والمقصود ترغيب المخاطب في أمر محمود ليفعله، وهذا هو الإغراء. ولو كان المقصود التنفير من أمر مكروه لكان تحذيرا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q15', 'exam_primary_2022_arabic_nov', 15, 'التصغير', 'تصغير كلمة "أنْفُسِهم" هو:', false, '[{"id": "A", "text": "أُنَيْفِسهم"}, {"id": "B", "text": "أُنَيْفِيسهم"}, {"id": "C", "text": "أُنَفِيسهم"}, {"id": "D", "text": "أُنَيْفُوسهم"}]'::jsonb, ARRAY['A']::text[], '"أنفس" على وزن "أفْعُل"، والاسم الرباعي يصغر على وزن "فُعَيْعِل": يضم أوله ويفتح ثانيه وتزاد ياء ساكنة ثالثة ويكسر ما بعدها، فيصير "أُنَيْفِس". ولا تزاد ياء أخرى قبل الآخر لأن الكلمة ليس فيها حرف مد رابع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q16', 'exam_primary_2022_arabic_nov', 16, 'الأضداد', 'ضد كلمة "يقلدون" في النص هو:', false, '[{"id": "A", "text": "يُوَشِّحون"}, {"id": "B", "text": "يحاكون"}, {"id": "C", "text": "يخالفون"}, {"id": "D", "text": "يكتشفون"}]'::jsonb, ARRAY['C']::text[], 'التقليد هو محاكاة الغير وفعل مثل ما يفعل. فـ"يحاكون" مرادف لها، وضدها "يخالفون" أي يفعلون خلاف ما يفعله الغير. أما "يوشحون" و"يكتشفون" فلا علاقة تضاد بينهما وبين التقليد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q17', 'exam_primary_2022_arabic_nov', 17, 'إعراب الجمل — المضاف إليه', '"شرع الأطفال في ممارسة لعبتهم المفضلة حين فهموا قانونها"؛ جملة "فهموا قانونها":', false, '[{"id": "A", "text": "لا محل لها من الإعراب"}, {"id": "B", "text": "فاعل"}, {"id": "C", "text": "مفعول به"}, {"id": "D", "text": "مضاف إليه"}]'::jsonb, ARRAY['D']::text[], '"حين" ظرف زمان يضاف إلى الجمل، فالجملة الفعلية "فهموا قانونها" التي بعده في محل جر مضاف إليه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q18', 'exam_primary_2022_arabic_nov', 18, 'جموع التكسير', 'الجمع الخاطئ لكلمة "كَسْلان" هو:', false, '[{"id": "A", "text": "كَسْلى"}, {"id": "B", "text": "كُسَلاء"}, {"id": "C", "text": "كَسالى"}, {"id": "D", "text": "كُسالى"}]'::jsonb, ARRAY['B']::text[], 'تجمع "كسلان" على "كَسالى" و"كُسالى" بفتح الكاف وضمها، وعلى "كَسْلى". أما "كُسَلاء" فوزن "فُعَلاء" يجمع عليه "فعيل" بمعنى فاعل مثل كريم وكرماء، ولا يجمع عليه "فعلان"، فهو الجمع الخاطئ.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q19', 'exam_primary_2022_arabic_nov', 19, 'فهم النص — الأفكار الأساسية', 'الفكرة الأساسية للفقرة الثانية هي:', false, '[{"id": "A", "text": "دور اللعب في تكوين شخصية الطفل وإدماجه في المجتمع."}, {"id": "B", "text": "دور اللعب في تكوين شخصية الطفل."}, {"id": "C", "text": "دور اللعب في تكوين شخصية الطفل وإدماجه في المدرسة."}, {"id": "D", "text": "دور اللعب في إدماج الطفل في المدرسة."}]'::jsonb, ARRAY['A']::text[], 'الفقرة الثانية تتحدث عن اكتساب الطفل باللعب مهارات التواصل الاجتماعي ولعب الأدوار والقيم المقبولة، وتخليه عن أنانيته وتكيفه مع البيئة وامتثاله لمعاييرها الأخلاقية والاجتماعية. فهي تجمع بين بناء الشخصية والاندماج في المجتمع، ولا ذكر فيها للمدرسة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q20', 'exam_primary_2022_arabic_nov', 20, 'المصادر', 'مصدر الفعل الماضي "تَمَثَّل" هو:', false, '[{"id": "A", "text": "تَمْثيل"}, {"id": "B", "text": "تَماثُل"}, {"id": "C", "text": "تَمَثُّل"}, {"id": "D", "text": "امْتِثال"}]'::jsonb, ARRAY['C']::text[], 'الفعل "تمثّل" على وزن "تفعّل"، ومصدره على وزن "تفعُّل" بضم ما قبل الآخر: تمثُّل. أما "تمثيل" فمصدر "مثّل"، و"تماثل" مصدر "تماثل"، و"امتثال" مصدر "امتثل".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q21', 'exam_primary_2022_arabic_nov', 21, 'النواسخ — كان وأخواتها', 'الجملة الصحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "كانت الطفلتان النشيطتان قادرتان على اكتساب مهارات حركية."}, {"id": "B", "text": "كانت الطفلتان النشيطتين قادرتان على اكتساب مهارات حركية."}, {"id": "C", "text": "كانت الطفلتان النشيطتين قادرتين على اكتساب مهارات حركية."}, {"id": "D", "text": "كانت الطفلتان النشيطتان قادرتين على اكتساب مهارات حركية."}]'::jsonb, ARRAY['D']::text[], '"الطفلتان" اسم كان مرفوع بالألف، ونعته "النشيطتان" يتبعه في الرفع. و"قادرتين" خبر كان منصوب بالياء لأنه مثنى. فالصحيح: "كانت الطفلتان النشيطتان قادرتين".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q22', 'exam_primary_2022_arabic_nov', 22, 'الاسم الممدود', 'الاسم الممدود هو:', false, '[{"id": "A", "text": "ماء"}, {"id": "B", "text": "نداء"}, {"id": "C", "text": "أدواء"}, {"id": "D", "text": "أولاءِ"}]'::jsonb, ARRAY['B']::text[], '⚠ الاسم الممدود اسم معرب آخره همزة قبلها ألف زائدة. "نداء" ممدود ألفه زائدة (من ندا ينادي)، وهو الجواب المنتظر. "ماء" ألفه منقلبة عن واو أصلية (موه) لا زائدة، و"أولاء" اسم إشارة مبني. لكن "أدواء" جمع "داء" على وزن أفعال، وألفها زائدة أيضا، فهي ممدودة كذلك، واخترنا "نداء" لأنه المثال المدرسي الصريح.
ملاحظة مناصب: إجابة مرجّحة — «نداء» اسم معرب آخره همزة قبلها ألف زائدة؛ «أدواء» تنطبق عليها القاعدة أيضًا، أما «ماء» فألفه أصلية و«أولاء» مبني.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, 'إجابة مرجّحة: «أدواء» تنطبق عليها قاعدة الاسم الممدود أيضاً (ألفها زائدة)؛ اختير «نداء» لأنه المثال المدرسي الصريح؛ لا يوجد مفتاح تصحيح رسمي.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q23', 'exam_primary_2022_arabic_nov', 23, 'الحقل الدلالي — شبكة المفردات', 'المفردة التي تنتمي إلى شبكة مفردات كلمة "اللعب" هي:', false, '[{"id": "A", "text": "تمرد"}, {"id": "B", "text": "تنمر"}, {"id": "C", "text": "انطواء"}, {"id": "D", "text": "قانون"}]'::jsonb, ARRAY['D']::text[], 'لكل لعبة قانون (قواعد) يلتزم به اللاعبون، وفي أحد أسئلة الموضوع نفسه "حين فهموا قانونها". أما التمرد والتنمر والانطواء فسلوكات لا تنتمي إلى الحقل الدلالي للعب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q24', 'exam_primary_2022_arabic_nov', 24, 'الفعل الصحيح والمعتل', 'الفعل "أمارس" فعل:', false, '[{"id": "A", "text": "مثال"}, {"id": "B", "text": "أجوف"}, {"id": "C", "text": "سالم"}, {"id": "D", "text": "مهموز"}]'::jsonb, ARRAY['C']::text[], 'أصل الفعل "مارس" من "مَرَسَ" (م ر س)، وحروفه الأصلية ليس فيها حرف علة ولا همزة ولا تضعيف، فهو صحيح سالم. الهمزة في "أمارس" حرف مضارعة وليست من أصول الفعل.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q25', 'exam_primary_2022_arabic_nov', 25, 'الفعل المتصرف والجامد', 'الفعل المتصرف من بين الأفعال الآتية هو:', false, '[{"id": "A", "text": "عَسى"}, {"id": "B", "text": "طَفِقَ"}, {"id": "C", "text": "نِعْمَ"}, {"id": "D", "text": "لَيْسَ"}]'::jsonb, ARRAY['B']::text[], '"عسى" و"نعم" و"ليس" أفعال جامدة لا تأتي إلا بصيغة الماضي. أما "طفق" فيأتي منه المضارع "يطفق"، فهو متصرف (تصرفا ناقصا)، وهو الوحيد المتصرف بين الخيارات.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q26', 'exam_primary_2022_arabic_nov', 26, 'بناء الفعل للمجهول', '"ناول المدرس الطفل لعبة"، لبناء هذه الجملة للمجهول يُقال:', false, '[{"id": "A", "text": "تُنوولت لعبة"}, {"id": "B", "text": "نُوِّلَت لعبة"}, {"id": "C", "text": "أُنيل الطفل لعبة"}, {"id": "D", "text": "نُووِلَ الطفلُ لعبةً"}]'::jsonb, ARRAY['D']::text[], 'عند البناء للمجهول يحذف الفاعل "المدرس" وينوب عنه المفعول الأول "الطفل"، ويبقى المفعول الثاني "لعبة" منصوبا. والفعل "ناول" على وزن "فاعل" يبنى للمجهول بضم أوله وقلب الألف واوا وكسر ما قبل الآخر: نُووِل. فيصير: "نُووِلَ الطفلُ لعبةً".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q27', 'exam_primary_2022_arabic_nov', 27, 'الفعل الصحيح والمعتل', 'الفعل "أتَكَيَّفُ" فعل:', false, '[{"id": "A", "text": "أجوف"}, {"id": "B", "text": "مثال"}, {"id": "C", "text": "سالم"}, {"id": "D", "text": "مهموز"}]'::jsonb, ARRAY['A']::text[], 'أصل الفعل "كَيَّف" ومادته (ك ي ف)، وعينه ياء، والفعل الذي عينه حرف علة يسمى أجوف. الهمزة والتاء في "أتكيف" زائدتان.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q28', 'exam_primary_2022_arabic_nov', 28, 'إعراب الجمل — خبر أن', '"... أنَّ قيمة هذا اللعب التعبيرية والاجتماعية لها أهمية"، "لها أهمية" في الجملة تُعرب:', false, '[{"id": "A", "text": "شبه جملة في محل نصب نعت."}, {"id": "B", "text": "جملة اسمية في محل رفع خبر."}, {"id": "C", "text": "جملة اسمية في محل نصب نعت."}, {"id": "D", "text": "شبه جملة في محل رفع خبر."}]'::jsonb, ARRAY['B']::text[], '"قيمة" اسم "أن" منصوب، و"لها أهمية" جملة اسمية من خبر مقدم شبه جملة "لها" ومبتدأ مؤخر "أهمية"، وهذه الجملة كلها في محل رفع خبر "أن".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q29', 'exam_primary_2022_arabic_nov', 29, 'النسبة', 'النسبة الصحيحة إلى كلمة "مَعارِف" هي:', false, '[{"id": "A", "text": "مَعْرِفِيٌّ"}, {"id": "B", "text": "مَعارِيفِيٌّ"}, {"id": "C", "text": "مَعْرِيفِيٌّ"}, {"id": "D", "text": "مَعارِفِيٌّ"}]'::jsonb, ARRAY['A']::text[], 'القاعدة عند النسبة إلى جمع التكسير أن يرد إلى مفرده ثم ينسب إليه. مفرد "معارف" هو "معرفة"، وتحذف تاء التأنيث عند النسبة، فيصير "مَعْرِفِيّ".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة نونبر 2022) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_arabic_nov_q30', 'exam_primary_2022_arabic_nov', 30, 'عائلة الكلمة', 'الكلمة التي من عائلة كلمة "يَكْسِبُ" هي:', false, '[{"id": "A", "text": "سَكْبٌ"}, {"id": "B", "text": "تَكَسُّبٌ"}, {"id": "C", "text": "يَكْبِسُ"}, {"id": "D", "text": "كابوسٌ"}]'::jsonb, ARRAY['B']::text[], 'عائلة الكلمة هي الكلمات المشتركة في الجذر نفسه وبالترتيب نفسه. "يكسب" من (ك س ب)، و"تكسّب" من الجذر ذاته. أما "سكب" (س ك ب) و"يكبس" و"كابوس" (ك ب س) فحروفها متقاربة لكن جذورها مختلفة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2022-1010/', true, NULL)
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
