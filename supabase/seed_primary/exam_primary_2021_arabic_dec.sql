-- ====================================================================
-- مباراتي — اللغة العربية، مادة التخصص، دورة دجنبر 2021
-- ====================================================================
-- المصدر: ملف الحل solved/2021/اللغة العربية - 2021.md
--   (سجل الامتحانات رقم 77؛ الحل: بحث Google أولا — وُجد كاملا على
--   mesconcours.ma وmanasseb.com، فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2021/اللغة العربية - امتحان.pdf
--   (7 صفحات مرقمة 1/8–5/8 ثم 7/8 و8/8 — الصفحة 6/8 مفقودة من المسح).
--   نص الانطلاق: حنا مينه، «القطاف»، دار الآداب، بيروت، الطبعة 3، 1997، ص. 73–74.
--
-- مصدر الأجوبة (السلطة): مفتاح التصحيح الرسمي — جدول عناصر الإجابة للمركز
--   الوطني للتقويم والامتحانات، ملف 2021/التصحيح.pdf، الصفحة 2 (ملف تصحيح
--   رسمي عام لسنة 2021، لا يُرسل كامتحان). المصادر الثلاثة (المفتاح الرسمي،
--   mesconcours.ma، manasseb.com) متفقون على أجوبة كل الأسئلة.
--   صفحة النشر الأساسية: https://mesconcours.ma/ar/concours/enseignement/2021-504/
--   المصدر الثانوي: https://www.manasseb.com/sujet/sujet-41854-enseignant-2021/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * Q1–Q4 (ص. 2/8)، Q5–Q8 (ص. 3/8)، Q9–Q12 (ص. 4/8)، Q13–Q16 (ص. 5/8)،
--     Q21–Q23 (ص. 7/8)، Q24 (ص. 8/8): نص كل سؤال وخياراته مطابقة حرفياً
--     لورقة الامتحان، والأجوبة مطابقة لمفتاح التصحيح الرسمي.
--   * انحرافان لصالح PDF (PDF wins): صياغة Q8-ج بالشرطتين (–أيتها المحاضرة–)
--     بدل القوسين في ملف الحل؛ وصياغة Q24 «أكتبُ، ... رسالة إلى صديق/ صديقة».
--   * الغلاف (ص. 1/8): دورة دجنبر 2021، ثلاث ساعات، المعامل 3، 30 نقطة.
--
-- ⚠ استثناء Q17–Q20 (الصفحة 6/8 مفقودة — أربع أسئلة بلا صيغة):
--   * صيغة الأسئلة والاختيارات غير متوفرة في النسخة الممسوحة، وأجوبتها مأخوذة
--     من جدول عناصر الإجابة الرسمي فقط. أُدرجت الصفوف الأربعة عمداً مع
--     verified=false وoptions=[] وtext يشرح الغياب، حتى لا يُحذف أي رقم.
--   * Q17 سؤال وصل بسهم: أ←5، ب←3، ج←2، د←1 (correct_answers=['5','3','2','1']).
--   * Q18 = D، Q19 = B، Q20 = C (من المفتاح الرسمي).
--   * هذه الصفوف الأربعة هي الاستثناء الوحيد من قاعدة «كل correct_answers
--     موجود ضمن option ids» — لأن نصوص الاختيارات غير متوفرة أصلاً.
--
-- ⚠ السؤال 24 (التعبير الكتابي، 4ن — سؤال مفتوح):
--   * المفتاح الرسمي لا يعطي جوابا مباشرا له، بل يحيل على «الصفحة الموالية»
--     غير الموجودة في الملف المتاح. العناصر في explanation مقترحة للاسترشاد
--     (من mesconcours.ma وmanasseb.com)، وليست رسمية — لذلك verified=false
--     وsource_type='third_party' وoptions=[] وcorrect_answers=[].
--
-- أرقام الأسئلة: لا يوجد أي رقم محذوف — Q17–Q20 مدرجة كصفوف موسومة أعلاه.
-- بنية الاختبار: 24 سؤالا (23 مغلقا + 1 مفتوح)، 3 ساعات، المعامل 3، 30 نقطة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_arabic_dec', 'specialty_primary', 2021, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 24)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (24 سؤالاً)

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q1', 'exam_primary_2021_arabic_dec', 1, 'المشتقات — اسم المكان واسم الآلة', 'أصل بسهم بين الاسم الذي تحته خط في كل عبارة ونوع اشتقاقه في ما يأتي: (1ن)
أ. مَنْظَر طبيعي
ب. نَظَّارة شمسية
ج. مِنْظار فلكي', false, '[{"id": "1", "text": "اسم زمان"}, {"id": "2", "text": "اسم آلة قياسي"}, {"id": "3", "text": "اسم آلة غير قياسي"}, {"id": "4", "text": "اسم مكان"}]'::jsonb, ARRAY['4','3','2']::text[], '«مَنْظَر» على وزن مَفْعَل من نَظَرَ، وهو اسم مكان أي موضع النظر. و«نَظَّارة» على وزن فَعَّالة، وهو من أوزان اسم الآلة غير القياسية التي وردت عن العرب سماعا. أما «مِنْظار» فعلى وزن مِفْعال، وهو أحد الأوزان القياسية الثلاثة لاسم الآلة (مِفْعَل ومِفْعَلة ومِفْعال). النوع «اسم زمان» يبقى بلا مقابل، لأن الأسماء الثلاثة كلها متصلة بالمكان أو بالأداة لا بالوقت. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ←4 (اسم مكان)، ب←3 (اسم آلة غير قياسي)، ج←2 (اسم آلة قياسي). ملاحظة مناصب: «إجابة مرجّحة» — مجمع اللغة العربية أقرّ وزن فَعّالة قياسيا، فـ«نَظّارة» قد تُعدّ اسم آلة قياسي؛ وقد حسم المفتاح الرسمي الجواب كما ورد.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q2', 'exam_primary_2021_arabic_dec', 2, 'النحو — التمييز', '«هواء البادية أقلُّ تلوثاً من هواء المدينة»، تُعرب كلمة «تلوثاً» في الجملة:', false, '[{"id": "A", "text": "حالا"}, {"id": "B", "text": "تمييزا ملفوظا"}, {"id": "C", "text": "تمييزا ملحوظا"}, {"id": "D", "text": "مفعولا لأجله"}]'::jsonb, ARRAY['C']::text[], '«أقلّ» اسم تفضيل، والمقارنة فيه تقع على نسبة مبهمة في الجملة كلها لا على عدد أو مقدار مذكور، فالاسم الذي يرفع هذا الإبهام تمييز ملحوظ (يقال له أيضا تمييز نسبة). والتمييز الملفوظ لا يكون إلا بعد عدد أو وزن أو كيل أو مساحة، وليس في الجملة شيء من ذلك، فسقط الخيار ب. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q3', 'exam_primary_2021_arabic_dec', 3, 'النحو — الحال', '«... أقبلتُ على العمل بنهم شديد»؛ الموقع الإعرابي لشبه الجملة «بنهم شديد» هو:', false, '[{"id": "A", "text": "خبر"}, {"id": "B", "text": "حال"}, {"id": "C", "text": "لا محل لها من الإعراب"}, {"id": "D", "text": "نعت"}]'::jsonb, ARRAY['B']::text[], 'شبه الجملة هنا متعلق بالفعل «أقبلتُ»، ويبين هيئة الفاعل وقت إقباله على العمل، فهو في محل نصب حال. ولا يصح أن يكون نعتا لأنه لا يتبع اسما نكرة قبله، ولا خبرا لأن الجملة فعلية تامة. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'ملاحظة مناصب: وصف الجواب بأنه «إجابة مرجّحة: تحقق منه حسب عناصر الإجابة الرسمية»؛ وقد حسمه مفتاح التصحيح الرسمي فعلا (B = حال).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q4', 'exam_primary_2021_arabic_dec', 4, 'الصرف — المصادر', 'أصل بسهم بين كل فعل ومصدره في ما يأتي: (1ن)
أ. وَهَبَ
ب. واهَبَ
ج. أوْهَبَ', false, '[{"id": "1", "text": "إيهاب"}, {"id": "2", "text": "تَواهُب"}, {"id": "3", "text": "هِبَة"}, {"id": "4", "text": "مُواهَبة"}]'::jsonb, ARRAY['3','4','1']::text[], 'المصدر يتبع وزن فعله. «وَهَبَ» ثلاثي مجرد ومصدره السماعي «هِبَة». و«واهَبَ» على وزن فاعَلَ، ومصدره القياسي مُفاعَلة أي «مُواهَبة». و«أوْهَبَ» على وزن أفْعَلَ، ومصدره إفعال، وقد قُلبت الواو ياء لسكونها بعد كسرة فصار «إيهاب». أما «تَواهُب» فمصدر «تَواهَبَ» على وزن تفاعَلَ، وهذا الفعل غير مذكور في القائمة فبقي المصدر بلا مقابل. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ←3 (هِبَة)، ب←4 (مُواهَبة)، ج←1 (إيهاب).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q5', 'exam_primary_2021_arabic_dec', 5, 'فهم النص — المرادف', 'مرادف كلمة «نضرة» بحسب سياقها في النص:', false, '[{"id": "A", "text": "مرئية"}, {"id": "B", "text": "جميلة"}, {"id": "C", "text": "مشاهدة"}, {"id": "D", "text": "ذابلة"}]'::jsonb, ARRAY['B']::text[], 'ترد «نضرة» في النص وصفا لأوراق جديدة يتمناها الكاتب: «أوراق جديدة خضراء نضرة طازجة»، والنضارة حسن وبهاء ورَواء. و«ذابلة» ضدها لا مرادفها، وهي في النص نفسه وصف للأوراق التي يريد أن تسقط. أما «مرئية» و«مشاهدة» فمن مادة الرؤية، وقد جُعلتا مصيدة لمن يخلط بين النَّضارة والنَّظر. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q6', 'exam_primary_2021_arabic_dec', 6, 'النحو — كان وأخواتها', 'أضع علامة (X) في الخانة المقابلة للجملة الصحيحة تركيبيا:', false, '[{"id": "A", "text": "كانت الرابيتان اللتان وقفت عليهما جذابتان"}, {"id": "B", "text": "كانت الرابيتين اللتين وقفت عليهما جذابتين"}, {"id": "C", "text": "كانت الرابيتان اللتان وقفت عليهما جذابتين"}, {"id": "D", "text": "كانت الرابيتين اللتين وقفت عليهما جذابتان"}]'::jsonb, ARRAY['C']::text[], '«كان» ترفع الاسم وتنصب الخبر، والمثنى يرفع بالألف وينصب بالياء. فاسمها «الرابيتان» بالألف، وخبرها «جذابتين» بالياء، والاسم الموصول «اللتان» نعت لاسم كان المرفوع فيوافقه بالألف. الخياران ب ود يبدآن بـ«الرابيتين» فينصبان اسم كان، والخيار أ يرفع الخبر «جذابتان». الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q7', 'exam_primary_2021_arabic_dec', 7, 'النحو — المفعول به', '«بعثت الخضرة الممتدة على مدّ النظر شميما حلوا في الجو»، تُعرب كلمة «شميما»:', false, '[{"id": "A", "text": "حالا"}, {"id": "B", "text": "نعتا"}, {"id": "C", "text": "تمييزا ملحوظا"}, {"id": "D", "text": "مفعولا به"}]'::jsonb, ARRAY['D']::text[], '«بعثَ» فعل متعدٍّ، وفاعله «الخضرة»، والذي بعثته هو «شميما»، فهو مفعول به منصوب وقد نُعت بـ«حلوا». والحال تبين هيئة صاحبها لا ما وقع عليه الفعل، والتمييز يرفع إبهام نسبة أو مقدار وليس في الجملة إبهام من هذا النوع. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q8', 'exam_primary_2021_arabic_dec', 8, 'الأساليب', 'أصل بسهم بين كل جملة والأسلوب الوارد فيها في ما يأتي: (1,5 ن) (تمنح نصف نقطة لكل جواب صحيح)
أ. «يا لَلمدافعين عن البيئة للرعي الجائر».
ب. الغابةَ الغابةَ، فإنها مكان الاستجمام والراحة.
ج. أنا –أيتها المحاضرة– متشبع بقيم التسامح.', false, '[{"id": "1", "text": "أسلوب الاختصاص"}, {"id": "2", "text": "أسلوب الاستغاثة"}, {"id": "3", "text": "أسلوب الندبة"}, {"id": "4", "text": "أسلوب الإغراء"}]'::jsonb, ARRAY['2','4','1']::text[], 'في «أ» نداء بـ«يا» تلته لام مفتوحة على المستغاث به ولام مكسورة على المستغاث له (المستغاث منه هنا الرعي الجائر)، وهذه صيغة الاستغاثة. وفي «ب» تكرار اسم منصوب يُغرى به المخاطب ليقبل عليه، وهو الإغراء. وفي «ج» اسم منصوب معرَّف بـ«أيّ» جاء بعد ضمير المتكلم ليخصصه، وهو الاختصاص. تبقى الندبة بلا مقابل، لأنها تحتاج «وا» أو «يا» للتفجع على مفقود، ولا شيء من ذلك في الجمل الثلاث. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ←2 (الاستغاثة)، ب←4 (الإغراء)، ج←1 (الاختصاص).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q9', 'exam_primary_2021_arabic_dec', 9, 'الإملاء — الهمزة المتوسطة', 'أضع علامة (X) في الخانة المقابلة للكلمة المكتوبة بطريقة صحيحة في ما يأتي:', false, '[{"id": "A", "text": "المُلائَمَةُ"}, {"id": "B", "text": "المُلاأَمَة"}, {"id": "C", "text": "المُلاؤَمَة"}, {"id": "D", "text": "المُلاءَمَة"}]'::jsonb, ARRAY['D']::text[], 'الهمزة هنا متوسطة مفتوحة وقبلها ألف ساكنة، وقاعدة الهمزة المتوسطة أن تُكتب على حرف يناسب أقوى الحركتين: حركتها وحركة ما قبلها. والألف الساكنة لا تقبل أن تُكتب الهمزة عليها، فتُرسم مفردة على السطر: المُلاءَمَة. لذلك تسقط الياء في أ والألف في ب والواو في ج. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q10', 'exam_primary_2021_arabic_dec', 10, 'فهم النص', '«الطبيعة» في النص بالنسبة إلى الكاتب مصدر:', false, '[{"id": "A", "text": "قلق"}, {"id": "B", "text": "تعب"}, {"id": "C", "text": "إزعاج"}, {"id": "D", "text": "ارتياح"}]'::jsonb, ARRAY['D']::text[], 'الطبيعة في النص سكينة تغمر الكون ووقفة يودّ الإنسان أن ينسى فيها نفسه، ومكان إبداع وإلهام. ما يذكره الكاتب من خوف ليس مصدره الطبيعة بل فقدان العمل والمسكن واللقمة والغربة والفراغ، أي ما يأتيه من الحياة اليومية في المدينة، وهو ما يجعل الخيارات الثلاثة الأولى قلبا لمعنى النص. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q11', 'exam_primary_2021_arabic_dec', 11, 'الأساليب — حرف الجواب', 'أجيب بالإثبات عن السؤال الآتي: «أليس المكان المحجوب بالأشجار مكان إلهام وإبداع؟»', false, '[{"id": "A", "text": "نعم"}, {"id": "B", "text": "أجل"}, {"id": "C", "text": "بلى"}, {"id": "D", "text": "لا"}]'::jsonb, ARRAY['C']::text[], 'السؤال منفيّ («أليس...»)، وحرف الجواب الذي يُبطل النفي ويثبت مضمون الجملة هو «بلى» وحده. أما «نعم» و«أجل» فتصدّقان الكلام كما ورد، أي تقرّان النفي نفسه، فيصير المعنى أنه ليس مكان إلهام. و«لا» تأكيد صريح للنفي. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q12', 'exam_primary_2021_arabic_dec', 12, 'فهم النص — الضد', 'أضع علامة (X) في الخانة المقابلة لضد كلمة «عتمة» بحسب سياقها في النص:', false, '[{"id": "A", "text": "ليل"}, {"id": "B", "text": "ضياء"}, {"id": "C", "text": "سواد"}, {"id": "D", "text": "ظلمة"}]'::jsonb, ARRAY['B']::text[], 'ترد «العتمة» في النص في مقابلة صريحة مع النور: «والنور الذي يتراجع يخلي مكانه للعتمة»، فضدها ما يقابل النور أي الضياء. و«ليل» و«سواد» و«ظلمة» كلها في جهة العتمة نفسها لا في مقابلها، ومنها ما هو مرادف لها. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q13', 'exam_primary_2021_arabic_dec', 13, 'أنواع النصوص', 'أحدد نوعية النص بوضع علامة (X) في الخانة المقابلة للجواب الصحيح في ما يأتي:', false, '[{"id": "A", "text": "نص سردي"}, {"id": "B", "text": "نص تفسيري"}, {"id": "C", "text": "نص حجاجي"}, {"id": "D", "text": "نص توجيهي"}]'::jsonb, ARRAY['A']::text[], 'النص يروي تجربة شخصية في زمن محدد (مساء صيفي، ثم الغد)، بضمير المتكلم وأفعال ماضية متتابعة، ويصف مكانا وحالة شعورية. وليس فيه شرح لظاهرة ولا أطروحة تُدعم بحجج ولا تعليمات موجهة إلى قارئ، فتسقط الأنواع الثلاثة الأخرى. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q14', 'exam_primary_2021_arabic_dec', 14, 'النحو — النعت', '«... الأدغال الرصاصية الداكنة الممتدة في صفوف لا تنتهي»؛ الموقع الإعرابي لجملة «لا تنتهي» هو:', false, '[{"id": "A", "text": "خبر"}, {"id": "B", "text": "حال"}, {"id": "C", "text": "لا محل لها من الإعراب"}, {"id": "D", "text": "نعت"}]'::jsonb, ARRAY['D']::text[], 'الجملة وقعت بعد «صفوف»، وهي نكرة، والقاعدة أن الجمل بعد النكرات صفات، فهي في محل جر نعت لـ«صفوف». ولو كان ما قبلها معرفة لأُعربت حالا، وهو ما يجعل الخيار ب المصيدة الطبيعية للسؤال. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q15', 'exam_primary_2021_arabic_dec', 15, 'الصرف — الفعل المعتل', 'أصل بسهم بين نوع الفعل والجملة التي تتضمنه في ما يأتي: (1,5 ن) (تمنح نصف نقطة لكل جواب صحيح)
أ. فعل معتل لفيف مقرون
ب. فعل معتل أجوف
ج. فعل معتل لفيف مفروق', false, '[{"id": "1", "text": "عِ أدوارك تنجح"}, {"id": "2", "text": "اغْنَيْنَ عمَّن ظلمكنَّ"}, {"id": "3", "text": "اطْوُوا صفحة الماضي"}, {"id": "4", "text": "زُرْ أصدقاءك بانتظام"}]'::jsonb, ARRAY['3','4','1']::text[], '«اطْوُوا» أمر من طَوى، وأصله (ط و ي): حرفا العلة فيه مجتمعان في العين واللام، فهو لفيف مقرون. و«زُرْ» أمر من زارَ، وأصله (ز و ر) بحرف علة في العين وحدها، فهو أجوف. و«عِ» أمر من وَعى، وأصله (و ع ي): حرفا علة يفصل بينهما حرف صحيح، فهو لفيف مفروق. أما «اغْنَيْنَ» فأمر من غَنِيَ، وعلّته في اللام وحدها، فهو ناقص، وهذا النوع غير مطلوب في القائمة فبقيت الجملة بلا مقابل. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ←3 (اطْوُوا صفحة الماضي)، ب←4 (زُرْ أصدقاءك بانتظام)، ج←1 (عِ أدوارك تنجح).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q16', 'exam_primary_2021_arabic_dec', 16, 'الصرف — النسب', 'أضع علامة (X) أمام الاسم المنسوب الصحيح لكلمة (عصا) في ما يأتي:', false, '[{"id": "A", "text": "عَصِيٌّ"}, {"id": "B", "text": "عَصاوِيٌّ"}, {"id": "C", "text": "عَصَوِيٌّ"}, {"id": "D", "text": "عَصائِيٌّ"}]'::jsonb, ARRAY['C']::text[], '«عصا» اسم مقصور ثلاثي ألفه منقلبة عن واو (أصله عَصَوٌ، بدليل الجمع أعصٍ وعِصِيّ والتثنية عَصَوان). وقاعدة النسب إلى المقصور الثلاثي أن تُرَدّ ألفه إلى أصلها واوا، فيقال عَصَوِيّ. أما زيادة الألف في «عَصاوِيّ» فلا تكون إلا في المقصور الذي تجاوز ثلاثة أحرف، والهمزة في «عَصائِيّ» تخص الممدود لا المقصور. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q17', 'exam_primary_2021_arabic_dec', 17, 'صيغة غير متوفرة — الصفحة 6/8 مفقودة', 'سؤال وصل بسهم (2ن) — صيغة السؤال والاختيارات غير متوفرة: الصفحة 6/8 مفقودة من النسخة الممسوحة من الامتحان.', false, '[]'::jsonb, ARRAY['5','3','2','1']::text[], 'الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf)؛ صيغة السؤال والاختيارات غير متوفرة في النسخة الممسوحة (الصفحة 6/8 مفقودة)', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', false, 'صيغة السؤال والاختيارات غير متوفرة — الصفحة 6/8 مفقودة من النسخة الممسوحة؛ الجواب (أ←5، ب←3، ج←2، د←1) من مفتاح التصحيح الرسمي فقط.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q18', 'exam_primary_2021_arabic_dec', 18, 'صيغة غير متوفرة — الصفحة 6/8 مفقودة', 'صيغة السؤال والاختيارات غير متوفرة: الصفحة 6/8 مفقودة من النسخة الممسوحة من الامتحان. (السؤال على 1ن حسب مفتاح التصحيح الرسمي.)', false, '[]'::jsonb, ARRAY['D']::text[], 'الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf)؛ صيغة السؤال والاختيارات غير متوفرة في النسخة الممسوحة (الصفحة 6/8 مفقودة)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', false, 'صيغة السؤال والاختيارات غير متوفرة — الصفحة 6/8 مفقودة من النسخة الممسوحة؛ الجواب (D) من مفتاح التصحيح الرسمي فقط. نوع السؤال (QCM) مستنتج من صيغة الجواب في المفتاح الرسمي (حرف واحد).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q19', 'exam_primary_2021_arabic_dec', 19, 'صيغة غير متوفرة — الصفحة 6/8 مفقودة', 'صيغة السؤال والاختيارات غير متوفرة: الصفحة 6/8 مفقودة من النسخة الممسوحة من الامتحان. (السؤال على 1ن حسب مفتاح التصحيح الرسمي.)', false, '[]'::jsonb, ARRAY['B']::text[], 'الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf)؛ صيغة السؤال والاختيارات غير متوفرة في النسخة الممسوحة (الصفحة 6/8 مفقودة)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', false, 'صيغة السؤال والاختيارات غير متوفرة — الصفحة 6/8 مفقودة من النسخة الممسوحة؛ الجواب (B) من مفتاح التصحيح الرسمي فقط. نوع السؤال (QCM) مستنتج من صيغة الجواب في المفتاح الرسمي (حرف واحد).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q20', 'exam_primary_2021_arabic_dec', 20, 'صيغة غير متوفرة — الصفحة 6/8 مفقودة', 'صيغة السؤال والاختيارات غير متوفرة: الصفحة 6/8 مفقودة من النسخة الممسوحة من الامتحان. (السؤال على 1ن حسب مفتاح التصحيح الرسمي.)', false, '[]'::jsonb, ARRAY['C']::text[], 'الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf)؛ صيغة السؤال والاختيارات غير متوفرة في النسخة الممسوحة (الصفحة 6/8 مفقودة)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', false, 'صيغة السؤال والاختيارات غير متوفرة — الصفحة 6/8 مفقودة من النسخة الممسوحة؛ الجواب (C) من مفتاح التصحيح الرسمي فقط. نوع السؤال (QCM) مستنتج من صيغة الجواب في المفتاح الرسمي (حرف واحد).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q21', 'exam_primary_2021_arabic_dec', 21, 'الصرف — المنقوص والمقصور والممدود', 'أصل بخط بين نوع الاسم والكلمة المناسبة له في ما يأتي: (1ن)
أ. اسم منقوص
ب. اسم مقصور
ج. اسم ممدود', false, '[{"id": "1", "text": "شتاء"}, {"id": "2", "text": "يحيى"}, {"id": "3", "text": "يحيا"}, {"id": "4", "text": "الراعي"}]'::jsonb, ARRAY['4','2','1']::text[], 'المنقوص اسم معرب آخره ياء لازمة مكسور ما قبلها، وهو «الراعي». والمقصور اسم معرب آخره ألف لازمة، وهو «يحيى» بالألف المقصورة، وهو هنا علَم. والممدود اسم معرب آخره همزة قبلها ألف زائدة، وهو «شتاء». أما «يحيا» فليس اسما أصلا بل فعل مضارع، ولهذا بقي بلا مقابل، وهو ما يجعل التفريق بين رسم «يحيى» ورسم «يحيا» جوهر السؤال. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ←4 (الراعي)، ب←2 (يحيى)، ج←1 (شتاء).')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q22', 'exam_primary_2021_arabic_dec', 22, 'الصرف — الممنوع من الصرف', 'أضع علامة (X) في الخانة المقابلة للكلمتين المشكولتين بطريقة صحيحة في ما يأتي:', false, '[{"id": "A", "text": "تاه المتسابق في صحراءِ شاسعةٍ"}, {"id": "B", "text": "تاه المتسابق في صحراءٍ شاسعةٍ"}, {"id": "C", "text": "تاه المتسابق في صحراءَ شاسعةً"}, {"id": "D", "text": "تاه المتسابق في صحراءَ شاسعةٍ"}]'::jsonb, ARRAY['D']::text[], '«صحراء» على وزن فَعْلاء، آخره ألف تأنيث ممدودة، فهو ممنوع من الصرف: يُجَرّ بالفتحة نيابة عن الكسرة ولا يُنوَّن. و«شاسعة» نعت له، والنعت يتبع المنعوت في إعرابه لا في علامته، فيُجَرّ بالكسرة مع التنوين لأنه مصروف. فالخياران أ وب ينوّنان الممنوع من الصرف أو يكسرانه، والخيار ج ينصب النعت. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q23', 'exam_primary_2021_arabic_dec', 23, 'الصرف — جموع القلة والكثرة', 'أحدد نوع الجمع (جمع قلة أم جمع كثرة) في ما يأتي: (2ن) (تمنح نصف نقطة لكل جواب صحيح)
أ. أَشْطُر
ب. صُفُوف
ج. أَشْجَار
د. غَمائم', false, '[{"id": "A", "text": "جمع قلة"}, {"id": "B", "text": "جمع كثرة"}]'::jsonb, ARRAY['A','B','A','B']::text[], 'جموع القلة أربعة أوزان: أَفْعُل وأَفْعال وأَفْعِلة وفِعْلة، وما عداها من صيغ منتهى الجموع وغيرها فجموع كثرة. فـ«أَشْطُر» على أَفْعُل و«أَشْجَار» على أَفْعال، وكلاهما قلة. و«صُفُوف» على فُعُول و«غَمائم» على فَعائل، وكلاهما كثرة. والمصيدة في «أَشْجَار» و«غَمائم»، لأن كثرة المعدود في الواقع لا علاقة لها بالتصنيف: العبرة بالوزن الصرفي وحده. الجواب من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', true, 'مطابقة: أ: جمع قلة، ب: جمع كثرة، ج: جمع قلة، د: جمع كثرة.')
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

