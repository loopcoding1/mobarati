-- ====================================================================
-- مباراتي — امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016)
-- ====================================================================
-- المصدر: ملف الحل solved/2016/اللغة العربية - 2016.md
--   (سجل الامتحانات رقم 3؛ الحل: بحث Google أولا (تعليمات المستخدم 2026-11-25) — وُجد الحل كاملا منشورا على mesconcours.ma، فلم يستعمل AI Studio لهذا الامتحان. الأجوبة تتبع عناصر الإجابة الرسمية (كما يصرح الموقع)، ومطابقة لملف التصحيح الرسمي الموجود في مساحة العمل.)
--   ملف الامتحان: exams-ibtida2i/2016/اللغة العربية - امتحان.pdf (4 صفحات).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q24 مطابق لورقة الامتحان.
--   * الأجوبة مأخوذة من عناصر الإجابة الرسمية (التصحيح الرسمي المقترن بسنة 2016).
--   * كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--     والجواب الكامل منقول في explanation.
--   * الترقيم في هذا الملف هو ترقيم mesconcours المتسلسل 1–24 (أسئلة المادة 1–19، أسئلة الديداكتيك 20–24)؛ التعيين مع ترقيم الورقة مذكور عند كل سؤال. الورقة نفسها ترقم المادة 1–10 (بعضها بفروع أ/ب: ورقة 10أ/10ب ← عام 10–11؛ ورقة 11أ/11ب ← عام 12–13) والديداكتيك 1–5.
--   * النص الأول مقتطف من «البئر الأولى» لجبرا إبراهيم جبرا، دار الآداب 2009، ص 11–12 — نص محمي بحقوق النشر، مذكور هنا بالإحالة فقط ولا يعاد نشره كاملا. النص الثاني نص وظيفي حول التسامح الفكري (صفحتان من كتاب التلميذ «في رحاب اللغة العربية»، السنة الثالثة ابتدائي). نصوص الأسئلة مذكورة كاملة.
--   * الأسئلة 19 و20 و21 و22 و23 و24 (عام) إنتاجات ديداكتيكية/كتابية: الجواب هو معايير التقويم الرسمية وعناصر الإجابة المنتظرة، لا نص جاهز.
--   * لا تعارض بين mesconcours وملف التصحيح الرسمي في مساحة العمل: الأجوبة متطابقة في كل الأسئلة الـ24.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  و <exam_id>_q<n> للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2016_arabic_nov', 'specialty_primary', 2016, 'arabic', 'اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016)', 'دورة نونبر 2016', 240, 24)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (24 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q1', 'exam_primary_2016_arabic_nov', 1, 'اللغة العربية — فهم النص', 'النص: مقتطف من كتاب «البئر الأولى» لجبرا إبراهيم جبرا (دار الآداب 2009، ص 11–12). حدد(ي) طبيعة هذا النص مع التعليل.', false, '[]'::jsonb, ARRAY[]::text[], 'النص من السيرة الذاتية. التعليل: الكاتب يروي سيرة حياته بنفسه؛ النص مأخوذ من كتاب «البئر الأولى» لجبرا إبراهيم جبرا (دار الآداب 2009)؛ يسرد الكاتب ذكرياته في طفولته وكيف نما وتطور إلى أن أصبح رجلا.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q2', 'exam_primary_2016_arabic_nov', 2, 'اللغة العربية — فهم النص', 'ما هي المرحلة التي تتحدث عنها الأجزاء الكبرى من النص؟ وما سبب تركيز الكاتب عليها؟', false, '[]'::jsonb, ARRAY[]::text[], 'تتحدث الأجزاء الكبرى من النص عن مرحلة المراهقة (الطفولة المبكرة والمتوسطة والمتأخرة). الكاتب يركز على هذه المرحلة لأنه يريد أن يكتب عن نفسه في مرحلة حياته المبكرة التي كانت الأكثر أهمية بالنسبة إليه.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q3', 'exam_primary_2016_arabic_nov', 3, 'اللغة العربية — فهم النص', 'هل تختلف السيرة الذاتية عن المذكرات؟ علل(ي) إجابتك.', false, '[]'::jsonb, ARRAY[]::text[], 'نعم، فالسيرة الذاتية تختلف عن المذكرات: السيرة الذاتية تروي حياة الكاتب كلها أو مرحلة منها دون التقييد بالترتيب الزمني أو بالتواريخ؛ أما المذكرات فهي تسجيل يومي مؤرخ لأحداث الحياة. لذلك يكتب المذكرات الإنسان العادي والشهير، بينما يكتب السيرة الذاتية عادة المشاهير.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q4', 'exam_primary_2016_arabic_nov', 4, 'اللغة العربية — فهم النص', 'تحدث الكاتب في النص عن «المعنى» وعن «المغزى». ما الفرق بينهما؟', false, '[]'::jsonb, ARRAY[]::text[], 'المعنى: هو الدلالة المباشرة (الظاهرة) للنص، أي ما يقوله النص؛ فهمه ضروري لاستيعاب مضمون النص. المغزى: هو الدرس أو الخلاصة أو الفكرة العامة المستنتجة من النص؛ فهمه يدل على قراءة أعمق.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q5', 'exam_primary_2016_arabic_nov', 5, 'اللغة العربية — فهم النص', 'ما الفرق بين «التعليل» و«التعليق»؟', false, '[]'::jsonb, ARRAY[]::text[], 'التعليل: ذكر الأسباب والبراهين والدلائل التي تستند إليها الفكرة أو الموقف (الإجابة عن «لماذا؟»). التعليق: إبداء الرأي والموقف الشخصي من موضوع ما (الإجابة عن «ما رأيك؟»).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q6', 'exam_primary_2016_arabic_nov', 6, 'اللغة العربية — فهم النص', 'ما هي أهم مرحلة في حياة الإنسان في نظر الكاتب؟ علل(ي) إجابتك.', false, '[]'::jsonb, ARRAY[]::text[], 'أهم مرحلة في حياة الإنسان في رأي الكاتب هي مرحلة الطفولة. التعليل: لأنها أقرب إلى أصل الوجود، وبها تتحدد معالم شخصية الإنسان ونشأته. وقد استشهد الكاتب بقول الشاعر الإنجليزي وردزورث «إن الطفل هو والد الرجل» (0,25 ن للاستشهاد).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q7', 'exam_primary_2016_arabic_nov', 7, 'اللغة العربية — فهم النص', 'ما الصعوبة التي يجدها الكاتب في الحديث عن الطفولة؟', false, '[]'::jsonb, ARRAY[]::text[], 'يجد الكاتب صعوبة في الحديث عن الطفولة لقلة ما يمكن أن يقال عنها؛ فالطفل لا يحمل ذكريات واضحة عن مرحلته المبكرة، كما أن الطفولة مرحلة قصيرة من حياة الإنسان قياسا ببقية مراحله.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q8', 'exam_primary_2016_arabic_nov', 8, 'اللغة العربية — فهم النص', 'لماذا يسرع الكاتب قلمه إلى مرحلة المراهقة؟', false, '[]'::jsonb, ARRAY[]::text[], 'يسرع الكاتب قلمه إلى مرحلة المراهقة لأنها مرحلة غنية بالأحداث والتجارب، وفيها تتفتح شخصية الإنسان وتظهر ملامحها، ولأن ذكرياته عنها أوضح وأقوى من ذكرياته عن الطفولة.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q9', 'exam_primary_2016_arabic_nov', 9, 'اللغة العربية — النحو والصرف', 'اضبط(ي) بالشكل التام الكلمات التي تحتها خط في النص، ثم أعربها: «مُسْتَكْمَلَةٍ» و«وَصْلُ» و«حَقَّهُ» و«جُزْئِيَّاتِهِ».', false, '[]'::jsonb, ARRAY[]::text[], 'مُسْتَكْمَلَةٍ: مضاف إليه مجرور وعلامة جره الكسرة الظاهرة على آخره. وَصْلُ: فاعل مرفوع وعلامة رفعه الضمة الظاهرة على آخره. حَقَّهُ: مفعول به منصوب وعلامة نصبه الفتحة الظاهرة على آخره، وهو مضاف، والهاء ضمير متصل مبني في محل جر مضاف إليه. جُزْئِيَّاتِهِ: مفعول به منصوب وعلامة نصبه الكسرة النائبة عن الفتحة لأنه جمع مؤنث سالم، وهو مضاف، والهاء ضمير متصل مبني في محل جر مضاف إليه. (0,5 ن لكل كلمة، مع قبول إعراب الكلمة في سياقها الصحيح.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q10', 'exam_primary_2016_arabic_nov', 10, 'اللغة العربية — النحو والصرف', 'اعرب(ي) ما يأتي: أ. «يميلون» في قوله تعالى: «إن الذين يكتمون ما أنزلنا من البينات والهدى من بعد ما بيناه للناس في الكتاب أولئك يلعنهم الله ويلعنهم اللاعنون» (البقرة 159).', false, '[]'::jsonb, ARRAY[]::text[], '«يميلون» خبر «إنّ» مرفوع وعلامة رفعه ثبوت النون لأنه من الأفعال الخمسة، وواو الجماعة ضمير متصل مبني في محل رفع فاعل.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q11', 'exam_primary_2016_arabic_nov', 11, 'اللغة العربية — النحو والصرف', 'اعرب(ي) ما يأتي: ب. «أحب أن أعود إلى المدرسة» (أن أعود).', false, '[]'::jsonb, ARRAY[]::text[], '«أن أعود» مصدر مؤول في محل نصب مفعول به (تقديره: عودتي).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q12', 'exam_primary_2016_arabic_nov', 12, 'اللغة العربية — النحو والصرف', 'حدد(ي) موقع الجمل الآتية من الإعراب: أ. «يكتبون سيرتهم الذاتية» في جملة «يكتب الكاتب سيرته الذاتية» (بعد المعرفة) — بين موقع الجملة الفعلية من الإعراب مع التعليل.', false, '[]'::jsonb, ARRAY[]::text[], '«يكتبون سيرتهم الذاتية»: جملة فعلية في محل نصب حال (بعد المعرفة: الكاتب معرفة).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q13', 'exam_primary_2016_arabic_nov', 13, 'اللغة العربية — النحو والصرف', 'حدد(ي) موقع الجمل الآتية من الإعراب: ب. «يكتبون سيرتهم الذاتية» في جملة «يكتب كاتب سيرته الذاتية» (بعد النكرة) — بين موقع الجملة الفعلية من الإعراب مع التعليل.', false, '[]'::jsonb, ARRAY[]::text[], '«يكتبون سيرتهم الذاتية»: جملة فعلية في محل رفع نعت (بعد النكرة: كاتب نكرة).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q14', 'exam_primary_2016_arabic_nov', 14, 'اللغة العربية — النحو والصرف', 'ما الفرق بين «مِنْظَار» و«مَنْظَر»؟', false, '[]'::jsonb, ARRAY[]::text[], 'مِنْظَار (بكسر الميم): اسم آلة (آلة النظر). مَنْظَر (بفتح الميم): اسم مكان (موضع النظر).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q15', 'exam_primary_2016_arabic_nov', 15, 'اللغة العربية — النحو والصرف', 'أعط(ي) جملة تتضمن «مِنْ» الزائدة.', false, '[]'::jsonb, ARRAY[]::text[], 'مثال مقبول من نوع: «هَذِهِ قِصَّةٌ لَيْسَ لَهَا مِنْ مَغْزًى». (أي جملة يشتمل فيها «مِنْ» الزائدة على اسم مجرور نكرة بعد نفي، فتفيد توكيد النفي وتستقيم فيها القاعدة.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q16', 'exam_primary_2016_arabic_nov', 16, 'اللغة العربية — النحو والصرف', 'أعط(ي) جملة تتضمن اسما منقوصا مرفوعا منونا.', false, '[]'::jsonb, ARRAY[]::text[], 'مثال مقبول من نوع: «استقبل قاضٍ محاميًا». (أي جملة يظهر فيها اسم منقوص مرفوع منون، تحذف ياؤه وينون بتنوين العوض.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q17', 'exam_primary_2016_arabic_nov', 17, 'اللغة العربية — النحو والصرف', 'أعط(ي) جملة تتضمن منادى نكرة مقصودة.', false, '[]'::jsonb, ARRAY[]::text[], 'مثال مقبول من نوع: «يَا كَاتِبُ، اهْتَمَّ بِمَرْحَلَةِ الطُّفُولَةِ». (أي جملة تتضمن منادى نكرة مقصودة مبنيا على الضم.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q18', 'exam_primary_2016_arabic_nov', 18, 'اللغة العربية — النحو والصرف', 'صحح(ي) الأخطاء الواردة في الجملة الآتية: «إقترح الاستاذ على التلاميذ أن يجيبو عن الاسئلة في خمسة دقائق». (الأخطاء: إقترح، الاستاذ، يجيبو، خمسة دقائق.)', false, '[]'::jsonb, ARRAY[]::text[], 'التصحيح: اقترح (اقترح)؛ الأستاذ (الهمزة موصولة في بداية الاسم العلم بعد «اقترح» — الواو في «واقترح» زائدة في الكلمة الأصلية)؛ ليجيبوا (لام التعليل ناصبة فالفعل منصوب بحذف النون)؛ خمس دقائق (العدد 5 يخالف المعدود: دقائق جمع مؤنث، فيذكر العدد: خمس). (0,25 ن لكل تصحيح.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q19', 'exam_primary_2016_arabic_nov', 19, 'اللغة العربية — إنتاج كتابي', 'اكتب(ي) سيرتك الذاتية لمرحلة من حياتك، في حدود 15 سطرا، مع مراعاة معايير التقييم المنصوص عليها في عناصر الإجابة.', false, '[]'::jsonb, ARRAY[]::text[], 'معايير التقويم الرسمية (5 نقط): ملاءمة النص للموضوع (1 ن): كتابة سيرة ذاتية لمرحلة من حياة الكاتب؛ انسجام النص (2 ن): ترابط الفقرات وتسلسل الأحداث؛ سلامة اللغة (2 ن): احترام قواعد النحو والصرف والإملاء وعلامات الترقيم؛ الحجم والعرض (1 ن): طول مناسب وعرض منظم. (الموضوع: اكتب سيرتك الذاتية لمرحلة من حياتك، في حدود 15 سطرا.)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q20', 'exam_primary_2016_arabic_nov', 20, 'ديداكتيك اللغة العربية — إنتاج نص وظيفي', 'انطلاقا من النص الوظيفي الموجود في ورقة الامتحان (حول التسامح الفكري) ومن درس «الفاعل واسم الفاعل»، اكتب(ي) نصا وظيفيا (حوالي 8 أسطر) في موضوع التسامح الفكري، توظف فيه الفاعل واسم الفاعل.', false, '[]'::jsonb, ARRAY[]::text[], 'النص الوظيفي (حوالي ثمانية أسطر) في موضوع التسامح الفكري، يستعمل فيه الفاعل واسم الفاعل. عناصر الإجابة المنتظرة: نص منسجم (1,5 ن) يتحدث عن التسامح الفكري؛ توظيف الفاعل توظيفا صحيحا (2 ن)؛ توظيف اسم الفاعل توظيفا صحيحا (1,5 ن). (النص المقترح: حوالي ثمانية أسطر، يستحسن أن يتضمن ألفاظا مثل «يتسامح المؤمن مع أخيه» (الفاعل: المؤمن) و«التسامح قيمة سامية» (اسم الفاعل: سامية).)', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q21', 'exam_primary_2016_arabic_nov', 21, 'ديداكتيك اللغة العربية — الفهم القرائي', 'اقترح(ي) ثلاثة أسئلة للفهم القرائي للصفحة 20 من كتاب التلميذ «في رحاب اللغة العربية» (السنة الثالثة ابتدائي)، مع مراعاة التدرج في الصعوبة.', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) ثلاثة أسئلة للفهم القرائي للصفحة 20 من كتاب التلميذ «في رحاب اللغة العربية» (السنة الثالثة ابتدائي)، متدرجة الصعوبة: سؤال حرفي (استخراج معلومة صريحة من النص، 1 ن)؛ سؤال استنتاجي (استخلاص فكرة أو علاقة غير مصرح بها، 1,5 ن)؛ سؤال نقدي/تقييمي (إبداء الرأي والموقف، 1,5 ن).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q22', 'exam_primary_2016_arabic_nov', 22, 'ديداكتيك اللغة العربية — وضعية مشكلة', 'اقترح(ي) وضعية-مشكلة مندمجة لتوظيف تعلمات درس «الفاعل واسم الفاعل» في وضعية جديدة.', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية-مشكلة مندمجة (4 نقط) يتوفر فيها عنصران: تهدف إلى إعادة استثمار تعلمات الفاعل واسم الفاعل في وضعية تواصلية جديدة (2 ن)؛ وأن تكون وضعية دالة ومحفزة للمتعلمين (2 ن).', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q23', 'exam_primary_2016_arabic_nov', 23, 'ديداكتيك اللغة العربية — صعوبات التعلم', 'حدد(ي) الصعوبة التي قد يواجهها المتعلمون في درس «الفاعل واسم الفاعل»، واقترح(ي) علاجا لها.', false, '[]'::jsonb, ARRAY[]::text[], 'الصعوبة: الخلط بين الفاعل واسم الفاعل (يخلط المتعلمون بين الفاعل — اسم مرفوع يدل على من قام بالفعل — واسم الفاعل — اسم مشتق من الفعل يدل على من قام بالفعل أو اتصف به). العلاج: اقتراح أنشطة تميز بينهما (مقارنة أمثلة، صياغة جمل توظف كل عنصر في سياقه، تصحيح أخطاء شائعة)، مع التدريب والتقويم.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2016) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_arabic_nov_q24', 'exam_primary_2016_arabic_nov', 24, 'ديداكتيك اللغة العربية — إنشاء وتقويم', 'اقترح(ي) موضوعا للإنشاء في مجال التسامح الفكري، وحدد(ي) معايير تقييمه.', false, '[]'::jsonb, ARRAY[]::text[], 'الموضوع: اكتب نصا (حوالي 8 أسطر) في موضوع التسامح الفكري توظف فيه الفاعل واسم الفاعل. معايير التقويم (4 نقط): ملاءمة النص للموضوع (1 ن)؛ انسجام النص (1 ن)؛ سلامة اللغة (1 ن)؛ توظيف الفاعل واسم الفاعل توظيفا صحيحا (1 ن).', 'open', 'official', NULL, true, NULL)
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
