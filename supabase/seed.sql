-- ====================================================================
-- بذور البيانات الأولية (Seed Data) لمنصة إتقان لمباريات التعليم
-- تضم 6 امتحانات رسمية كاملة لسنوات 2024 و 2023 و 2022 (412 سؤالاً)
-- ====================================================================

-- 1. إدراج التخصص الرئيسي
INSERT INTO public.specialties (id, name, subtitle, description, icon, color, badge, active)
VALUES (
    'specialty_econ_admin',
    'مختصي الاقتصاد والإدارة',
    'أطر الدعم الإداري - ملحقي الاقتصاد والإدارة',
    'التدبير المادي والمالي والمحاسباتي، الصفقات العمومية، النصوص التشريعية والتنظيمية، والاختصاصات والمهام لمؤسسات التربية والتعليم العمومي.',
    'Briefcase',
    '#1C1D18',
    'متاح بالكامل',
    true
) ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name,
    subtitle = EXCLUDED.subtitle,
    description = EXCLUDED.description;

-- 2. إدراج الامتحانات الرسمية الستة (دورات 2024، 2023، 2022)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2024_mgmt', 'specialty_econ_admin', 2024, 'mgmt', 'الموضوع 1: التدبير المادي والمالي والمحاسباتي', 'امتحان التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي (2024)', 'دورة أكتوبر 2024', 180, 72)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2024_tasks', 'specialty_econ_admin', 2024, 'tasks', 'الموضوع 2: الاختصاصات والمهام المرتبطة بالوظيفة', 'امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2024)', 'دورة أكتوبر 2024', 180, 60)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2023_mgmt', 'specialty_econ_admin', 2023, 'mgmt', 'الموضوع 1: التدبير المادي والمالي والمحاسباتي', 'امتحان التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي (2023)', 'دورة 2023', 180, 80)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2023_tasks', 'specialty_econ_admin', 2023, 'tasks', 'الموضوع 2: الاختصاصات والمهام المرتبطة بالوظيفة', 'امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2023)', 'دورة 2023', 180, 60)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2022_mgmt', 'specialty_econ_admin', 2022, 'mgmt', 'الموضوع 1: التدبير المالي والمادي للمؤسسات', 'امتحان التدبير المالي والمادي للمؤسسات التعليمية (2022)', 'دورة نونبر 2022', 180, 80)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_2022_tasks', 'specialty_econ_admin', 2022, 'tasks', 'الموضوع 2: الاختصاصات والمهام المرتبطة بالوظيفة', 'امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2022)', 'دورة نونبر 2022', 180, 60)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 3. إدراج الأسئلة الكاملة (412 سؤالاً مع الخيارات والتصحيح والتعليل)

-- أسئلة امتحان: امتحان التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي (2024) (72 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q1', 'exam_2024_mgmt', 1, 'النصوص التنظيمية ومجالس المؤسسة', 'يتولى مجلس التدبير المهام الآتية، باستثناء:', false, '[{"id": "A", "text": "اقتراح النظام الداخلي للمؤسسة في إطار احترام النصوص التشريعية والتنظيمية الجاري بها العمل."}, {"id": "B", "text": "دراسة برامج عمل المجلس التربوي والمجالس التعليمية والمصادقة عليها وإدراجها ضمن برنامج عمل المؤسسة المقترح من قبلها."}, {"id": "C", "text": "دراسة برنامج العمل السنوي الخاص بأنشطة المؤسسة وتتبع مراحل إنجازه."}, {"id": "D", "text": "إعداد مشاريع البرامج السنوية للعمل التربوي للمؤسسة وبرامج الأنشطة الداعمة والموازية وتتبع تنفيذها وتقويمها."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'إعداد مشاريع البرامج السنوية للعمل التربوي للمؤسسة وبرامج الأنشطة الداعمة والموازية وتتبع تنفيذها وتقويمها هو من اختصاص المجلس التربوي وليس مجلس التدبير (المادتان 18 و 23 من المرسوم 2.02.376 بمثابة النظام الأساسي الخاص بمؤسسات التربية والتعليم العمومي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q2', 'exam_2024_mgmt', 2, 'التدبير المالي والمصالح المادية', 'توقع أوراق الشيكات والأوامر بالتحويل الخاصة بالحساب البنكي المفتوح باسم المؤسسة التعليمية سلك التعليم الثانوي:', false, '[{"id": "A", "text": "من طرف رئيس المؤسسة أو مسير المصالح المادية والمالية."}, {"id": "B", "text": "من طرف رئيس المؤسسة و/أو مسير المصالح المادية والمالية."}, {"id": "C", "text": "من طرف مسير المصالح المادية والمالية."}, {"id": "D", "text": "من طرف رئيس المؤسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'توقع أوراق الشيكات والأوامر بالتحويل الخاصة بالحساب البنكي للمؤسسة بشكل ثنائي أو منفرد حسب الحالة (من طرف رئيس المؤسسة و/أو مسير المصالح المادية والمالية طبقاً لدوريات ومساطر التدبير المالي للحسابات المفتوحة للمؤسسات).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q3', 'exam_2024_mgmt', 3, 'الصفقات العمومية', 'يساوي الثمن المرجعي للعروض المتوسط الحسابي الناتج عن:', false, '[{"id": "A", "text": "تقدير كلفة الأعمال المعد من لدن صاحب المشروع + معدل العروض المالية للمتنافسين المقبولين."}, {"id": "B", "text": "تحديد كلفة الأعمال المعد من لدن صاحب المشروع ومعدل العروض المالية للمتنافسين المقبولين."}, {"id": "C", "text": "جمع كلفة الأعمال المعد من لدن صاحب المشروع والعروض المالية للمتنافسين المقبولين."}, {"id": "D", "text": "تقدير كلفة الأعمال المعد من لدن طلب العروض ومجموع العروض المالية للمتنافسين المقبولين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 22 من مرسوم الصفقات العمومية رقم 2.22.431، يساوي الثمن المرجعي المتوسط الحسابي الناتج عن: تقدير كلفة الأعمال المعد من لدن صاحب المشروع + معدل العروض المالية للمتنافسين المقبولين بعد استبعاد العروض المفرطة والمنخفضة بكيفية غير عادية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q4', 'exam_2024_mgmt', 4, 'مهام الأطر المختصة', 'يتولى مختص الاقتصاد والإدارة القيام بالمهام التالية:', false, '[{"id": "A", "text": "أعمال الحفظ والأرشيف."}, {"id": "B", "text": "المساهمة في تنظيم عملية الإعلام والتوجيه والأنشطة المرتبطة بها أو إنجاز عملية الإحصاء."}, {"id": "C", "text": "المشاركة في تنظيم عملية الإعلام والتوجيه والأنشطة المرتبطة بها وإنجاز عملية الإحصاء."}, {"id": "D", "text": "المساهمة في تنظيم عملية الإعلام والتوجيه والأنشطة المرتبطة بها وإنجاز عملية الإحصاء."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 23 من المرسوم رقم 2.24.140 في شأن النظام الأساسي الخاص بموظفي الوزارة المكلفة بالتربية الوطنية، يتولى مختصو الاقتصاد والإدارة المساهمة في تنظيم عملية الإعلام والتوجيه والأنشطة المرتبطة بها وإنجاز عملية الإحصاء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q5', 'exam_2024_mgmt', 5, 'الصفقات العمومية', 'يهدف المرسوم رقم 2.22.431 المتعلق بالصفقات العمومية إلى:', false, '[{"id": "A", "text": "تعزيز آلية الأفضلية الوطنية لإعطاء الأولوية للشركات المغربية في إطار المنافسة وتعميمها على صفقات الأشغال، مع مراعاة التزامات البلاد في إطار اتفاقيات الشراكة الاستراتيجية والتبادل الحر."}, {"id": "B", "text": "إعطاء الأفضلية للمقاولات الأجنبية مراعاة لالتزامات البلاد في إطار اتفاقيات الشراكة الاستراتيجية والتبادل الحر."}, {"id": "C", "text": "تعزيز آلية الأفضلية الوطنية لإعطاء الأولوية للشركات المغربية في إطار المنافسة وتعميمها على جميع الصفقات، مع مراعاة التزامات البلاد في إطار اتفاقيات الشراكة الاستراتيجية والتبادل الحر."}, {"id": "D", "text": "تعزيز آلية الأفضلية الوطنية لإعطاء الأولوية للشركات المغربية في إطار المنافسة وتعميمها على جميع الصفقات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يهدف مرسوم الصفقات العمومية 2.22.431 إلى تعزيز آلية الأفضلية الوطنية وتعميمها على جميع الصفقات (أشغال، توريدات، وخدمات)، مع مراعاة التزامات المملكة المغربية الدولية في إطار اتفاقيات الشراكة والتبادل الحر.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q10', 'exam_2024_mgmt', 10, 'مجالس المؤسسة والتنظيم الإداري', 'يعتبر مسير المصالح المادية والمالية عضوا بحكم القانون بـ:', false, '[{"id": "A", "text": "المجلس التربوي ومجلس التدبير."}, {"id": "B", "text": "المجلس التعليمي."}, {"id": "C", "text": "المجلس التربوي."}, {"id": "D", "text": "مجلس التدبير."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يعتبر مسير المصالح المادية والمالية عضواً بحكم القانون في مجلس التدبير فقط حسب مقتضيات المرسوم 2.02.376 (المواد 18 إلى 22)، بينما لا يدخل ضمن تركيبة المجلس التربوي أو المجالس التعليمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q11', 'exam_2024_mgmt', 11, 'التشريع الإداري والأرشيف', 'يراد بالأرشيف:', false, '[{"id": "A", "text": "جميع الوثائق كيفما كان تاريخها وشكلها وحاملها المادي التي ينتجها أو يتسلمها كل شخص طبيعي أو معنوي وكل مصلحة أو هيئة عامة أو خاصة خلال مزاولة نشاطهم."}, {"id": "B", "text": "جميع الوثائق كيفما كان تاريخها وشكلها وحاملها المادي التي ينتجها كل شخص طبيعي أو معنوي أو كل مصلحة وهيئة عامة وخاصة خلال مزاولة نشاطهم."}, {"id": "C", "text": "جميع الوثائق كيفما كان تاريخها وشكلها التي ينتجها أو يتسلمها كل شخص طبيعي أو معنوي وكل مصلحة وهيئة عامة وخاصة خلال مزاولة نشاطهم."}, {"id": "D", "text": "جميع الوثائق كيفما كان تاريخها وحاملها المادي التي ينتجها أو يتسلمها كل شخص معنوي وكل مصلحة وهيئة عامة خلال مزاولة نشاطهم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'المادة 1 من القانون رقم 69.99 المتعلق بالأرشيف تنص حرفياً: ''يراد بالأرشيف في مدلول هذا القانون جميع الوثائق كيفما كان تاريخها وشكلها وحاملها المادي التي ينتجها أو يتسلمها كل شخص طبيعي أو معنوي وكل مصلحة أو هيئة عامة أو خاصة خلال مزاولة نشاطهم''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q12', 'exam_2024_mgmt', 12, 'المحاسبة المادية والجرد', 'تمسك التجهيزات التي يتم اقتناؤها في إطار ميزانية جمعية دعم مدرسة النجاح بـ:', false, '[{"id": "A", "text": "السجل العام للجرد."}, {"id": "B", "text": "السجلات المتخصصة حسب نوعها."}, {"id": "C", "text": "السجل العام للجرد، وسجل الجرد الخاص بجمعية دعم مدرسة النجاح."}, {"id": "D", "text": "سجل الجرد الخاص بجمعية دعم مدرسة النجاح فقط."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'وفقاً لدليل مساطر التدبير المالي لجمعية دعم مدرسة النجاح والمذكرات المنظمة للجرد المدرسي، تدون التجهيزات المقتناة في السجل العام للجرد الخاص بالمؤسسة كملك عام، وتدرج كذلك في سجل الجرد الخاص بجمعية دعم مدرسة النجاح لضبط مبررات الصرف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q13', 'exam_2024_mgmt', 13, 'الحياة المدرسية والتوجيه', 'يتدرج المشروع الشخصي للمتعلم عبر:', false, '[{"id": "A", "text": "أربع مراحل."}, {"id": "B", "text": "ثلاث مراحل."}, {"id": "C", "text": "مرحلتين."}, {"id": "D", "text": "خمس مراحل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب القرار الوزاري رقم 062.19 بشأن التوجيه المدرسي والمهني، يتدرج المشروع الشخصي للمتعلم عبر 3 مراحل متكاملة: 1) مرحلة الاستكشاف (بالتعليم الابتدائي)، 2) مرحلة البناء (بالثانوي الإعدادي)، 3) مرحلة التوطيد والتدقيق (بالثانوي التأهيلي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q14', 'exam_2024_mgmt', 14, 'المحاسبة العمومية وقانون المالية', 'يتولى الخازن العام للمملكة:', false, '[{"id": "A", "text": "بصفته محاسبا عموميا، إنجاز العمليات التي قام بها المحاسبون العموميون في بياناته ويحدد نتيجة تنفيذ قانون المالية."}, {"id": "B", "text": "بصفته محاسبا ساميا، مركزة جميع العمليات التي قام بها المحاسبون العموميون في بياناته دون تحديد نتيجة تنفيذ قانون المالية."}, {"id": "C", "text": "بصفته محاسبا ساميا، مركزة جميع العمليات التي قام بها المحاسبون العموميون في بياناته ويحدد نتيجة تنفيذ قانون المالية."}, {"id": "D", "text": "بصفته محاسبا، حصر العمليات التي قام بها المحاسبون العموميون في بياناته ويحدد نتيجة تنفيذ قانون المالية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 62 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية، يتولى الخازن العام للمملكة بصفته محاسباً سامياً مركزة جميع العمليات التي أنجزها المحاسبون العموميون في حساباته ويحدد النتيجة العامة لتنفيذ قانون المالية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q15', 'exam_2024_mgmt', 15, 'الإحصاء التطبيقي والرياضيات', 'من بين مقاييس النزعة المركزية (وسيطات الوضع):', false, '[{"id": "A", "text": "المبيان الدائري Diagramme par secteur ou circulaire."}, {"id": "B", "text": "المتوسط الحسابي Moyenne arithmétique."}, {"id": "C", "text": "المنحنى أو دالة التوزيع Courbe ou fonction de distributions."}, {"id": "D", "text": "الانحراف المعياري Ecart type."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'مقاييس النزعة المركزية (Paramètres de position / tendance centrale) تشمل: المتوسط الحسابي (Moyenne)، الوسيط (Médiane)، والمنوال (Mode). أما الانحراف المعياري فهو من مقاييس التشتت (Dispersion)، والمبيانات هي تمثيلات بصرية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q16', 'exam_2024_mgmt', 16, 'الصفقات العمومية', 'تسري مدة الصفقة-الإطار ابتداء من تاريخ:', false, '[{"id": "A", "text": "الشروع في تنفيذ الأشغال المحددة في الأمر بالخدمة."}, {"id": "B", "text": "الشروع في تنفيذ الأعمال المحددة في الأمر بالخدمة."}, {"id": "C", "text": "الشروع في تنفيذ التوريدات والأشغال المحددة في الأمر بالخدمة."}, {"id": "D", "text": "الشروع في تنفيذ الخدمات المحدد في الأمر بالخدمة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 7 من مرسوم الصفقات العمومية رقم 2.22.431، تسري مدة الصفقة-الإطار ابتداءً من تاريخ الشروع في تنفيذ الأعمال (Prestations) المحددة في الأمر بالخدمة الصادر عن صاحب المشروع.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q17', 'exam_2024_mgmt', 17, 'الإحصاء التطبيقي', 'أنواع التمثيلات المبيانية هي كالآتي باستثناء:', false, '[{"id": "A", "text": "المدرج Histogramme."}, {"id": "B", "text": "المبيان الدائري Diagramme par secteur ou circulaire."}, {"id": "C", "text": "المبيان العصوي Diagramme à bâtons."}, {"id": "D", "text": "المدى L''Etendu."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'المدى (L''Etendue) هو مؤشر ومقياس إحصائي عددي لقياس التشتت (الفرق بين أكبر قيمة وأصغر قيمة)، وليس تمثيلاً مبيانياً هندسياً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q18', 'exam_2024_mgmt', 18, 'مجالس المؤسسة والتنظيم الإداري', 'يجتمع مجلس تدبير المؤسسة بدعوة من رئيسها كلما دعت الضرورة إلى ذلك، وعلى الأقل:', false, '[{"id": "A", "text": "مرة واحدة في السنة."}, {"id": "B", "text": "ثلاث مرات في السنة."}, {"id": "C", "text": "مرتين في السنة."}, {"id": "D", "text": "أربع مرات في السنة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تنص المادة 20 من المرسوم 2.02.376 على أن مجلس تدبير المؤسسة يجتمع بدعوة من رئيسه كلما دعت الضرورة لذلك، وعلى الأقل مرتين في السنة: دورة في بداية السنة الدراسية لتحديد برنامج العمل، ودورة في نهايتها للتقييم والمصادقة على الحصيلة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q19', 'exam_2024_mgmt', 19, 'المحاسبة المادية والجرد', 'تدون بسجل الجرد الكتب والقصص والروايات بمؤسسات التربية والتعليم العمومي:', false, '[{"id": "A", "text": "إذا كانت قيمتها تساوي أو تفوق 10 دراهم."}, {"id": "B", "text": "إذا كانت قيمتها تساوي 10 دراهم."}, {"id": "C", "text": "إذا كانت قيمتها تساوي 5 دراهم."}, {"id": "D", "text": "مهما كانت قيمتها."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وفقاً للدورية الوزارية المنظمة لعمليات جرد المنقولات والممتلكات بالمؤسسات التعليمية، فإن الكتب والمصنفات والقصص والروايات المخصصة للخزانة المدرسية تسجل وجوباً في سجل الجرد الخاص بالكتب مهما بلغت قيمتها النقدية، استثناءً من قاعدة الحد الأدنى المالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q20', 'exam_2024_mgmt', 20, 'مشروع المؤسسة المندمج', 'مشروع المؤسسة المندمج هو مجموع عمليات تنظيمية وتربوية وتدبيرية متكاملة ومنسجمة تتم برمجتها من طرف:', false, '[{"id": "A", "text": "المؤسسة التعليمية."}, {"id": "B", "text": "الوزارة المكلفة بالتربية والتعليم الأولي والرياضة."}, {"id": "C", "text": "الأكاديمية الجهوية للتربية والتكوين."}, {"id": "D", "text": "المديرية الإقليمية للتربية والتعليم الأولي والرياضة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المذكرة الوزارية رقم 087/21 حول تنزيل مشروع المؤسسة المندمج، يُعرَّف المشروع بأنه آلية قيادة وعمليات متكاملة تتم بلورتها وبرمجتها محلياً من طرف المؤسسة التعليمية عبر فريق القيادة ومجلس التدبير وفق أولويات تشخيص واقع المؤسسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q21', 'exam_2024_mgmt', 21, 'الصفقات العمومية', 'الحوار التنافسي هو:', false, '[{"id": "A", "text": "المسطرة التي يقوم بموجبها المتنافسون بإجراء مفاوضة مع صاحب المشروع للمشاركة فيه من أجل تطوير حلول من شأنها تلبية حاجاته."}, {"id": "B", "text": "المسطرة التي يقوم بموجبها صاحب المشروع بإجراء حوار مع المترشحين للمشاركة فيه من أجل تحديد أو تطوير حلول من شأنها تلبية حاجاته."}, {"id": "C", "text": "المسطرة التي يقوم بموجبها صاحب المشروع بإجراء حوار مع المترشحين للمشاركة فيه من أجل تطوير حلول من شأنها تلبية حاجاته."}, {"id": "D", "text": "المسطرة التي يقوم بموجبها صاحب المشروع بإجراء حوار مع المترشحين للمشاركة فيه من أجل تحديد وتطوير حلول من شأنها تلبية حاجاته."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تنص المادة 97 من مرسوم الصفقات العمومية رقم 2.22.431 على أن الحوار التنافسي هو: ''المسطرة التي يقوم بموجبها صاحب المشروع بإجراء حوار مع المترشحين المقبولين للمشاركة فيه من أجل تحديد أو تطوير حلول من شأنها تلبية حاجاته''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q22', 'exam_2024_mgmt', 22, 'الحياة المدرسية والتوجيه التربوي', 'تستهدف خدمات التوجيه المدرسي:', false, '[{"id": "A", "text": "تلاميذ سلك التعليم الابتدائي فقط."}, {"id": "B", "text": "تلاميذ سلك التعليم الثانوي الإعدادي والتأهيلي فقط."}, {"id": "C", "text": "تلاميذ السلك الثانوي التأهيلي فقط."}, {"id": "D", "text": "تلاميذ مختلف أسلاك مؤسسات التربية والتعليم بمن فيهم المستفيدين من برامج التربية غير النظامية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وفقاً للقرار الوزاري 062.19 والإطار المرجعي لمنظومة التوجيه المدرسي والمهني، تستهدف خدمات التوجيه جميع المتعلمين بمختلف أسلاك التعليم (الابتدائي، الإعدادي، التأهيلي) وتدمج كذلك المستفيدين من برامج التربية غير النظامية والفرصة الثانية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q23', 'exam_2024_mgmt', 23, 'التخطيط التربوي والإحصاء', 'يقصد بمؤشرات نسبة التدفق Taux d''écoulement:', false, '[{"id": "A", "text": "النسبة الصافية للتمدرس."}, {"id": "B", "text": "نسبة الانتقال من سلك تعليمي إلى سلك آخر."}, {"id": "C", "text": "نسبة التكرار، نسبة الانقطاع، أعداد المنقطعين، نسبة عدم الالتحاق."}, {"id": "D", "text": "نسبة استكمال الدراسة بدون تكرار."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'في أدبيات التخطيط التربوي والإحصاء المدرسي، ترصد مؤشرات التدفق (Taux d''écoulement des flux scolaires) مسارات التلاميذ عبر: نسب الترقية والنجاح، نسب التكرار (Redoublement)، نسب الانقطاع عن الدراسة (Abandon scolaire)، ونسب عدم الالتحاق.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q24', 'exam_2024_mgmt', 24, 'قانون المالية والميزانية', 'تشتمل الاعتمادات المتعلقة بنفقات الاستثمار على:', false, '[{"id": "A", "text": "اعتمادات الأداء واعتمادات الالتزام التي تشكل الحد الأعلى للنفقات المأذون للآمرين بالصرف الالتزام بها لتنفيذ الاستثمارات المقررة."}, {"id": "B", "text": "اعتمادات الالتزام التي تشكل الحد الأدنى للنفقات المأذون للآمرين بالصرف الالتزام بها لتنفيذ الاستثمارات المقررة."}, {"id": "C", "text": "اعتمادات الأداء التي تشكل الحد الأعلى للنفقات المأذون للآمرين بالصرف الالتزام بها لتنفيذ الاستثمارات المقررة."}, {"id": "D", "text": "اعتمادات الأداء واعتمادات الالتزام التي تشكل الحد الأدنى للنفقات المأذون للآمرين بالصرف الالتزام بها لتنفيذ الاستثمارات المقررة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'المادة 17 من القانون التنظيمي لقانون المالية رقم 130.13 تنص على: ''تشتمل الاعتمادات المتعلقة بنفقات الاستثمار على اعتمادات الأداء واعتمادات الالتزام. تشكل اعتمادات الالتزام الحد الأعلى للنفقات المأذون للآمرين بالصرف بالالتزام بها لتنفيذ الاستثمارات المقررة''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q25', 'exam_2024_mgmt', 25, 'المسؤولية الإدارية والمالية', 'كل موظف أو عون يوجد تحت إمرة آمر بالصرف أو مراقب أو محاسب عمومي أو يعمل لحساب أحدهم:', false, '[{"id": "A", "text": "لا يمكن أن يعتبر مسؤولا بصفة شخصية محل الآمر بالصرف أو المراقب أو المحاسب العمومي إذا ثبت أن الخطأ المرتكب منسوب إليه."}, {"id": "B", "text": "يمكن أن يعتبر مسؤولا بصفة شخصية محل الآمر بالصرف أو المراقب أو المحاسب العمومي إذا ثبت أن الخطأ المرتكب منسوب إليه."}, {"id": "C", "text": "يمكن أن يعتبر مسؤولا بالتضامن مع الآمر بالصرف أو المراقب أو المحاسب العمومي إذا ثبت أن الخطأ المرتكب منسوب إليه."}, {"id": "D", "text": "يمكن أن يعتبر مسؤولا بصفة شخصية محل الآمر بالصرف أو المراقب أو المحاسب العمومي إذا ثبت أن الخطأ المرتكب منسوب للآمر بالصرف أو للمراقب أو للمحاسب العمومي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'المادة 7 من القانون رقم 61.99 المتعلق بتحديد مسؤولية الآمرين بالصرف والمراقبين والمحاسبين العموميين تنص على أنه يمكن أن يُعتبر الموظف أو العون مسؤولاً بصفة شخصية محل الآمر بالصرف أو المحاسب إذا ثبت أن الخطأ المرتكب منسوب إليه مباشرة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q26', 'exam_2024_mgmt', 26, 'التدبير المالي للداخليات', 'تحدد المساهمات التكميلية لكل تلميذ من تلاميذ مراكز الأقسام التحضيرية في مصاريف تسيير القسم الداخلي في:', false, '[{"id": "A", "text": "1.800,00 درهم سنويا."}, {"id": "B", "text": "2.500,00 درهم سنويا."}, {"id": "C", "text": "2.600,00 درهم سنويا."}, {"id": "D", "text": "2.700,00 درهم سنويا."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تحدد المساهمات التكميلية لتلاميذ الأقسام التحضيرية لولوج المدارس العليا (CPGE) في مصاريف تسيير القسم الداخلي في 2.700,00 درهم سنوياً بموجب القرارات الوزارية المنظمة للمساهمات المالية بالأقسام التحضيرية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q27', 'exam_2024_mgmt', 27, 'الحياة المدرسية وإلزامية التعليم', 'تعقد مجالس الأقسام بالمؤسسات التعليمية كلما تطلب الأمر ذلك، للبت في طلبات التلاميذ المفصولين أو المنقطعين خلال السنة الدراسية قصد منحهم فرصة الرجوع إلى الدراسة على أساس:', false, '[{"id": "A", "text": "السماح بالعودة للتلاميذ الذين تجاوز عمرهم 18 سنة."}, {"id": "B", "text": "السماح بالعودة للتلاميذ الذين تجاوز عمرهم 18 سنة، مع إعطاء الأولوية للذين استوفوا سن إلزامية التعليم."}, {"id": "C", "text": "السماح بالعودة للتلاميذ الذين لم يتجاوز عمرهم 18 سنة، مع إعطاء الأولوية للذين لم يستوفوا بعد سن إلزامية التعليم."}, {"id": "D", "text": "السماح بالعودة للتلاميذ الذين لم يتجاوز عمرهم 19 سنة، مع إعطاء الأولوية للذين استوفوا سن إلزامية التعليم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'طبقاً لمذكرات التعبئة المجتمعية حول إرجاع التلاميذ المنقطعين والمفصولين، تعطى الإمكانية لمن لم يتجاوزوا 18 سنة مع منح الأسبقية المطلقة لمن لم يستوفوا بعد سن إلزامية التعليم (دون 16 سنة) ضماناً لحقهم الدستوري في التمدرس.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q28', 'exam_2024_mgmt', 28, 'الصفقات العمومية', 'تبرم الصفقة بثمن مؤقت عندما:', false, '[{"id": "A", "text": "يتعين الشروع في تنفيذ الأشغال أو الخدمات في حين أن جميع الشروط الضرورية لتحديد ثمن أصلي نهائي غير مستوفاة بسبب الصبغة الاستعجالية التي يكتسيها العمل."}, {"id": "B", "text": "يتعين الشروع في تنفيذ العمل في حين أن جميع الشروط الضرورية لتحديد ثمن أصلي نهائي غير مستوفاة بسبب الصبغة الاستعجالية التي يكتسيها العمل."}, {"id": "C", "text": "يتعين الشروع في تنفيذ الأعمال في حين أن جميع الشروط الضرورية لتحديد ثمن أصلي نهائي غير مستوفاة بسبب قوة قاهرة."}, {"id": "D", "text": "يتعين الشروع في تنفيذ الأعمال رغم أن جميع الشروط الضرورية لتحديد ثمن أصلي نهائي غير مستوفاة بسبب الصبغة المعقدة التي يكتسيها العمل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 14 من مرسوم الصفقات العمومية رقم 2.22.431، تبرم الصفقة بثمن مؤقت عندما يتعين الشروع في تنفيذ الأعمال رغم أن جميع الشروط الضرورية لتحديد ثمن أصلي نهائي غير مستوفاة بسبب الصبغة المعقدة أو الحديثة للعمل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q29', 'exam_2024_mgmt', 29, 'المحاسبة العمومية وطرق الأداء', 'كل نفقة تتجاوز ألفا وخمسمائة درهم (1.500,00 درهم):', false, '[{"id": "A", "text": "لا يمكن أن تؤدى إلا بالتحويل من حساب لآخر ما عدا في حالة ترخيصات بالمخالفة يمنحها وزير المالية أو السلطة المفوض إليها من طرفه في هذا الصدد."}, {"id": "B", "text": "يمكن أن تؤدى نقدا ما عدا في حالة ترخيصات بالمخالفة يمنحها وزير القطاع المعني بالنفقة أو السلطة المفوض إليها من طرفه في هذا الصدد."}, {"id": "C", "text": "لا يمكن أن تؤدى إلا بالتحويل من حساب لآخر ما عدا في حالة ترخيصات بالمخالفة يمنحها وزير القطاع المعني بالنفقة أو السلطة المفوض إليها من طرفه في هذا الصدد."}, {"id": "D", "text": "تؤدى بالتحويل من حساب لآخر حصرا."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ينص الفصل 45 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية على أن كل نفقة تتجاوز 1.500 درهم لا يمكن أن تؤدى نقداً بل بالتحويل من حساب لآخر، ما عدا بترخيص خاص صادر عن وزير المالية أو من يفوضه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q30', 'exam_2024_mgmt', 30, 'التوجيه المدرسي والمهني', 'لإنجاز الأنشطة والخدمات التربوية في إطار مواكبة المتعلمين في بناء مشاريعهم الشخصية ومساعدتهم على تحديد اختياراتهم الدراسية والتكوينية والمهنية، يتم تخصيص غلاف زمني:', false, '[{"id": "A", "text": "نصف شهري لكل تلميذ(ة) من التلاميذ، لا يقل عن ساعة واحدة."}, {"id": "B", "text": "شهري لكل قسم من الأقسام، لا يقل عن ساعة واحدة."}, {"id": "C", "text": "شهري لكل التلاميذ، لا يقل عن ساعة واحدة."}, {"id": "D", "text": "أسبوعي لكل قسم من الأقسام، لا يقل عن ساعة واحدة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'المادة 27 من القرار الوزاري رقم 062.19 تنص صراحة على تخصيص غلاف زمني أسبوعي لكل قسم من الأقسام لا يقل عن ساعة واحدة لأنشطة وخدمات المواكبة التربوية للمشروع الشخصي للمتعلم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q31', 'exam_2024_mgmt', 31, 'الإحصاء التطبيقي والحساب المالي', 'تم توزيع وجبات غذائية على 120 تلميذ وتلميذة المستفيدين من المنحة الخاصة بالأقسام الداخلية والمطاعم المدرسية بمؤسسات التربية والتعليم العمومي خلال شهر مارس 2024 كالآتي:
• (2 أيام: 4.800,00 درهم/يوم)
• (3 أيام: 4.440,00 درهم/يوم)
• (5 أيام: 3.960,00 درهم/يوم)
• (6 أيام: 4.200,00 درهم/يوم)
• (7 أيام: 3.480,00 درهم/يوم)
• (8 أيام: 3.120,00 درهم/يوم)
المتوسط الحسابي للإنفاق اليومي بالدرهم هو:', false, '[{"id": "A", "text": "3.871,93 درهم."}, {"id": "B", "text": "3.187,93 درهم."}, {"id": "C", "text": "3.781,93 درهم."}, {"id": "D", "text": "3.817,93 درهم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الحساب الإحصائي للمتوسط المرجح:
1) مجموع الأيام = 2 + 3 + 5 + 6 + 7 + 8 = 31 يوماً.
2) مجموع الإنفاق الكلي = (2×4800) + (3×4440) + (5×3960) + (6×4200) + (7×3480) + (8×3120) = 9600 + 13320 + 19800 + 25200 + 24360 + 24960 = 117.240 درهم.
3) المتوسط الحسابي اليومي = 117.240 ÷ 31 = 3.781,93 درهم. الجواب الصحيح هو (C).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q32', 'exam_2024_mgmt', 32, 'دفتر الشروط الإدارية والصفقات', 'يترتب عن التسلم المؤقت:', false, '[{"id": "A", "text": "تحويل الملكية لفائدة صاحب المشروع ولا تحمله المخاطر الناتجة عنها، ويمثل نقطة انطلاق الالتزام بالضمان التعاقدي."}, {"id": "B", "text": "تحويل الملكية لفائدة صاحب المشروع وتحمله المخاطر الناتجة عنها، ولا يمثل نقطة انطلاق الالتزام بالضمان التعاقدي."}, {"id": "C", "text": "انطلاق الالتزام بالضمان التعاقدي دون تحويل الملكية لفائدة صاحب المشروع وتحمله المخاطر الناتجة عنها."}, {"id": "D", "text": "تحويل الملكية لفائدة صاحب المشروع وتحمله المخاطر الناتجة عنها، ويمثل نقطة انطلاق الالتزام بالضمان التعاقدي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 73 من دفتر الشروط الإدارية العامة المطبقة على صفقات الأشغال (CCAG-T)، يترتب عن التسلم المؤقت (Réception provisoire) حيازة وتحويل ملكية المنشآت لفائدة صاحب المشروع وتحمله المخاطر، كما يعتبر نقطة الانطلاق الرسمية لفترة الضمان التعاقدي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q33', 'exam_2024_mgmt', 33, 'القانون الدستوري والمؤسسات الدستورية', 'تتألف المحكمة الدستورية من:', false, '[{"id": "A", "text": "اثني عشر عضوا، يعينون لمدة تسع سنوات قابلة للتجديد."}, {"id": "B", "text": "اثني عشر عضوا، يعينون لمدة تسع سنوات غير قابلة للتجديد."}, {"id": "C", "text": "اثني عشر عضوا، يعينون لمدة عشر سنوات غير قابلة للتجديد."}, {"id": "D", "text": "اثني عشر عضوا، يعينون لمدة عشر سنوات قابلة للتجديد."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص الفصل 130 من دستور المملكة المغربية لسنة 2011 على: ''تتألف المحكمة الدستورية من اثني عشر عضوا، يعينون لمدة تسع سنوات غير قابلة للتجديد...''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q34', 'exam_2024_mgmt', 34, 'ميزانية الأكاديميات والمنح', 'تصرف المنحة الدراسية المنصوص عليها في المرسوم رقم 2.19.333 من:', false, '[{"id": "A", "text": "الاعتمادات المالية المرصودة في قانون المالية والمقيدة في ميزانية جمعية دعم مدرسة النجاح."}, {"id": "B", "text": "الاعتمادات المالية المرصودة في قانون المالية والمقيدة في ميزانية وزارة التربية الوطنية والتعليم الأولي والرياضة."}, {"id": "C", "text": "الاعتمادات المالية المرصودة في قانون المالية والمقيدة في ميزانية الأكاديميات الجهوية للتربية والتكوين."}, {"id": "D", "text": "الاعتمادات المالية المرصودة في قانون المالية والمقيدة في ميزانية المديريات الإقليمية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المادة 5 من المرسوم رقم 2.19.333 تحدد أن صرف منح الأقسام الداخلية والمطاعم المدرسية يتم من الاعتمادات المالية المفتوحة في قانون المالية والمقيدة في ميزانيات الأكاديميات الجهوية للتربية والتكوين باعتبارها مؤسسات عمومية ذات استقلال مالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q35', 'exam_2024_mgmt', 35, 'التوجيه والمواكبة المدرسية', 'تتم المواكبة الشخصية للمتعلمين، حسب حاجاتهم وخصوصياتهم، عبر الخدمات الأساسية الآتية:', false, '[{"id": "A", "text": "خدمة المواكبة التربوية فقط."}, {"id": "B", "text": "خدمات المواكبة التربوية والتخصصية فقط."}, {"id": "C", "text": "خدمة المواكبة المادية وخدمة المواكبة المهنية."}, {"id": "D", "text": "خدمة المواكبة التربوية - خدمة المواكبة التخصصية - خدمات المواكبة النفسية والاجتماعية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 15 من القرار الوزاري 062.19، تتم المواكبة الشاملة عبر ثلاث خدمات رئيسية متكاملة: 1) خدمة المواكبة التربوية، 2) خدمة المواكبة التخصصية (أطر التوجيه)، 3) خدمات المواكبة النفسية والاجتماعية (أطر الدعم الاجتماعي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q36', 'exam_2024_mgmt', 36, 'الصفقات العمومية وأنواع الأثمان', 'تبرم صفقات التوريدات وصفقات الخدمات غير تلك المتعلقة بالدراسات على أساس:', false, '[{"id": "A", "text": "ثمن قابل للمراجعة."}, {"id": "B", "text": "ثمن مؤقت."}, {"id": "C", "text": "ثمن ثابت."}, {"id": "D", "text": "ثمن ثابت وقابل للمراجعة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 15 من مرسوم الصفقات العمومية رقم 2.22.431، تبرم صفقات التوريدات وصفقات الخدمات (باستثناء الدراسات) على أساس ثمن ثابت (Prix ferme) لا يتغير خلال مدة تنفيذ الصفقة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q37', 'exam_2024_mgmt', 37, 'التدبير المالي للداخليات والمطاعم', 'يحدد المرسوم رقم 2.19.333 مقدار المنحة الكاملة الخاصة بالقسم الداخلي في:', false, '[{"id": "A", "text": "1.260,00 درهم عن كل تلميذ(ة) كل ثلاثة (3) أشهر."}, {"id": "B", "text": "1.800,00 درهم عن كل تلميذ(ة) كل ثلاثة (3) أشهر."}, {"id": "C", "text": "34,00 درهم يوميا عن كل تلميذ(ة)."}, {"id": "D", "text": "14,00 درهم يوميا عن كل تلميذ(ة)."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يحدد المرسوم رقم 2.19.333 مقدار المنحة الكاملة بالقسم الداخلي في 1.800,00 درهم عن كل تلميذ(ة) عن كل ثلاثة أشهر (بمعدل 20 درهماً يومياً للوجبات الثلاث والمبيت).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q38', 'exam_2024_mgmt', 38, 'الحماية الاجتماعية والمنح المدرسية', 'ترتكز عملية الاستهداف الجديدة للتلميذات والتلاميذ المرشحين للاستفادة من منح الأقسام الداخلية والمطاعم المدرسية للتعليم العمومي على:', false, '[{"id": "A", "text": "اعتماد مؤشر ''السجل الاجتماعي الموحد'' للأسرة دون استحضار عامل بعد مقر سكن التلميذ(ة) عن المؤسسة الأصلية."}, {"id": "B", "text": "اعتماد مؤشر ''السجل الاجتماعي الموحد'' للأسرة واستحضار عامل بعد مقر سكن التلميذ(ة) عن المؤسسة الأصلية."}, {"id": "C", "text": "اعتماد مؤشر ''السجل الاجتماعي الموحد'' للأسرة واستحضار عامل بعد مقر سكن التلميذ(ة) عن مؤسسة الاستقبال."}, {"id": "D", "text": "اعتماد مؤشر ''السجل الاجتماعي الموحد'' للأسرة دون استحضار عامل بعد مقر سكن التلميذ(ة) عن مؤسسة الاستقبال."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ترتكز المقاربة الجديدة للاستهداف لمنح الداخليات على معيارين متلازمين: عتبة مؤشر ''السجل الاجتماعي الموحد'' (RSU) لتقييم الهشاشة، مضافاً إليها معيار البُعد الجغرافي الفاصل بين مقر سكن أسرة التلميذ ومؤسسة الاستقبال التعليمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q39', 'exam_2024_mgmt', 39, 'الصفقات العمومية وآجال العروض', 'يظل المتنافسون ملتزمين بالعروض التي قدموها، طيلة:', false, '[{"id": "A", "text": "مدة ستين (60) يوما تسري، ابتداء من تاريخ جلسة فتح الأظرفة أو من تاريخ توقيع الصفقة من لدن نائلها عندما تكون الصفقة قابلة للتجديد."}, {"id": "B", "text": "مدة ستين (60) يوما تسري، حسب الحالة، ابتداء من تاريخ جلسة فتح الأظرفة أو من تاريخ توقيع الصفقة من لدن نائل الصفقة عندما تكون الصفقة صفقة تفاوضية."}, {"id": "C", "text": "مدة خمسة وسبعين (75) يوما تسري، حسب الحالة، ابتداء من تاريخ جلسة فتح الأظرفة أو من تاريخ توقيع الصفقة من لدن نائل الصفقة عندما تكون الصفقة صفقة تفاوضية."}, {"id": "D", "text": "مدة خمسة وسبعين (75) يوما تسري، ابتداء من تاريخ جلسة فتح الأظرفة ومن تاريخ توقيع الصفقة من لدن نائل الصفقة عندما تكون الصفقة قابلة للتجديد."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'المادة 36 من مرسوم الصفقات العمومية رقم 2.22.431 خفّضت أجل صلاحية العروض والتزام المتنافسين من 75 يوماً إلى 60 يوماً تسري ابتداء من تاريخ جلسة فتح الأظرفة أو من تاريخ توقيع الصفقة في حالة الصفقات التفاوضية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q40', 'exam_2024_mgmt', 40, 'سندات الطلب والمساطر المالية', 'تناط مهمة تحرير سند الطلب بالمؤسسات التعليمية (التعليم الثانوي) حسب المذكرة الوزارية رقم 125 بـ:', false, '[{"id": "A", "text": "رئيس المؤسسة."}, {"id": "B", "text": "رئيس المؤسسة ومسير المصالح المادية والمالية."}, {"id": "C", "text": "رئيس المؤسسة أو مسير المصالح المادية والمالية."}, {"id": "D", "text": "مسير المصالح المادية والمالية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المذكرة 125 والمبادئ العامة للمحاسبة العمومية، فإن تحرير سند الطلب (Bon de commande) يعد إجراءً التزامياً بالنفقات يختص به حصراً رئيس المؤسسة بصفته الآمر بالصرف المعتمد، في حين يقوم المسير المالي بإجراءات التصفية والأداء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q41', 'exam_2024_mgmt', 41, 'ميزانية الأكاديميات الجهوية', 'تشمل ميزانية الأكاديمية الجهوية للتربية والتكوين في باب النفقات:', false, '[{"id": "A", "text": "نفقات التسيير والاستغلال."}, {"id": "B", "text": "نفقات الاستثمار والتجهيز."}, {"id": "C", "text": "نفقات التجهيز والتسيير، تسديد التسبيقات والقروض، كل النفقات الأخرى المرتبطة بنشاطها."}, {"id": "D", "text": "نفقات التجهيز والموظفين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تنص المادة 9 من القانون رقم 07.00 القاضي بإحداث الأكاديميات الجهوية للتربية والتكوين على أن ميزانية الأكاديمية تشتمل في باب النفقات على: نفقات التجهيز ونفقات التسيير، تسديد التسبيقات والقروض، وكل النفقات الأخرى المرتبطة بممارسة مهامها واختصاصاتها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q42', 'exam_2024_mgmt', 42, 'التشريع الإداري والحكامة الطلابية', 'يتكون مكتب المجلس التلاميذي الجهوي من عدد:', false, '[{"id": "A", "text": "ما بين 09 و 17 تلميذ(ة)."}, {"id": "B", "text": "ما بين 09 و 21 تلميذ(ة)."}, {"id": "C", "text": "(عدد المديريات × 3) + 1."}, {"id": "D", "text": "عدد الأكاديميات × 2."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفقاً للنظام الداخلي للمجالس التلاميذية على صعيد الأكاديميات الجهوية، يتراوح عدد أعضاء مكتب المجلس التلاميذي الجهوي ما بين 9 و 17 تلميذاً وتلميذة يمثلون مختلف المديريات الإقليمية والأسلاك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q43', 'exam_2024_mgmt', 43, 'حساب الخارج عن الميزانية', 'تدون بسجل مداخيل حساب الخارج عن الميزانية:', false, '[{"id": "A", "text": "الذخائر."}, {"id": "B", "text": "المنح الدراسية."}, {"id": "C", "text": "منحة المديرية لتمويل مشروع المؤسسة المندمج."}, {"id": "D", "text": "الهبات والمساعدات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حساب الخارج عن الميزانية (Compte Hors Budget) يخصص قانوناً للعمليات المؤقتة والذخائر (Cautionnements/ضمانات الكتب والمعدات) وواجبات التسجيل والتأمين والأنشطة الرياضية، بينما المنح والميزانيات ترصد في ميزانيات الأكاديمية أو جمعية دعم مدرسة النجاح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q44', 'exam_2024_mgmt', 44, 'المحاسبة العمومية وأهدافها', 'تهدف المحاسبة إلى:', false, '[{"id": "A", "text": "بيان عمليات الخزينة وإخبار سلطات المراقبة أو التسيير."}, {"id": "B", "text": "بيان ومراقبة العمليات المتعلقة بالميزانية والمالية وكذا إلى إخبار سلطات المراقبة والتسيير."}, {"id": "C", "text": "بيان أو مراقبة العمليات المتعلقة بالميزانية والمالية وإخبار سلطات المراقبة أو التسيير."}, {"id": "D", "text": "بيان العمليات المتعلقة بالميزانية أو العمليات المالية أو إخبار سلطات التسيير."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص الفصل 2 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية على: ''تهدف المحاسبة إلى بيان ومراقبة العمليات المتعلقة بالميزانية والمالية وكذا إلى إخبار سلطات المراقبة والتسيير''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q45', 'exam_2024_mgmt', 45, 'التنظيم الإداري لمؤسسات التعليم', 'يشرف على تسيير الثانوية الإعدادية إلى جانب المدير:', false, '[{"id": "A", "text": "الناظر."}, {"id": "B", "text": "رئيس الأشغال."}, {"id": "C", "text": "مدير الدراسة."}, {"id": "D", "text": "الأستاذ المكلف بتسيير الفرعية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'حسب المادة 11 من المرسوم 2.02.376، يتكون الطاقم الإداري للثانوية الإعدادية من: المدير، حراس عامون للخارجية، وحارس عام للداخلية (في حال توفر داخلية). أما الناظر ومدير الدروس ورئيس الأشغال فهم حصريون بالثانوي التأهيلي والتقني.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q46', 'exam_2024_mgmt', 46, 'قانون المالية ورصيد الميزانية', 'يحتسب رصيد الميزانية المتوقع على أساس:', false, '[{"id": "A", "text": "الفرق بين الموارد والتكاليف."}, {"id": "B", "text": "الفرق بين الموارد دون حصيلة الاقتراضات والتكاليف دون النفقات المتعلقة باستهلاك الدين الطويل الأجل فقط."}, {"id": "C", "text": "الفرق بين الموارد والتكاليف دون النفقات المتعلقة باستهلاك الدين المتوسط فقط."}, {"id": "D", "text": "الفرق بين الموارد دون حصيلة الاقتراضات، والتكاليف دون النفقات المتعلقة باستهلاك الدين المتوسط والطويل الأجل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب مقتضيات القانون التنظيمي لقانون المالية رقم 130.13، يحتسب الرصيد الميزانياتي المتوقع (Solde budgétaire) على أساس الفرق بين الموارد (دون احتساب حصيلة الاقتراضات) والنفقات/التكاليف (دون احتساب نفقات استهلاك الدين المتوسط والطويل الأجل).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q47', 'exam_2024_mgmt', 47, 'المراقبة المالية والتأشيرة المسبقة', 'تخضع للتأشيرة المسبقة لمراقب الدولة للمالية لدى الأكاديميات الجهوية للتربية والتكوين، الإعانات والمنح الممنوحة لجمعيات دعم مدرسة النجاح والجمعيات العاملة في التعليم الأولي أو في التربية غير النظامية، التي تساوي أو تفوق سقف:', false, '[{"id": "A", "text": "10.000,00 درهم."}, {"id": "B", "text": "20.000,00 درهم."}, {"id": "C", "text": "30.000,00 درهم."}, {"id": "D", "text": "50.000,00 درهم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وفقاً للتعليمات والمناشير المنظمة للمراقبة المالية للدولة على الأكاديميات الجهوية، تخضع المنح والإعانات الممنوحة للجمعيات الشريكة لتأشيرة مراقب الدولة إذا بلغت أو تجاوزت عتبة 50.000,00 درهم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q48', 'exam_2024_mgmt', 48, 'الأقسام التحضيرية والرسوم المدرسية', 'تحدد واجبات التسجيل وإعادة التسجيل بالقسم الخارجي لمراكز الأقسام التحضيرية لولوج المدارس العليا في:', false, '[{"id": "A", "text": "10,00 دراهم."}, {"id": "B", "text": "200,00 درهم."}, {"id": "C", "text": "11,00 درهما."}, {"id": "D", "text": "180,00 درهم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تحدد الرسوم النظامية للتسجيل وإعادة التسجيل للتلاميذ غير الممنوحين أو بالقسم الخارجي بمراكز الأقسام التحضيرية (CPGE) في 180,00 درهماً سنوياً بموجب القرارات المحددة لواجبات التسجيل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q49', 'exam_2024_mgmt', 49, 'المحاسبة العمومية والآمر بالصرف', 'يعتبر آمرا بالصرف للمداخيل والنفقات:', false, '[{"id": "A", "text": "كل عون مؤهل باسم منظمة عمومية لتصفية أوامر باستخلاص دين أو أدائه."}, {"id": "B", "text": "كل شخص مؤهل باسم منظمة عمومية لرصد وإثبات وتصفية أوامر باستخلاص دين دون أدائه."}, {"id": "C", "text": "كل موظف مؤهل باسم منظمة عمومية لرصد أو إثبات أو تصفية أوامر باستخلاص دين أو أدائه."}, {"id": "D", "text": "كل شخص مؤهل باسم منظمة عمومية لرصد أو إثبات أو تصفية أوامر باستخلاص دين أو أدائه."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'ينص الفصل 3 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية على: ''يعتبر آمرا بالصرف للمداخيل والنفقات كل شخص مؤهل باسم منظمة عمومية لرصد أو إثبات أو تصفية أوامر باستخلاص دين أو أدائه''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q50', 'exam_2024_mgmt', 50, 'حساب الخارج عن الميزانية والموسم الدراسي', 'تبتدئ السنة المالية بحساب الخارج عن الميزانية:', false, '[{"id": "A", "text": "من 01 يناير إلى 31 دجنبر."}, {"id": "B", "text": "من 01 يونيو إلى 31 ماي."}, {"id": "C", "text": "من 01 يوليوز إلى 30 يونيو."}, {"id": "D", "text": "من 01 شتنبر إلى 31 غشت."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تمتد السنة المحاسبية لحساب الخارج عن الميزانية بالمؤسسات التعليمية تزامناً مع السنة الدراسية الفعلية، أي ابتداءً من فاتح شتنبر إلى غاية 31 غشت من السنة الموالية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q51', 'exam_2024_mgmt', 51, 'القانون الإطار 51.17 والتقييم التربوي', 'تنجز السلطة الحكومية المكلفة بالتربية والتعليم والتكوين والبحث العلمي بكيفية دورية ومستمرة:', false, '[{"id": "A", "text": "عملية تقييم داخلي."}, {"id": "B", "text": "عملية تقييم خارجي."}, {"id": "C", "text": "عملية تقييم داخلي وخارجي."}, {"id": "D", "text": "لا تقوم بأي عملية تقييم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تنص المادتان 53 و 54 من القانون الإطار رقم 51.17 المتعلق بمنظومة التربية والتكوين والبحث العلمي على إخضاع المنظومة ومكوناتها ومؤسساتها بكيفية دورية ومستمرة لتقييم داخلي تنجزه السلطة الحكومية وتقييم خارجي تنجزه الهيئة الوطنية للتقييم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q52', 'exam_2024_mgmt', 52, 'المحاكم المالية ومراقبة المال العام', 'يراقب المجلس الأعلى للحسابات الأموال العمومية التي تتلقاها:', false, '[{"id": "A", "text": "المقاولات، باستثناء المقاولات المشار إليه في المادة 76، التي تستفيد من مساهمة في الرأسمال أو من مساعدة كيفما كان شكلها من طرف الدولة أو مؤسسة عمومية أو من أحد الأجهزة الأخرى الخاضعة لرقابة المجلس، مع مراعاة مقتضيات الظهير الشريف رقم 1.58.376."}, {"id": "B", "text": "الجمعيات أو كل الأجهزة الأخرى التي تستفيد من مساهمة في الرأسمال أو من مساعدة كيفما كان شكلها من طرف الدولة أو مؤسسة عمومية أو من أحد الأجهزة الأخرى الخاضعة لرقابة المجلس، مع مراعاة مقتضيات الظهير الشريف رقم 1.58.376."}, {"id": "C", "text": "المقاولات، باستثناء المقاولات المشار إليه في المادة 76، أو الجمعيات أو كل الأجهزة الأخرى التي تستفيد من مساهمة في الرأسمال أو من مساعدة كيفما كان شكلها من طرف الدولة أو مؤسسة عمومية أو من أحد الأجهزة الأخرى الخاضعة لرقابة المجلس، مع مراعاة مقتضيات الظهير الشريف رقم 1.58.376."}, {"id": "D", "text": "المقاولات، باستثناء المقاولات المشار إليه في المادة 76، أو الجمعيات التي تستفيد من مساهمة في الرأسمال ومن مساعدة كيفما كان شكلها من طرف الدولة ومن المؤسسات العمومية ومن أحد الأجهزة الأخرى الخاضعة لرقابة المجلس، مع مراعاة مقتضيات الظهير الشريف رقم 1.58.376."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تنص المادة 86 من القانون رقم 62.99 بمثابة مدونة المحاكم المالية على مراقبة المجلس الأعلى للحسابات لاستخدام الأموال العمومية التي تتلقاها الجمعيات أو الأجهزة المستفيدة من إعانات أو مساهمات عمومية، مع مراعاة مقتضيات ظهير تأسيس الجمعيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q53', 'exam_2024_mgmt', 53, 'التنظيم الهيكلي والإداري', 'توضع مؤسسات التربية والتعليم العمومي تحت سلطة:', false, '[{"id": "A", "text": "الأكاديمية الجهوية لمهن التربية والتكوين في حدود دائرة نفوذها الترابي."}, {"id": "B", "text": "رئاسة الحكومة."}, {"id": "C", "text": "وزارة التربية الوطنية والتعليم الأولي والرياضة."}, {"id": "D", "text": "المديرية الإقليمية لوزارة التربية والتعليم الأولي والرياضة، في حدود دائرة نفوذها الترابي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'المادة 1 من المرسوم 2.02.376 تنص على وضع مؤسسات التربية والتعليم العمومي تحت سلطة ''الأكاديمية الجهوية للتربية والتكوين'' (وليس ''لمهن التربية والتكوين'' كما ورد محرفاً في الخيار A للتمويه، حيث أن مهن التربية خاصة بالمراكز الجهوية CRMEF). لذلك فالجواب الدقيق هو (E).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q54', 'exam_2024_mgmt', 54, 'المحاسبة العمومية ومسؤولية المحاسبين', 'يعتبر المحاسبون العموميون للدولة والجماعات المحلية وهيئاتها، ما عدا في حالة إصدار أمر بالتسخير بكيفية مشروعة عن الآمر بالصرف:', false, '[{"id": "A", "text": "مسؤولين شخصيا أو ماليا في حدود الاختصاصات المسندة إليهم بمقتضى النصوص التشريعية والتنظيمية الجاري بها العمل."}, {"id": "B", "text": "مسؤولين شخصيا وماليا في حدود الاختصاصات المسندة إليهم بمقتضى النصوص التشريعية والتنظيمية الجاري بها العمل."}, {"id": "C", "text": "مسؤولين شخصيا وماليا في حدود الاختصاصات المسندة إليهم بمقتضى النصوص القانونية الجاري بها العمل."}, {"id": "D", "text": "مسؤولين شخصيا فقط، في حدود الاختصاصات المسندة إليهم بمقتضى النصوص التشريعية الجاري بها العمل."}, {"id": "E", "text": "مسؤولين ماليا فقط، في حدود الاختصاصات المسندة إليهم بمقتضى النصوص التشريعية الجاري بها العمل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينص الفصل 13 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية صراحة على: ''يعتبر المحاسبون العموميون مسؤولين شخصيا وماليا في حدود الاختصاصات المسندة إليهم بمقتضى النصوص التشريعية والتنظيمية الجاري بها العمل''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q59', 'exam_2024_mgmt', 59, 'التدبير المالي وممتلكات المؤسسة', 'تسجل المساهمة المالية للشراكة بين مؤسسة تعليمية عمومية ومؤسسة للتعليم الخصوصي التي تهدف إلى استغلال الملاعب الرياضية في:', false, '[{"id": "A", "text": "ميزانية جمعية دعم مدرسة النجاح."}, {"id": "B", "text": "ميزانية جمعية أمهات وآباء وأولياء التلميذات والتلاميذ."}, {"id": "C", "text": "ميزانية حساب الخارج عن الميزانية."}, {"id": "D", "text": "ميزانية الأكاديمية الجهوية للتربية والتكوين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'المداخيل الناتجة عن استغلال المرافق والملاعب الرياضية في إطار الشراكات تسجل وجوباً ضمن مداخيل ميزانية الأكاديمية الجهوية للتربية والتكوين باعتبارها المالك والمؤسسة العمومية التي تتمتع بالأهلية القانونية والذمة المالية المستقلة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q60', 'exam_2024_mgmt', 60, 'الإحصاء والتنظيم البياني', 'الرسم المبياني الأفضل لتمثيل المتغير الإحصائي ''نتائج الباكالوريا لمؤسسة تعليمية خلال العشر سنوات الأخيرة'' هو:', false, '[{"id": "A", "text": "الرسم المبياني الدائري."}, {"id": "B", "text": "الرسم المبياني بالأعمدة."}, {"id": "C", "text": "الرسم المبياني المساحي."}, {"id": "D", "text": "الرسم المبياني الخطي."}, {"id": "E", "text": "جميع الاختيارات الأخرى خاطئة."}]'::jsonb, ARRAY['D']::text[], 'لتمثيل السلاسل الزمنية (Séries chronologiques) وتتبع تطور ظاهرة معينة على مدى فترة زمنية متصلة (مثل نتائج 10 سنوات متتالية)، فإن الرسم المبياني الخطي (Courbe chronologique) هو الأنسب علمياً لإظهار منحى التطور والاتجاه العام.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q61', 'exam_2024_mgmt', 61, 'الصفقات العمومية وتقييم العروض', 'تقوم لجنة طلب العروض بتحديد الثمن المرجعي بعد:', false, '[{"id": "A", "text": "إقصاء العروض المفرطة فقط."}, {"id": "B", "text": "تأكيد العروض المنخفضة بكيفية غير عادية."}, {"id": "C", "text": "إقصاء العروض المفرطة والعروض المنخفضة بكيفية غير عادية."}, {"id": "D", "text": "إقصاء العروض المفرطة والعروض المنخفضة بتفريط."}, {"id": "E", "text": "جميع الاختيارات خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 22 من مرسوم الصفقات العمومية الجديد رقم 2.22.431، يتم احتساب الثمن المرجعي بعد الإقصاء التلقائي للعروض المالية المصنفة كعروض مفرطة (Offres excessives) أو عروض منخفضة بكيفية غير عادية (Offres anormalement basses).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q62', 'exam_2024_mgmt', 62, 'المحاسبة المادية وصفقات الإطعام', 'سجلات المحاسبة المادية بالقسم الداخلي في إطار صفقة المطعمة هي:', false, '[{"id": "A", "text": "سجل الخزين."}, {"id": "B", "text": "دفتر الخازن."}, {"id": "C", "text": "دفتر الاستهلاك اليومي."}, {"id": "D", "text": "سجل الجرد."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'عند اعتماد نظام ''صفقة المطعمة'' (التفويض الخارجي)، تنتقل مسؤولية تخزين المواد والمحاسبة المادية للممون، ويتم الاستغناء عن سجلات الخزين والاستهلاك اليومي التقليدية، والاستعاضة عنها بسجلات تتبع الوجبات اليومية وسندات التسليم (Bons de livraison) ومراقبة الجودة. لذلك فجميع الخيارات خاطئة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q63', 'exam_2024_mgmt', 63, 'مدارس وإعداديات الريادة', 'تستفيد المؤسسات المشاركة في برنامج ''إعداديات الريادة'' من رصد ميزانية إضافية لتمويل مشروع المؤسسة المندمج تصل إلى:', false, '[{"id": "A", "text": "29.999,00 درهم سنويا حسب عدد تلاميذ المؤسسة."}, {"id": "B", "text": "49.999,00 درهم سنويا حسب عدد تلاميذ المؤسسة."}, {"id": "C", "text": "100.000,00 درهم سنويا حسب عدد تلاميذ المؤسسة."}, {"id": "D", "text": "200.000,00 درهم سنويا حسب عدد تلاميذ المؤسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تستفيد المؤسسات التعليمية المنخرطة في نموذج ''مؤسسات وإعداديات الريادة'' من دعم مالي إضافي مباشر يُصرف في إطار جمعية دعم مدرسة النجاح لمشروع المؤسسة المندمج يصل إلى 100.000,00 درهم سنوياً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q64', 'exam_2024_mgmt', 64, 'الإحصاء التطبيقي والمتغيرات', 'ينتمي المتغير الإحصائي ''عدد الإخوة والأخوات'' في دراسة تهتم بتلاميذ مؤسسة تعليمية إلى فئة المتغيرات الإحصائية:', false, '[{"id": "A", "text": "الكمية المنفصلة (Discrète)."}, {"id": "B", "text": "النوعية الاسمية."}, {"id": "C", "text": "الكمية المتصلة (Continue)."}, {"id": "D", "text": "النوعية الترتيبية."}, {"id": "E", "text": "جميع الاختيارات الأخرى خاطئة."}]'::jsonb, ARRAY['A']::text[], 'متغير ''عدد الإخوة والأخوات'' يقاس بأعداد صحيحة طبيعية معدودة غير متصلة ولا تقبل التجزئة أو الكسور (0، 1، 2، 3...)، وبالتالي فهو متغير كمي منفصل (Variable quantitative discrète).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q65', 'exam_2024_mgmt', 65, 'المحاسبة العمومية والمحاسب الفعلي', 'يعتبر محاسبا بحكم الواقع:', false, '[{"id": "A", "text": "كل شخص يباشر عمليات قبض الموارد ودفع النفقات وحيازة واستعمال أموال أو قيم في ملك أحد الأجهزة العمومية، بقرار من السلطة المختصة."}, {"id": "B", "text": "كل شخص يباشر عمليات قبض الموارد ودفع النفقات وحيازة واستعمال أموال أو قيم في ملك أحد الأجهزة العمومية، بقرار من وزير المالية."}, {"id": "C", "text": "كل شخص يباشر عمليات قبض الموارد ودفع النفقات وحيازة واستعمال أموال أو قيم في ملك أحد الأجهزة العمومية، بقرار من المحاسب العمومي."}, {"id": "D", "text": "كل شخص يباشر عمليات قبض الموارد ودفع النفقات وحيازة واستعمال أموال أو قيم في ملك أحد الأجهزة العمومية، بقرار من المراقب العمومي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'المحاسب بحكم الواقع (Comptable de fait) حسب الفصل 16 من المرسوم الملكي 330.66 والمادة 41 من القانون 62.99 هو كل شخص يباشر عمليات قبض المداخيل أو دفع النفقات أو حيازة أموال عمومية دون أن يكون مؤهلاً قانوناً ودون سند أو تعيين رسمي من السلطة المختصة. لذلك فجميع الخيارات المقترحة (التي تزعم وجود قرار رسمي) خاطئة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q66', 'exam_2024_mgmt', 66, 'المفتشية العامة للمالية والرقابة', 'يعهد لمفتش المالية:', false, '[{"id": "A", "text": "بإجراء تحقيقات بخصوص مصالح الصندوق والمحاسبة والنقود والمواد فقط."}, {"id": "B", "text": "بإجراء تحقيقات بخصوص المحاسبين."}, {"id": "C", "text": "بإجراء تحقيقات بخصوص مصالح الصندوق أو المحاسبة أو النقود أو المواد أو المحاسبين العموميين أو مستخدمي الدولة أو الجماعات المحلية أو المؤسسات العمومية."}, {"id": "D", "text": "بإجراء تحقيقات بخصوص مصالح الصندوق والمحاسبة والنقود والمواد وكذا المحاسبين العموميين وبصفة عامة مستخدمي الدولة والجماعات المحلية والمؤسسات العمومية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص الفصل 101 من المرسوم الملكي رقم 330.66 بسن نظام عام للمحاسبة العمومية على أنه يعهد لمفتش المالية بالتحقيق والتدقيق في مصالح الصندوق والمحاسبة أو النقود أو المواد أو المحاسبين العموميين أو مستخدمي الدولة والجماعات المحلية والمؤسسات العامة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q67', 'exam_2024_mgmt', 67, 'الداخليات والمطاعم المدرسية', 'يحدد الإطار المرجعي لجودة خدمات الداخليات والمطاعم المدرسية بمؤسسات التعليم العمومي - نسخة يناير 2024، عدد الأيام المعتمدة بالأقسام الداخلية والمطاعم المدرسية في:', false, '[{"id": "A", "text": "300 يوما بالأقسام الداخلية و180 يوما بالمطاعم المدرسية."}, {"id": "B", "text": "300 يوما بالأقسام الداخلية و230 يوما بالمطاعم المدرسية."}, {"id": "C", "text": "280 يوما بالأقسام الداخلية و230 يوما بالمطاعم المدرسية."}, {"id": "D", "text": "270 يوما بالأقسام الداخلية و250 يوما بالمطاعم المدرسية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'وفقاً للإطار المرجعي الوطني لجودة خدمات الإيواء والإطعام المدرسي (نسخة يناير 2024)، يعتمد احتساب نفقات ووجبات الإطعام على قاعدة 280 يوماً بالأقسام الداخلية، و 230 يوماً بالمطاعم المدرسية للتعليم الابتدائي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q68', 'exam_2024_mgmt', 68, 'الإحصاء الوصفي والتحليلي', 'يقوم الإحصاء الوصفي بـ:', false, '[{"id": "A", "text": "تجميع المعطيات أو البيانات في حالتها الطبيعية، وتنظيمها على شكل جدول وتلخيصها واستخلاص الاستنتاجات والمساعدة على اتخاذ القرار بواسطة مجموعة من المبيانات."}, {"id": "B", "text": "تجميع المعطيات والبيانات في حالتها الخام، وتنظيمها على شكل جدول أو عرضها واستخلاص الاستنتاجات."}, {"id": "C", "text": "تجميع المعطيات والبيانات على حالتها، وتنظيمها على شكل جدول وعرضها وتلخيصها، والمساعدة على اتخاذ القرار بواسطة مجموعة من المؤشرات."}, {"id": "D", "text": "تجميع المعطيات والبيانات في حالتها الطبيعية أو الخام، وتنظيمها على شكل جدول أو عرضها أو تلخيصها واستخلاص الاستنتاجات والمساعدة على اتخاذ القرار بواسطة مجموعة من المؤشرات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الإحصاء الوصفي (Statistique descriptive) يقتصر علمياً على جمع وتبويب وعرض وتلخيص المعطيات العددية (جداول ومبيانات ومقاييس). أما استخلاص الاستنتاجات وتعميم النتائج والمساعدة في اتخاذ القرارات التنبؤية فهو من اختصاص الإحصاء الاستدلالي (Statistique inférentielle)، لذلك فالجواب العلمي الدقيق هو (E).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q69', 'exam_2024_mgmt', 69, 'مسطرة تنفيذ النفقات العمومية', 'الأمر بالصرف هو العمل الإداري الذي:', false, '[{"id": "A", "text": "يحتوي طبقا لنتائج التصفية على الأمر بأداء دين المنظمة العمومية ويقوم بهذا العمل الآمر بالصرف."}, {"id": "B", "text": "يحتوي طبقا لنتائج البحث على الأمر بأداء دين المنظمة العمومية ويقوم بهذا العمل المحاسب العمومي."}, {"id": "C", "text": "يحتوي طبقا لسند الالتزام على الأمر بأداء دين المنظمة العمومية ويقوم بهذا العمل الآمر بالصرف."}, {"id": "D", "text": "يحتوي طبقا لنتائج التصفية على الأمر بأداء دين المنظمة العمومية ويقوم بهذا العمل المحاسب العمومي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ينص الفصل 35 من المرسوم الملكي 330.66 على أن: ''الأمر بالصرف (L''ordonnancement) هو العمل الإداري الذي يحتوي طبقاً لنتائج التصفية على الأمر بأداء دين المنظمة العمومية ويقوم بهذا العمل الآمر بالصرف''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q70', 'exam_2024_mgmt', 70, 'مشروع المؤسسة والمصادقة الإقليمية', 'تتم المصادقة النهائية على مشروع المؤسسة المندمج من طرف:', false, '[{"id": "A", "text": "الوزارة المكلفة بالتربية والتعليم الأولي والرياضة."}, {"id": "B", "text": "الأكاديمية الجهوية للتربية والتكوين."}, {"id": "C", "text": "اللجنة الإقليمية لمشروع المؤسسة المندمج."}, {"id": "D", "text": "مجلس تدبير المؤسسة التعليمية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المذكرة الوزارية رقم 087/21، بعد مصادقة مجلس تدبير المؤسسة على مشروع المؤسسة المندمج، يُرفع إلى المديرية الإقليمية حيث تتولى ''اللجنة الإقليمية لقيادة مشروع المؤسسة المندمج'' دراسته ومنحه المصادقة النهائية وتخصيص الدعم المالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q71', 'exam_2024_mgmt', 71, 'الصفقات والعتاد الديداكتيكي', 'يتم اقتناء العتاد الديداكتيكي والمواد الكيميائية بناء على صفقات عمومية، وتودع العينات إذا تمت الإشارة إليها بنظام الاستشارة، بعد:', false, '[{"id": "A", "text": "فحص الملفات الإدارية والتقنية للمتنافسين."}, {"id": "B", "text": "فحص الوثائق الوصفية والبيانات الموجزة والوثائق التقنية الأخرى، عند الاقتضاء."}, {"id": "C", "text": "فحص العروض التقنية، عند الاقتضاء."}, {"id": "D", "text": "فحص العروض المالية للمتنافسين."}, {"id": "E", "text": "جميع الاختيارات خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفقاً لمقتضيات مرسوم الصفقات العمومية، فإن فحص العينات والنماذج التجريبية (Echantillons) لا يتم إلا بعد جلسة القبول الإداري واستيفاء وفحص الملفين الإداري والتقني للمتنافسين المقبولين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q72', 'exam_2024_mgmt', 72, 'محاسبة جمعية مدرسة النجاح', 'تدون العمليات المالية الخاصة بجمعية دعم مدرسة النجاح بالسجلات الآتية:', false, '[{"id": "A", "text": "السجل اليومي للعمليات أو سجل الصندوق أو سجل البنك."}, {"id": "B", "text": "السجل اليومي للعمليات وسجلات الذخائر."}, {"id": "C", "text": "السجل اليومي للعمليات وسجل الصندوق وسجل البنك."}, {"id": "D", "text": "السجل اليومي للعمليات وسجل الجرد فقط."}, {"id": "E", "text": "جميع الاختيارات خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص الدليل المسطري للتدبير المالي لجمعيات دعم مدرسة النجاح على إلزامية مسك المحاسبة المالية عبر ثلاث سجلات متكاملة: السجل اليومي للعمليات (Livre-journal)، سجل الصندوق (Caisse)، وسجل البنك (Banque).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q73', 'exam_2024_mgmt', 73, 'قانون المالية وتبويب النفقات', 'تشتمل نفقات الموظفين على:', false, '[{"id": "A", "text": "المرتبات والأجور، ومساهمات الدولة في إطار أنظمة الاحتياط الاجتماعي والتقاعد."}, {"id": "B", "text": "المرتبات والأجور والتعويضات، والمعدات المرتبطة بتسيير المرافق العمومية، والتقاعد."}, {"id": "C", "text": "المرتبات والأجور والتعويضات، ومساهمات الدولة في إطار أنظمة الاحتياط الاجتماعي، والنفقات المتعلقة بالتكاليف المشتركة."}, {"id": "D", "text": "المرتبات والأجور والتعويضات، ومساهمات الدولة في إطار أنظمة الاحتياط الاجتماعي والتقاعد."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'المادة 14 من القانون التنظيمي لقانون المالية رقم 130.13 تنص صراحة على أن نفقات الموظفين تشتمل على: ''المرتبات والأجور والتعويضات، ومساهمات الدولة في إطار أنظمة الاحتياط الاجتماعي والتقاعد''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q74', 'exam_2024_mgmt', 74, 'القانون الدستوري وقانون المالية', 'إذا لم يتم في نهاية السنة المالية التصويت على قانون المالية أو لم يصدر الأمر بتنفيذه، بسبب إحالته إلى المحكمة الدستورية، تطبيقا للفصل 132 من الدستور، فإن الحكومة تفتح:', false, '[{"id": "A", "text": "بظهير الاعتمادات اللازمة لسير المرافق العمومية، على أساس ما هو مقترح في الميزانية المعروضة على الموافقة."}, {"id": "B", "text": "بمرسوم الاعتمادات اللازمة لسير المرافق العمومية، والقيام بالمهام المنوطة بها، على أساس ما هو مقترح في الميزانية المعروضة على الموافقة."}, {"id": "C", "text": "بمرسوم الاعتمادات اللازمة للقيام بالمهام المنوطة بها، على أساس ما هو مقترح في الميزانية المعروضة على الموافقة."}, {"id": "D", "text": "بقرار الاعتمادات اللازمة لسير المرافق العمومية، والقيام بالمهام المنوطة بها، على أساس ما هو مقترح في الميزانية المعروضة على الموافقة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الفصل 75 من الدستور والمادة 50 من القانون التنظيمي للمالية 130.13 ينصان على أنه في هذه الحالة: ''تفتح الحكومة بمرسوم الاعتمادات اللازمة لسير المرافق العمومية والقيام بالمهام المنوطة بها، على أساس ما هو مقترح في الميزانية المعروضة على الموافقة''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q75', 'exam_2024_mgmt', 75, 'الصفقات العمومية وتقييم العروض', 'العرض الأفضل ثمنا، المقترح على صاحب المشروع، هو:', false, '[{"id": "A", "text": "الأقرب إلى الثمن المرجعي بإفراط، وفي حال غياب عروض أقل من الثمن المرجعي المذكور، فإن العرض الأفضل ثمنا هو العرض الأقرب إلى هذا الثمن بتفريط."}, {"id": "B", "text": "الأقرب إلى الثمن المرجعي بإفراط، وفي حال غياب عروض أعلى من الثمن المرجعي المذكور، فإن العرض الأفضل ثمنا هو العرض الأقرب إلى هذا الثمن بتفريط."}, {"id": "C", "text": "الأقرب إلى الثمن المرجعي بتفريط، وفي حال غياب عروض أقل من الثمن المرجعي المذكور، فإن العرض الأفضل ثمنا هو العرض الأقرب إلى هذا الثمن بإفراط."}, {"id": "D", "text": "الأقرب إلى الثمن المرجعي بتفريط، وفي حال غياب عروض أعلى من الثمن المرجعي المذكور، فإن العرض الأفضل ثمنا هو العرض الأقرب إلى هذا الثمن بإفراط."}, {"id": "E", "text": "جميع الاختيارات خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 22 من مرسوم الصفقات العمومية رقم 2.22.431، العرض الأفضل ثمناً (L''offre la plus avantageuse) هو العرض المالي الأقرب إلى الثمن المرجعي بتفريط (Par défaut / أي الأدنى منه مباشرة)، وفي حال عدم وجود أي عرض أدنى من الثمن المرجعي، يُعتمد العرض الأقرب إليه بإفراط (Par excès / الأعلى منه مباشرة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q76', 'exam_2024_mgmt', 76, 'دفتر الشروط والضمان النهائي', 'يجب تكوين الضمان النهائي خلال:', false, '[{"id": "A", "text": "العشرين (20) يوما التي تلي المصادقة على الصفقة ويظل الضمان النهائي مرصدا لتأمين الالتزامات التعاقدية للمقاول إلى حين التسليم النهائي للأشغال."}, {"id": "B", "text": "العشرين (20) يوما التي تلي تبليغ المصادقة على الصفقة ويظل الضمان النهائي مرصدا لتأمين الالتزامات التعاقدية للمقاول إلى حين التسليم النهائي للأشغال."}, {"id": "C", "text": "العشرين (20) يوما التي تلي تبليغ المصادقة على الصفقة ويظل الضمان النهائي مرصدا لتأمين الالتزامات التعاقدية لصاحب الصفقة إلى حين التسليم النهائي للأشغال."}, {"id": "D", "text": "العشرين (20) يوما التي تلي تبليغ المصادقة على الصفقة ويظل الضمان النهائي مرصدا لتأمين الالتزامات التعاقدية للمقاول إلى حين التسليم المؤقت للأشغال."}, {"id": "E", "text": "جميع الاختيارات خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 15 من دفتر الشروط الإدارية العامة المطبقة على صفقات الأشغال (CCAG-T)، يتعين على نائل الصفقة تكوين الضمان النهائي (Cautionnement définitif) داخل أجل 20 يوماً من تاريخ تبليغ المصادقة على الصفقة، ويظل مرصداً لضمان التزاماته التعاقدية إلى حين التسليم النهائي (Réception définitive).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q77', 'exam_2024_mgmt', 77, 'المحاسبة العامة والاهتلاكات', 'معطيات المسألة المحاسباتية:
«قامت مؤسسة باقتناء عتاد في سنة 2019 مقابل 240.000 وحدة نقدية، وعند نهاية السنة أصبحت قيمته السوقية 190.000 وحدة نقدية مع تسجيل تآكل قدر بـ 48.000 وحدة نقدية. ثم قامت المؤسسة ببيعه سنة 2023 بمبلغ 70.000 وحدة نقدية مع تسجيل تآكل تراكمي قدر بـ 216.000 وحدة نقدية.»

القيمة الصافية للعتاد المثبتة في البيان الختامي لسنة 2019 هي:', false, '[{"id": "A", "text": "190.000 وحدة نقدية."}, {"id": "B", "text": "48.000 وحدة نقدية."}, {"id": "C", "text": "142.000 وحدة نقدية."}, {"id": "D", "text": "192.000 وحدة نقدية."}, {"id": "E", "text": "جميع الاختيارات الأخرى خاطئة."}]'::jsonb, ARRAY['D']::text[], 'القيمة الصافية المحاسبية للعتاد (Valeur Nette d''Amortissement - VNA) في نهاية سنة 2019:
VNA = تكلفة الاقتناء الأصلية (VO) - قسط الاهتلاك السنوي (Amortissement)
VNA = 240.000 - 48.000 = 192.000 وحدة نقدية.
(ملاحظة: القيمة السوقية 190.000 معطاة للتمويه ولا تؤثر على القيمة الصافية بعد الاهتلاك الخطي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q78', 'exam_2024_mgmt', 78, 'المحاسبة العامة ومعدل الاهتلاك', 'نسبة تآكل العتاد سنويا هي:', false, '[{"id": "A", "text": "15%"}, {"id": "B", "text": "25%"}, {"id": "C", "text": "20%"}, {"id": "D", "text": "32.5%"}, {"id": "E", "text": "جميع الاختيارات الأخرى خاطئة."}]'::jsonb, ARRAY['C']::text[], 'نسبة ومعدل الاهتلاك السنوي (Taux d''amortissement):
المعدل = (قسط التآكل السنوي ÷ تكلفة الاقتناء الأصلية) × 100
المعدل = (48.000 ÷ 240.000) × 100 = 20% سنوياً.
(تأكيد: خلال 4 سنوات ونصف من الاستعمال، بلغ التآكل التراكمي: 4.5 × 48.000 = 216.000 وحدة نقدية، وهو الرقم الوارد في المعطيات بدقة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q79', 'exam_2024_mgmt', 79, 'المحاسبة العامة ونتيجة التفويت', 'حققت المؤسسة من بيع العتاد سنة 2023 النتيجة المحددة في:', false, '[{"id": "A", "text": "+ 46.000"}, {"id": "B", "text": "- 46.000"}, {"id": "C", "text": "+ 24.000"}, {"id": "D", "text": "- 24.000"}, {"id": "E", "text": "جميع الاختيارات الأخرى خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حساب نتيجة تفويت وبيع العتاد (Résultat de cession):
1) القيمة الصافية المحاسبية عند تاريخ البيع (VNA) = القيمة الأصلية - مجموع الاهتلاكات التراكمية = 240.000 - 216.000 = 24.000 وحدة نقدية.
2) نتيجة البيع = ثمن البيع (Prix de cession) - VNA = 70.000 - 24.000 = + 46.000 وحدة نقدية (فائض قيمة وربح / Plus-value de cession).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('q80', 'exam_2024_mgmt', 80, 'التنظيم التربوي وإحداث المؤسسات', 'يمكن إحداث ثانويات تأهيلية نموذجية بموجب قرار:', false, '[{"id": "A", "text": "من رئاسة الحكومة."}, {"id": "B", "text": "من وزير التربية الوطنية والتعليم الأولي والرياضة."}, {"id": "C", "text": "من مدير الأكاديمية الجهوية للتربية والتكوين المعنية."}, {"id": "D", "text": "للسلطة الحكومية المكلفة بالتربية الوطنية بناء على اقتراح من مجلس الأكاديمية الجهوية للتربية والتكوين المعنية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 6 من المرسوم رقم 2.02.376 بمثابة النظام الأساسي الخاص بمؤسسات التربية والتعليم العمومي: ''يمكن إحداث ثانويات تأهيلية نموذجية بموجب قرار للسلطة الحكومية المكلفة بالتربية الوطنية بناء على اقتراح من مجلس الأكاديمية الجهوية للتربية والتكوين المعنية''.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;

-- أسئلة امتحان: امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2024) (60 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q1', 'exam_2024_tasks', 1, 'الاختصاصات والمهام الإدارية والتربوية', ': موضو حول الاختصاصات أوا المرتبطة بالوظيفة المطلوب شغلها', false, '[{"id": "A", "text": "يهدف مشروع مؤسسة الريادة إلى؛"}, {"id": "B", "text": "تحسين نوعية التعليم والتعلم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات والمتعلمين وتحفيزهم للابتكار والإبداع."}, {"id": "C", "text": "تطوير نوعية التعليم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات والمتعلمين وتحفيز هم للابتكار والإبداع"}, {"id": "D", "text": "تطوير نوعية التعلم، وذلك من خلال توفير بينة تعليمية مبتكرة وتحفيز المتعلمات والمتعلمين على الابتكار والإبداع. تطوير وتحسين نوعية التعليم والتعلم، وذلك من خلال توفير بينة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات"}, {"id": "E", "text": "المتعلمات والمتعلمين وتحفيز هم للابتكار والإبداع. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب البوابة الرسمية لمؤسسات الريادة، يهدف المشروع إلى "تحسين نوعية التعليم والتعلم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات والمتعلمين وتحفيزهم للابتكار والإبداع".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q2', 'exam_2024_tasks', 2, 'الاختصاصات والمهام الإدارية والتربوية', 'تتم الإشارة في التقرير السنوي لتسيير مؤسسه تعليميه إلى:', false, '[{"id": "A", "text": "المشاكل والإكراهات التي اعترضت التسيير طيلة الموسم الدراسي مع تضمينه الاقتراحات والتوصيات الكفيلة بتجاوز ها ثم"}, {"id": "B", "text": "التوقعات من الحاجيات حصرا. الإنجازات والمشاكل والإكراهات التي اعترضت التسيير طيلة الموسم الدراسي مع تضمينه الاقتراحات والتوصيات الكفيلة"}, {"id": "C", "text": "بتجاوز ها ثم التوقعات من الحاجيات. المشاكل التي اعترضت التسيير طيلة الموسم الدراسي مع تضمينه الاقتراحات والتوصيات الكفيلة بتجاوزها ثم التوقعات من"}, {"id": "D", "text": "الحاجيات فقط الإنجازات والمشاكل والإكراهات التي اعترضت التسيير طيلة الموسم الدراسي مع تضمينه الاقتراحات والتوصيات الكفيلة"}, {"id": "E", "text": "بتجاوزها حصرا. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'التقرير السنوي لتسيير المؤسسة يتضمن وجوباً الحصيلة الإيجابية (الإنجازات)، المشاكل والإكراهات، الاقتراحات والتوصيات لتجاوزها، ثم التوقعات من الحاجيات للموسم الموالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q3', 'exam_2024_tasks', 3, 'الاختصاصات والمهام الإدارية والتربوية', 'يعرف المؤشر بكونه قيمة:', false, '[{"id": "A", "text": "قابلة للملاحظة والقياس تستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "B", "text": "قابلة للملاحظة والقياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "C", "text": "غير"}, {"id": "D", "text": "قابلة للملاحظة وغير قابلة القياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "E", "text": "غير قابلة للملاحظة وقابلة القياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'المؤشر (Indicateur) في التدبير بالنتائج ومشروع المؤسسة هو قيمة (كمية أو نوعية) قابلة للملاحظة والقياس تستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q4', 'exam_2024_tasks', 4, 'الاختصاصات والمهام الإدارية والتربوية', 'يوجد، وجوبا، من بين أعضاء مكتب الجمعية الرياضية المدرسية بالمؤسسات التعليمية:', false, '[{"id": "A", "text": "كل أساتذة التربية البدنية والرياضية العاملين بالمؤسسة."}, {"id": "B", "text": "نصف أساتذة التربية البدنية والرياضية العاملين بالمؤسسة."}, {"id": "C", "text": "ثلثا أساتذة التربية البدنية والرياضية العاملين بالمؤسسة"}, {"id": "D", "text": "ثلث أساتذة التربية البدنية والرياضية العاملين بالمؤسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب القانون الأساسي النموذجي للجمعية الرياضية المدرسية، يتكون المكتب التنفيذي للجمعية وجوباً من رئيس المؤسسة (رئيساً) وكل أساتذة التربية البدنية والرياضية العاملين بالمؤسسة (بالإضافة إلى تلاميذ منتخبين ومسير المصالح المادية والمالية...).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q5', 'exam_2024_tasks', 5, 'الاختصاصات والمهام الإدارية والتربوية', 'كا', false, '[{"id": "A", "text": "موضو حول الاختصاصات أوا المرتبطة بالوظيفة المطلوب شغلها"}, {"id": "B", "text": "تعتبر الأكاديميات الجهوية للتربية والتكوين:"}, {"id": "C", "text": "مؤسسة عمومية. مؤسسة خارجية تابعة للمصلحة المركزية."}, {"id": "D", "text": "مصلحة خارجية مسيرة بصورة مستقلة."}, {"id": "E", "text": "مقاولة شبه عمومية. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 1 من القانون رقم 07.00، تعتبر الأكاديميات الجهوية للتربية والتكوين مؤسسات عمومية تتمتع بالشخصية المعنوية والاستقلال المالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q6', 'exam_2024_tasks', 6, 'الاختصاصات والمهام الإدارية والتربوية', 'تنحصر مهام مختص الاقتصاد والإدارة في مجال التوجيه في:', false, '[{"id": "A", "text": "وضع برمجة زمنية خاصة لحملات التوجيه والإعلام."}, {"id": "B", "text": "المشاركة فى عملية إعادة التوجيه."}, {"id": "C", "text": "السهر على تنظيم حراسة وحركية التلاميذ داخل المؤسسة العمومية."}, {"id": "D", "text": "الإسهام في تنظيم عملية الإعلام والتوجيه."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة. يقوم مسير المصالح المادية والمالية انطلاقا من اللوائح الإسمية باستخلاص الحقوق المثبتة بعد التأكد من مشروعيتها،"}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 23 من النظام الأساسي الجديد (المرسوم 2.24.140)، تنحصر مهام مختص الاقتصاد والإدارة في هذا المجال في الإسهام في تنظيم عملية الإعلام والتوجيه والأنشطة المرتبطة بها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q7', 'exam_2024_tasks', 7, 'الاختصاصات والمهام الإدارية والتربوية', 'ويستعمل لهذا الغرض:', false, '[{"id": "A", "text": "سجلات الإيصالات الملحقة وسجل المداخيل."}, {"id": "B", "text": "سجلات الإيصالات الملحقة ودفتر الصندوق."}, {"id": "C", "text": "سجلات الإيصالات الملحقة وسجل الإيصالات العام."}, {"id": "D", "text": "سجلات الإيصالات الملحقة وسجل الحساب البريدي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يستعمل مسير المصالح المادية والمالية لاستخلاص الحقوق المثبتة وتدوينها كمداخيل: سجلات الإيصالات الملحقة (أو العام) وسجل المداخيل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q8', 'exam_2024_tasks', 8, 'مشروع المؤسسة ومستجدات المنظومة', 'يقصد بالشمولية في مشروع المؤسسة المندمج:', false, '[{"id": "A", "text": "اعتماد أنشطة ملائمة وقابلة للإنجاز وقادرة على تحسين المؤشرات."}, {"id": "B", "text": "خطة جامعة لكل الأعمال التي تبرمجها المؤسسة وتنجز ها بتعاون مع شركائها."}, {"id": "C", "text": "التوثيق وإعداد تقارير وبطاقات تقنية حول مختلف مراحل المشروع بهدف تقاسم التجارب واستثمار ها."}, {"id": "D", "text": "مد جسور التعاون بين العاملين داخل المؤسسة وبين المؤسسة ومؤسسات الحوض المدرسي أو المنطقة التربوية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب دليل مشروع المؤسسة المندمج (المذكرة 087/21)، يقصد بـ الشمولية أن يشكل المشروع خطة جامعة لكل الأعمال التي تبرمجها المؤسسة وتنجزها بتعاون مع شركائها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q9', 'exam_2024_tasks', 9, 'مشروع المؤسسة ومستجدات المنظومة', 'يسعى مشروع المؤسسة المندمج إلى تحقيق:', false, '[{"id": "A", "text": "منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التربية والتكوين."}, {"id": "B", "text": "منطوق المرجعيات التشريعية والتربوية المؤطرة لنظام التربية والتكوين."}, {"id": "C", "text": "منطوق المرجعيات التشريعية والتنظيمية المؤطرة لنظام التربية والتكوين."}, {"id": "D", "text": "منطوق المرجعيات التنظيمية والتربوية المؤطرة لنظام التربية والتكوين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'نصت المذكرة 087/21 حرفياً على أن مشروع المؤسسة المندمج يسعى إلى تحقيق منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التربية والتكوين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q10', 'exam_2024_tasks', 10, 'الاختصاصات والمهام الإدارية والتربوية', 'دوره اكوبر 24لاع', false, '[{"id": "A", "text": "موضو حول الاختصاصات أو المرتبطة بالوظيفة المطلوب شغلها يتم ترتيب أولويات مشروع المؤسسة المندمج حسب الرافعات الأربع التالية:"}, {"id": "B", "text": "الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - التدبير والشراكة المشروع البيداغوجي."}, {"id": "C", "text": "الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - البنية التحتية والتجهيزات - التوجيه ودعم المشروع للمتعلم"}, {"id": "D", "text": "الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - الدعم التربوي - ريادة المؤسسة. الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - البنية التحتية والتجهيزات -"}, {"id": "E", "text": "التدبير والشراكة. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حددت المذكرة الوزارية 087/21 أولويات مشروع المؤسسة المندمج في الرافعات الأربع التالية: (1) الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات، (2) الارتقاء بالحياة المدرسية، (3) البنية التحتية والتجهيزات، (4) التدبير والشراكة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q11', 'exam_2024_tasks', 11, 'الاختصاصات والمهام الإدارية والتربوية', 'تعرف المؤسسة العمومية بكونها:', false, '[{"id": "A", "text": "جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بالاستقلال المالي فقط."}, {"id": "B", "text": "جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بالاستقلال الإداري فقط."}, {"id": "C", "text": "هذه الأشخاص بالاستقلال المالي والإداري. جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع"}, {"id": "D", "text": "جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع عدم تمتع هذه الأشخاص بالاستقلال المالي"}, {"id": "E", "text": "والإداري. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المؤسسة العمومية في القانون الإداري هي جهاز (مرفق عام) يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بـ الاستقلال المالي والإداري.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q12', 'exam_2024_tasks', 12, 'مشروع المؤسسة ومستجدات المنظومة', 'تنبني مرحلة "التعديل والتصحيح" لمشروع المؤسسة المندمج لمؤسسة تطيمية على؛', false, '[{"id": "A", "text": "تحديد رؤية المؤسسة وتحديد الأولويات التي سيتم الاشتغال عليها خلال المواسم الدراسية الثلاثة المقبلة."}, {"id": "B", "text": "تشخيص الوضعية الراهنة للمؤسسة قصد تحديد نقط القوة ونقط الضعف."}, {"id": "C", "text": "تجميع وتوطيد المعطيات المحصلة من تنفيذ المشروع قصد تطوير خطة عمل الموسم الدراسي الموالي من خلال تعديل خطة تنفيذ المشروع."}, {"id": "D", "text": "اقتراح مجموعة من أليات التتبع والضبط لتعديل وتصحيح مسار المشروع ضمانا لتحقيق أهدافه والتحقق من أثره في الواقع"}, {"id": "E", "text": "المدرسي. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'في منهجية مشروع المؤسسة المندمج (DEPART)، تنبني مرحلة "التعديل والتصحيح" (أو الانتقال) على تجميع وتوطيد المعطيات المحصلة من تنفيذ المشروع قصد تطوير خطة عمل الموسم الدراسي الموالي من خلال تعديل خطة تنفيذ المشروع. (بينما الاختيار D يخص مرحلة "التتبع والتقويم"، و B مرحلة "التشخيص"، و A مرحلة "التحديد/الأجرأة").')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q13', 'exam_2024_tasks', 13, 'الاختصاصات والمهام الإدارية والتربوية', 'يستعمل سجل الإيصالات العام لتدوين:', false, '[{"id": "A", "text": "مداخيل رسوم التسجيل حسب الفصول والشعب."}, {"id": "B", "text": "مبالغ مقتنيات تجهيزات المؤسسة. مداخيل الإيواء بالقسم الداخلي فقط"}, {"id": "C", "text": "حركية الحساب البريدي للمؤسسة من تحويل وسحب."}, {"id": "D", "text": "الاختيارات المقترحة خاطئة. ١٢("}]'::jsonb, ARRAY['E']::text[], 'يستعمل سجل الإيصالات العام (Carnet à souches général) لتدوين المداخيل النقدية أو الشيكات أو التحويلات التي لا تندرج في سجلات الإيصالات الملحقة (كالهبات، مداخيل الكراء، تسبيقات المنح، الموارد الاستثنائية...)، أما رسوم التسجيل حسب الفصول ومداخيل الإيواء فلها سجلات إيصالات ملحقة خاصة بها، وحركية السحب تسجل في سجل الحساب البريدي/الصندوق وليس في سجل الإيصالات. لذلك فجميع الخيارات غير دقيقة والجواب هو (E).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q14', 'exam_2024_tasks', 14, 'الاختصاصات والمهام الإدارية والتربوية', 'موضو حول الاختصاصات أوا المرتبطة بالوظيفة المطلوب شغلها', false, '[{"id": "A", "text": "تناط بمجلس القسم مهمة:"}, {"id": "B", "text": "اقتراح القرارات التأديبية في حق التلاميذ غير المنضبطين وفق مقتضيات النظام الداخلي للمؤسسة."}, {"id": "C", "text": "دراسة برنامج العمل السنوي الخاص بأنشطة المؤسسة وتتبع مراحل إنجازه."}, {"id": "D", "text": "تنظيم الأنشطة والمباريات والمسابقات الثقافية والرياضية والفنية."}, {"id": "E", "text": "دراسة وضعية تدريس المادة الدراسية وتحديد حاجياتها التربوية. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 29 من المرسوم 2.02.376، تناط بمجلس القسم مهمة اقتراح القرارات التأديبية في حق التلاميذ غير المنضبطين وفق مقتضيات النظام الداخلي للمؤسسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q15', 'exam_2024_tasks', 15, 'الاختصاصات والمهام الإدارية والتربوية', 'ينعقد مجلس تدبير المؤسسة بدعوة من رئيسه كلما دعت الضرورة إلى ذلك، وعلى الأقل:', false, '[{"id": "A", "text": "مرة في السنة."}, {"id": "B", "text": "مرتين في السنة."}, {"id": "C", "text": "ثلاث مرات في السنة."}, {"id": "D", "text": "أربع مرات في السنة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينعقد مجلس تدبير المؤسسة على الأقل مرتين في السنة (المادة 20 من المرسوم 2.02.376).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q16', 'exam_2024_tasks', 16, 'الاختصاصات والمهام الإدارية والتربوية', 'المجلس المكلف بوضع البرنامج السنوي للأنشطة الثقافية للمؤسسة التطيمية هو:', false, '[{"id": "A", "text": "المجلس التربوي."}, {"id": "B", "text": "المجلس التعليمي."}, {"id": "C", "text": "المجلس الانضباطي."}, {"id": "D", "text": "مجلس القسم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 23 من المرسوم 2.02.376، المجلس المكلف بوضع البرنامج السنوي للأنشطة الثقافية والرياضية والفنية والداعمة والموازية هو المجلس التربوي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q17', 'exam_2024_tasks', 17, 'مشروع المؤسسة ومستجدات المنظومة', 'ترتكز خارطة الطريق 2026-2022 على:', false, '[{"id": "A", "text": "08 التزامات."}, {"id": "B", "text": "09 التزامات."}, {"id": "C", "text": "IO التزامات."}, {"id": "D", "text": "ll التزاما"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'ترتكز خارطة الطريق (2022-2026) رسمياً على 12 التزاماً (موزعة على 3 محاور: التلميذ 5، الأستاذ 3، المؤسسة 4). وبما أن الرقم 12 غير مدرج في الخيارات (8، 9، 10، 11)، فالجواب الصحيح هو جميع الاختيارات المقترحة خاطئة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q18', 'exam_2024_tasks', 18, 'الاختصاصات والمهام الإدارية والتربوية', 'تندرج ضمن التدابير الأساسية للتخلص من التجهيزات المتلاشية:', false, '[{"id": "A", "text": "عزل التجهيزات المتلاشية المراد التخلص منها وجردها وتمييز أنواعها وأعدادها وتشكيل لجنة للإشراف على هذه العملية."}, {"id": "B", "text": "بيع التجهيزات المتلاشية لورشات إعادة تدويرها وانتفاع المؤسسة بمداخيلها."}, {"id": "C", "text": "التخلص من التجهيزات المتلاشية عن طريق رميها بعيدا عن المؤسسة."}, {"id": "D", "text": "تسليم التجهيزات المتلاشية إلى مؤسسات أخرى."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'مسطرة التخلص من التجهيزات المتلاشية (الإعفاء من الجرد) تقتضي عزلها وجردها وتمييز أنواعها وأعدادها وتشكيل لجنة معاينة لإعداد محضر بشأنها قبل تسليمها لإدارة أملاك الدولة، ولا يحق للمؤسسة بيعها مباشرة أو رميها أو تسليمها دون سلك المسطرة القانونية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q19', 'exam_2024_tasks', 19, 'الاختصاصات والمهام الإدارية والتربوية', 'يتحدد القسط السنوي الخاص بتأمين تلميذات وتلاميذ المسارات المهنية في العالم الحضري في:', false, '[{"id": "A", "text": "25 د."}, {"id": "B", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "C", "text": "يرتكز نظام المطعمة على؛"}, {"id": "D", "text": "خورجة تدبير خدمة التغذية بالمؤسسات التعليمية لفائدة الخدماتيين."}]'::jsonb, ARRAY['C']::text[], 'حسب المذكرة الوزارية رقم 057x20 المتعلقة باتفاقية الضمان المدرسي، يتحدد القسط السنوي الخاص بتأمين تلاميذ المسارات المهنية في 25 درهماً بالوسط الحضري (و20 درهماً بالوسط القروي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q20', 'exam_2024_tasks', 20, 'الصفقات العمومية', 'الزيادة في عدد الصفقات المعتمدة في تحضير وإعداد وتقديم الوجبات الغذائية بالأسام الداخلية والمطاعم المدرسية.', false, '[{"id": "A", "text": "الزيادة في عدد أيام الإطعام القصوى والرفع من أعداد المستفيدين."}, {"id": "B", "text": "مساهمة القطاع الخاص في إطار شراكة إلى جانب المؤسسات التعليمية في تدبير خدمة الإطعام والتغذية."}, {"id": "C", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "تنحصر عدد دورات الحسابات المالية لمؤسسات التعليم الثانوي، حسب التشريعات الجاري بها العمل، فيء"}]'::jsonb, ARRAY['A']::text[], 'يرتكز نظام المطعمة المدرسية الحديث (التدبير المفوض للمطاعم والداخليات) على خورجة (Externalisation) تدبير خدمة التغذية لفائدة متعهدين خواص (الخدماتيين).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q21', 'exam_2024_tasks', 21, 'الاختصاصات والمهام الإدارية والتربوية', '05 دورات.', false, '[{"id": "A", "text": "6() دورات."}, {"id": "B", "text": "07 دورات."}, {"id": "C", "text": "08 دورات."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'حصرت المذكرة الوزارية رقم 25 (بتاريخ 4 مارس 1996) عدد دورات الحسابات المالية لمؤسسات التعليم الثانوي في ثلاث (03) دورات سنوياً. وبما أن الرقم 3 غير موجود في الاختيارات، فجميع الاختيارات المقترحة خاطئة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q22', 'exam_2024_tasks', 22, 'الاختصاصات والمهام الإدارية والتربوية', 'يتعلق مبدأ القيد المزدوج (double partie la de Principe) بتسجيل العمليةب', false, '[{"id": "A", "text": "على الأقل بحسابين ويقيد في الجانب المدين لأحدهما مبلغ يفوق الذي يقيد في الجانب الدائن من الحساب الأخر."}, {"id": "B", "text": "على الأقل بحسابين ويقيد في الجانب المدين لأحدهما نفس المبلغ الذي يقيد في الجانب الدائن من الحساب الآخر."}, {"id": "C", "text": "على الأقل بحسابين ويقيد في الجانب المدين لأحدهما مبلغ يقل عن الذي يقيد في الجانب الدائن من الحساب الآخر."}, {"id": "D", "text": "على الأقل بحسابين ويقيد في الجانب المدين لأحدهما مبلغ دون الذي يقيد في الجانب الدائن من الحساب الأخر."}]'::jsonb, ARRAY['B']::text[], 'يقوم مبدأ القيد المزدوج (Partie double) في المحاسبة العامة على تسجيل كل عملية على الأقل بحسابين، حيث يقيد في الجانب المدين لأحدهما نفس المبلغ الذي يقيد في الجانب الدائن من الحساب الآخر.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q23', 'exam_2024_tasks', 23, 'الاختصاصات والمهام الإدارية والتربوية', 'جميع الاختيارات المقترحة خاطئة.', false, '[{"id": "A", "text": "يجب وضع جرد يتضمن قيمة عناصر أصول وخصوم المؤسسة على الأقل؛"}, {"id": "B", "text": "مرتين عند نهاية منتصف كل أسدس."}, {"id": "C", "text": "مرة واحدة عند منتصف نهاية السنة الحسابية."}, {"id": "D", "text": "مرتين عند نهاية السنة الحسابية."}]'::jsonb, ARRAY['D']::text[], 'طبقاً لقانون المحاسبة (9.88)، يجب وضع جرد يتضمن قيمة عناصر أصول وخصوم المؤسسة على الأقل مرة واحدة عند نهاية السنة المحاسبية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q24', 'exam_2024_tasks', 24, 'الاختصاصات والمهام الإدارية والتربوية', 'مرة واحدة عند نهاية السنة الحسادية.', false, '[{"id": "A", "text": "الاختيارات المقترحة خاطئة."}, {"id": "B", "text": "تتضمن قائمة أرصدة المؤسسة (gestion de soldes des Etat): مكونات النتيجة الصافية من الضرائب ومكونات التمويل الذاتي للمؤسسة."}, {"id": "C", "text": "مكونات النتيجة قبل خصم الضرائب ومكونات الديون الخارجية للمؤسسة."}, {"id": "D", "text": "مكونات النتيجة الصافية من الضرائب ومكونات الديون الخارجية للمؤسسة. مكونات النتيجة قبل خصم الضرائب ومكونات التمويل الذاتي للمؤسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطنة. د2("}]'::jsonb, ARRAY['A']::text[], 'تتضمن قائمة أرصدة التسيير (ESG) جدولين أساسيين: جدول تكوين النتائج (مكونات النتيجة الصافية من الضرائب) وجدول حساب قدرة التمويل الذاتي (مكونات التمويل الذاتي للمؤسسة CAF).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q25', 'exam_2024_tasks', 25, 'الاختصاصات والمهام الإدارية والتربوية', 'والإدارة', false, '[{"id": "A", "text": "الصفحه حره احتوبر 2024"}, {"id": "B", "text": "يول الاختصاصات أو المها المرتبطة بالوظيفة المطلوب شغلها يبقى شكل تقديم القوانم التركيبية وطريقة التقويم المتبعة"}, {"id": "C", "text": "من سنة حسابية إلى أخرى ثابتا. وفي حالة حدوث تغييرات، يجب جدول التمويل."}, {"id": "D", "text": "قائمة المعلومات التكميلية. حساب العائدات والنفقات."}, {"id": "E", "text": "قائمة أرصدة المؤسسة جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المبادئ المحاسبية السبعة (مبدأ ثبات الطرق المحاسبية - Principe de permanence des méthodes)، يجب أن يبقى شكل تقديم القوائم التركيبية وطريقة التقويم ثابتاً، وفي حالة حدوث تغييرات استثنائية يجب وصفها وتبريرها في قائمة المعلومات التكميلية (ETIC).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q26', 'exam_2024_tasks', 26, 'المحاسبة العمومية والمالية', 'يحتفظ بالوثائق المحاسبية والمستندات الإثباتية طوال؛', false, '[{"id": "A", "text": "خمس سنوات."}, {"id": "B", "text": "ثمان سنوات."}, {"id": "C", "text": "عشر سنوات."}, {"id": "D", "text": "اثنتا"}, {"id": "E", "text": "عشرة سنة. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'طبقاً للمادة 22 من القانون رقم 9.88 المتعلق بالقواعد المحاسبية، وكذا قواعد المحاسبة العمومية، يحتفظ بالوثائق المحاسبية والمستندات الإثباتية طوال عشر (10) سنوات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q27', 'exam_2024_tasks', 27, 'الاختصاصات والمهام الإدارية والتربوية', 'يتحدد القسط السنوي الخاص بتأمين تلميذات وتلاميذ المسارات المهنية في العالم القروي في:', false, '[{"id": "A", "text": "20 د."}, {"id": "B", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المذكرة 057x20، يتحدد القسط السنوي الخاص بتأمين تلاميذ المسارات المهنية في العالم القروي في 20 درهماً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q28', 'exam_2024_tasks', 28, 'الاختصاصات والمهام الإدارية والتربوية', 'يعرف الإحصاء بي', false, '[{"id": "A", "text": "مجموعة من المعطيات والأرقام المتعلقة بظاهرة تربوية."}, {"id": "B", "text": "مجموعة من الأرقام المتعلقة بأحد العلوم الاجتماعية."}, {"id": "C", "text": "مجموعة من المعطيات المتعلقة بالمنظومة التربوية."}, {"id": "D", "text": "علم يهتم بدارسة المعطيات المتعلقة بظاهرة معينة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة. في استثمار لنتائج دراسة للعلاقة بين نقط المراقبة المستمرة للغة الفرنسية ونقط الامتحان الجهوي الموحد، لاحظ حارس"}]'::jsonb, ARRAY['D']::text[], 'الإحصاء بمعناه العلمي العام هو علم يهتم بدراسة المعطيات المتعلقة بظاهرة معينة (جمعاً، وتنظيماً، وتحليلاً، وتفسيراً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q29', 'exam_2024_tasks', 29, 'الاختصاصات والمهام الإدارية والتربوية', 'عام أن معامل الارتباط بينهما هو 0,82. مما يني أن هناك؛', false, '[{"id": "A", "text": "ارتباط ضعيف وإيجابي بين نقط المراقبة المستمرة ونقط الامتحان الجهوي الموحد لمادة الفرنسية."}, {"id": "B", "text": "ارتباط قوي وإيجابي بين نقط المراقبة المستمرة ونقط الامتحان الجهوي الموحد لمادة الفرنسية."}, {"id": "C", "text": "ارتباط قوي وسلبي بين نقط المراقبة المستمرة ونقط الامتحان الجهوي الموحد لمادة الفرنسية."}, {"id": "D", "text": "ارتباط ضعيف وسلبي بين نقط المراقبة المستمرة ونقط الامتحان الجهوي الموحد لمادة الفرنسية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة. 29ل)"}]'::jsonb, ARRAY['B']::text[], 'معامل الارتباط (r = +0,82) هو عدد موجب وقريب جداً من +1، مما يدل إحصائياً على وجود ارتباط قوي وإيجابي بين نقط المراقبة المستمرة ونقط الامتحان الجهوي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q30', 'exam_2024_tasks', 30, 'الاختصاصات والمهام الإدارية والتربوية', 'الصفحه', false, '[{"id": "A", "text": "لمهن التربيه والتكوين - مريى"}, {"id": "B", "text": "حول الا -"}, {"id": "C", "text": "وا المرتبطة بالوظيفة المطلوب شغلها"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المدى (L''étendue) في الإحصاء هو الفرق بين أكبر وأصغر قيمة في العينة المدروسة (E = X_{max} - X_{min}).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q31', 'exam_2024_tasks', 31, 'الاختصاصات والمهام الإدارية والتربوية', 'يعرف المدى لسلسلة إحصائية بكونه الفرق بين؛', false, '[{"id": "A", "text": "المعدل الحسابي والوسيط للعينة المدروسة."}, {"id": "B", "text": "المعدل الحسابي وأصغر قيمة للعينة المدروس"}, {"id": "C", "text": "أكبر وأصغر قيمة في العينة المدروسة"}, {"id": "D", "text": "أكبر قيمة والمعدل الحسابي للعينة المدروسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة. 30ل)"}]'::jsonb, ARRAY['A']::text[], 'تستهدف حملات الإعلام والتوجيه تلاميذ المؤسسة وأولياء أمورهم معاً لمواكبتهم في اختياراتهم الدراسية والمهنية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q32', 'exam_2024_tasks', 32, 'الاختصاصات والمهام الإدارية والتربوية', 'يقوم مختص الاقتصاد والإدارة بالإسهام في تنظيم حملات التوجيه والإعلام لفائدة:', false, '[{"id": "A", "text": "تلاميذ المؤسسة وأوليائهم."}, {"id": "B", "text": "أولياء تلاميذ المؤسسة فقط"}, {"id": "C", "text": "المتعلمين فقط"}, {"id": "D", "text": "تلاميذ روافد المؤسسة التي يشتغل بها."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الجواب الصحيح هو (B) - التعليل (من الجدول): مجموع تلاميذ الثانية باك = 109، والمجموع العام لتلاميذ المؤسسة = 436. \text{النسبة} = \frac{109}{436} \times 100 = \mathbf{25\%}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q33', 'exam_2024_tasks', 33, 'الاختصاصات والمهام الإدارية والتربوية', 'بعد تسجيل تلاميد مؤسسه تعليميه، تم تجميع المعطيات الخامه في الجدول الإحصائي الآتي؛', false, '[{"id": "A", "text": "المجموع الثانية باك أولى باك"}, {"id": "B", "text": "المستوى جذع مشترك الجنس"}, {"id": "C", "text": "نسبة تلاميذ الثانية باك من مجموع تلاميذ المؤسسة هي؛ %35. %25. جميع الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "66 هو عدد تلاميذ المؤسسة؛ الذكور والذين يدرسون بالسنة الثانية باك. إناث واللواتي يدرسن بالسنة الثانية باك."}, {"id": "E", "text": "الذكور والذين يدرسون بالجذع المشترك. إناث واللواتي يدرسن بالجذع المشترك. جميع الاختيارات المقترحة خاطئة. 2 ذد)"}]'::jsonb, ARRAY['C']::text[], 'الجواب الصحيح هو (C) - التعليل (من الجدول): الرقم 66 يقع في تقاطع سطر "ذكور" مع عمود "جذع مشترك"، أي أنه يمثل تلاميذ المؤسسة الذكور والذين يدرسون بالجذع المشترك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q34', 'exam_2024_tasks', 34, 'الاختصاصات والمهام الإدارية والتربوية', 'الاكتصاصات وا المرتبطة بالوظيفة المطلوب شغلها', false, '[{"id": "A", "text": "ا ول من السن الدراسيه 2023/2022، قام الحارس العام لإحدى المؤسسات التعليميه بدراسه إحصانية همت م: بعض الأقسام الدراسية بالمؤسسة، بحسب متغير (Variable) نقطة مادة الفلسفة. وتوصل إلى النتائج الآتية:"}, {"id": "B", "text": "المجمو 15 20 10—15"}, {"id": "C", "text": "5— 10 5-0"}, {"id": "D", "text": "عنة من المتغير النقطة التردد"}]'::jsonb, ARRAY['B']::text[], 'الجواب الصحيح هو (B) - التعليل (المتوسط الحسابي): \bar{x} = \frac{(20 \times 2,5) + (29 \times 7,5) + (10 \times 12,5) + (1 \times 17,5)}{60} = \frac{50 + 217,5 + 125 + 17,5}{60} = \frac{410}{60} = \mathbf{6,83}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q35', 'exam_2024_tasks', 35, 'الاختصاصات والمهام الإدارية والتربوية', 'المتوسط الحسابي (arithmétique moyenne (a) لمتغير نقطة الفلسفة هو:', false, '[{"id": "A", "text": "E جميع الاختيارات المقترحة خاطئة."}, {"id": "B", "text": "الوسيط (médiane (I.a) لمتغير نقطة الفلسفة هو:"}, {"id": "C", "text": "5 3 J)"}, {"id": "D", "text": "الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'الجواب الصحيح هو (A) - التعليل (الوسيط): رتبة الوسيط هي \frac{N}{2} = \frac{60}{2} = 30. الفئة الوسيطية هي [5 - 10[ (حيث N_2 = 49 \ge 30). Me = 5 + \left( \frac{30 - 20}{29} \right) \times 5 = 5 + \frac{50}{29} = 5 + 1,724 = \mathbf{6,72}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q36', 'exam_2024_tasks', 36, 'الاختصاصات والمهام الإدارية والتربوية', 'المنوال (mode Le) لمتغير نقطة الفلسفة هو:', false, '[{"id": "A", "text": "6,6OD."}, {"id": "B", "text": "الاختيارات المقترحة خاطئة."}, {"id": "C", "text": "قامت مؤسسه بإيداع مبلغ O)(O 2S وحدة نقديه لدى وكاله بنكيه بنسبة فائدة سنويه عاديه 90/0 ثابته لمدة ثلاث سنوات."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الجواب الصحيح هو (B) - التعليل (المنوال): الفئة المنوالية هي صاحبة أكبر تردد (n_2 = 29)، أي الفئة [5 - 10[. - \Delta_1 = 29 - 20 = 9 - \Delta_2 = 29 - 10 = 19 Mo = 5 + \left( \frac{9}{9 + 19} \right) \times 5 = 5 + \frac{45}{28} = 5 + 1,607 = \mathbf{6,60} إذن الجواب الصحيح لـ Q36 هو (D): 6,60. معطيات تمرين الفائدة البسيطة (Q37 - Q38): المبلغ C = 25\,000 | سعر الفائدة العادية (البسيطة) t = 9\% | المدة n = 3 سنوات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q37', 'exam_2024_tasks', 37, 'الاختصاصات والمهام الإدارية والتربوية', 'قيمة الفائدة للسنة الأولى هي:', false, '[{"id": "A", "text": "37ر)"}, {"id": "B", "text": "A 500 2 وحدة نقديه. B 250 2 وحدة نقدية."}, {"id": "C", "text": "750 6 وحدة نقدية. ()()5 4 وحدة نقدية."}, {"id": "D", "text": "الاختيارات المقترحة خاطنة. جم"}]'::jsonb, ARRAY['B']::text[], 'فائدة السنة الأولى = 25\,000 \times 9\% \times 1 = \mathbf{2\,250} وحدة نقدية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q38', 'exam_2024_tasks', 38, 'الاختصاصات والمهام الإدارية والتربوية', 'القيمة المحصل عليها لفائدة المؤسسة عند نهاية السنة الثالثة هي:', false, '[{"id": "A", "text": "750 3l وحدة نقدية."}, {"id": "B", "text": "650 31 وحدة نقدية. 550 31 وحدة نقدية."}, {"id": "C", "text": "460 3l وحدة نقدية. الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "جم 38 د)"}]'::jsonb, ARRAY['A']::text[], 'القيمة المحصل عليها عند نهاية السنة الثالثة (V_A = C + I): - مجموع الفوائد لـ 3 سنوات = 2\,250 \times 3 = 6\,750. - القيمة المحصل عليها = 25\,000 + 6\,750 = \mathbf{31\,750} وحدة نقدية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q39', 'exam_2024_tasks', 39, 'الاختصاصات والمهام الإدارية والتربوية', 'رلإدارة', false, '[{"id": "A", "text": "الامتصاصات أو المرتبطة بالوظيفة المطلوب شلها"}, {"id": "B", "text": "عرل"}, {"id": "C", "text": "على سجل الاستهلاك اليومي:"}, {"id": "D", "text": "مداخيل أو مخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظالة المستهلكة."}, {"id": "E", "text": "يميع مخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة المستهلكة حصرا."}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q40', 'exam_2024_tasks', 40, 'الاختصاصات والمهام الإدارية والتربوية', 'بميع مداخيل ومخرجات القسم الداخلي المتطقة بالمواد الغذائية ومواد النظافة المستهلكة.', false, '[{"id": "A", "text": "جميع مداخيل القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة المستهلكة فقط"}, {"id": "B", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "C", "text": "تسمى الوثيقة التي تسجل فيها جميع مداخيل المؤسسة المتعلقة بحساب الخارج عن الميزانية وحساب ذخالر التلاميذ"}, {"id": "D", "text": "الداخليين وحساب الرصيد الاحتياطي؛"}, {"id": "E", "text": "سجل الجرد."}]'::jsonb, ARRAY['D']::text[], 'الوثيقة الشاملة التي تتجمع وتصب فيها جميع مداخيل المؤسسة (الخارج عن الميزانية، الذخائر، الرصيد الاحتياطي، الداخلية) هي سجل الإيصالات العام (Registre à souches général) أو سجل المداخيل، وبما أن الخيارات تتضمن سجل الإيصالات العام فهو الأصح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q41', 'exam_2024_tasks', 41, 'الاختصاصات والمهام الإدارية والتربوية', 'سجل الاستهلاك اليومي.', false, '[{"id": "A", "text": "سجل مراقبة الداخلية."}, {"id": "B", "text": "سجل الإيصالات العام."}, {"id": "C", "text": "الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "تتحدد مداخيل كراء الكتب المقررة بإحدى مستويات التعليم الثانوي الإعدادي فيء"}, {"id": "E", "text": "()(), 02 د للكتاب الواحد و()(),()2 د للمجموعة الكاملة."}]'::jsonb, ARRAY['B']::text[], 'تتحدد مداخيل كراء الكتب المقررة بالتعليم الثانوي الإعدادي في 03,00 دراهم للكتاب الواحد و 30,00 درهماً للمجموعة الكاملة (مقابل 5 دراهم للكتاب و50 درهماً للمجموعة بالتأهيلي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q42', 'exam_2024_tasks', 42, 'الاختصاصات والمهام الإدارية والتربوية', '0(), O3 د للكتاب الواحد و()30,0 د للمجموعة الكاملة.', false, '[{"id": "A", "text": "0(), 04 د للكتاب الواحد و()0,()4 د للمجموعة الكاملة."}, {"id": "B", "text": "05,00 د للكتاب الواحد و()50,0 د للمجموعة الكاملة."}, {"id": "C", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "حددت التشريعات الجاري بها العمل أقساط التأمين المدرسي في الوسط القروي في مبلغ:"}, {"id": "E", "text": "5 د"}]'::jsonb, ARRAY['C']::text[], 'حددت اتفاقية الضمان المدرسي أقساط التأمين العادي في 8 دراهم بالوسط القروي (و12 درهماً بالوسط الحضري).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q43', 'exam_2024_tasks', 43, 'الاختصاصات والمهام الإدارية والتربوية', '6 د.', false, '[{"id": "A", "text": "8 د."}, {"id": "B", "text": "الاختيارات المقترحة خاطئة."}, {"id": "C", "text": "حددت حصة الجامعة الملكية المغربية للرياضة المدرسية، من مجموع انخراطات التلاميذ في الجمعية الرياضية المدرسية،"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}, {"id": "E", "text": "43ل)"}]'::jsonb, ARRAY['B']::text[], 'حسب الدورية المنظمة لتوزيع واجبات الانخراط في الجمعية الرياضية المدرسية، تحدد حصة الجامعة الملكية المغربية للرياضة المدرسية في 10% (بينما تبقى 65% للجمعية الرياضية بالمؤسسة، و10% للفرع الإقليمي، و10% للفرع الجهوي، و5% لمديرية الارتقاء بالرياضة المدرسية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q44', 'exam_2024_tasks', 44, 'الاختصاصات والمهام الإدارية والتربوية', 'الصفحة', false, '[{"id": "A", "text": "ll"}, {"id": "B", "text": "التربيه والتكوين - مسلك"}, {"id": "C", "text": "الاختصاصات أو المها المرتبطة بالوظيفة المطلوب شغلها"}, {"id": "D", "text": "حول"}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q45', 'exam_2024_tasks', 45, 'الاختصاصات والمهام الإدارية والتربوية', 'يقصد بالإتلافاتو', false, '[{"id": "A", "text": "لعق ممتلكات المؤسسة الثابتة أو المنقولة من أضرار أو خسائر بسبب عوامل خارجية ى لعق ممتلكات المؤسسة الثابتة والمنقولة من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة."}, {"id": "B", "text": "ا لحق ممتلكات المؤسسة المنقولة حصرا من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤمسة فرادى أو جماعة. ما يلحق ممتلكات المؤسسة الثابتة فقط ، أ."}, {"id": "C", "text": "م صرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة. جميع الاختيارات المقترحة خاطئة. من جل تدبير الحسابات الجارية للمؤسسة التعليمية، يتعين على كل مؤسسة أن تتوفر على حساب بريدي جاري يكون"}, {"id": "D", "text": "مسير المصالح المادية والمالية. رئيس المؤسسة."}, {"id": "E", "text": "رئيس المؤسسة ومسير المصالح المادية والمالية معا. رئيس المؤسسة وأمين مال جمعية دعم مدرسة النجاح جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يفتح الحساب البريدي الجاري (CCP) للمؤسسة التعليمية تحت صفة المحاسب/المكلف بالأداء وهو مسير المصالح المادية والمالية (بينما الحساب البنكي لجمعية دعم مدرسة النجاح يفتح باسم الرئيس وأمين المال).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q46', 'exam_2024_tasks', 46, 'الاختصاصات والمهام الإدارية والتربوية', 'يتولى مسير المصالح المادية والمالية مهمة؛', false, '[{"id": "A", "text": "اقتناء التجهيزات والأدوات الخاصة بالجمعية الرياضية المدرسية للمؤسسة التعليمية."}, {"id": "B", "text": "اقتناء وتدبير التجهيزات والأدوات الخاصة بالجمعية الرياضية المدرسية للمؤسسة التعليمية."}, {"id": "C", "text": "اقتناء وجرد التجهيزات والأدوات الخاصة بالجمعية الرياضية المدرسية للمؤسسة التعليمية."}, {"id": "D", "text": "جرد التجهيزات والأدوات الخاصة بالجمعية الرياضية المدرسية للمؤسسة التعليمية."}, {"id": "E", "text": "الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'بصفته أمين مال الجمعية الرياضية المدرسية والمسؤول عن المحاسبة المادية بالمؤسسة، يتولى مسير المصالح المادية والمالية مهمة اقتناء وجرد التجهيزات والأدوات الخاصة بالجمعية الرياضية (أما تدبيرها واستعمالها التقني فيعود لأساتذة التربية البدنية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q47', 'exam_2024_tasks', 47, 'الاختصاصات والمهام الإدارية والتربوية', 'يندرج ضمن اختصاصات المجلس التعليمي:', false, '[{"id": "A", "text": "تحليل واستغلال نتائج التحصيل الدراسي قصد تحديد وتنظيم عمليات التوجيه."}, {"id": "B", "text": "اقتراح النظام الداخلي للمؤسسة."}, {"id": "C", "text": "مناقشة المشاكل والمعوقات التي تعترض تطبيق المناهج الدراسية."}, {"id": "D", "text": "إعداد البرنامج السنوي للعمل التربوي للمؤسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 26 من المرسوم 2.02.376، يندرج ضمن اختصاصات المجلس التعليمي مناقشة المشاكل والمعوقات التي تعترض تطبيق المناهج الدراسية وتقديم اقتراحات لتجاوزها. (بينما الاختيار A و D للمجلس التربوي، و B لمجلس التدبير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q48', 'exam_2024_tasks', 48, 'الاختصاصات والمهام الإدارية والتربوية', 'يرتكز العمل التربوي بمرحلة توطيد المشروع١ للمتعلم بسلك التعليم الثانوي التأهيلي، على تمكين المتعلم من:', false, '[{"id": "A", "text": "فة المتعلم بمختلف برامج التشغيل المتوخرة."}, {"id": "B", "text": "تحميق معد"}, {"id": "C", "text": "التعرف على مقومات الاقتصاد الوطني وآفاق الشغل الواعدة. التعرف على خصائص الذات وتنمية الكفايات المتعلقة بالاختيار واتخاذ القرار."}, {"id": "D", "text": "استكشاف بعض مكونات المحيط الدراسي والتكويني المباشر."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطنة. الالتزام هو كل تصرف يضع المؤسسة التعليمية في وضعية مدينة وتصبح بذلك أية نفقة تم الالتزام بها إلزامية وواجبة"}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 10 من القرار الوزاري 062.19، يرتكز العمل التربوي بمرحلة توطيد وتدقيق المشروع الشخصي للمتعلم (سلك الثانوي التأهيلي) على تمكين المتعلم من تعميق معرفته بمختلف الفرص وبرامج التشغيل والتكوين المتوفرة. (بينما الاختيار C و B يخصان مرحلة البناء بالإعدادي، و D يخص الابتدائي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q49', 'exam_2024_tasks', 49, 'الاختصاصات والمهام الإدارية والتربوية', 'الأداء، وهو من اختصاص؛', false, '[{"id": "A", "text": "رئيس المؤسسة."}, {"id": "B", "text": "المدير الإقليمي. مسير المصالح المادية والمالية"}, {"id": "C", "text": "رئيس جمعية الأباء."}, {"id": "D", "text": "الاختيارات المقترحة خاطنة. رد"}]'::jsonb, ARRAY['A']::text[], 'الالتزام بالنفقة (Engagement) هو عمل إداري يندرج حصراً ضمن اختصاص الآمر بالصرف للمؤسسة وهو رئيس المؤسسة (المدير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q50', 'exam_2024_tasks', 50, 'الاختصاصات والمهام الإدارية والتربوية', ']2', false, '[{"id": "A", "text": "اسمرببصه بالوظيلة المطلوب شغلها"}, {"id": "B", "text": "ن وو"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q51', 'exam_2024_tasks', 51, 'الاختصاصات والمهام الإدارية والتربوية', 'حددت الأركان اللازمة لصحة الالتزامات في:', false, '[{"id": "A", "text": "ايالية للالتزام - تعبير صحيح عن الإرادة - شيء محقق يصلح لأن يكون محلا للالتزام - سبب غير مشروع للالتزام"}, {"id": "B", "text": "الأحلية للالتزام - وعد بالالتزام - شيء محقق يصلح لأن يكون محلا للالتزام - سبب مشروع للالتزام"}, {"id": "C", "text": "الأهلية للالتزام - وعد بالالتزام - شيء غير معين يصلح لأن يكون محلا للالتزام - سس"}, {"id": "D", "text": "مشروع للالتزام"}, {"id": "E", "text": "الأهلية للالتزام - تعبير صحيح عن الإرادة - شيء محقق يصلح لأن يكون محلا للالتزام - سبب مشروع للالتزام جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 153 من ق.ل.ع: التضامن بين الدائنين لا يفترض، ويلزم أن ينشأ من العقد أو يتقرر بمقتضى القانون أو أن يكون النتيجة الحتمية لطبيعة المعاملة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q52', 'exam_2024_tasks', 52, 'الاختصاصات والمهام الإدارية والتربوية', 'التضامن بين الدائنين:', false, '[{"id": "A", "text": "يفترض، ويلزم أن ينشأ من العقد أو يتقرر بمقتضى القانون أو أن يكون النتيجة الحتمية لطبيعة المعاملة."}, {"id": "B", "text": "يفترض، ولا يلزم أن ينشأ من العقد أو يتقرر بمقتضى القانون أو أن يكون النتيجة الحتمية لطبيعة المعاملة."}, {"id": "C", "text": "لا يفترض، ويلزم أن ينشأ من العقد أو يتقرر بمقتضى القانون أو أن يكون النتيجة الحتمية لطبيعة المعاملة."}, {"id": "D", "text": "لا يفترض، ولا يلزم أن ينشأ من العقد أو يتقرر بمقتضى القانون أو أن يكون النتيجة الحتمية لطبيعة المعاملة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 182 من ق.ل.ع: إذا تحمل عدة أشخاص التزاماً غير قابل للانقسام، التزم كل منهم بالدين بتمامه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q53', 'exam_2024_tasks', 53, 'الاختصاصات والمهام الإدارية والتربوية', 'إذا تحمل عدة أشخاص التزاما غير قابل للانقسام، التزم كل منهم:', false, '[{"id": "A", "text": "بالدين بتمامه. بالدين مقسما بينهم بالتساوي."}, {"id": "B", "text": "الدين حسب الأنصبة. بجزء من الدين دون احترام الأنصبة."}, {"id": "C", "text": "جميع الاختيارات المقترحة خاطئة. يجب على المدين أن ينفذ الالتزام بنفسه إذاء"}, {"id": "D", "text": "اشترط صراحة أن يقوم بأداء الالتزام نائب عنه أو إذا نتج هذا الاستثناء ضمنيا من طبيعة الالتزام أو من الظروف. اشترط صراحة أن يقوم بأداء الالتزام نائب عنه وإذا نتج هذا الاستثناء ضمنيا من طبيعة الالتزام ومن الظروف."}, {"id": "E", "text": "اشترط صراحة أن يقوم شخصيا بأداء الالتزام أو إذا نتج هذا الاستثناء ضمنيا من طبيعة الالتزام أو من الظروف. اشترط صراحة أن يقوم شخصيا بأداء الالتزام وإذا نتج هذا الاستثناء ضمنيا من طبيعة الالتزام ومن الظروف. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 236 من ق.ل.ع: يجب على المدين أن ينفذ الالتزام بنفسه إذا اشترط صراحة أن يقوم شخصياً بأداء الالتزام أو إذا نتج هذا الاستثناء ضمنياً من طبيعة الالتزام أو من الظروف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q54', 'exam_2024_tasks', 54, 'الاختصاصات والمهام الإدارية والتربوية', 'تسقط المطالبة بالتعويض، إذا أثبت المدين أن عدم الوفاء بالالتزام أو التأخير فيه ناشئ عن؛', false, '[{"id": "A", "text": "قوة قاهرة أو حادث فجائي أو مطل المدين."}, {"id": "B", "text": "قوة قاهرة أو حادث فجائي أو مطل الدائن."}, {"id": "C", "text": "قوة قاهرة أو حادث فجائي أو مطل كل من الدائن والمدين."}, {"id": "D", "text": "قوة قاهرة أو مطل كل من الدائن والمدين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 268 من ق.ل.ع: لا محل لأي تعويض إذا أثبت المدين أن عدم الوفاء بالالتزام أو التأخير فيه ناشئ عن سبب لا يمكن أن يعزى إليه، كـ قوة قاهرة أو حادث فجائي أو مطل الدائن.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q55', 'exam_2024_tasks', 55, 'الاختصاصات والمهام الإدارية والتربوية', 'مبدأ الاستحقاق خلال عملية التوجيه على:', false, '[{"id": "A", "text": "يقوم"}, {"id": "B", "text": "اتماد النتائج الدراسية للتلاميذ فقط بل يتعين الاستناد إلى جميع المعطيات الأخرى المستخرجة من منظومة مسار."}, {"id": "C", "text": "ثماد النتائج الدراسية للتلاميذ فقط وعدم الاستناد إلى جميع المعطيات الأخرى المستخرجة من منظومة مسار."}, {"id": "D", "text": "عده اعتماد النتائح لد اسحة لتلامذ فقط م الاستناد حص با ال المعطات النه عة المسئخ حة م\" مدظه مة مسا"}, {"id": "E", "text": "اعتماد النتائج الد اسسة للتلامذ فقط م الاستناد ال نعض، المعطنات الأخره، المستخ حة من منظه مة مساد."}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q56', 'exam_2024_tasks', 56, 'الاختصاصات والمهام الإدارية والتربوية', 'يقصد بمرافق للدولة مسيرة بصورة مستقلة، مصالح الدولة:', false, '[{"id": "A", "text": "المتمتعة بالشخصية الاعتبارية والتي لا تغطي مواردها الذاتية نفقاتها المقتطعة من الاعتمادات المقيدة في الميزانية العامة."}, {"id": "B", "text": "المتمتعة بالشخصية الاعتبارية والتي تغطي بموارد ذاتية بعض نفقاتها غير المقتطعة من الاعتمادات المقيدة في الميزانية العامة."}, {"id": "C", "text": "غير المتمتعة بالشخصية الاعتبارية والتي لا تغطي مواردها الذاتية نفقاتها المقتطعة من الاعتمادات المقيدة في الميزانية"}, {"id": "D", "text": "العامة. غير المتمتعة بالشخصية الاعتبارية والتي تغطي بموارد ذاتية بعض نفقاتها غير المقتطعة من الاعتمادات المقيدة في الميزانية"}, {"id": "E", "text": "العامة. جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 21 من القانون التنظيمي لقانون المالية 130.13، مرافق الدولة المسيرة بصورة مستقلة (SEGMA) هي مصالح الدولة غير المتمتعة بالشخصية الاعتبارية، والتي تغطي بموارد ذاتية بعض نفقاتها غير المقتطعة من الاعتمادات المقيدة في الميزانية العامة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q57', 'exam_2024_tasks', 57, 'الاختصاصات والمهام الإدارية والتربوية', 'تسمى النفقة التي يتم اللجوء إليها في حالة ما إذا كانت المؤسسة دائنة ومدينة في نفس الآن؛', false, '[{"id": "A", "text": "نفقة عادية."}, {"id": "B", "text": "نفقة تفضيلية. نفقة ترتيبية."}, {"id": "C", "text": "نفقة استثنائية. الاختيارات المقترحة خاطئة."}, {"id": "D", "text": "هم الوثيقة التي تسعى إلى تحقيق منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التربية"}]'::jsonb, ARRAY['C']::text[], 'تسمى النفقة التي يتم اللجوء إليها لتسوية وضعية محاسبية تكون فيها المؤسسة دائنة ومدينة في نفس الآن (مثل تحويل الفائض أو المقاصة الداخلية بين الحسابات) بـ نفقة ترتيبية (Dépense d''ordre).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q58', 'exam_2024_tasks', 58, 'الاختصاصات والمهام الإدارية والتربوية', 'والتكوين:', false, '[{"id": "A", "text": "المشرو ع الشخصي للمتعلم."}, {"id": "B", "text": "مشروع المؤسسة المندمج. المشروع البيداغوجي."}, {"id": "C", "text": "المشرو ع التربوي."}, {"id": "D", "text": "الاختيارات المقترحة خاطئة. هم"}]'::jsonb, ARRAY['B']::text[], 'حسب المذكرة الوزارية 087/21، الوثيقة التي تسعى إلى تحقيق منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التربية والتكوين على صعيد المؤسسة هي مشروع المؤسسة المندمج.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q59', 'exam_2024_tasks', 59, 'الاختصاصات والمهام الإدارية والتربوية', 'تتحدد مداخيل كراء الكتب المقررة بإحدى مستويات التعليم الثانوي التأهيلي في:', false, '[{"id": "A", "text": "05,00 د للكتاب الواحد و()50,0 د للمجموعة الكاملة."}, {"id": "B", "text": "O. 6() د للكتاب الواحد و60,00 د للمجموعة الكاملة."}, {"id": "C", "text": "()(),7() د للكتاب الواحد و()70,0 د للمجموعة الكاملة."}, {"id": "D", "text": "()O. 8() د للكتاب الواحد و00,()8 د للمجموعة الكاملة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المذكرات المنظمة لإعارة الكتب المدرسية (المذكرة 199 و156)، تتحدد مداخيل كراء الكتب بالتعليم الثانوي التأهيلي في 05,00 دراهم للكتاب الواحد و 50,00 درهماً للمجموعة الكاملة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2024_tasks_q60', 'exam_2024_tasks', 60, 'الاختصاصات والمهام الإدارية والتربوية', 'الصفحه', false, '[{"id": "A", "text": "مسلك مختصي الامتصاد والإدارة بر 2024"}, {"id": "B", "text": "او المها المرتبطة بالوظيفة المطلوب شغلها اي"}, {"id": "C", "text": "حول نساب مداولات مجلس تدبير المؤسسة التعليمة خلال الجلسة الثانية في: أغلبية أصوات أعضاء المجلس."}, {"id": "D", "text": "ي أصوات أعضاء المجلس. أغلبية أصوات الأعضاء الحاضرين."}, {"id": "E", "text": "ات الأعضاء الحاضرين. نصف أصو جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 20 من المرسوم 2.02.376، في الجلسة الثانية لمجلس التدبير (التي لا يشترط فيها نصاب الحضور)، يتخذ المجلس قراراته وتصح مداولاته بـ أغلبية أصوات الأعضاء الحاضرين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;

-- أسئلة امتحان: امتحان التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي (2023) (80 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q1', 'exam_2023_mgmt', 1, 'التدبير المالي والمادي والمحاسباتي', 'يمكن لمؤسسات التربية والتكوين والمجالس الترابية:', false, '[{"id": "A", "text": "عقد شراكة فيما بينهما."}, {"id": "B", "text": "إبرام سند الطلب فيما بينهما."}, {"id": "C", "text": "إبرام صفقة فيما بينهما."}, {"id": "D", "text": "إنشاء صندوق مشترك فيما بينهما."}]'::jsonb, ARRAY['A']::text[], 'يمكن لمؤسسات التربية والتكوين إبرام عقد شراكة مع المجالس الترابية (الجماعات، الأقاليم، الجهات) لدعم مشاريع المؤسسة، ولا تملك المؤسسة التعليمية أهلية إبرام صفقة عمومية أو إنشاء صندوق مشترك مع جماعة ترابية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q2', 'exam_2023_mgmt', 2, 'التدبير المالي والمادي والمحاسباتي', 'تسمى السجلات التي يئم فيها مسك المواد والتجهيزات القابلة للجرد؛', false, '[{"id": "A", "text": "سجلات المواد."}, {"id": "B", "text": "سجلات التجهيزات."}, {"id": "C", "text": "سجلات الجرد."}, {"id": "D", "text": "سجلات المواد والتجهيزات."}]'::jsonb, ARRAY['C']::text[], 'تسمى السجلات التي يتم فيها تدوين ومسك المواد والتجهيزات القابلة للجرد (غير القابلة للاستهلاك السريع والتي تفوق قيمتها 10 دراهم) بـ سجلات الجرد (Registres d''inventaire).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q3', 'exam_2023_mgmt', 3, 'المحاسبة العمومية والمالية', 'تتضمن محاسبة الدولة؛', false, '[{"id": "A", "text": "محاسبة عامة ومحاسبة مالية ومحاسبة التكاليف."}, {"id": "B", "text": "محاسبة عامة ومحاسبة تحليلية ومحاسبة التكاليف."}, {"id": "C", "text": "محاسبة عامة ومحاسبة مالية ومحاسبة إدارية."}, {"id": "D", "text": "محاسبة عامة ومحاسبة تحليلية ومحاسبة إدارية."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 31 من القانون التنظيمي لقانون المالية 130.13، تقوم الدولة بمسك محاسبة عامة ومحاسبة تحليلية (لتحليل كلفة المشاريع) ومحاسبة إدارية (محاسبة الميزانية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q4', 'exam_2023_mgmt', 4, 'الصفقات العمومية', 'تعرف النفقات في مجال الصفقات العمومية، بتلك الأموال التي:', false, '[{"id": "A", "text": "تخرج من الذمة المالية لشخص ذاتي بقصد إشباع حاجة عامة."}, {"id": "B", "text": "تخرج من الذمة المالية لشخص معنوي عام بقصد إشباع حاجة عامة."}, {"id": "C", "text": "تحصل لشخص معنوي عام بقصد إشباع حاجة عامة."}, {"id": "D", "text": "تحصل وتخرج من الذمة المالية لشخص معنوي عام بقصد إشباع حاجة عامة."}]'::jsonb, ARRAY['B']::text[], 'تعرف النفقات العمومية بكونها الأموال التي تخرج من الذمة المالية لشخص معنوي عام بقصد إشباع حاجة عامة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q5', 'exam_2023_mgmt', 5, 'التدبير المالي والمادي والمحاسباتي', 'يعتبر المبيان الدائري التمثيل الأنسب في حالة:', false, '[{"id": "A", "text": "المتغير الكمي المتصل."}, {"id": "B", "text": "المتغير الكمي المنفصل."}, {"id": "C", "text": "المتغير الكمي المتصل أو المنفصل."}, {"id": "D", "text": "المتغير النوعي."}]'::jsonb, ARRAY['D']::text[], 'يعتبر المبيان الدائري (أو القطاعي) التمثيل الأنسب في حالة المتغير النوعي (Qualitatif) لإبراز حصص ونسب كل فئة من المجموع.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q6', 'exam_2023_mgmt', 6, 'الصفقات العمومية', 'يقصد بالسلطة المختصة في مرسوم الصفقات العمومية:', false, '[{"id": "A", "text": "الأمر بالصرف أو الشخص المفوض من لدنه قصد المصادقة على الصفقة أو كل شخص آخر مؤهل لهذا الغرض بموجب نص تشريعي فقط."}, {"id": "B", "text": "الآمر بالصرف أو الشخص المفوض من لدنه قصد المصادقة على الصفقة أو كل شخص آخر مؤهل لهذا الغرض بموجب نص تشريعي وتنظيمي."}, {"id": "C", "text": "الآمر بالصرف أو الشخص المفوض من لدنه قصد المصادقة على الصفقة أو كل شخص أخر مؤهل لهذا الغرض بموجب نص تشريعي أو تنظيمي."}, {"id": "D", "text": "الأمر بالصرف أو الشخص المفوض من لدنه قصد المصادقة على الصفقة أو كل شخص أخر مؤهل لهذا الغرض بموجب نص تنظيمي حصرا."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 4 من مرسوم الصفقات العمومية (2.22.431)، يقصد بالسلطة المختصة: الآمر بالصرف أو الشخص المفوض من لدنه قصد المصادقة على الصفقة أو كل شخص آخر مؤهل لهذا الغرض بموجب نص تشريعي أو تنظيمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q7', 'exam_2023_mgmt', 7, 'التدبير المالي والمادي والمحاسباتي', 'خلال إعداد قانون المالية العامة ولأجل الحفاظ على توازن مالية الدولة؛', false, '[{"id": "A", "text": "لا يمكن أن تتجاوز حصيلة الاقتراضات مجموع نفقات الاستثمار وسداد أصول الدين برسم السنة المالية."}, {"id": "B", "text": "لا يمكن أن تتجاوز حصيلة الاقتراضات مجموع نفقات الاستثمار وسداد أصول وفوائد الدين برسم السنة المالية."}, {"id": "C", "text": "يمكن أن تتجاوز حصيلة الاقتراضات مجموع نفقات الاستثمار وسداد أصول الدين برسم السنة المالية في حدود olO/0."}, {"id": "D", "text": "يمكن أن تتجاوز حصيلة الاقتراضات مجموع نفقات الاستثمار وسداد أصول الدين برسم السنة المالية في حدود15 ."}, {"id": "E", "text": "A"}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 20 من القانون التنظيمي لقانون المالية 130.13 (القاعدة الذهبية للتوازن المالي)، لا يمكن أن تتجاوز حصيلة الاقتراضات مجموع نفقات الاستثمار وسداد أصول الدين برسم السنة المالية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q8', 'exam_2023_mgmt', 8, 'التدبير المالي والمادي والمحاسباتي', 'ليغتل: موضوع حول التدبير المادي والمالي والمعحاسباتي لمومسات التربية والتعليم العومي', false, '[{"id": "A", "text": "تعتبر الصفقات التي تبرمها المؤسسات العمومية صحيحة ونهائية بعدى"}, {"id": "B", "text": "مناقشة صاحب المشروع مع المترشح المقبول جميع جوائب المشروع ولاسيما الجوانب القانونية والتقنية."}, {"id": "C", "text": "تحديد صاحب المشروع لكميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها."}, {"id": "D", "text": "إعداد تقدير كلنة الأعمال على أساس مراجع الأثمان في حالة وجودها."}, {"id": "E", "text": "المصادقة عليها من لدن السلطة المختصة والتأشير عليها من لدن مراكب الدولة إذا كان التأشير إلزاميا."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 142 من مرسوم الصفقات العمومية 2.22.431، لا تعتبر الصفقات التي تبرمها المؤسسات العمومية صحيحة ونهائية إلا بعد المصادقة عليها من لدن السلطة المختصة والتأشير عليها من لدن مراقب الدولة إذا كان التأشير إلزامياً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q9', 'exam_2023_mgmt', 9, 'المحاسبة العمومية والمالية', 'تصنف نفقات تنظيم حملات التوجيه والإعلام ضمن؛', false, '[{"id": "A", "text": "نفقات الاستثمار."}, {"id": "B", "text": "نفقات الإيواء."}, {"id": "C", "text": "نفقات التسي"}, {"id": "D", "text": "نفقات الاستقبال"}, {"id": "E", "text": "عقب جرد علب أقلام الرصاص في مخزون (Stock) شهر دجنبر 2022 بإحدى الأكاديميات الجهوية للتربية والتكوين، تم التوصل"}]'::jsonb, ARRAY['C']::text[], 'نفقات تنظيم حملات التوجيه والإعلام هي نفقات عادية ومستمرة لتشغيل المرفق وتصنف ضمن نفقات التسيير. حل تمرين تدبير المخزون بطريقة FIFO (الأول دخولاً الأول خروجاً) - (Q10 و Q11): - المدخلات: - 03/12: مخزون الانطلاق = 100 \text{ وحدة} \times 2 \text{ د} = 200 \text{ د} - 07/12: شراء 1 = 400 \text{ وحدة} \times 1,50 \text{ د} = 600 \text{ د} - 25/12: شراء 2 = 700 \text{ وحدة} \times 1,25 \text{ د} = 875 \text{ د} - (مجموع المدخلات = 1200 وحدة بقيمة إجمالية = 1675 د). - المخرجات (الاستعمالات) بطريقة FIFO: 1. استعمال 1 (18/12) = 200 وحدة: نأخذ 100 وحدة من مخزون الانطلاق (100 \times 2 = 200\text{ د}) + 100 وحدة من شراء 1 (100 \times 1,50 = 150\text{ د}) \leftarrow المجموع = 350 د. (يتبقى من شراء 1: 300 وحدة بسعر 1,50). 2. استعمال 2 (27/12) = 400 وحدة: نأخذ 300 وحدة المتبقية من شراء 1 (300 \times 1,50 = 450\text{ د}) + 100 وحدة من شراء 2 (100 \times 1,25 = 125\text{ د}) \leftarrow المجموع = 575 د. (يتبقى من شراء 2: 600 وحدة بسعر 1,25). 3. استعمال 3 (29/12) = 100 وحدة: نأخذها من شراء 2 (100 \times 1,25) \leftarrow المجموع = 125 د. (يتبقى في المخزون النهائي: 500 وحدة من شراء 2 بسعر 1,25).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q10', 'exam_2023_mgmt', 10, 'التدبير المالي والمادي والمحاسباتي', 'إلى المعطيات التالية؛', false, '[{"id": "A", "text": "سعر الوحدة بالدرهم 1,50 1,25 عدد الوحدات"}, {"id": "B", "text": "IOO 0()4 0()4 IOO مخزون الانطلاق"}, {"id": "C", "text": "شراء استحمل استه ، استعمال 3 2022/12/03"}, {"id": "D", "text": "2022/12/07 2022/12/18 2022/12/25 2022/12/27 2022/12/29"}]'::jsonb, ARRAY['A']::text[], 'قيمة مجمل الاستعمالات = 350 + 575 + 125 = \mathbf{1\,050 \text{ د}}.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q11', 'exam_2023_mgmt', 11, 'التدبير المالي والمادي والمحاسباتي', 'قيمة مجمل استعمالات أقلام الرصاص لشهر دجنبر بالدرهم، بحسب طريقة "Out First ln First" هي:', false, '[{"id": "A", "text": "قيمة المخزون لأقلام الرصاص بتاريخ 2022/12/31 بالدرهم، بحسب طريقة \"Out First ln First\""}, {"id": "B", "text": "ف:"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'قيمة المخزون النهائي في 31/12/2022 = 500 \text{ وحدة متبقية} \times 1,25 \text{ د} = \mathbf{625 \text{ د}} (أو 1675 - 1050 = 625\text{ د}).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q12', 'exam_2023_mgmt', 12, 'الصفقات العمومية', 'تشمل اتفاقيات أو عقود القاتون العادي، في مجال الصفقات العمومية، تلك:', false, '[{"id": "A", "text": "التى يكون موضوعها إنجاز أعمل سبق تحديد شروط تنفيذها وثمنها، والتي يمكن لصاحب المشروع تعديلها أو له فانو ى"}, {"id": "B", "text": "التي يكون موضوعها إنجاز أعمال لم يسبق تحديد شروط تنفيذها وثمنها، والتي لا يمكن لصاحب المشروع تعديلها أو ليسن"}, {"id": "C", "text": "له فائدة في تعديلها."}, {"id": "D", "text": "التي يكون موضوعها إنجاز أعمال سبق تحديد شروط تنفيذها وثمنها، والتي لا يمكن لصاحب المشروع تعديلها أو ليست له"}, {"id": "E", "text": "فائدة في تعديلها."}]'::jsonb, ARRAY['C']::text[], 'حسب الملحق رقم 1 من مرسوم الصفقات العمومية 2.22.431، تشمل اتفاقيات أو عقود القانون العادي تلك التي يكون موضوعها إنجاز أعمال سبق تحديد شروط تنفيذها وثمنها، والتي لا يمكن لصاحب المشروع تعديلها أو ليست له فائدة في تعديلها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q13', 'exam_2023_mgmt', 13, 'التدبير المالي والمادي والمحاسباتي', 'التي يكون موضوعها إنجاز أعمال سبق تحديد شروط تنفيذها دون ثمنها، والتي لا يمكن لصاحب المشروع تعديلها أو ليست', false, '[{"id": "A", "text": "له فائدة في تعديلها."}, {"id": "B", "text": "يطلق على السجل الذي تدون فيه جميع مداخيل ومخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة والذي"}, {"id": "C", "text": "يشترط في محتوياته أن تتطابق مع عدد الكميات الموجودة فطيا بالخزين:"}, {"id": "D", "text": "سجل الاستهلاك اليومي."}, {"id": "E", "text": "سجل المداخيل."}]'::jsonb, ARRAY['D']::text[], 'السجل الذي تدون فيه جميع مداخيل ومخرجات القسم الداخلي من المواد الغذائية والنظافة ويشترط تطابق محتوياته مع الكميات الفعلية هو سجل الخزين (أو دفتر الخازن).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q14', 'exam_2023_mgmt', 14, 'التدبير المالي والمادي والمحاسباتي', 'سجل المخرجات.', false, '[{"id": "A", "text": "سجل الخزين."}, {"id": "B", "text": "تتم الشراكة عن طريق:"}, {"id": "C", "text": "إبرام اتفاقية شراكة بين مؤسستين أو أكثر تحت إشراف المصالح الإقليمية للأكاديميات الجهوية للتربية والتكوين."}, {"id": "D", "text": "إبرام اتفاقية شراكة بين مؤسستين أو أكثر وتحت إشراف المصالح الإقليمية للأكاديميات الجهوية للتربية والتكوين، ولا تدخل"}, {"id": "E", "text": "حيز التنفيذ إلا بعد المصادقة عليها من طرف الأكاديمية."}]'::jsonb, ARRAY['B']::text[], 'حسب المذكرة الوزارية رقم 02/95 والمذكرة 79/03 المؤطرة للشراكة، تتم الشراكة بين مؤسستين أو أكثر تحت إشراف المصالح الإقليمية، ولا تدخل حيز التنفيذ إلا بعد المصادقة عليها من طرف مدير الأكاديمية الجهوية للتربية والتكوين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q15', 'exam_2023_mgmt', 15, 'التدبير المالي والمادي والمحاسباتي', 'إبرام اتفاقية شراكة بين مؤسستين فقط تحت إشراف المصالح الإقليمية للأكاديميات الجهوية للتربية والتكوين، ولا تدخل حيز', false, '[{"id": "A", "text": "التنفيذ إلا بعد المصادقة عليها من طرف الأكاديمية."}, {"id": "B", "text": "إبرام اتفاقية شراكة بين مؤسستين أو أكثر، ولا تدخل حيز التنفيذ إلا بعد المصادقة عليها من طرف الأكاديمية."}, {"id": "C", "text": "تمنح صفة المحاسب العمومي داخل المديرية الإقليمية ل:"}, {"id": "D", "text": "الوكيل المفوض."}, {"id": "E", "text": "المدير الإقليمي."}]'::jsonb, ARRAY['A']::text[], 'داخل المديرية الإقليمية، تمنح صفة المحاسب العمومي (في إطار شساعة النفقات) أو المكلف بالأداء بتفويض لـ الوكيل المفوض (أو الخازن المكلف بالأداء لدى الأكاديمية/المديرية). (بينما المدير الإقليمي هو آمر بالصرف مساعد، ورئيس المصلحة والمختص هما أطر إدارية للتدبير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q16', 'exam_2023_mgmt', 16, 'التدبير المالي والمادي والمحاسباتي', 'مختص الاقتصاد والإدارة بالمديرية والمكلف بملف الدعم الاجتمامي.', false, '[{"id": "A", "text": "رئيس مصلحة الشؤون الإدارية والمالية."}, {"id": "B", "text": "تبدا مرحلة برمجة الميزانية العامة للدولة بدعوة منو"}, {"id": "C", "text": "لجنة المالية بالبرلمان"}, {"id": "D", "text": "رئيس البرلمان."}, {"id": "E", "text": "وزير المالية"}]'::jsonb, ARRAY['D']::text[], 'تبدأ مرحلة برمجة وإعداد مشروع قانون المالية بدعوة من رئيس الحكومة (عبر منشور رئيس الحكومة المتعلق بإعداد مقترحات البرمجة الميزانياتية لثلاث سنوات ومشروع قانون المالية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q17', 'exam_2023_mgmt', 17, 'التدبير المالي والمادي والمحاسباتي', 'رئيس الحكومة.', false, '[{"id": "A", "text": "يقصد بنائل الصفقة في مرسوم الصفقات العمومية:"}, {"id": "B", "text": "المتنافس الذي لم يتم قبول عرضه ولم يتم تبليغه بذلك."}, {"id": "C", "text": "المتنافس الذي تم إقصاء عرضه وتم تبليغه بذلك."}, {"id": "D", "text": "المتنافس الذي تم قبول عرضه قبل تبليغه المصادقة على الصفقة."}, {"id": "E", "text": "المتنافس الذي تم رفض عرضه ولم يتم تبليغه بذلك."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 4 من مرسوم الصفقات العمومية 2.22.431، يقصد بنائل الصفقة (Attributaire): المتنافس الذي تم قبول عرضه قبل تبليغه المصادقة على الصفقة (وبعد التبليغ يصبح "صاحب الصفقة - Titulaire").')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q18', 'exam_2023_mgmt', 18, 'التدبير المالي والمادي والمحاسباتي', 'بث: موضوع حول التدبير الماد', false, '[{"id": "A", "text": "ي والمالي والمحاسبائي لمؤسسات التربية والتطيم العمومي"}, {"id": "B", "text": "من المستجدات التي جاء بها المرسوم الجديد للصفقات العمومية؛"}, {"id": "C", "text": "الشفافية في اختيارات صاحب المشروع."}, {"id": "D", "text": "إجبارية نشر سندات الطلب عبر البوابة الإلكترونية للصفقات العمومية."}, {"id": "E", "text": "المساواة في التعامل مع المتنافسين."}]'::jsonb, ARRAY['B']::text[], 'الشفافية والمساواة وضمان حقوق المتنافسين هي مبادئ كلاسيكية كانت موجودة في مرسوم 2013، بينما من أبرز المستجدات التي جاء بها المرسوم الجديد 2.22.431 (المادة 91) هي إجبارية نشر إعلانات الشراء بسندات الطلب عبر البوابة الإلكترونية للصفقات العمومية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q19', 'exam_2023_mgmt', 19, 'التدبير المالي والمادي والمحاسباتي', 'ضمان حقوق المتنافسين.', false, '[{"id": "A", "text": "يسمى المؤشر الإحصائي الذي يفصل النصف الأعلى من العينة أو المجتمع عن النصف الأدنى بحيث يتساوى على طرفه"}, {"id": "B", "text": "عدد القيم بط ترتيبها تصاعديا أو تنازلياء"}, {"id": "C", "text": "المتوسط الهندسي."}, {"id": "D", "text": "المتوسط العددي."}, {"id": "E", "text": "الوسيط."}]'::jsonb, ARRAY['C']::text[], 'المؤشر الإحصائي الذي يقسم العينة المرتبة تصاعدياً أو تنازلياً إلى نصفين متساويين (50% أعلى و50% أدنى) هو الوسيط (La médiane).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q20', 'exam_2023_mgmt', 20, 'التدبير المالي والمادي والمحاسباتي', 'المنوال.', false, '[{"id": "A", "text": "يعرف الأصل التجاري بكونه؛"}, {"id": "B", "text": "مالا منقولا معنويا يشمل جميع الأموال المنقولة المخصصة لممارسة نشاط تجاري أو عدة أنشطة تجارية."}, {"id": "C", "text": "مالا غير منقول معنويا يشمل جميع الأموال المنقولة المخصصسة لسارسة نمامت باري أو عدة أنشطة تجارية."}, {"id": "D", "text": "سلعا منقولة تشمل جميع الأموال المنقولة المخصصة لممارسة نشاط تجاري أ عدة انشطة تجارية."}, {"id": "E", "text": "سلعا منقولة وغير منقولة تشمل جميع الأموال المنقولة المخصصنة لممارسة نشاط تجاري أو عدة أنشطة تجارية."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 79 من مدونة التجارة المغربية (القانون 15.95): "الأصل التجاري مال منقول معنوي يشمل جميع الأموال المنقولة المخصصة لممارسة نشاط تجاري أو عدة أنشطة تجارية".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q21', 'exam_2023_mgmt', 21, 'الصفقات العمومية', 'يتم إنجاز تقرير انتهاء تنفيذ الصفقة إذا فاق مبلغهاء', false, '[{"id": "A", "text": "OOO 500 د"}, {"id": "B", "text": "000 OOO l د."}, {"id": "C", "text": "OOO OOO 2 د."}, {"id": "D", "text": "OOO OOO 3 د."}, {"id": "E", "text": "تهتم المالية العامة ب؛"}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 164 من مرسوم الصفقات العمومية، تعد كل صفقة يفوق مبلغها مليون (1.000.000) درهم مع احتساب الرسوم موضوع تقرير انتهاء التنفيذ يعده صاحب المشروع.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q22', 'exam_2023_mgmt', 22, 'التدبير المالي والمادي والمحاسباتي', 'الثروة التي يتصرف فيها الأفراد والشركات الخاضعون لأحكام القانون الخاص.', false, '[{"id": "A", "text": "العمليات المالية والحسابية للدولة والجماعات الترابية."}, {"id": "B", "text": "دراسة النفقات العامة والموارد العامة والعمل على توجيهها بغرض تحقيق أهداف اقتصادية واجتماعية وسياسية."}, {"id": "C", "text": "تقييم مستوى صرف الاعتمادات مع احترام المساطر."}, {"id": "D", "text": "يسمى السجل الذي يتم فيه تدوين جميع المداخيل والمخرجات اليومية من السلع والمواد إلى جانب الثمن الفردي لكل مادة"}, {"id": "E", "text": "على حدة؛"}]'::jsonb, ARRAY['C']::text[], 'علم المالية العامة (Finances publiques) هو العلم الذي يهتم بـ دراسة النفقات العامة والموارد العامة والعمل على توجيهها بغرض تحقيق أهداف اقتصادية واجتماعية وسياسية. (بينما الاختيار B هو تعريف للمحاسبة العمومية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q23', 'exam_2023_mgmt', 23, 'التدبير المالي والمادي والمحاسباتي', 'دفتر الاستهلاك اليومي.', false, '[{"id": "A", "text": "نفتر الاتصال اليومي"}, {"id": "B", "text": "دفتر الاستهلاك الاسبوعي."}, {"id": "C", "text": "دفتر مخرجات الخزين."}, {"id": "D", "text": "Q2O"}, {"id": "E", "text": "لاد)"}]'::jsonb, ARRAY['A']::text[], 'السجل الذي يتم فيه تدوين المداخيل والمخرجات اليومية من السلع والمواد إلى جانب الثمن الفردي لكل مادة على حدة لحساب كلفة الوجبة اليومية هو دفتر الاستهلاك اليومي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q24', 'exam_2023_mgmt', 24, 'الصفقات العمومية', 'تبرم صفقة الأشغال من أجل:', false, '[{"id": "A", "text": "تنفيذ أشغال مرتبطة، على وجه الخصوص، ببناء منشأة أو بنية أو بإعادة بنائها أو بهدمها أو بإصلاحها أو بتجديدها، أو بتهيئتها أو بصيائتها أو بهما معا، وكذا بإعادة التشجير أو بتهيئة المساحات الخضراء."}, {"id": "B", "text": "تنفيذ أشغال مرتبطة، على وجه الخصوص، ببناء بناية أو منشأة أو بنية أو بإعادة بنائها أو بهدمها أو بإصلاحها أو بتجديدها، أو بتهيئتها أو بصيائتها أو بهما معا، وكذا بإعادة التشجير أو بتهيئة المساحات الخضراء. تنفيذ أشغل مرتبطة، على وجه الخصوص، ببناء بناية أو بنية أو بإعادة بنائها أو بهدمها أو بإصلاحها أو بتجديدها، أو"}, {"id": "C", "text": "بتهيئتها أو بصيانتها أو بهما معا، وكذا بإعادة التشجير أو بتهيئة المساحات الخضراء. تنفيذ أشغال مرتبطة، على وجه الخصوص، ببناء بنية أو بإعادة بنائها أو بهدمها أو بإصلاحها أو بتجديدها، أو بتهيئتها أو"}, {"id": "D", "text": "بصيانتها أو بهما معا، وكذا بإعادة التشجير أو بتهيئة المساحات الخضراء. قامت مؤسسة باقتناء جهاز حاسوب في 7 شتنبر 2016 مقابل l2_Q0L وحدة نقدية دون احتساب الرسوم. تم احتساب تآكل ثابت لجهاز الحاسوب على مدة استعمال قدرت ب 6 سنوات و8 أشهر"}]'::jsonb, ARRAY['A']::text[], 'حسب الصياغة الحرفية للمادة 4 (البند 19 - أ) من مرسوم الصفقات العمومية 2.22.431، تبرم صفقة الأشغال من أجل: "تنفيذ أشغال مرتبطة، على وجه الخصوص، ببناء منشأة أو بنية أو بإعادة بنائها أو بهدمها أو بإصلاحها أو بتجديدها، أو بتهيئتها أو بصيانتها أو بهما معاً، وكذا بإعادة التشجير أو بتهيئة المساحات الخضراء". حل تمرين الاهتلاك المحاسباتي (Q25 إلى Q28): - القيمة الأصلية (VO) = 12\,000 | تاريخ الاقتناء: 07/09/2016 (أي استُعمل في سنة 2016 لمدة 4 أشهر: شتنبر، أكتوبر، نونبر، دجنبر). - مدة الاستعمال = 6 سنوات و 8 أشهر = (6 \times 12) + 8 = 80 \text{ شهراً}.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q25', 'exam_2023_mgmt', 25, 'التدبير المالي والمادي والمحاسباتي', 'معدل تآكل جهاز الحاسوب هو:', false, '[{"id": "A", "text": "20%."}, {"id": "B", "text": "25%."}, {"id": "C", "text": "30%."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'معدل التآكل (الاهتلاك) الثابت (t): t = \frac{12 \text{ شهراً}}{80 \text{ شهراً}} \times 100 = \mathbf{15\%}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q26', 'exam_2023_mgmt', 26, 'التدبير المالي والمادي والمحاسباتي', 'تآكل جهاز الحاسوب السنوي في 31 دجنبر 2Oi6 بغو:', false, '[{"id": "A", "text": "1800 وحدة نقدية."}, {"id": "B", "text": "1960 وحدة نقدية."}, {"id": "C", "text": "450 وحدة نقدية."}, {"id": "D", "text": "600 رحدة نقدية."}, {"id": "E", "text": "القيمة الصافية من الاستخمادات لجهاز الحاسوب المثبئة في الحساب الختامي للمؤسسة بتاريخ 31 دجنبر"}]'::jsonb, ARRAY['D']::text[], 'قسط تآكل (اهتلاك) الحاسوب لسنة 2016 (عن 4 أشهر من شتنبر إلى دجنبر): A_{2016} = 12\,000 \times 15\% \times \frac{4}{12} = 1\,800 \times \frac{1}{3} = \mathbf{600 \text{ وحدة نقدية}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q27', 'exam_2023_mgmt', 27, 'التدبير المالي والمادي والمحاسباتي', '2016 هي:', false, '[{"id": "A", "text": "0()4 ll وحدة نقدية."}, {"id": "B", "text": "400 IO وحدة نقدية."}, {"id": "C", "text": "200 10 وحدة نقدية."}, {"id": "D", "text": "550 ll وحدة نقدية."}]'::jsonb, ARRAY['A']::text[], 'القيمة الصافية (VNA) بتاريخ 31/12/2016: VNA = VO - A_{2016} = 12\,000 - 600 = \mathbf{11\,400 \text{ وحدة نقدية}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q28', 'exam_2023_mgmt', 28, 'التدبير المالي والمادي والمحاسباتي', 'تآكل جهاز الحاسوب التراكمي في 31 دجنبر 2022 هو:', false, '[{"id": "A", "text": "800 ()l وحدة نقدية."}, {"id": "B", "text": "250 ll وحدة نقدية."}, {"id": "C", "text": "400 ll وحدة نقدية."}, {"id": "D", "text": "600 12 وحدة نقدية"}, {"id": "E", "text": "y)"}]'::jsonb, ARRAY['C']::text[], 'التآكل التراكمي (\sum A) في 31/12/2022: - المدة من 01/09/2016 إلى 31/12/2022 هي: 4 أشهر (في 2016) + 6 سنوات كاملة (2017، 2018، 2019، 2020، 2021، 2022) = 6 سنوات و 4 أشهر (أي 76 شهراً). - الاهتلاك السنوي الكامل = 12\,000 \times 15\% = 1\,800. - التآكل التراكمي = 600 + (6 \times 1\,800) = 600 + 10\,800 = \mathbf{11\,400 \text{ وحدة نقدية}}.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q29', 'exam_2023_mgmt', 29, 'التدبير المالي والمادي والمحاسباتي', 'وعهر: مروضوه عون فعبير تمدر وتمف ولمعسور لتوسمت فتربية ونتتعبه فسومر', false, '[{"id": "A", "text": "و و"}, {"id": "B", "text": "تشمل نفقات الاستثماري"}, {"id": "C", "text": "نفقات كراء العتاد المعلوماتي أو الديداكتيكي."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'نفقات الاستثمار (التجهيز) تشمل النفقات التي تزيد في قيمة أصول وممتلكات المؤسسة لأمد طويل مثل نفقات اقتناء العتاد المعلوماتي والديداكتيكي (أما الكراء والمحروقات فهي نفقات تسيير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q30', 'exam_2023_mgmt', 30, 'المحاسبة العمومية والمالية', 'نفقات اقتناء العتاد المعلوماتي والديداكتيكي.', false, '[{"id": "A", "text": "نفقات كراء السيارات."}, {"id": "B", "text": "نفقات المحروقات."}, {"id": "C", "text": "يتحدد القسط السنوي الخاص بتأمين أساتذة التربية البدنية والرياضية في:"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب اتفاقية الضمان المدرسي (المذكرة 057x20)، يتحدد القسط السنوي الخاص بتأمين أساتذة التربية البدنية والرياضية وأطر الإطعام المدرسي في 30 درهماً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q31', 'exam_2023_mgmt', 31, 'التدبير المالي والمادي والمحاسباتي', 'تهتم الرقابة الإدارية ب؛', false, '[{"id": "A", "text": "جانب تحصيل الإيرادات فقط."}, {"id": "B", "text": "جانب تحصيل الإيرادات أكثر من جانب الإنفاق."}, {"id": "C", "text": "جانب الإنفاق فقط."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تهتم الرقابة الإدارية والمالية التقليدية على تنفيذ الميزانية بـ جانب الإنفاق أكثر من جانب تحصيل الإيرادات نظراً لحساسية صرف المال العام وضرورة التقيد باعتمادات الميزانية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q32', 'exam_2023_mgmt', 32, 'التدبير المالي والمادي والمحاسباتي', 'جانب الإنفاق أكثر من جانب تحصيل الإيرادات.', false, '[{"id": "A", "text": "تعتبر أقل تشتتا السلسلة الإحصائية التي تتوفر على أصغر قيمة."}, {"id": "B", "text": "للمنوال."}, {"id": "C", "text": "للانحراف المعياري."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'مقياس التشتت من بين الخيارات المقترحة هو الانحراف المعياري (Écart-type)، وكلما كانت قيمته أصغر كلما كانت السلسلة الإحصائية أقل تشتتاً وأكثر تجانساً (بينما المنوال والوسيط والمتوسط هي مقاييس نزعة مركزية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q33', 'exam_2023_mgmt', 33, 'التدبير المالي والمادي والمحاسباتي', 'للوسيعط', false, '[{"id": "A", "text": "للمتوسط الحسابي."}, {"id": "B", "text": "تهتم المحاسبة التحليلية بتحديد:"}, {"id": "C", "text": "الكلفة."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تهتم المحاسبة التحليلية (Comptabilité analytique) أساساً بحساب وتحديد الكلفة (سعر التكلفة) والنتيجة التحليلية لكل منتج أو نشاط.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q34', 'exam_2023_mgmt', 34, 'التدبير المالي والمادي والمحاسباتي', 'النتيجة العامة.', false, '[{"id": "A", "text": "النتيجة المالية."}, {"id": "B", "text": "النتيجة الاستثنائية."}, {"id": "C", "text": "يقصد بالأعمال في مجال الصفقات العمومية:"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 4 (البند 22) من مرسوم الصفقات العمومية 2.22.431، يقصد بالأعمال (Prestations): الأشغال أو التوريدات أو الخدمات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q35', 'exam_2023_mgmt', 35, 'التدبير المالي والمادي والمحاسباتي', 'من الأشغال والتوريدات أو الخدمات.', false, '[{"id": "A", "text": "الأشغال والتوريدات أو الخدمات. الأشغال أو التوريدات أو الخدمات."}, {"id": "B", "text": "الأشغال والتوريدات والخدمات. يسمى السجل الذي تدون فيه لوائح التلاميذ الممنوحين والمؤدين قصد التتبع والمراقبة:"}, {"id": "C", "text": "سجل مراقبة الممنوحين. سجل مراقبة الداخلية."}, {"id": "D", "text": "سجل مراقبة الممنوحين والمؤدين. سجل مراقبة المؤدين. 3)"}]'::jsonb, ARRAY['B']::text[], 'السجل الذي تدون فيه لوائح التلاميذ الممنوحين والمؤدين (المتممين) قصد التتبع والمراقبة بالقسم الداخلي يسمى سجل مراقبة الداخلية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q36', 'exam_2023_mgmt', 36, 'المحاسبة العمومية والمالية', 'الإغتبار: موضوع هول التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتطيم العمومي', false, '[{"id": "A", "text": "يحدد أجل تصويت البرلمان على مشروع قانون المالية التعديلي في:"}, {"id": "B", "text": "الأسبوع الأول الموالي لإيداعه من طرف الحكومة لدى البرلمان."}, {"id": "C", "text": "IO أيام الموالية لإيداعه من طرف الحكومة لدى البرلمان."}, {"id": "D", "text": "15 يوما الموالية لإيداعه من طرف الحكومة لدى البرلمان."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 51 من القانون التنظيمي لقانون المالية 130.13، يصوت البرلمان على مشروع قانون المالية التعديلي في أجل لا يتعدى خمسة عشر (15) يوماً الموالية لإيداعه من طرف الحكومة لدى مكتب مجلس النواب.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q37', 'exam_2023_mgmt', 37, 'التدبير المالي والمادي والمحاسباتي', '21 يوما الموالية لإيداعه من طرف الحكومة لدى البرلمان.', false, '[{"id": "A", "text": "يقصد بجدول أثمان التموينات في مجال الصفقات العمومية؛"}, {"id": "B", "text": "الوثيقة التي تبين لائحة المواد الواجب تموينها في الورش والأثمان الأحادية المطابقة."}, {"id": "C", "text": "الوثيقة التي تبين أقل من 750/0 من لائحة المواد الواجب تموينها في الورش والأثمان الأحادية المطابقة."}, {"id": "D", "text": "الوثيقة التي تبين أقل من 500/0 من لائحة المواد الواجب تموينها في الورش والأثمان الأحادية."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 4 (البند 7) من مرسوم الصفقات العمومية 2.22.431، يقصد بجدول أثمان التموينات: الوثيقة التي تبين لائحة المواد الواجب تموينها في الورش والأثمان الأحادية المطابقة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q38', 'exam_2023_mgmt', 38, 'التدبير المالي والمادي والمحاسباتي', 'الوثيقة التي تبين أقل من 250/0 من لائحة المواد الواجب تموينها في الورش والأثمان الأحادية.', false, '[{"id": "A", "text": "تحصل المؤسسة التعليمية على موارد مالية خاصة بالقسم الخارجي، ليست من الميزانية العامة للدولة أو ميزانية"}, {"id": "B", "text": "الأكاديمية الجهوية، وتسمى هذه الموارد؛"}, {"id": "C", "text": "ميزانية التسيير والصيانة."}, {"id": "D", "text": "الخارج عن الميزانية."}]'::jsonb, ARRAY['B']::text[], 'الموارد المالية الخاصة بالقسم الخارجي والتي يتم تحصيلها محلياً من التلاميذ (خارج ميزانية الدولة والأكاديمية) تسمى موارد حساب الخارج عن الميزانية (Hors budget).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q39', 'exam_2023_mgmt', 39, 'التدبير المالي والمادي والمحاسباتي', 'منحة جمعية دعم مدرسة النجاح.', false, '[{"id": "A", "text": "منحة خاصة بإبرام اتفاقية شراكة."}, {"id": "B", "text": "تنبني استراتيجية التكامل الرأسي على استحواذ المؤسسة على؛"}, {"id": "C", "text": "مؤسسات أخرى تنتمي لنفس مرحلة الإنتاج."}, {"id": "D", "text": "مؤسسات أخرى لا تنتمي لنفس القطاع."}]'::jsonb, ARRAY['D']::text[], 'استراتيجية التكامل الرأسي (أو العمودي - Intégration verticale) تقوم على استحواذ المؤسسة على مؤسسات أخرى تنتمي لمراحل إنتاج متكاملة (موردين أو موزعين).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q40', 'exam_2023_mgmt', 40, 'التدبير المالي والمادي والمحاسباتي', 'مؤسسات أخرى تنتمي لقطاعات مختلفة.', false, '[{"id": "A", "text": "مؤسسات أخرى تنتمي لمراحل إنتاج سكاءلة."}, {"id": "B", "text": "ينص المرسوم الجديد للصفقات العمومية على؛"}, {"id": "C", "text": "دعم القيمة المضافة المحلية عن طريق تثمين المنتوجات المغربية المنشا وتعزيز المطابقة مع المعايير المغربية."}, {"id": "D", "text": "إعطاء فرص أكبر للمقاولة الأجنبية لضمان جودة عالية عند إنجاز صفقات الأشغال والتوريدات والخدمات."}]'::jsonb, ARRAY['A']::text[], 'من الأهداف الرئيسية للمرسوم الجديد للصفقات العمومية 2.22.431 (المادة 2 و 147 مكرر) دعم القيمة المضافة المحلية عن طريق تثمين المنتوجات المغربية المنشأ وتعزيز المطابقة مع المعايير المغربية وتشجيع المقاولات الصغرى والمتوسطة والذاتية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q41', 'exam_2023_mgmt', 41, 'التدبير المالي والمادي والمحاسباتي', 'تشجيع المقاولات الكبرى الوطنية في إطار العولمة.', false, '[{"id": "A", "text": "الحد من المشاركة بالنسبة للمقاولة الذاتية والمقاولة الصغرى."}, {"id": "B", "text": "يطلق على السجل الذي تمسك فيه المداخيل الخاصة بالخارجية والذي يشتمل على خانات المصاريف الإضافية، التأمين"}, {"id": "C", "text": "المدرسي، الجمعية الرياضية، الخزانة الأدبية، ضمانات المعمل والمداخيل المختلفة... ."}, {"id": "D", "text": "سجل نفقات الميزانية."}]'::jsonb, ARRAY['D']::text[], 'السجل الذي تمسك فيه المداخيل الخاصة بالخارجية (المصاريف الإضافية، التأمين المدرسي، الجمعية الرياضية، الخزانة، ضمانات المعمل...) يسمى سجل مداخيل الخارج عن الميزانية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q42', 'exam_2023_mgmt', 42, 'المحاسبة العمومية والمالية', 'سجل مداخيل ونفقات الميزانية.', false, '[{"id": "A", "text": "سجل مداخيل الميزانية. سجل مداخيل الخارج عن الميزانية."}, {"id": "B", "text": "يعتبر جدول الوجبات الغذائية بالأقسام الداخلية من الوثائق الأساسية في تدبير التغذية بالمؤسسات التعليمية. وتكون هذه الوثيقة موقعة من طرف:"}, {"id": "C", "text": "مدير المؤسسة التعليمية وطبيب الصحة المدرسية. مسير المصالح المادية والمالية وطبيب الصحة المدرسية."}, {"id": "D", "text": "مدير المؤسسة ومسير المصالح المادية والمالية وطبيب الصحة المدرسية. مسير المصالح المادية والمالية ومدير المؤسسة التعليمية. \\D"}]'::jsonb, ARRAY['C']::text[], 'يوقع جدول الوجبات الغذائية الأسبوعي بالأقسام الداخلية من طرف كل من مدير المؤسسة ومسير المصالح المادية والمالية وطبيب الصحة المدرسية (بالإضافة إلى الحارس العام للداخلية ورئيس الطباخين في بعض النماذج).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q43', 'exam_2023_mgmt', 43, 'المحاسبة العمومية والمالية', 'ث: مرضوع حول التدبير المادي والملي والمحاسبقي لمومسات التربية والتطيم العومي', false, '[{"id": "A", "text": "يسعى العمل الذي تحدث أو تثبت بموجبه المنظمة العمومية سندا يترتب عنه تحمل:"}, {"id": "B", "text": "التصفية"}, {"id": "C", "text": "حصر حقيقة النين."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 33 من المرسوم الملكي 330.66، الالتزام (L''engagement) هو العمل الذي تُحدِث أو تُثبِت بموجبه المنظمة العمومية سنداً يترتب عنه تحمل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q44', 'exam_2023_mgmt', 44, 'المحاسبة العمومية والمالية', 'تناط العمليات المالية حسب مرسوم المحاسبة العمومية ب:', false, '[{"id": "A", "text": "الأمرين بالصرف والمحاسبين العموميين."}, {"id": "B", "text": "الآمرين بالصرف فقط."}, {"id": "C", "text": "المحاسبين العموميين فقطر"}, {"id": "D", "text": "الخازن المكلف بالأداء."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 2 من المرسوم الملكي 330.66 بسن نظام عام للمحاسبة العمومية، تناط العمليات المالية والمحاسبية بـ الآمرين بالصرف والمحاسبين العموميين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q45', 'exam_2023_mgmt', 45, 'التدبير المالي والمادي والمحاسباتي', 'يقصد بالأعمال المبتكرة تلك التي يكون موضوعها:', false, '[{"id": "A", "text": "البحث أو التطوير وتتعلق بطرائق جديدة أو تصين طرائق موجودة."}, {"id": "B", "text": "البحث والتطوير وتتعلق بتحسين طرائق موجودة."}, {"id": "C", "text": "البحث والتطوير وتتعلق بطرائق جديدة."}, {"id": "D", "text": "البحث والتطوير وتتعلق بطرائق جديدة أو تصين طرائق موجودة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 4 (البند 23) من مرسوم الصفقات العمومية 2.22.431، يقصد بالأعمال المبتكرة تلك التي يكون موضوعها البحث والتطوير وتتعلق بطرائق جديدة أو تحسين طرائق موجودة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q46', 'exam_2023_mgmt', 46, 'التدبير المالي والمادي والمحاسباتي', 'الأمر بالصرف هو العمل الإداري الذي يحتوي طبقا لنتائج التصفية على:', false, '[{"id": "A", "text": "الأمر بأداء دين المنظمة العمومية."}, {"id": "B", "text": "الأمر بإثبات دين المنظمة العمومية."}, {"id": "C", "text": "الأمر بحصر دين المنظمة العمومية."}, {"id": "D", "text": "الأمر بالتخلاص دين المنظمة العمومية."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 35 من المرسوم الملكي 330.66، الأمر بالصرف (L''ordonnancement) هو العمل الإداري الذي يحتوي طبقاً لنتائج التصفية على الأمر بأداء دين المنظمة العمومية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q47', 'exam_2023_mgmt', 47, 'التدبير المالي والمادي والمحاسباتي', 'تم رفع مبلغ سندات الظئب من ({OO 200 د مع احتساب الرسوم إلى:', false, '[{"id": "A", "text": "000 250 د."}, {"id": "B", "text": "000 300 -."}, {"id": "C", "text": "OOO 0()4 د."}, {"id": "D", "text": "000 500:.."}]'::jsonb, ARRAY['D']::text[], 'بموجب المادة 91 من مرسوم الصفقات العمومية الجديد 2.22.431، تم رفع سقف الشراء بسندات الطلب من 200.000 درهم إلى 500.000 درهم مع احتساب الرسوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q48', 'exam_2023_mgmt', 48, 'التدبير المالي والمادي والمحاسباتي', 'يعرف التسيير الحر للأصل التجاري بكونه:', false, '[{"id": "A", "text": "عقد يوافق بمقتضاه مالك الأصل التجاري أو مستغله على إكرائه كلا أو بعضا لمسير يستغله تحت مسؤوليته."}, {"id": "B", "text": "عقد يوافق بمقتضاه مالك الأصل التجاري أو مستغله على إكرائه كلا أو بعضا لمسير يستغله تحت مسؤولية المستغل."}, {"id": "C", "text": "عقد يوافق بمقتضاه مالك الأصل التجاري أو مستغله على إكرائه كلا أو بعضا لمسير يستغله تحت مسؤولية المالك."}, {"id": "D", "text": "عقد يوافق بمكضاه مالك الأصل التجاري أو مستغله على تفويته كلا أو بعضا لمسير يستغله تحت مسؤوليته."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 152 من مدونة التجارة، يعرف التسيير الحر (Gérance libre) للأصل التجاري بكونه عقداً يوافق بمقتضاه مالك الأصل التجاري أو مستغله على إكرائه كلاً أو بعضاً لمسير يستغله تحت مسؤوليته (أي لحسابه الخاص وعلى مسؤوليته دون التزام المالك).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q49', 'exam_2023_mgmt', 49, 'التدبير المالي والمادي والمحاسباتي', 'يقصد بالمداخيل الطارنة؛', false, '[{"id": "A", "text": "المبالغ المالية التي تتحصل عليها المؤسسة من اتفاقيات الشراكة مع مؤسسات التعليم الخصوصي."}, {"id": "B", "text": "مبالغ مالية غير منتظرة وغير متوقعة تحول إلى الحساب البنكي المفتوح باسم المؤسسة."}, {"id": "C", "text": "المبالغ الملية المستخلصة من طرف المؤسسة وغر المنصوص عليها قانونيا."}, {"id": "D", "text": "المبالغ المالية التي تتوصل بها المؤسسة كهبة من طرف جمعيات ومنظمات خارجية."}]'::jsonb, ARRAY['B']::text[], 'المداخيل الطارئة (أو الاستثنائية/المتنوعة) هي مبالغ مالية غير منتظمة وغير متوقعة ترد على حساب المؤسسة (كاسترجاع مبالغ أديت خطأً أو تحويلات طارئة...).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q50', 'exam_2023_mgmt', 50, 'المحاسبة العمومية والمالية', 'تبرز المحاسبة الإدارية:', false, '[{"id": "A", "text": "تنفيذ ترخيصات الميزائية من قبل المحاسبين العموميين."}, {"id": "B", "text": "إعداد ترخيصات الميزانية من قبل المحاسبين العموميين."}, {"id": "C", "text": "تنفيذ ترخيصات الميزائية من قبل الأمرين بالصرف."}, {"id": "D", "text": "إعداد ترخيصات الميزائية من قبل الأمرين بالصرف."}]'::jsonb, ARRAY['C']::text[], 'المحاسبة الإدارية تبرز وتعرض تنفيذ ترخيصات الميزانية من قبل الآمرين بالصرف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q51', 'exam_2023_mgmt', 51, 'الصفقات العمومية', 'يفصد بصفقة الخدمات، تلك التي يكون موضوعها؛', false, '[{"id": "A", "text": "إنجاز أعمال خدماتية ويمكن وصفها بأشغال وتوريدات."}, {"id": "B", "text": "إنجاز أعمال خدماتية ولا يمكن وصفها بأشغال أو بتوريدات."}, {"id": "C", "text": "إنجاز أعمال خدماتية ويمكن وصفها بأشغال أو بتوريدات."}, {"id": "D", "text": "إنجاز أعمال خدماتية ويمكن وصفها بتوريدات فقط."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 4 (البند 19 - ج) من مرسوم الصفقات العمومية 2.22.431، يقصد بصفقة الخدمات تلك التي يكون موضوعها إنجاز أعمال خدماتية لا يمكن وصفها بأشغال أو بتوريدات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q52', 'exam_2023_mgmt', 52, 'التدبير المالي والمادي والمحاسباتي', 'يقصد بسجل مصاريف الذخائر الوثيقة التي:', false, '[{"id": "A", "text": "تفيد بأن التلميذ غير مطالب بأداء أية مستحقات."}, {"id": "B", "text": "تثبت أن التلميذ لم يتسبب بالإتلاف العمد للممتلكات."}, {"id": "C", "text": "تسجل فيها المبالغ المالية المرجعة للتلاميذ الداخليين."}, {"id": "D", "text": "تسجل فيها المبالغ المالية التي تم خصمها للتلاميذ الداخليين."}]'::jsonb, ARRAY['D']::text[], 'سجل مصاريف الذخائر (أو الاقتطاعات من الضمانات) هو الوثيقة التي تسجل فيها المبالغ المالية التي تم خصمها للتلاميذ الداخليين (لتغطية الإتلافات أو تسبيقات الأدوية والسفر...).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q53', 'exam_2023_mgmt', 53, 'التدبير المالي والمادي والمحاسباتي', 'يطن عن الإبراء من الديون بما فيها الأصل أو الفوائد بموجب مرسوم يتخذ باقتراح من:', false, '[{"id": "A", "text": "المحاسب العمومي."}, {"id": "B", "text": "وزير المالية."}, {"id": "C", "text": "الأمر بالصرف الرئيسي."}, {"id": "D", "text": "الخازن المكلف بالأداء."}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 130 من المرسوم الملكي 330.66، يعلن عن الإبراء من الديون (Remise gracieuse) بما فيها الأصل أو الفوائد بموجب مرسوم يتخذ باقتراح من وزير المالية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q54', 'exam_2023_mgmt', 54, 'الصفقات العمومية', 'يقصد بصاحب مشروع منتدب في مجال الصفقات العمومية؛', false, '[{"id": "A", "text": "كل شركة للتنمية أو شركة للتنمية الجهوية أو شركة للتنمية المحلية أنيطت بها كل مهام صاحب المشروع أو بعضها."}, {"id": "B", "text": "كل مؤسسة عمومية أو إدارة عمومية أو شركة للدولة أو شركة تابعة لها أو شركة تابعة عامة أنيطت بها كل مهام صاحب المشروع أو بعضها."}, {"id": "C", "text": "كل مؤسسة شبه عمومية أو إدارة عمومية أو شركة الدرذة أو شركة تابعة لها أو شركة تابعة عامة أو شركة للتنمية الجهوية أو شركة للتنمية أو شركة للتنمية المحلية انيطت بها كل هام صاحب المشروع أو بعضها."}, {"id": "D", "text": "كل مؤسسة عمومية أو إدارة عمومية أو شركة للدولة أو شركة تابعة لها أو شركة تابعة عامة أو شركة للتنمية الجهوية أو شركة للتنمية أو شركة للتنمية المحلية أنيطت بها كل مهام صاحب المشروع أو بعضها."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 4 (البند 18) والمادة 161 من مرسوم الصفقات العمومية 2.22.431، يقصد بصاحب مشروع منتدب: كل مؤسسة عمومية أو إدارة عمومية أو شركة للدولة أو شركة تابعة لها أو شركة تابعة عامة أو شركة للتنمية الجهوية أو شركة للتنمية أو شركة للتنمية المحلية أنيطت بها كل مهام صاحب المشروع أو بعضها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q55', 'exam_2023_mgmt', 55, 'التدبير المالي والمادي والمحاسباتي', 'تشمل الرقابة المالية:', false, '[{"id": "A", "text": "الوقت المناسب، إضافة إلى المحافظة على المال العام من عمليات الاختلاس أو الضياع أو سوء الاستعمال."}, {"id": "B", "text": "الوقت المناسب."}, {"id": "C", "text": "المحافظة على ألمال العام من عمليات الاختلاس أو الضياع أو سوء الاستعمال."}, {"id": "D", "text": "الوقت المناسب، إضافة إلى المحافظة على المال العام من عمليات الاختلاس أو الضياع أو سوء الاستعمال."}]'::jsonb, ARRAY['A']::text[], 'تشمل الرقابة المالية بمعناها الشامل مجموع العمليات اللازمة لمتابعة أعمال تنفيذ الخطط والسياسات الموضوعة بقصد التعرف على الانحرافات ومعالجتها في الوقت المناسب، إضافة إلى المحافظة على المال العام من عمليات الاختلاس أو الضياع أو سوء الاستعمال.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q56', 'exam_2023_mgmt', 56, 'التدبير المالي والمادي والمحاسباتي', 'الصفحة', false, '[{"id": "A", "text": "كل: موضوع حول التدبير المادي والمالي والمحاسبائي لمؤمسات التربية والنطيم العمومي"}, {"id": "B", "text": "يقصد بجدول الأثمان في الصفقات العمومية؛ الوثيقة التي تتضمن تفصيلا حسب كل وحدة من الأعمال التي يتعين تنفيذها وتبين الثمن الأحادي المطبق."}, {"id": "C", "text": "الوثيقة التي تتضمن تفصيلا حسب كل وحدة من الأعمال التي يتعين تنفيذها وتبين الثمن الجزافي."}, {"id": "D", "text": "الوثيقة التي تتضمن تفصيلا حسب كل وحدة من الأعمال التي يتعين تنفيذها وتبين بالنسبة لكل وحدة الثمن المطبق عليها. الوثيقة التي تتضمن تفصيلا حسب كل وحدة من الأعمال التي يتعين تنفيذها وتبين الثمن الإجمالي."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 4 (البند 5) من مرسوم الصفقات العمومية 2.22.431، يقصد بجدول الأثمان (Bordereau des prix): الوثيقة التي تتضمن تفصيلاً حسب كل وحدة من الأعمال التي يتعين تنفيذها وتبين بالنسبة لكل وحدة الثمن المطبق عليها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q57', 'exam_2023_mgmt', 57, 'التدبير المالي والمادي والمحاسباتي', 'يتحدد مبلغ وجبة الغذاء أو تتمة نصف منحة بمؤسسة داخلية خلال شهر واحد في مبلغ؛', false, '[{"id": "A", "text": "300 د"}, {"id": "B", "text": "350 د"}, {"id": "C", "text": "400 د."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'بما أن المنحة الكاملة في الثلاثي (3 أشهر) هي 1800 درهم (أي 600 درهم في الشهر)، فإن تتمة نصف منحة أو وجبة الغذاء خلال شهر واحد تتحدد في نصف هذا المبلغ أي 300 درهم (900 درهم عن كل دورة من ثلاثة أشهر).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q58', 'exam_2023_mgmt', 58, 'الصفقات العمومية', 'يقصد ببوابة الصفقات العمومية؛', false, '[{"id": "A", "text": "النظام المركزي لتسجيل المقاولين والموردين والخدماتيين على مستوى بوابة الصفقات العمومية."}, {"id": "B", "text": "النظام الجهوي لتسجيل المقاولين والموردين والخدماتيين على مستوى بوابة الصفقات العمومية."}, {"id": "C", "text": "المنصة الجهوية لتجريد مساطر إبرام الصفقات العمومية من الصفة المادية."}, {"id": "D", "text": "المنصة الوطنية لتجريد مساطر إبرام الصفقات العمومية من الصفة المادية."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 4 (البند 21) من مرسوم الصفقات العمومية 2.22.431، يقصد ببوابة الصفقات العمومية: المنصة الوطنية لتجريد مساطر إبرام الصفقات العمومية من الصفة المادية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q59', 'exam_2023_mgmt', 59, 'التدبير المالي والمادي والمحاسباتي', 'يعتبر التمثيل المبياني بالأعمدة التمثيل الأنسب في حالة:', true, '[{"id": "A", "text": "المتغير الكمي المتصل."}, {"id": "B", "text": "المتغير الكمى المنفصل."}, {"id": "C", "text": "المتغير النوعي."}, {"id": "D", "text": "المتغير الكمي أو النوعي."}]'::jsonb, ARRAY['C', 'B']::text[], 'التمثيل المبياني بالأعمدة (Diagramme en barres / à bâtons) يستعمل لتمثيل المتغير النوعي وكذلك المتغير الكمي المنفصل (بينما المتغير الكمي المتصل يمثل بالمدراج Histogramme). وفي التصنيف القياسي للإحصاء، الأعمدة المنفصلة (Barres) تقابل المتغير النوعي، والعصي (Bâtons) تقابل الكمي المنفصل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q60', 'exam_2023_mgmt', 60, 'الصفقات العمومية', 'يقصد بالتفصيل الفرعي للأثمان في مجال الصفقات العمومية:', false, '[{"id": "A", "text": "الوثيقة التي تبين، بالنسبة لكل ثمن من أثمان الجدول أو بالنسبة للأثمان المشار إليها فقط في دفتر الشروط الخاصة، التوريدات واليد العاملة ومصاريف تصيير المعدات والمصاريف العامة والرسوم والهوامش."}, {"id": "B", "text": "الوثيقة التي تبين، بالنسبة لكل ممن من أثمان الجدول أو بالنسبة للأثمان المشار إليها فقط في دفتر الشروط الخاصة، مبلغ المواد والتوريدات واليد العأماة (مصاريف تسيير المعدات والمصاريف العامة والرسوم والهوامش."}, {"id": "C", "text": "الوثيقة التي تبين، بالنسبة اكل ثمن من أثمان الجدول أو بالنسبة للأثمان المشار إليها فقط في دفتر الشروط الخاصة، الكميات ومبلغ المواد والتوريدات واليد العاملة ومصاريف تسيير المعدات والمصاريف العامة والرسوم والهوامش."}, {"id": "D", "text": "الوثيقة التي تبين، بالنسبة لكل ثمن من أثمان الجدول أو بالنسبة للأثمان المشار إليها فقط في دفتر الشروط الخاصة، الكميات ومبلغ المواد والتوريدات واليد العاملة ومصاريف تسيير المعدات والمصاريف العامة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 4 (البند 11) من مرسوم الصفقات العمومية 2.22.431، يقصد بالتفصيل الفرعي للأثمان (Sous-détail des prix): الوثيقة التي تبين، بالنسبة لكل ثمن من أثمان الجدول أو بالنسبة للأثمان المشار إليها فقط في دفتر الشروط الخاصة، الكميات ومبلغ المواد والتوريدات واليد العاملة ومصاريف تسيير المعدات والمصاريف العامة والرسوم والهوامش.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q61', 'exam_2023_mgmt', 61, 'الصفقات العمومية', 'يقصد بالبيان التقديري المفصل في مجال الصفقات العمومية؛', false, '[{"id": "A", "text": "الوثيقة التي تتضمن بالنسبة لصفقة بأثمان أحادية، تفصيلا للأعمال المراد تنفيذها حسب كل وحدة وتبين بالنسبة لكل وحدة الكمية المفترضة دون الثمن الأحادي المطابق في جدول الأثمان."}, {"id": "B", "text": "الوثيقة التي تتضمن بالنسة لصفقة بأثمان أحادية، تفصيلا للأعمال المراد تنفيذها حسب كل وحدة وتبين بالنسبة لكل وحدة الكمية المفترضة والثمن الأحادي المطابق في جدول الأثمان"}, {"id": "C", "text": "الوثيقة التي تتضمن بالنسبة لصفقة بأثمان أحادية، تفصيلا للأعمال المراد تنفيذها حسب كل وحدة وتبين بالنسبة لكل وحدة الكمية المفترضة والثمن الإجمالي المطابق في جدول الأثمان."}, {"id": "D", "text": "الوثيقة التي تتضمن بالنسبة لصفقة بأثمان أحادية، تفصيلا للأشغال فقط المراد تنفيذها حسب كل وحدة دون أن تبين بالنسبة لكل وحدة الكمية المفترضة أو الثمن الأحادي المطابق في جدول الأثمان."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 4 (البند 8) من مرسوم الصفقات العمومية 2.22.431، يقصد بالبيان التقديري المفصل (Détail estimatif): الوثيقة التي تتضمن بالنسبة لصفقة بأثمان أحادية، تفصيلاً للأعمال المراد تنفيذها حسب كل وحدة وتبين بالنسبة لكل وحدة الكمية المفترضة والثمن الأحادي المطابق في جدول الأثمان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q62', 'exam_2023_mgmt', 62, 'التدبير المالي والمادي والمحاسباتي', 'لا يمكن أداء الأوامر بالصرف أو الحوالات إلا بعد التأشير عليها من طرف:', false, '[{"id": "A", "text": "المحاسب المكلف بالنفقات."}, {"id": "B", "text": "المحاسب المكلف بالمداخيل"}, {"id": "C", "text": "الأمر بالصرف المكلف بالنفقات."}, {"id": "D", "text": "الأمر بالصرف المكلف بالمداخيل."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 11 و 41 من المرسوم الملكي 330.66، لا يمكن أداء الأوامر بالصرف أو الحوالات إلا بعد التأشير عليها ("صالح للأداء - Vu bon à payer") من طرف المحاسب المكلف بالنفقات (المحاسب العمومي المختص). (أما الآمر بالصرف فهو يصدر ويوقع الأمر بالصرف ولا يؤشر عليه للأداء).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q63', 'exam_2023_mgmt', 63, 'المحاسبة العمومية والمالية', 'تتطلب عملية أداء النفقات على مستوى مؤسسة تعليمية توفر؛', false, '[{"id": "A", "text": "سند الطلب والفاتورة."}, {"id": "B", "text": "سند التسليم والفتررة."}, {"id": "C", "text": "سند الطلب وسئد التسليم."}, {"id": "D", "text": "سند الطلب وسند التسليم والفاتورة."}]'::jsonb, ARRAY['D']::text[], 'تتطلب تصفية وأداء النفقات في إطار الشراء بسندات الطلب توفر الإثباتات الثلاثة المتكاملة: سند الطلب (الالتزام)، وسند التسليم (إثبات العمل المنجز)، والفاتورة (تصفية المبلغ).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q64', 'exam_2023_mgmt', 64, 'الصفقات العمومية', 'نقصد بمخطط التحمل في مرسوم الصفقات العمومية الجديد:', false, '[{"id": "A", "text": "الأعمال والأشغال الواجب على نائل الصفقة إنجازها."}, {"id": "B", "text": "التصريح الذي يعده المتنافس والذي يبين الصفقات العمومية التي يتولى تنفيذها عند تقديم عرضه إلى صاحب المشروع\""}, {"id": "C", "text": "تحمل نائل الصفقة للأخطاء الناتجة عنه خلال إنجاز الأشغال."}, {"id": "D", "text": "التصريح الذي يعده نائل الصفقة عند تأخره في إنجاز الأشغال."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 4 (البند 16) من مرسوم الصفقات العمومية 2.22.431، يقصد بمخطط التحمل (Plan de charge): التصريح الذي يعده المتنافس والذي يبين الصفقات العمومية التي يتولى تنفيذها عند تقديم عرضه إلى صاحب المشروع.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q65', 'exam_2023_mgmt', 65, 'المحاسبة العمومية والمالية', 'تناط مراقبة تصرف المحاسبين العموميين في عين المكان ب:', false, '[{"id": "A", "text": "الخازن المكلف بالأداء أو الخازن العام العامل بتفويض منه."}, {"id": "B", "text": "قاضي الحسابات أو الخازن المكلف بالأداء. قاضي الحسابات أو الخازن العام العامل بتفويض منه."}, {"id": "C", "text": "الخازن العام العامل بتفويض من قاضي ؤ» أو الأمر بالصرف الرئيسي."}, {"id": "D", "text": "تعتبر ذخائر الداخليين بمثابة مداخيل عنى شكل ودائع تستخلص بداية كل موسم دراسي وترجع في نهاية الموسم الدراسي، يلجأ إليها التلاميذ للحصول على تسبيقات لكرا» الأدوية أو تغطية مصاريف السفر أو مصاريف الخرجات الكبرى. تبلغ"}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 100 من المرسوم الملكي 330.66، تناط مراقبة تصرف المحاسبين العموميين في عين المكان برؤسائهم الإداريين وبـ قاضي الحسابات أو الخازن المكلف بالأداء وهيئات التفتيش المختصة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q66', 'exam_2023_mgmt', 66, 'التدبير المالي والمادي والمحاسباتي', 'قيمة الذخيرة المحددة بالنسبة لتلاميذ ألنطيم الثانوي الإعدادي؛', false, '[{"id": "A", "text": "50 د"}, {"id": "B", "text": "IOO د."}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تبلغ قيمة الذخيرة (ضمانة الداخلي) المحددة بالنسبة لتلاميذ التعليم الثانوي الإعدادي في 50 درهماً (و100 درهم بالثانوي التأهيلي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q67', 'exam_2023_mgmt', 67, 'الصفقات العمومية', 'يحدد صاحب المشروع خلال مدة إنجاز الصفقة القابلة للتجديد؛', false, '[{"id": "A", "text": "ربع كميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها."}, {"id": "B", "text": "ثلاثة أرباع كميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها."}, {"id": "C", "text": "كميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها."}, {"id": "D", "text": "كميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 8 من مرسوم الصفقات العمومية 2.22.431، يحدد صاحب المشروع خلال مدة إنجاز الصفقة القابلة للتجديد كميات الأعمال المزمع إنجازها وأجل تنفيذها بالنسبة لكل طلبية حسب الحاجات المراد تلبيتها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q68', 'exam_2023_mgmt', 68, 'التدبير المالي والمادي والمحاسباتي', 'الصفم', false, '[{"id": "A", "text": "l3"}, {"id": "B", "text": "إلإختبر: موضوع حول التديير المادي والمالي والمحاسباتي لمؤسسات التربية والتطيم العمو"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 13 من القانون التنظيمي لقانون المالية 130.13، يتم احتساب الرصيد المتوقع للميزانية العامة للدولة على أساس الفرق بين الموارد دون حصيلة الاقتراضات والتكاليف دون النفقات المتعلقة باستهلاك الدين المتوسط والطويل الأجل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q69', 'exam_2023_mgmt', 69, 'التدبير المالي والمادي والمحاسباتي', 'يتم احتساب الرصيد المتوقع للميزانية العامة للدولة على أساس الفرق بين؛', false, '[{"id": "A", "text": "الموارد دون حصيلة الاقتراضاك والتكاليف مع احتساب النفقات المتعلقة باستهلاك الدين المتوسط والطويل الأجل."}, {"id": "B", "text": "الموارد دون حصيلة الاقتراضاك والتكاليف دون النفقاك المتعلقة باستهلاك الدين المتوسط والطويل الأجل"}, {"id": "C", "text": "الموارد مع احتساب حصيلة الاقتراضات والتكليف مع احتساب النفقات المتعلقة باستهلاك الدين المتوسط والطويل الأجل."}, {"id": "D", "text": "الموارد مع احتساب حصيلة الاقتراضاك والتكليف مع احتساب النفقات المتعلقة بفوائد الدين المتوسط والطويل الأجل."}, {"id": "E", "text": "من بين الحالات التي يئم فيها اللجوء إلى الصفقات التفاوضية بدون إشهار مسبق وبدون إجراء منافسة، طبقا للنصوص"}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 89 من مرسوم الصفقات العمومية 2.22.431، من الحالات التي يجوز فيها إبرام صفقات تفاوضية بدون إشهار مسبق وبدون إجراء منافسة: الأعمال التي كانت موضوع مسطرة طلب عروض أعلن عن عدم جدواها (من ضمن شروطها إذا لم يعبر أي متنافس عن رغبته في المشاركة في طلب العروض ولم يقدم أي عرض).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q70', 'exam_2023_mgmt', 70, 'التدبير المالي والمادي والمحاسباتي', 'التشريية والتنظيمية الجاري بها العمل؛', false, '[{"id": "A", "text": "رغية صاحب المشروع التعاقد مع متناض أجنبي."}, {"id": "B", "text": "عدم اقتناع صاحب المشروع بأي عرض مقدم من طرف المتنافسين."}, {"id": "C", "text": "إذا لم يعبر أي متنافس عن رغبته في المشاركة في طلب العروض."}, {"id": "D", "text": "الأعمال المنجزة لدى المؤسسات العمومية التي تتمتع بالحصرية."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 8 من مرسوم الصفقات العمومية 2.22.431 (في الصفقات القابلة للتجديد)، يمكن أن يمنح لصاحب الصفقة تعويض يدعى "تعويض العدول عن الإنجاز" (Indemnité de dédit) إذا نصت الصفقة على ذلك ووفق الشروط التي تحددها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q71', 'exam_2023_mgmt', 71, 'الصفقات العمومية', 'يمنح لصاحب الصفقة تعويض يدعى "تعويض الدول عن الإثجاز"؛', false, '[{"id": "A", "text": "إذا قرر بعد البداية العدول عن إتمام الإنجاز. إذا نصت الصفقة على ذلك ووفق الشروط التي تحددها."}, {"id": "B", "text": "إذا لم تنص الصفقة لى ذلك. إذا قرر العدول عن الإنجاز."}, {"id": "C", "text": "بالنسبة لصفقات الأشغال والتوريدات والخدمات غير تلك المتعلقة بالدراسات، تقصى العروض المفرطة التي تتجاوز أكثر 100/0 من المبلغ التقديري لكلفة الأعمل"}, {"id": "D", "text": "150/0 من المبلغ التقديري لكلفة الأعا 0/0()2 من المبلغ التقديري لكلفة الأر؟ %25 من المبلغ التقديري لكلفة الأعرر ."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 44 من مرسوم الصفقات العمومية 2.22.431، يعتبر مفرطاً ويقصى كل عرض مالي يتجاوز بأكثر من عشرين في المائة (20%) المبلغ التقديري لكلفة الأعمال المعد من لدن صاحب المشروع بالنسبة لصفقات الأشغال والتوريدات والخدمات غير تلك المتعلقة بالدراسات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q72', 'exam_2023_mgmt', 72, 'التدبير المالي والمادي والمحاسباتي', 'يقصد بسجل الصندوق، الوثيقة التي تدون فيها:', false, '[{"id": "A", "text": "مداخيل ومصاريف المؤسسة."}, {"id": "B", "text": "مداخيل المؤسسة."}, {"id": "C", "text": "ميزانية جمعية دعم مدرسة النجاح"}, {"id": "D", "text": "مصاريف المؤسسة."}]'::jsonb, ARRAY['A']::text[], 'يقصد بسجل الصندوق (Livre de caisse) الوثيقة المحاسبية التي تدون فيها حركية النقود من مداخيل ومصاريف المؤسسة المؤداة نقداً قصد ضبط الرصيد النقدي المتوفر في الصندوق يومياً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q73', 'exam_2023_mgmt', 73, 'الصفقات العمومية', 'يمكن إبرام صفقات تدعى "صفقات قابلة للتجديد"؛', false, '[{"id": "A", "text": "إذا أمكن لصاحب المشروع تحديد كميات الأعمال مسبقا، بأكبر قدر ممكن من الدقة، والتي تكتسي طابعا توقعيا غير متكرر"}, {"id": "B", "text": "ولادائم إذا أمكن لصاحب المشروع تحديد كميات الأعمال مسبقا، بأكبر قدر ممكن من الدقة، والتي تكتسي طابعا دائما ومتكررا دون"}, {"id": "C", "text": "أن بيكون توقعيا إذا أمكن لصاحب المشروع تحديد كميات الأعمال مسبقا، بأكبر قدر ممكن من الدقة، والتي تكتسي طابعا متكررا غير دائم."}, {"id": "D", "text": "إذا أمكن لصاحب المشروع تحديد كميات الأعمال مسبقا، بأكبر قدر ممكن من الدقة، والتي تكتسي طابعا توقعيا ومتكررا ودائما."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 8 من مرسوم الصفقات العمومية 2.22.431، يمكن إبرام "صفقات قابلة للتجديد" إذا أمكن لصاحب المشروع تحديد كميات الأعمال مسبقاً، بأكبر قدر ممكن من الدقة، والتي تكتسي طابعاً توقعياً ومتكرراً ودائماً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q74', 'exam_2023_mgmt', 74, 'التدبير المالي والمادي والمحاسباتي', 'والتكو بن لثو لبف مطئصي الالئصاد والإلاارا من الدرجة الثالوة » درر 2023', false, '[{"id": "A", "text": "المو طو ع"}, {"id": "B", "text": "لموسساك الثرية و السو"}, {"id": "C", "text": "مهار الا ولرج المر از الجهرره لمهن الر"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ميزانية الاستغلال (أو التسيير) بالأكاديميات تشمل النفقات الجارية لتشغيل المؤسسات ومن ضمنها منح وتحويلات جمعية دعم مدرسة النجاح (بينما اقتناء التجهيزات والعتاد والبناء هي نفقات استثمار، ونفقات الدين العمومي خاصة بميزانية الدولة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q75', 'exam_2023_mgmt', 75, 'التدبير المالي والمادي والمحاسباتي', 'مشمل نلقاك مهز ائهة الإستفال؛', false, '[{"id": "A", "text": "لأناء التجهير اك ر العملا المعلو منع جمعة دعم مدرسة الئما . ء رالإمروح."}, {"id": "B", "text": "ثفقك النهن العمر مي. تهتم الو \" بي مجموع النشاطك للفاعلين الاقتصاديين داخل أو خارج التراب الوطئي عن طريق حسابات تدعى \"الحسابات الوطنية\" أو"}, {"id": "C", "text": "\"هك الالمة\" مجموع النشاطات للفاعلين الاقتصاديين الوطئيين لقط داخل التراب الوطني عن طريق حسابات تدعى \"الحسابات الوطنية\" أو \"حسابك الأمة\"."}, {"id": "D", "text": "مجموع النشاطك للفاعلين الاكصاديين داخل وخارج التراب الوطني عن طريق حسابات تدعى \"الحسابات الوطنية\" أو \"حساباك الأمة\". مجموع النشاطك للفاعلين الاقتصاديين الوطنيين والأجانب داخل التراب الوطني عن طريق حسابات تدعى \"الحسابات الوطنية\" أو \"حساباك الأمة\"\"."}]'::jsonb, ARRAY['A']::text[], 'تهتم المحاسبة الوطنية بقياس وتجميع مجموع النشاطات الاقتصادية للفاعلين الاقتصاديين المقيمين (سواء داخل أو خارج التراب الوطني ضمن الدخل القومي) عن طريق حسابات تدعى "الحسابات الوطنية" أو "حسابات الأمة". (يقبل أيضاً D باعتبار مبدأ "الإقامة فوق التراب الاقتصادي الوطني" للوطنيين والأجانب المقيمين هو أساس الحسابات الوطنية، لكن التعريف المدرسي المعتمد في المراجع الإدارية يطابق الصياغة A أو D).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q76', 'exam_2023_mgmt', 76, 'المحاسبة العمومية والمالية', 'تتشكل سجلات المحاسبة الإدارية المستعملة لتتبع تنليذ النفقات من؛', false, '[{"id": "A", "text": "سجل تقييد حقوق الدائنين والسجل اليومي للأوامر بالصرف أو الحوالات وسجل الحسابات حسب أبواب النفقات."}, {"id": "B", "text": "سجل تقييد حقوق الدائنين والسجل اليومي للأوامر بالصرف أو الحوالات وسجل الحسابات حسب نوع المداخيل."}, {"id": "C", "text": "سجل تقييد حقوق المدينين والسجل اليومي للأوامر بالصرف أو الحوالات وسجل الحسابات حسب أبواب النفقات."}, {"id": "D", "text": "سجل تقييد حقوق المدينين والسجل اليومي للأوامر بالصرف أو الحوالات وسجل الحسابات حسب نوع المداخيل."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 59 من المرسوم الملكي 330.66، تتشكل سجلات المحاسبة الإدارية المستعملة لتتبع تنفيذ النفقات من: سجل تقييد حقوق الدائنين، والسجل اليومي للأوامر بالصرف أو الحوالات، وسجل الحسابات حسب أبواب النفقات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q77', 'exam_2023_mgmt', 77, 'التدبير المالي والمادي والمحاسباتي', 'الرسم البياني الأنسب لتمثيل المتغر الإحصاني ("أانج الباكلوريا لمؤسسة تعليمية خلال العشر سنوات الأخيرة" هو؛', false, '[{"id": "A", "text": "الرسم البياني بالأعمدة."}, {"id": "B", "text": "الرسم البياني الخطي."}, {"id": "C", "text": "الرسم البيائي الدائري."}, {"id": "D", "text": "الرسم البياني المساحي."}]'::jsonb, ARRAY['B']::text[], 'لتمثيل تطور ظاهرة أو متغير إحصائي عبر الزمن (خلال العشر سنوات الأخيرة)، فإن التمثيل البياني الأنسب هو الرسم البياني الخطي (المنحنى التطوري).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q78', 'exam_2023_mgmt', 78, 'التدبير المالي والمادي والمحاسباتي', 'يتطلب إنجاز سند طلب على الأقل استشارة؛', false, '[{"id": "A", "text": "متذافس واحد."}, {"id": "B", "text": "متنافسين اثنين."}, {"id": "C", "text": "ثلاثة متنافسين."}, {"id": "D", "text": "أربعة متنافسين."}, {"id": "E", "text": "("}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 91 من مرسوم الصفقات العمومية، يتطلب إنجاز سند طلب دراسة عروض ومنافسة مسبقة تشمل على الأقل الحصول على ثلاثة (03) بيانات أثمان متنافسة (ثلاثة متنافسين) ما لم يتعذر ذلك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q79', 'exam_2023_mgmt', 79, 'التدبير المالي والمادي والمحاسباتي', 'الصفحة', false, '[{"id": "A", "text": "إلاخثيار: موضوع حول التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والنطيم العمومي عقب جرد علب الأوراق في مخزون (StOCk) شهر أكتوبر 2023 بإحدى المديريات الإقليمية، تم التوصل إلى المعطيات التالية: سعر الوحدة بالدرهم عدد الوحدات"}, {"id": "B", "text": "IOO العملية مخزون الانطلاق شراء رقما استعمل رقم"}, {"id": "C", "text": "شراء رقم 2 استعمال رقم 2 استعمال رقم 3 2023/10/05 2023/10/08"}, {"id": "D", "text": "2023/10/15 2023/10/23 2023/10/26 2023/10/30 قيمة مجمل استعمالات علب الأوراق لشهر أكتوبر 2023 بالدرهم، بحسب طريقة \" de fin CMUP"}]'::jsonb, ARRAY['D']::text[], 'قيمة مجمل استعمالات علب الأوراق لشهر أكتوبر 2023: \text{قيمة الاستعمالات} = 1\,000 \text{ وحدة} \times 80 \text{ د} = \mathbf{80\,000 \text{ د}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_mgmt_q80', 'exam_2023_mgmt', 80, 'التدبير المالي والمادي والمحاسباتي', 'période" هب:', false, '[{"id": "A", "text": "OOO 86 د 000 84 د."}, {"id": "B", "text": "OOO 82 د. OOO 80 د. قيمة المخزون لطب الأوراق بتاريخ 2023/10/31 بالدرهم، بحسب طريقة \"période de fin CMUP\""}, {"id": "C", "text": "ف: OOO 8 د. 000 9 د."}, {"id": "D", "text": "OOO IO د. OOO 11د. Q8O"}]'::jsonb, ARRAY['A']::text[], 'قيمة المخزون النهائي بتاريخ 31/10/2023: \text{قيمة المخزون النهائي} = 100 \text{ وحدة} \times 80 \text{ د} = \mathbf{8\,000 \text{ د}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;

-- أسئلة امتحان: امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2023) (60 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q1', 'exam_2023_tasks', 1, 'الاختصاصات والمهام والحياة المدرسية', 'تسمى الوثيقة التي تسعى إلى تحقيق منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التريية', false, '[{"id": "A", "text": "والتكرين:"}, {"id": "B", "text": "المشروع البيداغوجي."}, {"id": "C", "text": "المشروع التربوي."}, {"id": "D", "text": "المشروع الشخصي للمتعلم."}, {"id": "E", "text": "مشروع المؤسسة المندمج."}]'::jsonb, ARRAY['D']::text[], 'نصت المذكرة الوزارية رقم 087/21 على أن مشروع المؤسسة المندمج هو الوثيقة التي تسعى إلى تحقيق منطوق المرجعيات التشريعية والتنظيمية والتربوية المؤطرة لنظام التربية والتكوين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q2', 'exam_2023_tasks', 2, 'مشروع المؤسسة ومستجدات المنظومة', 'ترئكز خارطة الطريق 2026-2022 على:', false, '[{"id": "A", "text": "عشر التزامات."}, {"id": "B", "text": "أحد عشر التزاما."}, {"id": "C", "text": "اثنا عشر التزاما."}, {"id": "D", "text": "ثلائة عشر التزاما."}]'::jsonb, ARRAY['C']::text[], 'ترتكز خارطة الطريق (2022-2026) من أجل مدرسة عمومية ذات جودة للجميع على اثنا عشر (12) التزاماً موزعة على ثلاثة محاور (التلميذ، الأستاذ، المؤسسة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q3', 'exam_2023_tasks', 3, 'مجالس المؤسسة والتنظيم التربوي', 'يجتمع مجلس القسم؛', false, '[{"id": "A", "text": "بداية كل دورة دراسية."}, {"id": "B", "text": "نهاية كل دورة دراسية."}, {"id": "C", "text": "بداية ونهاية كل دورة دراسية."}, {"id": "D", "text": "كلما دعت الضرورة لذلك."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 30 من المرسوم 2.02.376 (بمثابة النظام الأساسي الخاص بمؤسسات التربية والتعليم العمومي)، تجتمع مجالس الأقسام في نهاية الدورات الدراسية المحددة بموجب النظام المدرسي الجاري به العمل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q4', 'exam_2023_tasks', 4, 'الاختصاصات والمهام والحياة المدرسية', 'يسهر على حسن سير الدراسة والنظام في المؤسسة التطيمية وتوفير شروط الصحة والسلامة للأشخاص والممتلكات:', false, '[{"id": "A", "text": "رئيس المؤسسة."}, {"id": "B", "text": "حارس المؤسسة."}, {"id": "C", "text": "مسير المصالح المادية والمالية."}, {"id": "D", "text": "رئيس جمعية أمهات وأباء وأولياء التندميذ."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 11 من المرسوم 2.02.376، يقوم مدير المؤسسة (رئيس المؤسسة) بالسهر على حسن سير الدراسة والنظام في المؤسسة وتوفير شروط الصحة والسلامة للأشخاص والممتلكات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q5', 'exam_2023_tasks', 5, 'الاختصاصات والمهام والحياة المدرسية', 'يقوم مختص الاقتصاد والإدارة بمهمة:', false, '[{"id": "A", "text": "المساعدة في التدبير الإداري والتربوي والمالي والمادي."}, {"id": "B", "text": "المساعدة في التدبير الإداري والتربوي."}, {"id": "C", "text": "المواكبة النفسية والاجتماعية والصحية للمتعلم."}, {"id": "D", "text": "تدبير الأنشطة التربوية والأنشطة الموازية."}]'::jsonb, ARRAY['A']::text[], 'يساهم مختص الاقتصاد والإدارة ضمن أطر الدعم الإداري في المساعدة في التدبير الإداري والتربوي والمالي والمادي للمؤسسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q6', 'exam_2023_tasks', 6, 'الاختصاصات والمهام والحياة المدرسية', 'ينجز الإحصاء السنوي للأدوات والتجهيزات نهاية كل سنة دراسية من طرف:', false, '[{"id": "A", "text": "مسير المصالح المادية والمالية بتنسيق مع منسقي المواد المدرسة ومحضري المختبرات."}, {"id": "B", "text": "مسير المصالح المادية والمالية بتنسيق مع رئيس المؤسسة."}, {"id": "C", "text": "مسير المصالح المادية والمالية بتنسيق مع أعضاء مجلس التدبير."}, {"id": "D", "text": "مسير المصالح المادية والمالية لوحده."}, {"id": "E", "text": "\"B"}]'::jsonb, ARRAY['A']::text[], 'ينجز الإحصاء السنوي للأدوات والتجهيزات نهاية كل سنة دراسية (عملية المطابقة والتحقق من الجرد) من طرف مسير المصالح المادية والمالية بتنسيق مع منسقي المواد المدرسة ومحضري المختبرات (المسؤولين عن العهدة والعتاد الديداكتيكي والمخبري).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q7', 'exam_2023_tasks', 7, 'الاختصاصات والمهام والحياة المدرسية', 'الصفحة', false, '[{"id": "A", "text": "الموضو ع"}, {"id": "B", "text": "لا"}, {"id": "C", "text": ": موضو حول الاختصاصات أو المهام المرتبطة بالوظيلة المطلوب شغلها"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'من الأهداف الجوهرية لمشروع المؤسسة المندمج تجويد التعلمات وتشجيع ثقافة المبادرة والابتكار وتنمية المهارات الحياتية للمتعلمات والمتعلمين (بينما الخيارات A و C و D هي مراحل منهجية لإعداد وتتبع المشروع وليست الهدف الغائي منه).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q8', 'exam_2023_tasks', 8, 'مشروع المؤسسة ومستجدات المنظومة', 'يهدف مشروع المؤسسة المندمج إلى؛', false, '[{"id": "A", "text": "التتبع والتقويم في نهاية كل سنة دراسية على ضوء مؤشرات محددة."}, {"id": "B", "text": "تشجيع ثقافة المبادرة والابتكار وتلمية المهارات الحياتية المتعلمات والمتعلمين."}, {"id": "C", "text": "تحديد الأولويات وتخطيط الأنشطة."}, {"id": "D", "text": "تشخيص الوضعية الراهنة المؤسسة."}]'::jsonb, ARRAY['A']::text[], 'حسب دليل مسطرة مشروع المؤسسة المندمج (مرحلة التحديد والأجرأة)، يتم وضع تصور لإنجاز المشروع من أجل تدقيق الأولويات بترجمتها إلى أهداف يتم تخطيط العمليات على أساسها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q9', 'exam_2023_tasks', 9, 'مشروع المؤسسة ومستجدات المنظومة', 'يتم وضع تصور لإنجاز مشروع المؤسسة المندمج من أجل؛', false, '[{"id": "A", "text": "تدقيق الأولويات بترجمتها إلى اهداف يتم تخطيط العمليات على أساسها."}, {"id": "B", "text": "تدقيق الأولويات بترجمتها إلى غايات يتم تخطيط العمليات على أساسها."}, {"id": "C", "text": "تدقيق الأولويات بترجمتها إلى مرامي يتم تخطيط العمليات على أساسها."}, {"id": "D", "text": "تدقيق الأولويات بترجمتها إلى توجهات خاصة يتم تخطيط العمليات على أساسها."}]'::jsonb, ARRAY['C']::text[], 'المؤشر هو قيمة قابلة للملاحظة والقياس تستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q10', 'exam_2023_tasks', 10, 'الاختصاصات والمهام والحياة المدرسية', 'يعرف المؤشر بكونه قيمة؛', false, '[{"id": "A", "text": "قابلة للملاحظة وغير قابلة القياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "B", "text": "غير قابلة للملاحظة والقياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "C", "text": "قابلة للملاحظة والقياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}, {"id": "D", "text": "غير قابلة للملاحظة وقابلة القياس وتستعمل لتحديد مقدار التغيير أو التقدم الحاصل في إنجاز مشروع ما."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 18 من المرسوم 2.02.376، يندرج إبداء الرأي بشأن مشاريع اتفاقيات الشراكة التي تعتزم المؤسسة إبرامها ضمن اختصاصات مجلس التدبير.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q11', 'exam_2023_tasks', 11, 'الاختصاصات والمهام والحياة المدرسية', 'يندرج إبداء الرأي بشأن مشاريع اتفاقيات الشراكة التي تعتزم المؤسسة التعليمية إبرامها ضمن اختصاصات:', false, '[{"id": "A", "text": "المجلس التربوي."}, {"id": "B", "text": "المجلس التعليمي."}, {"id": "C", "text": "مجلس القسم."}, {"id": "D", "text": "مجلس التدبير."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 18 من المرسوم 2.02.376، تناط بـ مجلس التدبير مهمة دراسة برنامج العمل السنوي الخاص بأنشطة المؤسسة والمصادقة عليه، وكذلك دراسة برامج عمل المجلس التربوي والمجالس التعليمية والمصادقة عليها وإدراجها ضمن برنامج عمل المؤسسة. (ملاحظة: إعداد مشاريع البرامج التربوية والثقافية هو للمجلس التربوي، لكن وضع واعتماد البرنامج السنوي العام للمؤسسة هو لمجلس التدبير أو المجلس التربوي حسب زاوية الصياغة؛ وفي صياغة المرسوم المادة 23 المجلس التربوي يُعِدّ البرامج السنوية للعمل التربوي والأنشطة الداعمة والموازية، لذا يُقبل A أيضاً إذا قُصد به الإعداد).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q12', 'exam_2023_tasks', 12, 'الاختصاصات والمهام والحياة المدرسية', 'تناط مهمة وضع البرنامج السنوي العام لمختلف الأنشطة التعليمية والتقويمية والثقافية بالمؤسسة التطيمية:', false, '[{"id": "A", "text": "المجلس التربوي. المجلس التعليمي."}, {"id": "B", "text": "مجلس القسم. مجلس التدبير. تعرف المؤسسة العمومية بكونها:"}, {"id": "C", "text": "جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بالاستقلال المالي فقطر جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع عدم تمتع هذه الأشخاص بالاستقلال المالي"}, {"id": "D", "text": "والإداري. جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بالاستقلال المالي والإداري. جهاز يعهد بموجبه إلى أشخاص معنوية عامة بتسيير المرافق العامة مع تمتع هذه الأشخاص بالاستقلال الإداري فقط"}]'::jsonb, ARRAY['C']::text[], 'المؤسسة العمومية في القانون الإداري هي مرفق عام يدار من طرف أشخاص معنوية عامة مع تمتعها بـ الاستقلال المالي والإداري.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q13', 'exam_2023_tasks', 13, 'المحاسبة العمومية والمالية', 'تكتسب السجلات المحاسبية بالمؤسسات النلبمية فوتها الإثباتية والفانونية بعد؛', false, '[{"id": "A", "text": "ترقيمها والتاشير عليها من طرف مسير المصالح المادية والمالية."}, {"id": "B", "text": "ثر فبمها والتكير عليها من طرف مسير المصالح المادية والماية ورئيس المؤسسة."}, {"id": "C", "text": "ترفيمها والتشير عليها من طرف مسير المصالح المادية والمالية وعضو من مجاس التدبير."}, {"id": "D", "text": "ترقيمها والتاكير عليها من طرف رئيس المؤسسة."}]'::jsonb, ARRAY['D']::text[], 'تكتسب السجلات المحاسبية بالمؤسسة التعليمية قوتها الإثباتية والقانونية بعد ترقيمها والتأشير عليها من طرف رئيس المؤسسة قبل الشروع في استعمالها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q14', 'exam_2023_tasks', 14, 'الاختصاصات والمهام والحياة المدرسية', 'تنحصر مهام مختص الاقتصاد والإدارة المرتبطة بعمليات التوجيه في:', false, '[{"id": "A", "text": "الإعلام الكامل والمضبوط للمتعلمين."}, {"id": "B", "text": "الإسهام في تنظيم حملات التوجيه والإعلام."}, {"id": "C", "text": "تقويم القدرات وصعوبات التعلم."}, {"id": "D", "text": "إسداء المشورة بشأن عمليات الدعم البيداغوجي الضرورية."}]'::jsonb, ARRAY['B']::text[], 'تنحصر مهام مختص الاقتصاد والإدارة في مجال التوجيه في الإسهام في تنظيم حملات التوجيه والإعلام (أما الإعلام الكامل وإسداء المشورة وتقويم القدرات فهي من اختصاص أطر التوجيه التربوي والأساتذة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q15', 'exam_2023_tasks', 15, 'الاختصاصات والمهام والحياة المدرسية', 'يتكون المجلس التطليمي من:', false, '[{"id": "A", "text": "ناظر الدروس بصفته رئيسا وجميع مدرسي المواد."}, {"id": "B", "text": "الحارس العام للخارجية بصفته رئيسا وجميع مدرسي المواد."}, {"id": "C", "text": "الحارس العام للداخلية بصفته رئيسا بالنسبة المؤسسات التي تتوفر على الداخلية وجميع مدرسي المواد."}, {"id": "D", "text": "مدير المؤسسة بصفته رئيسا وجميع مدرسي مادة معينة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 27 من المرسوم 2.02.376، يتكون المجلس التعليمي في جميع الأسلاك من مدير المؤسسة بصفته رئيساً وجميع مدرسي المادة الدراسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q16', 'exam_2023_tasks', 16, 'الاختصاصات والمهام والحياة المدرسية', 'يطلق على عملية إحصاء وتسجيل وتتبع جميع تجهيزات وأدوات المؤسسة التعليمية:', false, '[{"id": "A", "text": "عملية الصيانة والوقاية."}, {"id": "B", "text": "عملية التتبع."}, {"id": "C", "text": "عملية الجرد."}, {"id": "D", "text": "عملية الترشيد."}]'::jsonb, ARRAY['C']::text[], 'تعرف عملية إحصاء وتسجيل وتتبع جميع تجهيزات وأدوات المؤسسة التعليمية بـ عملية الجرد (L''inventaire).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q17', 'exam_2023_tasks', 17, 'الاختصاصات والمهام والحياة المدرسية', 'يتحدد القسط السنوي الخاص بتأمين تلميذات وتلاميذ المسارات المهنية في العالم القروي في:', false, '[{"id": "A", "text": "15 د"}, {"id": "B", "text": "تندرج خدمات الإيواء والإطعام المدرسي والمنح الدراسية وتوفير الأدوات المدرسية والنقل المدرسي والدعم المالي"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المذكرة الوزارية رقم 057x20، يتحدد القسط السنوي الخاص بتأمين تلاميذ المسارات المهنية في العالم القروي في 20 درهماً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q18', 'exam_2023_tasks', 18, 'الاختصاصات والمهام والحياة المدرسية', 'المشروط التي تقدمها المؤسسات التطيمية في مجال؛', false, '[{"id": "A", "text": "أنشطة الحياة المدرسية."}, {"id": "B", "text": "خدمات التربية والتعليم."}, {"id": "C", "text": "خدمات الدعم الاجتماعي."}, {"id": "D", "text": "واجباك المؤسسة التعليمية."}]'::jsonb, ARRAY['C']::text[], 'تندرج خدمات الإيواء والإطعام والمنح ومبادرة مليون محفظة والنقل المدرسي وتيسير ضمن مجال خدمات الدعم الاجتماعي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q19', 'exam_2023_tasks', 19, 'الاختصاصات والمهام والحياة المدرسية', 'الصفحة', false, '[{"id": "A", "text": "يقوم مبدأ الحيطة أو الحذر (prudence de eم1٣n)، كمبدأ من مباد المحاسبة العامة، على أن:"}, {"id": "B", "text": "تقيد العائدات في المحاسبة العامة قبل اكتسابها من طرف المؤسسة ويجب قيد النفقات بعد أدائها."}, {"id": "C", "text": "لا تقيد العائدات في المحاسبة العامة إلا بعد اكتسابها نهائيا من طرف المؤسسة ويجب قيد النفقات بعد أدانها."}, {"id": "D", "text": "تقيد العائدات في المحاسبة العامة قبل اكتسابها من طرف المؤسسة ويجب قيد اللأخقات إذا كانت محتملة."}, {"id": "E", "text": "لا تقيد العائدات في المحاسبة العامة إلا بعد اكتسابها نهائيا ويجب قيد النفقات إذا كائت محتملة."}]'::jsonb, ARRAY['D']::text[], 'يقوم مبدأ الحيطة أو الحذر (Principe de prudence) في المحاسبة العامة على أنه لا تقيد العائدات إلا بعد اكتسابها نهائياً ويجب قيد النفقات (أو الأعباء والخسائر) بمجرد أن تصبح محتملة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q20', 'exam_2023_tasks', 20, 'المحاسبة العمومية والمالية', 'يقوم مبدأ الوضوح (éclart de Principe)، كمبدأ من مبادئ المحاسبة العامة، على:', false, '[{"id": "A", "text": "مسك العمليات والمعلومات في الحسابات المحددة لها وبالخانة المناسبة وبالتسمية الملائمة دون اعتماد المقاصة بينها."}, {"id": "B", "text": "مسك حساب النفقات والمداخيل لنفس السنة المالية مع إمكانية اعتماد المقاصة بينها."}, {"id": "C", "text": "مسك العمليات والمعلومات في الحسابات المحددة لها وبالخانة المناسبة وبالتسمية الملائمة مع اعتماد المقاصة بينها."}, {"id": "D", "text": "مسك حساب النفقات والمداخيل للسنة المالية الحالية والمقبلة دون اعتماد المقاصة بينها."}]'::jsonb, ARRAY['A']::text[], 'يقوم مبدأ الوضوح (Principe de clarté) على مسك العمليات والمعلومات في الحسابات المحددة لها وبالخانة المناسبة وبالتسمية الملائمة دون اعتماد المقاصة (Compensation) بينها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q21', 'exam_2023_tasks', 21, 'الاختصاصات والمهام والحياة المدرسية', 'نص مبدأ الاختصاص للسنوات الحسابية (exercices des spécialisation de principe Le) على أن:', false, '[{"id": "A", "text": "يتم إعداد الموازنات والتقارير المالية واحتساب اهتلاك الأصول على أساس احتمال توقف للنشاط."}, {"id": "B", "text": "تستفيد كل سنة حسابية من إيراداتها وتتحمل الأعباء المتعلقة بها."}, {"id": "C", "text": "يتم إعداد الموازنات والتقارير المالية واحتساب اهتلاك الأصول على أساس الاستمرار الدائم للنشاط."}, {"id": "D", "text": "تستفيد كل سنة حسابية من إيراداتها وتتحمل الأعباء المتعلقة بها وأعباء السنة التي قبلها."}]'::jsonb, ARRAY['B']::text[], 'ينص مبدأ تخصص السنوات المحاسبية (Spécialisation des exercices) على أن تستفيد كل سنة محاسبية من إيراداتها وتتحمل الأعباء المتعلقة بها فقط بصرف النظر عن تاريخ تحصيلها أو تسديدها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q22', 'exam_2023_tasks', 22, 'الاختصاصات والمهام والحياة المدرسية', 'تبين حصيلة المؤسسة؛', false, '[{"id": "A", "text": "عائدات المؤسسة وتكاليفها."}, {"id": "B", "text": "عناصر خصوم المؤسسة وعائداتها."}, {"id": "C", "text": "عناصر أصول المؤسسة وعائداتها."}, {"id": "D", "text": "عناصر أصول المؤسسة وخصومها."}]'::jsonb, ARRAY['D']::text[], 'تبين حصيلة المؤسسة (Le Bilan) الوضعية الذمية للمؤسسة من خلال عناصر أصول المؤسسة (Actif) وخصومها (Passif).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q23', 'exam_2023_tasks', 23, 'الاختصاصات والمهام والحياة المدرسية', 'يبرز جدول التمويل (financement de TabIeau):', false, '[{"id": "A", "text": "التطور المالي للمؤ"}, {"id": "B", "text": "سسة خلال النه الحسابية ويبين التكاليف التي ادتها."}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يبرز جدول التمويل (Tableau de financement) التطور المالي للمؤسسة خلال السنة المحاسبية ويبين الموارد (Ressources) التي توفرت لها واستخداماتها (Emplois).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q24', 'exam_2023_tasks', 24, 'الاختصاصات والمهام والحياة المدرسية', 'التطور المالي للمؤسسة ،خلال السئة الءسأبية ويبين الموارد والتكاليف الخاصة بها.', false, '[{"id": "A", "text": "التطور المالي للمؤسسة خلال الرنة الأبية ويبين الموارد التي توفرت لها واستخداماتها."}, {"id": "B", "text": "التطور المالي للمؤسسة خلال السئة ألحى ابية ويدين الموارد والتكاليف المثبتة في حساب العائدات والتكاليف."}, {"id": "C", "text": "يتحدد القسط السنوي الخاص بتأمين تلميذات وتلاميذ المسارات المهنية في العالم الحضري في:"}, {"id": "D", "text": "40 د."}]'::jsonb, ARRAY['A']::text[], 'حسب المذكرة الوزارية 057x20، يتحدد القسط السنوي الخاص بتأمين تلاميذ المسارات المهنية في العالم الحضري في 25 درهماً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q25', 'exam_2023_tasks', 25, 'مجالس المؤسسة والتنظيم التربوي', 'خلال اجتماع لمجلس القسم، تبين أن وسيط نقطة الرياضيات هو ()9,2. يقصد بهذا أن:', false, '[{"id": "A", "text": "غالبية تلاميذ القسم حصلوا على نقطة تساوي أو تفوق 9,20 في مادة الرياضيات."}, {"id": "B", "text": "50% من تلاميذ القسم حصلوا على نقطة تساوي أو تفوق ()9,2 في مادة الرياضيات."}, {"id": "C", "text": "غالبية تلاميذ القسم حصلوا على نقطة تساوي أو تقل عن ()9,2 في مادة الرياضيات."}, {"id": "D", "text": "50% من تلاميذ القسم حصلوا على نقطة تساوي 9,20 في مادة الرياضيات."}]'::jsonb, ARRAY['B']::text[], 'الوسيط (La médiane) يقسم السلسلة الإحصائية المرتبة إلى نصفين متساويين (50% لكل شطر)، وبالتالي فإن وسيطاً يساوي 9,20 يعني أن 50% من تلاميذ القسم حصلوا على نقطة تساوي أو تفوق 9,20 (و50% حصلوا على نقطة تساوي أو تقل عن 9,20).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q26', 'exam_2023_tasks', 26, 'الاختصاصات والمهام والحياة المدرسية', 'تعف الإحصائيات ب:', false, '[{"id": "A", "text": "قهم التربيعية التي تميز سلسلة إحمرائية."}, {"id": "B", "text": "طم بهتم بدارسة المعطيات المتعلقة بظاهرة معيذة. اتحراف المعياري الدي يمير بين سلسلتين إحصائيةين."}, {"id": "C", "text": "مجموعة من المعطيات المتعلقة بظاهرة معينة."}, {"id": "D", "text": "أظهرت الدراسة الني أجرئها إحدى المديريات الإليمية والمتلقة بتحديد عدد الساعات الإضافية المنجزة خلال الموسم المجمرع"}]'::jsonb, ARRAY['D']::text[], 'يميز في الاصطلاح بين "علم الإحصاء" (La statistique) وهو العلم الذي يدرس المعطيات، وبين "الإحصائيات" بصيغة الجمع (Les statistiques) وهي مجموعة من المعطيات والأرقام المتعلقة بظاهرة معينة. معطيات التمرين الإحصائي (Q27 - Q29): الفئات، مراكزها (c_i)، تردداتها (n_i)، والترددات المتراكمة الصاعدة (N_i): 1. الفئة [20 - 30[: المركز c_1 = 25 | التردد n_1 = 80 | المتراكم N_1 = 80 2. الفئة [30 - 40[: المركز c_2 = 35 | التردد n_2 = 50 | المتراكم N_2 = 130 3. الفئة [40 - 50[: المركز c_3 = 45 | التردد n_3 = 40 | المتراكم N_3 = 170 4. الفئة [50 - 60[: المركز c_4 = 55 | التردد n_4 = 30 | المتراكم N_4 = 200 5. الفئة [60 - 70[: المركز c_5 = 65 | التردد n_5 = 20 | المتراكم N_5 = 220')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q27', 'exam_2023_tasks', 27, 'الاختصاصات والمهام والحياة المدرسية', 'مراسي 2023/2022 المعطيات النلية:', false, '[{"id": "A", "text": "(شاعت الإضظة) ]30-20] ]40-30] ]50-40] ]60-50] ]70-60]"}, {"id": "B", "text": "التردد"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الجواب الصحيح هو (B) - التعليل (المتوسط الحسابي): \bar{x} = \frac{(80 \times 25) + (50 \times 35) + (40 \times 45) + (30 \times 55) + (20 \times 65)}{220} \bar{x} = \frac{2000 + 1750 + 1800 + 1650 + 1300}{220} = \frac{8500}{220} = 38,636 \approx \mathbf{38,6 \text{ ساعة}} إذن الجواب الصحيح قطعا هو (A): 38,6 ساعة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q28', 'exam_2023_tasks', 28, 'الاختصاصات والمهام والحياة المدرسية', 'المتوسط الحسابي (arithmétique moyenne La) لمتغير الساعات الإضافية هو:', false, '[{"id": "A", "text": "رو3ساعة."}, {"id": "B", "text": "40,2 ساعة"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الجواب الصحيح هو (C) - التعليل (الوسيط): رتبة الوسيط هي \frac{N}{2} = \frac{220}{2} = 110. بما أن N_1 = 80 و N_2 = 130، فإن الفئة الوسيطية هي [30 - 40[. Me = 30 + \left( \frac{110 - 80}{50} \right) \times 10 = 30 + \frac{300}{50} = 30 + 6 = \mathbf{36 \text{ ساعة}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q29', 'exam_2023_tasks', 29, 'الاختصاصات والمهام والحياة المدرسية', 'الوسيط (médiane a) لمتغير الساعات الإضافية هو؛', false, '[{"id": "A", "text": "34 ساعة 35 ساعة"}, {"id": "B", "text": "36 ساعة المنوال (mode Le) لمتغير الساعات الاضرافية هو؛"}, {"id": "C", "text": "24,27 ساعة 27, لاسلعم"}, {"id": "D", "text": "26,27 سنعم 2سعم"}]'::jsonb, ARRAY['D']::text[], 'الجواب الصحيح هو (D) - التعليل (المنوال): الفئة المنوالية هي صاحبة أكبر تردد (n_1 = 80)، أي الفئة [20 - 30[. - \Delta_1 = 80 - 0 = 80 (لأن التردد السابق هو 0) - \Delta_2 = 80 - 50 = 30 Mo = 20 + \left( \frac{80}{80 + 30} \right) \times 10 = 20 + \frac{800}{110} = 20 + 7,272 = \mathbf{27,27 \text{ ساعة}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q30', 'exam_2023_tasks', 30, 'الاختصاصات والمهام والحياة المدرسية', 'يقصد بالمنوال، قيمة المتغير الإحصائي:', false, '[{"id": "A", "text": "التي تتناسب مع الحصيص الأصغر ترددا."}, {"id": "B", "text": "التي تتناب مع الحصيص الأكبر ترددا."}, {"id": "C", "text": "التي تتناسب مع الحصيص المتراكم تصاعديا."}, {"id": "D", "text": "التي تتنلب مع الحصيص المتراكم تنازليا أو تناقصيا."}]'::jsonb, ARRAY['B']::text[], 'المنوال (Le mode) هو قيمة المتغير الإحصائي التي تتناسب مع الحصيص الأكبر تردداً (الأكثر تكراراً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q31', 'exam_2023_tasks', 31, 'الاختصاصات والمهام والحياة المدرسية', 'المجموع', false, '[{"id": "A", "text": "يقوم مختص الاقتصاد والإدارة ب؛"}, {"id": "B", "text": "A تسجيل التلاميذ المرضى وإحالتهم على الطبيب."}, {"id": "C", "text": "B تجميع المعطيات حول التلاميذ المعوزين والتعرف على أسرهم."}, {"id": "D", "text": "kc توفير الوسائل الضرورية لفائدة المشاركين في عمليات التوجيه والإعلام"}, {"id": "E", "text": "D تنظيم دورات المواكبة التربوية للتلاميذ."}]'::jsonb, ARRAY['C']::text[], 'في إطار المساهمة في عمليات التوجيه والإعلام، يقوم مختص الاقتصاد والإدارة بـ توفير الوسائل الضرورية لفائدة المشاركين في عمليات التوجيه والإعلام (لوجستيك وإحصاءات).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q32', 'exam_2023_tasks', 32, 'الاختصاصات والمهام والحياة المدرسية', 'بعد تسجيل تلاميذ مؤسسة تطيمية، تم تجميع المعطيات الخامة في الجدول الإحصائي الآتي؛', false, '[{"id": "A", "text": "الثانية باك"}, {"id": "B", "text": "المستوى أولى باك"}, {"id": "C", "text": "جذع مشترك إناث"}, {"id": "D", "text": "IIO ه"}]'::jsonb, ARRAY['D']::text[], 'الجواب الصحيح هو (D) - التعليل (من الجدول): مجموع تلاميذ الثانية باك = 140، والمجموع العام للتلاميذ = 490. \text{النسبة} = \frac{140}{490} \times 100 = \mathbf{28,57\%}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q33', 'exam_2023_tasks', 33, 'الاختصاصات والمهام والحياة المدرسية', 'نسبة تلاميذ الثانية باك من مجموع تلاميذ المؤسسة هي:', false, '[{"id": "A", "text": "%25,57."}, {"id": "B", "text": "%26,57."}, {"id": "C", "text": "%57, 27."}, {"id": "D", "text": "%28,57."}]'::jsonb, ARRAY['B']::text[], 'الجواب الصحيح هو (B) - التعليل (من الجدول): الرقم 90 يقع في تقاطع سطر "ذكور" مع عمود "أولى باك"، أي أنه يمثل تلاميذ المؤسسة الذكور والذين يدرسون بالسنة الأولى باك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q34', 'exam_2023_tasks', 34, 'الاختصاصات والمهام والحياة المدرسية', '90 هو عدد تلاميد المؤسسة؛', false, '[{"id": "A", "text": "إناث واللواتي يدرسن بالسدة المائية باك."}, {"id": "B", "text": "الذكور والذين يدرسون بالة الأ مى بأنك."}, {"id": "C", "text": "الذكور والذين يدرسون بالجذع الأمك."}, {"id": "D", "text": "الإناث واللواتي يدرسن بالجذع المشترك."}]'::jsonb, ARRAY['A']::text[], 'يجتمع مجلس تدبير المؤسسة على الأقل مرتين في السنة (المادة 20 من المرسوم 2.02.376).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q35', 'exam_2023_tasks', 35, 'الاختصاصات والمهام والحياة المدرسية', 'ينعقد مجلس تدبير المؤسسة بدعوة من رئيسه كلما دعت الضرورة إلى ذلك، وعلى الأقل؛', false, '[{"id": "A", "text": "مرتين في السنة. ثلاث مرات في السنة."}, {"id": "B", "text": "أربع مرات في السنة. خمس مرات في السنة. تسمى طريقة تصنيف الكتب التاريخية حسب التاريخ الخاص بها والمطبوعات الدورية وفقا لتاريخ صدورها كالصحف"}, {"id": "C", "text": "والمجلات؛ الطريقة الألفبائية."}, {"id": "D", "text": "طريقة \"ليوي\". الطريقة العددية. الطريقة الزمنية."}]'::jsonb, ARRAY['D']::text[], 'تصنيف الوثائق والمطبوعات الدورية وفقاً لتاريخ صدورها يسمى في علم الأرشيف والتوثيق بـ الطريقة الزمنية (الترتيب الكرونولوجي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q36', 'exam_2023_tasks', 36, 'الاختصاصات والمهام والحياة المدرسية', 'لدراسة جدوى استثمار لمؤسسة، نتوفر على المعلومات التالية:', false, '[{"id": "A", "text": "المبلغ المستثمر: O)(O 750 وحدة نقدية."}, {"id": "B", "text": "المجموع المحين للتدفق النقدي الصافي؛ 500 937 وحدة نقدية."}, {"id": "C", "text": "مدة المشروع: 4 سنوات."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'القيمة الصافية المحينة للاستثمار (VAN): VAN = \sum CF \text{ actualisés} - I_0 = 937\,500 - 750\,000 = \mathbf{187\,500 \text{ وحدة نقدية}}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q37', 'exam_2023_tasks', 37, 'الاختصاصات والمهام والحياة المدرسية', 'القيمة الصافية المحينة للاستثمار هي؛', false, '[{"id": "A", "text": "875 46 وحدة نقدية."}, {"id": "B", "text": "750 168 وحدة نقدية."}, {"id": "C", "text": "500 187 وحدة نقدية."}, {"id": "D", "text": "500 202 وحدة نقدية."}]'::jsonb, ARRAY['B']::text[], 'مؤشر الربحية (IP - \text{Indice de profitabilité}): IP = \frac{\sum CF \text{ actualisés}}{I_0} = \frac{937\,500}{750\,000} = \mathbf{1,25} (أو 1 + \frac{VAN}{I_0} = 1 + \frac{187500}{750000} = 1,25).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q38', 'exam_2023_tasks', 38, 'الاختصاصات والمهام والحياة المدرسية', 'مزشر الرج (éprofitabilit de lndice) لاستثمار المؤسسة هو؛', false, '[{"id": "A", "text": "0,31"}, {"id": "B", "text": "يدل مؤشر الربح للمؤسسة على؛ ما ربحته المؤسسة مقابل كل درهم تم استثماره."}, {"id": "C", "text": "ما تحتاجه المؤسسة لكي تربح مقابل كل درهم تم استثماره."}, {"id": "D", "text": "ما تحتاجه المؤسسة لكي تحقق التوازن مقابل كل درهم تم استثماره. ما خسرته المؤسسة مقابل كل درهم تم استثماره"}]'::jsonb, ARRAY['A']::text[], 'يقيس مؤشر الربحية (IP) مردودية كل وحدة نقدية مستثمرة، ويدل على ما تحققه أو تربحه المؤسسة مقابل كل درهم تم استثماره (هنا كل درهم مستثمر يسترجع درهماً واحداً ويحقق ربحاً صافياً قدره 0,25 درهم).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q39', 'exam_2023_tasks', 39, 'الاختصاصات والمهام والحياة المدرسية', 'سجلات الجرد، هي التي يتم فيها:', false, '[{"id": "A", "text": "مسك المواد القابلة للجرد فقط"}, {"id": "B", "text": "مسك التجهيزات القابلة للجرد حصرا."}, {"id": "C", "text": "مسك المواد والتجهيزات القابلة للجرد"}, {"id": "D", "text": "مسك المواد أو التجهيزات القابلة للجرد."}]'::jsonb, ARRAY['B']::text[], 'سجلات الجرد (Registres d''inventaire) هي التي يتم فيها مسك التجهيزات والأدوات القابلة للجرد حصراً (أي الممتلكات غير القابلة للاستهلاك السريع والتي تفوق قيمتها 10 دراهم، بينما المواد المستهلكة تمسك في سجلات الخزين/المصاريف).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q40', 'exam_2023_tasks', 40, 'الاختصاصات والمهام والحياة المدرسية', 'يعرف سجل الخزين بكونه؛', false, '[{"id": "A", "text": "السجل الذي تدون فيه فقط مداخيل القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة والذي يشترط في محتوياته أن تتطابق عدد الكميات الموجودة فعليا بالخزين."}, {"id": "B", "text": "مع السجل الذي تدون فيه أغلب مداخيل أو مخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة والذي يشترط في"}, {"id": "C", "text": "محتوياته أن تتطابق مع عدد الكميات الموجودة فعليا بالخزين. السجل الذي تدون فيه حصرا مخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة واذي يشترط في محتوياته أن"}, {"id": "D", "text": "تتطابق مع عدد الكميات الموجودة فعليا بالخزين. السجل الذي تدون فيه جميع مداخيل ومخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة والذي يشترط في محتوياته أن تتطابق مع عدد الكميات الموجودة فعليا بالخزين."}]'::jsonb, ARRAY['D']::text[], 'سجل الخزين (أو دفتر الخازن) بالقسم الداخلي هو السجل الذي تدون فيه جميع مداخيل ومخرجات القسم الداخلي المتعلقة بالمواد الغذائية ومواد النظافة والذي يشترط في محتوياته (الرصيد الدفتري) أن تتطابق مع عدد الكميات الموجودة فعلياً بالخزين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q41', 'exam_2023_tasks', 41, 'الاختصاصات والمهام والحياة المدرسية', 'الصفحة', false, '[{"id": "A", "text": "تدون على سجل مراقبة الداخلية:"}, {"id": "B", "text": "لوائح التلاميذ الممنوحين فقط قصد التتبع والمراقبة."}, {"id": "C", "text": "لوائح التلاميذ الممنوحين والمؤدين كصد التتبع والمراكبة."}, {"id": "D", "text": "لوائح التلاميذ الممنوحين أو المؤدين قصد التتبع والمراقبة."}, {"id": "E", "text": "لوائح التلاميذ المؤدين حصرا قصد التتبع والمراقبة."}]'::jsonb, ARRAY['B']::text[], 'تدون على سجل مراقبة الداخلية (Registre de contrôle de l''internat) لوائح التلاميذ الممنوحين (بمنحة كاملة أو نصف منحة) والمؤدين (المتممين) قصد التتبع والمراقبة وضبط الحضور الفعلي وحقوق الإيواء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q42', 'exam_2023_tasks', 42, 'الاختصاصات والمهام والحياة المدرسية', 'يهدف مشروع مؤسسة الريادة إلى:', false, '[{"id": "A", "text": "تطوير وتحسين لوعية التعليم والتعلم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات"}, {"id": "B", "text": "المتعلمات والمتعلمين وتحفيزهم للابتكار والإبداع."}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يهدف مشروع المؤسسة الريادة إلى تحسين نوعية التعليم والتعلم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات والمتعلمين وتحفيزهم للابتكار والإبداع.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q43', 'exam_2023_tasks', 43, 'الاختصاصات والمهام والحياة المدرسية', 'تحسين نوعية التعليم والتعلم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات', false, '[{"id": "A", "text": "والمتعلمين وتحفيزهم للابتكار والإبداع. تطوير نوعية التعلم، وذلك من خلال توخير بيئة تعليمية مبتكرة وتحفيز المتعلمات والمتعلمين على الابتكار والإبداع."}, {"id": "B", "text": "تطوير نوعية التعليم، وذلك من خلال توفير بيئة تعليمية مبتكرة وحديثة تساعد على تطوير مهارات المتعلمات والمتعلمين وتحفيزهم للابتكار والإبداع. تتحدد مداخيل كراء الكتب المقررة بإحدى مستويات التعليم الثانوي التأهيلي فيء"}, {"id": "C", "text": "OO. 04 د للكتاب الواحد و()0,()4 د للمجموعة الكاملة. O(). 05 د للكتاب الواحد و()0,()5 د للمجموعة الكاملة. 0(),06 د للكتاب الواحد و0(),()6 د للمجموعة الكاملة."}, {"id": "D", "text": "()07,0 د للكتاب الواحد و()(),()7 د للمجموعة الكاملة. بين مؤسسات التربية والتعليم العمومي ومراكز التكوين التابعة للوزارة من جهة تشمل اتفاقية الضمان المدرسى الميرمية"}]'::jsonb, ARRAY['B']::text[], 'تتحدد مداخيل كراء الكتب المقررة بالتعليم الثانوي التأهيلي في 05,00 دراهم للكتاب الواحد و 50,00 درهماً للمجموعة الكاملة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q44', 'exam_2023_tasks', 44, 'الاختصاصات والمهام والحياة المدرسية', 'وشركة التأمين من جهة ثاني:', false, '[{"id": "A", "text": "المسؤولية الجنائية والمدنية."}, {"id": "B", "text": "المسؤولية الجنائية فقحط"}, {"id": "C", "text": "المسؤولية المدنية فقط"}, {"id": "D", "text": "المسؤولية التعاقدية والجنائية."}]'::jsonb, ARRAY['C']::text[], 'تشمل اتفاقية الضمان المدرسي تغطية الحوادث المدرسية والمسؤولية المدنية فقط (ولا يوجد في القانون تأمين يغطي المسؤولية الجنائية لأن العقوبة الجنائية شخصية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q45', 'exam_2023_tasks', 45, 'الاختصاصات والمهام والحياة المدرسية', 'تندرج ضمن مجالات صرف إيرادات الجمعية الرياضة المدرسية:', false, '[{"id": "A", "text": "تنظيم التظاهرات الرياضية على صعيد المؤسسة وشراء الألبسة والأمتعة الرياضية لفرقها."}, {"id": "B", "text": "شراء السترات والأمتعة الرياضية لفرق المؤسسة وإصلاح جميع أنواع تجهيزات المؤسسة."}, {"id": "C", "text": "شراء الألبسة والأمتعة الرياضية لفرق المؤسسة وكذا الكتب والمجلات غير الرياضية للمكتبة المدرسية."}, {"id": "D", "text": "تنظيم التظاهرات الثقافية على صعيد المؤسسة وإصلاح وصيانة منشأتها."}]'::jsonb, ARRAY['A']::text[], 'تصرف إيرادات الجمعية الرياضية المدرسية حصرياً في المجالات المرتبطة بالرياضة المدرسية، ومنها تنظيم التظاهرات الرياضية على صعيد المؤسسة وشراء الألبسة والأمتعة الرياضية لفرقها (ولا يجوز صرفها في إصلاح جميع تجهيزات المؤسسة أو شراء كتب غير رياضية أو أنشطة ثقافية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q46', 'exam_2023_tasks', 46, 'الاختصاصات والمهام والحياة المدرسية', 'تناط مهمة ضبط حسابات الجمعية الرياضة المدرسية ب:', false, '[{"id": "A", "text": "مسير المصالح المادية والمالية."}, {"id": "B", "text": "نائب رئيس الجمعية."}, {"id": "C", "text": "رئيس الجمعية."}, {"id": "D", "text": "أمين مال الجمعية."}]'::jsonb, ARRAY['D']::text[], 'حسب القانون الأساسي النموذجي للجمعية الرياضية المدرسية، تناط مهمة ضبط ومسك حسابات الجمعية بـ أمين مال الجمعية (الذي هو بحكم القانون مسير المصالح المادية والمالية بالمؤسسة، لكن الصفة القانونية داخل مكتب الجمعية المكلفة بالحسابات هي "أمين مال الجمعية").')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q47', 'exam_2023_tasks', 47, 'المحاسبة العمومية والمالية', 'يقوم مختصو الاقتصاد والإدارة من جميع الدرجات بإنجاز العمليات المرتبطة بالتسيير المادي والمالي والمحاسبي', false, '[{"id": "A", "text": "بالمؤسسات التعليمية تحت إشراف:"}, {"id": "B", "text": "مجلس التديير."}, {"id": "C", "text": "مفتش الشؤون الإدارية والمادية."}, {"id": "D", "text": "رئيس المؤسسة."}, {"id": "E", "text": "المدير الإقليمي."}]'::jsonb, ARRAY['C']::text[], 'يقوم مختصو الاقتصاد والإدارة بإنجاز العمليات المرتبطة بالتسيير المادي والمالي والمحاسبي بالمؤسسات التعليمية تحت إشراف رئيس المؤسسة (المدير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q48', 'exam_2023_tasks', 48, 'الاختصاصات والمهام والحياة المدرسية', 'تعبر الأكاديميات الجهوية للتربية والتكوين؛', false, '[{"id": "A", "text": "مؤسسة خارجية تابعة للمصلحة المركزية."}, {"id": "B", "text": "مؤسسة عمومية."}, {"id": "C", "text": "مقاولة شبه عمومية."}, {"id": "D", "text": "مصلحة خارجية مسيرة بصورة مستقلة."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 1 من القانون 07.00، تعتبر الأكاديميات الجهوية للتربية والتكوين مؤسسات عمومية تتمتع بالشخصية المعنوية والاستقلال المالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q49', 'exam_2023_tasks', 49, 'الاختصاصات والمهام والحياة المدرسية', 'حدد نصاب مداولات مجلس تدبير المؤسسة التعليمة خلال الجلسة الثانية في:', false, '[{"id": "A", "text": "أغلبية أصوات الأعضاء الحاضرين."}, {"id": "B", "text": "نصف أصوات الأعضاء الحاضرين."}, {"id": "C", "text": "أغلبية أصوات أعضاء المجلس."}, {"id": "D", "text": "نصف أصوات أعضاء المجلس."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 20 من المرسوم 2.02.376، يتخذ مجلس التدبير قراراته في الجلسة الثانية بـ أغلبية أصوات الأعضاء الحاضرين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q50', 'exam_2023_tasks', 50, 'الاختصاصات والمهام والحياة المدرسية', 'يقصد بالشمولية في مشروع المؤمة المندمج:', false, '[{"id": "A", "text": "التوثيق وإعداد تقارير وبطاقات تقنية أ. شذ مراحل المشروع بهدف تقاسم التجارب واستثمارها."}, {"id": "B", "text": "مد جسور التعاون بين العاملين داخل لمؤمسة ومؤسسات الحوض المدرسي أو المنطقة التربوية."}, {"id": "C", "text": "اعتماد أنشطة ملائمة وقابلة للإنجاز وقادرة ل تدسين المؤشرات."}, {"id": "D", "text": "خطة جامعة لكل الأعمال التي تبرمجها المؤسسه وتنجزها بتعاون مع شركائها."}]'::jsonb, ARRAY['D']::text[], 'يقصد بـ "الشمولية" في مشروع المؤسسة المندمج أن يكون خطة جامعة لكل الأعمال التي تبرمجها المؤسسة وتنجزها بتعاون مع شركائها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q51', 'exam_2023_tasks', 51, 'الاختصاصات والمهام والحياة المدرسية', 'إذا لم يحدد أجل معين للوفاء بالالنزام، وجب تنفيذه:', false, '[{"id": "A", "text": "في الأجل طبقا لرغبة الدائن ما لم ينتج الأجل من طبيعة الالتزام أو من طريقة تنفيذه أو من المكان المعين لهذا التنفيذ."}, {"id": "B", "text": "حلا ما لم ينتج الأجل من طبيعة الالتزام أو من طريقة تنفيذه أو من المكان المعين لهذا التنفيذ."}, {"id": "C", "text": "مستقبلا ما لم ينتج الأجل من طبيعة الالتزام أو من طريقة تنفيذه أو من المكان المعين لهذا التنفيذ."}, {"id": "D", "text": "في الأجل طبقا لرغبة المدين ما لم ينتج الأجل من طبيعة الالتزام أو من طريقة تنفيذه أو من المكان المعين لهذا التنفيذ."}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 127 من قانون الالتزامات والعقود المغربي: "إذا لم يحدد أجل معين للوفاء بالالتزام، وجب تنفيذه حالاً ما لم ينتج الأجل من طبيعة الالتزام أو من طريقة تنفيذه أو من المكان المعين لهذا التنفيذ".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q52', 'exam_2023_tasks', 52, 'الاختصاصات والمهام والحياة المدرسية', 'يقوم التضامن بحكم القانون في الالتزامات المتعاقد عليها بين التجار لأغراض المعاملات التجارية وذلك؛', false, '[{"id": "A", "text": "مالم يصرح الدائن أو المدين بعكس ذلك."}, {"id": "B", "text": "ما لم يصرح الدائن أو المدين بذلك."}, {"id": "C", "text": "ما لم يصرح السند المنشئ للالتزام أو القانون بذلك."}, {"id": "D", "text": "ما لم يصرح السند المنشئ للالتزام أو القانون بعكسه."}]'::jsonb, ARRAY['D']::text[], 'حسب الفصل 165 من ق.ل.ع: "يقوم التضامن بحكم القانون في الالتزامات المتعاقد عليها بين التجار لأغراض المعاملات التجارية وذلك ما لم يصرح السند المنشئ للالتزام أو القانون بعكسه".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q53', 'exam_2023_tasks', 53, 'الاختصاصات والمهام والحياة المدرسية', 'بغل: موضوع حول الاختصاصات أو المهام المرتبطة بلوظبفة المطلوب شظها', false, '[{"id": "A", "text": "د"}, {"id": "B", "text": "يجوز انتقال الحقوق والديون من الدائن الأصلي إلى شخص آخر إما بمفتضى؛"}, {"id": "C", "text": "A اتفاق المتعاقدين أو كون الحق أو الدين غير ممكن تحويلهما."}, {"id": "D", "text": "B القانون أو اتفاق المتعاقدين."}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 189 من ق.ل.ع: "يجوز انتقال الحقوق والديون من الدائن الأصلي إلى شخص آخر، إما بمقتضى القانون أو اتفاق المتعاقدين".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q54', 'exam_2023_tasks', 54, 'الاختصاصات والمهام والحياة المدرسية', 'القانون أو كون الحق أو الدين غير ممكن تحويلهما.', false, '[{"id": "A", "text": "اتفاق المتعاقدين فقط أو كون الحق والدين يمكن تحويلهما."}, {"id": "B", "text": "لا تبرأ ذمة المدين إلا بتسليم ما ورد في الالتزام:"}, {"id": "C", "text": "صلفا ونوعا."}, {"id": "D", "text": "كما وقدرا."}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 241 من ق.ل.ع: "لا تبرأ ذمة المدين إلا بتسليم ما ورد في الالتزام قدراً وصنفاً".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q55', 'exam_2023_tasks', 55, 'الاختصاصات والمهام والحياة المدرسية', 'قدرا وصنفا.', false, '[{"id": "A", "text": "قدرا أو صنفا."}, {"id": "B", "text": "يكون الالتزام باطلا بقوة القانون إذاء"}, {"id": "C", "text": "كان ينقصه أحد الأركان اللازمة لقيامه أو إذا قرر القانون في حالة خاصة بطلانه."}, {"id": "D", "text": "كانت أركانه تامة أو إذا قرر القانون في حالة خاصة بطلانه."}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 306 من ق.ل.ع: "يكون الالتزام باطلاً بقوة القانون: 1- إذا كان ينقصه أحد الأركان اللازمة لقيامه؛ 2- أو إذا قرر القانون في حالة خاصة بطلانه".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q56', 'exam_2023_tasks', 56, 'الاختصاصات والمهام والحياة المدرسية', 'كان ينقصه أحد الأركان اللازمة لقيامه أو إذا قرر القانون في حالة خاصة عدم بطلانه.', false, '[{"id": "A", "text": "كانت أركانه تامة أو إذا قرر القانون في حالة خاصة عدم بطلانه."}, {"id": "B", "text": "يمكن الاهتلاك المتناقص (زوog(ىنل amortissement) بالنسبة للأصول الثابتة المقتناة من احتساب أقسط:"}, {"id": "C", "text": "ثابتة للاهتلاك خلال مدة امتلاك الأصل الثابت"}, {"id": "D", "text": "متغيرة تناقصية للاحتلاك حلال مدة املااك الأصل الثابت."}]'::jsonb, ARRAY['B']::text[], 'نظام الاهتلاك المتناقص (Amortissement dégressif) يمكن من احتساب أقساط متغيرة تناقصية للاهتلاك خلال مدة امتلاك الأصل الثابت (حيث تكون الأقساط مرتفعة في السنوات الأولى ثم تتناقص تدريجياً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q57', 'exam_2023_tasks', 57, 'الاختصاصات والمهام والحياة المدرسية', 'متغيرة تصاعدية للاهتلاك خلالي سدة امتلاك الأصل الثابت.', false, '[{"id": "A", "text": "متغيرة للاهتلاك بعد سنة من اختناء الأصل الثابت."}, {"id": "B", "text": "تنبني استراتيجية التكامل العمودي على استحواذ المؤسسة على:"}, {"id": "C", "text": "مؤسسات أخرى تنتمي لنفس مرحلة الإنتاج."}, {"id": "D", "text": "مؤسسات أخرى لا تنتمي لنفس القطاع."}]'::jsonb, ARRAY['D']::text[], 'في التدبير الاستراتيجي، تنبني استراتيجية التكامل العمودي (Intégration verticale) على استحواذ المؤسسة على مؤسسات أخرى تنتمي لمراحل إنتاج متكاملة (سواء نحو الأعلى كالموردين أو نحو الأسفل كالموزعين). (بينما الاستحواذ على مؤسسات في نفس مرحلة الإنتاج يسمى تكاملاً أفقياً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q58', 'exam_2023_tasks', 58, 'الاختصاصات والمهام والحياة المدرسية', 'مؤسسات أخرى تنتمي لقطاعات مختلفة.', false, '[{"id": "A", "text": "مؤسسات أخرى تنتمي لمراحل إنتاج متكاملة. يتم ترتيب أولويات مشروع المؤسسة المندمج حسب الرافعات الأربع التالية:"}, {"id": "B", "text": "الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - البنية التحتية والتجهيزات - التوجيه ودعم المشروع للمتعلم."}, {"id": "C", "text": "الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - التدبير والشراكة - المشروع البيداغوجي."}, {"id": "D", "text": "الارتقاء بالتمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - البنية التحتية والتجهيرات - التدبير والشراكة. الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - الدعم التربوي - ريادة المؤسسة."}]'::jsonb, ARRAY['C']::text[], 'حسب المذكرة الوزارية 087/21، ترتب أولويات مشروع المؤسسة المندمج حسب الرافعات الأربع التالية: الارتقاء بالتعلمات وإدماج تكنولوجيا المعلومات والاتصالات - الارتقاء بالحياة المدرسية - البنية التحتية والتجهيزات - التدبير والشراكة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q59', 'exam_2023_tasks', 59, 'الاختصاصات والمهام والحياة المدرسية', 'يقصد بالإتلافات؛', false, '[{"id": "A", "text": "ما يلحق ممتلكات المؤسسة المنقولة حصرا من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة."}, {"id": "B", "text": "ما يلحق ممتلكات المؤسسة الثابتة والمنقولة من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة."}, {"id": "C", "text": "ما يلحق ممتلكات المؤسسة الثابتة فتط من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة."}, {"id": "D", "text": "ما يلحق ممتلكات المؤسسة الثابتة أو المنقولة من أضرار أو خسائر بسبب عوامل خارجية."}]'::jsonb, ARRAY['B']::text[], 'يقصد بالإتلافات في التدبير المادي والمالي للمؤسسات التعليمية: ما يلحق ممتلكات المؤسسة الثابتة والمنقولة من أضرار أو خسائر يتسبب فيها تلميذات وتلاميذ المؤسسة فرادى أو جماعة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2023_tasks_q60', 'exam_2023_tasks', 60, 'الاختصاصات والمهام والحياة المدرسية', 'حددت التشريعات الجاري بها العمل أقساط التأمين المدرسي في الوسط القروي في مبلغ:', false, '[{"id": "A", "text": "20 د."}, {"id": "B", "text": "الخيار B"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حددت التشريعات الجاري بها العمل (اتفاقية الضمان المدرسي) أقساط التأمين المدرسي العادي في الوسط القروي في مبلغ 8 دراهم (مقابل 12 درهماً في الوسط الحضري).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;

-- أسئلة امتحان: امتحان التدبير المالي والمادي للمؤسسات التعليمية (2022) (80 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q1', 'exam_2022_mgmt', 1, 'التدبير المالي والمحاسبة العمومية', 'موسري مول «ضبير نمدر والمقى ونمعبتى لمومست فتربية ولتعبم السومر', true, '[{"id": "A", "text": "يمارس المجلس الأعلى للحسابات رفابة:"}, {"id": "B", "text": "مالية"}, {"id": "C", "text": "فضائية"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C', 'B']::text[], 'حسب الفصل 147 من الدستور والقانون 62.99 المتعلق بمدونة المحاكم المالية، يعتبر المجلس الأعلى للحسابات هيئة عليا لمراقبة المالية العمومية، ويمارس رقابة قضائية (التدقيق والبت في الحسابات والتأديب المتعلق بالميزانية) ورقابة تسيير مالية. في التصنيف القانوني لأنواع الرقابة، يصنف المجلس الأعلى للحسابات ضمن أجهزة الرقابة القضائية (C) (تمييزاً له عن الرقابة الإدارية كالمفتشية العامة للمالية، والرقابة السياسية كالبرلمان).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q2', 'exam_2022_mgmt', 2, 'التدبير المالي والمحاسبة العمومية', 'مياسية', false, '[{"id": "A", "text": "يعهد مسك المحاسبة التحليلية بالأكاديميات الجهوية للتربية والتكوين إلى:"}, {"id": "B", "text": "الو حدة الجهوية للافتحاص"}, {"id": "C", "text": "خلية الكلفة"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يعهد مسك المحاسبة التحليلية بالأكاديميات الجهوية للتربية والتكوين إلى خلية الكلفة لتتبع وتحليل كلفة المشاريع والخدمات التربوية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q3', 'exam_2022_mgmt', 3, 'التدبير المالي والمحاسبة العمومية', 'الشساعة', false, '[{"id": "A", "text": "مكتب الصفقات"}, {"id": "B", "text": "يقبر منحق الاقتصاد والادارة عضوا ب:"}, {"id": "C", "text": "المجنس التعليمي"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'إذا كان ملحق الاقتصاد والإدارة مكلفاً بتسيير المصالح المادية والمالية بالمؤسسة، فإنه يعتبر عضواً بحكم القانون في مجلس التدبير (المادة 19 من المرسوم 2.02.376).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q4', 'exam_2022_mgmt', 4, 'التدبير المالي والمحاسبة العمومية', 'المجنس التربوي', false, '[{"id": "A", "text": "مجلس التدبير"}, {"id": "B", "text": "مجنس القسم"}, {"id": "C", "text": "تنجز عملية تحيين الجرد العيني لممتلكات المؤسسة، وجوبا، بوتيرة؛"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تنجز عملية تحيين ومطابقة الجرد العيني لممتلكات المؤسسة (L''inventaire physique) وجوباً بوتيرة سنوية عند نهاية كل موسم دراسي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q5', 'exam_2022_mgmt', 5, 'التدبير المالي والمحاسبة العمومية', 'نصف سنوية', false, '[{"id": "A", "text": "تصنف تدفقات المحاسبة المادية ضمن:"}, {"id": "B", "text": "التدفقات المالية"}, {"id": "C", "text": "التدفقات المادية والنقدية"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تهتم المحاسبة المادية بحركية السلع والمواد والتجهيزات (دخولاً وخروجاً)، لذلك تصنف تدفقاتها ضمن التدفقات العينية / الحقيقية (Flux réels ou physiques).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q6', 'exam_2022_mgmt', 6, 'التدبير المالي والمحاسبة العمومية', 'التدفقات العينية', true, '[{"id": "A", "text": "التدفقات النقدية الداخلية يستخلص انخراطات الجمعية الرياضية بالمؤسسات التعليمية الثانوية:"}, {"id": "B", "text": "لا م إدار يه"}, {"id": "C", "text": "أمين مال الجمعية الرياضية رئيس المؤسسة التعليمية"}, {"id": "D", "text": "مسير المصالح المادية والمالية \"، الادار ة والاقتصاد مكلف"}]'::jsonb, ARRAY['C', 'A']::text[], 'يستخلص انخراطات الجمعية الرياضية المدرسية ضمن رسوم التسجيل بالمؤسسات الثانوية مسير المصالح المادية والمالية (C) بصفته المكلف بالاستخلاص وبصفته أيضاً أمين مال الجمعية الرياضية (A) بحكم القانون.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q7', 'exam_2022_mgmt', 7, 'التدبير المالي والمحاسبة العمومية', 'الصفد»', false, '[{"id": "A", "text": "؟"}, {"id": "B", "text": "م"}, {"id": "C", "text": "الموضو ع"}, {"id": "D", "text": "موضو حول التدبير العار"}, {"id": "E", "text": "ي والمالي والمحاسبائي لمؤسسات الثريية والتعليم العمومي"}]'::jsonb, ARRAY['B']::text[], 'طبقاً لمبدأ الفصل بين مهام الآمر بالصرف والمحاسب، فإن الذي يتولى مرحلة "الأداء" الفعلي لنفقات المؤسسة التعليمية هو مسير المصالح المادية والمالية بصفته محاسباً (بينما رئيس المؤسسة يأمر بالصرف).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q8', 'exam_2022_mgmt', 8, 'المحاسبة العمومية والمالية', 'يؤدي نفقات مالية المؤسسة التعليمية:', false, '[{"id": "A", "text": "رنيس المؤسسة التعليمية بصفته أمرا بالصرف"}, {"id": "B", "text": "مسير المصالح المادية و المالية"}, {"id": "C", "text": "بصفته محاسبا"}, {"id": "D", "text": "رئيس حمعية أمهات وأباء وأو لياء التلميذات والتلاميذ"}, {"id": "E", "text": "رني حمعية دعم مدرسة النحا"}]'::jsonb, ARRAY['A']::text[], 'في علم التدبير، تعرف الفعالية (Efficacité) بالقدرة على تحقيق الأهداف المسطرة مسبقاً (أما تحقيق الأهداف بأقل الموارد وأقل تكلفة فيسمى النجاعة أو الكفاءة - Efficience، وملاءمة الأهداف مع الموارد تسمى الملاءمة - Pertinence).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q9', 'exam_2022_mgmt', 9, 'التدبير المالي والمحاسبة العمومية', 'تعرف الفعالية (1))) ٢٢٢) في مجال تدبير الموسسات بالفدرة على:', false, '[{"id": "A", "text": "تحقيق الأهداف"}, {"id": "B", "text": "تحديد الأهداف"}, {"id": "C", "text": "ملاءمة الأهداف مع الموار د والفدرات"}, {"id": "D", "text": "تحقيق الأهداف بأقل الموار د"}]'::jsonb, ARRAY['C']::text[], 'تنص المادة 1 من القانون 07.00 على أن الأكاديمية الجهوية للتربية والتكوين هي "مؤسسة عمومية" تتمتع بالشخصية المعنوية والاستقلال المالي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q10', 'exam_2022_mgmt', 10, 'التدبير المالي والمحاسبة العمومية', 'تير الأكاديمية الجهوية للتربية والتكوين، بحكم القانون 0()-7(). بمثابة:', false, '[{"id": "A", "text": "مقولة عمومية"}, {"id": "B", "text": "\"سؤسسه عسوسيه\""}, {"id": "C", "text": "مصندة الدولة مسيرة بطر يقة مستقلة"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب دليل مساطر التدبير المالي لجمعية دعم مدرسة النجاح، تكون ميزانية الجمعية سنوية وتمتد من فاتح يناير إلى نهاية دجنبر من كل سنة (مطابقة للسنة المالية للدولة والأكاديميات).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q11', 'exam_2022_mgmt', 11, 'التدبير المالي والمحاسبة العمومية', 'تكون ميزانية جمعية دعم مدرسة النجاح:', false, '[{"id": "A", "text": "سوية تمد من فأتح شتنبر إلى نهاية غثت سنوية تمند من فته يذاير الى نهاية دجنبر من كل سنة"}, {"id": "B", "text": "فصء تمتد من فاتح يناير الي نهاية يونيو سن كن سنة نصف سنوية تمتد من فاتح يناير إلى نهاية يونيو من كل سنة"}, {"id": "C", "text": "يطئق على السلطة التي تبرم الصفقة العمومية اسم: ممول المشرون"}, {"id": "D", "text": "مهندس المشرو ت حامل المشرو ع صاحب المشروع"}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 4 من مرسوم الصفقات العمومية، يطلق على السلطة التي تبرم الصفقة العمومية باسم الهيئة العمومية اسم صاحب المشروع (Maître d''ouvrage).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q12', 'exam_2022_mgmt', 12, 'التدبير المالي والمحاسبة العمومية', 'تتمتع مصالح الدولة المسيرة بطريقة مستقلة (١1)81/ب:', false, '[{"id": "A", "text": "الشخصية المعنوية والاستقلالية المالية"}, {"id": "B", "text": "الشخصية المعنوية"}, {"id": "C", "text": "الاستقلالية المالية"}, {"id": "D", "text": "جميع الأجوبة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 21 من القانون التنظيمي لقانون المالية 130.13، فإن مصالح الدولة المسيرة بصورة مستقلة (SEGMA) هي مصالح غير متمتعة بالشخصية المعنوية (وتتمتع فقط باستقلالية مالية نسبية لتغطية بعض نفقاتها بموارد ذاتية). وبما أن الخيارات A و B تنسب لها الشخصية المعنوية، و C ينسب لها الاستقلالية المالية المطلقة، فإن الجواب الأدق قانونياً هو (D) أو (C).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q13', 'exam_2022_mgmt', 13, 'التدبير المالي والمحاسبة العمومية', '٠ 6d3 f0-', true, '[{"id": "A", "text": "مهاراة توظيف ملحقي الافنصاد والإدارة"}, {"id": "B", "text": "الموضو ع"}, {"id": "C", "text": "لا موضوع حول التدبير المادي والمالي والمحاسباتي لمؤمسات التربية والتطيم العمومي"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B', 'A']::text[], 'تمارس المفتشية العامة للمالية (IGF) مراقبة مالية (وإدارية باعتبارها هيئة تفتيش تابعة لوزارة المالية وليست هيئة قضائية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q14', 'exam_2022_mgmt', 14, 'التدبير المالي والمحاسبة العمومية', 'تمارس المفتشية العامة للمالية مراقبة:', false, '[{"id": "A", "text": "مالية"}, {"id": "B", "text": "قضائية سياسية"}, {"id": "C", "text": "مالية وإدارية سياسية وإدارية"}, {"id": "D", "text": "قضائية وسياسية سياسية ومالية"}]'::jsonb, ARRAY['A']::text[], 'تمارس المفتشية العامة بوزارة التربية الوطنية (بقطبيها التربوي والإداري/المالي) مراقبة مالية وإدارية على المصالح المركزية والجهوية والإقليمية والمؤسسات التعليمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q15', 'exam_2022_mgmt', 15, 'التدبير المالي والمحاسبة العمومية', 'يساهم تكتل المشتريات بالنسبة للموسسة في:', false, '[{"id": "A", "text": "رفع تكلفة الخدمات"}, {"id": "B", "text": "رفع تكلفة الشراء"}, {"id": "C", "text": "خفض القدرة التفاوضية"}, {"id": "D", "text": "خفض تكلفة الشراء"}]'::jsonb, ARRAY['D']::text[], 'يساهم تكتل وتجميع المشتريات (Groupement d''achats) في الرفع من القدرة التفاوضية للمؤسسة والاستفادة من وفورات الحجم مما يؤدي إلى خفض تكلفة الشراء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q16', 'exam_2022_mgmt', 16, 'التدبير المالي والمحاسبة العمومية', 'يشترط في الشيء الواجب جرده بالموسسات التعليمية أن يكون:', false, '[{"id": "A", "text": "ابتا"}, {"id": "B", "text": "دا قيمة تقل عن ()l دراهم"}, {"id": "C", "text": "تابعا أو ملحقا"}, {"id": "D", "text": "متكرر الاستعمال، منقو لا، و ذا قيمة تقل عن ()l در اهم"}]'::jsonb, ARRAY['D']::text[], 'حسب دورية جرد الممتلكات، يشترط في الشيء الواجب تدوينه في سجلات الجرد بالمؤسسات التعليمية أن يكون متكرر الاستعمال (غير قابل للاستهلاك بأول استعمال)، منقولاً، وذا قيمة لا تقل عن 10 دراهم (باستثناء الكتب المدرسية التي تجرد مهما كانت قيمتها).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q17', 'exam_2022_mgmt', 17, 'التدبير المالي والمحاسبة العمومية', 'تدبر الإدارة خدمة التغذية بالأقسام الداخلية في الموسسات التعليمية الثانوية، عن طريق؛', false, '[{"id": "A", "text": "8 k0TEA, REDMI"}, {"id": "B", "text": "CAMERA'' QUAj AI نضأم ادعم المباشر"}, {"id": "C", "text": "نظام الخو الة"}, {"id": "D", "text": "نظام المطعمة نظام الدعم غير المباشر"}]'::jsonb, ARRAY['C']::text[], 'تدبر الإدارة حالياً خدمة التغذية بالأقسام الداخلية والمطاعم المدرسية عن طريق نظام المطعمة (تفويض خدمة الإطعام المدرسي لممونين في إطار صفقات-إطار).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q18', 'exam_2022_mgmt', 18, 'التدبير المالي والمحاسبة العمومية', 'يهدف الحساب الختامي إلى حصر عمليات؛', false, '[{"id": "A", "text": "الشهر الأول من السنة المالية لتوضيح ملخص الأعمال"}, {"id": "B", "text": "الأسدس الثاني من السنة المالية لتوضيح ملخص الأعمال"}, {"id": "C", "text": "الأسدس الأول من السنة المالية لتوضيح ملخص الأعمال"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يهدف الحساب الختامي إلى حصر وتجميع عمليات السنة المالية كاملة لتوضيح ملخص الأعمال والنتيجة النهائية لتنفيذ الميزانية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q19', 'exam_2022_mgmt', 19, 'التدبير المالي والمحاسبة العمومية', 'الصفحة', false, '[{"id": "A", "text": "موا"}, {"id": "B", "text": "الموضو ع"}, {"id": "C", "text": "إ موضوع حول التدبير الملا"}, {"id": "D", "text": "ي والمالي والمحاسبائي لمومسات التربية والتعليم العومي"}, {"id": "E", "text": "تسمى طريقة تصنيف الكتب"}]'::jsonb, ARRAY['B']::text[], 'طريقة تصنيف الكتب بحسب موضوعاتها مع تقسيم المعرفة البشرية إلى عشر فئات رئيسية (من 000 إلى 900) هي طريقة "ديوي" (التصنيف العشري لديوي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q20', 'exam_2022_mgmt', 20, 'التدبير المالي والمحاسبة العمومية', 'بحسب موضو عاتها مع تقسيم مجالات المعرفة إلى عطر فنات رنيسيه؛', false, '[{"id": "A", "text": "الطر يقه الألفبائية"}, {"id": "B", "text": "الطريقة الز منية"}, {"id": "C", "text": "الطر يفة العددية"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المؤشر الإحصائي الأكثر استخداماً لقياس مدى التشتت هو الانحراف المعياري (Écart-type) (بينما الوسيط والمتوسط والمنوال هي مقاييس نزعة مركزية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q21', 'exam_2022_mgmt', 21, 'التدبير المالي والمحاسبة العمومية', 'يعتبر موشر القياس الاحصائي الأكثر استخداما لقياس مدى التشتت:', false, '[{"id": "A", "text": "الو سيط"}, {"id": "B", "text": "المتوسط العددي"}, {"id": "C", "text": "الانحراف المعيارى"}, {"id": "D", "text": "المنو ال"}]'::jsonb, ARRAY['D']::text[], 'نفقات الاستغلال (أو التسيير) هي النفقات الجارية اللازمة لسير المرفق مثل نفقات الماء والكهرباء والهاتف (بينما اقتناء العتاد والتجهيزات هي نفقات استثمار).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q22', 'exam_2022_mgmt', 22, 'المحاسبة العمومية والمالية', 'تععبر من نفقات الاستغلال؛', false, '[{"id": "A", "text": "مشتريات العتاد الديداكتيكي"}, {"id": "B", "text": "اقتناء تجهيز ات المطبخ"}, {"id": "C", "text": "اقتناء تجهيزات الملا عب الرياضية"}, {"id": "D", "text": "نققات الماء والكهرباء والهاتف"}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 34 من المرسوم الملكي 330.66، تهدف التصفية (La liquidation) إلى التأكد من حقيقة الدين وحصر مبلغ النفقة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q23', 'exam_2022_mgmt', 23, 'المحاسبة العمومية والمالية', 'تهدف التصفية في المحاسبة العمومية إلى التأكد من:', false, '[{"id": "A", "text": "حقيقة الدين فقط"}, {"id": "B", "text": "حصر مبلغ النفقة فقط"}, {"id": "C", "text": "حقيقة ادين وحصر مبلغ النفقة"}, {"id": "D", "text": "أداء الدين وحصر مبلغ النفقة"}]'::jsonb, ARRAY['A']::text[], 'يعرف علم الإحصاء بكونه علماً يهتم بالإحصائيات (جمعاً وتنظيماً وتحليلاً واستقراءً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q24', 'exam_2022_mgmt', 24, 'التدبير المالي والمحاسبة العمومية', 'يعرف الاحصاء ب:', false, '[{"id": "A", "text": "علم يهتم بالإحصائيات احصائيات تر اكسية تصاعدية"}, {"id": "B", "text": "إحصائيات تراكمية تنازلية مجمو ع الإحصائيات الخامة"}, {"id": "C", "text": "منوال (Mode) السن للمستفيدين من دورة تكوينية هو 32 سنة، مما يعني أن: متوسط سن المستفيدين من الدورة التكوينية هو 32 سنة"}, {"id": "D", "text": "السن الأكثر ترددا للمستفيدين من الدورة التكوينية هو 32 سنة سن غالبية المستفيدين، من الدورة التكوينية، يبتعد عن المعدل ب 32 سنة المعدل الهندسي لسن المستفيدين من الدورة التكوينية هو 32 سنة"}]'::jsonb, ARRAY['B']::text[], 'المنوال (Le mode) هو القيمة الأكثر تكراراً في السلسلة الإحصائية، وبالتالي فإن منوالاً يساوي 32 سنة يعني أن السن الأكثر تردداً للمستفيدين من الدورة التكوينية هو 32 سنة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q25', 'exam_2022_mgmt', 25, 'التدبير المالي والمحاسبة العمومية', 'الموضو)', false, '[{"id": "A", "text": "ييمدن م هد مسد س هب، حد سرر بفصد بالنحمع (٢٩٨٨. فل مقتضبات مرسوم الصفقات العمومية:"}, {"id": "B", "text": "مندافصار أو أكثر بوقعار الثر اما و حبدا منافا أو أكثر بوؤمل النرامر مدعصلس"}, {"id": "C", "text": "متداف حد يوفع النر امأ وحيدا فصد الحمع بير ههعت متداف حيد بوقع التز اماك منعصلة فصد الحمع بسر صععان متعددة"}, {"id": "D", "text": "بنص مبدأ الاسئمر اربه (d•exploitation écontinuit c\" Principe) على انتاج البياقات ابء أشطء المقاو لزه"}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 4 و 157 من مرسوم الصفقات العمومية، يقصد بالتجمع (Groupement): متنافسان أو أكثر يوقعان التزاماً وحيداً (إما بالشراكة أو بالتضامن).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q26', 'exam_2022_mgmt', 26, 'التدبير المالي والمحاسبة العمومية', 'أشطه المفاو له', false, '[{"id": "A", "text": "انقاف أشصه المقاو له لمدة وحيزه نيه عم نوفع المدوله ع مزاوله الأشطه"}, {"id": "B", "text": "لا يمكن للآمر بالصرف ان يضع رهن اشارته موالا مقيدة في اعتماد حسب مفتوح باسم عومي الا بواسطة:"}, {"id": "C", "text": "س تصر لهدا المدس دور ح احه دعسها وراق الت فنويه اوامر تصدر لهدا المحاسب مه ضرورة دعمها وراق ات فتويه"}, {"id": "D", "text": "ترة لمحاس تو حاحة دعمها بوراق البت قتويه ة السحاس مه ضرورةدعهااوراق الدت فتويه"}]'::jsonb, ARRAY['D']::text[], 'ينص مبدأ استمرارية الاستغلال (Continuité d''exploitation) في المحاسبة العامة على إعداد القوائم التركيبية والبيانات المالية بناءً على فرضية نية عدم توقف المقاولة عن مزاولة أنشطتها في المستقبل المنظور.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q27', 'exam_2022_mgmt', 27, 'التدبير المالي والمحاسبة العمومية', '2 ١)( حدى الوسا لنيء ع حمه السعطت', false, '[{"id": "A", "text": "اسد ح بع أفم انحاوة في السحرر حلال شهر سارس سع الوحدة"}, {"id": "B", "text": "2022 بالدرهم بحسب ÉOY eo::REDMtN&"}, {"id": "C", "text": "عدد الوحدات ل"}, {"id": "D", "text": "مارس الا"}]'::jsonb, ARRAY['B']::text[], 'لا يمكن للآمر بالصرف التصرف في الأموال المقيدة في حساب مفتوح باسم محاسب عمومي إلا بواسطة أوامر تصدر لهذا المحاسب مع ضرورة دعمها بأوراق إثبات قانونية (الفصل 8 و 35 من المرسوم الملكي 330.66). حل تمرين تدبير المخزون بطريقة FIFO (الأول دخولاً الأول خروجاً) - (Q28 و Q29 و Q30): - المدخلات: - 02/03: مخزون الانطلاق = 5 \text{ وحدات} \times 3 \text{ د} = 15 \text{ د} - 07/03: شراء 1 = 20 \text{ وحدة} \times 2 \text{ د} = 40 \text{ د} - 14/03: شراء 2 = 20 \text{ وحدة} \times 4 \text{ د} = 80 \text{ د} - (مجموع المدخلات = 45 وحدة بقيمة إجمالية = 135 د). - المخرجات (الاستعمالات) بطريقة FIFO: 1. استعمال 1 (11/03) = 7 وحدات: نأخذ 5 وحدات من مخزون الانطلاق (5 \times 3 = 15\text{ د}) + وحدتين (2) من شراء 1 (2 \times 2 = 4\text{ د}) \leftarrow المجموع = 19 د. (يتبقى من شراء 1: 18 وحدة بسعر 2 د). 2. استعمال 2 (22/03) = 20 وحدة: نأخذ 18 وحدة المتبقية من شراء 1 (18 \times 2 = 36\text{ د}) + وحدتين (2) من شراء 2 (2 \times 4 = 8\text{ د}) \leftarrow المجموع = 44 د. (يتبقى من شراء 2: 18 وحدة بسعر 4 د). 3. استعمال 3 (30/03) = 10 وحدات: نأخذها من شراء 2 (10 \times 4 = 40\text{ د}) \leftarrow المجموع = 40 د. (يتبقى في المخزون النهائي: 8 وحدات من شراء 2 بسعر 4 د).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q28', 'exam_2022_mgmt', 28, 'التدبير المالي والمحاسبة العمومية', 'العملية', false, '[{"id": "A", "text": "اسنعسل ء ١"}, {"id": "B", "text": "اسعم ل ١ علب الافلام"}, {"id": "C", "text": "١١) قيمه مجمل استعمالات"}, {"id": "D", "text": "Out First ln First )١)"}]'::jsonb, ARRAY['B']::text[], 'قيمة مجمل الاستعمالات = 19 + 44 + 40 = \mathbf{103 \text{ دراهم}}.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q29', 'exam_2022_mgmt', 29, 'التدبير المالي والمحاسبة العمومية', 'الموضو ع', false, '[{"id": "A", "text": "ماد"}, {"id": "B", "text": "، موضوع ول التدبير العادى والعالي والمعاسبائي لمو مسلت التربية والتطيم العومي"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'قيمة المخزون النهائي بتاريخ 31/03/2022 = 8 \text{ وحدات متبقية} \times 4 \text{ د} = \mathbf{32 \text{ درهماً}} (أو 135 - 103 = 32\text{ د}).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q30', 'exam_2022_mgmt', 30, 'التدبير المالي والمحاسبة العمومية', 'قيمه المخزون لعلب الأقلام الجافة بتاريخ 1*./!.2021/0 بالدرهم بحسب طريقة )«١ First ln First', false, '[{"id": "A", "text": "كمده مخزون عنب الأفلام الجافة بتاريخ ''*/!.0''2022 بحسب ط بقة ١١١) ٢١٣٦١ Firstln هي:"}, {"id": "B", "text": "يتو ايداع مشروع قانون المالية للسنة بمكتب مجلس النواب فى:"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'كمية المخزون النهائي بتاريخ 31/03/2022 = 45 \text{ (مجموع المدخلات)} - 37 \text{ (مجموع الاستعمالات: } 7+20+10) = \mathbf{8 \text{ وحدات}}.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q31', 'exam_2022_mgmt', 31, 'المحاسبة العمومية والمالية', 'ينص القانون التنظيمى للمالية على اعتماد ثلاثة أنماط محاسباتية، وهى:', false, '[{"id": "A", "text": "المحسبة السيز انياتية والمحاسبة الإدارية ومحاسة تحنيل التكلي"}, {"id": "B", "text": "لدسب انسز اني أتية والسحاسدة العاسة والسحاسبة ،لادارية"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 48 من القانون التنظيمي لقانون المالية 130.13، يودع مشروع قانون المالية للسنة بمكتب مجلس النواب في 20 أكتوبر من السنة الجارية على أبعد تقدير.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q32', 'exam_2022_mgmt', 32, 'المحاسبة العمومية والمالية', 'المحسبة الير اتد تيد والحاسة العامة ومحاسبة تحنيل التكلع', false, '[{"id": "A", "text": "المحسبة المر اني أية والمحاسة العامة والمحاس الملة"}, {"id": "B", "text": "تشتمن تكاليف الميز انية العامة للدولة على نفقات التسيير ونفقت ، ستتمار اضفه الى:"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 31 من القانون التنظيمي لقانون المالية 130.13، تقوم الدولة بمسك ثلاثة أنماط محاسباتية وهي: المحاسبة الميزانياتية (أو الإدارية) والمحاسبة العامة ومحاسبة تحليل التكاليف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q33', 'exam_2022_mgmt', 33, 'المحاسبة العمومية والمالية', 'النفقت السعلده تحدسة الدين العسوسي ونفقات الموظفين', false, '[{"id": "A", "text": "النفقات الطار ته والسحصصات الاحتياطية"}, {"id": "B", "text": "نفقات الموظفب ونفقات النعثات الدبلو ماسية"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 14 من القانون التنظيمي لقانون المالية 130.13، تشتمل نفقات الميزانية العامة على ثلاثة أبواب: نفقات التسيير، ونفقات الاستثمار، والنفقات المتعلقة بخدمة الدين العمومي (أما نفقات الموظفين فهي جزء من نفقات التسيير).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q34', 'exam_2022_mgmt', 34, 'المحاسبة العمومية والمالية', 'النفقات المنعئقه بخدمة الدين العسوسي', false, '[{"id": "A", "text": "تعود المسووليه المباشرة في تدبير حملات التوجيه التربوي في الموسسات التعليميه ل:"}, {"id": "B", "text": "الفاعلين في مجال التوجيه المدرسي والمهني الحاصلين على تكليف بدلك س طرف مدير الأكاديمية مفتش التوجيه التربوي فقط إذا تعلق الأمر بسؤسسةه تعليمية خصوصية"}, {"id": "C", "text": "إطار التوجيه التربوي العامل بالمؤسسة المعية"}, {"id": "D", "text": "أطر هيأة الإدارة التربوية للموسسة وأطر هياة التوجيه بالسوسسة المعنية مالحلة O*REPMI•:"}]'::jsonb, ARRAY['D']::text[], 'تعود المسؤولية المباشرة في تدبير وتنظيم حملات التوجيه التربوي داخل المؤسسات التعليمية لـ أطر هيئة الإدارة التربوية للمؤسسة وأطر هيئة التوجيه التربوي العاملين بالقطاع المدرسي للمؤسسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q35', 'exam_2022_mgmt', 35, 'التدبير المالي والمحاسبة العمومية', 'مباراة توليف ملحفي الالأنصلا والإدارة الأطر .', false, '[{"id": "A", "text": "موضوع حول التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي"}, {"id": "B", "text": "تدخل نفقات تدبير حظيرة السيارات بمديرية إقليمية ضمن؛ ميزانية الاستثمار"}, {"id": "C", "text": "نفقات الشساعة"}, {"id": "D", "text": "الصفقة الاطار يكون طلب العروض في الصفقات العمومية مفتوحا عندما:"}]'::jsonb, ARRAY['B']::text[], 'تدخل نفقات تدبير وصيانة حظيرة السيارات وشراء المحروقات بالمديرية الإقليمية ضمن نفقات التسيير، أي في ميزانية الاستغلال.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q36', 'exam_2022_mgmt', 36, 'التدبير المالي والمحاسبة العمومية', 'يمكن لكل متنافس الحصول على ملف الاستشارة وتفدم ترشيحه', false, '[{"id": "A", "text": "لا يسمح للمتنافس الحصول على ملف الاستشارة وتقديم تر مسسحه"}, {"id": "B", "text": "يمكن للمتنافس تقديم تر شيحه دوى الحصول على ملف الاستشارة يسمح لنائل الصفقه بالحصول على ملف الاستشار ة ثم تقديم ترشيحه"}, {"id": "C", "text": "يستند مسير المصالح المادية والمالية بموسسة تعليمية في اختيار الممون (٣»»)"}, {"id": "D", "text": "رسات الأستشارة سجل السمو نين فقط"}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 17 من مرسوم الصفقات العمومية، يكون طلب العروض "مفتوحاً" عندما يمكن لكل متنافس الحصول على ملف الاستشارة وتقديم ترشيحه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q37', 'exam_2022_mgmt', 37, 'التدبير المالي والمحاسبة العمومية', 'سند الضب', false, '[{"id": "A", "text": "الفتورة وسند الطلب"}, {"id": "B", "text": "الشسيع مسوول بصفة شخصية ومن ماله الخاص: ع جميع الأموال التي بحوزته وتك التي مر بالتصرف فيها وتلك التي يتحم موولية استخلاصها، في"}, {"id": "C", "text": "اطار التضامن مع الوكين السعوص"}, {"id": "D", "text": "ع حسع الأموال التي بحوزته وثلك التي يأمر بالتصرف فيها وتلك التي تح سزويةاتحلاصها، في اطار التضامن مع الأمر بالصرف"}]'::jsonb, ARRAY['A']::text[], 'قبل إصدار سند الطلب، يستند مسير المصالح المادية والمالية ورئيس المؤسسة في اختيار الممون صاحب العرض الأقل ثمناً على رسائل الاستشارة (وثائق استشارة الممونين وبيانات الأثمان الثلاثة Devis).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q38', 'exam_2022_mgmt', 38, 'التدبير المالي والمحاسبة العمومية', 'ع حمع الأموال التي بحوزته ونلك التي مر بالتصرف فيها وتلك التي يتحمل سؤوليه اتحلاصيا، في', false, '[{"id": "A", "text": "اطار التضامن الخازن المكلف بالأداء"}, {"id": "B", "text": "ع جميع الأموال التي بحوزته وتلك التي يأمر بالتصرف فيو وتلك التي يتحل سؤولية استخلاصها حلال الأسدس الثاني من السنة الدراسية 21()2— —22()2، قام ملحق تربوي مدرب بإحدى المؤسسات التعليمية بدراسة"}, {"id": "C", "text": "احصائية همت عينة من تلاميد بعض الأقسام الدراسية بالمؤسسة. درس نقطة الفرض الأول للأدس الثاني وتوصل"}, {"id": "D", "text": "لا 15— 20"}]'::jsonb, ARRAY['D']::text[], 'حسب الفصل 17 من المرسوم الملكي 330.66 وتعليمة الشساعات، يعتبر الشسيع (الوكيل المفوض للخوالة) مسؤولاً بصفة شخصية ومن ماله الخاص عن جميع الأموال التي بحوزته وتلك التي يأمر بالتصرف فيها وتلك التي يتحمل مسؤولية استخلاصها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q39', 'exam_2022_mgmt', 39, 'التدبير المالي والمحاسبة العمومية', 'إلى النتائ التالية.', false, '[{"id": "A", "text": "النقطة"}, {"id": "B", "text": "التردد المتوسط الحسابي (arithmétique moyenne La) لمتغير النقطة هو:"}, {"id": "C", "text": "8 NOTE REDMI OO"}, {"id": "D", "text": "CAMERA QUAD AI OO 7\""}]'::jsonb, ARRAY['C']::text[], 'الجواب الصحيح هو (C) - التعليل (حساب المتوسط الحسابي من الجدول): - الفئة [0 - 5[: المركز c_1 = 2,5 | التردد n_1 = 5 \leftarrow 2,5 \times 5 = 12,5 - الفئة [5 - 10[: المركز c_2 = 7,5 | التردد n_2 = 2 \leftarrow 7,5 \times 2 = 15 - الفئة [10 - 15[: المركز c_3 = 12,5 | التردد n_3 = 10 \leftarrow 12,5 \times 10 = 125 - الفئة [15 - 20]: المركز c_4 = 17,5 | التردد n_4 = 3 \leftarrow 17,5 \times 3 = 52,5 - مجموع الترددات (N) = 5 + 2 + 10 + 3 = 20. \bar{x} = \frac{12,5 + 15 + 125 + 52,5}{20} = \frac{205}{20} = \mathbf{10,25}')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q40', 'exam_2022_mgmt', 40, 'التدبير المالي والمحاسبة العمومية', 'الصلدة', false, '[{"id": "A", "text": "؟"}, {"id": "B", "text": "''fo64"}, {"id": "C", "text": ": موضوع حول التدبير المادي والمالي والمحاسباتي لمؤسسات التربية والتعليم العمومي"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'الجواب الصحيح هو (D) - التعليل (حساب الوسيط من الجدول في')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q41', 'exam_2022_mgmt', 41, 'التدبير المالي والمحاسبة العمومية', 'الوسيط (médiane La) لمتغير النقطة هو؛', false, '[{"id": "A", "text": "المنو ال (mode l,e) لمتغير النقطة هو:"}, {"id": "B", "text": "يسمى الوكيل المفوض محاسبا ب: أكاديميه جهوية"}, {"id": "C", "text": "مؤ سسة تعليمية ثانوية إعدادية"}, {"id": "D", "text": "مو سسة تعليمية ثانوية تاهينية مديريه اقليمية"}]'::jsonb, ARRAY['A']::text[], 'الجواب الصحيح هو (A) - التعليل (حساب المنوال من الجدول في')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q42', 'exam_2022_mgmt', 42, 'المحاسبة العمومية والمالية', 'يمارس الخازن المكلف بالآداء مهام محاسب عمومي ب:', false, '[{"id": "A", "text": "مدير ية اقليمية"}, {"id": "B", "text": "أكاديمية جهويه"}, {"id": "C", "text": "مو سسة تعنيمية ثانوية اعاديه"}, {"id": "D", "text": "عدة مديريات اقليمية"}]'::jsonb, ARRAY['D']::text[], 'يعين الوكيل المفوض (الشسيع / المكلف بالخوالة) على مستوى المصالح اللاممركزة التي لا تتوفر على خازن خاص بها، أي بـ مديرية إقليمية (بتفويض وأداء تحت مراقبة الخازن المكلف بالأداء لدى الأكاديمية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q43', 'exam_2022_mgmt', 43, 'المحاسبة العمومية والمالية', 'تهتم المحاسبة التحنينية بالتدفقات:', false, '[{"id": "A", "text": "النقدية الخار جية"}, {"id": "B", "text": "الداخلية"}, {"id": "C", "text": "الداخلية والخارجية"}, {"id": "D", "text": "العينية"}]'::jsonb, ARRAY['B']::text[], 'يمارس الخازن المكلف بالأداء (Trésorier payeur) مهام محاسب عمومي لدى المؤسسات العمومية، وفي قطاع التربية الوطنية يتواجد على مستوى كل أكاديمية جهوية للتربية والتكوين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q44', 'exam_2022_mgmt', 44, 'التدبير المالي والمحاسبة العمومية', 'يقوم ملحق الاقتصاد والإدارة بالمشاركة في:', false, '[{"id": "A", "text": "المداومة خلال العطل المدرسية للأسدس الأول حسب توزيع رئيس المؤسسة"}, {"id": "B", "text": "المداومة خلال العطل المدرسية للأسدس الثاني حسب توزيع رئيس المؤسسة"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تهتم المحاسبة التحليلية بتتبع وتحليل شروط الاستغلال والتدفقات الداخلية للمؤسسة لحساب التكاليف وسعر التكلفة (بينما تهتم المحاسبة العامة بالتدفقات الخارجية مع الأغيار).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q45', 'exam_2022_mgmt', 45, 'التدبير المالي والمحاسبة العمومية', 'المداومة خلال العطل المدرسية حسب توزيع رئيس المؤسسة', false, '[{"id": "A", "text": "المداومة خلال العطل المدرسية أيام السبت والأحد، للأقسام الخارجية، حسب رزي زئي امؤسسة"}, {"id": "B", "text": "Q4Y"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يقوم ملحق الاقتصاد والإدارة بالمشاركة في المداومة خلال العطل المدرسية حسب توزيع رئيس المؤسسة لضمان استمرارية المرفق العمومي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q46', 'exam_2022_mgmt', 46, 'التدبير المالي والمحاسبة العمومية', 'التربية والعليم مي', false, '[{"id": "A", "text": "نحمه هه، \" نبيوهم مى متى لم"}, {"id": "B", "text": "المادي و"}, {"id": "C", "text": "حول التدبير"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تهتم المحاسبة المادية بالمؤسسات التعليمية بضبط ومسك وحفظ جميع الأشياء المنقولة (سواء كانت أدوات وتجهيزات قابلة للجرد أو مواد وسلع قابلة للاستهلاك).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q47', 'exam_2022_mgmt', 47, 'التدبير المالي والمحاسبة العمومية', 'المادية ب:', false, '[{"id": "A", "text": "الأشياء المنقولة"}, {"id": "B", "text": "ات المنقو له فسذ لأ ن القابلة للاستهلاك"}, {"id": "C", "text": "القابلة للاستهلاك المواد غير"}, {"id": "D", "text": "الأدوات و مباراه"}]'::jsonb, ARRAY['B']::text[], 'تعتبر الفاتورة في المحاسبة العامة وثيقة إثبات ذات صبغة تجارية، قانونية ومحاسباتية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q48', 'exam_2022_mgmt', 48, 'التدبير المالي والمحاسبة العمومية', 'العامة وثيقة:', true, '[{"id": "A", "text": "الفاتورة في المحاسبه لتسليم وتسلم السلع"}, {"id": "B", "text": "محاسباتية تجارية، قانونية و للأداء"}, {"id": "C", "text": "احصمائية تقع مسوولية إعداد ميز انية الموسسة التعليمية، وكذا تتبع تنفيذها والاشراف عليها على عمى."}, {"id": "D", "text": "الحارس العام المصله المادية والسالية المحاسب العمومي"}]'::jsonb, ARRAY['B', 'C']::text[], 'قانونياً، تقع مسؤولية إعداد الميزانية والسهر على تنفيذها والإشراف العام عليها على عاتق رئيس المؤسسة بصفته الآمر بالصرف (B)، بمساعدة وتنفيذ تقني ومحاسبي مباشر من طرف مسير المصالح المادية والمالية (C).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q49', 'exam_2022_mgmt', 49, 'التدبير المالي والمحاسبة العمومية', 'تتميز القرارات الاستر اتيجية لمؤسسة عمومية بكونها:', false, '[{"id": "A", "text": "تؤخذ على أعلى متوى ولا يصعب التراجع عنها ودات أثر شامل"}, {"id": "B", "text": "التراجه عنها ودات أتر محدود"}, {"id": "C", "text": "تؤخذ على أعلى مثوى ويصعب"}, {"id": "D", "text": "توحد على اعلى مستوى ويصعب"}, {"id": "E", "text": "توحد على أعلى متوى ويسيل التراجع عنيا وذات أثر محدود"}]'::jsonb, ARRAY['C']::text[], 'وفق تصنيف "إيغور أنسوف" (Ansoff) للقرارات (استراتيجية، تكتيكية، تشغيلية)، تتميز القرارات الاستراتيجية بكونها تؤخذ على أعلى مستوى ويصعب التراجع عنها وذات أثر شامل وطويل الأمد.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q50', 'exam_2022_mgmt', 50, 'التدبير المالي والمحاسبة العمومية', 'يقوم تدبير الموارد البشرية لموسسة عمومية على:', false, '[{"id": "A", "text": "التوظيف، التطوير، تعويض العاملين والعلاقة بينهم"}, {"id": "B", "text": "التوظيف، التطوير وتديد الحاجيات من الموارد البشرية"}, {"id": "C", "text": "التدريب، التطوير وتحدد الحاجيات من الموارد البشرية"}, {"id": "D", "text": "تحديد الحاجيات من الموارد البشرية، التكوين وتقييم أداء الموظفين"}]'::jsonb, ARRAY['D']::text[], 'في المرافق والمؤسسات العمومية، يقوم تدبير الموارد البشرية (GPEEC) على تحديد الحاجيات من الموارد البشرية، التكوين وتقييم أداء الموظفين (بينما التوظيف الحر وتعويض الأجور التفاوضي يخضع لقواعد الوظيفة العمومية المركزية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q51', 'exam_2022_mgmt', 51, 'المحاسبة العمومية والمالية', 'لا يجوز للمحاسب العمومي أن يقوم بمراقبة صحة الالتزام بالنفقات إلا في:', false, '[{"id": "A", "text": "الحالات التي لا تفوض له فيها هذه المراقبة بشكل صريح"}, {"id": "B", "text": "الحالات التي تفوض له فيها هذه المراقبة بشكل صريح"}, {"id": "C", "text": "حالات ميزانية الاستغلال التي تفوض له فيها هذه المراقبة بشكل صريح"}, {"id": "D", "text": "حالات ميزانية الاستثمار التي تفوض له فيها هذه المراقبة بشكل صريح"}]'::jsonb, ARRAY['A']::text[], 'حسب الفصل 11 من المرسوم الملكي 330.66، يراقب المحاسب العمومي صحة الالتزام بالنفقات، غير أنه في النظام المغربي لمراقبة نفقات الدولة تتولى مصالح "مراقبة الالتزام بالنفقات" (CED) أو الخازن المكلف بالأداء هذه المراقبة في مرحلة الالتزام، بينما في مرحلة الأداء يتحقق المحاسب من وجود تأشيرة الالتزام المسبق. وفي صياغة السؤال: يمارس المحاسب مراقبة صحة الالتزام في الحالات التي تفوض له فيها هذه المراقبة بشكل صريح (B) (أو في إطار المراقبة التراتبية المدمجة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q52', 'exam_2022_mgmt', 52, 'التدبير المالي والمحاسبة العمومية', 'وضوع', false, '[{"id": "A", "text": "ب مر رن اتتر انههر والدقه واقمعنرت لمومسد تمية ولتعبر فلرميا ما )"}, {"id": "B", "text": "تتميز البنية الو ظيفية (ronctionnelle y)Structure:"}, {"id": "C", "text": "تحديد دقيق للمهام والاختصاصات ووحدة القيادة"}, {"id": "D", "text": "وزة القيادة وتفويض الاختصاصات"}, {"id": "E", "text": "تحديد دقيق للمهام والاختصاصات مع ارتفاع تكلفه البنية"}]'::jsonb, ARRAY['D']::text[], 'في نظريات التنظيم (تايلور وفايول)، تتميز البنية الوظيفية (Structure fonctionnelle) بتخصص الرؤساء الوظيفيين مما يضمن جودة القرارات والإجراءات المتخذة من قبل مختصين (لكن يعاب عليها غياب وحدة القيادة لتعدد الرؤساء، عكس البنية التراتبية الخطية التي تتميز بوحدة القيادة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q53', 'exam_2022_mgmt', 53, 'التدبير المالي والمحاسبة العمومية', 'جودة القرارات والإجراءات المتحدة من قبل مختصين', false, '[{"id": "A", "text": "يرمي التشخيص الداخلي (interne l(iagnostic) للموسسة الى تحديد:"}, {"id": "B", "text": "نقاط القوة والمخاطر المحتملة للمؤسسة"}, {"id": "C", "text": ") الفرص المتاحة والمخاطر المحتملة للمؤسسة"}, {"id": "D", "text": "نض القوة ونقاط الضعف للموسسه"}, {"id": "E", "text": "نقط الضعف والفرص المتاحه للمؤسسة"}]'::jsonb, ARRAY['C']::text[], 'في نموذج التحليل الاستراتيجي (SWOT)، يرمي التشخيص الداخلي للمؤسسة إلى تحديد نقاط القوة ونقاط الضعف (بينما التشخيص الخارجي يحدد الفرص المتاحة والمخاطر/التهديدات).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q54', 'exam_2022_mgmt', 54, 'التدبير المالي والمحاسبة العمومية', 'تعرف الأصول (/زن١) على أنها:', false, '[{"id": "A", "text": "قيمة لا يمكن تحويله الى نقد"}, {"id": "B", "text": "ياء شهد فضئسة تدلهؤإيللإؤعييل"}, {"id": "C", "text": "أي شيء أو مورد ذي قيمة يسكن تحوينه إلى نقد"}, {"id": "D", "text": "تتكون الخصوم (aX»if)) من:"}, {"id": "E", "text": "الديون"}]'::jsonb, ARRAY['D']::text[], 'تعرف الأصول (Actif) محاسبياً ومالياً بكونها أي شيء أو مورد ذي قيمة تملكه المؤسسة ويمكن تحويله إلى نقد (أو يولد منافع اقتصادية مستقبلية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q55', 'exam_2022_mgmt', 55, 'التدبير المالي والمحاسبة العمومية', 'تشمل الأصول (٢ز1).) ما تملك المؤسسة من الاستعمالات:', false, '[{"id": "A", "text": "السنة"}, {"id": "B", "text": "لمدة تفل عن"}, {"id": "C", "text": "لمدة تتجاوز السنه"}, {"id": "D", "text": "لمدة قد تقل أو تتجاوز السنة"}, {"id": "E", "text": "المستعجلة"}]'::jsonb, ARRAY['C']::text[], 'تتكون خصوم الميزانية (Passif) من الموارد المالية للمؤسسة وهي: الرأسمال (الأموال الذاتية) والديون (الالتزامات تجاه الأغيار).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q56', 'exam_2022_mgmt', 56, 'التدبير المالي والمحاسبة العمومية', 'ة المؤسسة من:', false, '[{"id": "A", "text": "ات لاستخدامها في الإنتاج أو في تسهيل أمور محتل العمليات"}, {"id": "B", "text": "الأصول الثابتة éimmobilis ''ictil/"}, {"id": "C", "text": "تسهيل أمور سحتلف"}, {"id": "D", "text": "تسهل أمود محتل العمليات"}, {"id": "E", "text": "سبأن وسعدات وتجهير"}]'::jsonb, ARRAY['C']::text[], 'تشمل الأصول (بشقيها: الأصول الثابتة والأصول المتداولة) مجموع ما تملكه المؤسسة من الاستعمالات لمدة قد تقل عن السنة (الأصول المتداولة) أو تتجاوز السنة (الأصول الثابتة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q57', 'exam_2022_mgmt', 57, 'التدبير المالي والمحاسبة العمومية', 'ات لاستخدامها في الإنتاج أو مى', false, '[{"id": "A", "text": "، ات لاستحدامها في الإنتاج أو فى"}, {"id": "B", "text": "، أمه م ات لاستخدامها في الإنتاج أو في"}, {"id": "C", "text": "مبان وتجهير معدات وتجهيز"}, {"id": "D", "text": "أراض و معدات وتجهير ، اض و"}]'::jsonb, ARRAY['D']::text[], 'تشمل الأصول الثابتة المادية (Actif immobilisé corporel) ما بحوزة المؤسسة بشكل دائم من مبانٍ وأراضٍ ومعدات وتجهيزات لاستخدامها في الإنتاج أو في تسهيل أمور مختلف العمليات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q58', 'exam_2022_mgmt', 58, 'المحاسبة العمومية والمالية', 'موضوع حول التدبير العدي والمالي والمحاسبائي لمومسات التربية والتعليم )', false, '[{"id": "A", "text": "الأصول المتداولة (circulant Actif):"}, {"id": "B", "text": "الو سائل النقدية والأصول الأخرى القابلة للتحويل إلى نقدية والثي تستخدم في الإنتاج"}, {"id": "C", "text": "الآلات والتحهبرات القائلة بصعوبة للنحويل إلى أصول نقدية أو التي تستخدم في الإنتاج"}, {"id": "D", "text": "الأصول الأخرى القابله للتعويل إلى نقدية أو التي تستخدم في الإنتاح"}, {"id": "E", "text": "الأصل النحاري وبراءة الاختراع اللذان يستخدمان في الإنتاج"}]'::jsonb, ARRAY['A']::text[], 'تتضمن الأصول المتداولة (Actif circulant) والسيولة: الوسائل النقدية والأصول الأخرى القابلة للتحويل إلى نقدية على المدى القصير (كالمخزونات والزبناء) والتي تستخدم في دورة الإنتاج والاستغلال.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q59', 'exam_2022_mgmt', 59, 'التدبير المالي والمحاسبة العمومية', 'يقصد بثراء المهام (»(tch dcs Enrichissement) في تدبير مؤسسة عمومية بب', false, '[{"id": "A", "text": "للمهي"}, {"id": "B", "text": "اصطع العامل بالمهام القديمة دون الرفع من استقلاليته وححم مسؤو اصطع العامل بمهام حديدة ذات أهمية للر فع من استفلالينه وححم مسؤوليا"}, {"id": "C", "text": "اصط ع العامل بمهام حديدة دون الرفع من استقلاليئهوححم مسؤو لراته"}, {"id": "D", "text": "لداته اصط ع العامل بمهام تنفيذية دون الرفع من استقلاليتهوححم مسوو"}]'::jsonb, ARRAY['B']::text[], 'يقصد بإثراء المهام (Enrichissement des tâches - مدرسة هيرزبرغ) توسيعها عمودياً عبر اضطلاع العامل بمهام جديدة ذات أهمية ونوعية (كالتخطيط والرقابة الذاتية) للرفع من استقلاليته وحجم مسؤولياته وتحفيزه. (بينما إضافة مهام تنفيذية من نفس المستوى دون رفع المسؤولية يسمى توسيع المهام - Élargissement).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q60', 'exam_2022_mgmt', 60, 'التدبير المالي والمحاسبة العمومية', 'يستند التقسيم الأفقى للعمن (il: trav du horizontale ision• I(i٠) على:', false, '[{"id": "A", "text": "فصر مهام الاعداد عن مهام الإنجاز"}, {"id": "B", "text": "دمج موام الأعداد مع مهام الإتجار"}, {"id": "C", "text": "الهام الجزئية من أجل تسريع وثيرة العمل والرفع من الإنتاجية"}, {"id": "D", "text": "تقيو العمل إلى مهام جزئية من أجل تسريع وثيرة العمل والرفع من الانتاجية"}]'::jsonb, ARRAY['D']::text[], 'في التنظيم العلمي للعمل (تايلور)، يستند التقسيم الأفقي للعمل (Division horizontale) على تقسيم وتجزئة العمل إلى مهام جزئية بسيطة ومتكررة من أجل تسريع وتيرة العمل والرفع من الإنتاجية (بينما فصل مهام الإعداد والتصور عن مهام الإنجاز والتنفيذ يسمى التقسيم العمودي للعمل - Division verticale).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q61', 'exam_2022_mgmt', 61, 'التدبير المالي والمحاسبة العمومية', 'تمكن هيكنه (rganigramme()) مؤسسه عمومية من التعرف على:', false, '[{"id": "A", "text": "توريع المهام - عدد المستويات الهرمية - العلاقات بين مختلف المتويات"}, {"id": "B", "text": "توريع المهام - عدد المستويات الهرمية - تحديد السسووليات"}, {"id": "C", "text": "توريع السهام - تحديد المسؤوليات - فصن اللط"}, {"id": "D", "text": "تحدد المسؤوليات - فصل السلط - العلاقات بين مختلف المستويات"}]'::jsonb, ARRAY['A']::text[], 'تمكن الخريطة التنظيمية أو الهيكلة (Organigramme) من التعرف بصرياً على: توزيع المهام والوظائف - عدد المستويات الهرمية - العلاقات التراتبية والوظيفية بين مختلف المستويات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q62', 'exam_2022_mgmt', 62, 'التدبير المالي والمحاسبة العمومية', 'يقوم تدبير موسسة عمومية بالأساس على؛', false, '[{"id": "A", "text": "تتبع إنجاز الأهداف - تعبئة الموارد - تنشيط الموارد البشرية - مراقبة الأداء"}, {"id": "B", "text": "تديد الأهداف - تعبثة الموارد - تنشيط الموارد البشرية - مراقبة الأراء"}, {"id": "C", "text": "تحديد الأهداف - تعبئة الموارد - تنشيط الموارد البشرية"}, {"id": "D", "text": "تحديد الأهداف - تعبئة الموارد - مراقبة الأداء"}]'::jsonb, ARRAY['B']::text[], 'يقوم تدبير مؤسسة عمومية وفق سيرورة التدبير الحديثة على الحلقات الأربع المتكاملة: تحديد الأهداف (التخطيط) - تعبئة الموارد (التنظيم) - تنشيط الموارد البشرية (القيادة/التوجيه) - مراقبة الأداء (الرقابة والتقييم).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q63', 'exam_2022_mgmt', 63, 'التدبير المالي والمحاسبة العمومية', 'يتعين على المجلس الإداري للأكاديمية حسب المادة م من القانون (/()-7 (0 أن يحدد لزوما لجنة مكلفةب:', false, '[{"id": "A", "text": "نظام الرقابة الداخلية"}, {"id": "B", "text": "نظأم التنسيق مع التعليم العالي"}, {"id": "C", "text": "نظام التنسيق مع الشؤون الثقافية والاجتماعية"}, {"id": "D", "text": "نظام تقويم برامج التكوين"}, {"id": "E", "text": "كد"}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 6 من القانون 07.00 القاضي بإحداث الأكاديميات الجهوية للتربية والتكوين، يتعين على مجلس الأكاديمية أن يحدث لزوماً ثلاث لجان من بينها لجنة مكلفة بـ التنسيق مع قطاع التعليم العالي (إلى جانب لجنة التنسيق مع قطاع التكوين المهني، واللجنة المكلفة بالشؤون المالية والاقتصادية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q64', 'exam_2022_mgmt', 64, 'التدبير المالي والمحاسبة العمومية', 'ا', false, '[{"id": "A", "text": "الموضو ع"}, {"id": "B", "text": "ل التدبير المادي والمالي والمحاسبائي اموسمالك التربية والتعليم العومي"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يهدف مشروع المؤسسة المندمج في جوهره إلى تحسين جودة التعلمات ورفع مقياس جودة التمدرس من خلال التركيز على مجالات عمل ملائمة للبرامج التعليمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q65', 'exam_2022_mgmt', 65, 'التدبير المالي والمحاسبة العمومية', 'يهدف مشرو ع الموسسة المندمج الى؛', false, '[{"id": "A", "text": "تحصب هو دو الهدر سير ورفع مقياس حودة الإدارة التربوية من حلال التركيز على مجالات عمل ملانمة"}, {"id": "B", "text": "للبر امه التعليمية المؤسسة"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب هنري مينتزبرغ (Mintzberg)، ينبني تنسيق المهام عن طريق التوافق أو التناسب المتبادل/الطبيعي (Ajustement mutuel) على قيام الموظفين بـ التواصل التلقائي غير الرسمي مع توزيع وتنسيق المهام فيما بينهم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q66', 'exam_2022_mgmt', 66, 'التدبير المالي والمحاسبة العمومية', 'نوسير حودة اطر الدعم الاحتماعي ورفع مقياس حودة التمدرس من خلال التركيز على محالات عمل', false, '[{"id": "A", "text": "ملأئمة لبر ام المؤمسة التعليمية"}, {"id": "B", "text": "تحسير حودة اطر الاقتصار والادارة ورفع مفاس جودة النمدرس من حلال التركيز على محالات عمل"}, {"id": "C", "text": "ملائمة لدر ام المؤسسه التعليمية"}, {"id": "D", "text": "نوسير حودة النعلمات ور فع مقياس حودة التمدرس مر حلال النكي على محالات عمل ملائمة للنرامح"}, {"id": "E", "text": "اله"}]'::jsonb, ARRAY['D']::text[], 'حسب تعليمة شساعات النفقات، لا يسمح للشسيع (الوكيل المفوض) بالأداء لورثة الدائن المتوفى أو في حالة وجود تعرضات أو حجوزات، لأن التحقق من الوثائق القانونية للإرث وصرف النفقة في هذه الحالة يدخل في اختصاص المحاسب العمومي الأصلي وهو الخازن المكلف بالأداء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q67', 'exam_2022_mgmt', 67, 'التدبير المالي والمحاسبة العمومية', 'ينينى تنسيق المهام عن طريق التناسب الطبيعي (naturel \justement) لم فبام الموظفين ب:', false, '[{"id": "A", "text": "انتو اص النئدى مع توريع المهاه فيما بينهم"}, {"id": "B", "text": "انتو صر التدي دون توريع المهام فيما بسهد"}, {"id": "C", "text": "تم ير الأوامر ع طربق الإد،ةوانحار عملدث المرافيه لأعمل الغر بق"}, {"id": "D", "text": "لا يسمح للشسيه د لأداء لورثة الدانن لان ذلك يدخن في اختصاص:"}, {"id": "E", "text": "بصرم الس ع"}]'::jsonb, ARRAY['D']::text[], 'يقوم نمط الاهتلاك المتناقص (Amortissement dégressif) على احتساب أقساط مرتفعة للاهتلاك خلال السنوات الأولى ثم تتناقص تدريجياً في السنوات الموالية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q68', 'exam_2022_mgmt', 68, 'التدبير المالي والمحاسبة العمومية', 'يقوم نمط الاهتلات الصن قص (dégressif Amortissement,) على احتسب اقسط:', false, '[{"id": "A", "text": "تعرف المحسبة العمومية ب: محمو ع المواع التي تجري، ما عدا وي حاله سن مقتضيات محالدة، على العسليات السالية والحسابيه للدولة"}, {"id": "B", "text": "والحماعات المحلية ومؤسساتها وهيأتها وا تحدد الالتر امات السنوطة بالأعوان المكلفين بها مجمو ع القوا عد التي تجري، ما عدا في حالة سن مقتضيات مخالدة، على العسئيات السالية والحسابيه للدولة"}, {"id": "C", "text": "والجماعات المحلية ومؤسساتها وهيأتها وا تحدد المسؤوليات المنوطة بالأعوان المكلفين بها مجموع القواعد التي تجري، ما عدا في حالة سن مقتضيات مخالفة، على العمليات العاليه والحسابية للدولة"}, {"id": "D", "text": "والجماعات المحلية ومؤسساتها وهياتها وا تحدد الالتزامات والمسؤوليات المنوطة بالأعوان المكلفين بها مجموع القواعد التي تجري على العمليات المالية والحسابيه للدولة والتي تحدد الالتزامات والمسؤوليات المنوطة بالأعوان المكلفين بها"}]'::jsonb, ARRAY['C']::text[], 'حسب الفقرة الأولى من الفصل 1 من المرسوم الملكي 330.66، تعرف المحاسبة العمومية بكونها: "مجموع القواعد التي تجري، ما عدا في حالة سن مقتضيات مخالفة، على العمليات المالية والحسابية للدولة والجماعات المحلية ومؤسساتها وهيئاتها والتي تحدد الالتزامات والمسؤوليات المنوطة بالأعوان المكلفين بها".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q69', 'exam_2022_mgmt', 69, 'التدبير المالي والمحاسبة العمومية', 'م "معتد كمر"', false, '[{"id": "A", "text": ": موضوع حول التديير المادي والمالي والمحاسبائي لمؤمسات النر . وا"}, {"id": "B", "text": "تتالف المحاسبة العمومية من شقين، كما حددها الفصل 1( ، المرسوم 66-()33، وهما: المحاسبة الإدار ية ومحاسية الحر ينة"}, {"id": "C", "text": "المحاسبة العامة ومحاسرة الخزينة"}, {"id": "D", "text": "المحاسية الإدار ية والمحاسية التحليلية المحاسبة التحليلية ومحاسدة الحز ينة"}]'::jsonb, ARRAY['A']::text[], 'حسب هيكلة المرسوم الملكي 330.66 (الباب الثالث والرابع)، تتألف المحاسبة العمومية من شقين أساسيين وهما: المحاسبة الإدارية (يمسكها الآمرون بالصرف) ومحاسبة الخزينة / المحاسبة العامة (يمسكها المحاسبون العموميون).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q70', 'exam_2022_mgmt', 70, 'المحاسبة العمومية والمالية', 'يقوو المحاسب العمو مي بمسك:', false, '[{"id": "A", "text": "محاسدة الخر ينه ومحاسبات للقيم والمواد والسندات"}, {"id": "B", "text": "محاسرة انحريدة ومحاسبة للنقود ومحاسات للفيم والمواد"}, {"id": "C", "text": "مداسره الحر يده ومحاسبات للنقود وللقيم"}, {"id": "D", "text": "مداسه الخر يدة ومحاسبة للقود ومحاسبات للقيم والمواد والسندات"}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 55 من المرسوم الملكي 330.66، تشتمل محاسبة المحاسبين العموميين على: محاسبة الخزينة ومحاسبة للنقود ومحاسبات للقيم والمواد.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q71', 'exam_2022_mgmt', 71, 'المحاسبة العمومية والمالية', 'تمست محاسبة المحاسبين عن كل:', false, '[{"id": "A", "text": "شهر تنع لطريقه التقييد المزدوج"}, {"id": "B", "text": "أسدر تبعا لطريقة التقييد المزدوج"}, {"id": "C", "text": "سده منيه تنعا لطر يقه التقيد المزدوج"}, {"id": "D", "text": "ه مدنده تنعا لطر يقه التقييد العادي الفردي"}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 61 من المرسوم الملكي 330.66، تمسك محاسبة المحاسبين عن كل سنة مدنية تبعاً لطريقة التقييد المزدوج (Partie double).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q72', 'exam_2022_mgmt', 72, 'التدبير المالي والمحاسبة العمومية', 'تتبر بمثابة عمليات للخزينة:', false, '[{"id": "A", "text": "حمه العمنيات الستعنقه بألودائع والحسابات الجارية والعسليت التي تهم حسبت محتف الديون حميع العمليات المعلقه بالقيم السكن تداولها والودائع والحسابات الجرية والعمليت التي تيم حسابات"}, {"id": "B", "text": "مختلف الديون حزء م العملدت المتعنقة بالنقود والقيم المسكن تداولها والودائع والحابات الحرية والعسيات التي تهم"}, {"id": "C", "text": "حسابات مختنف الديون حميع العمنيات المتعنقة بالنفود والقيم الممكن تداولها والودائع والحسابات الحارية والعسنيات التي تهم"}, {"id": "D", "text": "حسابات مختلف الديون تعرف اعتمادات الأداء (paiement \"l e)crédits:."}]'::jsonb, ARRAY['D']::text[], 'حسب الفصل 51 من المرسوم الملكي 330.66، تعتبر بمثابة عمليات للخزينة: جميع العمليات المتعلقة بالنقود والقيم الممكن تداولها والودائع والحسابات الجارية والعمليات التي تهم حسابات مختلف الديون.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q73', 'exam_2022_mgmt', 73, 'التدبير المالي والمحاسبة العمومية', 'الإمكانيات المالية المتوفرة والتي تسمح بالتعهد على أعمال ودفع أتعاب وذلك خلال نفس السنة المالية', false, '[{"id": "A", "text": "التعهد بالالتزامات على أن يتم الأداء في السنة أو السنوات المقبلة"}, {"id": "B", "text": "الإمكانيات المالية ير المتوفرة والتي تسمح بالتعهد على أعل ودفع أتعاب وذلك حل نفس السنه الدثا"}, {"id": "C", "text": "الإمكانيات المالية المتوفرة والتي تسمح بالتعهد على أعمال ودفع أتعاب وذلك خلال السنه المالية المقيلة"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تعرف اعتمادات الأداء (Crédits de paiement) بكونها الإمكانيات المالية المتوفرة والتي تسمح بالتعهد على أعمال وأمر بصرف ودفع أتعابها وذلك خلال نفس السنة المالية لتغطية الالتزامات المتعاقد بشأنها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q74', 'exam_2022_mgmt', 74, 'التدبير المالي والمحاسبة العمومية', 'تمكن اعتمادات الالتزام أو التعهد (d''engagement crédits) من:', false, '[{"id": "A", "text": "DTE7 REDMi •OO"}, {"id": "B", "text": "ätGUADSAME AC"}, {"id": "C", "text": "التعهد بالالتزامات على أن يتم الأداء في السنة أو السنوات المقبلة"}, {"id": "D", "text": "التعهد بالالتزامات على أن يتم الأداء في السنة المقبلة"}, {"id": "E", "text": "التعهد بالالتزامات على أن يتم الأداء في السنوات المقبلة"}]'::jsonb, ARRAY['A']::text[], 'تمكن اعتمادات الالتزام أو التعهد (Crédits d''engagement) في نفقات الاستثمار من التعهد بالالتزامات (إبرام الصفقات والعقود) على أن يتم الأداء في السنة الجارية أو السنوات المالية المقبلة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q75', 'exam_2022_mgmt', 75, 'التدبير المالي والمحاسبة العمومية', 'الصف', false, '[{"id": "A", "text": "دررة نونبر 202"}, {"id": "B", "text": "اضوع حول التدبير المادي والمالى والمحاسبائي لموسسات التربية والتعليم العموم"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 56 من المرسوم الملكي 330.66، تمكن المحاسبة التحليلية من حساب أثمان التكلفة وكلفة المصالح ومردوديتها عند الاقتضاء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q76', 'exam_2022_mgmt', 76, 'المحاسبة العمومية والمالية', 'تمكن المحاسبة التحليلية من؛', false, '[{"id": "A", "text": "حساب كلفة المصالح ومردوديتها عند الاقتضاء"}, {"id": "B", "text": "حساب مردودية المصالح عند الاقتصاء"}, {"id": "C", "text": "حساب أثمان النكلفةه وكلفة المصالح ومردوديتها عند الافتصاء"}, {"id": "D", "text": "حساب أثمان تكلفة المشتر يات"}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 55 من المرسوم الملكي 330.66، تبين المحاسبة الإدارية جميع عمليات الموارد والنفقات المنجزة في إطار ترخيصات الميزانية، ويمسكها الآمرون بالصرف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q77', 'exam_2022_mgmt', 77, 'المحاسبة العمومية والمالية', 'تبين المحاسبة الإدارية:', false, '[{"id": "A", "text": "حزء عمليات الموارد والنفقات المنحز ة في اطار ترحيصات المير انيه، ويمسكها الأمرون بالصرف"}, {"id": "B", "text": "B جميع عمليات الموارد والنفقات المنحزة في اطار ترحيصات الميز انية، بمسكها الامرون الصرف"}, {"id": "C", "text": "حمع عمنيات الموارد المحزة فى اطار ترحيصات الميز ابية، ويمسكها الامرون بالصرف"}, {"id": "D", "text": "عمليات النفقات السحزة فى اطار ترخيصات الميز انيه، ويمسكها الامون بالصرف"}]'::jsonb, ARRAY['A']::text[], 'تحكم المحاسبة العمومية أربعة مبادئ تقليدية أساسية وهي: مبدأ الازدواجية (الفصل بين الآمر بالصرف والمحاسب) - مبدأ الاستقلالية - مبدأ المشروعية - مبدأ المراقبة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q78', 'exam_2022_mgmt', 78, 'المحاسبة العمومية والمالية', 'تحكم المحاسبة العمو مية أربعة مبادى أساسية:', false, '[{"id": "A", "text": "AY. مبدأالازدواحية- مندأ الاستقلالية - مبدأ المشرو عية - مندا المراقة"}, {"id": "B", "text": "سبد،الازدواحيه - سندأ الاستقلالية - مبدأ المشروعية"}, {"id": "C", "text": "لاتقلانية- سدا المشروعية - مبدأ المراقبة"}, {"id": "D", "text": "الازدواحية - مبدأ الاستقلالية - مبدا المراقبة"}]'::jsonb, ARRAY['C']::text[], 'حسب الفصل 60 من المرسوم الملكي 330.66، تبين المحاسبة العامة للدولة: العمليات المتعلقة بالميزانية - عمليات الخزينة - العمليات المنجزة مع الأغيار - حركات الممتلكات وقيم الاستغلال.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q79', 'exam_2022_mgmt', 79, 'المحاسبة العمومية والمالية', 'المحاسبة العامة:', false, '[{"id": "A", "text": "العسليت المتعلقة بالميزانيه - عمليات الخزينة - حركات المستلكت وقيم الاسع("}, {"id": "B", "text": "كات المسكات وفيم لأسعدن العليات المتعلقة بالسيز انسه - العمليات المجزة سع الأعار - حر"}, {"id": "C", "text": "ات المسلكت وقيم العمليت المتعلقة بالميز انيه عمليات الحزينة - العمليات السجزة سعا غيار - حر"}, {"id": "D", "text": "ت السمتنكت وقيم السعر D العمليات السعلقة بعمليات الحزينة - العمليات المنجزة مع الأغير - حر"}]'::jsonb, ARRAY['D']::text[], 'تقوم الحكامة المالية الجيدة (في ظل دستور 2011 والقانون التنظيمي للمالية 130.13) على ركيزتين متلازمتين هما: الشفافية والمسؤولية (ربط المسؤولية بالمحاسبة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_mgmt_q80', 'exam_2022_mgmt', 80, 'التدبير المالي والمحاسبة العمومية', 'تقوم الحكامة المالية على:', false, '[{"id": "A", "text": "الشفافية وتفاسح السلط المسؤولية وتقاسم السلط الشفافية وتفويض السأمة الشفافية والمسؤولية يقاس أداء الموسسات العمومية ب: اققصاديه و جوده الحدم"}, {"id": "B", "text": "الفعالية السوسيو اقتصاديه والنجاعة وجودة الحدمة مسبقا من حيث أهداف محددة اقتصادية والنجاعة و جودة الخدمة الفعالية السوسيو"}, {"id": "C", "text": "تحقيق أهداف عامة مسبقا من حيث الفعالية السوسيو تحقيق مسبقا من - النجاعة جوده الحنو"}, {"id": "D", "text": "CAMERA QUAD AI أهداف محدده تحقق مسبقا من حيث أهداف محددة تحمق"}]'::jsonb, ARRAY['C']::text[], 'حسب مقاربة نجاعة الأداء (Performance) في القانون التنظيمي للمالية 130.13، يقاس أداء المؤسسات والمرافق العمومية بمدى تحقيق أهداف محددة مسبقاً من حيث الفعالية السوسيواقتصادية والنجاعة وجودة الخدمة المقدمة للمرتفقين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;

-- أسئلة امتحان: امتحان الاختصاصات أو المهام المرتبطة بالوظيفة المطلوب شغلها (2022) (60 سؤالاً)
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q1', 'exam_2022_tasks', 1, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'لا موضوع حول الاختصاصات أو المهام المرتبطة بقوظبة المطلوب شظها @AQ) للا', false, '[{"id": "A", "text": "يقوم ملحق الاقتصاد والإدارة، بموجب القرار الوزاري عدد 64-22() بتاريخ 9()/22/11 و."}, {"id": "B", "text": "من بينها: القيام بالمر اقبة والتأطير التربوي"}, {"id": "C", "text": "المساهمة في إرساء مبادي: المساواة والإنصاف وتكافئ الفرص، ونشر ها في صفوف المتمدر"}, {"id": "D", "text": "المساهمة في تنظيم حملات الاعلام والتو جيه المساهمة في دعم التلميذات والتلاميد دو ي الاعاقه"}]'::jsonb, ARRAY['C']::text[], 'بموجب المادة 4 من القرار الوزاري عدد 064.22 بتاريخ 9 نونبر 2022 بتحديد مهام أطر الدعم الإداري والتربوي والاجتماعي، يقوم ملحق الاقتصاد والإدارة بعدة مهام من بينها المساهمة في تنظيم حملات الإعلام والتوجيه والأنشطة المرتبطة بها وإنجاز عمليات الإحصاء.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q2', 'exam_2022_tasks', 2, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقو م منحق الاقتصاد والادارة بمهام ذات طبيعة:', true, '[{"id": "A", "text": "استشارية"}, {"id": "B", "text": "ر قبية"}, {"id": "C", "text": "تقية"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C', 'D']::text[], 'مهام ملحق الاقتصاد والإدارة هي مهام ذات طبيعة إدارية وتقنية وتربوية داعمة (تنظيمية/محاسبية). وبما أن القرار الوزاري 064.22 ينص على مهام مرتبطة بالحياة المدرسية والأنشطة التربوية والتوجيه والإحصاء، فهي مهام تقنية (في شقها المالي والمحاسبي والمعلوماتي) وتربوية (في شق الدعم التربوي والتوجيه). (في شبكات التصحيح المعتمدة لأطر الدعم يُركَّز على الطبيعة التقنية (C) أو التربوية (D) في مقابل استبعاد المهام الرقابية والاستشارية الصرفة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q3', 'exam_2022_tasks', 3, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقبر مسير المصالح المادية والمالية المكلف بتدبير مالية موسسة تعليمية:', false, '[{"id": "A", "text": "أمر ا بأنصرى ماعدا"}, {"id": "B", "text": "وكيلا مفوضا"}, {"id": "C", "text": "خازنا مكلفا بالأداء"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يعتبر مسير المصالح المادية والمالية المكلف بتدبير مالية المؤسسة التعليمية محاسباً (ومسؤولاً شخصياً ومالياً عن عمليات القبض والصرف وحفظ الأموال والقيم التي بعهدته تحت إشراف رئيس المؤسسة الآمر بالصرف).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q4', 'exam_2022_tasks', 4, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يساهم منحق الاقتصاد والادارة في:', false, '[{"id": "A", "text": "أعداد و تنضيم وتنسيق الأنشطة التربوية والثقافية والرياضية ر لمؤسة التعليمية"}, {"id": "B", "text": "تطيد ونسيق الأنشطة التربوية والتقفية والرياضية بالمؤسة التعليمية"}, {"id": "C", "text": "اداد وتنسيق الأنشطة التريوية والثقافية والرياضية بالموسة التعليمية"}, {"id": "D", "text": "اعداد وتنظيم وتنسيق الأنشطة الثربوية والثقافية بالموسسة التعليمية"}]'::jsonb, ARRAY['A']::text[], 'نصت المادة 4 من القرار الوزاري 064.22 حرفياً على أن ملحق الاقتصاد والإدارة يساهم في: "إعداد وتنظيم وتنسيق الأنشطة التربوية والثقافية والرياضية بالمؤسسة التعليمية".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q5', 'exam_2022_tasks', 5, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'تندرج ضمن مجال التوجيه العملية الادارية التالية:', false, '[{"id": "A", "text": "تسليم شواهد المغادرة للراغبين في التوجه إلى مؤسسات التعليم الخصوصي"}, {"id": "B", "text": "تتبع عملية إرجاع التلاميد غير الملتحقين والمفصولين"}, {"id": "C", "text": "احداث وتحديد برامج خلايا اليفظة التربوية بالمؤسسة"}, {"id": "D", "text": "تأطير وتوجيه أطر التدريس الجديده بالمؤسسة"}]'::jsonb, ARRAY['A']::text[], 'تندرج ضمن العمليات الإدارية المرتبطة بالتوجيه وحركية المتعلمين عملية تسليم شواهد المغادرة للراغبين في التوجه إلى مؤسسات التعليم الخصوصي (أو التكوين المهني)، بينما تتبع غير الملتحقين وإحداث خلايا اليقظة يندرج ضمن الدعم الاجتماعي والنفسي والتربوي لمحاربة الهدر المدرسي، وتأطير المدرسين الجدد من مهام التفتيش التربوي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q6', 'exam_2022_tasks', 6, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يساهم في تنفيذ توجهات الأكاديمية في مجال التوجيه المدرسي والمهني بالموسسة التعليمية:', false, '[{"id": "A", "text": "ملحق الاقتصاد والإدارة حصريا"}, {"id": "B", "text": "رئيس مصلحة تأطير المؤسسات بالمديرية الإقليمية دون غيره"}, {"id": "C", "text": "المتدخلون في محال التوجيه على الصعيدين الاقليمى والمحلي باستثناء المستوى الجهوي"}, {"id": "D", "text": "RED O"}, {"id": "E", "text": "المتدخلون في مجال التوجيه على الصعيد الجهوي والإقليمي والمحلي"}]'::jsonb, ARRAY['D']::text[], 'يساهم في تنفيذ توجهات الأكاديمية في مجال التوجيه المدرسي والمهني مجموع المتدخلين في مجال التوجيه على الصعيد الجهوي والإقليمي والمحلي (مستشارو ومفتشو التوجيه، الإدارة التربوية، الأساتذة الرؤساء، أطر الدعم...).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q7', 'exam_2022_tasks', 7, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الموضو ع', true, '[{"id": "A", "text": ": موضوع حول الاختصاصات أو المهام المرتبطة بالوظيلة المطلوب شظها 4؟لا حدد سقف الاحتفاظ بالسيوله النقديه ا\" الخارجيه بالمؤسسات التعليميه بموجب المذكرة"}, {"id": "B", "text": "الوزارية عدد 26 بتار 4 مارس 1996 ()0.0()()3 در هم"}, {"id": "C", "text": "00.()200 در هم ()IOOO.O در هم"}, {"id": "D", "text": "1500.00 در هم يتعين اتخاد مجمو من التدابير، إطار المراجعه الشامله لنظام التوجيه المدرسي والمهني وتنزيلا"}]'::jsonb, ARRAY['C', 'D']::text[], 'حددت المذكرة الوزارية رقم 26 بتاريخ 4 مارس 1996 سقف الاحتفاظ بالسيولة النقدية في صندوق المؤسسة في: 1000.00 درهم بالنسبة للأقسام الخارجية (الثانويات التي لا تتوفر على قسم داخلي)، و 1500.00 درهم بالنسبة للمؤسسات المتوفرة على أقسام داخلية أو مطاعم. وبما أن السؤال حدد "في الأقسام الخارجية"، فالجواب الدقيق هو (C): 1000.00 درهم (ويُقبل D إذا قُصد به السقف الأقصى العام للمذكرة 26).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q8', 'exam_2022_tasks', 8, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'لمقتضيات القانون الاطار 17- 51، من بينها:', false, '[{"id": "A", "text": "العدول عن خيار التوجيه المبكر للمتعلمين لكونه عملية سابقه لأوانها"}, {"id": "B", "text": "تقليص البنيات المكلهه بالتو جيه وضم مواردها البشرية واعتماد صيغة التوجيه الممكنه"}, {"id": "C", "text": "انتاج دلائل مرجعية تحدد المعايير الواحب مراعاتها في عمليات التوجيه"}, {"id": "D", "text": "جعل عملية التوجيه مرتبطة حصريا بالإمكانيات"}]'::jsonb, ARRAY['C']::text[], 'في إطار مراجعة نظام التوجيه المدرسي والمهني تنزيلاً للقانون الإطار 51.17، يتعين إنتاج دلائل مرجعية تحدد المعايير الواجب مراعاتها في عمليات التوجيه ومواكبة المشاريع الشخصية للمتعلمين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q9', 'exam_2022_tasks', 9, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقوم ملحق الاقتصاد والادارة بالمساهمة في:', false, '[{"id": "A", "text": "سك وضبط وحفظ الحلات المتعلقه بالتسيير السادي والمحاسباتى للمؤسسات التعليمية"}, {"id": "B", "text": "ضف وحفظ السحلات والوثائق المتعلقة بالتسيير المادى والمحاسباتى للمؤسسات التعليميه"}, {"id": "C", "text": "مسك وحفظ السحلات والوثائق الستعلقة بالتسيير المادى والمحاسباتى للمؤسسات التعليمية"}, {"id": "D", "text": "مك وضبط وحفظ الحلات والوثائق المتعلقة بالتسيير المادي والمحاسباتي للمؤسسات التعليمية"}]'::jsonb, ARRAY['D']::text[], 'نصت المادة 4 من القرار الوزاري 064.22 حرفياً على أن ملحق الاقتصاد والإدارة يقوم بالمساهمة في: "مسك وضبط وحفظ السجلات والوثائق المتعلقة بالتسيير المادي والمالي والمحاسباتي للمؤسسات التعليمية".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q10', 'exam_2022_tasks', 10, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يرأس جمعيه دعم مدرسة النجاح مدير الموسسة فيصبح ملزما بمهمة:', false, '[{"id": "A", "text": "توقيع الوثائق المالية لحميه النفقات المأمور بصرفها من طرف أمين مال الجمعية"}, {"id": "B", "text": "تنفيد قرارات المكتب الننفيي باستثذء تلك المتحدة أثناء انعقاد الجموع العامة"}, {"id": "C", "text": "إبر ام العقود بأسم الجمعية شريطة اقرار ه، من طرف المكتب التنفيذي"}, {"id": "D", "text": "إصدار قرار حل الحمعية في حالة حصول ما يستوجب دلك"}, {"id": "E", "text": "مبد حرية الولوج إلى الطلبيات العمومية ومبدأ المساواة في التعامل مع المتنافسين لا تخرقهما بعض"}]'::jsonb, ARRAY['A']::text[], 'حسب القانون الأساسي لجمعية دعم مدرسة النجاح ودليلها المسطري، يرأس مدير المؤسسة الجمعية ويكون ملزماً بـ توقيع الوثائق المالية (الشيكات وأوامر الأداء) لجميع النفقات المأمور بصرفها إلى جانب أمين مال الجمعية (قاعدة التوقيع المزدوج).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q11', 'exam_2022_tasks', 11, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'اجراءات الأفضنية لفاندة:', true, '[{"id": "A", "text": "المقاولات الوطنية والمقاولاث الصعرى والمتوسطة المواظة على المشاركة في تنفيد الطلبيات العمومية"}, {"id": "B", "text": "المقاولات الوطنية فى الدراسات والأشغال المر تبطة بها"}, {"id": "C", "text": "المقاولات الوطنية في صفقات التوريدات"}, {"id": "D", "text": "المقاو لات الأجنبية في صفقات الأشعال"}]'::jsonb, ARRAY['A', 'B']::text[], 'في ظل مرسوم الصفقات العمومية لسنة 2013 (الذي كان ساري المفعول في نونبر 2022 تاريخ إجراء هذه المباراة)، نصت المادة 155 على الأفضلية الوطنية لفائدة المقاولات الوطنية في صفقات الأشغال والدراسات المرتبطة بها (B)، كما نصت المادة 156 على تدابير لفائدة المقاولات الصغرى والمتوسطة (A). كلا الاختيارين صحيحان، والاختيار (B) هو النص الحرفي لعنوان المادة 155 ("إجراءات الأفضلية لفائدة المقاولات الوطنية").')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q12', 'exam_2022_tasks', 12, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يستثنى من أعضاء الإدارة التربوية للثانويات التأهيلية؛', false, '[{"id": "A", "text": "مدير الدراسة للأقسام التحضيرية"}, {"id": "B", "text": "الناضر"}, {"id": "C", "text": "مسير المصالح المادية والمالية"}, {"id": "D", "text": "حارس عام الخارجية"}]'::jsonb, ARRAY['C']::text[], 'حسب الهيكلة التنظيمية للمرسوم 2.02.376 (المادة 10)، يصنف مسير المصالح المادية والمالية ضمن "مصالح الاقتصاد والمالية" (التدبير المادي والمالي)، بينما يصنف المدير والناظر ومدير الدراسة والحراس العامون ضمن "الإدارة التربوية".')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q13', 'exam_2022_tasks', 13, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'للأكاديميات - دورم', false, '[{"id": "A", "text": "TclCna"}, {"id": "B", "text": "مباراة توظبف ملحفي الافتصاد والإدارة الأطر النظاميه"}, {"id": "C", "text": "تفظه مومو مرل «متصصد أركمه؟ لمر سعة يتو هلة انستر فعه"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يستفيد موظفو الوزارة (بمن فيهم ملحقو الاقتصاد والإدارة) في إطار تطوير كفاياتهم المهنية المرتبطة بمهامهم الأصلية من التكوين المستمر.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q14', 'exam_2022_tasks', 14, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يستفيد ملحق الإدارة والاقتصاد، في إطار مهامه الأصلية، من:', false, '[{"id": "A", "text": "التعويضات عن المسؤولية"}, {"id": "B", "text": "التكوين المستمر"}, {"id": "C", "text": "التكوين الأساس بعد التر سيم"}, {"id": "D", "text": "التعويضات عن التأطير"}]'::jsonb, ARRAY['D']::text[], 'يتدرج المشروع الشخصي للمتعلم زمنياً عبر المراحل التالية: مرحلة الاستئناس (الابتدائي) \leftarrow مرحلة بناء المشروع (الإعدادي) \leftarrow مرحلة توطيد وتدقيق المشروع (التأهيلي وما بعده). وفي الترتيب الرباعي المعتمد في مجزوءات التكوين: الاستئناس - بناء المشروع - تدقيق المشروع - توطيد المشروع (أو العكس بين التوطيد والتدقيق C/D).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q15', 'exam_2022_tasks', 15, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يتدرج المشروع الشخصي للمتعلم عبر أربعة مراحل متتالية وهي:', false, '[{"id": "A", "text": "طيد المشروع"}, {"id": "B", "text": "الاستنذاس - تدقيق المشروع - بناء المشرو ع - لو طيد المشرو ع"}, {"id": "C", "text": "بناء المشروع - الاستئناس - تدقيق المشروع - نو الاستئناس - بناء المشروع - توطيد المشروع - تدقيو المشرو ع"}, {"id": "D", "text": "طيد المشر و ع الاستئناس - بناء المشروع - تدقيق المشروع - تو"}]'::jsonb, ARRAY['B']::text[], 'أقر القانون الإطار 51.17 (المادة 34) العمل بـ المشروع الشخصي للمتعلم كآلية لمواكبة المتعلمين في اختياراتهم الدراسية والتكوينية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q16', 'exam_2022_tasks', 16, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'قر القانون الاطار رقم 17-5J:', false, '[{"id": "A", "text": "المشر وع الشخصى للمتدرب. المشروع الشخصي للمتعلم"}, {"id": "B", "text": "المشروع الشخصي للطالب المشروع الشخصي للأستاد"}, {"id": "C", "text": "نص الميثاق الوطني للتربية والتكوين في مادته 99 على: التخطيط الاستر اتيجي"}, {"id": "D", "text": "حكامة التدبير التوجيه المدرسي والمهني"}]'::jsonb, ARRAY['C']::text[], 'تندرج المادة 99 من الميثاق الوطني للتربية والتكوين ضمن الدعامة السادسة المخصصة لمجال التوجيه التربوي والمهني (التوجيه المدرسي والمهني).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q17', 'exam_2022_tasks', 17, 'المحاسبة العمومية والمالية', 'يهدف مبدأ التنافي في المحاسبة العمومية إلى:', false, '[{"id": "A", "text": "استقلال الأمر بالصرف عن الأمر بالصرف الثانوي"}, {"id": "B", "text": "الربط بين صلاحيات الأمر بالصرف والأمر بالصرف الثاوى"}, {"id": "C", "text": "الفصل بين صلاحيات الأمر بالصرف وصلاحيات المحاس"}, {"id": "D", "text": "الربط بين صلاحيات الأمر بالصرف وصلاحيات المحاسب"}]'::jsonb, ARRAY['C']::text[], 'يهدف مبدأ التنافي في المحاسبة العمومية (الفصل 4 من المرسوم الملكي 330.66) إلى الفصل بين صلاحيات الآمر بالصرف وصلاحيات المحاسب العمومي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q18', 'exam_2022_tasks', 18, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقوم ملحق الاقتصاد والإدارة ب:', false, '[{"id": "A", "text": "تسجيل التلاميد المرضى وإحالتهم على الطبيب المختص"}, {"id": "B", "text": "تجميع المعطيات حول التلاميد المعوزين والتعرف على أسرهم"}, {"id": "C", "text": "تنظيم دورات حول الدعم النفسي للتلاميد"}, {"id": "D", "text": "توفير وسائل الاشتغال لفائدة المشاركين في عمليات التوجيه والإعلام"}]'::jsonb, ARRAY['D']::text[], 'في إطار المساهمة اللوجستيكية والإدارية في حملات التوجيه، يقوم ملحق الاقتصاد والإدارة بـ توفير وسائل الاشتغال لفائدة المشاركين في عمليات التوجيه والإعلام (بينما الخيارات A و B و C هي من صميم مهام الملحق الاجتماعي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q19', 'exam_2022_tasks', 19, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الصفح»', false, '[{"id": "A", "text": "الموضو ع"}, {"id": "B", "text": "موضوع حون اللختصصت او المهالم المرتبطة بتوظيلة المطلوب شغلها لأ 1''3 tt)"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تعتبر الفاتورة (La facture) الوثيقة المحاسبية والقانونية الأساسية في عملية الإثبات (Justification) المالي والمحاسبي للنفقة وتصفية الدين.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q20', 'exam_2022_tasks', 20, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'تعتبر الفاتورة من الوثائق الأساسية في عملية؛', true, '[{"id": "A", "text": "الجرد العيني"}, {"id": "B", "text": "الجرد المحاسباتي"}, {"id": "C", "text": "الإثبات"}, {"id": "D", "text": "الجرد العيني والجرد المحاسباتي"}]'::jsonb, ARRAY['B', 'A']::text[], 'تتعلق عملية الفوترة (La facturation) بتحرير وتسجيل المعطيات الكمية والمالية للسلع أو الخدمات وإصدار الفاتورة من طرف المورد.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q21', 'exam_2022_tasks', 21, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'تتعلق عملية الفوترة ب:', false, '[{"id": "A", "text": "تسجيل المعلومات على الفاتورة إصدار الفأتورة"}, {"id": "B", "text": "تسلم وتسلم الفاتورة نقل معلومات الفاتورة على السجلات المحاسداتية"}, {"id": "C", "text": "حددت المذكرة الوزاريه رقم 96 بتاريخ 8 يونيو 7()(20 والمذكرة عدد 057/20 بتاريخ 2020/09/22 أقساط التأمين المدر \" الوسط الحضرى"}, {"id": "D", "text": "(/(ا25 درهما م 20.00 در هما ()12.0 در همز"}]'::jsonb, ARRAY['C']::text[], 'حددت المذكرة الوزارية رقم 96 والمذكرة 057/20 أقساط التأمين المدرسي العادي في الوسط الحضري في مبلغ 12.00 درهماً (و8 دراهم في الوسط القروي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q22', 'exam_2022_tasks', 22, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'تقوم المصالح المالية باصدار سندات الطلب التى؛', false, '[{"id": "A", "text": "لأ يمكن الحيد عنها في تنقيد النفقات العمومية"}, {"id": "B", "text": "يمكن اللجوء اليها إلا بصفةاسنتئية"}, {"id": "C", "text": "يمكن اللجوء اليها دون قيد أو شرط"}, {"id": "D", "text": "يمك اللجوء اليها عند تجاوز مليون در هم"}]'::jsonb, ARRAY['B']::text[], 'القاعدة العامة في تنفيذ النفقات العمومية هي إبرام الصفقات العمومية (طلب عروض)، بينما تعتبر سندات الطلب مسطرة مبسطة لا يمكن اللجوء إليها إلا بصفة استثنائية في حدود السقف المالي المسموح به وللأعمال المدرجة في اللائحة المحددة بالمرسوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q23', 'exam_2022_tasks', 23, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقصد بمشروع الموسسة ما يلي:', false, '[{"id": "A", "text": "مشروع محصص لأدات موسسة للتربية والتعنيد ."}, {"id": "B", "text": "مشروع ربح مخصص لتمويل موسرة للتربية والتعم"}, {"id": "C", "text": "الية لأجرأة السياسات التربوية داخل مؤسة للتربية والتعليم"}, {"id": "D", "text": "اليه لتعليم التلاميد كيفية إنجار وسيي مشرو مؤسة معيزة"}, {"id": "E", "text": "يكون مسير المصالح الماديه والماليه، خلال إنجازه قيودات المحاسبه النقدية على السجلات المحاسبيه"}]'::jsonb, ARRAY['C']::text[], 'يعتبر مشروع المؤسسة الإطار المنهجي والعملي والآلية الأساسية لأجرأة السياسات التربوية داخل كل مؤسسة للتربية والتكوين (المذكرة 159/14 والمذكرة 087/21).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q24', 'exam_2022_tasks', 24, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'للموسسة:', false, '[{"id": "A", "text": "ملزما بإجراء عملية مقاصة بين المداخيل والنفقات ثم تدوين النتيجة الحسابية بسجل الصندوق"}, {"id": "B", "text": "غير مسموح له باجراء عملية مقاصة بين المداخيل والنفقات إلا عند بداية السنة المالية"}, {"id": "C", "text": "ملزما بالتدوين الكامل للمداخيل على حدة والنفقات على حدة"}, {"id": "D", "text": "غير مسموح له بأجراء عملية مقاصة بين المداخيل والنفقات إلا بأمر مكتوب موجه له من رئيس المؤسسة"}]'::jsonb, ARRAY['C']::text[], 'طبقاً لمبدأ الوضوح وقاعدة شمولية الميزانية والمحاسبة العمومية (عدم تخصيص المداخيل وعدم المقاصة)، يكون المسير ملزماً بالتدوين الكامل للمداخيل على حدة والنفقات على حدة دون إجراء أي مقاصة بينهما.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q25', 'exam_2022_tasks', 25, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'النظامبة للاكانبمت - لورة نونر 2022', false, '[{"id": "A", "text": "مبر اا هبد ملطي سئصء وإ■ار١ اصطر"}, {"id": "B", "text": "\" مر بعة بهوهة فمرب تعه م3٩٦١٢"}, {"id": "C", "text": "بوقع جدول الو جبات الغد انبة بلأسام الداخلية بالمومسات التطيمية العمومية."}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يوقع جدول الوجبات الغذائية الأسبوعي بالأقسام الداخلية من طرف رئيس المؤسسة ومسير المصالح المادية والمالية وطبيب الصحة المدرسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q26', 'exam_2022_tasks', 26, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'المؤسسة التعلبمبة وطني الصحة المدرسية والحارس العام للداحلية', false, '[{"id": "A", "text": "المصالح المادية والمائدة وطنيت الصحة المدر سية والحار س العام للداخلية"}, {"id": "B", "text": "ن"}, {"id": "C", "text": "المصالح المادية والمالية وطني الصحة المدر سية"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تشمل موارد حساب الخارج عن الميزانية بالمؤسسة التعليمية المبالغ المستخلصة برسم الإتلافات (أو الذخائر/الضمانات، رسوم التسجيل، التأمين، الخزانة التربوية...)، بينما موارد جمعية دعم مدرسة النجاح لها حساب بنكي وميزانية مستقلة تماماً عن حساب الخارج عن الميزانية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q27', 'exam_2022_tasks', 27, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'المو سسرة ومعير', false, '[{"id": "A", "text": "المصالح المادية والمالية ور نيم المؤسسة التعليمية والحارس العام للداحلية"}, {"id": "B", "text": "تشمل مو ارد الخارج عن الميز انية بالموسسة التعليمية العمومية:"}, {"id": "C", "text": "العو اند العيده للحصات السكي البر يدي"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تستعمل السيمات أو الشيات (Vignettes - قسيمات الصندوق الوطني للتقاعد والتأمين SNTL) لتأدية النفقات المتعلقة بـ إصلاح وصيانة سيارات المصلحة واقتناء المحروقات وقطع الغيار وأداء رسوم الطرق السيارة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q28', 'exam_2022_tasks', 28, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'انصو أنع المحر بيه', false, '[{"id": "A", "text": "حمعية «عم مدرسه النحا"}, {"id": "B", "text": "تستعمر انسيمات أو الشيات (»»11»ي١٤) لتأدية النفقات المتعلقة ب:"}, {"id": "C", "text": "تضمد موسسات التعليم الثانوى العمومية في تدبير ماليتها على؛"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تعتمد مؤسسات التعليم الثانوي العمومية (باعتبارها مرافق غير متمتعة بالاستقلال المالي) في تدبير ماليتها الذاتية المحلية على حساب الخارج عن الميزانية (Hors budget) إلى جانب ميزانية جمعية دعم مدرسة النجاح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q29', 'exam_2022_tasks', 29, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'حب التدبير', false, '[{"id": "A", "text": "ح- الخز ينه"}, {"id": "B", "text": "تحفظ الموسسة التعليمية لحساب فر عها المحلي للجمعية الرياضية المدر سية ب:"}, {"id": "C", "text": "0»\" س سجمو ٣ الانهر اطات"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تحتفظ المؤسسة التعليمية لحساب فرعها المحلي للجمعية الرياضية المدرسية بحصة 65% من مجموع الانخراطات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q30', 'exam_2022_tasks', 30, 'مهام ملحق الاقتصاد والإدارة والتنظيم', '55»" س مجمو - الابحر اطات', false, '[{"id": "A", "text": "5ل4ن\" سن مجمو ع الانحر اطات"}, {"id": "B", "text": "_3_S ٩ س مجمو ع الانحر اطات يتم تحضير ميزانية جمعية دعم مدرسة النجاح بشكل:"}, {"id": "C", "text": "ي"}, {"id": "D", "text": "فصلي نصف سنوي"}]'::jsonb, ARRAY['B']::text[], 'يتم تحضير واعتماد ميزانية جمعية دعم مدرسة النجاح بشكل سنوي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q31', 'exam_2022_tasks', 31, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الصفحه', false, '[{"id": "A", "text": "الموضو ع"}, {"id": "B", "text": "مباد"}, {"id": "C", "text": "مرع عول الالمتصصت أو المهام المرتبطة بتوظبلة المطلوب شظه Q 34 3''Td j•"}, {"id": "D", "text": "ط لصحة قرارات الجلسة الأولى لمجلس التدبير، حضور؛"}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 20 من المرسوم 2.02.376، يشترط لصحة مداولات مجلس التدبير في الجلسة الأولى حضور ما لا يقل عن نصف أعضائه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q32', 'exam_2022_tasks', 32, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'كافة أعصاء المحلس', false, '[{"id": "A", "text": "ما لا يقل عر ثلثي أعضاء المحلس"}, {"id": "B", "text": "مأ لا يقل ع نصف أعصاء المحلس"}, {"id": "C", "text": "واحد أو أكثر ، دون اعتدار لعدد الحاضرين"}, {"id": "D", "text": "أداء النفقات العمو مية وجوبا بالشيك أو بالأمر بالتحويل عندما يتجاوز المبلغ؛"}]'::jsonb, ARRAY['B']::text[], 'حسب الفصل 45 من المرسوم الملكي 330.66، يتم أداء النفقات العمومية وجوباً بالشيك أو بالأمر بالتحويل عندما يتجاوز المبلغ 1500 درهم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q33', 'exam_2022_tasks', 33, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'ينم', false, '[{"id": "A", "text": "سجلات النفقات:"}, {"id": "B", "text": "يستثنى من"}, {"id": "C", "text": "سح نفقت الدخائر"}, {"id": "D", "text": "الحب الجارى البريدي (قسد النفقات)"}]'::jsonb, ARRAY['C']::text[], 'يستثنى من سجلات النفقات: سجل الحساب الجاري البريدي (قسم الإيرادات) لأنه مخصص لتدوين المداخيل والتحويلات الواردة وليس النفقات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q34', 'exam_2022_tasks', 34, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الحب الحار ى البريدى (قسو الاير ادات) "', false, '[{"id": "A", "text": "سجى الصشوق"}, {"id": "B", "text": "يفر المجلس الأعلى للتربية والتكوين والبحث الطمي هيرة:"}, {"id": "C", "text": "حكوسة شبه حكو مية"}, {"id": "D", "text": "مث"}]'::jsonb, ARRAY['A']::text[], 'يعتبر المجلس الأعلى للتربية والتكوين والبحث العلمي هيئة دستورية استشارية مستقلة (منصوص عليها في الفصل 168 من دستور 2011).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q35', 'exam_2022_tasks', 35, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يستثنى من سجلات الجرد المادى:', false, '[{"id": "A", "text": "البيان الدوري الإجملي لنففات الخارج عن الميزانية."}, {"id": "B", "text": "الدفتر اليوسي لدخول والخروج"}, {"id": "C", "text": "بطاقات الجرم"}, {"id": "D", "text": "سجل جرد عتاد التربيه البدنية"}]'::jsonb, ARRAY['A']::text[], 'يستثنى من سجلات الجرد المادي: البيان الدوري الإجمالي لنفقات الخارج عن الميزانية لأنه وثيقة خاصة بالمحاسبة النقدية والمالية وليس بالمحاسبة المادية (الجرد).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q36', 'exam_2022_tasks', 36, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'تتكون الأملاك العمومية المادية حصرا مني', false, '[{"id": "A", "text": "الأملاك السنقولة المعمرة والأملاك المنقولة الفانية (fongibles)"}, {"id": "B", "text": "الأملاك الثابتة (عقارية) والأملاك المنقولة المعمرة"}, {"id": "C", "text": "الأملاك الثابتة (عقارية) والأملاك المنقولة الفانية"}, {"id": "D", "text": "الأملاك الثابتة (عقارية) والأملاك المنقولة السعمرة والفانية"}]'::jsonb, ARRAY['D']::text[], 'تتكون الأملاك العمومية المادية حصراً من: الأملاك الثابتة (العقارية) والأملاك المنقولة المعمرة (القابلة للجرد) والفانية (القابلة للاستهلاك).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q37', 'exam_2022_tasks', 37, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الوضو ع', false, '[{"id": "A", "text": ": موضوع حول الاختصاصات أو المهام لمرئبطة بظوظيفة المطلوب شظها 34€ لا ل"}, {"id": "B", "text": "يتحدد الأجل الاجمالي لدر اسة مشرو ع فنون المالية والتصويت علبه من طرف البرلمان فيء"}, {"id": "C", "text": "99 يوما من تاريخ إيداعه م طرف الحكومة بمكت محلس النواب"}, {"id": "D", "text": "75 بوما من ناريخ ايداعه مر طرف الحكومة بمكن محلس النواب"}]'::jsonb, ARRAY['C']::text[], 'حسب المادة 49 من القانون التنظيمي لقانون المالية 130.13، يتحدد الأجل الإجمالي لدراسة مشروع قانون المالية السنوي والتصويت عليه من طرف البرلمان في 58 يوماً من تاريخ إيداعه بمكتب مجلس النواب (30 يوماً لمجلس النواب + 22 يوماً لمجلس المستشارين + 6 أيام للقراءة الثانية بمجلس النواب).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q38', 'exam_2022_tasks', 38, 'مهام ملحق الاقتصاد والإدارة والتنظيم', '58 يوما مر تاريخ ايداعه مر طرف الحكومة بمكت محلس النواب', false, '[{"id": "A", "text": "36 بوها مر ناري ايداعه من طرف الحكومة يمكن محلس الذوا"}, {"id": "B", "text": "يندر ج ضمن اختصاصات المجلس التربوي بالموسسات التعليمية:"}, {"id": "C", "text": "المصادقة على مشرو ع المؤسسة المندمج فى شقه الدردو ي"}, {"id": "D", "text": "اعدا مشار يع البر تامه السنوي للعمل التربو ي للمؤسسة"}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 23 من المرسوم 2.02.376، يندرج ضمن اختصاصات المجلس التربوي إعداد مشاريع البرامج السنوية للعمل التربوي للمؤسسة وبرامج الأنشطة الداعمة والموازية (أما الاختيار A فلمجلس التدبير، و C للمجلس التعليمي، و D لمجلس القسم).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q39', 'exam_2022_tasks', 39, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'التسيو بير مدرسى المأدة الو احدة', false, '[{"id": "A", "text": "اتحاد فر ارات التقن التلاميد الى المستويات الموالية أو السماح لهم بالتكرار أو فصلهم"}, {"id": "B", "text": "صدر بتاريخ 20 مارس 13()2 المرسوم الخاص ب:"}, {"id": "C", "text": "الوضيده العمو مية"}, {"id": "D", "text": "مر افه نفقات الدولة"}]'::jsonb, ARRAY['D']::text[], 'صدر بتاريخ 20 مارس 2013 المرسوم رقم 2.12.349 المتعلق بـ الصفقات العمومية (والذي نُسخ لاحقاً بالمرسوم 2.22.431 الصادر في مارس 2023).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q40', 'exam_2022_tasks', 40, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'اتضم الع للمحاسه العمومية', false, '[{"id": "A", "text": "انصفقت العمو مية"}, {"id": "B", "text": "تقوم نجان تقصي الحقائق البر لمانية بمهام الرقابة؛"}, {"id": "C", "text": "انسية"}, {"id": "D", "text": "تعبر شساعة النفقات بالموسسة العمومية الية لآداء:"}]'::jsonb, ARRAY['B']::text[], 'تشكل لجان تقصي الحقائق البرلمانية (الفصل 67 من الدستور) إحدى آليات الرقابة السياسية التي يمارسها البرلمان على العمل الحكومي وتدبير الشأن العام.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q41', 'exam_2022_tasks', 41, 'المحاسبة العمومية والمالية', 'نفقات شراء سيار ات السصلحه', false, '[{"id": "A", "text": "نفقات اضاء أراصي مخصصة للنناء"}, {"id": "B", "text": "النفقات المحددة في قرار احداث الحوالة"}, {"id": "C", "text": "عقات أجور أطر الأكاديميات"}, {"id": "D", "text": "حصرت المذكرة الوزاريه 25 بتاريخ 4 مارس 1996 عدد دورات الحسابات الماليه لحساب الخارج"}]'::jsonb, ARRAY['C']::text[], 'حسب تعليمة وزير المالية المتعلقة بشساعة النفقات، تعتبر شساعة النفقات (Régie de dépenses) آلية استثنائية لأداء النفقات الصغرى أو المستعجلة وهي حصراً النفقات المحددة في قرار إحداث الخوالة (الشساعة).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q42', 'exam_2022_tasks', 42, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الميزانية للموسسات التعليمية الثانوية في:', false, '[{"id": "A", "text": "دورة واحدة ودورة تمهيدية"}, {"id": "B", "text": "دورتان ودورة تسهيدية"}, {"id": "C", "text": "ثلاث دورات ودورة تمهيدية"}, {"id": "D", "text": "خمس دورات"}]'::jsonb, ARRAY['B']::text[], 'حصرت المذكرة الوزارية رقم 25 بتاريخ 4 مارس 1996 عدد دورات الحسابات المالية لحساب الخارج عن الميزانية في ثلاث محطات سنوية تفصلها المذكرة في: دورتين عاديتين ودورة تمهيدية (أو إجمالاً 3 دورات: نهاية دجنبر، نهاية مارس، ونهاية السنة الدراسية في يونيو/يوليوز). وبما أن الخيارات تفصلها إلى "دورتان ودورة تمهيدية" (أي المجموع 3)، فالاختيار (B) هو الأدق.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q43', 'exam_2022_tasks', 43, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'الصلد،', false, '[{"id": "A", "text": "الموضو ع"}, {"id": "B", "text": "بن امتصصت أر المهام المرتبطة بغوظبلة المطلوب شقها له4١لا"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q44', 'exam_2022_tasks', 44, 'المحاسبة العمومية والمالية', 'فى أداء الوكيل المفوض لنفقة ما، ينجا الآمر بالصرف المساعد إلى:', false, '[{"id": "A", "text": "لنجاوز ز"}, {"id": "B", "text": "اهار الخر ينه العامة"}, {"id": "C", "text": "احاطة علم الوزارة الوصية على القطاع"}, {"id": "D", "text": "التسخيد"}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q45', 'exam_2022_tasks', 45, 'المحاسبة العمومية والمالية', 'يعبر الخازن المكلف بالآداء محاسبا عموميا بالوحدة الادارية التاليه:', false, '[{"id": "A", "text": "سسه تعليميه عمو مية"}, {"id": "B", "text": "مدير يه اقنبمبه"}, {"id": "C", "text": "مؤسس عموميه"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 6 من مرسوم الصفقات العمومية (2.12.349 / 2.22.431)، يلجأ صاحب المشروع إلى إبرام صفقات-إطار عندما يتعذر مسبقاً وبصفة كاملة تحديد كمية ووتيرة تنفيذ أي عمل له صبغة توقعية ودائمة. وبما أن النص القانوني يجمع بين "توقعية ودائمة"، فالاختيار (B) هو النص القانوني الكامل والدقيق.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q46', 'exam_2022_tasks', 46, 'الصفقات العمومية', 'يند صاحب المشروع الى أبرام صفقات الاطار عندم:', false, '[{"id": "A", "text": "تر مسبق وبصدة كملة تديد كسة ووتيرة تنفيد أي عمل له صبعه توقعيه"}, {"id": "B", "text": "يععر سبق وبصفة كملة تحد كميه ووتيرة تنعي أي عمل له صنعه توفعيه دانة"}, {"id": "C", "text": "يع سق وبصفة كاملة تحد كسه ووتترة نفيئ أي عمل له صنعه توفعه و عير دانمه"}, {"id": "D", "text": "تعر سبد وصفه كملة تحدت كمية ووترة تنفيد أي عمل له صيعه - المة"}]'::jsonb, ARRAY['A']::text[], 'حسب المادة 3 من مرسوم الصفقات العمومية الصادر في 20 مارس 2013، تستثنى عقود التدبير المفوض للمرافق والمنشآت العمومية من نطاق تطبيقه، أي أنها لا تخضع إطلاقاً لمقتضيات المرسوم المتعلق بالصفقات العمومية (بل تخضع للقانون الخاص بها رقم 54.05).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q47', 'exam_2022_tasks', 47, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'لا تخضع عقود التدبير المفوض للمرفق العمومي:', false, '[{"id": "A", "text": "ضف لمدتضدت المر سوم الصدر فى ()2 رس ١١/ المتعنق لصففث العسومي"}, {"id": "B", "text": "د الصفقت العسوعيه الص در في (إ مارس 13()2"}, {"id": "C", "text": "سوه الصفقت العسوسيه الصادر في (2 مارس 13()2 الا بطنب مر أد اضرام العق"}, {"id": "D", "text": "لم سوه الصفقت العمومية الصادر في ()2 مارس 13()2 إلا -تدق الأطراف العقدة"}, {"id": "E", "text": "في سياق تنزيل مضامين القنون الاطار 51.17 ولتطوير منظومة الدعم الاجتماعي لتشجيع"}]'::jsonb, ARRAY['C']::text[], 'في سياق تنزيل القانون الإطار 51.17 (المادة 20 و21) لتطوير منظومة الدعم الاجتماعي، نص القانون على إرساء شراكات مع الجماعات الترابية والمؤسسات والهيئات، أي أنه منصوص على ضرورة تحفيزها وتعبئتها في مجال الدعم الاجتماعي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q48', 'exam_2022_tasks', 48, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'التمدرس، تظل الشراكات الترابية:', false, '[{"id": "A", "text": "سسوت عنها في سحل ادعم الاحتسا عي منصوصا على ضرورة استبعادها س سجال الدعم"}, {"id": "B", "text": "منصوصا على ضرورة تحمير ها في سجال الد عم الأحتساعي موصى بها كاسلوب وحيد في سحال ادعم الاحتماعي"}, {"id": "C", "text": "النفقات التي يمكن أداوها بواسطة الشساعة هي حصريا تلك المحددة في الوثانق التالية: الو ثيقة الرسمية لميزانية الموسسة العمومية"}, {"id": "D", "text": "لائحة تحديد الحاجيات المعبر عنها من طرف الوحدات الإدارية حسومات أو فواتير الدائنين الواردة إلى الإدارة بواسطة مكتب الضبط قرار إحداث الخوالة وتعليمات وزير المالية المتعلقة بتنظيم خوالات الهـ أ. ي، والنةقا"}]'::jsonb, ARRAY['D']::text[], 'النفقات التي يمكن أداؤها بواسطة الشساعة (الخوالة) هي حصرياً تلك المحددة في قرار إحداث الخوالة وتعليمات وزير المالية المتعلقة بتنظيم خوالات النفقات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q49', 'exam_2022_tasks', 49, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'مهاراة توظيف ملعفي الافتصار والإدارة الأطر النظامبة للأكاديميات - لورة نونبر 2022', false, '[{"id": "A", "text": "الموضر)"}, {"id": "B", "text": ": موضوع حول الاختصاصات أو المهام المر تبطة بلو ظبلة المطلوب شظها a 94% لى"}, {"id": "C", "text": "لا"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يقوم المكتب الوطني للسلامة الصحية للمنتجات الغذائية (ONSSA) بمراقبة اللحوم في جميع حالاتها (الطرية والمجمدة...) وضبط وجهة تسليمها وإنجاز شهادة صحية (بيطرية) بشأنها.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q50', 'exam_2022_tasks', 50, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'البشر ،وله ذلك صلاحية مراقبة مادة اللحوم:', false, '[{"id": "A", "text": "في حالتها المحمدة وححز هأ إن اقتصى الأمر دلك، لكر دون صلاحية انحاز شهادة صحية ثاني"}, {"id": "B", "text": "في حالتها الطرية فقط مع إمكانية إنحار شهادة صحيه بشأنه،"}, {"id": "C", "text": "في جميع حالاتها وصنط وحهة تسليمي وأتحار شهادة صحية بشأنها"}, {"id": "D", "text": "في حالتها المحمدة دون صلاحية إنحار شهادة صحية شنها تور صنط وحهة تسليمى"}]'::jsonb, ARRAY['C']::text[], 'تمر النفقة العمومية بأربع مراحل: ثلاث مراحل إدارية يقوم بها الآمر بالصرف (الالتزام، التصفية، الأمر بالصرف)، ومرحلة محاسبية واحدة يتولاها المحاسب العمومي وهي مرحلة الأداء (Le paiement).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q51', 'exam_2022_tasks', 51, 'المحاسبة العمومية والمالية', 'يتولى المحاسب العمومي تنفيذ النفقة العمومية خلال:', false, '[{"id": "A", "text": "حله التصفيه"}, {"id": "B", "text": "حلها داء"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 18 من المرسوم 2.02.376، يتولى مجلس التدبير مهمة اقتراح النظام الداخلي للمؤسسة في إطار احترام النصوص التشريعية والتنظيمية الجاري بها العمل، وعرضه على مصادقة مجلس الأكاديمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q52', 'exam_2022_tasks', 52, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يتم اقتراح النظام الداخلي لموسسات التعليم الثانو ى التأهبني من طرف:', false, '[{"id": "A", "text": "محلس القسم"}, {"id": "B", "text": "المحلس انتعنيمي"}, {"id": "C", "text": "محلس التدسر"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يقصد بإثبات وتصفية المداخيل: الإجراء الذي يتم بموجبه تحديد وحصر المبلغ الصحيح للدين الواجب على المدين انطلاقاً من المعطيات والوثائق المتوفرة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q53', 'exam_2022_tasks', 53, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يقصد بإثبات المداخيل:', true, '[{"id": "A", "text": "السنه الصحه"}, {"id": "B", "text": "اجراء اذي يتم بسوحه تحدر وحصر س الواجب على السدين انطلاقا من المعطيك"}, {"id": "C", "text": "تسليم سند القص للمحاسب ادى يتكل ه لنصح مو ع تعضه وتحصيل المداحيل"}, {"id": "D", "text": "الإحراء الدي يقوم بموحيه مدير السوسه لتشير عي سحت النفقات المثبتة اجراء الدي يتم بموحه تكرير حق الدائ بقرارات تصر عن رئيس المؤسسة"}]'::jsonb, ARRAY['C', 'D']::text[], '(نفس السؤال Q7 تكرر في المطبوع): سقف الاحتفاظ بالسيولة النقدية في الأقسام الخارجية بموجب المذكرة 26 هو 1000.00 درهم (C) (و1500.00 درهم للمؤسسات المتوفرة على قسم داخلي D).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q54', 'exam_2022_tasks', 54, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'حدد سقف الاحتفاظ بالسيولة النقدية في الأقسام الخارجية بالموسسات التعليميه بموجب المنكر:', false, '[{"id": "A", "text": "الوزارية عدد 26 بتري مارس (19\" مبلة: الأ"}, {"id": "B", "text": "()().()()()_3 رهم 2000.00 در هم 1000.00 در هم"}, {"id": "C", "text": "()0.0()15 در هم يندرج ضمن اختصاصات ناظر الثانوية التأهيلية: تحمل المسؤولية الإدارية والماليه والماديه للمؤسة"}, {"id": "D", "text": "السهر على تنظيم العمل التربوي ووصع جداول الحصص الدراسية ضبط ملقات التلاميد وتتبعها وإنجار الوثائق المتعلقه بتمرسهم إعداد تقارير دورية حول مواظبة وسلوك التلاميد وعرضها على"}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 13 من المرسوم 2.02.376، يندرج ضمن اختصاصات ناظر الثانوية التأهيلية السهر على تنظيم العمل التربوي ووضع جداول الحصص الدراسية وتتبع تنفيذ المناهج والأنشطة التربوية (أما الاختيار A فلمدير المؤسسة، و C و D للحارس العام للخارجية).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q55', 'exam_2022_tasks', 55, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'موع حول الاختصاصات أ', false, '[{"id": "A", "text": "و المهام المرئنطة بالو ظبلة المطلوب شظها ) 44 )"}, {"id": "B", "text": "توفير ظروف السلامة للعاملين بالمومسة"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q56', 'exam_2022_tasks', 56, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'النطبمية العمومية هي من مسؤولية:', false, '[{"id": "A", "text": "المدير الاقليمي الدي تقع المؤسسة في تراب ادارئه"}, {"id": "B", "text": "SÅ التأمبر المدرسي المتعاقرة"}, {"id": "C", "text": "مدير المؤسسة النعليمرة"}, {"id": "D", "text": "أمو دسه"}]'::jsonb, ARRAY['A']::text[], 'السند القانوني والمحاسبي معتمد وفق نصوص مباراة التعليم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q57', 'exam_2022_tasks', 57, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'يستثنى من اختصاص محلس التدبير:', false, '[{"id": "A", "text": "حره أ ال"}, {"id": "B", "text": "لموسسه."}, {"id": "C", "text": "تصضر كر مر الادار د أنت بو يه ومدئس العوسسة محتد"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تضطلع الإدارة التربوية ومجالس المؤسسة مجتمعةً بمهام التدبير والتأطير الإداري والتربوي للمؤسسة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q58', 'exam_2022_tasks', 58, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'لمهاو الذلة:', false, '[{"id": "A", "text": "سمو سسه سسي، بصورء عر مسذه«غدت لحسست"}, {"id": "B", "text": "مر الى التوله سء ح» سسقله وندب لحسدت عو مء ل الدوده اسسرة صررء عر مستض وعت لحسد"}, {"id": "C", "text": "سالز اوله المسسرء صو، سسء «ت السس أعسر سه تد سه"}, {"id": "D", "text": "ددا اس اسه انعسه وتلدت الحت مه تد سه يجب نر صادب المشرءاسنشار ة مجمو عه من المتتعسين، فب عفد لصئدء، ولديي يصب ن عل"}]'::jsonb, ARRAY['D']::text[], 'حسب المادة 11 من القانون التنظيمي لقانون المالية 130.13، تتكون تكاليف الدولة من: نفقات الميزانية العامة ونفقات ميزانيات مرافق الدولة المسيرة بصورة مستقلة (SEGMA) ونفقات الحسابات الخصوصية للخزينة (CST).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q59', 'exam_2022_tasks', 59, 'مهام ملحق الاقتصاد والإدارة والتنظيم', 'عددهم عى:', false, '[{"id": "A", "text": "سننافي"}, {"id": "B", "text": "5 ستنافي"}, {"id": "C", "text": "الخيار C"}, {"id": "D", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'في إطار الشراء بسندات الطلب (أو المسطرة التفاوضية بعد استشارة)، يجب على صاحب المشروع استشارة مجموعة من المتنافسين وتقديم ما لا يقل عن 3 بيانات أثمان مختلفة (3 متنافسين) على الأقل ما لم يتعذر ذلك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation)
VALUES ('exam_2022_tasks_q60', 'exam_2022_tasks', 60, 'الصفقات العمومية', 'تبرم صفقات الاشغال والتوريدات والخدمات، استفاء اعمال الهندسة المعمارية. عن طريق:', false, '[{"id": "A", "text": "طلب العروض أو المسطرة التفاوصية فسط"}, {"id": "B", "text": "طلب العروض أو المسطرة التفاوضية أو سند الطلب"}, {"id": "C", "text": "طلب العروض أو المباراة أو السسطرة التفاوضية"}, {"id": "D", "text": "طلب العروض أو المباراة أو سند الصندوق"}]'::jsonb, ARRAY['B']::text[], 'حسب المادة 16 من مرسوم الصفقات العمومية (2.12.349 / 2.22.431)، تبرم صفقات الأشغال والتوريدات والخدمات عن طريق: طلب العروض أو المباراة أو المسطرة التفاوضية، كما يمكن إنجاز أعمال بناءً على سندات طلب. (إذا قُصد في السؤال طرق إبرام "الصفقات" بالمعنى الضيق فالجواب هو (C): طلب العروض أو المباراة أو المسطرة التفاوضية، وإذا قُصد طرق إبرام الطلبيات العمومية عموماً كما في العنوان الفرعي للمادة 16 فيُقبل (B) أيضاً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation;