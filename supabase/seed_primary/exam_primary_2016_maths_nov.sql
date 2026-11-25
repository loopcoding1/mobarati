-- ====================================================================
-- مباراتي — امتحان الرياضيات — مادة التخصص (دورة نونبر 2016)
-- ====================================================================
-- المصدر: ملف الحل solved/2016/الرياضيات - 2016.md
--   (سجل الامتحانات رقم 0؛ الحل: بحث Google أولا (تعليمات المستخدم 2026-11-25) — لم يعثر على حل منشور كامل لهذا الامتحان نفسه (mesconcours.ma ومناصب لا يغطيان الرياضيات الابتدائية 2016)؛ الأجوبة مأخوذة من ملف التصحيح الرسمي الموجود في مساحة العمل (مقترن بسنة 2016 في PAIRING.md)، فلم يستعمل AI Studio لهذا الامتحان.)
--   ملف الامتحان: exams-ibtida2i/2016/الرياضيات - امتحان.pdf (2 صفحات).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q13 مطابق لورقة الامتحان.
--   * الأجوبة مأخوذة من عناصر الإجابة الرسمية (التصحيح الرسمي المقترن بسنة 2016).
--   * كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--     والجواب الكامل منقول في explanation.
--   * الترقيم في هذا الملف ترقيم متسلسل 1–13؛ التعيين مع ترقيم الورقة مذكور عند كل سؤال (مثال: Q1 = الوضعية 1، السؤال 1-أ).
--   * مدة الإنجاز 4 ساعات والمعامل 1 على الغلاف يخصان الاختبار الكامل «الرياضيات والعلوم» (علوم + رياضيات)، ولا مدة خاصة بجزء الرياضيات وحده — لذلك duration_minutes = 240 (مدة الاختبار الكامل؛ لا مدة خاصة بالجزء وحده).
--   * الشبكة الرسمية تنص في رأس صفحة الرياضيات: «تُقبل جميع الإجابات الصحيحة التي يقدمها المترشح(ة)، وتؤخذ بعين الاعتبار كل مرحلة من مراحل الحل».
--   * الوضعية 1: قيم المبيان تحققت حسابيا ثلاث مرات — مجموع الحصيصات 25، ونسبة ≥6 هي 14/25 = 56%، والمعدل 5.86 — وكلها تطابق الشبكة الرسمية.
--   * الوضعية 3، السؤال 3: الشبكة الرسمية تكتفي بعبارة «يمكن استحضار مفهوم التكبير» (1 ن)؛ خطوات الإنشاء (تكبير مركزه O ونسبته 2) مبينة هنا تفسيرا لذلك.
--   * المدة على الغلاف (4 ساعات) تخص الاختبار المشترك الكامل «الرياضيات والعلوم»؛
--     لا مدة خاصة بهذا الجزء وحده، فاستُعملت مدة الاختبار الكامل (240 دقيقة).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  و <exam_id>_q<n> للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2016_maths_nov', 'specialty_primary', 2016, 'maths', 'الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة نونبر 2016)', 'دورة نونبر 2016', 240, 13)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (13 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q1', 'exam_primary_2016_maths_nov', 1, 'مسائل في الرياضيات — إحصاء', 'يعطي التمثيل المبياني التالي توزيعا لنقط تلاميذ أحد أقسام السنة السادسة من التعليم الابتدائي في أحد الواجبات المحروسة (تم اجتياز هذا الواجب من طرف جميع تلاميذ القسم). انقل(ي) على ورقتك وأتمم(ي) ملء الجدول أسفله: النقطة: 4، 4.5، 5، 5.5، 6، 6.5، 7، 7.5 / عدد التلاميذ: ...', false, '[]'::jsonb, ARRAY[]::text[], 'عدد التلاميذ حسب النقطة (من قراءة المبيان): النقطة 4: تلميذان؛ 4.5: 5 تلاميذ؛ 5: تلميذان؛ 5.5: تلميذان؛ 6: 3 تلاميذ؛ 6.5: تلميذان؛ 7: 7 تلاميذ؛ 7.5: تلميذان.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q2', 'exam_primary_2016_maths_nov', 2, 'مسائل في الرياضيات — إحصاء', 'تحقق(ي) من أن عدد تلاميذ هذا القسم هو 25.', false, '[]'::jsonb, ARRAY[]::text[], 'مجموع الحصيصات = 2 + 5 + 2 + 2 + 3 + 2 + 7 + 2 = 25 تلميذا، وهو عدد تلاميذ القسم.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q3', 'exam_primary_2016_maths_nov', 3, 'مسائل في الرياضيات — إحصاء', 'حدد(ي) النسبة المئوية للتلاميذ الذين حصلوا في هذا الواجب المحروس على نقطة تفوق أو تساوي 6.', false, '[]'::jsonb, ARRAY[]::text[], 'عدد التلاميذ المعنيين هو 14 (3 عند النقطة 6، و2 عند 6.5، و7 عند 7، و2 عند 7.5). النسبة المئوية هي 14/25 = 56%.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q4', 'exam_primary_2016_maths_nov', 4, 'مسائل في الرياضيات — إحصاء', 'بيّن(ي) أن معدل القسم في هذا الواجب المحروس هو 5.86.', false, '[]'::jsonb, ARRAY[]::text[], 'المعدل = (4×2 + 4.5×5 + 5×2 + 5.5×2 + 6×3 + 6.5×2 + 7×7 + 7.5×2) / 25 = 146.5 / 25 = 5.86.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q5', 'exam_primary_2016_maths_nov', 5, 'مسائل في الرياضيات — معادلات', 'خلال سباق للدراجات، قطع دراجي المسار من مدينة A إلى مدينة D مرورا بمدينتين B وC في توقيت قدره 6 ساعات. طول المسار من المدينة A إلى المدينة D مرورا بالمدينتين B وC هو 205 كيلومترا. السرعة المتوسطة على المسار من المدينة A إلى المدينة B هي 25 كيلومترا في الساعة، والسرعة المتوسطة على المسار من المدينة B إلى المدينة C هي 35 كيلومترا في الساعة، أما السرعة المتوسطة على المسار من المدينة C إلى المدينة D فهي 50 كيلومترا في الساعة. نعلم أن طول المسار من A إلى B يساوي طول المسار من C إلى D. ليكن x، بالكيلومتر، طول المسار من A إلى B، وy، بالكيلومتر، طول المسار من B إلى C. بيّن(ي) أن 3x/50 + y/35 = 6.', false, '[]'::jsonb, ARRAY[]::text[], 'ليكن t1 وt2 وt3 الأزمنة التي قطع فيها الدراجي كل مسار من المسارات الثلاث: t1 = x/25 (من A إلى B)، وt2 = y/35 (من B إلى C)، وt3 = x/50 (من C إلى D، لأن طوله يساوي طول المسار من A إلى B). مجموع الأزمنة 6 ساعات: x/25 + y/35 + x/50 = 6، أي 3x/50 + y/35 = 6.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q6', 'exam_primary_2016_maths_nov', 6, 'مسائل في الرياضيات — معادلات', 'حدد(ي) x و y.', false, '[]'::jsonb, ARRAY[]::text[], 'طول المسار الكلي: 2x + y = 205. مع المعادلة السابقة 3x/50 + y/35 = 6، نحل الجملة فنصل إلى x = 50 و y = 105 (بالتحقق: 2×50 + 105 = 205، و 3×50/50 + 105/35 = 3 + 3 = 6).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q7', 'exam_primary_2016_maths_nov', 7, 'مسائل في الرياضيات — هندسة', 'هرم منتظم قاعدته المربع ABCD (انظر الشكل). النقط I وJ وK وL هي منتصفات القطع [OA] و[OB] و[OC] و[OD] على التوالي. بيّن(ي) أن IJKL مربع.', false, '[]'::jsonb, ARRAY[]::text[], 'حسب مبرهنة المنتصفات في المثلث: في المثلث OAB، القطعة [IJ] توازي [AB] و IJ = AB/2؛ وكذلك JK = BC/2 و KL = CD/2 و LI = DA/2. وبما أن ABCD مربع فأضلاعه متساوية ومتعامدة، إذن IJKL متوازي أضلاع أضلاعه متساوية وزواياه قائمة، أي مربع.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q8', 'exam_primary_2016_maths_nov', 8, 'مسائل في الرياضيات — هندسة', 'بيّن(ي) أن مساحة المربع IJKL تساوي ربع مساحة المربع ABCD.', false, '[]'::jsonb, ARRAY[]::text[], 'طول ضلع المربع IJKL هو نصف طول ضلع المربع ABCD (حسب مبرهنة المنتصفات)، إذن مساحة IJKL = (1/2)² × مساحة ABCD = ربع مساحة ABCD.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q9', 'exam_primary_2016_maths_nov', 9, 'مسائل في الرياضيات — هندسة', 'ليكن V حجم الهرم OABCD. أنشئ(ي) هرما OEFGH حجمه يساوي 8V، ووضّح(ي) كل المراحل المتبعة لإنشاء الهرم OEFGH.', false, '[]'::jsonb, ARRAY[]::text[], 'حجم الهرم يتناسب مع مكعب نسبة التكبير؛ و 8 = 2³، إذن نسبة التكبير هي 2 (الشبكة الرسمية: «يمكن استحضار مفهوم التكبير»). ننشئ النقط E وF وG وH على أنصاف المستقيمات [OA) و[OB) و[OC) و[OD) بحيث OE = 2·OA و OF = 2·OB و OG = 2·OC و OH = 2·OD (تكبير مركزه O ونسبته 2)، ثم الهرم OEFGH حجمه 8V.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q10', 'exam_primary_2016_maths_nov', 10, 'ديداكتيك الرياضيات — حل مسألة', 'في إطار تدريب التلاميذ على منهجية حل المسائل واستثمار الأخطاء التي تعترض التلاميذ أثناء حلها، قدم أستاذ لتلاميذ المستوى الرابع ابتدائي المسألة الآتية: في إحدى قاعات مسرح، جميع المقاعد لها نفس ثمن التذكرة 60 درهما، كما أن جميع الصفوف لها نفس عدد المقاعد. إذا علمت أن مدخول العرض الواحد هو 25920 درهما. في أحد العروض كان المدخول هو 24420 درهما، حيث قام المشرف على القاعة بحساب عدد المقاعد الفارغة فوجد في أحد الصفوف مقعدين فارغين وفي صف آخر 5 مقاعد فارغة وصفين نصف كل واحد منهما فارغ. أوجد: أ- العدد الإجمالي للمقاعد في هذه القاعة؛ ب- عدد المقاعد الفارغة؛ ج- عدد المقاعد في كل صف؛ ث- عدد صفوف القاعة.', false, '[]'::jsonb, ARRAY[]::text[], 'أ- العدد الإجمالي للمقاعد: 25920 ÷ 60 = 432 مقعدا. ب- عدد المقاعد الفارغة: مدخول العرض المذكور 24420 درهما أي 24420 ÷ 60 = 407 مقاعد مشغولة، إذن الفارغة = 432 − 407 = 25 مقعدا. ج- عدد المقاعد في كل صف: الفارغة = 2 + 5 + نصف صف + نصف صف = 7 + عدد مقاعد الصف = 25، إذن عدد مقاعد الصف = 18. ث- عدد صفوف القاعة: 432 ÷ 18 = 24 صفا.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q11', 'exam_primary_2016_maths_nov', 11, 'ديداكتيك الرياضيات — تحليل أخطاء', 'الحلول التالية هي إحدى إجابات ثلاثة تلاميذ (أ) و(ب) و(ج) أثناء حل المسألة: التلميذ (أ): 25920 ÷ 60 = 432 (العدد الإجمالي للمقاعد)؛ 25920 − 24420 = 1500؛ 1500 ÷ 60 = 25 (عدد المقاعد الفارغة)؛ 1500 + 432 + 25 = 1957 (عدد الصفوف). التلميذ (ب): 25920 ÷ 60 = 432؛ 24420 ÷ 60 = 410؛ 432 ÷ 410 = 22؛ 25920 ÷ 432 = 60. التلميذ (ج): 25920 ÷ 60 = 432؛ 24420 ÷ 60 = 410؛ 23988 × 2 = 47976؛ 22988 + 5 = 45976. أعط(ي) تفسيرا محتملا للإجابات الخاطئة.', false, '[]'::jsonb, ARRAY[]::text[], 'بالنسبة لتفسير الإجابات الخاطئة المقدمة من طرف التلميذ (أ): ربط المتعلم القيم بعملية الطرح دون معرفة ماذا سيطرح؛ استعمال نتائج الإجابات السابقة كمعطيات للإجابة على الأسئلة الموالية دون أي وعي ببنيتها؛ أنجز جميع العمليات بشكل سليم؛ عدم التمكن من إنجاز عملية القسمة؛ عدم تمكن التلميذ من فهم وتذكر جميع المعطيات الواردة في المسألة. بالنسبة لتفسير الإجابات الخاطئة المقدمة من طرف التلميذ (ب): عدم فهم التعليمة؛ اختيار خاطئ للعمليات؛ إنجاز خاطئ للعمليات. بالنسبة لتفسير الإجابات الخاطئة المقدمة من طرف التلميذ (ج): عدم ملاءمة العمليات مع الأسئلة المطروحة؛ إنجاز العمليات بشكل صحيح تم بالنسبة للتعليمات الثلاث الأخيرة؛ لكن دون إدراك التلميذ إلى أي سؤال قد أجاب؛ يبرر ذلك بشكل واضح عدد الإجابة على التعليمة الرابعة؛ حيث أجاب التلميذ بشكل عشوائي. (نقطة لكل تلميذ.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q12', 'exam_primary_2016_maths_nov', 12, 'ديداكتيك الرياضيات — تحليل أخطاء', 'ما هي بنظرك الأسباب ومصادر هذه الإجابات الخاطئة؟', false, '[]'::jsonb, ARRAY[]::text[], 'إجمالا يمكن إرجاع الأخطاء المرتكبة من طرف التلاميذ (أ) و(ب) و(ج) إلى المصادر التالية: التأويل غير الصحيح لنص المسألة (0.5)؛ سوء بناء استراتيجية الحل: تبني استراتيجية خاطئة (0.5)، عدم القدرة على مواصلة بناء استراتيجية إلى نهايتها رغم صحتها (0.25)، عدم القدرة على تحديد المعطيات الأساسية مع الروابط التي تطلبها التعليمات من أجل بناء خطة للحل (0.25)؛ تقديم أجوبة غير ملائمة مع الأسئلة المطروحة (0.5)؛ الإنجاز غير الصحيح للعمليات (0.5)؛ الزخم المعرفي خلال حل المسائل (surcharge cognitive au cours de la résolution de problèmes) (0.5).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان الرياضيات — مادة التخصص (دورة نونبر 2016) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_maths_nov_q13', 'exam_primary_2016_maths_nov', 13, 'ديداكتيك الرياضيات — معالجة', 'اقترح(ي) سبلا للمعالجة بالنسبة لكل مصدر من هذه المصادر.', false, '[]'::jsonb, ARRAY[]::text[], 'تطوير لدى التلاميذ طرق قراءة نص المسألة؛ تدريب التلاميذ على إدراك المعنى العام للحل المكون لنص المسألة؛ تدريب التلاميذ على كيفية رصد المعطيات والمعلومات وكيفية الربط بينها؛ تدريب التلاميذ على تنظيم المعطيات والمعلومات وتقديم العلاقات بينها (مثلا بواسطة استعمال الجداول — شبكات...)؛ تدريب التلاميذ على مناقشة النتائج المتوصل إليها؛ تدريب التلاميذ على ممارسة الرقابة حول فهمهم المعرفي (قراءة نص المسألة — فهم المسألة — تحليل وتأويل المسألة — استعمال مختلف القواعد والخوارزميات — العمليات الحسابية...)؛ بالنسبة للتلاميذ الذين لا يستطيعون التركيز في آن واحد على جميع الجوانب المتعلقة بالمهمة المراد إنجازها، ينبغي حثهم على التركز على مهمات جزئية سهلة التدبير؛ تمكين التلاميذ من هيكلة معارفهم الجديدة وربطها مع شبكة المعارف المكتسبة من خلال بناء مخططات استكشافية عوض تخزينها في الذاكرة على شكل معارف خطية؛ تدريب التلاميذ على إعادة بناء الإجراءات الآلية بشكل جزئي أو كلي. ملحوظة الشبكة الرسمية: تُمنح للمترشح نقطتان عن أربعة مقترحات مختلفة للمعالجة.', 'open', 'official', NULL, true, NULL)
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
