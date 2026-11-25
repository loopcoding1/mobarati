-- ====================================================================
-- مباراتي — العلوم وديداكتيك العلوم، دورة نونبر 2019
-- ====================================================================
-- المصدر: ملف الحل solved/2019/العلوم - 2019.md
--   (سجل الامتحانات رقم 86؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2019/العلوم - امتحان.pdf (8 صفحات كاملة بما فيها
--   صفحة الغلاف/ورقة الإجابة). صفحات الامتحان تحمل علامة مائية «mti7anati».
--   ملف التصحيح الرسمي: exams-ibtida2i/2019/تصحيح العلوم.pdf (صفحتان، عناصر
--   الإجابة الرسمية، المركز الوطني للتقويم والامتحانات).
--   نفس الملفين منشوران على: https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * كل سؤال من Q1 إلى Q16 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة كلها من التصحيح الرسمي (source_type='official').
--   * المدة (90 دقيقة) والمعامل (2) من ترويسة التصحيح الرسمي: «مدة الاختبار:
--     ساعة ونصف، المعامل: 2» — الاختبار المشترك «اختبار في العلوم والرياضيات».
--   * الامتحان يضم مجال العلوم (20 نقطة: الموضوع الأول 5 + الموضوع الثاني 5 +
--     الموضوع الثالث/ديداكتيك العلوم 10)؛ سجل 2019 لا يفصل الديداكتيك في امتحان
--     مستقل، فأُدرج المجالان في صف امتحان واحد (subject_type='sciences') والتمييز
--     بينهما في حقل category لكل سؤال.
--   * Q1 وQ5 صيغتهما «ضع (x) أمام كل اقتراح صحيح»؛ Q1 له جواب واحد، وQ5 له جوابان (C + D).
--   * الأسئلة المفتوحة (open): options = '[]' و correct_answers فارغ؛ الجواب في explanation.
--   * لا أسئلة محذوفة: Q1–Q16 كلها موجودة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2019_sciences_nov', 'specialty_primary', 2019, 'sciences', 'العلوم وديداكتيك العلوم', 'امتحان العلوم وديداكتيك العلوم (دورة نونبر 2019)', 'دورة نونبر 2019', 90, 16)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (16 سؤالاً)

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q1', 'exam_primary_2019_sciences_nov', 1, 'العلوم — الموضوع الأول', 'ضع (x) في خانة الحرف الموافق لكل اقتراح صحيح:', false, '[{"id": "A", "text": "تمكن عملية التصفية من فصل الماء عن المواد الصلبة المتوضع فيه"}, {"id": "B", "text": "تمكن عملية التصفية من فصل سائلين قابلين للامتزاج"}, {"id": "C", "text": "تمكن عملية ترشيح ماء البحر من فصل الأملاح المذابة"}, {"id": "D", "text": "تمكن عملية التبخير من الحصول دائما على محاليل مشبعة"}]'::jsonb, ARRAY['A']::text[], 'التصفية (الترشيح) تفصل مادة صلبة عن سائل. أما فصل سائلين قابلين للامتزاج فيتم بالتقطير لا بالتصفية، وترشيح ماء البحر لا يفصل الأملاح المذابة فيه، والتبخير لا يعطي دائما محاليل مشبعة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'صيغة السؤال: ضع (x) أمام كل اقتراح صحيح؛ اقتراح واحد صحيح.')
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q2', 'exam_primary_2019_sciences_nov', 2, 'العلوم — الموضوع الأول', 'مثل تلميذ خلال حصة دراسية تحولا فيزيائيا للماء كما يوضح الشكل جانبه، حيث جزيئات الماء الموجودة في الإناء ممثلة بكريات. الإناء مغلق ولا يتبخر منه أي شيء. التحول يعبر عن:', false, '[{"id": "A", "text": "انصهار"}, {"id": "B", "text": "تبخر"}, {"id": "C", "text": "تجمد"}, {"id": "D", "text": "تكاثف"}]'::jsonb, ARRAY['B']::text[], 'في الشكل تنتقل الجزيئات من حالة متراصة في أسفل الإناء (الحالة السائلة) إلى حالة منتشرة في كل الإناء (الحالة الغازية)، وهذا هو التبخر.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q3', 'exam_primary_2019_sciences_nov', 3, 'العلوم — الموضوع الأول', 'كتلة الماء قبل التحول الفيزيائي هي 10g. الاقتراح الصحيح:', false, '[{"id": "A", "text": "يحدث التحول بفعل انخفاض درجة الحرارة حيث تصبح كتلة الماء بعد التحول هي 5g"}, {"id": "B", "text": "يحدث التحول بفعل ارتفاع درجة الحرارة حيث تصبح كتلة الماء بعد التحول هي 11g"}, {"id": "C", "text": "يحدث التحول بفعل ارتفاع درجة الحرارة حيث تصبح كتلة الماء بعد التحول هي 10g"}, {"id": "D", "text": "يحدث التحول بفعل انخفاض درجة الحرارة حيث تصبح كتلة الماء بعد التحول هي 10g"}]'::jsonb, ARRAY['C']::text[], 'التبخر يحتاج إلى ارتفاع درجة الحرارة، والكتلة محفوظة لأن الإناء مغلق ولا يخرج منه أي شيء، فتبقى الكتلة 10g بعد التحول.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q4', 'exam_primary_2019_sciences_nov', 4, 'العلوم — الموضوع الأول', 'ننجز الدارة الكهربائية الممثلة في الشكل باستعمال مولد يعطي توترا U = 24V. قيمة التوتر U1 هي 6,5V. قيمة التوتر U2 هي:', false, '[{"id": "A", "text": "17,5V"}, {"id": "B", "text": "12,5V"}, {"id": "C", "text": "7,5V"}, {"id": "D", "text": "5,0V"}]'::jsonb, ARRAY['A']::text[], 'في دارة على التوالي يكون توتر المولد مساوياً لمجموع التوترات: U = U1 + U2، إذن U2 = 24 − 6,5 = 17,5V.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q5', 'exam_primary_2019_sciences_nov', 5, 'العلوم — الموضوع الأول', 'نضع كرية معتمة أمام منبع ضوئي، فيتكون ظل محمول على شاشة بيضاء توجد على مسافة من الكرة. يعطي الشكل ثلاثة مواضع 1 و 2 و 3 محتملة أن يوجد فيها المنبع الضوئي. ضع (x) في خانة الحرف الموافق لكل اقتراح صحيح:', true, '[{"id": "A", "text": "المنبع الضوئي المستعمل منبع غير نقطي"}, {"id": "B", "text": "الكرة وسط شفاف ومتجانس"}, {"id": "C", "text": "الموضع الذي يوجد فيه المنبع الضوئي هو الموضع 3"}, {"id": "D", "text": "يتكون الظل الخاص على الواجهة المقابلة للمنبع الضوئي"}]'::jsonb, ARRAY['C', 'D']::text[], 'الكرة وسط معتم (وليست شفافة) فتحجب الضوء ويتكون الظل على الواجهة المقابلة للمنبع الضوئي، والموضع الصحيح للمنبع حسب الشكل هو الموضع 3. والمنبع المستعمل منبع نقطي لا غير نقطي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال بجوابين صحيحين (C و D) حسب التصحيح الرسمي.')
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q6', 'exam_primary_2019_sciences_nov', 6, 'العلوم — الموضوع الثاني — الوضعية 1', 'في إطار معالجة الفترة الخاصة بوظيفة الهضم نقترح التجربة المبينة في الوثيقة الآتية: أنبوبان A وB في حمام مريم على درجة حرارة 37°C؛ الأنبوب A يحتوي على أبيض البيض والماء، والأنبوب B يحتوي على أبيض البيض والعصارة المعدية. الهدف من هذه التجربة هو:', false, '[{"id": "A", "text": "الكشف عن دور العصارة المعدية في هضم الدهنيات"}, {"id": "B", "text": "الكشف عن دور العصارة المعدية في هضم السكريات"}, {"id": "C", "text": "الكشف عن مكونات أبيض البيض والعصارة المعدية"}, {"id": "D", "text": "الكشف عن دور المعدة في هضم البروتينات"}]'::jsonb, ARRAY['D']::text[], 'أبيض البيض بروتين، والعصارة المعدية هي عصارة المعدة؛ فالتجربة تكشف عن دور المعدة (عصارتها) في هضم البروتينات.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q7', 'exam_primary_2019_sciences_nov', 7, 'العلوم — الموضوع الثاني — الوضعية 1', 'تكشف النتائج التجريبية على:', false, '[{"id": "A", "text": "أهمية درجة حرارة 37 في هضم أبيض البيض على مستوى الأنبوب B"}, {"id": "B", "text": "أن الأنزيمات الهضمية أكثر فعالية في درجة الحرارة 37°C"}, {"id": "C", "text": "أن العصارة المعدية تحتوي على أنزيمات تفكك البروتينات"}, {"id": "D", "text": "أن الأنزيمات الهضمية أكثر فعالية في الأنبوب B منها في الأنبوب A"}]'::jsonb, ARRAY['C']::text[], 'في الأنبوب B (مع العصارة المعدية) يهضم أبيض البيض بينما لا يهضم في الأنبوب A (مع الماء)، مما يثبت أن العصارة المعدية تحتوي على أنزيمات تفكك البروتينات.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'المفتاح الرسمي يختار (ج)؛ الخيار (د) قريب لكن المقصود هو إثبات وجود أنزيمات مفككة للبروتينات في العصارة المعدية.')
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q8', 'exam_primary_2019_sciences_nov', 8, 'العلوم — الموضوع الثاني — الوضعية 2', 'تقدم الوثيقة جانبه نتائج تتبع تطور تركيز الهرمونات المبيضية عند امرأة ترغب في الإنجاب، خضعت لمراقبة طبية خلال شهري أبريل وماي. ينتج عن ظهور ذروة الأستروجينات (Oestrogènes) في اليوم 30 من أبريل:', false, '[{"id": "A", "text": "حدوث الطمث"}, {"id": "B", "text": "حدوث الإخصاب"}, {"id": "C", "text": "حدوث الإباضة"}, {"id": "D", "text": "حدوث التعشيش"}]'::jsonb, ARRAY['C']::text[], 'ذروة الأستروجينات تحفز إفراز الهرمون الملوتن (LH) وتسبق الإباضة مباشرة، فينتج عنها حدوث الإباضة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q9', 'exam_primary_2019_sciences_nov', 9, 'العلوم — الموضوع الثاني — الوضعية 2', 'تؤكد النتائج المحصل عليها، خلال الفترة الممتدة من 14 إلى 18 ماي، أن:', false, '[{"id": "A", "text": "الجريبات الناضجة تفرز كميات مهمة من الأستروجينات والجسفرون"}, {"id": "B", "text": "السيدة في حالة حمل نظرا لاستمرار إفراز الجسفرون"}, {"id": "C", "text": "السيدة في فترة طمث نظرا لاستمرار إفراز الأستروجينات"}, {"id": "D", "text": "السيدة في مرحلة طفولة نظرا لارتفاع تركيز الأستروجينات والجسفرون"}]'::jsonb, ARRAY['B']::text[], 'استمرار إفراز الجسفرون (البروجسترون) بمستوى مرتفع بعد الإباضة يدل على بقاء الجسم الأصفر نشطاً، أي أن السيدة في حالة حمل.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, '«الجسفرون» في الورقة يقصد به البروجسترون (progestérone).')
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q10', 'exam_primary_2019_sciences_nov', 10, 'العلوم — الموضوع الثاني — الوضعية 3', 'قصد التخلص من الفئران التي سببت خسائر مهمة في إحدى المناطق الفلاحية قرر المزارعون إدخال النمس، وهو حيوان ثديي صغير يتغذى على الحيوانات الصغيرة كالفئران والزواحف والطيور. بعد ذلك تم تتبع تغير أعداد بعض الحيوانات في هذه المنطقة. تمثل الوثيقة جانبه النتائج المحصلة. يمكن تفسير النتائج المحصلة بما يلي:', false, '[{"id": "A", "text": "تزايد عدد الطيور راجع إلى تزايد أعداد النمس الذي يتغذى على هذه الطيور"}, {"id": "B", "text": "تناقص عدد الحشرات راجع إلى تزايد عدد النمس الذي يتغذى على هذه الحشرات"}, {"id": "C", "text": "تناقص عدد الطيور راجع إلى تناقص عدد الحشرات التي تشكل غذاء للطيور"}, {"id": "D", "text": "تزايد عدد الحشرات راجع إلى تناقص عدد الطيور التي تتغذى على هذه الحشرات"}]'::jsonb, ARRAY['D']::text[], 'النمس يفترس الطيور فيتناقص عددها، والطيور تتغذى على الحشرات، فتناقص الطيور يخفف الافتراس على الحشرات فيتزايد عددها.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q11', 'exam_primary_2019_sciences_nov', 11, 'ديداكتيك العلوم — الموضوع الثالث', 'اقترح تخطيطا لحصة دراسية حول درس التنفس للمستوى الثالث ابتدائي (دور الحركات التنفسية وتحديد مسار الهواء خلال حركتي الشهيق والزفير). الأهداف التعلمية:', false, '[]'::jsonb, ARRAY[]::text[], 'هدفان من قبيل: تعرف دور الحركات التنفسية؛ تحديد مسار الهواء خلال حركتي الشهيق والزفير.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q12', 'exam_primary_2019_sciences_nov', 12, 'ديداكتيك العلوم — الموضوع الثالث', 'الوسائل التعليمية المقترحة للحصة الدراسية حول درس التنفس (المستوى الثالث ابتدائي):', false, '[]'::jsonb, ARRAY[]::text[], 'من قبيل: الوثيقة 1 (رسم تخطيطي يبين الحركات التنفسية) والوثيقة 2 (رسم تخطيطي مبسط للجهاز التنفسي)؛ صور للجهاز التنفسي؛ مورد رقمي يبين مسار الهواء خلال حركتي الشهيق والزفير؛ حاسوب ومسلاط. (ملحوظة: قبول أي وسيلة أخرى ملائمة مع الأهداف المسطرة.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q13', 'exam_primary_2019_sciences_nov', 13, 'ديداكتيك العلوم — الموضوع الثالث', 'خطوات صياغة المشكل العلمي للحصة الدراسية حول درس التنفس:', false, '[]'::jsonb, ARRAY[]::text[], 'يوجه الأستاذ المتعلمين لملاحظة الوثيقة 1؛ حث المتعلمين على تنفيذ المناولة المقدمة في الوثيقة 1؛ وصف التغيرات التي تحدث على مستوى القفص الصدري؛ دفع المتعلمين إلى طرح تساؤلات حول المسار المتبع من طرف الهواء خلال حركتي الشهيق والزفير.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q14', 'exam_primary_2019_sciences_nov', 14, 'ديداكتيك العلوم — الموضوع الثالث', 'الأنشطة المقترحة لحل المشكل العلمي في الحصة الدراسية حول درس التنفس:', false, '[]'::jsonb, ARRAY[]::text[], 'النشاط 1: اتباع خطوات منهجية لحل المشكل المطروح من خلال إنجاز أنشطة من قبيل: رصد تمثلات المتعلمين؛ يطلب الأستاذ من المتعلمين رسم المسار الذي يسلكه الهواء في جسمهم باستعمال الصورات. النشاط 2: يساعد الأستاذ المتعلمين على التمييز بين أعضاء الجهاز التنفسي باستعمال الوثيقة 2: أنفه، فم، بلعوم، قصبة هوائية، رئة؛ يحدد المتعلمون موقع الرئتين بتواجدهما في المنطقة الصدرية من الجسم داخل القفص الصدري. النشاط 3: عرض المورد الرقمي باستعمال جهاز العرض الرقمي؛ استثمار المورد الرقمي لتبيين مسار هواء الشهيق وهواء الزفير في الجسم على الوثيقة 2. ثم وضع خطوات النهج العلمي المتبع.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q15', 'exam_primary_2019_sciences_nov', 15, 'ديداكتيك العلوم — الموضوع الثالث', 'الحصيلة المعرفية للحصة الدراسية حول درس التنفس:', false, '[]'::jsonb, ARRAY[]::text[], 'يستثمر المتعلمون الاستنتاجات السابقة لصياغة ملخص للدرس بمساعدة الأستاذ. تتضمن الحصيلة: خلال الشهيق يدخل الهواء من الأنف ثم يمر إلى الرئتين عبر البلعوم والقصبة الهوائية؛ خلال الزفير يخرج الهواء من الرئتين عبر نفس المسالك.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: العلوم — دورة نونبر 2019 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_nov_q16', 'exam_primary_2019_sciences_nov', 16, 'ديداكتيك العلوم — الموضوع الثالث', 'تقويم المكتسبات في الحصة الدراسية حول درس التنفس:', false, '[]'::jsonb, ARRAY[]::text[], 'تقويم تكويني من خلال اقتراح نشاط مناسب للتحقق من التحكم في مكتسبات الحصة.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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
