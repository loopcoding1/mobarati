-- ====================================================================
-- مباراتي — مستجدات نظام التربية والتكوين، دورة نونبر 2019
-- ====================================================================
-- المصدر: ملف الحل solved/2019/مستجدات التعليم - 2019.md
--   (سجل الامتحانات رقم 92؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2019/مستجدات التعليم - امتحان.pdf (6 صفحات).
--   ملف التصحيح الرسمي: exams-ibtida2i/2019/تصحيح مستجدات التعليم.jpg (صفحة واحدة،
--   عناصر الإجابة الرسمية، المركز الوطني للتقويم والامتحانات).
--   نفس الملفين منشوران على: https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * كل سؤال من Q1 إلى Q40 وخياراته مطابقة حرفياً لورقة الامتحان (تكبير 300dpi
--     حيث لزم: Q4، Q5، Q10، Q11، Q15، Q17، Q18، Q22، Q23–Q30، Q31–Q36، Q37–Q40؛
--     وتكبير 600dpi لعبارة Q31).
--   * الأجوبة كلها من التصحيح الرسمي (source_type='official')؛ وقُرئ جدول المفتاح
--     مرتين بمكبّر (Q1–Q15 وQ16–Q30 وثانياً وثالثاً) — كل الأجوبة مؤكدة.
--   * المدة (90 دقيقة) والمعامل (2) من ترويسة التصحيح الرسمي وغلاف الامتحان:
--     «مدة الإنجاز: ساعة ونصف، المعامل: 2» — النقطة النهائية على 40.
--   * بنية الاختبار: أولاً 30 نقطة (Q1–Q30 × 1ن) + ثانياً 6 نقاط (Q31–Q36
--     صحيح/خطأ × 1ن) + ثالثاً 4 نقاط (Q37–Q40 مطابقة × 1ن). نص الانطلاق (Q1–Q6):
--     مقتطف من المنهاج الدراسي للتعليم الابتدائي حول المدرسة الابتدائية ومواصفات
--     المتعلم. تنبيه: يعتبر الجواب ملغى عند كل تشطيب أو استعمال للمبيض Blanco.
--
-- ملاحظات (تعارضات موثقة — الجواب منقول كما في المفتاح الرسمي):
--   * Q13: كلمة «الفاعلية» في صياغة السؤال ضبابية في المسح (قد تكون «القاعدة»).
--   * Q23: الجواب (د) المذكرات الوزارية كما في المفتاح؛ والكتاب المدرسي (أ) هو
--     الترجمة التطبيقية الأقرب للمنهاج في نظر كثيرين.
--   * Q24: الجواب (أ) مادة التربية الإسلامية كما في المفتاح؛ والتربية على القيم
--     مقاربة عابرة للمواد في المنهاج (تهم جميع المواد).
--   * Q25: الجواب (د) تقويمي كما في المفتاح؛ وفي أدبيات التكوين يُوصف دور مجلس
--     التدبير غالباً بأنه تقريري.
--   * Q29: الجواب (ب) «مجالها العام إلى مجال خاص» كما في المفتاح؛ والتعريف المعياري
--     للنقل الديداكتيكي (شفالار) هو تحويل المعرفة العالمة إلى معرفة قابلة للتدريس
--     (أقرب للخيار أ).
--   * Q31: كلمتان في وسط العبارة ضبابيتان في المسح («التوجيه والملفات» كما قُرئتا،
--     حتى بتكبير 600dpi)؛ والجواب (صحيح) مؤكد من المفتاح.
--   * Q37–Q40 (ثالثاً): سؤال مطابقة واحد بأربعة عناصر (1ن لكل عنصر)؛ أُدرج كل عنصر
--     سؤالاً مستقلاً بخياراته الخمسة (أ–هـ)؛ والعنصر الزائد في القائمة الثانية هو
--     (هـ) الأنشطة المندمجة. Q31–Q36 (ثانياً): صحيح/خطأ بخيارين.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2019_sciences_edu_nov', 'specialty_primary', 2019, 'sciences_edu', 'مستجدات نظام التربية والتكوين', 'امتحان مستجدات نظام التربية والتكوين (دورة نونبر 2019)', 'دورة نونبر 2019', 90, 40)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (40 سؤالاً)

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q1', 'exam_primary_2019_sciences_edu_nov', 1, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'يتناول النص مواصفات:', false, '[{"id": "A", "text": "المنهاج الدراسي بالسلك الابتدائي"}, {"id": "B", "text": "مرجعيات السلك الابتدائي"}, {"id": "C", "text": "المتعلم بالسلك الابتدائي"}, {"id": "D", "text": "المدرسة الابتدائية الجديدة"}]'::jsonb, ARRAY['C']::text[], 'النص (مقتطف من المنهاج الدراسي للتعليم الابتدائي) يصف المتعلم(ة) بالسلك الابتدائي: من يستقبل (أطفال بلغوا سن التمدرس، وافدين من التربية ما قبل المدرسية أو بلا تمدرس أولي)، وما يكتسب من كفايات، وكيف ينمو.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q2', 'exam_primary_2019_sciences_edu_nov', 2, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'يحدد النص أهداف:', false, '[{"id": "A", "text": "التعليم الأولي"}, {"id": "B", "text": "السنتين الأولى والثانية من التعليم الابتدائي"}, {"id": "C", "text": "السنوات الأربع الأولى من التعليم الابتدائي"}, {"id": "D", "text": "سنوات السلك جميعها"}]'::jsonb, ARRAY['D']::text[], 'النص يحدد أهداف المدرسة الابتدائية وغاياتها في مجموع سنوات السلك (إعداد الأطفال للنجاح في مسارهم الدراسي وفي حياتهم المهنية بعده، وتمكينهم من الكفايات)، مع تفصيل خاص بعد ذلك بأهداف السنتين الأولى والثانية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q3', 'exam_primary_2019_sciences_edu_nov', 3, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'تحدد الفقرة الثانية من النص:', false, '[{"id": "A", "text": "غايات المدرسة الابتدائية"}, {"id": "B", "text": "الأهداف النوعية لتعلمات المدرسة الابتدائية"}, {"id": "C", "text": "مواصفات المتعلمين بالمدرسة الابتدائية"}, {"id": "D", "text": "الأهداف الإجرائية لتعلمات المدرسة الابتدائية"}]'::jsonb, ARRAY['C']::text[], 'الفقرة الثانية من النص تعرض ما تمكّن المدرسة المتعلمين منه من كفايات (المعارف والمفاهيم الأساسية، مناهج التفكير، أدوات البحث، مهارات التعبير عن الذات والتفاعل مع المحيط) — أي مواصفات المتعلمين بالمدرسة الابتدائية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q4', 'exam_primary_2019_sciences_edu_nov', 4, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'تعالج الفقرة الثالثة من النص مواصفات:', false, '[{"id": "A", "text": "المتعلمة والمتعلم في المدرسة الابتدائية الجديدة"}, {"id": "B", "text": "المدرسة الابتدائية الجديدة"}, {"id": "C", "text": "المواد الدراسية"}, {"id": "D", "text": "محتويات التعلم"}]'::jsonb, ARRAY['A']::text[], 'الفقرة الثالثة من النص تواصل وصف المتعلمة والمتعلم في المدرسة الابتدائية الجديدة وما يُنتظر منهما (النمو البدني والعقلي والوجداني، الاستقلالية والثقة، تنمية المهارات الحركية والشكلية والرياضية والرمزية والتحليلية والتعبيرية، تعلم القيم، التمكن من مهارات الاستماع والتحدث والقراءة والكتابة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q5', 'exam_primary_2019_sciences_edu_nov', 5, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'المقصود باختلاف مؤهلات الوافدين على التعليم الابتدائي حسب النص اختلاف:', false, '[{"id": "A", "text": "أوضاعهم الاجتماعية"}, {"id": "B", "text": "أوضاعهم الثقافية"}, {"id": "C", "text": "جنسهم (ذكور/إناث)"}, {"id": "D", "text": "درجة استعدادهم للتعلم"}]'::jsonb, ARRAY['D']::text[], 'النص يفتتح بأن المدرسة تستقبل أطفالاً وافدين من مؤسسات التربية ما قبل المدرسية (التعليم الأولي والكتاب القرآني) ومنهم من لم يستفد من أي تمدرس أولي — فالاختلاف بينهم اختلاف في درجة الاستعداد للتعلم.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q6', 'exam_primary_2019_sciences_edu_nov', 6, 'مستجدات نظام التربية والتكوين — نص الانطلاق', 'يندرج النص ضمن مجال:', false, '[{"id": "A", "text": "السياسة التعليمية"}, {"id": "B", "text": "نظريات التعلم"}, {"id": "C", "text": "علم النفس التربوي"}, {"id": "D", "text": "فلسفة التربية"}]'::jsonb, ARRAY['A']::text[], 'النص مقتطف من المنهاج الدراسي (وثيقة رسمية تحدد غايات المدرسة الابتدائية ومواصفات المتعلم وأهداف السنوات) — أي من مجال السياسة التعليمية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q7', 'exam_primary_2019_sciences_edu_nov', 7, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'عدد سنوات التعليم الأولي حسب القانون الإطار:', false, '[{"id": "A", "text": "سنة واحدة"}, {"id": "B", "text": "سنتان"}, {"id": "C", "text": "ثلاث سنوات"}, {"id": "D", "text": "أربع سنوات"}]'::jsonb, ARRAY['B']::text[], 'القانون الإطار 51.17: التعليم الأولي سنتان (من سن 4 إلى 6 سنوات)، وهو إلزامي ومجان.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q8', 'exam_primary_2019_sciences_edu_nov', 8, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'وثيقة مستجدات المنهاج الدراسي للتعليم الابتدائي تهم:', false, '[{"id": "A", "text": "سنوات سلك التعليم الابتدائي جميعها"}, {"id": "B", "text": "السنة الأولى والثانية من التعليم الابتدائي"}, {"id": "C", "text": "السنوات الثلاث من التعليم الابتدائي"}, {"id": "D", "text": "السنوات الأربع الأولى من التعليم الابتدائي"}]'::jsonb, ARRAY['D']::text[], 'وثيقة مستجدات المنهاج (2018) تهم السنوات الأربع الأولى من التعليم الابتدائي — وهو ما شمله المنهاج المنقح لحد الآن (انظر Q12).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q9', 'exam_primary_2019_sciences_edu_nov', 9, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'ضمن المعدل العام لامتحان شهادة الدروس الابتدائية، يحتسب مكون الامتحان الإقليمي الموحد بنسبة:', false, '[{"id": "A", "text": "25 بالمائة"}, {"id": "B", "text": "30 بالمائة"}, {"id": "C", "text": "50 بالمائة"}, {"id": "D", "text": "75 بالمائة"}]'::jsonb, ARRAY['A']::text[], 'الامتحان الإقليمي الموحد يمثل 25% من المعدل العام لشهادة الدروس الابتدائية (والباقي للمراقبة المستمرة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q10', 'exam_primary_2019_sciences_edu_nov', 10, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'القانون الداخلي للمؤسسة ينظم:', false, '[{"id": "A", "text": "المسارات المهنية للفاعلين/ات التربويين بالمؤسسة"}, {"id": "B", "text": "المسارات الدراسية للتلاميذ والتلميذات في المؤسسة"}, {"id": "C", "text": "العلاقات مع شركاء المؤسسة"}, {"id": "D", "text": "علاقات الفاعلين داخل المؤسسة"}]'::jsonb, ARRAY['D']::text[], 'القانون الداخلي ينظم علاقات الفاعلين داخل المؤسسة (حقوقهم وواجباتهم وقواعد العيش المشترك والانضباط).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q11', 'exam_primary_2019_sciences_edu_nov', 11, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'من مهام مدير(ة) المؤسسة التعليمية:', false, '[{"id": "A", "text": "تدبير التعلمات"}, {"id": "B", "text": "تتبع مسار المتعلمات والمتعلمين"}, {"id": "C", "text": "الافتحاص التربوي للمؤسسة"}, {"id": "D", "text": "اتخاذ قرارات بخصوص مسارات المتعلمين"}]'::jsonb, ARRAY['B']::text[], 'من مهام مدير المؤسسة تتبع مسار المتعلمات والمتعلمين (المواظبة، النتائج، التوجيه)؛ أما تدبير التعلمات فمهمة المدرس(ة)، والافتحاص التربوي مهمة هيئة التفتيش.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q12', 'exam_primary_2019_sciences_edu_nov', 12, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'المنهاج الدراسي المنقح شمل لحد الآن:', false, '[{"id": "A", "text": "مستوى دراسيا واحدا"}, {"id": "B", "text": "مستويين"}, {"id": "C", "text": "ثلاثة مستويات"}, {"id": "D", "text": "أربعة مستويات"}]'::jsonb, ARRAY['D']::text[], 'المنهاج المنقح (2018) شمل السنوات الأربع الأولى من التعليم الابتدائي (وهو ما تهمه وثيقة مستجدات المنهاج — انظر Q8).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q13', 'exam_primary_2019_sciences_edu_nov', 13, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'النظرية التي اعتبرت الإدراك الفاعلية الأساسية في التعلم:', false, '[{"id": "A", "text": "السلوكية"}, {"id": "B", "text": "المعرفية"}, {"id": "C", "text": "البنائية"}, {"id": "D", "text": "الجشطالتية"}]'::jsonb, ARRAY['D']::text[], 'النظرية الجشطالتية (نظرية الشكل) تجعل الإدراك أساس التعلم (التعلم إدراك للبنية الكلية للموقف)؛ أما السلوكية فتجعل التعلم ارتباطاً بين المثير والاستجابة، والمعرفية تركز على العمليات الذهنية، والبنائية على بناء المعرفة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'كلمة «الفاعلية» في صياغة السؤال ضبابية في المسح (قد تكون «القاعدة»)؛ الجواب (د) كما في المفتاح.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q14', 'exam_primary_2019_sciences_edu_nov', 14, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يستهدف التقويم التكويني قياس مستوى التحصيل الدراسي:', false, '[{"id": "A", "text": "قبل بداية التعلم"}, {"id": "B", "text": "في أثناء التعلم"}, {"id": "C", "text": "في نهاية التعلم"}, {"id": "D", "text": "في بداية التعلم ونهايته"}]'::jsonb, ARRAY['B']::text[], 'التقويم التكويني يرافق التعلم أثناء سيره (لتشخيص الصعوبات وتصحيح المسار)؛ أما قبل البداية فهو تقويم تشخيصي (تقويم المستلزمات)، وفي النهاية فهو تقويم إجمالي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q15', 'exam_primary_2019_sciences_edu_nov', 15, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'من مقومات حكامة المنظومة التربوية:', false, '[{"id": "A", "text": "التحكم في إعداد التلاميذ/ات"}, {"id": "B", "text": "التحكم التربوي المتعدد الأطراف"}, {"id": "C", "text": "إحكام ترشيد لقطات التسيير والتقدير"}, {"id": "D", "text": "إحكام تدبير الفعل الدراسي"}]'::jsonb, ARRAY['C']::text[], 'من مقومات الحكامة (التدبير الرشيد للمنظومة) إحكام ترشيد لقطات التسيير والتقدير.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q16', 'exam_primary_2019_sciences_edu_nov', 16, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'تقويم المستلزمات عملية تضم:', false, '[{"id": "A", "text": "جميع مستويات التعليم الابتدائي"}, {"id": "B", "text": "جميع مستويات التعليم الثانوي الإعدادي"}, {"id": "C", "text": "جميع مستويات التعليم الثانوي التأهيلي"}, {"id": "D", "text": "بعض المستويات من مختلف الأسلاك"}]'::jsonb, ARRAY['D']::text[], 'تقويم المستلزمات (التشخيصي) يُجرى في مستويات محددة من مختلف الأسلاك (بداية السنة أو بداية الأسلاك)، لا في جميع مستويات سلك واحد.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q17', 'exam_primary_2019_sciences_edu_nov', 17, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يتمحور التعلم في الطرق النشطة حول:', false, '[{"id": "A", "text": "المتعلم/ة"}, {"id": "B", "text": "المادة الدراسية"}, {"id": "C", "text": "الأنشطة"}, {"id": "D", "text": "طريقة التعلم"}]'::jsonb, ARRAY['A']::text[], 'في الطرق النشطة (البيداغوجيا النشطة) يكون المتعلم محور العملية التعليمية-التعلمية: يتعلم بالفعل والممارسة والاكتشاف، لا بتلقي المعرفة جاهزة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q18', 'exam_primary_2019_sciences_edu_nov', 18, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يضم مجال التربية على السلوك المدني مواد:', false, '[{"id": "A", "text": "التربية الإسلامية – الاجتماعيات – التربية الفنية – التربية البدنية"}, {"id": "B", "text": "التربية الإسلامية – التاريخ والجغرافيا – التربية الفنية – التربية البدنية"}, {"id": "C", "text": "التربية الإسلامية – الاجتماعيات – التربية الفنية – التفتح التكنولوجي"}, {"id": "D", "text": "التربية الإسلامية – الاجتماعيات – التربية المدنية – التربية الوطنية"}]'::jsonb, ARRAY['C']::text[], 'حسب المنهاج الدراسي، يضم مجال التربية على السلوك المدني: التربية الإسلامية والاجتماعيات والتربية الفنية والتفتح التكنولوجي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q19', 'exam_primary_2019_sciences_edu_nov', 19, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'تقويم المستلزمات أداة تستهدف رصد:', false, '[{"id": "A", "text": "وضعية بداية المادة الدراسية"}, {"id": "B", "text": "مستوى التحصيل الدراسي"}, {"id": "C", "text": "حاجات المؤسسة التعليمية"}, {"id": "D", "text": "اتجاهات المتعلمين/ات"}]'::jsonb, ARRAY['A']::text[], 'تقويم المستلزمات (التشخيصي) يرصد وضعية المتعلمين في بداية تعلم مادة أو وحدة جديدة: ما يملكونه من مكتسبات سابقة وما يحتاجونه للانطلاق.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q20', 'exam_primary_2019_sciences_edu_nov', 20, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يتم إعداد البرامج والمناهج الدراسية تحت إشراف:', false, '[{"id": "A", "text": "قسم البرامج"}, {"id": "B", "text": "مديرية التخطيط"}, {"id": "C", "text": "هيئة التفتيش التخصصي"}, {"id": "D", "text": "مديرية المناهج"}]'::jsonb, ARRAY['D']::text[], 'إعداد البرامج والمناهج الدراسية من اختصاص مديرية المناهج بوزارة التربية الوطنية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q21', 'exam_primary_2019_sciences_edu_nov', 21, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يدل مفهوم التكوين بالتناوب على:', false, '[{"id": "A", "text": "التكوين بالمدرسة والمقاولة"}, {"id": "B", "text": "التكوين بالمقاولة"}, {"id": "C", "text": "التكوين بالأفواج"}, {"id": "D", "text": "التكوين حسب الفترات"}]'::jsonb, ARRAY['A']::text[], 'التكوين بالتناوب يجمع بين التكوين في مؤسسة التكوين (المدرسة/المعهد) والتكوين في المقاولة (الوسط المهني)، بالتناوب بينهما.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q22', 'exam_primary_2019_sciences_edu_nov', 22, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'مقومات مهنة التدريس هي:', false, '[{"id": "A", "text": "التكوين المعرفي والتربوي والأكاديمي للمدرس"}, {"id": "B", "text": "التكوين المعرفي والبيداغوجي والأكاديمي للمدرس"}, {"id": "C", "text": "التكوين المعرفي والخبرة البيداغوجية والتشبع بأخلاقيات المهنة"}, {"id": "D", "text": "النقل الديداكتيكي للمعارف"}]'::jsonb, ARRAY['B']::text[], 'مقومات مهنة التدريس: التكوين المعرفي (المعارف العلمية للمادة) والبيداغوجي (كفايات التدريس والتقويم) والأكاديمي للمدرس.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q23', 'exam_primary_2019_sciences_edu_nov', 23, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'تتم ترجمة المنهاج الدراسي بشكل مباشر عبر:', false, '[{"id": "A", "text": "الكتاب المدرسي"}, {"id": "B", "text": "التوجيهات التربوية"}, {"id": "C", "text": "الأطر المرجعية"}, {"id": "D", "text": "المذكرات الوزارية"}]'::jsonb, ARRAY['D']::text[], 'حسب المفتاح الرسمي، الترجمة المباشرة للمنهاج الدراسي تتم عبر المذكرات الوزارية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الجواب (د) كما في المفتاح الرسمي؛ والكتاب المدرسي (أ) هو الترجمة التطبيقية الأقرب للمنهاج في نظر كثيرين، لكن المفتاح يختار المذكرات الوزارية.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q24', 'exam_primary_2019_sciences_edu_nov', 24, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'تهم التربية على القيم:', false, '[{"id": "A", "text": "مادة التربية الإسلامية"}, {"id": "B", "text": "مادة التربية على المواطنة"}, {"id": "C", "text": "جميع المواد الدراسية"}, {"id": "D", "text": "جميع المواد الدراسية غير العلمية"}]'::jsonb, ARRAY['A']::text[], 'حسب المفتاح الرسمي، التربية على القيم تهم أساساً مادة التربية الإسلامية.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الجواب (أ) كما في المفتاح الرسمي؛ والتربية على القيم مقاربة عابرة للمواد في المنهاج (تهم جميع المواد)، لكن المفتاح يختار مادة التربية الإسلامية.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q25', 'exam_primary_2019_sciences_edu_nov', 25, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'لمجلس التدبير بالمؤسسة التعليمية دور:', false, '[{"id": "A", "text": "استشاري"}, {"id": "B", "text": "تقريري"}, {"id": "C", "text": "توجيهي"}, {"id": "D", "text": "تقويمي"}]'::jsonb, ARRAY['D']::text[], 'حسب المفتاح الرسمي، لمجلس التدبير بالمؤسسة التعليمية دور تقويمي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الجواب (د) كما في المفتاح الرسمي؛ وفي أدبيات التكوين يُوصف دور مجلس التدبير غالباً بأنه تقريري (يصادق على مشروع المؤسسة والميزانية والقانون الداخلي)، لكن المفتاح يختار «تقويمي».')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q26', 'exam_primary_2019_sciences_edu_nov', 26, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'المجلس الذي من مهامه دراسة وضعية المادة الدراسية هو:', false, '[{"id": "A", "text": "مجلس التدبير"}, {"id": "B", "text": "مجلس القسم"}, {"id": "C", "text": "المجلس التربوي"}, {"id": "D", "text": "المجلس التعليمي"}]'::jsonb, ARRAY['B']::text[], 'مجلس القسم (مجلس الفصل) من مهامه دراسة وضعية القسم والمادة الدراسية: نتائج المتعلمين، وتيرة التعلمات، والصعوبات، واتخاذ القرارات البيداغوجية المناسبة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q27', 'exam_primary_2019_sciences_edu_nov', 27, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'الأنشطة المكملة للكتاب المدرسي بالتعليم الابتدائي حسب المنهاج المنقح هي التمارين التطبيقية:', false, '[{"id": "A", "text": "المنجزة في القسم"}, {"id": "B", "text": "المنجزة في دفتر التمارين"}, {"id": "C", "text": "المنجزة على حوامل إلكترونية"}, {"id": "D", "text": "المنجزة في المنزل"}]'::jsonb, ARRAY['D']::text[], 'حسب المنهاج المنقح، التمارين التطبيقية المكملة للكتاب المدرسي هي المنجزة في المنزل (واجبات منزلية تستكمل تعلمات القسم).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q28', 'exam_primary_2019_sciences_edu_nov', 28, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'الدعم التربوي المندمج هو الدعم الذي يقدم:', false, '[{"id": "A", "text": "خارج الحصة الدراسية"}, {"id": "B", "text": "في إطار برنامج خاص"}, {"id": "C", "text": "خارج المؤسسة"}, {"id": "D", "text": "أثناء الحصة الدراسية"}]'::jsonb, ARRAY['D']::text[], 'الدعم المندمج يُقدم أثناء الحصة الدراسية (مدمج في سير الدرس لمعالجة الصعوبات في حينها)؛ أما خارج الحصة فهو دعم مؤسساتي أو خارجي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q29', 'exam_primary_2019_sciences_edu_nov', 29, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يقصد بالنقل الديداكتيكي نقل المعارف من:', false, '[{"id": "A", "text": "مجالها الخاص إلى مجال التدريس"}, {"id": "B", "text": "مجالها العام إلى مجال خاص"}, {"id": "C", "text": "مجال غير علمي إلى مجال علمي"}, {"id": "D", "text": "مجالها الخاص إلى مجال التعلم"}]'::jsonb, ARRAY['B']::text[], 'حسب المفتاح الرسمي، النقل الديداكتيكي هو نقل المعارف من مجالها العام إلى مجال خاص.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الجواب (ب) كما في المفتاح الرسمي؛ والتعريف المعياري للنقل الديداكتيكي (شفالار) هو تحويل المعرفة العالمة إلى معرفة قابلة للتدريس — أي من مجالها العلمي إلى مجال التدريس/التعلم، وهو ما يقترب منه الخيار (أ)؛ لكن المفتاح يختار (ب).')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q30', 'exam_primary_2019_sciences_edu_nov', 30, 'مستجدات نظام التربية والتكوين — أسئلة مغلقة', 'يستهدف مشروع القسم إشراك المتعلمين:', false, '[{"id": "A", "text": "في تنظيم فضاء القسم"}, {"id": "B", "text": "جماعيا في تخطيط أنشطة التعلم"}, {"id": "C", "text": "في حل بعض مشكلات القسم"}, {"id": "D", "text": "في وضع قواعد التعامل داخل القسم"}]'::jsonb, ARRAY['B']::text[], 'مشروع القسم يقوم على إشراك المتعلمين جماعياً في تخطيط أنشطة التعلم وتنفيذها وتقويمها (تعلم بالمشروع).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q31', 'exam_primary_2019_sciences_edu_nov', 31, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'تضم الرؤية الاستراتيجية التوجيه والملفات لتغيير البرامج والمناهج والكتاب المدرسي', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الرؤية الاستراتيجية لإصلاح منظومة التربية والتكوين والبحث العلمي 2015-2030 تتضمن تطوير البرامج والمناهج والكتاب المدرسي.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'كلمتان في وسط العبارة ضبابيتان في المسح («التوجيه والملفات» كما قُرئتا، بتكبير 600dpi)؛ والجواب (صحيح) مؤكد من المفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q32', 'exam_primary_2019_sciences_edu_nov', 32, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'مدرسة الفرصة الثانية هي المدرسة التي تسمح بدمج ذوي الاحتياجات الخاصة', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'مدرسة الفرصة الثانية تستهدف المنقطعين عن الدراسة (إعادة إدماجهم في مسار تعليمي أو تكويني)، لا دمج ذوي الاحتياجات الخاصة (وهو من اختصاص التربية الدامجة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q33', 'exam_primary_2019_sciences_edu_nov', 33, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'تم تبني مشروع القرائية بعد تجريبه في جميع الأكاديميات', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'مشروع القرائية جُرّب أولاً في أكاديميات محددة قبل تعميمه تدريجياً، لا في جميع الأكاديميات دفعة واحدة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q34', 'exam_primary_2019_sciences_edu_nov', 34, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'تعلم الصوت الدال على الحرف سابق على تعلم رسم الحرف', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'في التعليم المبكر للقراءة، يتعلم المتعلم الصوت (الوعي الصوتي: سماع الصوت وتمييزه) قبل تعلم رسم الحرف (الكتابة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q35', 'exam_primary_2019_sciences_edu_nov', 35, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'مهام المدرس(ة) محددة بمقتضى مقرر تنظيم السنة الدراسية', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'مهام المدرس(ة) محددة بمقتضى النظام الأساسي الخاص بموظفي التربية الوطنية والنصوص التنظيمية ذات الصلة، لا بمقرر تنظيم السنة الدراسية (الذي ينظم الزمن المدرسي والعطل والامتحانات).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q36', 'exam_primary_2019_sciences_edu_nov', 36, 'مستجدات نظام التربية والتكوين — صحيح/خطأ', 'تستهدف الأنشطة المندمجة إدماج المتعلم(ة) داخل جماعة الفصل', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الأنشطة المندمجة تستهدف إدماج التعلمات (ربط المعارف والمهارات في وضعيات دالة ومتكاملة)، لا إدماج المتعلم داخل جماعة الفصل.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q37', 'exam_primary_2019_sciences_edu_nov', 37, 'مستجدات نظام التربية والتكوين — مطابقة', 'اربط(ي) بسهم بين عناصر القائمة الأولى وبين ما يناسب عليه في القائمة الثانية: (37) تأطير التعلمات وتعليمها. القائمة الثانية: أ. الدعم التربوي؛ ب. الديداكتيك؛ ج. القسم؛ د. المنهاج؛ هـ. الأنشطة المندمجة.', false, '[{"id": "A", "text": "الدعم التربوي"}, {"id": "B", "text": "الديداكتيك"}, {"id": "C", "text": "القسم"}, {"id": "D", "text": "المنهاج"}, {"id": "E", "text": "الأنشطة المندمجة"}]'::jsonb, ARRAY['D']::text[], 'تأطير التعلمات وتعليمها من وظائف المنهاج (الإطار العام الذي يؤطر التعلمات ويوجه تعليمها).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة (ثالثاً، 1ن)؛ الخيارات هي عناصر القائمة الثانية (أ–هـ) كما في ورقة الامتحان، والجواب (د) كما في المفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q38', 'exam_primary_2019_sciences_edu_nov', 38, 'مستجدات نظام التربية والتكوين — مطابقة', 'اربط(ي) بسهم بين عناصر القائمة الأولى وبين ما يناسب عليه في القائمة الثانية: (38) تنظيم مضامين التعلمات. القائمة الثانية: أ. الدعم التربوي؛ ب. الديداكتيك؛ ج. القسم؛ د. المنهاج؛ هـ. الأنشطة المندمجة.', false, '[{"id": "A", "text": "الدعم التربوي"}, {"id": "B", "text": "الديداكتيك"}, {"id": "C", "text": "القسم"}, {"id": "D", "text": "المنهاج"}, {"id": "E", "text": "الأنشطة المندمجة"}]'::jsonb, ARRAY['C']::text[], 'تنظيم مضامين التعلمات يتم في القسم (الوحدة التنظيمية الأساسية التي تُنظم فيها المضامين وتُقدم للمتعلمين).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة (ثالثاً، 1ن)؛ الخيارات هي عناصر القائمة الثانية (أ–هـ) كما في ورقة الامتحان، والجواب (ج) كما في المفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q39', 'exam_primary_2019_sciences_edu_nov', 39, 'مستجدات نظام التربية والتكوين — مطابقة', 'اربط(ي) بسهم بين عناصر القائمة الأولى وبين ما يناسب عليه في القائمة الثانية: (39) تنظيم التعلمات خارج الفصل. القائمة الثانية: أ. الدعم التربوي؛ ب. الديداكتيك؛ ج. القسم؛ د. المنهاج؛ هـ. الأنشطة المندمجة.', false, '[{"id": "A", "text": "الدعم التربوي"}, {"id": "B", "text": "الديداكتيك"}, {"id": "C", "text": "القسم"}, {"id": "D", "text": "المنهاج"}, {"id": "E", "text": "الأنشطة المندمجة"}]'::jsonb, ARRAY['A']::text[], 'تنظيم التعلمات خارج الفصل يتم عبر الدعم التربوي (أنشطة الدعم التي تُنظم خارج زمن الحصة/الفصل).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة (ثالثاً، 1ن)؛ الخيارات هي عناصر القائمة الثانية (أ–هـ) كما في ورقة الامتحان، والجواب (أ) كما في المفتاح الرسمي.')
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

-- أسئلة امتحان: مستجدات نظام التربية والتكوين — دورة نونبر 2019 — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_sciences_edu_nov_q40', 'exam_primary_2019_sciences_edu_nov', 40, 'مستجدات نظام التربية والتكوين — مطابقة', 'اربط(ي) بسهم بين عناصر القائمة الأولى وبين ما يناسب عليه في القائمة الثانية: (40) تنظيم التعلمات في إطار مادة دراسية. القائمة الثانية: أ. الدعم التربوي؛ ب. الديداكتيك؛ ج. القسم؛ د. المنهاج؛ هـ. الأنشطة المندمجة.', false, '[{"id": "A", "text": "الدعم التربوي"}, {"id": "B", "text": "الديداكتيك"}, {"id": "C", "text": "القسم"}, {"id": "D", "text": "المنهاج"}, {"id": "E", "text": "الأنشطة المندمجة"}]'::jsonb, ARRAY['B']::text[], 'تنظيم التعلمات في إطار مادة دراسية هو وظيفة الديداكتيك (ديداكتيك المادة: تنظيم تعلم مضامين مادة معينة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة (ثالثاً، 1ن)؛ الخيارات هي عناصر القائمة الثانية (أ–هـ) كما في ورقة الامتحان، والجواب (ب) كما في المفتاح الرسمي.')
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
