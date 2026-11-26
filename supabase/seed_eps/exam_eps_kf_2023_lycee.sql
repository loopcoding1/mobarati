-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024)
-- ====================================================================
-- المصدر: ملف الحل solved/2023/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2023.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2023-1228/
--   الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 9 سؤالاً مفتوحاً؛ منها 9 verified=true (مصدر official)؛
--   1 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2023_lycee', 'eps_lycee', 2023, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024)', 'دورة 2023 (يوليوز 2024)', 180, 9, 'الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (9 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q1', 'exam_eps_kf_2023_lycee', 1, 'التعليق على ملاحظة السكان والتقويم السنوي', 'السياق: كرة اليد، السنة الأولى باكالوريا (32 تلميذاً)؛ حصيلة سنوية قبل/بعد للجذع المشترك (120 تلميذاً)، وشبكة ملاحظة (دوري مثلثي A/C/B)؛ OTC حسب OP 2007: كسب اللقاء عبر اختيارات تكتيكية جماعية مبنية على سرعة التنفيذ.
1-1- Commentez le constat spécifique à cette population, tout en précisant l''intérêt d''une évaluation annuelle du projet pédagogique ? (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يذكر المرشح:
- حماس التلاميذ الذي يجب الحفاظ عليه لترجمته إلى رغبة في التعلم والتفوق في نشاط كرة اليد؛
- العدوانية الناتجة عن التنافس كظاهرة اجتماعية، مع وصف كفاءات مستهدفة تجيب عن حاجياتهم الاجتماعية-الثقافية؛
- معايير الملاحظة المعتمَدة ذات طابع فردي، ما يطرح سؤالاً حول المعرفة التابعة للمنتج الجماعي الخاص بهذا المستوى الدراسي. (1 pt)

ويجب أن يحدد المرشح أن التقويم السنوي للمشروع البيداغوجي ضرورة منهجية لأنه يسمح بـ:
- تكييف التدخل البيداغوجي والاختيارات الديداكتيكية مع حاجيات السكان؛
- توحيد الإجراءات لضمان الاستمرارية داخل المشروع البيداغوجي؛
- تعزيز الذكاء الجماعي للفريق البيداغوجي؛
- نشر ثقافة التشارك وتأسيس أرشيف لإعادة استثمار محتملة في إطار البحث-الفعل. (1 pt)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q2', 'exam_eps_kf_2023_lycee', 2, 'حصر حاجيات المتعلمين', '1-2- Répertoriez les besoins réels des apprenants en matière d''apprentissage suite à la lecture du bilan (voir figure n°1). (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يترجم المرشح الملاحَظات إلى معارف إجرائية وسلوكية ومفاهيمية لوصف حاجيات المتعلمين في التعلم:

حاجيات مرتبطة بالمعارف الإجرائية:
- التعاون: تطوير الاهتمام بالمجموعة / المشروع الجماعي / العلامات البصرية والقرارية للوصول إلى هدف الخصم.
- تطوير القدرات الإدراكية والقرارية: فعالية التصويبات.

حاجيات مرتبطة بالمعارف السلوكية:
الجانب الوجداني والعلائقي يغلب كبعد مناسب يجب أخذه في الاعتبار.
- الثقة في قراراتهم واختياراتهم، الخروج من التمركز على الذات للانخراط في مشروع جماعي: التعاون، ضبط النفس: قبول المعارضة.
- بناء مشروع فعل استراتيجي للفوز وإعداده وتنفيذه وتنظيمه جماعياً.

حاجيات مرتبطة بالمعارف المفاهيمية:
- التلفظ بمكتسبات التلاميذ باستعمال المفاهيم التقنية.
- النقاشات والتبادلات بين التلاميذ والمدرس حول حركة أو مرحلة لعب، لامتلاك اللغة الخاصة بالنشاط.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q3', 'exam_eps_kf_2023_lycee', 3, 'صعوبات الملاحظة في كرة اليد', '2-1- Lors de la phase de conception, quelles sont les difficultés d''observation relatives à l''activité handball que peut rencontrer l''enseignant pour diagnostiquer cette classe ? (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يوضح المرشح في كلامه أن الصعوبات مرتبطة بـ:
- خصوصية الرياضات الجماعية وتعقيدها بطبيعتها الفردية والجماعية؛
- التأثير الأساسي لعلاقة القوة التي يمكن أن تتطور أثناء نفس اللقاء أو في وضعيات معارضة مختلفة؛
- صلاحية الملاحظة ومصداقيتها، ما يلزم بإنشاء شبكات ذات طابع نوعي و/أو كمي لعنصر واحد (اللاعب) في نظام متماسك (الفريق).', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q4', 'exam_eps_kf_2023_lycee', 4, 'مطابقة معايير الملاحظة لـOTC', '2-2- Est-ce que les critères d''observation retenus par l''enseignant coïncident-ils avec les exigences de l''OTC spécifique à ce niveau scolaire (voir document n°1) et avec le profil des apprenants décrit dans le bilan (voir figure n°1) ? Justifiez votre propos. (1 pt)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يذكر المرشح أن معايير الملاحظة المعتمدة من المدرس لا تسمح بالتحقق من المفاهيم المنصوص عليها في OTC بطريقة دقيقة.

بالمقابل، اختيار شبكة الملاحظة التي استقاها المدرس، المتمركزة على الجانب الجماعي، يأتي ليكمّل المعايير ذات الطابع النوعي التي تمس الأداء التقني الفردي للمتعلم (الشكل 1).

باختصار: المدرس مدعو إلى التركيز على قراءة مزدوجة نوعية وكمية لصياغة محتويات التدريس بشكل أفضل، وكذا هندسة ملعب كرة اليد التي تسمح بتحديد المناطق الهشة بفقدان الكرة.

على المستوى الدفاعي: عدد اعتراضات الكرة / طبيعة الاعتراض.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q5', 'exam_eps_kf_2023_lycee', 5, 'رهانات ملاحظة التلميذ أثناء التعلم', '2-3- Quels sont les enjeux d''une observation faite par l''élève au cours du processus d''apprentissage ? (1 pt)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يؤكد المرشح أن:
- زمن الملاحظة ليس مخصصاً لشغل التلاميذ بينما يلعب الآخرون؛
- بل هو وظيفة لا غنى عنها للتقويم التكويني والمكوِّن، ولفهم اللعب وتحليله؛
- إغناء سجل اشتغاله؛
- تمكين التلميذ من توقع عواقب مشروع فعله المستقبلي انطلاقاً من تجاربه الماضية؛
- تزويد المدرس بمؤشرات تسمح له بتنظيم التغذية الراجعة وتغذية نقاش الأفكار؛
- إدخال التلميذ إلى التقويم الذاتي.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q6', 'exam_eps_kf_2023_lycee', 6, 'تفسير نتائج test d’observation والنمذجة', '2-4- Interprétez les résultats obtenus lors du test d''observation réservé à cette classe (voir tableau n°1), et proposez par la suite une modélisation du niveau collectif des équipes. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يعرف المرشح المؤشرات التالية وفوائدها:
- مؤشر الحفاظ: الكرات الضائعة / الكرات الملعوبة؛
- مؤشر التقدم: التصويبات المحاوَلة / الكرات الملعوبة؛
- مؤشر الفعالية: التصويبات الناجحة / التصويبات المحاوَلة.

مشكل الحفاظ على الكرة يمكن تفسيره بـ:
- ضعف الإمكانات التقنية (التمرير/الاستقبال)؛
- التموضع/التنقل وشغل الفضاء؛
- مشكل مرتبط بجهل القانون.

على المستوى الدفاعي: صرامة في التدخل على المهاجمين.

مشكل تقدم الكرة يمكن تفسيره بـ: الفريق يحتاج إلى وضع تنظيم جماعي يسمح له بالوصول إلى هدف الخصم: التباعد، خلق وشغل الفضاءات الحرة.

مشكل فعالية الهجوم يمكن تفسيره بـ: الفعالية غائبة عند كل الفرق: نقص القوة/الدقة/التعامل مع الكرة/نوع التصويبات المختارة/طبيعة الدفاع.

مستوى الفرق متذبذب من مباراة لأخرى. نلاحظ وجود ثلاثة مستويات.

مثال نمذجة مع مواضيع دراسة، خاصة بمرحلة الهجوم:
- المستوى 1: الفريق أ. التلاميذ يفقدون كثيراً من الكرات ويجدون صعوبة في الوصول إلى هدف الخصم. موضوع الدراسة: الحفاظ والتقدم (اللعب نحو الأمام).
- المستوى 2: الفريق ب. المهاجمون يبحثون عن حلول جديدة: لعب التتابع (تمريرة وذهاب لأخذ سرعة على الدفاع و/أو الإنهاء بتصويب وحيد). موضوع الدراسة: اللعب في حركة في الفضاءات الحرة بلعب هجوم سريع.
- المستوى 3: الفريق ج. الهجوم يجب أن يناور لوضع لاعب في وضعية تسجيل مواتية. موضوع الدراسة: استعمال الفضاءات الحرة وخلقها.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q7', 'exam_eps_kf_2023_lycee', 7, 'نمط التجميع وأسلوب التدريس', 'Question n°3 : Précisez le mode de groupement et le style d''enseignement approprié pour garantir l''engagement et la motivation des apprenants dans les séances programmées ? Argumentez votre réponse. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'نمط التجميع: يجب أن يحدد المرشح أن مجموعة القسم مكان مواجهة واختلاف.
- التلاميذ ليست لهم نفس الأهداف، ولا نفس الانتظارات، ولا نفس الدوافع.
- تكوين فرق متوازنة فيما بينها، غير متجانسة في تركيبها ومستقرة في الزمن، مع علاقة قوة متوازنة.
- للسماح للأفضل بأن يشعروا بفائدتهم ويؤسسوا أدواراً اجتماعية، وللأضعف بأن يبنوا تدريجياً علامات ويُدمجوا بشكل أفضل. (1 pt)

أسلوب التدريس: لا يوجد أسلوب تدريس مثالي يجب السعي لإتقانه، بل أساليب مناسبة نسبياً حسب متغيرات فردية ومؤسساتية متنوعة.
من خصائص المدرس الفعال القدرة على تنويع أسلوبه واستراتيجياته: تشاركي / ذاتي التوجيه. (1 pt)', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q8', 'exam_eps_kf_2023_lycee', 8, 'مقاربة التعلم (ورشات تقنية)', 'L''enseignant a consacré toute la première séance d''apprentissage pour renforcer les techniques individuelles des apprenants sous forme d''ateliers : passe, dribble, tir...
4-1- Dans quelle approche d''apprentissage s''inscrit le choix de l''enseignant ? Êtes-vous d''accord avec son choix par rapport à cette classe ? Justifiez votre réponse. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يشير المرشح إلى أن الأمر يتعلق بـمقاربة تقنية مبنية على طريقة تحليلية: الفريق يساوي مجموع الأفراد الذين يتكون منهم.

ويجب أن يركّز المرشح على ضرورة اللجوء إلى مقاربة شمولية، تسمى أيضاً النموذج البنيوي: اللعب مجموعة أفعال فردية وجماعية منسقة. إنه ناتج عن مواجهة منطق اللعب، ومنطق اللاعب، ومنطق المؤسسة.

وضعية اللعب هي منظِّم المقاربة، لأنها تسمح بتحديد السلوكيات الواجب تحويلها مع التحقق من صلاحية التنظيمات المقدمة.

إذن، يُفترض بالمدرس أن يقترح على التلميذ (المتحمس) وضعيات تضعه أمام تعدد الاختيارات التقنية-التكتيكية الواجب القيام بها. الوضعيات المقترحة يمكن أن تختلف حسب متغيرات مثل الفضاء أو الزمن أو عدد اللاعبين.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2023، أُجريت في يوليوز 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_lycee_q9', 'exam_eps_kf_2023_lycee', 9, 'وضعية تعلم بديلة (الحصة 1)', '4-2- Proposez une alternative d''une situation d''apprentissage de cette séance n°1 conforme aux exigences des OP 2007 en cohérence avec les besoins de cette classe et l''OTC réservé à ce niveau scolaire et la spécificité de l''APS programmée. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'يجب أن يقترح المرشح محتوى ملائماً ومحفزاً لكل مستوى مهارة.

هدف الحصة: في وضعية 5 ضد 5، يجب أن يضمن الفريق صعوداً سريعاً للكرة؛ وإنهاء الهجوم بتصويب قصد كسب المباراة.

للمستوى 1: مثال غاية: التمركز للحفاظ على كرته أو اللعب على المسارات للاعتراض.
للمستوى 2: غاية: التمركز بفعالية / التصويب بفعالية في وضعية تصويب مواتية.

عرض شروط الإنجاز:
- تهيئات بشرية ومادية؛
- متغيرات، تعليمات: المراوغة ممنوعة، التمريرات المقوّسة ممنوعة؛
- معايير الإنجاز: حامل الكرة (PB): إذا كان الفضاء حراً، أتقدم بالمراوغة؛ قرب المرمى، أصوّب؛ الفضاء مغلق، أمرر الكرة. غير حامل الكرة (NPB): الخروج من الاصطفاف مع المدافع؛ التموضع في فضاء حر؛ التوفر لحامل الكرة التالي؛
- معايير النجاح: نقطة لكل هدف مسجَّل دون جوكر (أو تصويب محاوَل عند الحاجة)؛ نقطتان إذا سُجل الهدف بعد استعمال الجوكر.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1228/', true, 'تناقض في المفتاح الرسمي نفسه: المفتاح يمنع المراوغة (dribble) في التعليمات لكنه يسمح بها في معايير حامل الكرة؛ نُقل كما هو.')
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