-- أسئلة امتحان: اللغة العربية — مادة التخصص (دورة دجنبر 2021) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_arabic_dec_q24', 'exam_primary_2021_arabic_dec', 24, 'التعبير الكتابي', 'أكتبُ، في حدود ثمانية أسطر، رسالة إلى صديق/ صديقة، أثير انتباهه(ا) إلى المخاطر التي تهدد البيئة، وأحثه(ا) على أهمية المحافظة عليها. (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر مقترحة للاسترشاد (ليست رسمية):
1. الشكل (بنية الرسالة): المكان والتاريخ، التحية والمخاطبة («عزيزي/عزيزتي...»)، العرض، الخاتمة والتوقيع، مع التقيد بحدود ثمانية أسطر.
2. المضمون (المخاطر): ذكر مخاطر محددة لا عبارات عامة، مثل تلوث الهواء والماء (النفايات، دخان المصانع والسيارات)، وقطع الأشجار والحرائق، والرعي الجائر، وتبذير الماء، والبلاستيك.
3. وظيفة الحثّ: الانتقال من إثارة الانتباه إلى الدعوة إلى سلوك ملموس (ترشيد استهلاك الماء والطاقة، فرز النفايات، المشاركة في حملات التشجير والنظافة، التوعية داخل الأسرة والمدرسة)، باستعمال أساليب الحثّ كالأمر والنداء والاستفهام والتعليل.
4. اللغة: سلامة التركيب والإملاء، وصحة علامات الترقيم، وربط الجمل بأدوات مناسبة، وتنويع الأساليب.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-504/', false, 'عناصر مقترحة للاسترشاد من mesconcours.ma وmanasseb.com، وليست من عناصر الإجابة الرسمية؛ المفتاح الرسمي يحيل هذا السؤال على «الصفحة الموالية» غير الموجودة في الملف المتاح من عناصر الإجابة.')
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
