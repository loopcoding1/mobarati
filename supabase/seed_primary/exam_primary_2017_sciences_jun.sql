-- ====================================================================
-- مباراتي — امتحان ابتدائي: العلوم، دورة يونيو 2017
-- ====================================================================
-- المصدر: ملف الحل solved/2017/العلوم - 2017.md
--   (سجل الامتحانات رقم 9؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2017/العلوم - امتحان.pdf (8 صفحات).
--   ملف التصحيح الرسمي: exams-ibtida2i/2017/تصحيح العلوم.pdf (4 صفحات،
--   عناصر الإجابة بختم الوزارة) — وهو مرجع الأجوبة (source_type='official').
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صورا وقراءته صفحة بصفحة):
--   * نص كل سؤال وخياراته مطابقة لورقة الامتحان؛ الأجوبة كلها من التصحيح
--     الرسمي (علامات X في جداول التصحيح + عناصر إجابة الجزء الثاني).
--   * بحث Google أولا: لم يوجد حل مفصل منشور على mesconcours.ma أو
--     manasseb.com لهذا الامتحان؛ مدونة جريدة التربية تربط الملفين نفسيهما:
--     https://jarida-tarbiya.blogspot.com/2018/09/sciences-primaire-contrat-2017.html
--
-- ملاحظات عن بنية الامتحان (ليس QCM من 30 سؤالا مثل 2022-2025):
--   * الجزء الأول: 10 أسئلة اختيار من متعدد (أ-د) + 3 مجموعات صحيح/خطأ
--     (السؤال 3، والسؤال 4.1، والسؤال 5: 4 عبارات لكل منها) + السؤال 7
--     (32 عبارة صحيح/خطأ في 8 محاور). كل عبارة صحيح/خطأ سطر مستقل
--     بخيارين: A=صحيح، B=خطأ.
--   * الجزء الثاني (الشق الديداكتيكي): 5 أسئلة مفتوحة (question_type='open'،
--     options '[]'::jsonb، correct_answers فارغ، والجواب في explanation
--     منقول من عناصر الإجابة الرسمية).
--   * مجموع نقط الجزء الأول حسب التصحيح 19 نقطة بينما الترويسة تذكر 20 —
--     للتحقق (انظر ملف الحل). مدة الإنجاز 4 ساعات تخص الاختبار الكامل
--     (العلوم + الرياضيات)؛ مدة مجال العلوم وحده غير مذكورة، لذلك
--     duration_minutes = 240 (مدة الاختبار الكامل؛ لا مدة خاصة بمجال العلوم وحده).
--   * السؤال 4: القاطعة في فرع المحرك M مفتوحة في الشكل؛ لذلك لا يدور
--     المحرك، بينما تبقى فروع المصابيح مغلقة. شدة L2 = 300-150-50 = 100mA،
--     وI2 = 200mA.
--   * صياغة الهدف المهاري (الجزء الثاني، السؤال 1) ومهام المدرس في الصف
--     الثاني من جدول المعالجة (السؤال 4-ب) مقطوعة جزئيا في المسح — موسومة
--     في verification_note بعبارة «للتحقق».
--
-- تسمية المعرفات:
--   exam_primary_2017_sciences_jun ؛ <exam_id>_q<n>
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_sciences_jun', 'specialty_primary', 2017, 'sciences', 'العلوم', 'امتحان العلوم — دورة يونيو 2017', 'دورة يونيو 2017', 240, 56)
ON CONFLICT (id) DO UPDATE SET
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;


