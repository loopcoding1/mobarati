-- ====================================================================
-- مباراتي — الرياضيات + العلوم، دورة دجنبر 2021 (التخصص المزدوج)
-- ====================================================================
-- المصدر: ملف الحل solved/2021/الرياضيات + العلوم - 2021.md
--   (سجل الامتحانات رقم 74؛ الحل: بحث Google أولا — وُجد كاملا على
--   mesconcours.ma ومناصب، فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2021/الرياضيات + العلوم - امتحان.pdf (13 صفحة).
--   ملف التصحيح الرسمي المقترن: exams-ibtida2i/2021/تصحيح الرياضيات + العلوم.pdf
--   (3 صفحات — عناصر إجابة المركز الوطني للتقويم والامتحانات).
--   صفحة التصحيح (mesconcours): https://mesconcours.ma/ar/concours/enseignement/2021-508/
--   اقتراح التصحيح (مناصب): https://www.manasseb.com/sujet/sujet-41848-enseignant-2021/
--
-- بنية الاختبار: 27 سؤالا في ثلاث ساعات (180 دقيقة)، بمعامل 3، على 15 نقطة.
--   مكون الرياضيات Q1–Q15 (0,5 نقطة لكل سؤال، 7,5 نقاط)؛
--   مكون العلوم Q16–Q27 في الترقيم العام (من 0,25 إلى 0,75 نقطة، 7,5 نقاط).
--   يُقسم الامتحان هنا إلى سطرين في جدول exams (سطر لكل مكون) لأن
--   subject_type قيمة واحدة لكل سطر:
--     exam_primary_2021_maths_dec    (رياضيات، Q1–Q15)
--     exam_primary_2021_sciences_dec (علوم، Q16–Q27 في الترقيم العام)
--   ترقيم أسئلة العلوم على ورقة الموضوع هو Q1–Q12؛ يُحفظ هنا الترقيم العام
--   16–27 (كما في mesconcours وعناصر الإجابة الرسمية)، والتعيين:
--     عام 16←ورقة Q1 · 17←Q2 · 18←Q3 · 19←Q4 · 20←Q5 · 21←Q6 ·
--     22←Q7 · 23←Q8 · 24←Q9 · 25←Q10 · 26←Q11 · 27←Q12.
--   الأسئلة المفتوحة في العلوم (عام 16، 17، 19، 20): question_type='open'،
--   options='[]'، والجواب عناصر الإجابة الرسمية في explanation.
--   سؤال 19 (عام): تصنيف صحيح/خطأ مسجل حرفيا (A✓ B✓ C✓ D✗).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة،
--   ومطابقة كل جواب مع جدول عناصر الإجابة الرسمية):
--   * نص كل سؤال من Q1 إلى Q27 وخياراته مطابق حرفيا لورقة الامتحان.
--   * الأجوبة كلها مؤكدة بعناصر الإجابة الرسمية، عدا Q10 رياضيات (انظر أدناه).
--   * صفحتا المسح 5 و6 متبادلتان في ترتيب الملف (الصفحة المرقمة 5/13 تحمل
--     السؤالين 9 و10، والصفحة 6/13 تحمل الأسئلة 11–13) — لا شيء ناقص.
--
-- الأعلام (flags) — مسجلة أيضا في verification_note لكل سؤال:
--   * Q4 رياضيات: مناصب يمتنع عن الجواب (المعطيات الظاهرة لا تكفي لتحديد x)؛
--     عناصر الإجابة الرسمية تحتفظ بالاختيار C؛ الشكل مرسوم بمقياس.
--   * Q10 رياضيات: عمود السؤال 10 في جدول عناصر الإجابة الرسمية يقع خارج إطار
--     الصورة الممسوحة (تظهر الأعمدة 1–9 فقط)؛ الجواب A ثابت بالطي لا بالنقل،
--     ومتفق عليه بين mesconcours ومناصب.
--   * Q18 علوم (عام): مناصب «إجابة مرجّحة» لأن تدريجة الدينامومتر غير واضحة
--     في الصورة؛ عناصر الإجابة الرسمية تعطي D.
--   * Q22 علوم (عام): تعارض — مناصب يعطي B ويقول إن D صحيح أيضا، بينما عناصر
--     الإجابة الرسمية تعطي D؛ المحتفظ به D (الرسمي)، وورقة الموضوع تؤيده.
--   * Q24 علوم (عام): خطأ مطبعي في ورقة الامتحان نفسها: «مبسم» بدل «ميسم»
--     (في الخيار C؛ الخياران A وB يكتبانها «ميسم»).
--   * لا أسئلة متخطاة: 27/27 مدرجة.
-- ====================================================================

