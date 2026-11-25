-- ====================================================================
-- مباراتي — امتحان ابتدائي: مستجدات نظام التربية والتكوين، دورة يونيو 2017
-- ====================================================================
-- المصدر: ملف الحل solved/2017/مستجدات التعليم - 2017.md
--   (سجل الامتحانات رقم 13؛ الحل 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2017/مستجدات التعليم - امتحان.pdf
--   (5 صفحات، ممسوح ضوئيا).
--   مفتاح التصحيح الرسمي (في مساحة العمل، وهو مرجع الأجوبة):
--   exams-ibtida2i/2017/تصحيح مستجدات التعليم.pdf (صفحتان).
--   حل منشور مكمّل: https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html
--   (نسخة منشورة من عناصر الإجابة الرسمية للوضعية الثانية؛ طابقت
--   المفتاح الرسمي حرفيا ما عدا نتيجة PIRLS: المدونة تقول 223 نقطة
--   والمفتاح الرسمي يقول 323 نقطة — اعتُمد 323، وهو الصحيح تاريخيا).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q25 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * أجوبة Q1–Q20 رُوجعت واحداً واحداً مقابل جدول المفتاح الرسمي (صفحة 1
--     من ملف التصحيح) بعد تكبيره إلى 300 dpi للتحقق من رموز الأجوبة:
--     ب، ج، أ، ب، أ، د، ب، ج، ب، د — وكلها تطابق المعطيات التربوية المعروفة
--     (أكتوبر 1999، اللجنة الخاصة، البرنامج الاستعجالي 2009–2012،
--     ثورندايك سلوكي، بلوم للمجال العقلي).
--   * ترتيب بلوم Q11–Q14 (3، 2، 4، 1) وربط النظريات Q15–Q17 وصحيح/خطأ
--     Q18–Q20 من الجدول نفسه.
--   * عناصر إجابة Q21–Q25 منقولة من صفحة 2 من ملف التصحيح الرسمي،
--     وطابقتها المدونة المنشورة.
--   * المدة (3 ساعات = 180 دقيقة) والمعامل (2) والنقطة على 40 من غلاف
--     الامتحان (صفحة 1): وضعيتان اختباريتان، 20 نقطة لكل واحدة.
--     أجري الامتحان يوم 29 يونيو 2017 (14:00–17:00).
--
-- بنية الامتحان:
--   * الوضعية الأولى (20 ن): Q1–Q10 اختيار جواب صحيح من 4 خيارات (أ–د)،
--     Q11–Q14 ترتيب في صنافة بلوم، Q15–Q17 ربط النظرية بمفهومها للتعلم،
--     Q18–Q20 صحيح/خطأ — 1 نقطة لكل جواب صحيح.
--   * الوضعية الثانية (20 ن): Q21–Q25 أسئلة مكتوبة (3+4+4+5+4 نقاط)،
--     مرقمة في ورقة الامتحان 1–5 وأعيد ترقيمها هنا 21–25.
--
-- ملاحظات / أعلام:
--   * Q11–Q14: لا يوجد نوع 'ordering' في قيد question_type، فصيغ كل سؤال
--     كاختيار من متعدد عن الرتبة (1–6) في صنافة بلوم (موسوم في verification_note).
--   * Q15–Q17: نوع 'matching'؛ الخيارات هي مفاهيم التعلم الثلاثة كما وردت
--     في ورقة الامتحان.
--   * Q19 وQ20: الجواب (خطأ) من المفتاح الرسمي؛ التعليل من إعدادي.
--   * لا أسئلة متروكة: 25/25 مُدرجة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2017_sciences_edu_jun
--   <exam_id>_q<n>  للأسئلة.  subject: sciences_edu
--   session: jun (دورة يونيو).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_sciences_edu_jun', 'specialty_primary', 2017, 'sciences_edu', 'مستجدات نظام التربية والتكوين', 'امتحان مستجدات نظام التربية والتكوين (دورة يونيو 2017)', 'دورة يونيو 2017', 180, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً: Q1–Q10 اختيار من متعدد، Q11–Q14 ترتيب، Q15–Q17 ربط، Q18–Q20 صحيح/خطأ، Q21–Q25 أسئلة مكتوبة)

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q1', 'exam_primary_2017_sciences_edu_jun', 1, 'الميثاق الوطني للتربية والتكوين', 'صدر الميثاق الوطني للتربية والتكوين في:', false, '[{"id": "A", "text": "شتنبر 1999"}, {"id": "B", "text": "أكتوبر 1999"}, {"id": "C", "text": "يناير 2000"}, {"id": "D", "text": "فبراير 2000"}]'::jsonb, ARRAY['B']::text[], 'صدر الميثاق الوطني للتربية والتكوين في أكتوبر 1999 (أعدته اللجنة الخاصة للتربية والتكوين)، ودخل حيز التنفيذ مع بداية سنة 2000.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q2', 'exam_primary_2017_sciences_edu_jun', 2, 'الميثاق الوطني للتربية والتكوين', 'الهيئة التي أصدرت الميثاق هي:', false, '[{"id": "A", "text": "المجلس الأعلى للتعليم"}, {"id": "B", "text": "وزارة التربية الوطنية"}, {"id": "C", "text": "اللجنة الخاصة للتربية والتكوين"}, {"id": "D", "text": "اللجنة الدائمة للبرامج والمناهج"}]'::jsonb, ARRAY['C']::text[], 'أعد الميثاقَ اللجنةُ الخاصة للتربية والتكوين (COSEF) التي كلفها الملك محمد السادس بذلك سنة 1999؛ أما المجلس الأعلى للتعليم فهيئة لاحقة (أحدثت سنة 2006).', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q3', 'exam_primary_2017_sciences_edu_jun', 3, 'الميثاق الوطني للتربية والتكوين', 'ينظم التعليم المدرسي حسب الميثاق الوطني للتربية والتكوين في:', false, '[{"id": "A", "text": "سلكي التعليم الابتدائي والتعليم الثانوي"}, {"id": "B", "text": "أسلاك التعليم الأولي والتعليم الابتدائي والتعليم الإعدادي والتعليم الثانوي"}, {"id": "C", "text": "أسلاك التعليم الابتدائي والتعليم الإعدادي والتعليم الثانوي"}, {"id": "D", "text": "السلك الأساسي والسلك المتوسط والسلك الثانوي"}]'::jsonb, ARRAY['A']::text[], 'حسب الميثاق يتكون التعليم المدرسي من سلكين: سلك التعليم الابتدائي (6 سنوات) وسلك التعليم الثانوي، ويضم هذا الأخير التعليم الإعدادي (3 سنوات) والتعليم الثانوي التأهيلي (3 سنوات). أما التعليم الأولي فمرحلة سابقة للتعليم المدرسي.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q4', 'exam_primary_2017_sciences_edu_jun', 4, 'الميثاق الوطني للتربية والتكوين', 'تم إقرار البرنامج الاستعجالي لسنوات:', false, '[{"id": "A", "text": "2008 - 2011"}, {"id": "B", "text": "2009 - 2012"}, {"id": "C", "text": "2010 - 2013"}, {"id": "D", "text": "2007 - 2010"}]'::jsonb, ARRAY['B']::text[], 'أُقر البرنامج الاستعجالي 2009–2012 ليعطي نفسا جديدا للإصلاح بعدما كشفت التقارير التشخيصية عن بطء وتيرة الإنجاز وضعف أداء المنظومة، كما يرد في نص الوضعية نفسه.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q5', 'exam_primary_2017_sciences_edu_jun', 5, 'الميثاق الوطني للتربية والتكوين', 'أصدر المجلس الأعلى للتعليم تقريره التشخيصي المشار إليه في النص سنة:', false, '[{"id": "A", "text": "2008"}, {"id": "B", "text": "2009"}, {"id": "C", "text": "2010"}, {"id": "D", "text": "2011"}]'::jsonb, ARRAY['A']::text[], 'أصدر المجلس الأعلى للتعليم تقريره التشخيصي حول حالة منظومة التربية والتكوين سنة 2008، وهو التقرير الذي شخص اختلالات المنظومة ومهد للبرنامج الاستعجالي.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q6', 'exam_primary_2017_sciences_edu_jun', 6, 'المنهاج المنقح والزمن المدرسي', 'المنهاج المنقح يخص:', false, '[{"id": "A", "text": "السنة الأولى من التعليم الابتدائي"}, {"id": "B", "text": "السنتان الأولى والثانية من التعليم الابتدائي"}, {"id": "C", "text": "ثلاث سنوات الأولى من التعليم الابتدائي"}, {"id": "D", "text": "أربع سنوات الأولى من التعليم الابتدائي"}]'::jsonb, ARRAY['D']::text[], 'المنهاج المنقح للتعليم الابتدائي (2015) يخص السنوات الأربع الأولى من التعليم الابتدائي، كما يرد في عناصر الإجابة الرسمية للسؤال 24 (الوضعية الثانية).', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q7', 'exam_primary_2017_sciences_edu_jun', 7, 'المنهاج المنقح والزمن المدرسي', 'الأنشطة المندمجة التي تنظم داخل فضاء المؤسسة بقصد بها:', false, '[{"id": "A", "text": "أنشطة التعلم الصفي"}, {"id": "B", "text": "أنشطة التعلم غير الصفي"}, {"id": "C", "text": "أنشطة التعلم الذاتي"}, {"id": "D", "text": "أنشطة الرياضة المدرسية"}]'::jsonb, ARRAY['B']::text[], 'الأنشطة المندمجة أنشطة تعلم غير صفية تنظم داخل فضاء المؤسسة (أو خارجها) وتندمج في الحياة المدرسية؛ وهي غير أنشطة التعلم الصفي التي تتم داخل حجرة الدرس.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q8', 'exam_primary_2017_sciences_edu_jun', 8, 'المنهاج المنقح والزمن المدرسي', 'تضمين الزمن المدرسي هو:', false, '[{"id": "A", "text": "تحديد عدد ساعات الدراسة"}, {"id": "B", "text": "التوزيع الدوري للمكونات الدراسية"}, {"id": "C", "text": "استيفاء المكونات والحصص الدراسية"}, {"id": "D", "text": "تنظيم الحصة الدراسية بكل مراحلها"}]'::jsonb, ARRAY['C']::text[], 'تضمين الزمن المدرسي يعني تغطية الزمن المدرسي واستيفاء جميع المكونات والحصص الدراسية المقررة فيه، لا مجرد تحديد عدد الساعات أو توزيعها.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q9', 'exam_primary_2017_sciences_edu_jun', 9, 'علم النفس والصنافات', 'من أبرز أعلام علم النفس السلوكي:', false, '[{"id": "A", "text": "جون ديوي"}, {"id": "B", "text": "ثورندايك"}, {"id": "C", "text": "جون بياجي"}, {"id": "D", "text": "سيغموند فرويد"}]'::jsonb, ARRAY['B']::text[], 'ثورندايك من مؤسسي علم النفس السلوكي (التعلم بالمحاولة والخطأ وقانون الأثر). أما جون ديوي فمن أعلام الفلسفة البراغماتية والتربية التجريبية، وبياجي بنائي، وفرويد مؤسس التحليل النفسي.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q10', 'exam_primary_2017_sciences_edu_jun', 10, 'علم النفس والصنافات', 'الصنافة التي تهتم بالمجال العقلي هي:', false, '[{"id": "A", "text": "صنافة واطسون"}, {"id": "B", "text": "صنافة سيمبسون"}, {"id": "C", "text": "صنافة ديف كراثول"}, {"id": "D", "text": "صنافة بنيامين بلوم"}]'::jsonb, ARRAY['D']::text[], 'صنافة بلوم تهتم بالمجال المعرفي (العقلي): المعرفة، الفهم، التطبيق، التحليل، التركيب، التقويم. أما سيمبسون فصنافته للمجال النفس-حركي، وكراثول للمجال الوجداني، وواطسون عالم سلوكي لا صنافة مجالات له.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q11 (ترتيب بلوم: التطبيق)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q11', 'exam_primary_2017_sciences_edu_jun', 11, 'صنافة بلوم', 'رتّب (ي) المرافئ الآتية حسب ترتيبها في صنافة بلوم: ما ترتيب «التطبيق»؟', false, '[{"id": "1", "text": "1"}, {"id": "2", "text": "2"}, {"id": "3", "text": "3"}, {"id": "4", "text": "4"}, {"id": "5", "text": "5"}, {"id": "6", "text": "6"}]'::jsonb, ARRAY['3']::text[], 'التطبيق هو المستوى الثالث في صنافة بلوم، بعد المعرفة والفهم. الترتيب الكامل تصاعديا: المعرفة 1، الفهم 2، التطبيق 3، التحليل 4، التركيب 5، التقويم 6.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'سؤال ترتيب في الأصل؛ صيغ كسؤال اختيار من متعدد عن الرتبة (1–6) في صنافة بلوم لأن قيد question_type لا يسمح بنوع ترتيب.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q12 (ترتيب بلوم: الفهم)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q12', 'exam_primary_2017_sciences_edu_jun', 12, 'صنافة بلوم', 'رتّب (ي) المرافئ الآتية حسب ترتيبها في صنافة بلوم: ما ترتيب «الفهم»؟', false, '[{"id": "1", "text": "1"}, {"id": "2", "text": "2"}, {"id": "3", "text": "3"}, {"id": "4", "text": "4"}, {"id": "5", "text": "5"}, {"id": "6", "text": "6"}]'::jsonb, ARRAY['2']::text[], 'الفهم هو المستوى الثاني في صنافة بلوم، بعد المعرفة وقبل التطبيق. الترتيب الكامل تصاعديا: المعرفة 1، الفهم 2، التطبيق 3، التحليل 4، التركيب 5، التقويم 6.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'سؤال ترتيب في الأصل؛ صيغ كسؤال اختيار من متعدد عن الرتبة (1–6) في صنافة بلوم لأن قيد question_type لا يسمح بنوع ترتيب.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q13 (ترتيب بلوم: التحليل)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q13', 'exam_primary_2017_sciences_edu_jun', 13, 'صنافة بلوم', 'رتّب (ي) المرافئ الآتية حسب ترتيبها في صنافة بلوم: ما ترتيب «التحليل»؟', false, '[{"id": "1", "text": "1"}, {"id": "2", "text": "2"}, {"id": "3", "text": "3"}, {"id": "4", "text": "4"}, {"id": "5", "text": "5"}, {"id": "6", "text": "6"}]'::jsonb, ARRAY['4']::text[], 'التحليل هو المستوى الرابع في صنافة بلوم، بعد التطبيق وقبل التركيب. الترتيب الكامل تصاعديا: المعرفة 1، الفهم 2، التطبيق 3، التحليل 4، التركيب 5، التقويم 6.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'سؤال ترتيب في الأصل؛ صيغ كسؤال اختيار من متعدد عن الرتبة (1–6) في صنافة بلوم لأن قيد question_type لا يسمح بنوع ترتيب.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q14 (ترتيب بلوم: المعرفة)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q14', 'exam_primary_2017_sciences_edu_jun', 14, 'صنافة بلوم', 'رتّب (ي) المرافئ الآتية حسب ترتيبها في صنافة بلوم: ما ترتيب «المعرفة»؟', false, '[{"id": "1", "text": "1"}, {"id": "2", "text": "2"}, {"id": "3", "text": "3"}, {"id": "4", "text": "4"}, {"id": "5", "text": "5"}, {"id": "6", "text": "6"}]'::jsonb, ARRAY['1']::text[], 'المعرفة (التذكر) هي المستوى الأول والأساس في صنافة بلوم. الترتيب الكامل تصاعديا: المعرفة 1، الفهم 2، التطبيق 3، التحليل 4، التركيب 5، التقويم 6.', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'سؤال ترتيب في الأصل؛ صيغ كسؤال اختيار من متعدد عن الرتبة (1–6) في صنافة بلوم لأن قيد question_type لا يسمح بنوع ترتيب.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q15 (ربط: السلوكية)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q15', 'exam_primary_2017_sciences_edu_jun', 15, 'نظريات التعلم', 'اربط (ي) بسهم بين كل نظرية ومفهومها للتعلم: ما مفهوم التعلم في النظرية السلوكية؟', false, '[{"id": "A", "text": "سيرورة يقوم خلالها الذهن بمعالجة المعلومات وتخزينها"}, {"id": "B", "text": "نشاط مشروط بمتحكمات خارجية"}, {"id": "C", "text": "فعل نشيط يتحدد بتوظيف المعارف والخبرات السابقة من أجل بناء معرفة جديدة"}]'::jsonb, ARRAY['B']::text[], 'في النظرية السلوكية التعلم تغير في السلوك نتيجة ارتباطات بين المثير والاستجابة، تحكمه متحكمات خارجية (تعزيز وعقاب)، دون اعتبار للعمليات الذهنية الداخلية.', 'matching', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q16 (ربط: البنائية)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q16', 'exam_primary_2017_sciences_edu_jun', 16, 'نظريات التعلم', 'اربط (ي) بسهم بين كل نظرية ومفهومها للتعلم: ما مفهوم التعلم في النظرية البنائية؟', false, '[{"id": "A", "text": "سيرورة يقوم خلالها الذهن بمعالجة المعلومات وتخزينها"}, {"id": "B", "text": "نشاط مشروط بمتحكمات خارجية"}, {"id": "C", "text": "فعل نشيط يتحدد بتوظيف المعارف والخبرات السابقة من أجل بناء معرفة جديدة"}]'::jsonb, ARRAY['C']::text[], 'في النظرية البنائية (بياجي) المتعلم فاعل نشيط يبني معرفته بنفسه موظفا معارفه وخبراته السابقة، عبر الاستيعاب والملاءمة.', 'matching', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q17 (ربط: المعرفية)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q17', 'exam_primary_2017_sciences_edu_jun', 17, 'نظريات التعلم', 'اربط (ي) بسهم بين كل نظرية ومفهومها للتعلم: ما مفهوم التعلم في النظرية المعرفية؟', false, '[{"id": "A", "text": "سيرورة يقوم خلالها الذهن بمعالجة المعلومات وتخزينها"}, {"id": "B", "text": "نشاط مشروط بمتحكمات خارجية"}, {"id": "C", "text": "فعل نشيط يتحدد بتوظيف المعارف والخبرات السابقة من أجل بناء معرفة جديدة"}]'::jsonb, ARRAY['A']::text[], 'في النظرية المعرفية التعلم سيرورة ذهنية داخلية: استقبال المعلومات ومعالجتها وتخزينها في الذاكرة واسترجاعها عند الحاجة.', 'matching', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q18 (صحيح/خطأ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q18', 'exam_primary_2017_sciences_edu_jun', 18, 'صحيح أو خطأ', 'تحتسب المراقبة المستمرة في امتحان نيل شهادة الدروس الابتدائية بنسبة 50%.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'في امتحان نيل شهادة الدروس الابتدائية تحتسب المراقبة المستمرة بنسبة 50% (والامتحان الموحد بنسبة 50%).', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q19 (صحيح/خطأ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q19', 'exam_primary_2017_sciences_edu_jun', 19, 'صحيح أو خطأ', 'منظومة مسار نظام معلوماتي يُعتمد لتدبير المراقبة المستمرة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'منظومة مسار نظام معلوماتي لتدبير التمدرس عموما (التسجيل، النقط، الغياب، النتائج، التوجيه...)، وليست نظاما مخصصا لتدبير المراقبة المستمرة وحدها. (الجواب من المفتاح الرسمي؛ التعليل من إعدادي.)', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'الجواب (خطأ) من المفتاح الرسمي؛ التعليل من إعدادي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q20 (صحيح/خطأ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q20', 'exam_primary_2017_sciences_edu_jun', 20, 'صحيح أو خطأ', 'الكتاب المدرسي هو المقرر الدراسي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الكتاب المدرسي دعامة ووسيلة من وسائل تنفيذ المقرر الدراسي، وليس المقرر نفسه؛ فالمقرر أوسع ويشمل البرامج والمناهج والكتب والوسائل التعليمية. (الجواب من المفتاح الرسمي؛ التعليل من إعدادي.)', 'qcm', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'الجواب (خطأ) من المفتاح الرسمي؛ التعليل من إعدادي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q21 (الوضعية الثانية، س1 — 3 ن)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q21', 'exam_primary_2017_sciences_edu_jun', 21, 'الوضعية الاختبارية الثانية', 'ارصد واقع المنظومة التربوية وحدد أهم رهانات إصلاحها. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية — واقع المنظومة التربوية (2 ن): صعوبة تعميم التعليم الأولي والقضاء على الأمية؛ استمرار الهدر المدرسي؛ تدني مكتسبات التلاميذ؛ عدم ملاءمة التكوين لحاجيات سوق الشغل. الرهانات (1 ن): تعميم التعليم الأولي والنهوض به ووضع منهاج تربوي خاص به؛ رفع وتيرة محاربة الأمية والتربية غير النظامية؛ إرساء نظام للإشهاد ومسالك للإدماج؛ وضع إطار منهجي دائم لإصلاح المنهاج الوطني وتحسينه؛ النهوض بتدريس اللغات؛ الارتقاء بالبحث التربوي؛ تعزيز برنامج الدعم الاجتماعي والارتقاء بآليات تدبيره؛ استكمال إصلاح نظام التوجيه التربوي وتنويع الممرات بين سلك البكالوريا وشعب التعليم العالي؛ تعزيز نظام الحكامة ودعم اللامركزية واللاتمركز في تدبير النظام التربوي؛ تأهيل الموارد البشرية وحفزها؛ النهوض بالتعليم الخصوصي؛ اعتماد المقاربة التشاركية.', 'open', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q22 (الوضعية الثانية، س2 — 4 ن)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q22', 'exam_primary_2017_sciences_edu_jun', 22, 'الوضعية الاختبارية الثانية', 'من أبرز اختلالات المنظومة التربوية التي شخصتها مختلف التقارير الوطنية والدولية: تدني مكتسبات التلاميذ في مجال القراءة، واستمرار ظاهرة الهدر المدرسي بشكل مقلق. توسع (ي) في شرح هذه الفكرة. (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية — تدني مكتسبات التلاميذ في تعلم اللغات: الإشارة إلى بعض التقييمات التي أجريت في إطار تقويم المستوى اللغوي، كالبرنامج الوطني لتقويم المكتسبات (PNEA) المنجز سنة 2008، الذي كشف عن ضعف المستوى اللغوي من خلال تدني مستوى المهارات القرائية في التعليم الابتدائي والإعدادي (مثال: لم يتمكن تلاميذ السنة الرابعة ابتدائي إلا في 27% من أهداف البرنامج الدراسي)؛ والإشارة إلى نتائج الدراسة الدولية المتعلقة بقياس مستوى تطور المهارات القرائية (PIRLS)، حيث حصل التلاميذ المغاربة على 323 نقطة، وهي دون معيار متوسط الأداء المحدد في 500 نقطة. استمرار ظاهرة ارتفاع الهدر المدرسي: بالرغم من التحسن المسجل في نسبة تعميم التعليم، لا زالت المنظومة التربوية تعاني من ظاهرتي التكرار والهدر المدرسي بالقياس إلى النتائج المنتظرة، حسب إحصائيات 2012 (9.3% في التعليم الثانوي الإعدادي و8.7% في التعليم الثانوي التأهيلي).', 'open', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, 'المدونة المنشورة تذكر نتيجة PIRLS «223 نقطة» خطأً؛ المفتاح الرسمي يقول 323 نقطة وهو الصحيح تاريخيا (PIRLS 2011).')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q23 (الوضعية الثانية، س3 — 4 ن)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q23', 'exam_primary_2017_sciences_edu_jun', 23, 'الوضعية الاختبارية الثانية', 'من أهم مجالات التدخل من أجل تطوير النظام التربوي: تعميم برنامج الدعم الاجتماعي وتحسين آليات تدبيره. بين (ي) من خلال أمثلة ما تم إنجازه في هذا المجال. (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: الإشارة إلى مختلف الإجراءات المعتمدة من أجل تعميم التعليم والاحتفاظ بالتلاميذ، خصوصا في العالم القروي والمناطق الهشة، وخاصة: توسيع الطاقة الإيوائية للداخليات والمطاعم المدرسية والرفع من أيام الإطعام وتحسين الوجبات؛ برنامج مليون محفظة (توفير المستلزمات المدرسية)؛ دعم الأسر المعوزة من خلال برنامج تيسير؛ توفير النقل المدرسي؛ برنامج تدبير المساعدات المالية ونظام التعاقد مع الجماعات من أجل توفير النقل المدرسي؛ اعتماد الشراكات في مجال الإيواء والإطعام.', 'open', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q24 (الوضعية الثانية، س4 — 5 ن)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q24', 'exam_primary_2017_sciences_edu_jun', 24, 'الوضعية الاختبارية الثانية', 'من أهم مقتضيات الإصلاح الواردة ضمن الرؤية الاستراتيجية: «إعادة النظر في الإيقاعات الزمنية وتدبير الزمن الدراسي، والتخفيف من كثافة البرامج ومن طولها وتضخمها وإدماج الثقافة والأنشطة المدرسية وحصص الدعم التربوي في صلب المنهاج التعليمي...». بين (ي) مضمون كل مقتضى من هذه المقتضيات كما تبلورت في المنهاج المنقح. (5 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية (صياغة هذه المقتضيات في المنهاج المنقح للسنوات الأربع الأولى من التعليم الابتدائي): إعادة تنظيم المنهاج في ثلاثة مجالات: مجال اللغات، مجال الرياضيات والعلوم، ثم مجال التنشئة الاجتماعية والتفتح. تنظيم الإيقاعات الزمنية وزمن التعلم وفق المبادئ التربوية (مراعاة القدرات الجسمية والذهنية والنفسية للمتعلم) ومراعاة الخصوصيات الجهوية في هذا التنظيم. توسيع مجال التعلم ليشمل الفصل الدراسي وفضاءات أخرى داخل المؤسسة وخارجها. توسيع أنشطة التعلم لتشمل التعلم الصفي والأنشطة المندمجة. اعتماد مبدأ التخفيف: إعادة تنظيم المحتويات في إطار ست (6) وحدات وإيلاء الأهمية لأنشطة الدعم والأنشطة المندمجة. دعم أنشطة الحياة المدرسية وتنويعها.', 'open', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين (دورة يونيو 2017) — Q25 (الوضعية الثانية، س5 — 4 ن)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_edu_jun_q25', 'exam_primary_2017_sciences_edu_jun', 25, 'الوضعية الاختبارية الثانية', 'من مقومات تحسين تدبير المنظومة التربوية الارتقاء بأداء مختلف الفاعلين التربويين. بين (ي)، من خلال أمثلة توضيحية، كيف يمكن تطوير أداء المدرسين وتجويد الممارسات الصفية؟ (4 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية — أ. الارتقاء بأداء الفاعلين (1.5 ن): الارتقاء بأداء مختلف الفاعلين باعتباره دعامة من دعامات تحسين أداء المنظومة التربوية، عن طريق إرساء نظام للتكوين والتكوين المستمر والمواكبة والتقويم الدائمين للأداء، وتوفير المستلزمات التقنية والأطر التنظيمية لذلك. ب. تطوير أداء المدرسين (1.5 ن): تطوير أداء المدرسين عن طريق التكوين والتكوين المستمر في مجالات تتصل بمهنته (تعميق التكوين والتكوين البيداغوجي، والتكوين المرتبط بالأداء المهني)، وكذا الحرص على توفير شروط التأطير والمواكبة لعمله. ج. تحسين الممارسات الصفية (1 ن): تحسين الممارسات الصفية عن طريق إجراء التحسين الضروري للمنهاج الدراسي، وتجديد الطرائق والوسائل التعليمية واستعمال تكنولوجيا المعلوميات وبلورة مبدأ مركزية المتعلم في العملية التعليمية التعلمية.', 'open', 'official', 'https://i-taalim.blogspot.com/2018/08/education-primaire-contractuel-aref-men-2017-rep.html', true, NULL)
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
