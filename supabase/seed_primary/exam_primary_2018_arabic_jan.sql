-- ====================================================================
-- مباراتي — اللغة العربية (التخصص والديداكتيك)، دورة يناير 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/اللغة العربية - امتحان - دورة يناير 2018.md
--   (سجل الامتحانات رقم 28؛ الحل منشور على mesconcours.ma)
--   ملف الامتحان: exams-ibtida2i/2018/اللغة العربية - امتحان - دورة يناير 2018.pdf
--   (12 صفحة، ممسوحة ضوئيا).
--
-- ⚠️ تنبيه مهم عن ملف التصحيح: ملف مساحة العمل
--   «تصحيح اللغة العربية - دورة يناير 2018.pdf» (9 صفحات) هو في الحقيقة
--   تصحيح دورة نونبر 2019 — غلافه وترويسة كل صفحة تقول «دورة نونبر 2019»،
--   مدة الإنجاز ساعة ونصف، 30 سؤالا في التخصص + 7 أسئلة ديداكتيك في 3 وضعيات —
--   أي أنه ليس مفتاح هذا الامتحان، ولم يُستعمل إطلاقا في هذا الملف.
--   الأجوبة هنا من mesconcours.ma الذي يصرّح أن مفاتيحه تتبع عناصر الإجابة
--   الرسمية؛ لذلك source_type='third_party' (وليس 'official').
--   source_url: https://mesconcours.ma/ar/concours/enseignement/2018-1018/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * الغلاف (صفحة 1): المدة ساعتان، المعامل 2، النقطة النهائية على 60،
--     مادة التخصص 30 نقطة وديداكتيك التخصص 30 نقطة.
--   * النص (صفحتا 1-2) وأسئلة Q1 إلى Q36 كلها (صفحات 2-12) مطابقة حرفيا
--     لما هو منشور على mesconcours.ma (نصوص الأسئلة وخياراتها وأرقامها).
--   * الأسئلة Q13 وQ23 موسومة في verification_note (تحفظات المصدر نفسه).
--   * لا أسئلة متخطاة: أُدرجت الأسئلة الـ36 كلها.
--
-- ملاحظات عن ترقيم الديداكتيك:
--   * ترقيم الديداكتيك في ورقة الامتحان نفسها يبدأ من جديد (1، 2، 3.1، 3.2،
--     4.1-4.4، 5، 6.1، 6.2)؛ والترقيم المتسلسل المستعمل هنا (Q26-Q36)
--     هو ترقيم mesconcours.ma: ديداكتيك 1=Q26، 2=Q27، 3.1=Q28، 3.2=Q29،
--     4.1=Q30، 4.2=Q31، 4.3=Q32، 4.4=Q33، 5=Q34، 6.1=Q35، 6.2=Q36.
--   * أسئلة المطابقة (Q5، Q9، Q12، Q14، Q16، Q17، Q20، Q21) من نوع 'matching'
--     حسب اتفاقية الملفات الشقيقة: options هي عناصر القائمة الثانية بأرقام
--     "1".."5"، وcorrect_answers مصفوفة مرتبة حسب عناصر القائمة الأولى
--     (أ، ب، ج، د) تعطي رقم العنصر المطابق لكل منها.
--   * الأسئلة المفتوحة (Q25-Q36): options '[]' وcorrect_answers فارغة،
--     وعناصر الإجابة المنتظرة في حقل explanation.
--
-- تسمية المعرفات: exam_primary_2018_arabic_jan / exam_primary_2018_arabic_jan_q<n>
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_arabic_jan', 'specialty_primary', 2018, 'arabic', 'اللغة العربية — التخصص والديداكتيك', 'امتحان اللغة العربية — التخصص والديداكتيك (دورة يناير 2018)', 'دورة يناير 2018', 120, 36)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (36 سؤالاً: 16 QCM + 8 مطابقة + 12 مفتوحا)

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q1', 'exam_primary_2018_arabic_jan', 1, 'الإعراب — التمييز', 'ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح: "أدب الأطفال أقل حضورا من أدب الكبار في الساحة العربية". تعرب كلمة "حضورا":', false, '[{"id": "A", "text": "نعتا"}, {"id": "B", "text": "بدلا"}, {"id": "C", "text": "تمييزا ملحوظا"}, {"id": "D", "text": "تمييزا ملفوظا"}]'::jsonb, ARRAY['C']::text[], '"أقل" اسم تفضيل مبهم النسبة، و"حضورا" يزيل الإبهام عن نسبة القلة إلى أدب الأطفال، فهو تمييز نسبة أي تمييز ملحوظ منصوب. التمييز الملفوظ يفسر لفظا مبهما مذكورا قبله كالعدد والوزن والكيل والمساحة، وهذا غير موجود هنا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q2', 'exam_primary_2018_arabic_jan', 2, 'النواسخ — كان', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة في ما يلي:', false, '[{"id": "A", "text": "كانت هاتان اللغتان متآخيتان وجودا وعدما."}, {"id": "B", "text": "كانت هاتان اللغتان متآخيتين وجودا وعدما."}, {"id": "C", "text": "كانت هاتين اللغتين متآخيتان وجودا وعدما."}, {"id": "D", "text": "كانت هاتين اللغتان متآخيتان وجودا وعدما."}]'::jsonb, ARRAY['B']::text[], '"كان" ترفع الاسم وتنصب الخبر. "هاتان" اسم إشارة مبني على الألف في محل رفع اسم كان، و"اللغتان" بدل مرفوع بالألف، و"متآخيتين" خبر كان منصوب بالياء لأنه مثنى.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q3', 'exam_primary_2018_arabic_jan', 3, 'النواسخ — ليت', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة السليمة مما يلي:', false, '[{"id": "A", "text": "ليت الكلماتَ المستعملةَ في أدب الأطفال مؤديةٌ معانيها."}, {"id": "B", "text": "ليت الكلماتَ المستعملةِ في أدب الأطفال مؤديةٌ معانيها."}, {"id": "C", "text": "ليت الكلماتِ المستعملةِ في أدب الأطفال مؤديةٌ معانيها."}, {"id": "D", "text": "ليت الكلماتِ المستعملةَ في أدب الأطفال مؤديةٌ معانيها."}]'::jsonb, ARRAY['D']::text[], '"ليت" تنصب الاسم وترفع الخبر. "الكلمات" جمع مؤنث سالم ينصب بالكسرة نيابة عن الفتحة (الكلماتِ)، و"المستعملةَ" نعت تابع لمنعوته في النصب، وعلامته الفتحة لأنه مفرد، و"مؤديةٌ" خبر ليت مرفوع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q4', 'exam_primary_2018_arabic_jan', 4, 'فهم النص', 'تبعا للنص، ما هو السبب الذي يجعل القراءة مهمة صعبة على الأطفال؟ ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح مما يلي:', false, '[{"id": "A", "text": "لأنهم لا يرغبون في استخدام مخزونهم اللغوي كله."}, {"id": "B", "text": "لأنهم لا يرغبون في توظيف خبرات الجماعة كلها."}, {"id": "C", "text": "لأنهم لا يستطيعون توظيف مخزون الجماعة اللغوي كله."}, {"id": "D", "text": "لأنهم لا يميزون بين لغة الأم كلها وبين الواقع."}]'::jsonb, ARRAY['C']::text[], 'يقول النص إن الطفل حين يقرأ يفك رموز شفرة الجماعة، وعليه أن يستخدم خبرة الجماعة وتجاربها، لكن خبرته ما زالت في بدايتها ومخزونه اللغوي لم يتكون بعد. المشكلة إذن عجز عن توظيف مخزون الجماعة اللغوي، لا غياب رغبة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q5', 'exam_primary_2018_arabic_jan', 5, 'المصادر', 'صل(ي) بسهم بين الفعل ومصدره في ما يلي:
1. كَرَّمَ
2. أَكْرَمَ
3. تَكَرَّمَ
4. كَرُمَ', false, '[{"id": "1", "text": "إكرام"}, {"id": "2", "text": "كَرَم"}, {"id": "3", "text": "تكريم"}, {"id": "4", "text": "تكارُم"}, {"id": "5", "text": "تكرُّم"}]'::jsonb, ARRAY['3','1','5','2']::text[], 'مصدر "فعَّل" قياسه "تفعيل": كرّم تكريما. ومصدر "أفعل" "إفعال": أكرم إكراما. ومصدر "تفعّل" "تفعُّل": تكرّم تكرُّما. أما "كرُم" فثلاثي مجرد مصدره سماعي: الكَرَم. ويبقى "تكارُم" مصدر "تكارم" ولا مقابل له.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←ج (تكريم)، 2←أ (إكرام)، 3←هـ (تكرُّم)، 4←ب (كَرَم).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q6', 'exam_primary_2018_arabic_jan', 6, 'البدل', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة التي تتضمن "بدلا" مما يلي:', false, '[{"id": "A", "text": "ربع كتاب أدب الأطفال من العرب لهم إلمام بهذا الأدب."}, {"id": "B", "text": "كتاب أدب الأطفال من العرب ربعهم لهم إلمام بهذا الأدب."}, {"id": "C", "text": "كتاب أدب الأطفال من العرب كلهم لهم إلمام بهذا الأدب."}, {"id": "D", "text": "كل كتاب أدب الأطفال من العرب لهم إلمام بهذا الأدب."}]'::jsonb, ARRAY['B']::text[], '"ربعهم" بعد "كتاب أدب الأطفال" بدل بعض من كل، وفيه الضمير العائد على المبدل منه. في (ج) "كلهم" توكيد معنوي، وفي (أ) و(د) جاءت "ربع" و"كل" في صدر الجملة مبتدأ، فلا بدل فيهما.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q7', 'exam_primary_2018_arabic_jan', 7, 'الإملاء — الألف الفارقة والمصدر', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجملة المكتوبة بطريقة صحيحة في ما يلي:', false, '[{"id": "A", "text": "لا تسيروا بمحادات الطريق"}, {"id": "B", "text": "لا تسيرو بمحاذات الطريق"}, {"id": "C", "text": "لا تسيروا بمحاداة الطريق"}, {"id": "D", "text": "لا تسيروا بمحاذاة الطريق"}]'::jsonb, ARRAY['D']::text[], 'الفعل المضارع المسند إلى واو الجماعة تلحقه الألف الفارقة: "لا تسيروا". والمصدر من "حاذى" هو "محاذاة" بالذال، وتكتب تاؤه مربوطة لأنه مفرد مؤنث.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q8', 'exam_primary_2018_arabic_jan', 8, 'الإملاء — الهمزة المتطرفة', 'ضع(ي) علامة (X) أمام الكلمة المكتوبة بطريقة صحيحة.', false, '[{"id": "A", "text": "مُمتلِئ"}, {"id": "B", "text": "مُمتلِيء"}, {"id": "C", "text": "مُمتلِأ"}, {"id": "D", "text": "ممتلؤ"}]'::jsonb, ARRAY['A']::text[], 'الهمزة المتطرفة تكتب حسب حركة الحرف الذي قبلها. ما قبلها هنا اللام المكسورة، والكسرة تناسبها الياء، فتكتب الهمزة على نبرة: "ممتلِئ".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q9', 'exam_primary_2018_arabic_jan', 9, 'النداء — أنواع المنادى', 'صل(ي) بسهم بين الجملة ونوع النداء الذي تتضمنه في ما يلي:
1. يا مُحمَّدُ، انتق مواضيع مثيرة.
2. يا مؤلّفَ الكتب، انتق مواضيع مثيرة.
3. يا مؤلّفاً، انتق مواضيع مثيرة.
4. يا مؤلّفُ، انتق مواضيع مثيرة.', false, '[{"id": "1", "text": "منادى شبيه بالمضاف"}, {"id": "2", "text": "منادى نكرة مقصودة"}, {"id": "3", "text": "منادى مضاف"}, {"id": "4", "text": "منادى مفرد معرفة"}, {"id": "5", "text": "منادى نكرة غير مقصودة"}]'::jsonb, ARRAY['4','3','5','2']::text[], '"محمد" علم مفرد فهو منادى مفرد معرفة مبني على الضم. "مؤلف الكتب" منادى مضاف منصوب. "مؤلفا" بالتنوين لا يقصد شخصا بعينه، فهو نكرة غير مقصودة منصوبة. "مؤلفُ" مبني على الضم لأنه يقصد مؤلفا معينا، فهو نكرة مقصودة. ويبقى الشبيه بالمضاف بلا مقابل.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←د (منادى مفرد معرفة)، 2←ج (منادى مضاف)، 3←هـ (منادى نكرة غير مقصودة)، 4←ب (منادى نكرة مقصودة).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q10', 'exam_primary_2018_arabic_jan', 10, 'النسبة', 'ضع(ي) علامة (X) في الخانة المقابلة للمنسوب الصحيح إلى كلمة "الصّحافة" في ما يلي:', false, '[{"id": "A", "text": "الصَّحافِيّ"}, {"id": "B", "text": "الصِّحافِيّ"}, {"id": "C", "text": "الصَّحَفِيّ"}, {"id": "D", "text": "الصُّحُفِيّ"}]'::jsonb, ARRAY['B']::text[], '"الصِّحافة" (بكسر الصاد) هي مهنة جمع الأخبار ونشرها، والنسبة إليها مع الإبقاء على بنيتها "الصِّحافِيّ" بحذف تاء التأنيث وإلحاق ياء النسب، وهو ما أقره مجمع اللغة العربية بالقاهرة. "الصَّحَفِيّ" نسبة إلى "صحيفة" على وزن فعيلة، و"الصُّحُفِيّ" نسبة إلى الجمع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q11', 'exam_primary_2018_arabic_jan', 11, 'إعراب الفعل المضارع', 'ضع(ي) علامة (X) في الخانة المقابلة للجواب الصحيح: "...إلى قارئ صامت لن يُعطِيَك رأيه". "يعطيك" في هذه الجملة فعل مضارع منصوب وعلامة نصبه:', false, '[{"id": "A", "text": "الفتحة المقدرة على الياء، منع من ظهورها الاستثقال."}, {"id": "B", "text": "الفتحة الظاهرة على آخره."}, {"id": "C", "text": "الفتحة المقدرة على الياء، منع من ظهورها التعذر."}, {"id": "D", "text": "الفتحة الظاهرة على الكاف."}]'::jsonb, ARRAY['B']::text[], 'المضارع المعتل الآخر بالياء أو الواو تظهر عليه الفتحة لخفتها: "لن يعطيَ". الحركة تقدر على الياء في الرفع (الضمة) لا في النصب. والتعذر يخص الألف، والكاف ضمير متصل في محل نصب مفعول به لا تقع عليه علامة الإعراب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q12', 'exam_primary_2018_arabic_jan', 12, 'المفاعيل', 'صل(ي) بسهم بين نوع المفعول والجملة التي تتضمنه في ما يلي:
1. المفعول فيه
2. المفعول المطلق
3. المفعول لأجله
4. المفعول به', false, '[{"id": "1", "text": "تصبح لغة الأطفال أمرا معقدا."}, {"id": "2", "text": "يقرأ الأطفال رغبة في الاستفادة."}, {"id": "3", "text": "تحكي الجدات القصص في المساء."}, {"id": "4", "text": "لا تُستخدم مستويات اللغة في أدب الأطفال الاستخدام الأمثل."}, {"id": "5", "text": "تُقرأ القصص صباحا ومساء."}]'::jsonb, ARRAY['5','4','2','3']::text[], '"صباحا ومساء" ظرفا زمان منصوبان (مفعول فيه). "الاستخدام" مصدر من لفظ الفعل "تستخدم" يبين نوعه (مفعول مطلق). "رغبة" تبين سبب القراءة (مفعول لأجله). "القصص" وقع عليها فعل الحكي (مفعول به). أما "أمرا" في (أ) فخبر "تصبح".', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←هـ (تُقرأ القصص صباحا ومساء)، 2←د (لا تُستخدم... الاستخدام الأمثل)، 3←ب (يقرأ الأطفال رغبة في الاستفادة)، 4←ج (تحكي الجدات القصص في المساء).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q13', 'exam_primary_2018_arabic_jan', 13, 'الإملاء — همزة الوصل والقطع', 'ضع(ي) علامة (X) داخل الخانة المقابلة للكلمة المكتوبة بطريقة صحيحة في ما يلي:', false, '[{"id": "A", "text": "الإسم"}, {"id": "B", "text": "الإحمرار"}, {"id": "C", "text": "الإستقبال"}, {"id": "D", "text": "الإثنان"}]'::jsonb, ARRAY['B']::text[], 'الكلمات الأربع كما طبعت في الورقة تحمل همزة قطع تحت الألف، والصواب في جميعها همزة الوصل: الاسم، الاحمرار، الاستقبال، الاثنان (الاسم والاثنان من الأسماء المبدوءة بهمزة وصل، والاحمرار والاستقبال مصدرا فعلين خماسي وسداسي). اعتمدت عناصر الإجابة الرسمية الجواب (ب)، والراجح أن الكلمة "الاحمرار" كتبت في الأصل دون همزة ثم شوهتها الطباعة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, '⚠ الكلمات الأربع كما طبعت في الورقة تحمل همزة قطع، والصواب في جميعها همزة الوصل؛ اعتمدت عناصر الإجابة الرسمية الجواب (ب)، والراجح أن "الاحمرار" كتبت في الأصل دون همزة ثم شوهتها الطباعة.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q14', 'exam_primary_2018_arabic_jan', 14, 'إعراب الجمل', 'صل(ي) بسهم بين ما هو وارد بين قوسين في المجموعة الثانية وإعرابه في المجموعة الأولى:
1. جملة حال
2. جملة صفة
3. جملة خبر
4. شبه جملة خبر', false, '[{"id": "1", "text": "كان الولد (يبتسم في الساحة)."}, {"id": "2", "text": "(في الساحة) طفل."}, {"id": "3", "text": "جاء ولد (يبتسم)."}, {"id": "4", "text": "جاء الولد (يبتسم)."}, {"id": "5", "text": "يبتسم الولد (في الساحة)."}]'::jsonb, ARRAY['4','3','1','2']::text[], 'الجملة بعد المعرفة حال: "جاء الولد يبتسم". وبعد النكرة صفة: "جاء ولد يبتسم". "يبتسم في الساحة" في محل نصب خبر كان. "في الساحة" في (ب) شبه جملة في محل رفع خبر مقدم والمبتدأ "طفل". أما في (هـ) فشبه الجملة متعلق بالفعل.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←د (جاء الولد يبتسم)، 2←ج (جاء ولد يبتسم)، 3←أ (كان الولد يبتسم في الساحة)، 4←ب (في الساحة طفل).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q15', 'exam_primary_2018_arabic_jan', 15, 'الفعل المجرد والمزيد', 'حدد(ي)، من بين الأفعال الآتية، الفعل المجرد بوضع علامة (X) في الخانة المقابلة له:', false, '[{"id": "A", "text": "لم يضطرب ..."}, {"id": "B", "text": "لم يَعِ ..."}, {"id": "C", "text": "لم يُكْرِم ..."}, {"id": "D", "text": "لم يكرّر ..."}]'::jsonb, ARRAY['B']::text[], '"لم يع" من "وعى"، وحروفه كلها أصلية (و ع ي) فهو ثلاثي مجرد، وحذفت فاؤه في المضارع ولامه بالجزم. "يضطرب" من "اضطرب" مزيد بالهمزة والتاء، و"يكرم" من "أكرم" مزيد بالهمزة، و"يكرّر" من "كرّر" مزيد بالتضعيف.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q16', 'exam_primary_2018_arabic_jan', 16, 'الفعل المعتل — أنواعه', 'صل(ي) بسهم بين الفعل ونوعه فيما يلي:
1. فعل لفيف مقرون
2. فعل منقوص
3. فعل لفيف مفروق
4. فعل مثال', false, '[{"id": "1", "text": "لم ييْأس ..."}, {"id": "2", "text": "لم يشْتك ..."}, {"id": "3", "text": "لم يَعُدْ ..."}, {"id": "4", "text": "لم يَحْتَو ..."}, {"id": "5", "text": "لم يَقِ ..."}]'::jsonb, ARRAY['4','2','5','1']::text[], '"احتوى" أصوله (ح و ي) فيها حرفا علة متجاوران، فهو لفيف مقرون. "اشتكى" أصوله (ش ك و) معتل الآخر، فهو ناقص (عبرت عنه الورقة بالمنقوص). "وقى" أصوله (و ق ي) حرفا علة يفصل بينهما حرف صحيح، فهو لفيف مفروق. "يئس" فاؤه ياء، فهو مثال. أما "عاد" فأجوف.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←د (لم يَحْتَو)، 2←ب (لم يشْتك)، 3←هـ (لم يَقِ)، 4←أ (لم ييْأس).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q17', 'exam_primary_2018_arabic_jan', 17, 'الاسم المنقوص والمقصور والممدود', 'صل(ي) بسهم بين الاسم ونوعه في ما يلي:
1. اسم منقوص
2. اسم مقصور
3. اسم ممدود
4. اسم صحيح', false, '[{"id": "1", "text": "حمراء"}, {"id": "2", "text": "مخبأ"}, {"id": "3", "text": "عاصٍ"}, {"id": "4", "text": "فتى"}]'::jsonb, ARRAY['3','4','1','2']::text[], '"عاص" آخره ياء لازمة مكسور ما قبلها (حذفت للتنوين)، فهو منقوص. "فتى" آخره ألف لازمة، فهو مقصور. "حمراء" آخره همزة قبلها ألف زائدة، فهو ممدود. "مخبأ" آخره همزة قبلها فتحة، فهو صحيح الآخر.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←ج (عاصٍ)، 2←د (فتى)، 3←أ (حمراء)، 4←ب (مخبأ).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q18', 'exam_primary_2018_arabic_jan', 18, 'فهم النص — المرادف', 'اختر المرادف الصحيح لكلمة "الضآلة" تبعا للنص مما يلي، وذلك بوضع علامة (X) داخل الخانة المناسبة:', false, '[{"id": "A", "text": "القلة"}, {"id": "B", "text": "الصغر"}, {"id": "C", "text": "البساطة"}, {"id": "D", "text": "النحافة"}]'::jsonb, ARRAY['A']::text[], 'يقول النص إن الحصيلة اللغوية للطفل "لا بد أن تكون غاية في الضآلة"، أي قليلة لا تكفيه لفك رموز اللغة. فالمعنى في السياق هو القلة في المقدار، لا الصغر في الحجم ولا النحافة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q19', 'exam_primary_2018_arabic_jan', 19, 'العدد', 'ضع(ي) علامة (X) في الخانة أمام الجملة التي كتب فيها العددان (12) و(7) بطريقة صحيحة:', false, '[{"id": "A", "text": "قرأ الأطفال اثنا عشرة قصة وسبعة مجلات."}, {"id": "B", "text": "قرأ الأطفال اثنتا عشرة قصة وسبع مجلات."}, {"id": "C", "text": "قرأ الأطفال اثني عشرة قصة وسبعة مجلات."}, {"id": "D", "text": "قرأ الأطفال اثنتي عشرة قصة وسبع مجلات."}]'::jsonb, ARRAY['D']::text[], 'العدد 12 يوافق المعدود في جزأيه: "اثنتي عشرة قصة"، ويعرب صدره إعراب المثنى فينصب بالياء لأنه مفعول به. والعدد 7 يخالف المعدود: المفرد "مجلة" مؤنث فيقال "سبع مجلات".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q20', 'exam_primary_2018_arabic_jan', 20, 'الإعلال', 'صل(ي) بسهم بين نوع الإعلال والاسم الذي يتضمنه في ما يلي:
1. إعلال بالحذف
2. إعلال بالقلب
3. إعلال بالنقل والحذف
4. إعلال بالتسكين', false, '[{"id": "1", "text": "مَقول"}, {"id": "2", "text": "يدْعو"}, {"id": "3", "text": "نَمْ"}, {"id": "4", "text": "لن يدْعوَ"}, {"id": "5", "text": "ميزان"}]'::jsonb, ARRAY['3','5','1','2']::text[], '"نم" أمر من "نام" حذفت ألفه لالتقاء الساكنين. "ميزان" أصلها "موزان" قلبت الواو ياء لسكونها بعد كسر. "مقول" أصلها "مقوول" نقلت ضمة الواو إلى القاف ثم حذفت إحدى الواوين. "يدعو" أصلها "يدعوُ" سكنت الواو لثقل الضمة عليها. أما "لن يدعوَ" فلا إعلال فيها لظهور الفتحة.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←ج (نَمْ)، 2←هـ (ميزان)، 3←أ (مَقول)، 4←ب (يدْعو).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q21', 'exam_primary_2018_arabic_jan', 21, 'الجموع', 'صل(ي) بسهم بين الاسم وجمعه المناسب في ما يلي:
1. جمع المذكر السالم
2. جمع المؤنث السالم
3. جمع تكسير
4. منتهى الجموع', false, '[{"id": "1", "text": "نبات"}, {"id": "2", "text": "سيارات"}, {"id": "3", "text": "أساطير"}, {"id": "4", "text": "نافذون"}, {"id": "5", "text": "رجال"}]'::jsonb, ARRAY['4','2','5','3']::text[], '"نافذون" مفرده "نافذ" سلم بناؤه مع زيادة الواو والنون. "سيارات" مفرده "سيارة" سلم مع زيادة الألف والتاء. "رجال" تغير فيه بناء المفرد "رجل". "أساطير" على وزن "أفاعيل"، بعد ألف تكسيره حرفان أوسطهما ساكن، فهو صيغة منتهى الجموع. "نبات" مفرد.', 'matching', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'مطابقة: 1←د (نافذون)، 2←ب (سيارات)، 3←هـ (رجال)، 4←ج (أساطير).')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q22', 'exam_primary_2018_arabic_jan', 22, 'فهم النص — المرادف', 'ضع(ي) علامة (X) داخل الخانة المناسبة للمرادف الأنسب للعبارة "أخفى امتعاضه"، في ما يلي:', false, '[{"id": "A", "text": "أخفى انفعاله"}, {"id": "B", "text": "أخفى توتره"}, {"id": "C", "text": "أخفى اشمئزازه"}, {"id": "D", "text": "أخفى غضبه"}]'::jsonb, ARRAY['C']::text[], 'الامتعاض هو الاستياء من أمر لا يرضاه المرء والنفور منه. والكاتب الكبير نفر من اختيار السارد الكتابة للأطفال، فأقرب المرادفات "الاشمئزاز". الانفعال والتوتر أعم، والغضب أشد ولا يدل على النفور من الشيء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q23', 'exam_primary_2018_arabic_jan', 23, 'النعت', 'حدد الإعراب الصحيح لكلمة (المختلفة) في الجملة الآتية، وذلك بوضع علامة (X) داخل الخانة المناسبة: "تستطيع أن تستخدم مستويات اللغة المختلفة"', false, '[{"id": "A", "text": "نعت تابع لمنعوته (مستويات) في نصبه"}, {"id": "B", "text": "نعت تابع لمنعوته (اللغة) في جره"}, {"id": "C", "text": "نعت تابع لمنعوته (مستويات) في جره"}, {"id": "D", "text": "نعت تابع لمنعوته (اللغة) في نصبه"}]'::jsonb, ARRAY['A']::text[], 'الجملة غير مشكولة فهي تحتمل وجهين صحيحين نحويا: "المختلفةَ" نعتا لـ"مستويات" منصوبا، و"المختلفةِ" نعتا لـ"اللغة" مجرورا (الجواب ب). اعتمدت عناصر الإجابة الرسمية (أ) على المعنى: المقصود اختلاف المستويات، أي تعدد مستويات اللغة. الخياران (ج) و(د) خاطئان في كل الأحوال.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, '⚠ الجملة غير مشكولة فتحتمل وجهين صحيحين نحويا (أ) و(ب)؛ اعتمدت عناصر الإجابة الرسمية (أ) على المعنى.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q24', 'exam_primary_2018_arabic_jan', 24, 'الفعل الصحيح والمعتل', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجواب الصحيح. "يحاول" فعل:', false, '[{"id": "A", "text": "صحيح ومزيد ومتعد"}, {"id": "B", "text": "معتل ومزيد ومتعد"}, {"id": "C", "text": "صحيح ومزيد ولازم"}, {"id": "D", "text": "معتل ومزيد ولازم"}]'::jsonb, ARRAY['B']::text[], '"يحاول" من "حاول"، أصوله (ح و ل) وعينه واو فهو معتل أجوف. زيدت فيه الألف بعد الفاء (فاعل) فهو مزيد. ويأخذ مفعولا به (حاول الأمر)، فهو متعد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, NULL)
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q25', 'exam_primary_2018_arabic_jan', 25, 'التعبير — المقارنة', 'قارن(ي) بين رأي الكاتب ورأي من أسدى له النصيحة في مسألة الكتابة للأطفال، مع إبراز وجهة نظرك في القضية موضوع النقاش. (من ستة أسطر إلى ثمانية أسطر) (6 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة المنتظرة: رأي الناصح (الكاتب الكبير): الكتابة للأطفال اختيار خاطئ، لأنها تحرم الكاتب من مستويات اللغة المختلفة ومن حرية تناول موضوعات كثيرة، وتبعده عن الواقع إلى عوالم الوهم والخيال، وتضعه أمام قارئ صامت لا يعطيه رأيه ولا يحفظ اسمه؛ وفيه ضمنيا أن كتاب الأطفال كتاب "درجة ثانية". رأي الكاتب: يتمسك باختياره، ويعترف بأن النصيحة على قسوتها وضعت اليد على العصب الحساس لمشكلات الكتابة للأطفال، وأهمها اختيار لغة تناسب حصيلة الطفل اللغوية؛ فالكتابة للطفل عنده عمل صعب ومسؤول لا قناع للضعف. وجهة نظر المترشح(ة) معللة: مثلا الكتابة للأطفال فن قائم بذاته يحتاج لغة دقيقة وخبرة بالطفل، وله أثر في بناء القارئ، مع حجة أو مثال. معايير التصحيح: الملاءمة (1 ن)، الانسجام (2 ن)، سلامة اللغة (2 ن)، الحجم وجودة العرض (1 ن). ويشترط ألا يتجاوز المنتج تسعة أسطر ولا يقل عن خمسة، مع خط واضح دون تشطيب.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (6 ن)؛ الجواب عناصر الإجابة المنتظرة من شبكة التصحيح الرسمية كما نقلها المصدر.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q26 (ديداكتيك 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q26', 'exam_primary_2018_arabic_jan', 26, 'ديداكتيك اللغة العربية', 'أنتجي/أنتج نصا قرائيا يعالج العنف في الوسط المدرسي، لفائدة المستوى السادس من التعليم الابتدائي، (من 5 إلى 7 أسطر، وبدون شكل). (8 نقط)', false, '[]'::jsonb, ARRAY[]::text[], 'يكتب المترشح(ة) نصا قرائيا من 5 إلى 7 أسطر يعالج العنف في الوسط المدرسي (شرط لازم: كل نص خارج الموضوع يأخذ 0 على 8). معايير التصحيح: الملاءمة (2 ن): نص مناسب للمستوى السادس، غير سهل مبتذل ولا صعب مستعص، يتناول أشكال العنف المعنوي والمادي وأطرافه (أساتذة، تلاميذ، أسر، محيط)، ويمكن أن يكون سردا أو حوارا أو وصفا أو نصا إخباريا. الانسجام (2 ن): عناصر وأفكار مترابطة غير متناقضة. سلامة اللغة (2 ن): خطآن على الأكثر 2 ن، من ثلاثة إلى أربعة 1 ن، أكثر من أربعة 0. جودة عرض المنتج (1 ن): كتابة واضحة مقروءة مع علامات الترقيم الملائمة. الحجم (1 ن): من 5 إلى 7 أسطر. لا يطلب الشكل، ولا يحاسب عليه المترشح.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (8 ن)؛ الجواب شبكة التصحيح الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 1.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q27 (ديداكتيك 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q27', 'exam_primary_2018_arabic_jan', 27, 'ديداكتيك اللغة العربية', 'حدد/حددي هدفين تعلميين يمكن أن يشتغل عليهما النص القرائي الذي أنتجته. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'هدفان يجسد كل منهما قدرة (التمييز، التحليل، الفهم، الملاحظة...) مطبقة على محتوى معرفي محدد، مثلا: أن يوظف المتعلم معجما ملائما مناهضا للعنف؛ أن يستخلص المتعلم الفكرة الرئيسية للنص؛ أن يستضمر قيمة الاحترام والتسامح؛ أن يفهم معاني النص؛ أن يقوم النص ويناقش أفكاره. (نقطة لكل هدف صحيح). تشترط عناصر الإجابة الرسمية أن يصاغ الهدف التعلمي بفعل يدل على قدرة قابلة للملاحظة، مرتبطة بمحتوى النص المنتج.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 2.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q28 (ديداكتيك 3.1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q28', 'exam_primary_2018_arabic_jan', 28, 'ديداكتيك اللغة العربية', 'للقراءة الصامتة أهمية بالغة في المدرسة الابتدائية: اذكر/اذكري عنصرين رئيسيين يبرزان أهمية القراءة الصامتة. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقبل كل عنصر يبرز أهمية القراءة الصامتة ويميزها عن القراءة الجهرية، مثلا: تحترم الإيقاعات الفردية الخاصة بكل قارئ، فيتوقف أنى يريد؛ لا تفرض على الآخرين إيقاع الفرد القارئ، خلافا للقراءات الفردية الجهرية؛ لا تزعج الآخرين داخل جماعة القسم؛ تسمح بالرجوع إلى كلمة أو فكرة والتفاعل مع مكونات النص. (نقطة لكل عنصر). القاسم المشترك أن القراءة الصامتة تركز على الفهم وتترك لكل متعلم سرعته الخاصة.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 3.1.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q29 (ديداكتيك 3.2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q29', 'exam_primary_2018_arabic_jan', 29, 'ديداكتيك اللغة العربية', 'اذكر/اذكري معيارين مهمين لتقويم القراءة (الصامتة)، مع شرح مقتضب لكل معيار. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقبل كل معيار يسمح بالتأكد من جودة القراءة الصامتة، ولا تقبل المعايير المتعلقة بجودة النطق والإلقاء، مثلا: استخلاص المعنى العام للنص أو فكرته الرئيسية أو موضوعه؛ استخلاص المعاني الجزئية أو الأفكار الثانوية؛ فهم المعاني المباشرة (الصريحة)؛ فهم المعاني الضمنية (غير المباشرة)؛ مناقشة معاني النص وإبراز الموقف منها؛ تقويم النص؛ سرعة القراءة. (نقطة لكل معيار مناسب مشروح، في حدود معيارين). القراءة الصامتة لا تقوم بالنطق لأنها لا تسمع، بل بما يدل على الفهم وبالسرعة.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 3.2.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q30 (ديداكتيك 4.1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q30', 'exam_primary_2018_arabic_jan', 30, 'ديداكتيك اللغة العربية', 'يطرح تعلم العربية في القراءة والكتابة بالمستوى الأول من التعليم الابتدائي بعض الصعوبات: اقترحي/اقترح صعوبة معينة تتعلق بتعلم حرفين يتداخلان (يتشابهان) من حيث الرسم (الكتابة). (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقبل كل حرفين يتداخلان أو يتشابهان في الرسم: ب/ت، ن/ت، ج/ح، ع/غ، د/ذ، ر/ز...، مع إبراز نوع الصعوبة بدقة وكيف تم التوصل إليها: صعوبة بصرية في ملاحظة شكل الحرف وتفاصيله (النقط وموضعها)، أو صعوبة حركية/بصرية في إعادة رسم الشكل في الاتجاهات المناسبة، أو غير ذلك مما يرتبط برسم الحروف المتشابهة شكلا. المطلوب ليس ذكر الحرفين فقط، بل تحديد طبيعة الصعوبة: هل هي في الإدراك البصري للفرق (نقطة فوق أو تحت)، أم في المهارة الحركية لرسم الحرف.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 4.1.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q31 (ديداكتيك 4.2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q31', 'exam_primary_2018_arabic_jan', 31, 'ديداكتيك اللغة العربية', 'اقترح/اقترحي وضعية مناسبة لمعالجة هذه الصعوبة في رسم الحرفين (الكتابة)، مع إبراز كيفية تدبير هذا النشاط من حيث طريقة العمل وتقنيات التنشيط والوسائل الديدكتيكية. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية مشكلة مناسبة أو نشاطا تعلميا لمعالجة الصعوبة المحددة، مبرزا: أشكال العمل: فردي، مجموعات، جماعة كبرى، تدبير الفوارق الفردية؛ تقنيات التنشيط: لعبة، مسابقة، زوبعة، مناقشة، نشيد، لعب أدوار...؛ الوسائل: وسائل ملموسة، أدوات رقمية، ألوان، مجسمات (حروف من عجين أو ورق مقوى)، لوحة... مثال: لعبة تصنيف بطاقات كلمات حسب الحرف (ب/ت) مع تلوين النقط، ثم رسم الحرفين في الهواء وعلى اللوحة ثم في الكراسة.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 4.2.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q32 (ديداكتيك 4.3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q32', 'exam_primary_2018_arabic_jan', 32, 'ديداكتيك اللغة العربية', 'اقترح/اقترحي صعوبة معينة تتعلق بتعلم حرفين يتداخلان (يتشابهان) من حيث النطق (القراءة). (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقبل كل حرفين يتداخلان أو يتشابهان على مستوى النطق والصوت (تقارب المخارج): س/ص، د/ذ، ت/ث، د/ض، ج/ش...، مع إبراز نوع الصعوبة بدقة وكيف تم التوصل إليها: هل هي صعوبة متعلقة باللغة العربية ذاتها، أم بطريقة النطق المحلية، أم صعوبات شخصية تعود إلى بعض المتعلمين. الحروف المتقاربة المخرج تلتبس عند السماع والنطق، ويطلب من المترشح أن يحدد مصدر الالتباس: طبيعة الصوتين، أو تأثير الدارجة، أو مشكل فردي.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 4.3.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q33 (ديداكتيك 4.4)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q33', 'exam_primary_2018_arabic_jan', 33, 'ديداكتيك اللغة العربية', 'اقترح/اقترحي وضعية مناسبة لمعالجة هذه الصعوبة في نطق الحرفين (القراءة)، مع إبراز كيفية تدبير هذا النشاط من حيث طريقة العمل وتقنيات التنشيط والوسائل الديدكتيكية. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'يقترح المترشح(ة) وضعية مشكلة مناسبة أو نشاطا تعلميا لمعالجة صعوبة النطق المحددة، مبرزا: أشكال العمل: فردي، مجموعات، جماعة كبرى، تدبير الفوارق الفردية؛ تقنيات التنشيط: لعبة، مسابقة، زوبعة، مناقشة، نشيد، لعب أدوار، محاكاة...؛ الوسائل: رسوم، أدوات رقمية (تسجيلات صوتية)... مثال: الاستماع إلى ثنائيات صغرى (سار/صار) ورفع بطاقة الحرف المسموع، ثم محاكاة النطق أمام المرآة مع بيان موضع اللسان، ثم قراءة كلمات وجمل تتضمن الحرفين.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 4.4.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q34 (ديداكتيك 5)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q34', 'exam_primary_2018_arabic_jan', 34, 'ديداكتيك اللغة العربية', 'بعض أساتذة المستوى الأول يدرسون حروف اللغة العربية بالطريقة الأبجدية التقليدية، بحيث يسمون الحروف بأسمائها المتعارف عليها في اللغة العربية (الألف، الكاف، الجيم، الخاء، العين، الدال، ...إلخ)؛ اذكري/اذكر عنصرين سلبيين لهذه الطريقة بالنسبة للمستوى الأول الابتدائي. (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'من سلبيات هذه الطريقة: صعوبات مرتبطة بسماع صوت الحرف (الفونيم) المقصود مع تسميته الأبجدية المنطوقة، مما يعوق نمو الوعي الصوتي لدى المتعلم: الفونيم "ج" يسمى وينطق "جيم"، فيلتبس عليه الأمر إذ يسمع أصواتا مختلفة لشيء واحد؛ صعوبات مرتبطة بالشكل المرئي للحرف (الكرافيم): يرى شكلا واحدا مكتوبا ويسمع أكثر من حرف، فلا يتطابق عدد الحروف المرئية وعدد الحروف المسموعة؛ صعوبات مرتبطة بالترتيب الأبجدي التقليدي الذي قد لا يتوافق مع الترتيب البيداغوجي المبني على أولويات تيسير التعلم؛ قراءة المتعلم الكلمة مفككة بالتسميات الأبجدية للحروف المكونة لها. أصل المشكل أن اسم الحرف (جيم) غير صوته (جَ)، والقراءة تحتاج الربط بين الصوت والرمز لا بين الاسم والرمز.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 5.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q35 (ديداكتيك 6.1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q35', 'exam_primary_2018_arabic_jan', 35, 'ديداكتيك اللغة العربية', 'اذكر/اذكري سببا رئيسيا لكل خطإ من الأخطاء التالية، والتي قد يقع فيها بعض تلاميذ المستوى الأول من التعليم الابتدائي، مع إبراز كيفية معالجة كل خطإ: الخطأ الأول: صبورة (والصحيح سبورة). (2 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'السبب: قد يعود إلى طريقة نطق الأستاذ لحرف السين في كلمة "سبورة" دون تدقيق مخرجه فينطق صادا، أو إلى سماع الكلمة بنطق خاطئ من الأقران أو الأسرة أو المحيط عامة. المعالجة: أنشطة منهجية لرصد هذه الصعوبة وما شابهها، مع تمارين وتداريب متكررة لتصحيح النطق، مثل التمييز السمعي بين السين والصاد في ثنائيات صغرى، ثم الكتابة بعد الإملاء. الخطأ إملائي في ظاهره لكنه صوتي في أصله: المتعلم يكتب ما يسمع، فإذا سمع صادا كتب صادا، لذلك تبدأ المعالجة بتصحيح النطق والسماع.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (2 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 6.1.')
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

-- أسئلة امتحان: اللغة العربية — التخصص والديداكتيك (دورة يناير 2018) — Q36 (ديداكتيك 6.2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_arabic_jan_q36', 'exam_primary_2018_arabic_jan', 36, 'ديداكتيك اللغة العربية', 'اذكر/اذكري سببا رئيسيا لكل خطإ من الأخطاء التالية، والتي قد يقع فيها بعض تلاميذ المستوى الأول من التعليم الابتدائي، مع إبراز كيفية معالجة كل خطإ: الخطأ الثاني: قلمُن (والصحيح قلمٌ). (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'السبب: مصدر الخطإ اللغة العربية نفسها التي لا تكتب دائما بشكل متطابق صوتا ورسما؛ فالتنوين ينطق نونا ولا تكتب له نون، والمتعلم يكتب بطريقة صوتية ما يسمعه. المعالجة: أنشطة تجعل المتعلمين يميزون بين التنوين الذي يأتي في نهايات الكلمات وبين النون الساكنة التي تكتب في نهاية بعض الكلمات (مثلا تصنيف كلمات: قلمٌ/مِنْ، كتابٌ/لَنْ، قراءة وكتابة متكررة، ربط رمز التنوين بالصوت المسموع). التنوين نون ساكنة زائدة تلفظ ولا تكتب، فيكتبها المبتدئ حرفا لأنه يسمعها؛ لذلك يقوم العلاج على المقابلة بين التنوين والنون الأصلية.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-1018/', true, 'سؤال مفتوح (4 ن)؛ الجواب عناصر الإجابة الرسمية كما نقلها المصدر. ترقيمه في ورقة الامتحان: ديداكتيك 6.2.')
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