-- 1. إدراج الامتحانين (تخصص التعليم الابتدائي — التخصص المزدوج)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_maths_dec', 'specialty_primary', 2021, 'maths', 'الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 15)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_sciences_dec', 'specialty_primary', 2021, 'sciences', 'العلوم', 'امتحان العلوم — مادة التخصص (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 12)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. أسئلة الرياضيات (Q1–Q15)
-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q1', 'exam_primary_2021_maths_dec', 1, 'العمليات — أولوية الضرب والقسمة', 'نضع:
E = 38 − 7×5 − 18÷9
قيمة التعبير E هي:', false, '[{"id": "A", "text": "403/9"}, {"id": "B", "text": "152"}, {"id": "C", "text": "−137/9"}, {"id": "D", "text": "1"}]'::jsonb, ARRAY['D']::text[], 'نحترم أولوية العمليات: الضرب والقسمة قبل الطرح. 7×5 = 35 و18÷9 = 2، ومنه E = 38 − 35 − 2 = 1. الكسران السالبان يأتيان من إجراء العمليات بالترتيب المكتوب دون احترام الأولويات. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q2', 'exam_primary_2021_maths_dec', 2, 'الكسور — الجمع والتحويل', 'نضع:
H = 1/5 + 1/9 + 1/11
قيمة التعبير 3/5 + 7/9 + 9/11 تساوي:', false, '[{"id": "A", "text": "3−2H"}, {"id": "B", "text": "3+2H"}, {"id": "C", "text": "1+3H"}, {"id": "D", "text": "3+H"}]'::jsonb, ARRAY['A']::text[], 'نكتب كل كسر على صورة 1 ناقص شيء: 3/5 = 1 − 2/5، و7/9 = 1 − 2/9، و9/11 = 1 − 2/11. بالجمع نحصل على 3 − 2(1/5 + 1/9 + 1/11)، أي 3 − 2H. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q3', 'exam_primary_2021_maths_dec', 3, 'وحدات السعة — التحويل والقسمة', 'يتوفر حسن على تعيمة (clé USB) سعتها 8Go.
عدد الملفات من حجم 1,25Mo التي يمكن لهذه التعيمة تخزينها هو:', false, '[{"id": "A", "text": "6400"}, {"id": "B", "text": "6200"}, {"id": "C", "text": "6100"}, {"id": "D", "text": "6000"}]'::jsonb, ARRAY['A']::text[], 'نوحد الوحدة أولا: 8Go تساوي 8000Mo (باعتبار 1Go = 1000Mo). ثم نقسم: 8000 ÷ 1,25 = 6400 ملفا. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q4', 'exam_primary_2021_maths_dec', 4, 'الهندسة — الأشكال المركبة', 'الشكل جانبه يمثل لعبة للصغار («La toupie») مكونة من مربع قياس طول ضلعه 3cm ومستطيل عرضه x ومثلث متساوي الأضلاع.
قيمة العدد x هي: (الشكل في ملف PDF)', false, '[{"id": "A", "text": "4cm"}, {"id": "B", "text": "3cm"}, {"id": "C", "text": "2cm"}, {"id": "D", "text": "1cm"}]'::jsonb, ARRAY['C']::text[], 'عناصر الإجابة الرسمية تحتفظ بالاختيار C، أي 2cm. ونقولها بصراحة: نص السؤال كما هو مطبوع لا يعطي أي علاقة عددية تربط x بضلع المربع، فالشكل هو المعطى الوحيد. وهو مرسوم بمقياس، وارتفاع المستطيل فيه يقارب نصف ضلع المربع، فتكون 2cm أقرب المقترحات إلى القراءة المباشرة: القيمتان 4cm و3cm تجعلان المستطيل بارتفاع المربع أو أكثر، و1cm تجعله أدق بكثير مما يظهر على الرسم. مناصب يمتنع عن الجواب ويقول إن المعطيات الظاهرة لا تكفي لتحديد x («إجابة مرجّحة: تحقق منه على الموضوع الأصلي»).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'مناصب يمتنع عن الجواب (المعطيات الظاهرة لا تكفي لتحديد x)؛ عناصر الإجابة الرسمية تحتفظ بالاختيار C؛ الشكل مرسوم بمقياس وارتفاع المستطيل يقارب نصف ضلع المربع (3cm) فتكون 2cm أقرب المقترحات.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q5', 'exam_primary_2021_maths_dec', 5, 'الإزاحة — المثلثات القائمة', 'المثلث EFG هو صورة للمثلث ABC بالإزاحة التي تحول C إلى G.
قياس طول الضلع FG هو: (الشكل في ملف PDF — المثلث ABC قائم الزاوية في A وAC = 3cm، والزاوية عند G في المثلث EFG قياسها 60°)', false, '[{"id": "A", "text": "4cm"}, {"id": "B", "text": "5cm"}, {"id": "C", "text": "6cm"}, {"id": "D", "text": "7cm"}]'::jsonb, ARRAY['C']::text[], 'الإزاحة تحفظ الأطوال وقياسات الزوايا، وهي تحول C إلى G وA إلى E وB إلى F. إذن FG = CB، وقياس الزاوية C في المثلث ABC هو قياس الزاوية المعلمة في المثلث EFG، أي 60°. وفي المثلث ABC القائم الزاوية في A نكتب cos 60° = AC/CB، ومنه CB = 3 ÷ 0,5 = 6cm. الاختيار 4cm هو ما نحصل عليه لو استعملنا الظل بدل جيب التمام. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q6', 'exam_primary_2021_maths_dec', 6, 'النسب المئوية — الزيادة والانخفاض', 'ثمن كتاب هو 50DH، ازداد ثمنه بمقدار 20%، ثم انخفض بمقدار 20%.
الثمن الجديد للكتاب هو:', false, '[{"id": "A", "text": "50DH"}, {"id": "B", "text": "48DH"}, {"id": "C", "text": "45DH"}, {"id": "D", "text": "40DH"}]'::jsonb, ARRAY['B']::text[], 'بعد الزيادة: 50 × 1,2 = 60DH. وبعد الانخفاض: 60 × 0,8 = 48DH. والفخ هو الاختيار 50DH، أي الاعتقاد بأن زيادة بـ 20% ثم انخفاضا بـ 20% يعيدان الثمن الأصلي: النسبتان لا تطبقان على القاعدة نفسها، فالزيادة تحسب على 50 والانخفاض على 60. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q7', 'exam_primary_2021_maths_dec', 7, 'الإحصاء — مخطط بالعصي', 'الشكل أسفله يمثل مخططا بالعصي لتوزيع النقط المحصل عليها من طرف تلاميذ أحد أقسام السادس ابتدائي. (الشكل في ملف PDF)
النسبة المئوية للتلاميذ الحاصلين على نقطة أكبر من 10 هي:', false, '[{"id": "A", "text": "68%"}, {"id": "B", "text": "32%"}, {"id": "C", "text": "62%"}, {"id": "D", "text": "17%"}]'::jsonb, ARRAY['A']::text[], 'قراءة الأعمدة واحدا واحدا: النقطة 8 عند 3 تلاميذ، 9 عند 5، 10 عند 0، 11 عند 2، 12 عند 4، 13 عند 2، 14 عند 7، 15 عند 0، 16 عند 2. مجموع القسم 25 تلميذا. والحاصلون على نقطة أكبر من 10 هم 2+4+2+7+2 = 17، ومنه 17/25 = 68%. الاختيار 17% يخلط بين العدد والنسبة، والاختيار 32% يعطي نسبة الحاصلين على 10 فأقل. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q8', 'exam_primary_2021_maths_dec', 8, 'السلم — المسافات الحقيقية', 'على خريطة بسلم 1/400000، المسافة الفاصلة بين مدينتين هي 5,5cm.
المسافة الحقيقية التي تفصل بين هاتين المدينتين هي:', false, '[{"id": "A", "text": "21,5Km"}, {"id": "B", "text": "22Km"}, {"id": "C", "text": "22,5Km"}, {"id": "D", "text": "23Km"}]'::jsonb, ARRAY['B']::text[], 'السلم يعني أن 1cm على الخريطة يقابل 400000cm في الواقع. ومنه 5,5 × 400000 = 2 200 000cm، أي 22000m أو 22Km. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q9', 'exam_primary_2021_maths_dec', 9, 'الكسور على مستقيم مدرج', 'الكسران 1/5 و1/3 تم وضعهما على مستقيم مدرج كما هو مبين في الشكل أسفله. (الشكل في ملف PDF — المستقيم يحمل تسع نقط، والأسهم a وb وc وd تشير إلى الرتب 2 و3 و4 و5 على التوالي)
موضع الكسر 1/4 على المستقيم المدرج هو:', false, '[{"id": "A", "text": "a"}, {"id": "B", "text": "b"}, {"id": "C", "text": "c"}, {"id": "D", "text": "d"}]'::jsonb, ARRAY['B']::text[], 'المستقيم يحمل تسع نقط، أي ثماني فترات متساوية بين 1/5 و1/3. والفرق 1/3 − 1/5 = 2/15، فطول الفترة الواحدة (2/15) ÷ 8 = 1/60. وبما أن 1/4 − 1/5 = 1/20 = 3/60، فإن الكسر 1/4 يوافق النقطة الثالثة بعد 1/5، أي b. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q10', 'exam_primary_2021_maths_dec', 10, 'النشور — المكعب', 'نعتبر النشور المرقمة المبينة في الشكل أسفله. (الشكل في ملف PDF — أربعة نشور مرقمة (1) و(2) و(3) و(4))
رقم النشر الذي يمثل المكعب هو:', false, '[{"id": "A", "text": "(1)"}, {"id": "B", "text": "(2)"}, {"id": "C", "text": "(3)"}, {"id": "D", "text": "(4)"}]'::jsonb, ARRAY['A']::text[], '⚠ هذا هو السؤال الوحيد في هذه الدورة الذي لا نملك جوابه الرسمي: عمود السؤال 10 في جدول عناصر الإجابة يقع خارج إطار الصورة الممسوحة، فالجدول يمتد من 1 إلى 10 ولا تظهر منه إلا الأعمدة من 1 إلى 9. والجواب أدناه ثابت بالطي لا بالنقل. نطوي كل نشر ونتتبع الوجه الذي تحتله كل مربعة: النشر (1) وحده يعطي ستة وجوه مختلفة. في النشر (2) تقع آخر مربعة من الصف السفلي على الوجه نفسه الذي تحتله المربعة العليا. وفي النشر (3) تتراكب المربعة السفلى اليسرى والمربعة السفلى اليمنى على وجه واحد. وفي النشر (4) يغطي الشريط العمودي ذو المربعات الأربع الوجوه الجانبية الأربعة، فتتزاحم المربعتان الملحقتان به من الجهة نفسها على وجه واحد. والقاعدة العملية التي تختصر الثلاثة: مربعتان إضافيتان على شريط من أربع يجب أن توضعا على جانبيه لا على جانب واحد. مناصب يعطي الجواب نفسه (A) مع «إجابة مرجّحة: تحقق منه حسب وضوح الشكل».', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'عمود السؤال 10 في جدول عناصر الإجابة الرسمية خارج إطار الصورة الممسوحة (تظهر الأعمدة 1–9 فقط)؛ الجواب A ثابت بالطي لا بالنقل، ومتفق عليه بين mesconcours ومناصب.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q11', 'exam_primary_2021_maths_dec', 11, 'القوى — الأسس', 'ليكن n عددا صحيحا طبيعيا بحيث:
9^(n+5) + 9^(n+5) + 9^(n+5) = 3^2021
قيمة العدد n هي:', false, '[{"id": "A", "text": "670"}, {"id": "B", "text": "1005"}, {"id": "C", "text": "1006"}, {"id": "D", "text": "2010"}]'::jsonb, ARRAY['B']::text[], 'الطرف الأيسر ثلاثة حدود متساوية، إذن 3 × 9^(n+5) = 3^(2n+11) = 3^2021. ثم 2n + 11 = 2021، ومنه n = 1005. الاختيار 1006 يأتي من نسيان العامل 3، والاختيار 670 من قسمة 2010 على 3. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q12', 'exam_primary_2021_maths_dec', 12, 'المثلثات متساوية الأضلاع — الزوايا', 'المثلث AFS والمثلث AHK متساويا الأضلاع بحيث AS = AH وFÂK = 80°. (الشكل في ملف PDF)
قياس الزاوية FĤK هو:', false, '[{"id": "A", "text": "50°"}, {"id": "B", "text": "45°"}, {"id": "C", "text": "40°"}, {"id": "D", "text": "35°"}]'::jsonb, ARRAY['C']::text[], 'المثلثان متساويا الأضلاع وAS = AH، إذن الأضلاع الستة متقايسة وبالخصوص AF = AS = AH = AK. والزاوية FÂH = FÂK + KÂH = 80° + 60° = 140°. فالمثلث AFH متساوي الساقين رأسه A، ومنه AĤF = (180° − 140°)/2 = 20°. وأخيرا FĤK = 60° − 20° = 40°. والخطأ المتوقع هو طرح 80° من 140° وقسمة الناتج على 2، وهو ما يعطي 30°. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q13', 'exam_primary_2021_maths_dec', 13, 'الكتلة الحجمية', 'عارضة من الألمنيوم قياس كتلتها 28g وقياس طولها 25cm وقياس عرضها 2cm وقياس سمكها 0,2cm.
الكتلة الحجمية لهذه العارضة هي:', false, '[{"id": "A", "text": "3,4 g/cm³"}, {"id": "B", "text": "3,2 g/cm³"}, {"id": "C", "text": "3 g/cm³"}, {"id": "D", "text": "2,8 g/cm³"}]'::jsonb, ARRAY['D']::text[], 'العارضة متوازي مستطيلات، فحجمها 25 × 2 × 0,2 = 10cm³. والكتلة الحجمية 28/10 = 2,8 g/cm³، وهي فعلا القيمة المعروفة للألمنيوم. والخطأ الشائع هو إهمال السمك أو قراءته 2cm بدل 0,2cm. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q14', 'exam_primary_2021_maths_dec', 14, 'مقارنة الكسور', 'ليكن a وb عددين حقيقيين موجبين قطعا.
الكسر الذي يمثل أكبر عدد هو:', false, '[{"id": "A", "text": "a/(b+1)"}, {"id": "B", "text": "2a/(2b+1)"}, {"id": "C", "text": "3a/(3b+1)"}, {"id": "D", "text": "4a/(4b+1)"}]'::jsonb, ARRAY['D']::text[], 'نقسم البسط والمقام على n في الكسر العام: na/(nb+1) = a/(b + 1/n). البسط ثابت والمقام يتناقص كلما كبر n، إذن الكسر يتزايد مع n، وأكبر قيمة معروضة هي 4a/(4b+1). والتحقق المباشر يؤكده: لأن a وb موجبان قطعا. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة دجنبر 2021) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_maths_dec_q15', 'exam_primary_2021_maths_dec', 15, 'التناسب — التحويل بين الوحدات', 'أبعاد المستطيل (b) متناسبة مع أبعاد المستطيل (a) كما يبين الشكل أسفله. (الشكل في ملف PDF — المستطيل (a): 4,5cm × 3cm؛ والمستطيل (b) طوله 6,3cm)
قياس عرض المستطيل (b) هو:', false, '[{"id": "A", "text": "42mm"}, {"id": "B", "text": "4,2mm"}, {"id": "C", "text": "420mm"}, {"id": "D", "text": "0,42mm"}]'::jsonb, ARRAY['A']::text[], 'معامل التناسب هو نسبة الطولين: 6,3/4,5 = 1,4. ومنه عرض المستطيل (b) يساوي 3 × 1,4 = 4,2cm، أي 42mm. والاختيارات الثلاثة الأخرى تحمل الأرقام نفسها بوحدة خاطئة، فالسؤال يقيس التحويل بين السنتيمتر والمليمتر بقدر ما يقيس التناسب. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- 3. أسئلة العلوم (Q16–Q27 في الترقيم العام؛ Q1–Q12 على الورقة)
-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q16', 'exam_primary_2021_sciences_dec', 16, 'التأثيرات الميكانيكية — التصنيف', 'يعطي الجدول أسفله أمثلة لتأثيرات ميكانيكية. حدد نوع كل تأثير ميكانيكي بوضع علامة (X) في الخانة المناسبة.
الأنواع الثلاثة المعروضة في أعمدة الجدول: تأثير تماس مموضع · تأثير تماس موزع · تأثير عن بعد موزع.
A. تأثير مطرقة على مسمار
B. تأثير القدم على كرة
C. تأثير مغنطيس على كرية من حديد
D. تأثير الريح على طائرة ورقية
E. تأثير الأرض على جسم معلق', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب: A ← تأثير تماس مموضع؛ B ← تأثير تماس موزع؛ C ← تأثير عن بعد موزع؛ D ← تأثير تماس موزع؛ E ← تأثير عن بعد موزع.
التصنيف يقوم على سؤالين متتاليين. أولا: هل هناك تلامس بين الجسمين؟ المغنطيس والكرية الحديدية لا يتلامسان، والأرض لا تلامس الجسم المعلق، فالتأثيران عن بعد. ثانيا: هل يتم التأثير في نقطة أم على سطح؟ المطرقة تصطدم برأس المسمار وهي مساحة صغيرة جدا، فالتأثير مموضع. أما القدم فتلامس الكرة على مساحة من سطحها، والريح تضغط على كامل سطح الطائرة الورقية، فالتأثيران موزعان. والتأثيران عن بعد هنا موزعان أيضا لأنهما يشملان حجم الجسم كله لا نقطة منه. الجواب من عناصر الإجابة الرسمية.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'سؤال مفتوح (تصنيف التأثيرات الخمسة A–E في جدول)؛ عناصر الجواب من عناصر الإجابة الرسمية.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q17', 'exam_primary_2021_sciences_dec', 17, 'التأثيرات الميكانيكية — إتمام الجدول', 'يعطي الجدول أسفله أمثلة لتأثيرات ميكانيكية. أتمم ملء الجدول محددا بالنسبة لكل تأثير ميكانيكي: الجسم المؤثر، الجسم المؤثر عليه ومفعول التأثير.
1. ضغط يد على قنينة من البلاستيك · الجسم المؤثر: ......... · الجسم المؤثر عليه: قنينة البلاستيك (مثبت في الجدول) · مفعول التأثير الميكانيكي: .........
2. ارتداد كرة قدم على حائط · الجسم المؤثر: ......... · الجسم المؤثر عليه: ......... · مفعول التأثير الميكانيكي: .........
3. ضرب كرة مضرب بواسطة مضرب · الجسم المؤثر: ......... · الجسم المؤثر عليه: ......... · مفعول التأثير الميكانيكي: الحركة (مثبت في الجدول)', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب: 1. الجسم المؤثر: اليد · مفعول التأثير: التشوه (تشويه القنينة). 2. الجسم المؤثر: الحائط · الجسم المؤثر عليه: الكرة · مفعول التأثير: تغيير منحى الحركة. 3. الجسم المؤثر: المضرب · الجسم المؤثر عليه: كرة المضرب.
القاعدة أن الجسم المؤثر هو الذي يمارس الفعل، والجسم المؤثر عليه هو الذي يطرأ عليه التغير. في الحالة الأولى اليد تضغط والقنينة تنبعج، فالمفعول تشوه. وفي الحالة الثانية الحائط هو المؤثر رغم أنه ساكن: الكرة هي التي ترتد، وسرعتها لا تتغير في قيمتها بقدر ما تتغير في اتجاهها، فالمفعول تغيير منحى الحركة. وفي الحالة الثالثة المضرب يؤثر على كرة المضرب، والمفعول المثبت في الجدول هو الحركة. الجواب من عناصر الإجابة الرسمية.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'سؤال مفتوح (إتمام جدول: الجسم المؤثر والمؤثر عليه ومفعول التأثير)؛ عناصر الجواب من عناصر الإجابة الرسمية.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q18', 'exam_primary_2021_sciences_dec', 18, 'شدة الثقالة', 'تقدم الوثيقتان (1) و(2) النتائج المحصلة أثناء تجربة: الوثيقة (1) تبين ميزانا يشير إلى 200g، والوثيقة (2) تبين الجسم نفسه معلقا بدينامومتر. (الشكل في ملف PDF)
ضع علامة (X) في الخانة الموافقة للاقتراح الصحيح. قيمة شدة الثقالة في المكان الذي أنجزت فيه القياسات هي:', false, '[{"id": "A", "text": "g = 0,4 N/kg"}, {"id": "B", "text": "g = 2 N/kg"}, {"id": "C", "text": "g = 20 N/kg"}, {"id": "D", "text": "g = 10 N/kg"}]'::jsonb, ARRAY['D']::text[], 'الميزان يعطي الكتلة 200g أي 0,2kg، والدينامومتر يقرأ الوزن 2N على تدريجته. ومن العلاقة g = P/m نستنتج g = 2/0,2 = 10 N/kg، وهي القيمة المعتادة على سطح الأرض. الاختيار 2 N/kg يخلط بين قيمة الوزن وشدة الثقالة، والاختيار 0,4 N/kg ناتج عن ضرب الكتلة في الوزن بدل قسمة الوزن على الكتلة. مناصب يضع «إجابة مرجّحة» لأن تدريجة الدينامومتر غير واضحة في الصورة؛ عناصر الإجابة الرسمية تعطي D. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'مناصب يضع «إجابة مرجّحة» لأن تدريجة الدينامومتر غير واضحة في الصورة؛ عناصر الإجابة الرسمية تعطي D.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q19', 'exam_primary_2021_sciences_dec', 19, 'الضوء — الأجسام المعتمة والملونة', 'أجب بصحيح أو خطأ على الاقتراحات الآتية، وذلك بوضع علامة (X) في الخانة المناسبة.
A. لا تسمح الأجسام المعتمة بمرور الضوء.
B. يأخذ جسم أبيض لون الضوء الذي يضيئه.
C. يشتت جسم أحمر الضوء الأحمر عند إضاءته بضوء أحمر أو بضوء أبيض.
D. يشتت جسم أسود جميع الأضواء التي يستقبلها.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب: A✓ B✓ C✓ D✗ — A: صحيح · B: صحيح · C: صحيح · D: خطأ.
الجسم المعتم لا يمرر الضوء بل يمتصه أو يشتته، وهذا تعريفه نفسه، فـ A صحيح. والجسم الأبيض يشتت كل الأضواء المرئية، فيبدو بلون الضوء الذي يضيئه: أبيض تحت الضوء الأبيض وأحمر تحت الضوء الأحمر، فـ B صحيح. والجسم الأحمر لا يشتت إلا الضوء الأحمر، سواء أضيء بضوء أحمر أو بضوء أبيض الذي يحمل الأحمر ضمن مكوناته، فـ C صحيح. أما D فخطأ وهو المطلوب: الجسم الأسود يمتص جميع الأضواء ولا يشتت أيا منها، ولهذا يبدو أسود، وهو عكس ما يقوله الاقتراح تماما. الجواب من عناصر الإجابة الرسمية.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'سؤال مفتوح (صحيح/خطأ)؛ التصنيف A✓ B✓ C✓ D✗ من عناصر الإجابة الرسمية.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q20', 'exam_primary_2021_sciences_dec', 20, 'الظل وشبه الظل — المنبع غير النقطي', 'نضيء جسما معتما بواسطة منبع ضوئي غير نقطي كما يبين الشكل أسفله. مثل مسار الحزم الضوئية المنبعثة من المنبع، وحدد على الشكل:
- الظل الخاص للشيء؛
- الظل المحمول؛
- مخروط الظل؛
- شبه الظل.
(الشكل في ملف PDF — منبع غير نقطي، كرة معتمة، شاشة)', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب (رسم): نرسم من حافتي المنبع غير النقطي الأشعة المماسة للكرة من الجهتين، فتتقاطع خلفها وترسم على الشاشة منطقتين متداخلتين. ثم نحدد العناصر الأربعة:
- الظل الخاص للكرة: الجزء غير المضاء من سطح الكرة نفسها، أي نصفها المقابل للشاشة؛
- مخروط الظل: الحيز المعتم الممتد خلف الكرة والمحصور بين الشعاعين الداخليين، ولا يصله ضوء من أي نقطة من المنبع؛
- الظل المحمول: المنطقة المعتمة المرسومة على الشاشة حيث يقطعها مخروط الظل؛
- شبه الظل: الهالة الأقل عتمة المحيطة بالظل المحمول على الشاشة، وهي المنطقة التي يصلها ضوء جزء من المنبع دون جزئه الآخر.
المفتاح هنا أن المنبع غير نقطي: لو كان نقطيا لما وجد شبه ظل، ولكان على الشاشة ظل محمول واحد حاد الحواف. وبما أن للمنبع امتدادا، فكل نقطة من نقطه ترسم مخروط ظل خاصا بها، وتقاطع هذه المخاريط يعطي منطقة الظل التام بينما يعطي اتحادها منطقة أوسع تحيط بها هي شبه الظل. والتمييز الثاني الذي يقيسه السؤال هو بين الظل الخاص، وهو على الجسم نفسه، والظل المحمول، وهو على الشاشة. وورقة عناصر الإجابة الرسمية تحمل الشكل نفسه مؤشرا عليه بهذه العناوين الأربعة. الجواب من عناصر الإجابة الرسمية.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'سؤال مفتوح (رسم مسار الحزم الضوئية وتحديد العناصر الأربعة على الشكل)؛ عناصر الجواب من عناصر الإجابة الرسمية، وورقة التصحيح الرسمية تحمل الشكل نفسه مؤشرا عليه بالعناوين الأربعة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q21', 'exam_primary_2021_sciences_dec', 21, 'السرعة المتوسطة', 'غادر قطار وسيارة مدينة آسفي في نفس الساعة 15h10 متوجهين نحو مدينة بن جرير. يتحرك القطار بالسرعة المتوسطة 90km/h حيث وصل إلى مدينة بن جرير بعد السيارة بمدة زمنية 11min. المسافة بين آسفي وبن جرير تساوي 162km.
ضع علامة (X) في الخانة الموافقة للاقتراح الصحيح. السرعة المتوسطة للسيارة هي:', false, '[{"id": "A", "text": "V = 93km/h"}, {"id": "B", "text": "V = 95km/h"}, {"id": "C", "text": "V = 98km/h"}, {"id": "D", "text": "V = 100,2km/h"}]'::jsonb, ARRAY['D']::text[], 'نحسب أولا مدة سفر القطار: 162/90 = 1,8h أي 108min. والقطار وصل بعد السيارة بـ 11min، إذن مدة سفر السيارة 108 − 11 = 97min أي 97/60h. ومنه V = 162 ÷ (97/60) ≈ 100,2km/h. والخطأ المتوقع هو إضافة 11min بدل طرحها، وهو ما يعطي سرعة أقل من 90km/h في حين أن السيارة سبقت القطار. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q22', 'exam_primary_2021_sciences_dec', 22, 'التأريخ النسبي — المقطع الجيولوجي', 'نرغب في التأريخ النسبي للتشكلات A وB والكرانيت والبازلت والفالق المبينة في المقطع الجيولوجي أسفله. (الشكل في ملف PDF)
مفتاح المقطع: 1 الكرانيت · 2 هالة التحول (ناتجة عن اندساس الصهارة) · B تشكلات الشيست والكلس تتضمن الطبقات 3 و4 و5 و6 · A تشكلات الرواسب البحرية تتضمن الطبقات 7 و8 و9 · 10 بازلت · F فالق.
انطلاقا من هذا المقطع الجيولوجي نستنتج أن:', false, '[{"id": "A", "text": "حسب مبدأ التقاطع، التشكل الرسوبي B أحدث من الفالق."}, {"id": "B", "text": "حسب مبدأ التقاطع، الاندساس الكرانيتي أحدث من التشكل الرسوبي A."}, {"id": "C", "text": "التشكل الرسوبي A أقدم من المدخنة البازلتية حسب مبدأ تماثل المحتوى الاستحاثي."}, {"id": "D", "text": "حسب مبدأ التراكب، التشكل الرسوبي B أقدم من التشكل الرسوبي A."}]'::jsonb, ARRAY['D']::text[], 'مبدأ التراكب ينص على أن الطبقة السفلى أقدم من الطبقة التي تعلوها ما لم يحدث انقلاب. وفي المقطع يوجد التشكل B تحت التشكل A مباشرة، فـ B أقدم، وهذا هو الاختيار D. الاختيار A يقلب مبدأ التقاطع: القاطع أحدث من المقطوع، والفالق F يقطع الطبقات لا العكس. والاختيار B يقلبه أيضا، فالاندساس الكرانيتي وهالة تحوله محصوران تحت التشكل A ولا يقطعانه. أما الاختيار C فيستدعي مبدأ تماثل المحتوى الاستحاثي، وهو مبدأ لمقارنة مقاطع متباعدة اعتمادا على الأحافير، ولا ينطبق على مدخنة بازلتية لا تحمل أحافير أصلا. الجواب من عناصر الإجابة الرسمية.
**تعارض مسجل:** مناصب يعطي B («الكرانيت يقطع التشكلات، فهو أحدث منها حسب مبدأ التقاطع») ويلاحظ أن الاقتراح D صحيح أيضا («إجابة مرجّحة: يتوقف الجواب على أيهما المقصود في السؤال»). الجواب المحتفظ به في الجدول هو D لأنه جواب عناصر الإجابة الرسمية، ولأن رسم المقطع في ورقة الموضوع يؤيده: الاندساس الكرانيتي (1) وهالته (2) محصوران تحت التشكل A ولا يقطعان طبقاته 7 و8 و9، فالاقتراح B خاطئ في صيغته (يتحدث عن التشكل A تحديدا)، بينما B تحت A مباشرة فيؤكد D بمبدأ التراكب.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'تعارض: مناصب يعطي B ويقول إن D صحيح أيضا («إجابة مرجّحة»)؛ الجواب المحتفظ به D لأنه جواب عناصر الإجابة الرسمية، ولأن الاندساس الكرانيتي (1) وهالته (2) محصوران تحت التشكل A ولا يقطعان طبقاته 7 و8 و9.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q23', 'exam_primary_2021_sciences_dec', 23, 'اللقاح والمناعة', 'اللقاح:', false, '[{"id": "A", "text": "يحتوي على مضادات أجسام تحمي الجسم ضد مولد مضاد معين."}, {"id": "B", "text": "يمكن استعماله للحماية الفورية ضد عنصر أجنبي ممرض."}, {"id": "C", "text": "يمنح الجسم مناعة جاهزة تمكنه من مقاومة العدوى."}, {"id": "D", "text": "يمكن من اكتساب ذاكرة مناعية ضد مولد مضاد معين."}]'::jsonb, ARRAY['D']::text[], 'اللقاح يحتوي على مولد مضاد غير ممرض، أي جرثوما مضعفا أو مقتولا أو جزءا منه، فيدفع الجسم إلى إنتاج مضادات أجسامه بنفسه وإلى تكوين خلايا ذات ذاكرة: هذه مناعة مكتسبة نشيطة، بطيئة التركيب لكنها دائمة. أما الاختيارات A وB وC فتصف المصل لا اللقاح: المصل يحمل مضادات أجسام جاهزة، فيمنح حماية فورية لكنها وقتية ولا تترك ذاكرة مناعية. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q24', 'exam_primary_2021_sciences_dec', 24, 'تشريح الزهرة', 'يقدم الشكل أسفله رسما تخطيطيا لنصف زهرة الكرز. (الشكل في ملف PDF)
المفتاح الصحيح لهذا الرسم التخطيطي هو:', false, '[{"id": "A", "text": "1 كأس · 2 شمراخ · 3 أوراق تويجية · 4 سبلات · 5 خيط · 6 منبر · 7 سداة · 8 ميسم · 9 قلم الميسم · 10 مبيض · 11 مدقة · 12 بييضة"}, {"id": "B", "text": "1 شمراخ · 2 كأس · 3 سبلات · 4 أوراق تويجية · 5 خيط · 6 منبر · 7 سداة · 8 ميسم · 9 قلم الميسم · 10 بييضة · 11 مدقة · 12 مبيض"}, {"id": "C", "text": "1 شمراخ · 2 كأس · 3 سبلات · 4 أوراق تويجية · 5 خيط · 6 منبر · 7 سداة · 8 ميسم · 9 قلم الميسم · 10 مبيض · 11 مدقة · 12 بييضة"}, {"id": "D", "text": "1 شمراخ · 2 كأس · 3 سبلات · 4 أوراق تويجية · 5 خيط · 6 منبر · 7 سداة · 8 قلم الميسم · 9 ميسم · 10 مبيض · 11 مدقة · 12 بييضة"}]'::jsonb, ARRAY['C']::text[], 'نقرأ الرسم من الأسفل إلى الأعلى: 1 هو الشمراخ الذي يحمل الزهرة، 2 الكأس، 3 السبلات، 4 الأوراق التويجية، ثم 5 الخيط و6 المنبر وهما معا السداة 7، و8 الميسم و9 قلم الميسم و10 المبيض وهي معا المدقة 11، و12 البييضة داخل المبيض. والأقواس المرسومة على الشكل تؤكد هذا التجميع. الاختيار A يقلب الشمراخ والكأس وكذلك السبلات والأوراق التويجية. والاختيار B يقلب المبيض والبييضة، والرسم يبين بوضوح أن 12 محاطة بـ 10 لا العكس. والاختيار D يقلب الميسم وقلم الميسم: الميسم 8 هو الطرف العلوي اللاصق، والقلم 9 هو العنق الذي يحمله. ملاحظة: ورقة الموضوع تكتب «مبسم» بدل «ميسم» (خطأ مطبعي في الامتحان). الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, 'خطأ مطبعي في ورقة الامتحان نفسها: الخيار C يكتب «مبسم» بدل «ميسم» (الخياران A وB يكتبانها «ميسم»)؛ نُقلت الخيارات بالصيغة الصحيحة «ميسم».')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q25', 'exam_primary_2021_sciences_dec', 25, 'مراقبة النشاط الدوري للمبيضين', 'يتم مراقبة النشاط الدوري للمبيضين عند المرأة من طرف:', false, '[{"id": "A", "text": "النشاط الدوري للرحم."}, {"id": "B", "text": "الإنتاج الدوري للهرمونات النخامية."}, {"id": "C", "text": "الإنتاج الدوري للأستروجينات والجسفرون."}, {"id": "D", "text": "الإنتاج الدوري للبويضات."}]'::jsonb, ARRAY['B']::text[], 'المبيضان يخضعان لمراقبة الغدة النخامية، التي تفرز بشكل دوري هرموني FSH وLH: الأول ينمي الجريبات والثاني يطلق الإباضة. أما النشاط الدوري للرحم والإنتاج الدوري للأستروجينات والجسفرون وإنتاج البويضات فكلها نتائج للنشاط المبيضي لا أسبابه، والأستروجينات والجسفرون يفرزهما المبيض نفسه فلا يعقل أن يكونا هما الجهة التي تراقبه. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q26', 'exam_primary_2021_sciences_dec', 26, 'الإخصاب', 'الإخصاب:', false, '[{"id": "A", "text": "تشكل الخلايا التناسلية الذكرية والأنثوية أحادية الصيغة الصبغية."}, {"id": "B", "text": "اندماج نواتي مشيج ذكري ومشيج أنثوي ثنائي الصيغة الصبغية."}, {"id": "C", "text": "اندماج نواتي مشيج ذكري ومشيج أنثوي أحادي الصيغة الصبغية."}, {"id": "D", "text": "بالنسبة لنفس النوع، يمكن أن يكون داخليا وخارجيا."}]'::jsonb, ARRAY['C']::text[], 'الإخصاب هو اندماج نواتي مشيجين أحاديي الصيغة الصبغية (n)، ذكري وأنثوي، ليعطيا بيضة مخصبة ثنائية الصيغة الصبغية (2n). الاختيار A يصف تكوين الأمشاج بالانقسام الاختزالي، وهو ما يسبق الإخصاب ولا يكونه. والاختيار B خاطئ لأن المشيج الأنثوي أحادي الصيغة الصبغية مثله مثل الذكري، وثنائية الصيغة تظهر بعد الاندماج لا قبله. والاختيار D خاطئ لأن نمط الإخصاب ثابت داخل النوع الواحد: داخلي عند الثدييات والطيور، خارجي عند معظم الأسماك والبرمائيات. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة دجنبر 2021) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_sciences_dec_q27', 'exam_primary_2021_sciences_dec', 27, 'المراكز العصبية', 'تتكون المراكز العصبية من:', false, '[{"id": "A", "text": "النخاع الشوكي والدماغ."}, {"id": "B", "text": "الدماغ والأعصاب."}, {"id": "C", "text": "الأعصاب والنخاع الشوكي والمخيخ."}, {"id": "D", "text": "الأعصاب والنخاع الشوكي والدماغ."}]'::jsonb, ARRAY['A']::text[], 'المراكز العصبية هي الدماغ والنخاع الشوكي، أي الجهاز العصبي المركزي، لأنها وحدها التي تستقبل السيالة الحسية وتحللها وتصدر السيالة الحركية. أما الأعصاب فموصلات عصبية تربط المراكز بالأعضاء، وهي جهاز عصبي محيطي لا مركز، وهو ما يستبعد الاختيارات B وC وD جميعا. والمخيخ المذكور في C ليس عنصرا ثالثا مستقلا: هو جزء من الدماغ. الجواب من عناصر الإجابة الرسمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-508/', true, NULL)
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

