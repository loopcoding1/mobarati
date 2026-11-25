-- ====================================================================
-- مباراتي — اللغة العربية (التخصص والديداكتيك)، دورة دجنبر 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/اللغة العربية - امتحان.md
--   (سجل الامتحانات رقم 26؛ الحل من المفتاح الرسمي في مساحة العمل)
--   ملف الامتحان: exams-ibtida2i/2018/اللغة العربية - امتحان.pdf
--   (11 صفحة، ممسوحة ضوئيا).
--   ملف التصحيح: exams-ibtida2i/2018/تصحيح اللغة العربية.pdf
--   (4 صفحات، ممسوحة ضوئيا) — هو المرجع الوحيد للأجوبة.
--
-- البحث: لم يُعثر على حل منشور كامل لهذا الامتحان بالذات (دورة دجنبر 2018)
--   بعد بحث في Google بالعربية والفرنسية؛ وُجدت فقط مواقع تجمع ملفات PDF
--   (منها المفتاح الرسمي نفسه) وفيديو يخص دورة يناير 2018 (امتحان مختلف).
--   لذلك source_type='official' وsource_url=NULL.
--
-- التحقق (مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * الغلاف (صفحة 1): المدة ساعة ونصف (90 دقيقة)، المعامل 2،
--     النقطة النهائية على 60، مادة التخصص 30 نقطة وديداكتيك التخصص 30 نقطة.
--   * الأسئلة Q1 إلى Q31 كلها مطابقة لما في المفتاح الرسمي.
--   * أسئلة المطابقة (Q3، Q8، Q10، Q12، Q13، Q15، Q21) من نوع 'matching'
--     حسب اتفاقية الملفات الشقيقة: options هي عناصر القائمة الثانية بأرقام
--     "1".."5" (أ=1، ب=2، ج=3، د=4، هـ=5)، وcorrect_answers مصفوفة مرتبة
--     حسب عناصر القائمة الأولى تعطي رقم العنصر المطابق لكل منها.
--   * الأسئلة المفتوحة (Q23–Q25 وQ26–Q31): options '[]' وcorrect_answers
--     فارغة، وعناصر الإجابة المنتظرة في حقل explanation.
--   * ترقيم الديداكتيك: الأسئلة 26–31 هي الديداكتيك 1–6 في ورقة الامتحان.
--   * لا أسئلة متخطاة: أُدرجت الأسئلة الـ31 كلها.
--   * التحفظات (س3، س4، س9، س11، س13، س14، س15، س16، س21، س22) موثقة
--     في verification_note لكل سؤال وفي ملف الحل.
--
-- تسمية المعرفات: exam_primary_2018_arabic_dec / exam_primary_2018_arabic_dec_q<n>
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_arabic_dec', 'specialty_primary', 2018, 'arabic', 'اللغة العربية — التخصص والديداكتيك', 'امتحان اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018)', 'دورة دجنبر 2018', 90, 31)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (31 سؤالاً: 15 QCM + 7 مطابقة + 9 مفتوحا)

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q1', 'exam_primary_2018_arabic_dec', 1, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح فيما يأتي: جملة «سيغلب مفهوم التواصل» الواقعة خبر (أنّ) في قول الكاتب: «تشير جميع الدلائل إلى أن التواصل عن بعد، عبر الوسيط الإلكتروني، سيغلب مفهوم التواصل الذي اعتدنا عليه رأسا على عقب»:', false, '[{"id": "A", "text": "اسم مفرد"}, {"id": "B", "text": "جملة اسمية"}, {"id": "C", "text": "جملة فعلية"}, {"id": "D", "text": "شبه جملة"}]'::jsonb, ARRAY['C']::text[], '«سيغلب» فعل مضارع، فالجملة «سيغلب مفهوم التواصل» جملة فعلية في محل رفع خبر (أنّ)؛ و(أنّ) من النواسخ الحرفية تنصب المبتدأ وترفع الخبر.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q2', 'exam_primary_2018_arabic_dec', 2, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة إملائيا مما يأتي:', false, '[{"id": "A", "text": "كتبتُ إحدى عشرة رسالة إلى ستة صحف."}, {"id": "B", "text": "كتبتُ إحدى عشرة رسالة إلى ست صحف."}, {"id": "C", "text": "كتبتُ إحدى عشر رسالة إلى ستة صحف."}, {"id": "D", "text": "كتبتُ إحدى عشر رسالة إلى ست صحف."}]'::jsonb, ARRAY['B']::text[], 'العدد المركب (11) يوافق المعدود تذكيرا وتأنيثا في جزأيه: «إحدى عشرة» مع «رسالة» المؤنثة؛ أما العدد (6) فيخالف المعدود: «ست» مع «صحف» (جمع صحيفة، مؤنث). في (أ) «ستة صحف» خطأ؛ وفي (ج) و(د) «إحدى عشر» خطأ في الجزء الأول.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q3', 'exam_primary_2018_arabic_dec', 3, 'اللغة العربية', 'صل(ي) بسهم بين الفعل ومصدره في ما يأتي:
1. حدَّ
2. حدَّبَ
3. تحدَّثَ
4. أحدَّ', false, '[{"id": "1", "text": "تحدُّث"}, {"id": "2", "text": "إحداث"}, {"id": "3", "text": "تجويد"}, {"id": "4", "text": "تحدُّب"}, {"id": "5", "text": "حدٌّ"}]'::jsonb, ARRAY['5','4','1','2']::text[], '«حدَّ» ثلاثي مجرد مصدره السماعي «حدٌّ»؛ «حدَّبَ» على وزن فعَّل مصدره القياسي «تحدُّب» (تفعُّل)؛ «تحدَّثَ» على وزن تفعَّل مصدره «تحدُّث» (تفعُّل)؛ «أحدَّ» على وزن أفعل مصدره «إحداث» (إفعال). ويبقى «تجويد» مصدر «جوَّدَ» بلا مقابل.', 'matching', 'official', NULL, true, 'مطابقة: 1←هـ (حدٌّ)، 2←د (تحدُّب)، 3←أ (تحدُّث)، 4←ب (إحداث). تحفظ: قراءة الفعل الثاني (حدَّبَ) مستنتجة من مطابقة المفتاح؛ والمصدر (ج) ضبابي في المسح (مثبَت «تجويد»).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q4', 'exam_primary_2018_arabic_dec', 4, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة إعرابيا مما يأتي:', false, '[{"id": "A", "text": "هل يمكن أن تُكْتَسَبَ الآلةُ المهاراتِ اللغويةِ؟"}, {"id": "B", "text": "هل يمكن أن تُكْتَسَبَ الآلةَ المهاراتُ اللغويةُ؟"}, {"id": "C", "text": "هل يمكن أن تُكْتَسَبُ الآلةُ المهاراتَ اللغويةَ؟"}, {"id": "D", "text": "هل يمكن أن تُكْتَسَبَ الآلةُ المهاراتِ اللغويةَ؟"}]'::jsonb, ARRAY['D']::text[], '«تُكْتَسَبَ» فعل مضارع مبني للمجهول منصوب بـ(أن)؛ «الآلةُ» نائب فاعل مرفوع؛ «المهاراتِ» مفعول به منصوب بالكسرة (جمع مؤنث سالم)؛ «اللغويةَ» نعت لـ«المهارات» منصوب بالفتحة.', 'qcm', 'official', NULL, true, 'الحركات الدقيقة على «اللغوية» في (أ) مقابل (د) عند حدّ دقة المسح؛ والجواب (د) حسب المفتاح الرسمي.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q5', 'exam_primary_2018_arabic_dec', 5, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة إعرابيا مما يأتي:', false, '[{"id": "A", "text": "إنّ للمحاورات المباشرة وظائفَ هامةً في عملية التواصل."}, {"id": "B", "text": "إنّ للمحاورات المباشرة وظائفُ هامةٌ في عملية التواصل."}, {"id": "C", "text": "إنّ للمحاورات المباشرة وظائفَ هامةٍ في عملية التواصل."}, {"id": "D", "text": "إنّ للمحاورات المباشرة وظائفُ هامةً في عملية التواصل."}]'::jsonb, ARRAY['B']::text[], 'خبر (إنّ) مؤخر مرفوع «وظائفُ»؛ و«هامةٌ» نعت مرفوع تابع له؛ و«للمحاورات» جار ومجرور في محل رفع خبر (إنّ) مقدم.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q6', 'exam_primary_2018_arabic_dec', 6, 'اللغة العربية', 'النص أعلاه (نص حول التواصل عبر الوسيط الإلكتروني وأسلوب «الكتابة المحادثة»):', false, '[{"id": "A", "text": "نص وصفي"}, {"id": "B", "text": "نص سردي"}, {"id": "C", "text": "نص تفسيري"}, {"id": "D", "text": "نص حجاجي"}]'::jsonb, ARRAY['C']::text[], 'النص يشرح ويفسّر ظاهرة التواصل عبر الوسيط الإلكتروني ويعرض خصائص أسلوب «الكتابة المحادثة» بتفصيل وتعليل، دون سرد أحداث (سردي) ولا وصف مشهد (وصفي) ولا محاججة لإثبات موقف (حجاجي).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q7', 'exam_primary_2018_arabic_dec', 7, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للفعل الصحيح المضاعف مما يأتي:', false, '[{"id": "A", "text": "يهتد"}, {"id": "B", "text": "يتعدّد"}, {"id": "C", "text": "يتعرض"}, {"id": "D", "text": "يتطلب"}]'::jsonb, ARRAY['B']::text[], '«يتعدّد» من «تعدَّدَ»، أصله (ع د د): عينه ولامه حرفان متماثلان (الدال مضاعفة)؛ أما «يهتد» فمن «اهتدى» (ناقص)، و«يتعرض» من «تعرَّضَ» و«يتطلب» من «تطلَّبَ» (سالمان).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q8', 'exam_primary_2018_arabic_dec', 8, 'اللغة العربية', 'صل(ي) بسهم بين نوع المفعول والجملة التي تتضمنه في ما يأتي:
1. المفعول فيه
2. المفعول المطلق
3. المفعول لأجله
4. المفعول به', false, '[{"id": "1", "text": "أستخدم الكتابة المحادثة من أجل تقريب المسافة بين المتحاطبين."}, {"id": "2", "text": "أستخدم الكتابة المحادثة كثيرا لتقريب المسافة في الصباح بين المتحاطبين."}, {"id": "3", "text": "أستخدم الكتابة المحادثة استخداما لتقريب المسافة بين المتحاطبين."}, {"id": "4", "text": "أستخدم الكتابة المحادثة صباحا ومساء لتقريب المسافة بين المتحاطبين."}, {"id": "5", "text": "يستخدم الشباب الكتابة المحادثة لتقريب المسافة بين المتحاطبين."}]'::jsonb, ARRAY['4','3','2','1']::text[], 'في (د) «صباحا ومساء» ظرفا زمان منصوبان (مفعول فيه)؛ وفي (ج) «استخداما» مصدر من لفظ الفعل يبين نوعه (مفعول مطلق)؛ وفي (ب) «لتقريب المسافة» يبين سبب الاستخدام (مفعول لأجله)؛ وفي (أ) «الكتابة» وقع عليها فعل الاستخدام (مفعول به). وتبقى (هـ) بلا مقابل.', 'matching', 'official', NULL, true, 'مطابقة: 1←د (صباحا ومساء)، 2←ج (استخداما)، 3←ب (لتقريب المسافة)، 4←أ (الكتابة). ملاحظة: الجملتان (أ) و(ب) تتضمن كل منهما أكثر من مفعول؛ والمطابقة تتبع العنصر المميِّز لكل جملة كما في المفتاح الرسمي.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q9', 'exam_primary_2018_arabic_dec', 9, 'اللغة العربية', 'كلمة (إزاحة) في الجملة السابقة تعرب مستثنى منه منصوب. ضع(ي) علامة (X) داخل الخانة المناسبة:
الجملة: «ليست الكتابة المحادثة إلا إزاحة للنقاب عن مناطق بقيت مجهولة إلى يومنا هذا.»', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الاستثناء مفرَّغ (ناقص منفي): الكلام منفي بـ(ليست) والمستثنى منه محذوف، فتعرب «إزاحة» خبر (ليس) منصوبا، لا مستثنى منه.', 'qcm', 'official', NULL, true, 'صياغة الجملة المقتبسة ضبابية في المسح («للنقاب»/«بقيت» قراءة مرجحة من السياق والمعنى).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q10', 'exam_primary_2018_arabic_dec', 10, 'اللغة العربية', 'صل(ي) بسهم بين الجملة ونوع المنادى الذي تضمنته في ما يأتي:
1. يا مستعملَ الحاسوب، تواصل مع الآلة.
2. أيّ مستعملاً حاسوبه، تواصل مع الآلة.
3. أيها رجلاً، تواصل مع الآلة.
4. أيا يوسفُ، تواصل مع الآلة.', false, '[{"id": "1", "text": "منادى شبيه بالمضاف"}, {"id": "2", "text": "منادى نكرة مقصودة"}, {"id": "3", "text": "منادى علم مفرد"}, {"id": "4", "text": "منادى مضاف"}, {"id": "5", "text": "منادى نكرة غير مقصودة"}]'::jsonb, ARRAY['4','1','5','3']::text[], '«مستعملَ الحاسوب» منادى مضاف منصوب؛ «مستعملاً حاسوبه» شبيه بالمضاف (منوَّن ومتصل به معموله «حاسوبه»)؛ «رجلاً» بعد (أيها) نكرة غير مقصودة منصوبة؛ «يوسفُ» علم مفرد مبني على الضم. وتبقى «نكرة مقصودة» بلا مقابل.', 'matching', 'official', NULL, true, 'مطابقة: 1←د (مضاف)، 2←أ (شبيه بالمضاف)، 3←هـ (نكرة غير مقصودة)، 4←ج (علم مفرد).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q11', 'exam_primary_2018_arabic_dec', 11, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للكلمة الصحيحة إملائيا في ما يأتي:', false, '[{"id": "A", "text": "الإيمالاء"}, {"id": "B", "text": "اللامهالات"}, {"id": "C", "text": "الامالات"}, {"id": "D", "text": "الاملاءات"}]'::jsonb, ARRAY['D']::text[], 'جمع «إملاء» (اسم ممدود) بإضافة (ات) يبقي الهمزة على الألف: «الإملاءات»؛ والهمزة المتوسطة المفتوحة بعد ألف ساكنة تُكتب على الألف.', 'qcm', 'official', NULL, true, 'صياغة الخيارات (أ) و(ب) و(ج) كما قُرئت من المسح الضبابي؛ و(د) هي الصيغة السليمة الوحيدة والجواب حسب المفتاح الرسمي.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q12', 'exam_primary_2018_arabic_dec', 12, 'اللغة العربية', 'صل(ي) بسهم بين الاسم ونوعه في ما يأتي:
1. اسم منقوص
2. اسم مقصور
3. اسم ممدود', false, '[{"id": "1", "text": "إملاء"}, {"id": "2", "text": "المحيا"}, {"id": "3", "text": "الزاني"}, {"id": "4", "text": "موسى"}]'::jsonb, ARRAY['3','4','1']::text[], '«الزاني» اسم منقوص (ينتهي بياء لازمة مكسور ما قبلها)؛ «موسى» اسم مقصور (ينتهي بألف لازمة)؛ «إملاء» اسم ممدود (ينتهي بهمزة بعد ألف زائدة). وتبقى «المحيا» بلا مقابل في المفتاح.', 'matching', 'official', NULL, true, 'مطابقة: 1←ج (الزاني)، 2←د (موسى)، 3←أ (إملاء). ملاحظة: «المحيا» مقصورة في صورتها أيضا، لكن المفتاح أثبت «موسى» للمقصور.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q13', 'exam_primary_2018_arabic_dec', 13, 'اللغة العربية', 'صل(ي) بسهم بين الفعل ونوعه في ما يأتي:
1. لفيف مقرون
2. أجوف
3. لفيف مفروق
4. مثال', false, '[{"id": "1", "text": "لم يصلْ"}, {"id": "2", "text": "لم يشْ"}, {"id": "3", "text": "لم يجادلْ"}, {"id": "4", "text": "لم يبلغْ"}, {"id": "5", "text": "لم يخوِ"}]'::jsonb, ARRAY['5','3','2','1']::text[], '«لم يخوِ» من «خوى» (خ و ي): حرفا علة مجتمعان في العين واللام فهو لفيف مقرون؛ «لم يجادلْ» من «جادل» وسطه ألف (علة) فهو أجوف في المقرر المدرسي؛ «لم يشْ» من «وشى» (و ش ي): حرفا علة يفصل بينهما حرف صحيح فهو لفيف مفروق؛ «لم يصلْ» من «وصل» أوله واو فهو مثال؛ و«لم يبلغْ» سالم بلا مقابل.', 'matching', 'official', NULL, true, 'مطابقة: 1←هـ (لم يخوِ)، 2←ج (لم يجادلْ)، 3←ب (لم يشْ)، 4←أ (لم يصلْ). تحفظ: الخط الثاني في المفتاح ضبابي (ج مقابل د) لكن النحو يحسمه: «يجادل» أجوف و«يبلغ» سالم.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q14', 'exam_primary_2018_arabic_dec', 14, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة التي تتضمن بدلا في ما يأتي:', false, '[{"id": "A", "text": "تلك الرسائل الإلكترونية لغتها غير سليمة."}, {"id": "B", "text": "الرسائل الإلكترونية كلها لغتها غير سليمة."}, {"id": "C", "text": "الرسائل الإلكترونية لغتها غير سليمة."}, {"id": "D", "text": "كل الرسائل الإلكترونية لغتها غير سليمة."}]'::jsonb, ARRAY['C']::text[], '«لغتها» في (ج) بدل اشتمال من «الرسائل الإلكترونية» (جزء معنوي منها، وفيه ضمير عائد على المبدل منه)؛ وفي (ب) «كلها» توكيد معنوي لا بدل؛ وفي (د) «كل» مبتدأ.', 'qcm', 'official', NULL, true, 'الخيار (أ) يتضمن أيضا بدلا مطابقا («الرسائل» بدل من اسم الإشارة «تلك»)، لكن المفتاح الرسمي يثبت (ج) — بدل الاشتمال — جوابا؛ والجواب المثبت هو (ج) حسب المفتاح.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q15', 'exam_primary_2018_arabic_dec', 15, 'اللغة العربية', 'صل(ي) بسهم بين الفعل واسم الفاعل في ما يأتي:
1. عَلِمَ
2. أَعْلَمَ
3. تَعَلَّمَ
4. أَلَّمَ', false, '[{"id": "1", "text": "مُتَعَلِّم"}, {"id": "2", "text": "مُعْلِم"}, {"id": "3", "text": "عَالِم"}, {"id": "4", "text": "عَلِيم"}, {"id": "5", "text": "مُعَلَّم"}]'::jsonb, ARRAY['3','2','1','4']::text[], '«عَلِمَ» → «عَالِم» (فاعل من الثلاثي)؛ «أَعْلَمَ» → «مُعْلِم» (مُفْعِل من أفعل)؛ «تَعَلَّمَ» → «مُتَعَلِّم» (مُتَفَعِّل من تفعَّل)؛ و«مُعَلَّم» بلا مقابل.', 'matching', 'official', NULL, true, 'مطابقة حسب المفتاح: 1←ج (عَالِم)، 2←ب (مُعْلِم)، 3←أ (مُتَعَلِّم)، 4←د (عَلِيم). تحفظ مهم: المطابقة الرابعة (أَلَّمَ ↔ عَلِيم) ليست صحيحة نحويا كاسم فاعل: اسم الفاعل من «أَلَّمَ» هو «مُؤْلِم»، و«عَلِيم» صفة مشبهة من «عَلِمَ»؛ والخط الرابع في المفتاح غامض في المسح.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q16', 'exam_primary_2018_arabic_dec', 16, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للفعل الصحيح إملائيا مما يأتي:', false, '[{"id": "A", "text": "غَلَا"}, {"id": "B", "text": "غَلَى"}, {"id": "C", "text": "غَلَّا"}, {"id": "D", "text": "غَلَّى"}]'::jsonb, ARRAY['A']::text[], 'الفعل «غلا» مضارعه «يغلو»، فأصل ألفه المتطرفة واو فتُكتب ألفا ممدودة (ا)؛ و«غلى» ألفها مقصورة لأن مضارعها «يغلي» (أصلها ياء)؛ والتشديد في (ج) و(د) لا أصل له في هذا الفعل.', 'qcm', 'official', NULL, true, 'التشديد والحركات الدقيقة في الخيارات غير حاسمة تماما في المسح؛ والجواب (أ) حسب المفتاح الرسمي، وكتابة الخيارات المثبتة تتبع القاعدة الإملائية.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q17', 'exam_primary_2018_arabic_dec', 17, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح: الفعل «يتواصلون» في جملة «الشباب يتواصلون عبر الوسيط الإلكتروني» مرفوع:', false, '[{"id": "A", "text": "بالواو"}, {"id": "B", "text": "بالواو والنون"}, {"id": "C", "text": "بثبوت النون"}, {"id": "D", "text": "بالضمة"}]'::jsonb, ARRAY['C']::text[], '«يتواصلون» من الأفعال الخمسة، تُرفع بثبوت النون وتُنصب وتُجزم بحذفها.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q18', 'exam_primary_2018_arabic_dec', 18, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة إعرابيا مما يأتي:', false, '[{"id": "A", "text": "كانت الآلة والطفل متواصلان."}, {"id": "B", "text": "كانت الآلة والطفل متواصلين."}, {"id": "C", "text": "كانت الآلة والطفل متواصلتان."}, {"id": "D", "text": "كانت الآلة والطفل متواصلتين."}]'::jsonb, ARRAY['B']::text[], 'خبر (كان) منصوب؛ و«الآلة والطفل» مثنى مذكر، فيُنصب بالياء: «متواصلين».', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q19', 'exam_primary_2018_arabic_dec', 19, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح عن السؤال: «أليست الآلة وسيلة لتقريب المسافات؟»:', false, '[{"id": "A", "text": "بلى، الآلة وسيلة لتقريب المسافات."}, {"id": "B", "text": "بلى، ليست الآلة وسيلة لتقريب المسافات."}, {"id": "C", "text": "نعم، الآلة وسيلة لتقريب المسافات."}, {"id": "D", "text": "أجل، الآلة وسيلة لتقريب المسافات."}]'::jsonb, ARRAY['A']::text[], 'الاستفهام المنفي يُجاب عنه إثباتا بـ«بلى» ونفيا بـ«كلا»؛ و«نعم» بعد النفي تؤكد النفي لا الإثبات، و«أجل» لا تصلح هنا.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q20', 'exam_primary_2018_arabic_dec', 20, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للاسم المنسوب إلى «بديهة» مما يأتي:', false, '[{"id": "A", "text": "بَدِيهِيّ"}, {"id": "B", "text": "بَدَاهِيّ"}, {"id": "C", "text": "بَدَهِيّ"}, {"id": "D", "text": "بَدْهِيّ"}]'::jsonb, ARRAY['C']::text[], 'النسبة إلى الاسم على وزن «فَعِيلَة» (بديهة): تُحذف التاء والياء، فيصير «بَدَهِيّ».', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q21', 'exam_primary_2018_arabic_dec', 21, 'اللغة العربية', 'صل(ي) بسهم بين نوع الجملة والجملة التي تتضمنه في ما يأتي:
1. جملة حال
2. جملة صفة
3. جملة خبر
4. شبه جملة خبر', false, '[{"id": "1", "text": "إن الشباب (يمدّون فكرة إصلاح وسائل الاتصال)"}, {"id": "2", "text": "إن الشباب (يقترحون فكرة إصلاح وسائل الاتصال)"}, {"id": "3", "text": "جاء شباب (يحملون فكرة إصلاح وسائل الاتصال)"}, {"id": "4", "text": "إن (للشباب) فكرة إصلاح وسائل الاتصال"}, {"id": "5", "text": "جاء (يحملون فكرة إصلاح وسائل الاتصال)"}]'::jsonb, ARRAY['5','3','2','4']::text[], 'في (هـ) الجملة بعد الفعل وصاحب الحال المعرفة حال؛ وفي (ج) الجملة بعد النكرة «شباب» صفة؛ وفي (ب) الجملة خبر (إنّ)؛ وفي (د) شبه الجملة «للشباب» خبر (إنّ) مقدم. وتبقى (أ) بلا مقابل في المفتاح.', 'matching', 'official', NULL, true, 'مطابقة: 1←هـ (جاء يحملون...)، 2←ج (جاء شباب يحملون...)، 3←ب (إن الشباب يقترحون...)، 4←د (إن للشباب فكرة...). تحفظ: صياغة الفعل في (أ) غير واضحة في المسح؛ والخيار (أ) أيضا خبر إنّ في صورته لكن المفتاح يتركه بلا مقابل.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q22', 'exam_primary_2018_arabic_dec', 22, 'اللغة العربية', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة التي تتضمن توكيدا معنويا مما يأتي:', false, '[{"id": "A", "text": "نصف الرسائل الإلكترونية لغتها سليمة."}, {"id": "B", "text": "الرسائل الإلكترونية كلها لغتها سليمة."}, {"id": "C", "text": "الرسائل الإلكترونية نفسها لغتها سليمة."}, {"id": "D", "text": "كل الرسائل الإلكترونية لغتها سليمة."}]'::jsonb, ARRAY['B']::text[], '«كلها» من ألفاظ التوكيد المعنوي، تابعة للمؤكَّد «الرسائل»؛ وفي (أ) «نصف» مبتدأ، وفي (د) «كل» مبتدأ.', 'qcm', 'official', NULL, true, 'الخيار (ج) يتضمن أيضا توكيدا معنويا («نفسها»، ونفس من ألفاظ التوكيد)، فالسؤال كما هو مطبوع يقبل جوابين؛ والمفتاح الرسمي يثبت (ب).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q23', 'exam_primary_2018_arabic_dec', 23, 'اللغة العربية', 'استخرج(ي) من النص تمييزا ملحوظا.', false, '[]'::jsonb, ARRAY[]::text[], '«نطاقا» في قوله «...تمهّد لتواصل أوسع نطاقا» — تمييز نسبة (ملحوظ) منصوب يزيل الإبهام عن نسبة الاتساع إلى التواصل.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q24', 'exam_primary_2018_arabic_dec', 24, 'اللغة العربية', 'بيّن(ي) المقصود بـ«الكتابة المحادثة» انطلاقا من النص.', false, '[]'::jsonb, ARRAY[]::text[], 'تُقبل كل إجابة تثبت أن الكتابة المحادثة هي: التي تتم عبر الإنترنت، وتكون خالية من الصوت والصورة والانفعالات، وترتبط بالجانب الإملائي دون الجوانب النحوية أو الصرفية.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q25', 'exam_primary_2018_arabic_dec', 25, 'اللغة العربية', '«يرى الكاتب أن الإنسان كما سيتواصل مع أخيه الإنسان عبر الوسيط الإلكتروني، سيتحاور مباشرة مع الآلة، وهو الحوار الذي يؤكد بعضهم أنه سيقول – عما قريب – التواصل بين البشر.» حلل وناقش مبدياً رأيك (في عشرة أسطر).', false, '[]'::jsonb, ARRAY[]::text[], 'شبكة التصحيح (6ن) حسب المفتاح الرسمي: الملاءمة 1ن (تحليل ومناقشة وإبداء رأي حول التواصل إنسان–إنسان والحوار المباشر إنسان–آلة؛ جزئي 0.5ن؛ غير ذلك 0)؛ الانسجام 2ن (ترابط عناصر المنتج، انسجام داخل الفقرات وبينها، أدوات الربط، انسجام الأفكار وغناها وأصالتها)؛ سلامة اللغة 2ن (خطآن فأقل=2ن، 3–4 أخطاء=1ن، 5 فأكثر=0ن، بما فيها علامات الترقيم)؛ الحجم وجودة العرض 1ن (8–12 سطرا مع وضوح الخط=1ن؛ 5–7 أو 13–15 سطرا أو خط غير مقروء=0.5ن؛ أقل من 5 أو أكثر من 15 سطرا وعرض رديء=0ن).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q26 (ديداكتيك 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q26', 'exam_primary_2018_arabic_dec', 26, 'ديداكتيك اللغة العربية', 'اقترح أستاذ(ة) الخطوات التالية لتدريس نص قرائي. رتّب(ي) هذه الخطوات ترتيبا منطقيا، مع استبعاد الخطوة التي تتعارض مع التدريس المتمركز حول المتعلم(ة):
1. كتب عنوان الدرس على السبورة.
2. مهد لموضوع الدرس.
3. قرأ النص قراءة جهرية.
4. شرح بعض المفردات.
5. دعا المتعلمين والمتعلمات إلى قراءة النص جهرا بالتناوب.
6. سأل المتعلمين والمتعلمات عن مضمون النص.
7. ناقش مع المتعلمين والمتعلمات مضمون النص.
8. دعا المتعلمين والمتعلمات إلى صياغة فرضيات/توقعات القراءة انطلاقا من عنوان النص.
9. دعا المتعلمين والمتعلمات إلى تمحيص فرضيات/توقعات القراءة.
10. ساعد المتعلمين والمتعلمات على استخراج فكرة النص العامة.
11. أملى على المتعلمين والمتعلمات فكرة النص العامة ليكتبوها على دفاترهم.', false, '[]'::jsonb, ARRAY[]::text[], 'الترتيب الصحيح حسب المفتاح الرسمي: 1. مهد لموضوع الدرس. 2. كتب عنوان الدرس على السبورة. 3. دعا المتعلمين والمتعلمات إلى صياغة فرضيات/توقعات القراءة انطلاقا من عنوان النص. 4. قرأ الأستاذ النص. 5. دعا المتعلمين والمتعلمات إلى قراءة النص جهرا بالتناوب. 6. شرح بعض المفردات. 7. سأل المتعلمين والمتعلمات عن مضمون النص. 8. ساعد المتعلمين والمتعلمات على استخراج فكرة النص العامة. 9. ناقش مضمون النص. 10. دعا المتعلمين والمتعلمات إلى تمحيص فرضيات/توقعات القراءة. وتُستبعد الخطوة 11 (إملاء فكرة النص العامة) لأنها تتناقض ومقاربات التدريس المتمركز حول المتعلم(ة).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q27 (ديداكتيك 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q27', 'exam_primary_2018_arabic_dec', 27, 'ديداكتيك اللغة العربية', 'أنتج(ي) نصا قرائيا (خمسة أسطر فأكثر) للمستوى الثالث ابتدائي في مجال «عالم الابتكار والإبداع» يصلح للاستعمال في حصة القراءة.', false, '[]'::jsonb, ARRAY[]::text[], 'لا إجابة وحيدة؛ يُقبل أي نص مستوف للمعايير حسب المفتاح الرسمي: ملاءمة مواصفات المتعلمات والمتعلمين؛ ارتباطه بالمجال «عالم الابتكار والإبداع»؛ سلامة اللغة؛ خلوه من الأخطاء؛ جمالية النص؛ ملاءمته للمستوى الدراسي المعني (المستوى الثالث الابتدائي).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q28 (ديداكتيك 3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q28', 'exam_primary_2018_arabic_dec', 28, 'ديداكتيك اللغة العربية', 'صغ(ي) هدفين تعليميين لحصة القراءة انطلاقا من النص الذي أنتجته في السؤال 27.', false, '[]'::jsonb, ARRAY[]::text[], 'معايير التصحيح حسب المفتاح الرسمي: أن يكون الهدفان دقيقين وواضحين، مرتبطين بمجال «عالم الابتكار والإبداع»، ملائمين لمستوى المتعلمات والمتعلمين، وقابلين للقياس والتحقق.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q29 (ديداكتيك 4)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q29', 'exam_primary_2018_arabic_dec', 29, 'ديداكتيك اللغة العربية', 'اقترح(ي) وسيلتين تعليميتين غير الكتاب المدرسي يمكن توظيفهما في حصة القراءة، وبيّن(ي) كيفية استثمار كل منهما.', false, '[]'::jsonb, ARRAY[]::text[], 'تُقبل أي وسيلة مناسبة مع بيان كيفية استثمارها في الحصة، حسب المفتاح الرسمي.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q30 (ديداكتيك 5)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q30', 'exam_primary_2018_arabic_dec', 30, 'ديداكتيك اللغة العربية', 'استخرج(ي) من بين الخطوات التي اقترحها الأستاذ خطوة تتعارض مع التدريس المتمركز حول المتعلم(ة) في تدريس القراءة.', false, '[]'::jsonb, ARRAY[]::text[], 'إملاء فكرة النص العامة على المتعلمين والمتعلمات ليكتبوها على دفاترهم. التبرير: إملاء الفكرة العامة يجعل المتعلم(ة) متلقيا سلبيا ويناقض مقاربات التدريس المتمركز حول المتعلم(ة) التي تقتضي أن يستخرج المتعلمون الفكرة بأنفسهم بمساعدة الأستاذ.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة دجنبر 2018) — Q31 (ديداكتيك 6)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_dec_q31', 'exam_primary_2018_arabic_dec', 31, 'ديداكتيك اللغة العربية', 'اقترح(ي) أنشطة تساعد المتعلمين والمتعلمات على تجاوز صعوبة استخراج فكرة النص العامة.', false, '[]'::jsonb, ARRAY[]::text[], 'الأنشطة حسب المفتاح الرسمي: تحديد كلمات مفتاحية في النص ومناقشتها؛ تحديد جمل مفتاحية في النص ومناقشتها؛ تحديد المشترك بين جميع جمل النص وفقراته (أنشطة واضحة تحدد دور الأستاذ ودور المتعلم(ة))؛ طرح أسئلة متدرجة تساعد على فهم النص واستيعابه على أن يكون آخرها هو الذي تكون الإجابة عنه هو فكرة النص العامة.', 'open', 'official', NULL, true, NULL)
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