-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q1 (السؤال 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q1', 'exam_primary_2017_sciences_jun', 1, 'السؤال 1', 'يتوفر كل من علي وإبراهيم على عقد من ذهب، ويصرح كل منهما أن عقده يحتوي على كمية أكبر من الذهب. ترمز لعقد علي بـ C_A، ولعقد إبراهيم بـ C_B. يحتوي جسم من ذهب نسبة 60% من الذهب إذا كانت كتلته الحجمية محصورة بين 12,9 و14,6؛ ويحتوي جسم من ذهب نسبة 75% من الذهب إذا كانت كتلته الحجمية محصورة بين 15,2 و15,9. يعطي الجدول نتائج قياس كتلة وحجم كل من العقدين: كتلة العقد: علي 60g، إبراهيم 55g؛ حجم العقد: علي 3,9cm³، إبراهيم 4,2cm³. العقد الذي يحتوي على كمية أكبر من الذهب، هو:', false, '[{"id": "A", "text": "العقد C_A لأن كتلته أكبر"}, {"id": "B", "text": "العقد C_B لأن حجمه أكبر"}, {"id": "C", "text": "العقد C_A لأن كتلته الحجمية تفوق 15,2"}, {"id": "D", "text": "العقد C_B لأن كتلته الحجمية تفوق 15,2"}]'::jsonb, ARRAY['C']::text[], 'الكتلة الحجمية لعقد علي ρ = 60/3,9 = 15,38g/cm³، وهي تفوق 15,2 أي أن نسبة الذهب فيه 75%؛ أما عقد إبراهيم فكتلته الحجمية ρ = 55/4,2 = 13,10g/cm³، أي ضمن مجال 60%. فعقد علي أغنى بالذهب.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q2 (السؤال 2.1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q2', 'exam_primary_2017_sciences_jun', 2, 'السؤال 2.1', 'يعطي الشكل ثلاث وضعيات (1) و(2) و(3) حيث الكؤوس وأنابيب الاختبار مكونة من نفس المادة. نفترض أن الكؤوس وأنابيب الاختبار تحتوي بدايتها على نفس الكمية من الماء، وتوجد عند درجات الحرارة المبينة في الشكل: (1) الأنبوب 40°C والكأس 60°C؛ (2) الأنبوب 30°C والكأس 20°C؛ (3) الأنبوب 20°C والكأس 20°C. الوضعية أو الوضعيات التي يحدث فيها تبادل حراري، هي:', false, '[{"id": "A", "text": "الوضعية (3) فقط"}, {"id": "B", "text": "الوضعيتان (1) و(2)"}, {"id": "C", "text": "الوضعيتان (1) و(3)"}, {"id": "D", "text": "الوضعيات (1) و(2) و(3)"}]'::jsonb, ARRAY['B']::text[], 'التبادل الحراري يحدث عند وجود فرق في درجة الحرارة بين الجسمين المتلامسين. في (1) الفرق 20 درجة، وفي (2) الفرق 10 درجات، أما في (3) فدرجتا الحرارة متساويتان (20°C) فلا تبادل.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q3 (السؤال 2.2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q3', 'exam_primary_2017_sciences_jun', 3, 'السؤال 2.2', 'نفترض أنه ليس هناك ضياع للحرارة. عند التوازن الحراري، تكون درجة الحرارة على التوالي في كل من الوضعيتين (1) و(2)، هي:', false, '[{"id": "A", "text": "الوضعية (1): 50°C؛ الوضعية (2): 15°C"}, {"id": "B", "text": "الوضعية (1): 46°C؛ الوضعية (2): 35°C"}, {"id": "C", "text": "الوضعية (1): 50°C؛ الوضعية (2): 25°C"}, {"id": "D", "text": "الوضعية (1): 48°C؛ الوضعية (2): 15°C"}]'::jsonb, ARRAY['C']::text[], 'الكميتان متساويتان ومن نفس المادة، فدرجة التوازن هي متوسط الدرجتين: (1) (40+60)/2 = 50°C، و(2) (30+20)/2 = 25°C.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q4 (السؤال 3 — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q4', 'exam_primary_2017_sciences_jun', 4, 'السؤال 3 — أ', 'نأخذ كمية من الماء عند درجة الحرارة 20°C (الحالة 1). نسخن هذه الكمية، ثم نقيس درجة حرارتها فنجد 60°C (الحالة 2). نوقف التسخين، ونترك الماء يبرد فتصبح درجة حرارته من جديد 30°C (الحالة 3). أجب بصحيح أو خطأ: عند الانتقال من الحالة 1 إلى الحالة 2، يكتسب الماء الحرارة، فترتفع درجة حرارته.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التسخين يزود الماء بطاقة حرارية فيكتسبها وترتفع درجة حرارته من 20°C إلى 60°C.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q5 (السؤال 3 — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q5', 'exam_primary_2017_sciences_jun', 5, 'السؤال 3 — ب', 'عند الانتقال من الحالة 2 إلى الحالة 3، يكتسب الماء الحرارة بينما يفقدها الهواء الخارجي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'عند التبريد يفقد الماء الحرارة للوسط الخارجي (والهواء هو الذي يكتسبها)، لا العكس.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q6 (السؤال 3 — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q6', 'exam_primary_2017_sciences_jun', 6, 'السؤال 3 — ج', 'عند الانتقال من الحالة 1 إلى الحالة 3، تكون كمية الحرارة المكتسبة من طرف الماء أكبر من كمية الحرارة التي يفقدها.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الحرارة المكتسبة عند التسخين ترفع الحرارة 40 درجة (20→60)، والحرارة المفقودة عند التبريد تخفضها 30 درجة فقط (60→30)؛ فالمكتسب أكبر من المفقود.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q7 (السؤال 3 — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q7', 'exam_primary_2017_sciences_jun', 7, 'السؤال 3 — د', 'يكون الماء أبرد في الحالة 3 مقارنة مع الحالة 1.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'درجة الماء في الحالة 3 هي 30°C، وهي أعلى من 20°C في الحالة 1؛ فالماء أسخن لا أبرد.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q8 (السؤال 4.1 — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q8', 'exam_primary_2017_sciences_jun', 8, 'السؤال 4.1 — أ', 'نعتبر التركيب الكهربائي الممثل في الشكل، والمكون من: عمود كهربائي؛ ثلاثة مصابيح L1 وL2 وL3؛ موصل أومي؛ محرك كهربائي M. يمر في فروع الدارة تيار كهربائي، حيث: I1=300mA؛ I3=150mA؛ I5=50mA. أجب بصحيح أو خطأ: التركيب الكهربائي تركيب على التوالي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'المصابيح والموصل الأومي موصلة على التوازي (فروع بين نفس العقدتين)، وليست كلها على التوالي.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q9 (السؤال 4.1 — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q9', 'exam_primary_2017_sciences_jun', 9, 'السؤال 4.1 — ب', 'في التركيب الكهربائي، يضيئ المصباحان L1 وL2 ولا يضيء المصباح L3.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'المصباح L3 يمر فيه تيار I5=50mA فيضيء أيضا؛ فالعبارة تستثنيه خطأ.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q10 (السؤال 4.1 — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q10', 'exam_primary_2017_sciences_jun', 10, 'السؤال 4.1 — ج', 'في التركيب الكهربائي، تضيئ المصابيح L1 وL2 وL3.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التيار I1=300mA يمر في L1، ويتفرع فيمر جزء منه في L2 وجزء في الموصل الأومي وجزء (I5=50mA) في L3؛ فالمصابيح الثلاثة مضيئة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q11 (السؤال 4.1 — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q11', 'exam_primary_2017_sciences_jun', 11, 'السؤال 4.1 — د', 'في التركيب الكهربائي، يدور المحرك الكهربائي M.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'القاطعة في فرع المحرك مفتوحة، فلا يمر فيه أي تيار ولا يدور.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q12 (السؤال 4.2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q12', 'exam_primary_2017_sciences_jun', 12, 'السؤال 4.2', 'شدة التيار الكهربائي المار في المصباح L1 هي:', false, '[{"id": "A", "text": "50mA"}, {"id": "B", "text": "150mA"}, {"id": "C", "text": "250mA"}, {"id": "D", "text": "300mA"}]'::jsonb, ARRAY['D']::text[], 'المصباح L1 في الفرع الرئيسي قبل التفرع، فيمر فيه التيار الكلي I1 = 300mA.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q13 (السؤال 4.3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q13', 'exam_primary_2017_sciences_jun', 13, 'السؤال 4.3', 'شدة التيار الكهربائي I2 هي:', false, '[{"id": "A", "text": "50mA"}, {"id": "B", "text": "100mA"}, {"id": "C", "text": "200mA"}, {"id": "D", "text": "300mA"}]'::jsonb, ARRAY['C']::text[], 'حسب قانون العقد: شدة L2 = I1 − I3 − I5 = 300 − 150 − 50 = 100mA؛ وI2 هو التيار المتبقي بعد تفرع L2، أي I2 = 300 − 100 = 200mA (وهو مجموع I3 + I5، إذ لا يمر تيار في فرع المحرك لأن القاطعة مفتوحة).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q14 (السؤال 4.4)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q14', 'exam_primary_2017_sciences_jun', 14, 'السؤال 4.4', 'شدة التيار الكهربائي المار في المصباح L2 هي:', false, '[{"id": "A", "text": "15mA"}, {"id": "B", "text": "20mA"}, {"id": "C", "text": "60mA"}, {"id": "D", "text": "100mA"}]'::jsonb, ARRAY['D']::text[], 'حسب قانون العقد عند تفرع التيار: شدة L2 = I1 − I3 − I5 = 300 − 150 − 50 = 100mA.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q15 (السؤال 5 — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q15', 'exam_primary_2017_sciences_jun', 15, 'السؤال 5 — أ', 'تنتشر حزمة ضوئية انطلاقا من منبع ضوئي غير نقطي في وسط M. تضيء هذه الحزمة كرة معتمة توجد بين المنبع وشاشة بيضاء. أجب بصحيح أو خطأ: المنبع الضوئي يتكون من نقطة مضيئة واحدة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'المنبع غير نقطي (ممتد)، أي يتكون من عدة نقط مضيئة، لا من نقطة واحدة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q16 (السؤال 5 — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q16', 'exam_primary_2017_sciences_jun', 16, 'السؤال 5 — ب', 'الوسط M شفاف ومتجانس.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'انتشار الضوء في خطوط مستقيمة عبر الوسط يقتضي وسطا شفافا ومتجانسا.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q17 (السؤال 5 — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q17', 'exam_primary_2017_sciences_jun', 17, 'السؤال 5 — ج', 'ينتشر الضوء في الوسط M بالسرعة 300000km·s⁻¹.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'السرعة 300000km/s هي سرعة الضوء في الفراغ؛ أما في وسط مادي فسرعته أقل منها.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q18 (السؤال 5 — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q18', 'exam_primary_2017_sciences_jun', 18, 'السؤال 5 — د', 'يتكون على الشاشة ظل خاص وظل محمول.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الكرة المعتمة تحمل ظلا خاصا على سطحها (جهتها غير المضاءة)، وتسقط ظلا محمولا على الشاشة خلفها، ويحيط به شبه ظل لأن المنبع ممتد.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q19 (السؤال 6)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q19', 'exam_primary_2017_sciences_jun', 19, 'السؤال 6', 'نعطي علبة مظلمة طولها L=20cm. لشيء رأسي AB طوله 3cm صورة A''B''. يوجد الشيء على المسافة OA=30cm من العلبة. تكون الصورة A''B'' المحصلة:', false, '[{"id": "A", "text": "رأسية ومقلوبة وطولها 4cm"}, {"id": "B", "text": "رأسية ومعتدلة وطولها 2cm"}, {"id": "C", "text": "رأسية ومقلوبة وطولها 2cm"}, {"id": "D", "text": "رأسية ومعتدلة وطولها 4cm"}]'::jsonb, ARRAY['C']::text[], 'في العلبة المظلمة (الثقب) تكون الصورة مقلوبة، وطولها A''B'' = AB × L/OA = 3 × 20/30 = 2cm.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q20 (السؤال 7.1 الجهاز العصبي — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q20', 'exam_primary_2017_sciences_jun', 20, 'السؤال 7.1 الجهاز العصبي — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.1 الجهاز العصبي: المخ هو المركز العصبي المتحكم في الحساسية الشعورية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'قشرة المخ هي مركز الإحساس الواعي (الحساسية الشعورية).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q21 (السؤال 7.1 الجهاز العصبي — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q21', 'exam_primary_2017_sciences_jun', 21, 'السؤال 7.1 الجهاز العصبي — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.1 الجهاز العصبي: المخيخ يتدخل في توازن وتنسيق الحركات.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'المخيخ ينظم توازن الجسم وتنسيق الحركات الإرادية.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q22 (السؤال 7.1 الجهاز العصبي — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q22', 'exam_primary_2017_sciences_jun', 22, 'السؤال 7.1 الجهاز العصبي — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.1 الجهاز العصبي: النخاع الشوكي عضو من أعضاء الدماغ.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'النخاع الشوكي جزء من الجهاز العصبي المركزي لكنه ليس عضوا من أعضاء الدماغ (المخ والمخيخ والبصلة السيسائية).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q23 (السؤال 7.1 الجهاز العصبي — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q23', 'exam_primary_2017_sciences_jun', 23, 'السؤال 7.1 الجهاز العصبي — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.1 الجهاز العصبي: السيالة العصبية رسالة عصبية تقتصر على الأعصاب الحسية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'السيالة العصبية تنتقل في الأعصاب الحسية والحركية معا، لا في الحسية فقط.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q24 (السؤال 7.2 التغذية والهضم — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q24', 'exam_primary_2017_sciences_jun', 24, 'السؤال 7.2 التغذية والهضم — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.2 التغذية والهضم: الفيتامينات أغذية بائية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الفيتامينات أغذية واقية (وظيفية)، لا بانية؛ الأغذية البانية هي البروتينات.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q25 (السؤال 7.2 التغذية والهضم — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q25', 'exam_primary_2017_sciences_jun', 25, 'السؤال 7.2 التغذية والهضم — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.2 التغذية والهضم: تتم عملية امتصاص القيت على مستوى المعي الغليظ.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'امتصاص المغذيات (القيت) يتم أساسا على مستوى المعي الدقيق، لا الغليظ.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q26 (السؤال 7.2 التغذية والهضم — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q26', 'exam_primary_2017_sciences_jun', 26, 'السؤال 7.2 التغذية والهضم — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.2 التغذية والهضم: يتم الهضم الفموي بفضل أنزيمات خاصة بهضم السكريات.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'لعاب الفم يحتوي أنزيم الأميلاز الذي يبدأ هضم النشا (من السكريات).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q27 (السؤال 7.2 التغذية والهضم — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q27', 'exam_primary_2017_sciences_jun', 27, 'السؤال 7.2 التغذية والهضم — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.2 التغذية والهضم: ينتج مرض فقر الدم عن نقص في تركيز الخضاب الدموي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'فقر الدم (الأنيميا) ينتج عن نقص الهيموغلوبين (الخضاب الدموي) أو الكريات الحمراء.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q28 (السؤال 7.3 الجهاز الدوراني — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q28', 'exam_primary_2017_sciences_jun', 28, 'السؤال 7.3 الجهاز الدوراني — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.3 الجهاز الدوراني: صمامات القلب توجه الدم خلال دورانه وتمنعه من الرجوع.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'صمامات القلب تمنع رجوع الدم وتضمن جريانه في اتجاه واحد.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q29 (السؤال 7.3 الجهاز الدوراني — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q29', 'exam_primary_2017_sciences_jun', 29, 'السؤال 7.3 الجهاز الدوراني — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.3 الجهاز الدوراني: ينقل الشريان الأبهر (الأورطي) الدم الغني بثنائي أوكسيد الكربون.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الشريان الأبهر ينقل الدم الغني بثنائي الأكسجين إلى الجسم؛ الدم الغني بثنائي أوكسيد الكربون ينقله الشريان الرئوي.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q30 (السؤال 7.3 الجهاز الدوراني — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q30', 'exam_primary_2017_sciences_jun', 30, 'السؤال 7.3 الجهاز الدوراني — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.3 الجهاز الدوراني: ينقل الشريان الرئوي الدم الغني بثنائي أوكسيد الكربون.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الشريان الرئوي ينقل الدم الفقير بالأكسجين والغني بثنائي أوكسيد الكربون من القلب إلى الرئتين.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q31 (السؤال 7.3 الجهاز الدوراني — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q31', 'exam_primary_2017_sciences_jun', 31, 'السؤال 7.3 الجهاز الدوراني — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.3 الجهاز الدوراني: التنفس إحدى الوظائف التي يؤمنها الجهاز الدوراني.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'التنفس وظيفة الجهاز التنفسي؛ أما الجهاز الدوراني فينقل الغازات التنفسية فقط.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q32 (السؤال 7.4 التوالد عند الإنسان — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q32', 'exam_primary_2017_sciences_jun', 32, 'السؤال 7.4 التوالد عند الإنسان — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.4 التوالد عند الإنسان: تنتج الخصية هرمون الأوستروجين.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الخصية تنتج هرمون التستوستيرون؛ الأوستروجين هرمون أنثوي ينتجه المبيض.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q33 (السؤال 7.4 التوالد عند الإنسان — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q33', 'exam_primary_2017_sciences_jun', 33, 'السؤال 7.4 التوالد عند الإنسان — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.4 التوالد عند الإنسان: يتم الإخصاب عند المرأة في الرحم.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الإخصاب يتم في قناة فالوب (البوق)، لا في الرحم.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q34 (السؤال 7.4 التوالد عند الإنسان — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q34', 'exam_primary_2017_sciences_jun', 34, 'السؤال 7.4 التوالد عند الإنسان — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.4 التوالد عند الإنسان: يوجد البرنامج الوراثي المسؤول عن الصفات في غشاء النواة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'البرنامج الوراثي يوجد في الصبغيات داخل النواة، لا في غشائها.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q35 (السؤال 7.4 التوالد عند الإنسان — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q35', 'exam_primary_2017_sciences_jun', 35, 'السؤال 7.4 التوالد عند الإنسان — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.4 التوالد عند الإنسان: يتم التعشيش عند المرأة في الرحم.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التعشيش (انغراس الجنين) يتم في جدار الرحم.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q36 (السؤال 7.5 التكاثر عند النباتات — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q36', 'exam_primary_2017_sciences_jun', 36, 'السؤال 7.5 التكاثر عند النباتات — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.5 التكاثر عند النباتات: الأسدية عضو التوالد الأنثوي عند النبتة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الأسدية هي عضو التوالد الذكري (تنتج حبوب اللقاح)؛ عضو التوالد الأنثوي هو المدقة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q37 (السؤال 7.5 التكاثر عند النباتات — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q37', 'exam_primary_2017_sciences_jun', 37, 'السؤال 7.5 التكاثر عند النباتات — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.5 التكاثر عند النباتات: المدقة عضو التوالد الذكري عند النبتة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'المدقة عضو التوالد الأنثوي (تحتوي المبيض والبويضات).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q38 (السؤال 7.5 التكاثر عند النباتات — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q38', 'exam_primary_2017_sciences_jun', 38, 'السؤال 7.5 التكاثر عند النباتات — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.5 التكاثر عند النباتات: الأبر مرحلة انتقال حبوب اللقاح من المنبر إلى الميسم.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الأبر (التلقيح) هو انتقال حبوب اللقاح من المنبر (المتك) إلى الميسم.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q39 (السؤال 7.5 التكاثر عند النباتات — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q39', 'exam_primary_2017_sciences_jun', 39, 'السؤال 7.5 التكاثر عند النباتات — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.5 التكاثر عند النباتات: التطعيم إحدى الطرق للتكاثر النباتي.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التطعيم طريقة من طرق التكاثر الخضري عند النباتات.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q40 (السؤال 7.6 التربة — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q40', 'exam_primary_2017_sciences_jun', 40, 'السؤال 7.6 التربة — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.6 التربة: مكونات التربة مواد عضوية فقط.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'التربة تتكون من مواد معدنية (رمل، طين، كلس) ومواد عضوية (دبال) وهواء وماء.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q41 (السؤال 7.6 التربة — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q41', 'exam_primary_2017_sciences_jun', 41, 'السؤال 7.6 التربة — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.6 التربة: الملوحة والحموضة من الخصائص الكيميائية للتربة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الملوحة ودرجة الحموضة (pH) من الخصائص الكيميائية للتربة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q42 (السؤال 7.6 التربة — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q42', 'exam_primary_2017_sciences_jun', 42, 'السؤال 7.6 التربة — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.6 التربة: القوام هو الكيفية التي تترتب فيها المواد الحبيبية للتربة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'قوام التربة (بنيتها) هو ترتيب حبيباتها وتجمعها.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q43 (السؤال 7.6 التربة — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q43', 'exam_primary_2017_sciences_jun', 43, 'السؤال 7.6 التربة — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.6 التربة: نكتشف وجود الكلس في التربة بواسطة الترشيح.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الكشف عن الكلس يتم بإضافة حمض (حمض كلور الماء) فيحدث فوران، لا بالترشيح.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q44 (السؤال 7.7 الحيوانات — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q44', 'exam_primary_2017_sciences_jun', 44, 'السؤال 7.7 الحيوانات — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.7 الحيوانات: تساعد الزعانف الفردية السمكة على الحفاظ على توازن الجسم.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الزعانف الفردية (الظهرية والشرجية) تساعد السمكة على التوازن والاستقامة أثناء السباحة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q45 (السؤال 7.7 الحيوانات — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q45', 'exam_primary_2017_sciences_jun', 45, 'السؤال 7.7 الحيوانات — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.7 الحيوانات: كل الحيوانات الفقرية ثديية.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الفقريات تشمل الأسماك والبرمائيات والزواحف والطيور والثدييات؛ فليست كلها ثديية.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q46 (السؤال 7.7 الحيوانات — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q46', 'exam_primary_2017_sciences_jun', 46, 'السؤال 7.7 الحيوانات — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.7 الحيوانات: الخفاش حيوان بيوض.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الخفاش من الثدييات (ولود)، يلد صغارا ويرضعها، رغم أنه يطير.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q47 (السؤال 7.7 الحيوانات — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q47', 'exam_primary_2017_sciences_jun', 47, 'السؤال 7.7 الحيوانات — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.7 الحيوانات: الإخصاب الخارجي خاص بالحيوانات البيوضة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'الإخصاب الخارجي (في الماء غالبا) يخص الحيوانات البيوضة كالأسماك والبرمائيات.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q48 (السؤال 7.8 النباتات — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q48', 'exam_primary_2017_sciences_jun', 48, 'السؤال 7.8 النباتات — أ', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.8 النباتات: تتنفس النبتة ليلا بامتصاص ثنائي الأكسجين وطرح ثاني أكسيد الكربون.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التنفس عند النبات مستمر ليلا ونهارا: امتصاص O2 وطرح CO2 (ليلا يغلب لأنه لا تركيب ضوئي).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q49 (السؤال 7.8 النباتات — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q49', 'exam_primary_2017_sciences_jun', 49, 'السؤال 7.8 النباتات — ب', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.8 النباتات: يتم التركيب الضوئي بفعل تفاعلات الضوء وتفاعلات الظلام.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['A']::text[], 'التركيب الضوئي يتم في مرحلتين: تفاعلات ضوئية (الطور الضوئي) وتفاعلات الظلام (دورة كالفن).', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q50 (السؤال 7.8 النباتات — ج)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q50', 'exam_primary_2017_sciences_jun', 50, 'السؤال 7.8 النباتات — ج', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.8 النباتات: يصنف عالم النباتات ثمرة الطماطم ضمن الخضر.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'الطماطم ثمرة (فاكهة نباتيا) لأنها تنتج من مبيض الزهرة وتحتوي بذورا، وإن استعملت في الطبخ كخضرة.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q51 (السؤال 7.8 النباتات — د)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q51', 'exam_primary_2017_sciences_jun', 51, 'السؤال 7.8 النباتات — د', 'ضع/ضعي علامة (×) في الخانة المناسبة (صحيح / خطأ) — 7.8 النباتات: جميع النباتات، كي تنمو، تحتاج بالضرورة إلى التربة.', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], 'بعض النباتات تنمو بلا تربة (الزراعة المائية، والنباتات المائية والهوائية)، فالتربة ليست ضرورية لكل النباتات.', 'qcm', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q52 (الجزء الثاني — السؤال 1)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q52', 'exam_primary_2017_sciences_jun', 52, 'الجزء الثاني — السؤال 1', 'في حصة من حصص النشاط العلمي بالقسم السادس، أعد أحد المدرسين وضعية (تركيب مصباحين في دارة كهربائية). ضع/ضعي ثلاثة أهداف تسعى هذه الوضعية لتحقيقها (هدف معرفي، هدف مهاري، هدف سلوكي).', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: هدف معرفي: تعرف التركيب على التوالي في دارة كهربائية معطاة. هدف مهاري: رسم رمز مصباح ضمن دارة كهربائية. هدف سلوكي: أن يصبح المتعلم(ة) قادرا على تجنب أخطار التيار الكهربائي المنزلي.', 'open', 'official', NULL, true, 'صياغة الهدف المهاري مقطوعة جزئيا في التصحيح الرسمي — للتحقق.')
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q53 (الجزء الثاني — السؤال 2)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q53', 'exam_primary_2017_sciences_jun', 53, 'الجزء الثاني — السؤال 2', 'في أي مرحلة من مراحل الدرس يمكن توظيف هذه الوضعية؟ علل/عللي جوابك.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: يمكن توظيف هذه الوضعية إما في مرحلة التقويم أو في مرحلة الدعم. التعليل: أسئلتها تطبيقية؛ تفترض أن المتعلمات والمتعلمين قاموا ببنائها سابقا؛ لا وجود لأنشطة تعتمد المناولة والتجريب؛ أسئلتها متنوعة وتستهدف أكثر من هدف تعلمي.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q54 (الجزء الثاني — السؤال 3)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q54', 'exam_primary_2017_sciences_jun', 54, 'الجزء الثاني — السؤال 3', 'ضع/ضعي تخطيطا لمعالجة هذه الوضعية مع إبراز مهام كل من المدرس(ة) والمتعلمين والمتعلمات.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: تقديم الوضعية — المدرس(ة): قراءة الوضعية، شرحها عبر طرح أسئلة للفهم، التحقق من وضوح العمل المطلوب لدى أغلب المتعلمات والمتعلمين؛ المتعلم(ة): ينصت، يجيب عن الأسئلة، يعبر عن مستوى فهمه للوضعية عبر إعادة صياغتها. منح مهلة للإنجاز — المدرس(ة): يعلن عن الزمان الخاص بالإنجاز، يشجع ويواظب إنجازات المتعلمين والمتعلمات؛ المتعلم(ة): ينجز المطلوب. التصحيح الجماعي على السبورة — المدرس(ة): ينتقي متعلمين (بالتناوب)، يوجههم للإجابة عن الأسئلة المطروحة، يثير نقاشات مهمة من أجل تعميق الفهم؛ المتعلم(ة): يجيبون عن الأسئلة، يتفاعلون مع توجيهات المدرس(ة) ومقترحات أصدقائهم وصديقاتهم. التصحيح الفردي على الدفاتر أو على أوراق خاصة — المدرس(ة): يدعو المتعلمات والمتعلمين إلى استدراك أخطائهم المرتكبة؛ المتعلم(ة): يصححون أخطاءهم بالدقة اللازمة.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q55 (الجزء الثاني — السؤال 4 — أ)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q55', 'exam_primary_2017_sciences_jun', 55, 'الجزء الثاني — السؤال 4 — أ', 'أكد/أكدي أن فئة من المتعلمات والمتعلمين لن تتوفق جزئيا أو بشكل تام في معالجة هذه الوضعية. حدد/حددي أحد الأخطاء المرتقب ارتكابها من طرف مجموعة من المتعلمات والمتعلمين، ثم اذكر/اذكري بعض أسبابه المحتملة.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية (أخطاء محتملة وأسبابها): تحديد نوع تركيب مثل مصباح — سببه: الخلط بين مفهومي التوالي والتوازي. اختيار المصباح (أ) كمصباح مضيء — سببه: عدم تعرفه وتتبع القاطع الذي يسير إلى إضاءة المصباح. عدم إدراكه لنتائج تماس سلك الطور والسلك المحايد — سببه: عدم تعرفه مفهوم التماس؛ عدم تعرفه سلك الطور والسلك المحايد. رسم الصهيرة بطريقة خاطئة (الرمز والموضع) — سببه: عدم تعرفه الصهيرة ودورها في الدارة الكهربائية.', 'open', 'official', NULL, true, NULL)
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

-- أسئلة امتحان: العلوم — دورة يونيو 2017 — Q56 (الجزء الثاني — السؤال 4 — ب)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_sciences_jun_q56', 'exam_primary_2017_sciences_jun', 56, 'الجزء الثاني — السؤال 4 — ب', 'اقترح/اقترحي تخطيطا لمعالجة التعثر المعني، وذلك باعتماد الجدول الآتي: الخطأ | طريقة معالجته (مهام المدرس(ة)، مهام المتعلم(ة)) | الوسائل.', false, '[]'::jsonb, ARRAY[]::text[], 'عناصر الإجابة الرسمية: الخطأ: تحديد نوع تركيب مثل مصباح؛ اختيار المصباح (أ) كمصباح مضيء. مهام المدرس(ة): تهييء العدة اللازمة لإعادة إنجاز التجارب المرتبطة بالأخطاء. مهام المتعلم(ة): ينصتون لتوجيهات المدرس؛ يقومون بالمناولة. الوسائل: أسلاك، مصابيح. الخطأ: عدم إدراكه لنتائج تماس سلك الطور والسلك المحايد؛ رسم الصهيرة بطريقة خاطئة (الرمز والموضع). مهام المدرس(ة): (إعادة إنجاز التجارب) المرتكبة، مع الحرص على التركيز على المتعلمات والمتعلمين المتعثرين عند إنجاز المناولات. مهام المتعلم(ة): يلاحظون نتائج التجريب؛ يدونون النتائج؛ يسجلون الخلاصات من أجل تعميمها. الوسائل: قواطع، صهيرة، بطاريات.', 'open', 'official', NULL, true, 'صياغة مهام المدرس في الصف الثاني مقطوعة جزئيا في المسح — للتحقق.')
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