-- ====================================================================
-- مباراتي — ديداكتيك العلوم، دورة دجنبر 2021 (سجل الامتحانات رقم 75)
-- ====================================================================
-- المصدر: ملف الحل solved/2021/ديداكتيك العلوم - 2021.md
--   (الحل: تصحيح مقترح منشور على مناصب، 2026-11-25؛ وُجد ببحث Google أولاً،
--    فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2021/ديداكتيك العلوم.pdf (3 صفحات =
--   الصفحات 7/9 إلى 9/9 من اختبار الديداكتيك الكامل؛ الصفحات 1/9 إلى 6/9،
--   مكوّن الرياضيات، ليست في هذا الملف ولا يغطيها هذا الحل).
--   صفحة التصحيح: https://www.manasseb.com/sujet/sujet-41856-enseignant-2021/
--
-- provenance: مصدر الحل طرف ثالث فقط — تصحيح مقترح من إعداد الموقع، وليس
--   تصحيحاً رسمياً. الموقع نفسه يقول: «تصحيح مقترح من إعداد مناصب للاستئناس،
--   وليس تصحيحًا رسميًا. قد يتضمن أخطاء». لم يُعثر على مصدر ثانٍ لهذا المكوّن
--   (mesconcours يغطي امتحانات أخرى لدورة 2021، وليس هذا الاختبار).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نصوص الأسئلة الأربعة مطابقة حرفياً لورقة الامتحان (الأسئلة 1 و2 في
--     الصفحة 8/9؛ الأسئلة 3 و4 في الصفحة 9/9)، والنقاط: 0.5، 1، 0.25، 0.75.
--   * الوضعية والرسوم الأربعة وتعليقاتها مطابقة لورقة الامتحان (الصفحة 7/9):
--     الرسم 1 «عندما نثني الذراع تنتفخ العضلات: مرور الدم في المعصم» (تسميات:
--     عظم، عضلات، مفصل، دم)؛ الرسم 2 «تتحرك عظام المرفق بمساعدة المفصل»؛
--     الرسم 3 «عندما أثني ذراعي يثني مرفقي» (تسميات: عضلة، مرفق، يد، مع رسم
--     عظم مستقل أسفله)؛ الرسم 4 «العضلات هي التي تقوم بثني الذراع».
--   * النموذجان 1 و2 مطابقان لورقة الامتحان (الصفحة 9/9): النموذج 1 دمية
--     مفصلية؛ النموذج 2 نموذج رافعة بتسميات: مشبك، خيط، ورق مقوى.
--   * ملاحظة تحقق على الرسم 1 (السؤال 2): كلمة «مفصل» تظهر كتسمية في الجزء
--     السفلي من الرسم، لكن العظم مرسوم مستقيماً دون مفصل ظاهر في الجزء العلوي؛
--     عبارة «عظم مستقيم واحد دون مفصل» تُقرأ على الرسم لا على التسمية.
--
-- ملاحظات:
--   * الأسئلة مفتوحة وليست QCM: لا توجد اختيارات (options = '[]')، و
--     correct_answers مصفوفة فارغة؛ والجواب هو عناصر الإجابة المقترحة.
--   * المدة 120 دقيقة هي مدة الاختبار الكامل في الديداكتيك (كل المواد تشترك
--     في ورقة واحدة مدتها ساعتان، حسب صفحة تعليمات الديداكتيك)؛ وليست مدة
--     خاصة بمكوّن العلوم. المدة والمعامل الخاصان بالاختبار الكامل غير ظاهرين
--     في الصفحات الثلاث لهذا الملف.
--   * السؤال 3 موسوم ⚠ «إجابة مرجّحة» من المصدر نفسه (verified=false)؛
--     يمكن اعتبار النشاط أيضاً تقويماً إجمالياً للمقطع.
--   * لا أرقام أسئلة متخطاة: الأسئلة 1–4 كلها مدرجة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_didactics_sciences_dec', 'specialty_primary', 2021, 'didactics_sciences', 'ديداكتيك العلوم', 'امتحان ديداكتيك العلوم (دورة دجنبر 2021)', 'دورة دجنبر 2021', 120, 4)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (4 أسئلة مفتوحة)

-- أسئلة امتحان: ديداكتيك العلوم (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_sciences_dec_q1', 'exam_primary_2021_didactics_sciences_dec', 1, 'النشاط التمهيدي وأهميته', 'أبرز(ي) أهمية هذا النشاط التمهيدي بالنسبة للمتعلمات والمتعلمين. (0.5 نقطة)', false, '[]'::jsonb, ARRAY[]::text[], '- الكشف عن التمثلات والمكتسبات القبلية للمتعلمين حول بنية الذراع وآلية الحركة (تقويم تشخيصي).
- إثارة الدافعية وخلق وضعية-مشكلة تنطلق منها التعلمات (تعارض التصورات).
- تمكين المدرسة من بناء الدرس انطلاقا من التمثلات الخاطئة لتصحيحها.', 'open', 'third_party', 'https://www.manasseb.com/sujet/sujet-41856-enseignant-2021/', true, 'نص السؤال والوضعية والرسوم الأربعة وتعليقاتها مطابقة 100% لملف PDF (الصفحات 7/9–9/9). الجواب عناصر إجابة مقترحة من مناصب، وليس تصحيحاً رسمياً.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_sciences_dec_q2', 'exam_primary_2021_didactics_sciences_dec', 2, 'تمثلات المتعلمات والمتعلمين حول الحركة', 'من خلال الوثيقة، حدد(ي) تمثلات المتعلمات والمتعلمين التي تكشف عنها الرسوم والتعليقات المقدمة. (1 نقطة)', false, '[]'::jsonb, ARRAY[]::text[], '- الرسم 1: انتفاخ العضلة يُفسَّر بمرور الدم؛ عظم مستقيم واحد دون مفصل؛ خلط بين وظائف الدم والعضلات.
- الرسم 2: وعي بوجود عظام متعددة ومفصل، لكن الحركة تُنسب إلى المفصل وحده مع إغفال دور العضلات.
- الرسم 3: عظم واحد طويل يمتد عبر الذراع كلها ويُثنى (العظم ينثني)؛ غياب فكرة المفصل.
- الرسم 4: الذراع مملوءة بالعضلات، والعضلات وحدها تثني الذراع؛ إغفال العظام والمفاصل.
- الخلاصة: الحركة تتطلب تآزر العظام (دعامة) والمفاصل (موضع الحركة) والعضلات (تقلص وارتخاء، مرتبطة بالعظام بواسطة الأوتار).', 'open', 'third_party', 'https://www.manasseb.com/sujet/sujet-41856-enseignant-2021/', true, 'ملاحظة تحقق على الرسم 1: كلمة «مفصل» تظهر كتسمية في الجزء السفلي من الرسم، لكن العظم مرسوم مستقيماً دون مفصل ظاهر في الجزء العلوي؛ عبارة المصدر «عظم مستقيم واحد دون مفصل» تُقرأ على الرسم لا على التسمية. نص السؤال والرسوم الأربعة وتعليقاتها مطابقة 100% لملف PDF. الجواب عناصر إجابة مقترحة من مناصب، وليس تصحيحاً رسمياً.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_sciences_dec_q3', 'exam_primary_2021_didactics_sciences_dec', 3, 'أنواع التقويم', 'حدد(ي) نوع التقويم المقترح من طرف المدرسة خلال هذا النشاط التعلمي. (0.25 نقطة)', false, '[]'::jsonb, ARRAY[]::text[], 'تقويم تكويني (أو تقويم بواسطة الإنجاز/ النمذجة) في نهاية المقطع يتحقق من مدى استيعاب آلية الحركة.
⚠ إجابة مرجّحة: يمكن اعتباره أيضا تقويما إجماليا للمقطع.', 'open', 'third_party', 'https://www.manasseb.com/sujet/sujet-41856-enseignant-2021/', false, 'الموقع نفسه يضع تحفظاً على هذه الإجابة (⚠ «إجابة مرجّحة»): يمكن اعتبار النشاط أيضاً تقويماً إجمالياً للمقطع لأنه يأتي في نهايته. نص السؤال والنموذجان 1 و2 مطابقان 100% لملف PDF؛ الجواب مقترح من مناصب، وليس تصحيحاً رسمياً.')
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

-- أسئلة امتحان: ديداكتيك العلوم (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_sciences_dec_q4', 'exam_primary_2021_didactics_sciences_dec', 4, 'المهارات المعنية بالنشاط', 'حدد(ي) المهارات المعنية من طرف المتعلمات والمتعلمين خلال هذا النشاط. (0.75 نقطة)', false, '[]'::jsonb, ARRAY[]::text[], '- النمذجة: تمثيل ظاهرة بيولوجية بنموذج مبسط (العظام بالورق المقوى، المفصل بالمشبك، العضلة بالخيط).
- مهارات يدوية وتقنية: القص والتركيب واستعمال الأدوات.
- التحليل والربط بين البنية والوظيفة، والتواصل (شرح النموذج وتقديمه).', 'open', 'third_party', 'https://www.manasseb.com/sujet/sujet-41856-enseignant-2021/', true, 'نص السؤال والنموذجان 1 و2 (بتسميات: مشبك، خيط، ورق مقوى) مطابقان 100% لملف PDF. الجواب عناصر إجابة مقترحة من مناصب، وليس تصحيحاً رسمياً.')
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
