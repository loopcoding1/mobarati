-- ====================================================================
-- مباراتي — العلوم، مادة التخصص وديداكتيك العلوم، دورة يناير 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/العلوم - دورة يناير 2018.md
--   (الورقة المشتركة «اختبار في العلوم والرياضيات»؛ هذا الملف يغطي الجزء
--   الخاص بالعلوم فقط (Q24–Q45)؛ جزء الرياضيات (Q1–Q23) في ملف مستقل:
--   exam_primary_2018_maths_jan.sql).
--   لا يوجد ملف PDF لورقة الامتحان في مساحة العمل؛ نصوص الأسئلة من الحل
--   المنشور على mesconcours.ma (نفس الورقة، 45 سؤالا):
--   https://mesconcours.ma/ar/concours/enseignement/2018-1020/
--   ملف التصحيح الرسمي (في مساحة العمل): exams-ibtida2i/2018/تصحيح العلوم -
--   دورة يناير 2018.pdf (صفحتان، عناصر الإجابة الرسمية).
--
-- التحقق (100% مقابل المفتاح الرسمي بعد تصييره صورا وقراءته صفحة بصفحة):
--   * الأجوبة الـ22 كلها مطابقة لعناصر الإجابة الرسمية — صفر تعارضات.
--   * القيم العددية Q31 (7 mL) وQ32 (30 g، 135,1 g، 19,3 g/mL) أُعيد حسابها
--     من معطيات التجربة وتطابقت حرفيا مع المفتاح.
--   * رسوم الوثائق السبعة (Q27 محرار، Q29 منحنيان، Q31 مخبار، Q33 شبكة
--     غذائية، Q36 عضلة، Q38 أنبوبان هضميان، Q41 زهرة) عُاينت ووصفها نص
--     السؤال في هذا الملف كما في الورقة الأصلية.
--   * المدة (ساعتان = 120 دقيقة) والمعامل (2) من غلاف ورقة الامتحان — نفس
--     اتفاقية ملف الرياضيات الشقيق (المدة الكاملة للاختبار المشترك).
--
-- ترقيم الأسئلة (متواصل 24–45، مطابق لترقيم الورقة المشتركة وmesconcours.ma):
--   Q24–Q32 = الموضوع الأول: مجال العلوم (10 نقط)؛ Q33–Q42 = الموضوع الثاني:
--   10 أسئلة اختيار من متعدد (10 نقط)؛ Q43–Q45 = الموضوع الثالث: ديداكتيك
--   العلوم (20 نقطة: 3 + 12 + 5).
--   لا توجد أسئلة مُتخطَّاة: جميع الأسئلة الـ22 مُدرَجة بأجوبة موثقة.
--
-- ملاحظات مسجلة (verification_note):
--   * عنوان الموضوع الثالث في المفتاح الرسمي مكتوب «10 نقط» لكن سلم التنقيط
--     المفصل فيه (3 + 2 + 2 + 6 + 2 + 5 = 20) ومجموع العلوم (40) يؤكدان
--     أن الصحيح 20 نقطة — خطأ مطبعي في عنوان المفتاح.
--   * Q26 سؤال ترتيب؛ خُزّن كنوع open والترتيب الصحيح في التعليل.
--   * الأسئلة المعتمدة على وثيقة (رسم) موسومة في verification_note.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2018_sciences_jan
--   <exam_id>_q<n>  للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_sciences_jan', 'specialty_primary', 2018, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018)', 'دورة يناير 2018', 120, 22)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (22 سؤالا: 9 مفتوحة + 1 مطابقة + 10 QCM + 2 مفتوحة ديداكتيك)

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q24', 'exam_primary_2018_sciences_jan', 24, 'الماء: أهميته والحفاظ عليه', 'يعتبر الماء مادة أساسية للحياة حيث يستعمل في مجالات عدة.
1. أذكر عنصرين تبرز من خلالهما أهمية الماء، وإجراءين يساهمان في الحفاظ عليه. (1,5 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'أهمية الماء (عنصران من): الاستعمال اليومي (الشرب، الغسل، التنظيف)؛ المجال الفلاحي (الري)؛ المجال الصناعي (إنتاج الكهرباء، التبريد، الصناعات الغذائية). الحفاظ عليه (إجراءان): ترشيد الاستهلاك (إغلاق الصنابير، إصلاح التسربات، الري بالتنقيط)؛ حمايته من التلوث (معالجة المياه العادمة، عدم رمي النفايات في المجاري المائية). يمنح سلم التنقيط 1 ن لعنصري الأهمية و0,5 ن للإجراءين. يقبل كل مجال استعمال حقيقي وكل إجراء ملموس يحد من التبذير أو التلوث. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q25', 'exam_primary_2018_sciences_jan', 25, 'تغيرات حالات المادة', '2. يخضع الماء إلى عدة تحولات فيزيائية. أكتب الحرف الموافق لكل عنصر من المجموعة الأولى واقرنه بالرقم الذي يقابله في المجموعة الثانية. (1 ن)
المجموعة الأولى: (أ) تحول الجليد إلى ماء سائل؛ (ب) تحول الماء السائل إلى جليد؛ (ج) تحول الماء السائل إلى بخار الماء؛ (د) تحول بخار الماء إلى ماء سائل.
المجموعة الثانية: (1) تكاثف؛ (2) غليان؛ (3) تجمد؛ (4) تبخر؛ (5) انصهار.', false, '[{"id": "1", "text": "تكاثف"}, {"id": "2", "text": "غليان"}, {"id": "3", "text": "تجمد"}, {"id": "4", "text": "تبخر"}, {"id": "5", "text": "انصهار"}]'::jsonb, ARRAY['5','3','4','1']::text[], 'أ ← 5 (انصهار)؛ ب ← 3 (تجمد)؛ ج ← 4 (تبخر)؛ د ← 1 (تكاثف). الانصهار انتقال من الصلب إلى السائل والتجمد عكسه. التبخر انتقال من السائل إلى الغاز والتكاثف عكسه. الغليان حالة خاصة من التبخر تحدث في كل كتلة السائل عند درجة محددة، لذلك يبقى الرقم 2 دون استعمال (0,25 ن لكل ربط صحيح). الجواب حسب المفتاح الرسمي.', 'matching', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q26', 'exam_primary_2018_sciences_jan', 26, 'دورة الماء في الطبيعة', '3. يخضع الماء في الطبيعة إلى دورة طبيعية تمكنه من تجديد مصادره. تتضمن هذه الدورة المراحل الآتية: (أ) سيلان مياه الأمطار نحو الأنهار والأودية والمحيطات؛ (ب) تبخر مياه البحار والمحيطات والأنهار؛ (ج) تكاثف البخار في الطبقات العليا للجو؛ (د) تحول السحب إلى أمطار أو ثلوج. رتب هذه المراحل حسب تسلسلها الطبيعي. (1 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'الترتيب الصحيح: ب ← ج ← د ← أ. تبدأ الدورة بتبخر مياه البحار بفعل حرارة الشمس، ثم يتكاثف البخار في الطبقات الباردة فتتكون السحب، ثم تتساقط الأمطار أو الثلوج، ثم تسيل المياه نحو الأنهار والمحيطات فتعود الدورة. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'سؤال ترتيب؛ خُزّن كنوع open والترتيب الصحيح في التعليل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q27', 'exam_primary_2018_sciences_jan', 27, 'قياس درجة الحرارة', '4.1. تمثل الوثيقة ثلاث وضعيات (1) و(2) و(3) لتعيين درجة حرارة نفس الكمية من الماء. عين الوضعية أو الوضعيات السليمة لتعيين درجة الحرارة. علل جوابك. (1 ن)
[الوثيقة: ثلاث وضعيات لمحرار مغمور في كأس ماء: (1) خزان المحرار يلمس قعر الإناء والعين تنظر من الأعلى بزاوية (القراءة 14,4 °C)؛ (2) الخزان مغمور دون لمس القعر لكن العين منخفضة عن مستوى السائل المحراري (القراءة 14,3 °C)؛ (3) الخزان مغمور كليا دون لمس القعر والعين في نفس المستوى الأفقي لطرف العمود (القراءة 14,1 °C).]', false, '[]'::jsonb, ARRAY[]::text[], 'الوضعية (3) وحدها: خزان المحرار مغمور كليا في الماء دون لمس قعر الإناء، والعين في نفس المستوى الأفقي الذي وصله السائل المحراري. في الوضعية (1) يلمس الخزان قعر الإناء فيقيس جزئيا حرارة الإناء، وفي الوضعية (2) لا تكون العين في مستوى طرف العمود فيقع خطأ اختلاف المنظر. الوضعية (3) تحترم الشرطين معا. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q28', 'exam_primary_2018_sciences_jan', 28, 'قياس درجة الحرارة', '4.2. حدد درجة حرارة الماء. (0,5 ن)', false, '[]'::jsonb, ARRAY[]::text[], '14,1 °C — وهي القراءة الموافقة للوضعية السليمة (3). القراءتان 14,3 °C و14,4 °C ناتجتان عن خطأي القياس المذكورين في السؤال السابق. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q29', 'exam_primary_2018_sciences_jan', 29, 'تغيرات حالات المادة', '5. نضع في كأسين (1) و(2) على التوالي الماء المقطر والماء المالح عند نفس درجة الحرارة، ثم نقوم بتسخين الكأسين ونقيس تدريجيا درجة الحرارة. يمثل المنحنيان ① و② تطور درجة الحرارة بدلالة الزمن خلال عملية التسخين.
[الوثيقة: منحنى درجة الحرارة T (°C) بدلالة الزمن t (min): يرتفع المنحنيان معا حتى 100 °C، ثم يستقر المنحنى ② أفقيا عند 100 °C بينما يواصل المنحنى ① الارتفاع ببطء فوق 100 °C.]
5.1. أقرن كل منحنى بمحتوى كل كأس. علل جوابك. (1 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'المنحنى ①: الماء المالح؛ المنحنى ②: الماء المقطر. التعليل: درجة حرارة المنحنى ② تستقر في 100 °C خلال تغير الحالة الفيزيائية، بينما تستمر درجة حرارة المنحنى ① في الارتفاع بعد 100 °C. الجسم الخالص (الماء المقطر) يغلي عند درجة حرارة ثابتة تحت الضغط العادي، فيظهر منحناه مستقيما أفقيا؛ أما الخليط (الماء المالح) فيغلي فوق 100 °C وتتزايد حرارته كلما تركز الملح بتبخر الماء. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q30', 'exam_primary_2018_sciences_jan', 30, 'تغيرات حالات المادة', '5.2. حدد درجة حرارة الماء المقطر أثناء التبخر (الغليان). (0,5 ن)', false, '[]'::jsonb, ARRAY[]::text[], '100 °C — نقرأ قيمة الاستقرار الأفقي للمنحنى ②، وهي 100 °C، درجة غليان الماء الخالص تحت الضغط الجوي العادي. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q31', 'exam_primary_2018_sciences_jan', 31, 'الكتلة الحجمية', '6. لتحديد الكتلة الحجمية لجسم صلب متجانس كتلته m، ننجز التجربة الممثلة في الوثيقة، حيث:
- نقيس كتلة المخبار المدرج فارغا (53,5 g)؛
- نصب حجما من الماء في المخبار (30 mL)؛
- ندخل الجسم الصلب في المخبار الذي يحتوي على الماء (يصل الماء إلى 37 mL)، ونقيس كتلة المجموعة (جسم صلب، ماء، مخبار): 218,6 g.
نعطي: الكتلة الحجمية للماء: 1 g/mL.
[الوثيقة: مخبار مدرج فارغ على ميزان (53,5 g)؛ مخبار فيه ماء حتى 30 mL؛ مخبار فيه الماء والجسم (الجسم في القعر) حتى 37 mL على ميزان (218,6 g).]
6.1. حدد حجم الجسم الصلب. (0,5 ن)', false, '[]'::jsonb, ARRAY[]::text[], '7 mL: حجم الجسم يساوي حجم الماء الذي أزاحه، أي الفرق بين القراءتين قبل إدخال الجسم وبعده: 37 − 30 = 7 mL. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q32', 'exam_primary_2018_sciences_jan', 32, 'الكتلة الحجمية', '6.2. أوجد الكتلة الحجمية للجسم الصلب. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'كتلة الماء: 30 mL × 1 g/mL = 30 g. كتلة الجسم: 218,6 − (53,5 + 30) = 135,1 g. الكتلة الحجمية: 135,1 ÷ 7 = 19,3 g/mL. الجواب حسب المفتاح الرسمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q33', 'exam_primary_2018_sciences_jan', 33, 'الشبكات الغذائية', 'الموضوع الثاني (10 نقط): تتضمن كل وضعية من الوضعيات معطيين أو ثلاثة، وبالنسبة لكل معطى هناك أربعة اقتراحات من بينها اقتراح واحد صحيح.
الوضعية 1: يبرز الرسم الآتي بعض العلاقات الغذائية في التربة (السهم يعني: يؤكل من طرف).
[الرسم: شبكة غذائية: الفرش الحرجي ← حمار قبان ← عنكبوت؛ الفرش الحرجي ← الدودة الألفية ← عنكبوت؛ الفرش الحرجي ← الدودة الألفية ← أم الأربعة والأربعين؛ الفرش الحرجي ← دودة الأرض ← أم الأربعة والأربعين؛ فطر ← دودة الأرض ← أم الأربعة والأربعين؛ فطر ← يرقة حشرة ← أم الأربعة والأربعين؛ جذور النبات ← يرقة حشرة ← أم الأربعة والأربعين.]
الوضعية 1 - 1. حمار قبان حيوان:', false, '[{"id": "A", "text": "لاحم لكونه مستهلكا من الدرجة الأولى"}, {"id": "B", "text": "عاشب لكونه مستهلكا من الدرجة الثانية"}, {"id": "C", "text": "يتدخل في تشكل الدبال انطلاقا من الفرش الحرجي"}, {"id": "D", "text": "منتج للمادة العضوية انطلاقا من الأملاح المعدنية"}]'::jsonb, ARRAY['C']::text[], 'حمار قبان يتغذى على الفرش الحرجي (أوراق ميتة)، فهو محلل يساهم في تشكل الدبال انطلاقا من هذا الفرش. ليس لاحما ولا مستهلكا من الدرجة الثانية، ولا ينتج المادة العضوية لأنه ليس نباتا. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q34', 'exam_primary_2018_sciences_jan', 34, 'الشبكات الغذائية', 'الوضعية 1 - 2. يتضمن هذا الرسم شبكة غذائية مكونة من:', false, '[{"id": "A", "text": "أربع سلاسل غذائية"}, {"id": "B", "text": "خمس سلاسل غذائية"}, {"id": "C", "text": "ست سلاسل غذائية"}, {"id": "D", "text": "سبع سلاسل غذائية"}]'::jsonb, ARRAY['D']::text[], 'نعد السلاسل من كل مصدر إلى آخر مستهلك: فرش حرجي ← حمار قبان ← عنكبوت؛ فرش حرجي ← الدودة الألفية ← عنكبوت؛ فرش حرجي ← الدودة الألفية ← أم الأربعة والأربعين؛ فرش حرجي ← دودة الأرض ← أم الأربعة والأربعين؛ فطر ← دودة الأرض ← أم الأربعة والأربعين؛ فطر ← يرقة حشرة ← أم الأربعة والأربعين؛ جذور النبات ← يرقة حشرة ← أم الأربعة والأربعين. المجموع سبع سلاسل. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q35', 'exam_primary_2018_sciences_jan', 35, 'الشبكات الغذائية', 'الوضعية 1 - 3. تتميز السلسلة الغذائية بعلاقات غذائية يتم فيها انتقال المادة وتدفق الطاقة مصحوبة بضياع جزء منها في شكل:', false, '[{"id": "A", "text": "حرارة وعن طريق التركيب الضوئي"}, {"id": "B", "text": "حرارة وعن طريق التنفس"}, {"id": "C", "text": "مواد عضوية غير قابلة للاستهلاك"}, {"id": "D", "text": "مواد عضوية غير قابلة للتمعدن"}]'::jsonb, ARRAY['B']::text[], 'عند كل مستوى غذائي يستعمل الكائن جزءا من الطاقة في التنفس، فيتحرر جزء كبير منها في شكل حرارة لا تنتقل إلى المستوى الموالي. التركيب الضوئي يدخل الطاقة إلى السلسلة ولا يضيعها. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q36', 'exam_primary_2018_sciences_jan', 36, 'العضلة والحركة', 'الوضعية 2 - 1. لتوضيح بعض خاصيات العضلة نقترح المناولات الممثلة في الوثيقة (عضلة معلقة أمام مسطرة مدرجة: تهييجها، ثم تعليق ثقل بها ثم إزالته). تبرز هذه المناولات الخاصيات المميزة للعضلة الهيكلية وهي:
[الوثيقة: عضلة معلقة أمام مسطرة مدرجة: عند تهييجها تقصر (تتقلص)؛ وعند تعليق ثقل بها تستطيل ثم تعود إلى طولها الأصلي بعد إزالة الثقل.]', false, '[{"id": "A", "text": "المرونة والاهتياجية والقلوصية"}, {"id": "B", "text": "الاستطالة والاهتياجية والقلوصية"}, {"id": "C", "text": "التشنج والاهتياجية والقلوصية"}, {"id": "D", "text": "التشنج والاستطالة والقلوصية"}]'::jsonb, ARRAY['A']::text[], 'تتقلص العضلة (تقصر) عند تهييجها، وهذا يبرز الاهتياجية (الاستجابة للتهييج) والقلوصية (القدرة على التقلص). وتستطيل تحت الثقل ثم تعود إلى طولها الأصلي بعد إزالته، وهذه هي المرونة. التشنج ليس خاصية بل حالة مرضية. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q37', 'exam_primary_2018_sciences_jan', 37, 'العضلة والحركة', 'الوضعية 2 - 2. تتم حركة ثني الذراع بفعل:', false, '[{"id": "A", "text": "تقلص العضلة العضدية الكعبرية وارتخاء العضلة الثنائية الرأس"}, {"id": "B", "text": "ارتخاء العضلة العضدية الكعبرية وتقلص العضلة الثنائية الرأس"}, {"id": "C", "text": "ارتخاء العضلة الثلاثية الرأس وتقلص العضلة الثنائية الرأس"}, {"id": "D", "text": "ارتخاء العضلة الثنائية الرأس وتقلص العضلة الثلاثية الرأس"}]'::jsonb, ARRAY['C']::text[], 'عضلتا الذراع متضادتان: عند الثني تتقلص العضلة الثنائية الرأس (الأمامية) وترتخي العضلة الثلاثية الرأس (الخلفية)، والعكس عند البسط. العضلة الكعبرية تعمل في الساعد وليست المسؤولة الرئيسية في هذه المقترحات. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q38', 'exam_primary_2018_sciences_jan', 38, 'الأنبوب الهضمي والتغذية', 'الوضعية 3 - 1. تبين الوثيقة بعض مكونات الأنبوب الهضمي لحيوانين مختلفين (1: معدة، 2: معي دقيق، 3: أعور، 4: معي غليظ). أنبوبا الشكلين (أ) و(ب) يخصان حيوانين:
[الوثيقة: الشكل (أ): معدة صغيرة بتجويف واحد (1)، معي دقيق قصير متعرج (2)، أعور صغير (3)، معي غليظ قصير (4). الشكل (ب): معدة كبيرة بعدة تجاويف (1)، معي دقيق طويل (2)، أعور نام حلزوني (3)، معي غليظ طويل (4).]', false, '[{"id": "A", "text": "من النوع نفسه بأعمار مختلفة"}, {"id": "B", "text": "من النوع نفسه بجنسين مختلفين"}, {"id": "C", "text": "من نوعين مختلفين لهما نفس النظام الغذائي"}, {"id": "D", "text": "من نوعين مختلفين بنظامين غذائيين مختلفين"}]'::jsonb, ARRAY['D']::text[], 'الأنبوبان مختلفان في بنيتهما: (ب) معدة بعدة تجاويف وأعور نام ومعي غليظ طويل، وهي صفات العاشب المجتر؛ (أ) معدة بتجويف واحد وأعور ضامر ومعي غليظ قصير، وهي صفات اللاحم. اختلاف البنية يعكس نظامين غذائيين مختلفين لنوعين مختلفين. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q39', 'exam_primary_2018_sciences_jan', 39, 'الأنبوب الهضمي والتغذية', 'الوضعية 3 - 2. الأنبوب الهضمي المميز للنظام الغذائي العاشب هو:', false, '[{"id": "A", "text": "أنبوب الشكل (أ)"}, {"id": "B", "text": "أنبوب الشكل (ب)"}, {"id": "C", "text": "كلا من أنبوبي الشكلين (أ) و(ب)"}, {"id": "D", "text": "مختلف عن أنبوبي الشكلين (أ) و(ب)"}]'::jsonb, ARRAY['B']::text[], 'أنبوب الشكل (ب) يجمع صفات العاشب: معدة كبيرة بعدة تجاويف، معي دقيق طويل جدا، أعور نام، ومعي غليظ طويل ملتف. هذه البنية تطيل مدة هضم السليلوز. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q40', 'exam_primary_2018_sciences_jan', 40, 'الأنبوب الهضمي والتغذية', 'الوضعية 3 - 3. يتميز الأنبوب الهضمي للحيوان اللاحم بـ:', false, '[{"id": "A", "text": "معدة بعدة تجاويف، معي دقيق قصير نسبيا، أعور ضامر، معي غليظ قصير"}, {"id": "B", "text": "معدة بعدة تجاويف، معي دقيق طويل، أعور نام، معي غليظ طويل"}, {"id": "C", "text": "معدة بتجويف واحد، معي دقيق قصير نسبيا، أعور ضامر، معي غليظ قصير"}, {"id": "D", "text": "معدة بتجويف واحد، معي دقيق طويل، أعور نام، معي غليظ قصير"}]'::jsonb, ARRAY['C']::text[], 'غذاء اللاحم (اللحم) سهل الهضم، فأنبوبه قصير نسبيا: معدة بتجويف واحد، معي دقيق قصير نسبيا، أعور ضامر ومعي غليظ قصير. المعدة بعدة تجاويف والأعور النامي من صفات العاشب. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q41', 'exam_primary_2018_sciences_jan', 41, 'التكاثر عند النبات (الزهرة)', 'الوضعية 4 - 1. تمثل الوثيقة رسما تخطيطيا لمقطع طولي على مستوى زهرة نبات معين. الزهرة الممثلة بالوثيقة:
[الوثيقة: مقطع طولي لزهرة: في الوسط مدقة (مبيض فيه بويضة، قلم، ميسم) محاطة بست أسدية (خيط ومئبر)، وبتلتان كبيرتان على الجانبين وسبلات أسفل المبيض.]', false, '[{"id": "A", "text": "زهرة ثنائية الجنس لأنها تتكون من البتلات والسبلات"}, {"id": "B", "text": "زهرة ثنائية الجنس لأنها تتكون من المدقة والكش"}, {"id": "C", "text": "زهرة أحادية الجنس لأنها تتكون من المبيض والميسم وقلم الميسم"}, {"id": "D", "text": "زهرة أحادية الجنس لأنها تتكون من المئبر والخيط"}]'::jsonb, ARRAY['B']::text[], 'يظهر في المقطع عضو أنثوي (المدقة: مبيض وقلم وميسم) وأعضاء ذكرية (الأسدية: خيط ومئبر، ومجموعها الكش)، فهي زهرة ثنائية الجنس. البتلات والسبلات أغلفة لا تحدد الجنس. الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, 'السؤال يعتمد على وثيقة (رسم)؛ النص في هذا الملف يصف الوثيقة كما في الورقة الأصلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q42', 'exam_primary_2018_sciences_jan', 42, 'التكاثر عند النبات (الزهرة)', 'الوضعية 4 - 2. نتحدث عن الإبار المباشر عندما تنتقل حبوب اللقاح من مئبر زهرة معينة إلى:', false, '[{"id": "A", "text": "الجهاز التناسلي الأنثوي لنفس الزهرة"}, {"id": "B", "text": "الجهاز التناسلي الأنثوي لزهرة أخرى من نفس النبتة"}, {"id": "C", "text": "الجهاز التناسلي الأنثوي لزهرة أخرى من نفس النوع"}, {"id": "D", "text": "الجهاز التناسلي الأنثوي لزهرة أخرى من نوع آخر"}]'::jsonb, ARRAY['A']::text[], 'الإبار المباشر (الذاتي) هو انتقال حبوب اللقاح إلى ميسم الزهرة نفسها. انتقالها إلى زهرة أخرى، ولو من النبتة نفسها أو من النوع نفسه، يسمى إبارا غير مباشر (خلطيا). الجواب حسب المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q43', 'exam_primary_2018_sciences_jan', 43, 'ديداكتيك العلوم — المكتسبات القبلية', 'الموضوع الثالث (20 نقطة): يتناول برنامج النشاط العلمي بالمستوى الثالث من التعليم الابتدائي تقديم محور الضوء من خلال مناولات واستعمال أدوات ومعدات بسيطة.
1. حدد المكتسبات القبلية التي تبنى عليها أنشطة التعلم المرتبطة بالمحور المذكور. (3 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'مكتسبات حول: منابع الضوء (طبيعية واصطناعية)، الظل وتكونه، الحاجز، انتشار الضوء، والتمييز الأولي بين الأجسام التي تمرر الضوء والتي لا تمرره (الأجسام الشفافة ونصف الشفافة والمعتمة) انطلاقا من الملاحظة اليومية. يطلب المفتاح الرسمي ربط الجواب بالمحور؛ ويقبل كل مكتسب يرتبط فعلا بأنشطة الضوء في المستوى الثالث.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q44', 'exam_primary_2018_sciences_jan', 44, 'ديداكتيك العلوم — منهجية الدرس', '2. من بين دروس هذا المحور نجد: "الأجسام الشفافة ونصف الشفافة والمعتمة". وضح المنهجية التي ستعتمدها خلال حصة للنشاط العلمي المتعلقة بهذا الدرس، محددا أهداف التعلم والأدوات والمعينات التي ستوظفها وأنشطة التعلم التي تقترحها وكيفية تدبيرها وحصيلة التعلم. (12 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'منهجية النهج العلمي (التقصي):
- أهداف التعلم (2 ن): أن يصنف المتعلم الأجسام إلى شفافة ونصف شفافة ومعتمة حسب مرور الضوء؛ أن يتعرف أن الجسم المعتم يكون ظلا.
- الأدوات والمعينات (2 ن): مصباح يدوي، زجاج شفاف، ورق مزيت أو زجاج مصنفر، ورق مقوى، قطعة خشب، كأس ماء، بلاستيك ملون، شاشة بيضاء، بطاقات.
- أنشطة التعلم وكيفية تدبيرها (6 ن): نشاطان على الأقل. وضعية انطلاق: لماذا نرى الطريق عبر زجاج النافذة ولا نراه عبر الجدار؟ ثم تدوين الفرضيات. نشاط 1 (مجموعات): توجيه ضوء المصباح نحو الشاشة ووضع كل جسم بينهما، وملاحظة ما يصل إلى الشاشة وتسجيله في جدول. نشاط 2: النظر عبر كل جسم إلى شيء معين (رؤية واضحة، غير واضحة، منعدمة). دور الأستاذ: يطرح الوضعية ويوزع العدة ويوجه المجموعات ويدير المقارنة بين النتائج؛ دور التلاميذ: يقترحون الفرضيات وينجزون المناولات ويسجلون الملاحظات ويستنتجون.
- حصيلة التعلم (2 ن): الجسم الشفاف يمرر الضوء ونرى عبره الأشياء بوضوح؛ الجسم نصف الشفاف يمرر جزءا من الضوء ونرى عبره الأشياء غير واضحة؛ الجسم المعتم لا يمرر الضوء ولا نرى عبره شيئا ويكون ظلا.
سلم التنقيط الرسمي: أهداف التعلم 2 ن، الأدوات والمعينات 2 ن، أنشطة التعلم وتدبيرها 6 ن، حصيلة التعلم 2 ن. يقبل كل تخطيط منسجم يحترم مراحل النهج العلمي.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: العلوم — مادة التخصص وديداكتيك العلوم (دورة يناير 2018) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_sciences_jan_q45', 'exam_primary_2018_sciences_jan', 45, 'ديداكتيك العلوم — التقويم', '3. اقترح نشاطا تقويميا تقوم من خلاله مدى تحقق أهداف التعلم لهذا الدرس. (5 ن)', false, '[]'::jsonb, ARRAY[]::text[], 'مثال: تقدم للتلاميذ صور أو عينات لأجسام جديدة (كيس بلاستيك شفاف، ستارة رقيقة، كتاب، زجاج نظارة، ورقة كلك، قطعة معدن) ويطلب منهم: 1) تصنيفها في جدول من ثلاثة أعمدة (شفاف، نصف شفاف، معتم) مع التعليل؛ 2) تحديد الأجسام التي تكون ظلا عند إضاءتها؛ 3) اقتراح جسم مناسب لصنع زجاج حمام يسمح بمرور الضوء ويمنع الرؤية. يشترط المفتاح الرسمي وضعية تقويمية مرتبطة بأهداف التعلم، تتوفر على المواصفات (أجسام جديدة لم تستعمل في الحصة، تعليمات واضحة) ومنسجمة مع الأهداف. البند الثالث يقيس توظيف المفهوم في وضعية من الحياة اليومية.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2018-1020/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
