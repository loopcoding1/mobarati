-- ====================================================================
-- مباراتي — امتحان العلوم — مادة التخصص (دورة نونبر 2016)
-- ====================================================================
-- المصدر: ملف الحل solved/2016/العلوم - 2016.md
--   (سجل الامتحانات رقم 1؛ الحل: بحث Google أولا (تعليمات المستخدم 2026-11-25) — لم يعثر على حل منشور كامل لهذا الامتحان نفسه (mesconcours.ma ومناصب لا يغطيان العلوم الابتدائية 2016)؛ الأجوبة مأخوذة من ملف التصحيح الرسمي الموجود في مساحة العمل (مقترن بسنة 2016 في PAIRING.md)، فلم يستعمل AI Studio لهذا الامتحان.)
--   ملف الامتحان: exams-ibtida2i/2016/العلوم - امتحان.pdf (3 صفحات).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q13 مطابق لورقة الامتحان.
--   * الأجوبة مأخوذة من عناصر الإجابة الرسمية (التصحيح الرسمي المقترن بسنة 2016).
--   * كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--     والجواب الكامل منقول في explanation.
--   * الترقيم في هذا الملف ترقيم متسلسل 1–13؛ التعيين مع ترقيم الورقة مذكور عند كل سؤال (مثال: Q1 = التمرين 1، السؤال 1).
--   * مدة الإنجاز 4 ساعات والمعامل 1 على الغلاف يخصان الاختبار الكامل «الرياضيات والعلوم» (علوم + رياضيات)، ولا مدة خاصة بجزء العلوم وحده — لذلك duration_minutes = 240 (مدة الاختبار الكامل؛ لا مدة خاصة بالجزء وحده).
--   * التمرين 2 (الكهرباء): القاطع في الشكل مفتوح في الأسئلة 1–3، فيمر التيار في الموصلين R و2R على التوالي فقط (I₀ = 0,2 A)؛ ويُغلق القاطع في السؤال 4 فتدخل المقاومة 3R في الدارة.
--   * السؤال 1 من التمرين 1: نص الورقة يقول حرفيا «كيف تتدخل هاتان الآليتان على مستوى المعدة»، بينما عناصر الإجابة الرسمية تغطي الفم والمعدة والمعي الدقيق (الأنبوب الهضمي كاملا) — نُقلت عناصر الإجابة كما هي في الشبكة الرسمية، والملاحظة مسجلة عند السؤال.
--   * الوثيقة 2 من التمرين 1: القيم 60 U.A و55 U.A و2 U.A و600 cm كما في الشبكة الرسمية؛ والوثيقة 3: كمية عناصر القيت في الدم من 4 إلى 8 غرامات في الليتر قبل الوجبة، ومن 35 إلى 40 غراما بعدها.
--   * المدة على الغلاف (4 ساعات) تخص الاختبار المشترك الكامل «الرياضيات والعلوم»؛
--     لا مدة خاصة بهذا الجزء وحده، فاستُعملت مدة الاختبار الكامل (240 دقيقة).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  و <exam_id>_q<n> للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2016_sciences_nov', 'specialty_primary', 2016, 'sciences', 'العلوم', 'امتحان العلوم — مادة التخصص (دورة نونبر 2016)', 'دورة نونبر 2016', 240, 13)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (13 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q1', 'exam_primary_2016_sciences_nov', 1, 'العلوم — الهضم', 'تحتاج خلايا الجسم إلى إمداد مستمر بالعناصر الغذائية الضرورية للقيام بأنشطتها الفيزيولوجية. تخضع الأغذية المتناولة لتحولات على طول الجهاز الهضمي قبل أن تصل إلى الخلايا التي تستفيد منها. هذه التحولات تحدث بفعل آليات مختلفة، أهمها الآليات الميكانيكية والآليات الكيميائية. بيّن(ي) كيف تتدخل هاتان الآليتان على مستوى المعدة.', false, '[]'::jsonb, ARRAY[]::text[], 'الهضم الميكانيكي: في مستوى الفم يتم عن طريق الأسنان التي تقوم بعملية سحق وطحن الأغذية وتحويلها إلى قطع صغيرة يسهلها البلعوم إلى المعدة؛ في مستوى المعدة والأمعاء تقوم عضلات جدار هذين العضوين بتقلصات تموجية تؤدي إلى تحريك القطع الصغيرة لتسهيل هضمها بواسطة العصارات الهضمية. الهضم الكيميائي: في مستوى الفم يتم بواسطة اللعاب الذي تفرزه الغدد اللعابية؛ في مستوى المعدة يتم بواسطة العصارة المعدية؛ في مستوى المعي الدقيق يتم بواسطة العصارة المعوية والعصارة الهضمية للبنكرياس، كما تتدخل مادة الصفراء التي تفرزها المرارة من أجل تسهيل عملية هضم الدهنيات. تعمل العصارات الهضمية بواسطة أنزيماتها على تبسيط الجزيئات الغذائية المركبة إلى جزيئات بسيطة تسمى عناصر القيت. ملحوظة الشبكة الرسمية: تُقبل كل الإجابات الصحيحة مثل تلك التي تتضمن أسماء الأنزيمات الهضمية الصحيحة المتدخلة في المستويات المختلفة للأنبوب الهضمي.', 'open', 'official', NULL, true, 'سؤال الورقة يقول حرفيا «على مستوى المعدة»، بينما عناصر الإجابة الرسمية تغطي الفم والمعدة والمعي الدقيق (الأنبوب الهضمي كاملا) — نُقلت كما هي في الشبكة الرسمية.')
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q2', 'exam_primary_2016_sciences_nov', 2, 'العلوم — الهضم', 'من أجل الكشف عن بعض مظاهر الهضم ومصير نواتجه، نقدم الوثائق الأربع الآتية: تمثل الوثيقة (1) تطور خليط من البروتيدات والدهنيات والسكريات عبر الأنبوب الهضمي انطلاقا من الفم. اعتمادا على الوثيقة (1) وعلى معلوماتك، بيّن(ي) التحولات التي تعرفها كل من البروتيدات والدهنيات والسكريات.', false, '[]'::jsonb, ARRAY[]::text[], 'في البداية (حوالي 75 cm عن الفم) تبقى كمية السكريات والبروتيدات والدهنيات ثابتة؛ على بعد حوالي 75 cm من الفم حدث تبسيط للجزيئات المركبة إلى جزيئات دقيقة حيث: تتحول السكريات إلى كليكوز؛ تتحول البروتيدات إلى أحماض أمينية؛ تتحول الدهنيات إلى أحماض دهنية؛ تناقص تدريجي لجميع عناصر القيت.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q3', 'exam_primary_2016_sciences_nov', 3, 'العلوم — الهضم والامتصاص', 'تمثل الوثيقة (2) نتائج قياس تطور كميات عناصر القيت عبر مختلف أعضاء الأنبوب الهضمي؛ تمثل الوثيقة (3) كمية عناصر القيت (g) في 1L من الدم قبل تناول وجبة غذائية وبعدها؛ تمثل الوثيقة (4) رسم تفسيري لتعريق قطعة من المعي الدقيق. باستثمار منظم ومنطقي ودقيق للوثائق (2) و(3) و(4)، فسّر(ي) مصير عناصر القيت، ثم استنتج(ي) الظاهرة التي تكشف عنها هذه الوثائق.', false, '[]'::jsonb, ARRAY[]::text[], 'الوثيقة 2: قبل نهاية المعدة، الأنبوب الهضمي لا يحتوي على عناصر القيت (الأغذية لم تتحول بعد إلى عناصر قيت)؛ في نهاية المعدة يحدث ارتفاع مهم لكمية عناصر القيت من 0 إلى 60 U.A نتيجة حدوث تبسيط جزئي مهم بفعل العصارة المعدية. في مستوى المعي الدقيق تعرف كمية عناصر القيت انخفاضا مهما ومستمرا حيث تنتقل من 55 U.A على بعد 50 cm من الفم إلى 2 U.A على بعد 600 cm من الفم — عناصر القيت تغادر المعي الدقيق. الوثيقة 3: قبل تناول الوجبة الغذائية كانت كمية عناصر القيت ضعيفة منحصرة بين 4g و8g في الليتر من الدم؛ بعد تناول الوجبة الغذائية ارتفعت هذه الكمية لتصل إلى ما بين 35g و40g في الليتر، مما يدل على أن التغذية أمدت الدم بعناصر القيت. الوثيقة 4: الملاحظة الأساسية: المعي غني بالعروق الدموية (كثافة قوية لتعريق المعي الدقيق). خلاصة: تختفي عناصر القيت تدريجيا من المعي الدقيق وترتفع كمية هذه العناصر في الدم، نستنتج إذن أن عناصر القيت تنتقل من المعي الدقيق إلى الدم عن طريق شبكة التعرق الكثيفة للمعي؛ هذا الانتقال يسمى بالامتصاص المعوي.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q4', 'exam_primary_2016_sciences_nov', 4, 'العلوم — الكهرباء', 'نعتبر الدارة الكهربائية الممثلة في الشكل، والمكونة من عمود وجهاز كهربائي يحمل الرقم 1، وثلاثة موصلات أومية مقاومتها على التوالي R و2R و3R. معطيات: R = 10Ω و U = 6V. أعط(ي) دور كل من العمود والجهاز.', false, '[]'::jsonb, ARRAY[]::text[], 'العمود: مصدر الطاقة الكهربائية، ومسؤول عن مرور التيار في الدارة. الجهاز (الأمبيرمتر، يحمل الرقم 1): يقيس شدة التيار الكهربائي.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q5', 'exam_primary_2016_sciences_nov', 5, 'العلوم — الكهرباء', 'مثّل المنحى الاصطلاحي للتيار الكهربائي المار في الدارة.', false, '[]'::jsonb, ARRAY[]::text[], 'يمثل المنحى الاصطلاحي للتيار الكهربائي بسهم موجه من القطب الموجب نحو القطب السالب للعمود.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q6', 'exam_primary_2016_sciences_nov', 6, 'العلوم — الكهرباء', 'أوجد(ي) قيمة شدة التيار الرئيسي I₀ المار في الدارة، وقيمة التوتر U₂.', false, '[]'::jsonb, ARRAY[]::text[], 'الطريقة: U = 3R·I₀ أي I₀ = U/(3R) = 6/30 = 0,2 A (القاطع مفتوح: التيار يمر في الموصلين R و2R على التوالي فقط). و U₂ = 2R·I₀ = 2 × 10 × 0,2 = 4 V.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q7', 'exam_primary_2016_sciences_nov', 7, 'العلوم — الكهرباء', 'نغلق قاطع التيار الكهربائي، فيمر في الموصل الأومي R تيار شدته I₁، وفي الموصل الأومي 3R تيار شدته I. نعتبر أن U = 6V. أوجد(ي) قيمة المقاومة المكافئة R_e لتجميع الموصلات الأومية الثلاثة.', false, '[]'::jsonb, ARRAY[]::text[], 'الطريقة: R_e = 3R/2 = 15Ω (المقاومتان R و2R على التوالي أي 3R، على التوازي مع 3R).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q8', 'exam_primary_2016_sciences_nov', 8, 'العلوم — الكهرباء', 'حدد(ي) قيمتي I₁ و I₂.', false, '[]'::jsonb, ARRAY[]::text[], 'الطريقة: I₁ = I₂ = I/2، و I = 2U/(3R) = 0,4 A؛ إذن I₁ = I₂ = 0,2 A.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q9', 'exam_primary_2016_sciences_nov', 9, 'العلوم — الكهرباء', 'أعط(ي) الأشكال التي تظهر عليها الطاقة في الدارة.', false, '[]'::jsonb, ARRAY[]::text[], 'طاقة كهربائية يمنحها المولد (العمود)؛ طاقة حرارية في الموصلات الأومية (مفعول جول).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q10', 'exam_primary_2016_sciences_nov', 10, 'العلوم — الكهرباء', 'أحسب(ي) قيمة القدرة الكهربائية المبددة بمفعول جول في الدارة.', false, '[]'::jsonb, ARRAY[]::text[], 'الطريقة: P = R_e·I² = (3R·I₁² + 3R·I₂²)؛ P = 2,4 W.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q11', 'exam_primary_2016_sciences_nov', 11, 'ديداكتيك العلوم — تخطيط حصة', '«تعرف ضرورة الماء في إنبات البذرة» هو أحد أهداف موضوع «التكاثر» بالمستوى الثالث ابتدائي. أعد(ي) جذاذة لتخطيط حصة لتحقيق هذا الهدف وذلك باعتماد التوجيهات الآتية: 1. تحديد وضعية انطلاق من خلالها تستهدف تحفيز المتعلمات والمتعلمين وتشويقهم لمحتوى الحصة، مع إبراز كيفية استثمارها.', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية انطلاق مفتوحة بتحفيز المتعلمين والمتعلمات وتشويقهم لمحتوى الحصة، وذلك من قبيل: صورة حقل في فترة جفاف، نباتاته يابسة وأرضه جرداء وبها شقوق...؛ أصيص به نبتة ذابلة... يبرز المترشح(ة) كيفية استثمار الوضعية التي اقترحها. مثال: تقديم الوضعية؛ توجيه المتعلمات والمتعلمين لملاحظتها والتفاعل معها باعتماد أسئلة وتعليمات مناسبة للتوصل إلى طرح السؤال الإشكالي.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q12', 'exam_primary_2016_sciences_nov', 12, 'ديداكتيك العلوم — تخطيط حصة', '2. اقتراح وضعية تمكن المتعلمين والمتعلمات من تعرف ضرورة الماء في إنبات البذرة، وذلك باعتماد النهج التجريبي لإنجازها، مع تحديد الوسائل الديدكتيكية وأنشطة الأستاذ(ة) ومهام المتعلمين والمتعلمات.', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية باعتماد النهج العلمي، مع الإشارة إلى أن التجربة تتطلب إعدادا قبليا يسمح بحدوث ظاهرة الإنبات، ويتم هذا الإعداد من طرف الأستاذ(ة) والمتعلمات والمتعلمين. مثال: وضع بذور فاصوليا في إناء صغير به قطن مبلل وبذور فاصوليا أخرى في إناء ثان به قطن جاف. وضع الإناعين في ركن من أركان الحجرة الدراسية لفترة كافية، قبل تاريخ إنجاز الحصة المعنية. تبليل القطن الموجود بالإناء الأول بالماء بانتظام. مطالبة المتعلمين بتتبع وملاحظة التغيرات الحاصلة. الوسائل الديدكتيكية، وذلك من قبيل: أصيص، ماء، قطن... أنشطة الأستاذ(ة): الإعداد القبلي للتجربة، تنظيم الفضاء، اختيار أشكال العمل، توجيه المتعلمات والمتعلمين خلال خطوات تدبير الوضعية. مهام المتعلم/المتعلمة: المشاركة القبلية في تحضير الوسائل، الملاحظة وصياغة الفرضيات، إنجاز التجربة، ملاحظة وتتبع التطور الحاصل خلال التجربة، استخلاص نتائج التجربة باعتماد الملاحظة والمقارنة والتحقق من الفرضيات، صياغة الاستنتاجات وتدوينها.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2016) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_sciences_nov_q13', 'exam_primary_2016_sciences_nov', 13, 'ديداكتيك العلوم — تخطيط حصة', '3. اقتراح وضعية لتقويم مدى تحقيق هدف هذه الحصة.', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية تقويمية منسجمة مع هدف هذه الحصة (تعرف ضرورة الماء في إنبات البذرة).', 'open', 'official', NULL, true, NULL)
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
