-- ====================================================================
-- مباراتي — امتحان علوم التربية، دورة 2023 (التعليم الابتدائي)
-- ====================================================================
-- المصدر: ملف الحل solved/2023/علوم التربية - 2023.md
--   (الحل: تصحيح مقترح منشور على manasseb.com — حل من إعداد الموقع،
--    وليس تصحيحا رسميا. الموقع نفسه يقول: «تصحيح مقترح من إعداد مناصب
--    للاستئناس، وليس تصحيحًا رسميًا. قد يتضمن أخطاء».)
--   رابط صفحة التصحيح: https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/
--   ملف الامتحان: exams-ibtida2i/2023/علوم التربية.pdf (5 صفحات، 2/6 إلى 6/6؛
--   رمز الموضوع 4VL601P — التخصص المزدوج وتخصص اللغة الأمازيغية، الصيغة العربية).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q101 إلى Q125 وخياراته الأربعة (A-D) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة هي أجوبة manasseb المنشورة؛ العلامات اليدوية الظاهرة على
--     صورة الصفحة 2/6 في صفحة مناصب توافق أجوبة Q101 (C) وQ102 (B) وQ103 (B).
--   * نسق النصوص يتبع ملف الحل حرفياً (نقطتا النهاية «:» في نهايات الجذوع،
--     والتشكيل كما في ملف الحل)؛ في ورقة الامتحان تنتهي الجذوع غالباً بفاصلة
--     عربية «،»، وهذا فرق تنسيقي فقط. ملاحظة واحدة: الفعل الأول في جذع Q103
--     مشكول في الورقة بصيغة المبني للمجهول (يُعتمد) بينما يورده ملف الحل دون
--     تشكيل (يعتمد)؛ الحروف واحدة والمعنى نفسه، فأُبقي نص ملف الحل.
--
-- المدة والمعامل: صفحة الغلاف (1/6) مفقودة من ملف PDF المحفوظ، لذلك مدة
--   الإنجاز والمعامل غير ظاهرين في الملف (الغلاف مفقود)؛ duration_minutes = 60 (حسب نفس المكوّن في 2024: 60 دقيقة، المعامل 8).
--
-- الأسئلة الموسومة (للتحقق) حسب المصدر (11 سؤالاً): Q103، Q104، Q108، Q109،
--   Q110، Q113، Q115، Q117، Q120، Q121، Q124 — سُجل التحفظ في verification_note
--   لكل سؤال منها، وبقي الجواب المعتمد هو الحل المقترح من manasseb.
--
-- Q123 — حُسم من النصوص المرجعية الرسمية (وليس من manasseb الذي تركه دون حسم):
--   وثيقة معايير التصديق على مستويات شارة «مؤسسة الريادة» تنص على ثلاثة مستويات
--   هي المطابقة، تحسين الأداء، الاستدامة — وهي بالضبط صيغة الاختيار C.
--   المصدر: educaprof.com (2024-02-15) https://www.educaprof.com/2024/02/blog-post_81.html ،
--   ويؤكده ملخص المقرر الوزاري رقم 003.26 بتاريخ 27 يناير 2026 على minhaj-jadid.com.
--
-- أسئلة متخطاة: لا شيء — جميع الأسئلة الـ25 لها جواب معتمد وأُدرجت كلها.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2023_sciences_edu_jan', 'specialty_primary', 2023, 'sciences_edu', 'علوم التربية', 'امتحان علوم التربية (دورة 2023)', 'دورة 2023', 60, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q101', 'exam_primary_2023_sciences_edu_jan', 101, 'النظرية الجشطلتية', 'من مبادئ النظرية الجشطلتية في التعلم:', false, '[{"id": "A", "text": "الكل يساوي مجموع أجزائه"}, {"id": "B", "text": "مجموع الأجزاء أكبر من الكل"}, {"id": "C", "text": "الكل أكبر من مجموع أجزائه"}, {"id": "D", "text": "الجزء يُعبّر عن الكل"}]'::jsonb, ARRAY['C']::text[], 'مبدأ الجشطلت الأساسي: الكل أكبر من مجموع أجزائه.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q102', 'exam_primary_2023_sciences_edu_jan', 102, 'البيداغوجيا — دوركهايم', 'يعتبر "إميل دوركهايم" أن البيداغوجيا وسط بين:', false, '[{"id": "A", "text": "العلم والتربية"}, {"id": "B", "text": "العلم والفن"}, {"id": "C", "text": "التربية والفن"}, {"id": "D", "text": "العلم والأخلاق"}]'::jsonb, ARRAY['B']::text[], 'يعرّف دوركهايم البيداغوجيا بأنها «نظرية عملية» تقع بين العلم والفن.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q103', 'exam_primary_2023_sciences_edu_jan', 103, 'الدعم الفردي ومعالجة الخطأ', 'يعتمد الدعم الفردي القائم على البيداغوجيا الفارقية في معالجة الخطأ:', false, '[{"id": "A", "text": "المنتظم"}, {"id": "B", "text": "المعزول"}, {"id": "C", "text": "العارض"}, {"id": "D", "text": "الدال"}]'::jsonb, ARRAY['B']::text[], 'الخطأ المعزول (الخاص بمتعلم واحد) يُعالج بدعم فردي، أما الخطأ المتكرر عند الجماعة فيُعالج بدعم جماعي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q104', 'exam_primary_2023_sciences_edu_jan', 104, 'التمثلات المسبقة — فيغوتسكي', 'ليتمكن المتعلم من تجاوز تمثل مسبق خاطئ حول موضوع ما، يقترح "فيغوتسكي":', false, '[{"id": "A", "text": "توسيع المنطقة المحاذية للنمو"}, {"id": "B", "text": "عدم التخلص من التمثلات المسبقة لأنها جزء من المعرفة"}, {"id": "C", "text": "الاستعانة بتمثلات زملائه"}, {"id": "D", "text": "جعل المتعلم يواجه وضعية مشكلة ويعدل تمثله بنفسه"}]'::jsonb, ARRAY['C']::text[], 'عند فيغوتسكي يُبنى التعلم في التفاعل الاجتماعي، فيستعين المتعلم بتمثلات أقرانه لتعديل تمثله. أما الاقتراح D فأقرب إلى بياجي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q105', 'exam_primary_2023_sciences_edu_jan', 105, 'دينامية الجماعة — القيادة الديمقراطية', 'يتمثل دور "القائد الديمقراطي" في دينامية الجماعة في كونه:', false, '[{"id": "A", "text": "يشرف بنفسه على سير كل العمليات"}, {"id": "B", "text": "يفتح المجال أمام أعضاء الجماعة لتحديد الأهداف"}, {"id": "C", "text": "يوازن بين أهدافه الشخصية والأهداف العامة للجماعة"}, {"id": "D", "text": "يوزع المهام على أعضاء الجماعة بحسب ثقته فيهم"}]'::jsonb, ARRAY['B']::text[], 'القائد الديمقراطي يشرك أعضاء الجماعة في تحديد الأهداف واتخاذ القرار.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q106', 'exam_primary_2023_sciences_edu_jan', 106, 'علم نفس النمو — النضج البيولوجي', 'يتميز النضج البيولوجي في علم نفس النمو بأنّه بكونه:', false, '[{"id": "A", "text": "عملية منظمة تعتمد على التدريب والتعلم"}, {"id": "B", "text": "نتيجة تكامل بين عوامل وراثية والاكتساب"}, {"id": "C", "text": "عملية طبيعية وتلقائية لا تحتاج إلى تعليم أو تدريب"}, {"id": "D", "text": "سيرورة مستمرة لا تكتمل إلا بمساعدة الفرد على النمو"}]'::jsonb, ARRAY['C']::text[], 'النضج عملية بيولوجية تلقائية لا تتوقف على التعلم أو التدريب.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q107', 'exam_primary_2023_sciences_edu_jan', 107, 'بورديو — العنف الرمزي', 'يعتبر "بيير بورديو" أن كل فعل تربوي، من الناحية الموضوعية، هو:', false, '[{"id": "A", "text": "علاقات رمزية"}, {"id": "B", "text": "تفاعل رمزي"}, {"id": "C", "text": "تواصل رمزي"}, {"id": "D", "text": "عنف رمزي"}]'::jsonb, ARRAY['D']::text[], 'بورديو وباسرون (إعادة الإنتاج): كل فعل تربوي هو موضوعيا عنف رمزي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q108', 'exam_primary_2023_sciences_edu_jan', 108, 'الأنشطة البدنية والرياضية', 'يعتمد المدرس (ة) في تدبير الأنشطة البدنية والرياضية بسلك التعليم الابتدائي على:', false, '[{"id": "A", "text": "دليل الأنشطة الحركية بسلك التعليم الابتدائي"}, {"id": "B", "text": "دليل الأنشطة البدنية بسلك التعليم الابتدائي"}, {"id": "C", "text": "دليل ألعاب التربية الحركية بسلك التعليم الابتدائي"}, {"id": "D", "text": "دليل الأنشطة البدنية والحركية بسلك التعليم الابتدائي"}]'::jsonb, ARRAY['D']::text[], 'يُنصح بالرجوع إلى العنوان الرسمي للدليل المعتمد في المنهاج المنقح.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q109', 'exam_primary_2023_sciences_edu_jan', 109, 'التمثل عند بياجي', 'تتحدد عملية "التمثل" عند "بياجي" بوصفها:', false, '[{"id": "A", "text": "الخريطة المعرفية عن عالم الناس والأشياء"}, {"id": "B", "text": "نموذجا مجردا وعمليا للأفكار والقيم"}, {"id": "C", "text": "استحضارا لصور ذهنية مجردة عن الواقع"}, {"id": "D", "text": "تكوينا لصورة مجردة عن الذات بمعزل عن الوسط"}]'::jsonb, ARRAY['C']::text[], 'التمثل عند بياجي هو القدرة على استحضار صور ذهنية لأشياء غائبة (الوظيفة الرمزية).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q110', 'exam_primary_2023_sciences_edu_jan', 110, 'النجاح المدرسي — فرانسوا ديبي', 'يتحقق النجاح المدرسي في نظر "فرانسوا ديبي" بشرطين اجتماعيين هما:', false, '[{"id": "A", "text": "اللغة والثقافة"}, {"id": "B", "text": "المستوى الاقتصادي والانتماء الطبقي"}, {"id": "C", "text": "المواقع والفرص"}, {"id": "D", "text": "الأصل الاجتماعي والحظوظ"}]'::jsonb, ARRAY['D']::text[], 'يربط ديبي النجاح المدرسي بالأصل الاجتماعي وبتكافؤ الحظوظ.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q111', 'exam_primary_2023_sciences_edu_jan', 111, 'تعريف التعلم', 'تشير "مجموعة التغيرات الدائمة نسبيا، والتي تحدث نتيجة مرور الفرد بتجربة، أو نتيجة تكرارها" إلى:', false, '[{"id": "A", "text": "الاستيعاب"}, {"id": "B", "text": "التعلم"}, {"id": "C", "text": "الإدراك"}, {"id": "D", "text": "النمو"}]'::jsonb, ARRAY['B']::text[], 'هذا هو التعريف الكلاسيكي للتعلم: تغير دائم نسبيا ناتج عن التجربة أو الممارسة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q112', 'exam_primary_2023_sciences_edu_jan', 112, 'السوسيوغرام', 'يدل "السوسيوغرام" على خريطة لـ:', false, '[{"id": "A", "text": "أنماط التواصل السائدة داخل الجماعة"}, {"id": "B", "text": "العلاقات الاجتماعية داخل الجماعة"}, {"id": "C", "text": "أشكال التفاعل بين الجماعة وجماعة أخرى"}, {"id": "D", "text": "تحديد الأفراد المتفوقين داخل الجماعة"}]'::jsonb, ARRAY['B']::text[], 'السوسيوغرام (مورينو) يرسم شبكة العلاقات الاجتماعية والوجدانية، من جذب ونفور، داخل الجماعة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q113', 'exam_primary_2023_sciences_edu_jan', 113, 'مراحل النمو — إريكسون', 'تقابل مرحلة "الثقة / انعدام الثقة" عند "إريك إريكسون":', false, '[{"id": "A", "text": "مرحلة الكمون عند فرويد"}, {"id": "B", "text": "المرحلة الحس حركية عند بياجي"}, {"id": "C", "text": "المرحلة التقليدية عند كولبرغ"}, {"id": "D", "text": "مرحلة الاندفاع عند فالون"}]'::jsonb, ARRAY['B']::text[], 'مرحلة الثقة/عدم الثقة تمتد من الولادة إلى نحو 18 شهرا، وتقابل المرحلة الحس حركية عند بياجي (والمرحلة الفمية عند فرويد).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q114', 'exam_primary_2023_sciences_edu_jan', 114, 'التربية الدامجة — التوحد', 'عماد طفل يعاني من "التوحد"، أشار أحد المختصين على والديه بضرورة استفادته من تربية دامجة. لتحقيق ذلك يتعين:', false, '[{"id": "A", "text": "إلحاقه بمدرسة تُخصّص أقساماً للأطفال في وضعية إعاقة"}, {"id": "B", "text": "أن يتلقى دروسا من أساتذة متخصصين"}, {"id": "C", "text": "إلحاقه بقسم عادي وسط تلاميذ لا يعانون أية إعاقة"}, {"id": "D", "text": "أن يتابع دراسته بالتناوب بين المدرسة وبين المراكز المتخصصة"}]'::jsonb, ARRAY['C']::text[], 'التربية الدامجة تعني تمدرس الطفل في القسم العادي مع أقرانه، مع ما يلزمه من ملاءمات.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q115', 'exam_primary_2023_sciences_edu_jan', 115, 'القدرة المركبة', 'القدرة المركبة هي:', false, '[{"id": "A", "text": "نتيجة الدماج قدرات متعددة"}, {"id": "B", "text": "قدرة تُعالج وضعيات مركبة"}, {"id": "C", "text": "محصلة توليف بين موارد متعددة"}, {"id": "D", "text": "قدرة يمكن استثمارها في أكثر من وضعية"}]'::jsonb, ARRAY['A']::text[], 'القدرة المركبة تنتج عن اندماج عدة قدرات بسيطة. أما C (توليف موارد متعددة) فهو أقرب إلى تعريف الكفاية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q116', 'exam_primary_2023_sciences_edu_jan', 116, 'النظرية البنائية — مبادئ التعلم', 'من مبادئ التعلم في النظرية البنائية:', false, '[{"id": "A", "text": "استيعاب المتعلم معارف جديدة دون اصطدام بالوسط"}, {"id": "B", "text": "استدماج المتعلم المعارف الجديدة بعد مقاومتها"}, {"id": "C", "text": "اكتساب التعلمات اكتسابا تراكميا"}, {"id": "D", "text": "الحفاظ على المعارف والمكتسبات السابقة من التلف"}]'::jsonb, ARRAY['B']::text[], 'يقوم التعلم في البنائية على الصراع المعرفي ثم الاستدماج وإعادة التوازن.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q117', 'exam_primary_2023_sciences_edu_jan', 117, 'الأنشطة الحركية الاعتيادية', 'تتحدد مدة الأنشطة الحركية في إطار الأنشطة الاعتيادية اليومية في التعليم الابتدائي في:', false, '[{"id": "A", "text": "10 دقائق، أربع مرات أسبوعيا"}, {"id": "B", "text": "15 دقيقة، ثلاث مرات أسبوعيا"}, {"id": "C", "text": "20 دقيقة، ثلاث مرات أسبوعيا"}, {"id": "D", "text": "25 دقيقة، مرتين أسبوعيا"}]'::jsonb, ARRAY['B']::text[], 'يجب التحقق من المذكرة الرسمية الخاصة بالأنشطة الاعتيادية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q118', 'exam_primary_2023_sciences_edu_jan', 118, 'طرق العمل الجماعي — فيليبس', 'إذا قسّم المدرس جماعة المتعلمين إلى مجموعات تتكون كل واحدة منها من ستة أفراد، وكلفهم بالاشتغال على موضوع ما في مدة لا تتجاوز ستة دقائق، فإنه يكون قد اعتمد طريقة:', false, '[{"id": "A", "text": "فيليبس"}, {"id": "B", "text": "مونتينوري"}, {"id": "C", "text": "أوزبورن"}, {"id": "D", "text": "أوروسون"}]'::jsonb, ARRAY['A']::text[], 'طريقة فيليبس 6×6: ستة أفراد لمدة ست دقائق.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q119', 'exam_primary_2023_sciences_edu_jan', 119, 'النمو الأخلاقي — كولبرغ', 'حسب "كولبرغ"، يميل الطفل إلى تبني أخلاق المنفعة الشخصية خلال المرحلة:', false, '[{"id": "A", "text": "التقليدية"}, {"id": "B", "text": "ما بعد التقليدية"}, {"id": "C", "text": "ما قبل التقليدية"}, {"id": "D", "text": "في كل مراحل نموه الأخلاقي"}]'::jsonb, ARRAY['C']::text[], 'أخلاق المنفعة الشخصية (التبادل الأداتي) تنتمي إلى المستوى ما قبل التقليدي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q120', 'exam_primary_2023_sciences_edu_jan', 120, 'التربية الدامجة', 'تعد التربية الدامجة تربية:', false, '[{"id": "A", "text": "تغييرية"}, {"id": "B", "text": "توليدية"}, {"id": "C", "text": "تكاملية"}, {"id": "D", "text": "تمييزية"}]'::jsonb, ARRAY['A']::text[], 'التربية الدامجة تغيّر المدرسة لتتكيف مع كل المتعلمين، عكس الإدماج الذي يطلب من الطفل أن يتكيف.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q121
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q121', 'exam_primary_2023_sciences_edu_jan', 121, 'مونتيسوري — مراحل الطفولة', 'ترى "ماريا مونتيسوري" أن المطلب الأساس للأطفال من 6 سنوات إلى 12 سنة هو:', false, '[{"id": "A", "text": "ساعدني على الاندماج في المجتمع"}, {"id": "B", "text": "أعني على التحكم في جسدي"}, {"id": "C", "text": "ساعدني على اكتشاف العالم"}, {"id": "D", "text": "أعني على فهم الآخرين"}]'::jsonb, ARRAY['C']::text[], 'في هذه المرحلة يتجه اهتمام الطفل عند مونتيسوري إلى استكشاف العالم والثقافة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q122
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q122', 'exam_primary_2023_sciences_edu_jan', 122, 'النظرية البنائية — مسؤولية التعلم', 'التعلم، في النظرية البنائية، هو مسؤولية:', false, '[{"id": "A", "text": "المدرس بوصفه وسيطا بين المتعلم والمعرفة"}, {"id": "B", "text": "المدرسة من خلال توفير شروط التعلم"}, {"id": "C", "text": "المتعلم في تفاعله مع بيئته"}, {"id": "D", "text": "البيئة المدرسية بكل مكوناتها"}]'::jsonb, ARRAY['C']::text[], 'في البنائية يبني المتعلم معرفته بنفسه في تفاعله مع بيئته.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q123
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q123', 'exam_primary_2023_sciences_edu_jan', 123, 'شارة مؤسسة الريادة', 'تحصل مؤسسة التعليم الابتدائي على شارة "مؤسسة الريادة" وفق ثلاثة مستويات هي:', false, '[{"id": "A", "text": "جودة التعلمات والنجاعة والنتائج"}, {"id": "B", "text": "المهننة والاتقائية والفعالية"}, {"id": "C", "text": "المطابقة وتحسين الأداء والاستدامة"}, {"id": "D", "text": "التحفيز والادماج والارتقاء"}]'::jsonb, ARRAY['C']::text[], 'مناصب ترك هذا السؤال دون حسم (للتحقق) وطلب الرجوع إلى النصوص المنظمة لشارة «مؤسسة الريادة». تلك النصوص تحسمه: وثيقة معايير التصديق على مستويات الشارة تنص على ثلاثة مستويات هي: المستوى الأول: مستوى المطابقة، المستوى الثاني: مستوى تحسين الأداء، المستوى الثالث: مستوى الاستدامة — وهي بالضبط صيغة الاختيار C. المصدر: educaprof.com (2024-02-15، نقلا عن المذكرة الإطار للمشروع) https://www.educaprof.com/2024/02/blog-post_81.html ، ويؤكده ملخص المقرر الوزاري رقم 003.26 بتاريخ 27 يناير 2026 على minhaj-jadid.com.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'حسم الجواب (C) من النصوص المرجعية الرسمية: وثيقة معايير التصديق على مستويات شارة «مؤسسة الريادة» تنص على ثلاثة مستويات هي المطابقة، تحسين الأداء، الاستدامة؛ المصدر: educaprof.com (2024-02-15) https://www.educaprof.com/2024/02/blog-post_81.html ، ويؤكده ملخص المقرر الوزاري رقم 003.26 بتاريخ 27 يناير 2026 على minhaj-jadid.com. (كان manasseb قد وضع على هذا السؤال علامة للتحقق دون حسم.)')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q124
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q124', 'exam_primary_2023_sciences_edu_jan', 124, 'تدبير جماعة القسم — الصراعات', 'ينبغي أن تُدبَّر جماعة القسم الصراعات الجسدية العنيفة بين أعضائها اعتمادا على:', false, '[{"id": "A", "text": "التشريعات والقوانين"}, {"id": "B", "text": "معايير تحددها جماعة القسم"}, {"id": "C", "text": "تدخل جمعية الآباء وأمهات وأولياء أمور التلميذات والتلاميذ"}, {"id": "D", "text": "تدخل الأطر التربوية والإدارية"}]'::jsonb, ARRAY['B']::text[], 'في تدبير جماعة القسم تُعتمد قواعد ومعايير يضعها أعضاء الجماعة أنفسهم.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, 'للتحقق حسب المصدر (manasseb)؛ الجواب المعتمد هو الحل المقترح من الموقع وليس تصحيحا رسميا.')
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

-- أسئلة امتحان: علوم التربية (دورة 2023) — Q125
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2023_sciences_edu_jan_q125', 'exam_primary_2023_sciences_edu_jan', 125, 'المحاكاة عند والون', 'تعمل المحاكاة عند "والون" على:', false, '[{"id": "A", "text": "مساعدة الطفل على إعادة إنتاج سلوك القدرة"}, {"id": "B", "text": "تنمية مهارة التواصل عند الطفل"}, {"id": "C", "text": "استدماج الطفل لمعايير الجماعة"}, {"id": "D", "text": "نقل الطفل إلى الذكاء الرمزي"}]'::jsonb, ARRAY['D']::text[], 'يرى والون أن المحاكاة تنقل الطفل من الذكاء الحسي الحركي إلى الذكاء التمثلي والرمزي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41823-enseignant-2023/', true, NULL)
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
