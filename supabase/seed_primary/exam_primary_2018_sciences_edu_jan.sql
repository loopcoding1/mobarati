-- ====================================================================
-- مباراتي — امتحان ابتدائي: مستجدات نظام التربية والتكوين، دورة يناير 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/مستجدات التعليم - امتحان - دورة يناير 2018.md
--   (سجل الامتحانات رقم 32؛ الحل 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2018/مستجدات التعليم - امتحان - دورة يناير 2018.pdf
--   (5 صفحات، ممسوحة ضوئيا).
--   مفتاح التصحيح الرسمي (في مساحة العمل):
--   exams-ibtida2i/2018/تصحيح مستجدات التعليم - دورة يناير 2018.pdf (صفحتان).
--   حل منشور مكمّل: https://mesconcours.ma/ar/concours/enseignement/2018-1021/
--   (حل من إعداد الموقع يتبع عناصر الإجابة الرسمية؛ استُعمل لتوسيع عناصر
--   الإجابة في الوضعية الثانية وللتعليلات؛ لا تعارض بينه وبين المفتاح الرسمي).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q26 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * أجوبة Q1–Q20 رُوجعت واحداً واحداً مقابل جدول المفتاح الرسمي (صفحة 1
--     من ملف التصحيح): كلها مطابقة.
--   * عناصر إجابة Q21–Q25 منقولة من صفحة 2 من ملف التصحيح الرسمي؛
--     عناصر Q26 مكمَّلة من حل mesconcours.ma لأن صفحة التصحيح الرسمي
--     الثانية تنتهي في منتصف الجملة دون سرد العناصر (موسوم في verification_note).
--   * المدة (ساعتان = 120 دقيقة) والمعامل (2) والنقطة على 40 من غلاف
--     الامتحان (صفحة 1): وضعيتان اختباريتان، 20 نقطة لكل واحدة.
--
-- بنية الامتحان:
--   * الوضعية الأولى (20 ن): Q1–Q13 اختيار جواب صحيح من 4 خيارات (أ–د)،
--     Q14–Q20 صحيح/خطأ (خياران: أ صحيح / ب خطأ) — 1 نقطة لكل جواب صحيح.
--   * الوضعية الثانية (20 ن): Q21–Q26 أسئلة مكتوبة (3+3+3+3+4+4 نقاط):
--     Q21 القضية، Q22 تعريف 3 مصطلحات، Q23 سؤال 3أ، Q24 سؤال 3ب،
--     Q25 دور المدرسة، Q26 أبعاد شخصية المتعلم.
--
-- ملاحظات / أعلام:
--   * Q7 موسوم: الجواب الرسمي «إنجاز مشروع بحث» (ب)؛ في الأدبيات التربوية
--     المغربية يرتبط المشروع الشخصي للمتعلم أساسا بالتوجيه المدرسي (د) —
--     احتُفظ بالمفتاح الرسمي.
--   * Q18 موسوم: العبارة تحرّف اسم هوارد غاردنر («أغاردير»)؛ الجواب الرسمي
--     «خطأ» (ب) — احتُفظ بالمفتاح الرسمي.
--   * لا أسئلة متروكة: 26/26 مُدرجة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2018_sciences_edu_jan
--   <exam_id>_q<n>  للأسئلة.  subject: sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_sciences_edu_jan', 'specialty_primary', 2018, 'sciences_edu', 'مستجدات نظام التربية والتكوين', 'امتحان مستجدات نظام التربية والتكوين (دورة يناير 2018)', 'دورة يناير 2018', 120, 26)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (26 سؤالاً: Q1–Q13 اختيار من متعدد، Q14–Q20 صحيح/خطأ، Q21–Q26 أسئلة مكتوبة)

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q1', 'exam_primary_2018_sciences_edu_jan', 1, 'الرؤية الاستراتيجية — المجلس الأعلى', 'النص صادر عن هيئة:', false, '[{"id": "A", "text": "تقريرية"}, {"id": "B", "text": "استشارية"}, {"id": "C", "text": "تنفيذية"}, {"id": "D", "text": "تشريعية"}]'::jsonb, ARRAY['B']::text[], 'المجلس الأعلى للتربية والتكوين والبحث العلمي هيئة دستورية استشارية: يبدي الرأي ويقدم الاقتراحات في السياسات العمومية للتربية والتكوين، ولا يشرع ولا ينفذ. والرؤية الاستراتيجية 2015-2030 من إنتاجه.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q2', 'exam_primary_2018_sciences_edu_jan', 2, 'الرؤية الاستراتيجية — التجديد البيداغوجي', 'يهم التجديد البيداغوجي حسب النص:', false, '[{"id": "A", "text": "التعلمات بالتعليم الابتدائي"}, {"id": "B", "text": "طريقة بناء الدروس وفق الدليل البيداغوجي"}, {"id": "C", "text": "أنشطة التقويم بالتعليم الابتدائي"}, {"id": "D", "text": "المقاربات البيداغوجية والبرامج المعتمدة"}]'::jsonb, ARRAY['A']::text[], 'النقط الثلاث في النص كلها عن التعلمات بالتعليم الابتدائي: مواد التفتح، الحساب واللغات، التواصل والقراءة. لا يذكر النص التقويم ولا الدليل البيداغوجي، وإشارته إلى المقاربات والبرامج جزء من آخر نقطة فقط.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q3', 'exam_primary_2018_sciences_edu_jan', 3, 'مواد التفتح', 'إحدى هذه المواد لا تدخل ضمن مواد التفتح بالتعليم الابتدائي:', false, '[{"id": "A", "text": "الجغرافيا"}, {"id": "B", "text": "التربية الإسلامية"}, {"id": "C", "text": "التعبير الشفهي"}, {"id": "D", "text": "التربية على المواطنة"}]'::jsonb, ARRAY['C']::text[], 'مواد التفتح بالابتدائي تشمل الاجتماعيات (التاريخ والجغرافيا والتربية على المواطنة) والتربية الإسلامية والتربية الفنية والبدنية. التعبير الشفهي مكون من مكونات مواد اللغات، لا من مواد التفتح.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q4', 'exam_primary_2018_sciences_edu_jan', 4, 'التعليم الإلزامي', 'التعليم الإلزامي يهم الفئة العمرية:', false, '[{"id": "A", "text": "5 - 16 سنة"}, {"id": "B", "text": "6 - 16 سنة"}, {"id": "C", "text": "4 - 15 سنة"}, {"id": "D", "text": "3 - 15 سنة"}]'::jsonb, ARRAY['C']::text[], 'تنص الرؤية الاستراتيجية، ثم القانون الإطار 51.17، على إلزامية التعليم من 4 إلى 15 سنة، أي من التعليم الأولي إلى نهاية الإعدادي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q5', 'exam_primary_2018_sciences_edu_jan', 5, 'نظريات التعلم', 'إحدى هذه النظريات لا تدخل ضمن نظريات التعلم:', false, '[{"id": "A", "text": "السلوكية"}, {"id": "B", "text": "المعرفية"}, {"id": "C", "text": "اللاتوجيهية"}, {"id": "D", "text": "التحليل النفسي"}]'::jsonb, ARRAY['D']::text[], 'السلوكية والمعرفية (وما ارتبط بها من البنائية) نظريات في التعلم، واللاتوجيهية (كارل روجرز) تصور بيداغوجي في التعلم المتمركز حول المتعلم. التحليل النفسي نظرية في الشخصية والعلاج النفسي، لا نظرية في التعلم.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q6', 'exam_primary_2018_sciences_edu_jan', 6, 'النظرية البنائية', 'صيغت المفاهيم الأولية لنظرية التعلم البنائية في أعمال:', false, '[{"id": "A", "text": "جون ديوي"}, {"id": "B", "text": "جان بياجي"}, {"id": "C", "text": "كوفكا كوهلر"}, {"id": "D", "text": "فريديريك سكينر"}]'::jsonb, ARRAY['B']::text[], 'جان بياجي هو مؤسس البنائية (الإبستمولوجيا التكوينية): الاستيعاب والملاءمة والتوازن. جون ديوي رائد التربية الوظيفية، وكوهلر من الجشطالت، وسكينر من السلوكية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q7', 'exam_primary_2018_sciences_edu_jan', 7, 'المشروع الشخصي للمتعلم', 'يستهدف المشروع الشخصي للمتعلم/ة:', false, '[{"id": "A", "text": "الإعداد لاجتياز الاختبارات الدورية"}, {"id": "B", "text": "إنجاز مشروع بحث"}, {"id": "C", "text": "دعم التعلم الصفي"}, {"id": "D", "text": "المساعدة على التوجيه المدرسي"}]'::jsonb, ARRAY['B']::text[], 'الجواب الرسمي هو «إنجاز مشروع بحث». في الأدبيات التربوية المغربية يرتبط المشروع الشخصي للمتعلم أساسا بالتوجيه المدرسي والمهني (د)؛ والعناصر الرسمية اعتبرته هنا مشروعا يبنيه المتعلم بنفسه في إطار بيداغوجيا المشروع، فاحتُفظ بالمفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, 'الجواب الرسمي «إنجاز مشروع بحث» (ب)؛ الأدبيات التربوية تربط المشروع الشخصي أساسا بالتوجيه المدرسي والمهني (د) — احتُفظ بالمفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q8', 'exam_primary_2018_sciences_edu_jan', 8, 'الدعم المندمج', 'يتم الدعم المندمج في إطار:', false, '[{"id": "A", "text": "أنشطة التفتح"}, {"id": "B", "text": "الأنشطة المنزلية"}, {"id": "C", "text": "أنشطة الحياة المدرسية"}, {"id": "D", "text": "الأنشطة الصفية"}]'::jsonb, ARRAY['D']::text[], 'الدعم المندمج يُدمج في سيرورة التعلم نفسها داخل الحصص الدراسية، أي في الأنشطة الصفية، بخلاف الدعم المؤسسي أو الخارجي الذي ينظم في فترات أو فضاءات مستقلة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q9', 'exam_primary_2018_sciences_edu_jan', 9, 'الدعم المشروط', 'الدعم المشروط يستهدف:', false, '[{"id": "A", "text": "التلاميذ المتعثرين"}, {"id": "B", "text": "الأسر المعوزة"}, {"id": "C", "text": "الأساتذة الجدد"}, {"id": "D", "text": "تلاميذ الفرصة الثانية"}]'::jsonb, ARRAY['B']::text[], 'الدعم المشروط (برنامج تيسير) تحويلات مالية مباشرة للأسر المعوزة، مشروطة بمواظبة أبنائها على الدراسة، لمحاربة الهدر المدرسي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q10', 'exam_primary_2018_sciences_edu_jan', 10, 'التعبئة المجتمعية', 'جوهر التعبئة المجتمعية من أجل المدرسة:', false, '[{"id": "A", "text": "إداري"}, {"id": "B", "text": "تقني"}, {"id": "C", "text": "تواصلي"}, {"id": "D", "text": "مالي"}]'::jsonb, ARRAY['C']::text[], 'التعبئة المجتمعية تقوم على التواصل مع الأسر والشركاء والمجتمع المدني لإشراكهم في الانخراط من أجل المدرسة، فجوهرها تواصلي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q11', 'exam_primary_2018_sciences_edu_jan', 11, 'تقويم التعلمات', 'ما لا يستند إليه في تقويم التعلمات:', false, '[{"id": "A", "text": "دليل الحياة المدرسية"}, {"id": "B", "text": "المنهاج الدراسي"}, {"id": "C", "text": "الأطر المرجعية"}, {"id": "D", "text": "المقررات الدراسية"}]'::jsonb, ARRAY['A']::text[], 'يستند تقويم التعلمات إلى المنهاج الدراسي والأطر المرجعية والمقررات. دليل الحياة المدرسية ينظم الأنشطة والعلاقات داخل المؤسسة ولا يحدد مضامين التقويم.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q12', 'exam_primary_2018_sciences_edu_jan', 12, 'المنهاج المنقح', 'يهم المنهاج المنقح:', false, '[{"id": "A", "text": "السنة الأولى من التعليم الابتدائي"}, {"id": "B", "text": "السنتين الأولى والثانية من التعليم الابتدائي"}, {"id": "C", "text": "السنوات الثلاث الأولى من التعليم الابتدائي"}, {"id": "D", "text": "السنوات الأربع الأولى من التعليم الابتدائي"}]'::jsonb, ARRAY['D']::text[], 'دخل المنهاج المنقح للتعليم الابتدائي حيز التطبيق تدريجيا ابتداء من 2015-2016، وشمل في مرحلته الأولى السنوات الأربع الأولى من الابتدائي (العناصر الرسمية).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q13', 'exam_primary_2018_sciences_edu_jan', 13, 'المقاربة بالكفايات', 'ترتكز المقاربة بالكفايات على:', false, '[{"id": "A", "text": "فاعلية المدرس"}, {"id": "B", "text": "فاعلية المتعلم"}, {"id": "C", "text": "محورية المحتوى المعرفي"}, {"id": "D", "text": "محورية الأداء الجيد"}]'::jsonb, ARRAY['B']::text[], 'المقاربة بالكفايات تجعل المتعلم محور العملية التعليمية وفاعلا في بناء تعلماته عبر وضعيات مشكلة. محورية المحتوى المعرفي وفاعلية المدرس من سمات التدريس التقليدي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q14', 'exam_primary_2018_sciences_edu_jan', 14, 'الكتاب الأبيض', 'يهم الكتاب الأبيض البرامج والمناهج التربوية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الكتاب الأبيض (2002) ثمرة مراجعة المناهج التربوية بعد الميثاق الوطني، ويتضمن الاختيارات والتوجهات والبرامج الدراسية لمختلف الأسلاك.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q15', 'exam_primary_2018_sciences_edu_jan', 15, 'بيداغوجيا الأهداف', 'تقوم بيداغوجيا الأهداف على غائية التدريس.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'بيداغوجيا الأهداف تنطلق من تحديد غايات ومرامي وأهداف إجرائية مسبقا، ويوجه الهدف كل مكونات الفعل التعليمي، فهي تقوم على غائية التدريس.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q16', 'exam_primary_2018_sciences_edu_jan', 16, 'النقل الديداكتيكي', 'النقل الديداكتيكي يهم بعض المواد المدرسية فقط.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'النقل الديداكتيكي (شوفلار) هو تحويل المعرفة العالمة إلى معرفة مدرسة، ويهم كل المواد الدراسية دون استثناء.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q17', 'exam_primary_2018_sciences_edu_jan', 17, 'الإطار المرجعي للتقويم', 'الإطار المرجعي للتقويم يتكون من عناصر إجابة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الإطار المرجعي وثيقة تحدد مجالات التقويم ومضامينه ومستويات المهارات وأوزانها. عناصر الإجابة وثيقة مستقلة ترافق موضوع الامتحان.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q18', 'exam_primary_2018_sciences_edu_jan', 18, 'نظرية الذكاءات المتعددة', 'نظرية الذكاءات المتعددة من وضع العالم أغاردير.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'صاحب نظرية الذكاءات المتعددة هو هوارد غاردنر (Howard Gardner، 1983). المفتاح الرسمي «خطأ» لا يقوم إلا على تحريف الاسم في العبارة («أغاردير»)، وهو بند ملتبس؛ احتُفظ بالمفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, 'العبارة تحرّف اسم هوارد غاردنر («أغاردير»)؛ الجواب الرسمي «خطأ» — احتُفظ بالمفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q19', 'exam_primary_2018_sciences_edu_jan', 19, 'الكتاب المدرسي والمقرر الدراسي', 'الكتاب المدرسي ليس هو المقرر الدراسي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'المقرر الدراسي هو المضامين المحددة رسميا لمادة ومستوى، والكتاب المدرسي أداة ديداكتيكية تترجم المقرر ويمكن أن تتعدد كتب المقرر الواحد.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q20', 'exam_primary_2018_sciences_edu_jan', 20, 'الحياة المدرسية', 'تقوم الحياة المدرسية على المقاربة التشاركية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'دليل الحياة المدرسية يجعل المقاربة التشاركية مبدأ أساسيا: إشراك التلاميذ والأسر والفاعلين في الأندية والمجالس والأنشطة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q21 (الوضعية الثانية، السؤال 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q21', 'exam_primary_2018_sciences_edu_jan', 21, 'قضية النص — مهنة التدريس', 'حدد/حددي القضية التي يطرحها النص. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: يطرح النص قضية مهنة التدريس من خلال: (1) الإشارة إلى التحولات التي عرفتها هذه المهنة: الانتقال من نمط المدرس التقليدي إلى نمط المدرس الحديث، والكفايات التي يتطلبها هذا الانتقال؛ (2) العوامل المؤثرة في ذلك (تغير الأجيال وثقافة الشباب، انتظارات المجتمع، تطور طرق التعلم والتكنولوجيا الرقمية)؛ (3) مستلزمات تطوير مهنة التدريس تجاوبا مع التحولات في المجالين الاقتصادي والاجتماعي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q22 (الوضعية الثانية، السؤال 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q22', 'exam_primary_2018_sciences_edu_jan', 22, 'تعريف المصطلحات', 'عرّف/عرّفي المصطلحات الآتية: المضامين التربوية الرقمية، طرق التعلم، التكوين الأساسي والمستمر. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية (نقطة لكل مصطلح): المضامين التربوية الرقمية: ما يفيد تحويل مضامين دراسية إلى وسائط تكنولوجية رقمية (موارد رقمية، برانم، فيديوهات تعليمية...)؛ طرق التعلم: ما يفيد الأساليب والمنهجيات والاستراتيجيات التي يستعملها المتعلم لبناء تعلماته؛ التكوين الأساس والمستمر: التكوين الأساس هو التأهيل الذي يتلقاه المدرس قبل ممارسة المهنة بمراكز التكوين؛ والتكوين المستمر هو الذي يحصل أثناء الخدمة لتحيين الكفايات واستكمال التكوين الأساس.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q23 (الوضعية الثانية، السؤال 3أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q23', 'exam_primary_2018_sciences_edu_jan', 23, 'تدبير جماعة القسم', 'ورد في النص: "فمدرس اليوم أصبح مطالبا بالتوفر على الكفايات التي تسمح له بتجديد طرق التعلم، وتحفيز فضول المتعلم، وتنشيط جماعة القسم، وتوجيه التلاميذ في استعمال تكنولوجيا الإعلام." بيّن/بيّني كيف تُبلور المهام المذكورة كفاية تدبير جماعة القسم عمليا. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: تتبلور هذه المهام في إطار عملي يستهدف تدبير آليات تسيير جماعة القسم للانخراط في عمليات التعلم وفق مقاربة حديثة: تجديد طرق التعلم (العمل بالمجموعات، الوضعيات المشكلة، التعلم بالمشروع)؛ تحفيز الفضول (أسئلة مفتوحة، وضعيات من محيط المتعلم)؛ تنشيط القسم (توزيع الأدوار، تنظيم التواصل الأفقي، تدبير الوقت والفضاء)؛ التوجيه في استعمال التكنولوجيا (موارد رقمية، بحث موجه، قواعد الاستعمال الآمن). يقبل كل جواب يربط كل مهمة بممارسة صفية ملموسة.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q24 (الوضعية الثانية، السؤال 3ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q24', 'exam_primary_2018_sciences_edu_jan', 24, 'طرائق التنشيط', 'حدد/حددي ثلاث طرائق للتنشيط، موضحا/موضحة كيف يمكن توظيفها في تناول قضية بيئية، قضية اجتماعية، قضية علمية. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: اختيار إحدى طرائق التنشيط المعروفة: لعب الأدوار — المحاكاة — طريقة فيليبس (6*6) أو غيرها...؛ واختيار مضمون معين يتم فيه تفعيل طريقة التنشيط شرط التقيد بالمضامين المطلوبة في السؤال (المجتمع — البيئة — العلوم — التغذية...). مثال: لعب الأدوار في قضية اجتماعية (تمثيل حوار بين أفراد أسرة حول الهدر المدرسي ثم مناقشته)؛ طريقة فيليبس 6×6 في قضية بيئية (مجموعات من ستة تلاميذ تتداول ست دقائق في حلول لمشكل النفايات بالمدرسة، ثم تقدم المقررات)؛ المحاكاة أو العصف الذهني في قضية علمية (محاكاة دورة الماء أو جمع فرضيات حول تغذية النبات قبل التجريب).', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q25 (الوضعية الثانية، السؤال 4)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q25', 'exam_primary_2018_sciences_edu_jan', 25, 'دور المدرسة — القدرات المعرفية والإدماج المهني', 'بيّن/بيّني دور المدرسة في اكتساب القدرات المعرفية الذاتية من جهة، ودورها في الإدماج المهني من جهة أخرى، معززا/معززة جوابك بأمثلة مناسبة. (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية — يسير الجواب في اتجاهين: (1) استيفاء واكتساب القدرات المعرفية الذاتية الأساسية ومنها: الاسترجاع — البحث عن المعلومة — الربط — المقارنة، واستثمار القدرات في التكوين الأساس ووفق المشروع الشخصي للتلميذ/ة (مثال: بحث توثيقي يقارن فيه التلميذ بين مصادر)؛ (2) دور المدرسة في الإدماج المهني عبر التركيز على الأنشطة التعليمية التي تتوخى الانفتاح على المهن، وتنظيم المسارات الدراسية المهنية وتحسين نظام التوجيه المدرسي نحو التكوين المهني (مثال: زيارات لمقاولات، أيام الأبواب المفتوحة، المسالك المهنية بالإعدادي). يقدم المترشح أمثلة مناسبة.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يناير 2018) — Q26 (الوضعية الثانية، السؤال 5)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_edu_jan_q26', 'exam_primary_2018_sciences_edu_jan', 26, 'أبعاد شخصية المتعلم', 'تعد المدرسة ناجحة في مهامها عندما تستحضر في أداء وظائفها مختلف أبعاد شخصية المتعلم. اذكر/اذكري ثلاثة من هذه الأبعاد يستحضرها المدرس أثناء ممارساته التربوية. (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة (من حل mesconcours.ma الذي يتبع العناصر الرسمية): ثلاثة أبعاد مع كيفية استحضارها: البعد العقلي المعرفي (تنويع الوضعيات المشكلة وتنمية التفكير النقدي)؛ البعد الوجداني (التحفيز، الثقة بالنفس، تدبير العلاقات داخل القسم)؛ البعد الحسي الحركي (الأنشطة اليدوية والتجريبية والبدنية). ويمكن ذكر البعد الاجتماعي (العمل بالمجموعات والتواصل) والبعد القيمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1021/', true, 'صفحة التصحيح الرسمي الثانية تنتهي في منتصف الجملة دون سرد عناصر هذا السؤال؛ عناصر الإجابة مأخوذة من حل mesconcours.ma الذي يتبع العناصر الرسمية.')
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
