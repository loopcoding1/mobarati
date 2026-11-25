-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- الوضعية 1 (6ن): حكاية «فضول سمكة»، السنة الأولى، الاستماع والتحدث، حصة «بنية الحكاية».
-- الوضعية 2 (6ن): درس الإملاء، السنة الرابعة، رسم التاء المبسوطة في آخر الكلمة.
-- الوضعية 3 (3ن): خطأ متعلم في رسم التاء المبسوطة في آخر الفعل.
-- كل الأسئلة مفتوحة (options فارغة، correct_answers فارغة)؛ الأجوبة عناصر من المفتاح الرسمي.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_didactics_ar_nov', 'specialty_primary', 2020, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة نونبر 2020)', 'دورة نونبر 2020', 240, 5)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (5 سؤالاً)

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_ar_nov_q1', 'exam_primary_2020_didactics_ar_nov', 1, 'الاستماع والتحدث', 'الوضعية الأولى (6ن): النص الآتي مقتطف من حكاية بعنوان «فضول سمكة»، اعتمدها أحد مدرسي السنة الأولى من التعليم الابتدائي في مكون الاستماع والتحدث. أنطلق من هذا النص ثم: أصوغ هدفين تعليميين لحصة «بنية الحكاية»: الهدف الأول؛ الهدف الثاني.', false, '[]'::jsonb, ARRAY[]::text[], 'الهدف الأول: يحدد المتعلم(ة) وضعية البداية للحكاية. الهدف الثاني: يحدد المتعلم(ة) وضعية التحول للحكاية. (تُقبل جميع الأهداف المرتبطة بالحصة: الفهم، التقطيع، تحديد مقاطع البنية السردية... — من المفتاح.) 0,5ن لكل هدف.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_ar_nov_q2', 'exam_primary_2020_didactics_ar_nov', 2, 'الاستماع والتحدث', 'الوضعية الأولى: أستحضر أنشطة حصة بنية الحكاية وأنجز ما يأتي: التهيئة (1ن)؛ التسميع (1ن)؛ تحديد بنية الحكاية (3ن): المقطع الأول (1,5ن)، المقطع الثاني (1,5ن).', false, '[]'::jsonb, ARRAY[]::text[], 'التهيئة (1ن): تهيئة الفضاء، تهيئة الوسائل، التمهيد: التذكير بالحصة السابقة، عناصر الحكاية، أسئلة مرتبطة ببعض أحداث الحكاية... التسميع (1ن): يسمع المدرس(ة) الحكاية مرة أو مرتين، بصوت مسموع ومعبر، مع الطلاقة... تحديد بنية الحكاية (3ن): المقطع الأول (1,5ن) — وضعية البداية: من «عاشت سمكة...» إلى «...خلف صخرة»، مع أسئلة مساعدة للتلخيص أو اقتراح عنوان للمقطع؛ المقطع الثاني (1,5ن) — وضعية التحول: من «ذات يوم...» إلى نهاية النص. (من المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_ar_nov_q3', 'exam_primary_2020_didactics_ar_nov', 3, 'الإملاء', 'الوضعية الثانية (6ن): يُقدَّم درس الإملاء في السنة الرابعة من التعليم الابتدائي في حصتين، تخصص الحصة الأولى لاستكشاف الظاهرة، وتخصص الحصة الثانية للتثبيت وإنجاز تطبيقات عليها. أقترح أنشطة لتدبير التعلمات الخاصة برسم التاء المبسوطة في آخر الكلمة مستحضراً العناصر الآتية: أ. وضعية الانطلاق؛ ب. أنشطة لاستكشاف الظاهرة الإملائية؛ ج. الوسائل التعليمية الملائمة لأنشطة استكشاف الظاهرة؛ د. تنويع أشكال العمل؛ هـ. أنشطة التقويم التكويني.', false, '[]'::jsonb, ARRAY[]::text[], 'أ. وضعية الانطلاق (2,5ن): تمهيد بالتذكير بقواعد رسم التاء المربوطة أو أي تمهيد مناسب (1ن) + سند يتضمن الظاهرة (جملة/جمل أو نص) (1,5ن). ب. أنشطة استكشاف الظاهرة (1,5ن): تحديد الكلمات المنتهية بتاء مبسوطة؛ تصنيفها حسب نوعها (اسم، فعل، حرف)؛ دراستها واستخلاص قواعد رسمها حسب حالاتها المختلفة. ج. الوسائل (0,5ن): نص، صورة، ألواح، طباشير ملون/أقلام، مورد رقمي... د. أشكال العمل (0,5ن): فردي، ثنائي، في مجموعات (يُكتفى بالفردي مراعاة لقواعد الاحتراز الصحي). هـ. أنشطة التقويم التكويني (1ن): أنشطة تقويمية شفهية وكتابية باستعمال الألواح أو أي وسيلة تؤدي إلى تحقيق الهدف. (من المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_ar_nov_q4', 'exam_primary_2020_didactics_ar_nov', 4, 'الإملاء', 'الوضعية الثالثة (3ن): أثناء الحصة الثانية من درس الإملاء، أخطأ متعلم في رسم التاء المبسوطة في آخر الفعل. أ. أحدد مصدراً محتملاً من مصادر هذا الخطأ. (1ن)', false, '[]'::jsonb, ARRAY[]::text[], 'مصادر محتملة للخطأ: عدم القدرة على التمييز بين الاسم والفعل؛ عدم التحكم في مفهوم الفعل مجرداً أو مسنداً إلى التاء المتحركة وتاء التأنيث الساكنة... (من المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_ar_nov_q5', 'exam_primary_2020_didactics_ar_nov', 5, 'الإملاء', 'الوضعية الثالثة: ب. أقترح نشاطاً لمعالجة الخطأ المرتكب. (2ن)', false, '[]'::jsonb, ARRAY[]::text[], 'نشاط المعالجة: تعريف الفعل باعتباره دالاً على حدث أو حالة في زمن معين؛ تعريف الأفعال في الماضي مع إسنادها إلى التاء المتحركة والتاء الساكنة... (من المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
