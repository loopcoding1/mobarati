-- ====================================================================
-- مباراتي — امتحان ابتدائي: العلوم، مادة التخصص، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/العلوم - مادة التخصص - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/العلوم - مادة التخصص.pdf (14 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q91 إلى Q120 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد العلوم ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * ستة أجوبة هي E («لا يوجد أي اختيار صحيح»): Q91، Q93، Q105، Q106، Q108، Q118 —
--     موسومة في verification_note مع التفصيل (Q105: المسافة الصحيحة 384000 km؛
--     Q106: الكتلتان الصحيحتان 1.04 g و0.26 g).
--   * الأجوبة العددية أُعيد حسابها: Q105 (d = c×t = 384000 km)، Q106
--     (m(N2)=1.04 g ، m(O2)=0.26 g)، Q113 (Req = 3R/2)، Q114 (u3=2E/3 ، u1=u2=E/3)،
--     Q117 (γ = A′B′/AB = 3).
--   * الأسئلة المعتمدة على وثائق/رسوم (Q96 الوثيقة 1، Q98-Q99 الوثيقة 2، Q101 الوثيقة 3،
--     Q107 الوثيقة 4، Q110-Q111 الوثيقة 5، Q112 الوثيقة 6، Q113-Q114 الوثيقة 7،
--     Q115 الوثيقة 8، Q116-Q117 الوثيقة 9) موسومة في verification_note؛ الرسوم غير
--     قابلة للتمثيل نصياً في قاعدة البيانات.
--   * التعليلات منقولة حرفياً من ملف الحل.
--   * لا أسئلة متخطاة: أُدرجت الأسئلة الـ30 كاملة (Q91–Q120).
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (ساعة واحدة = 60 دقيقة) والمعامل (2) مأخوذان من غلاف ورقة الامتحان
--     (صفحة 1/14)؛ لا يوجد عمود للمعامل في جدول exams، فسُجل هنا فقط.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (نجوم/تشطيبات بجانب بعض الاختيارات)
--     — أُهملت تماماً ولم تؤثر في أي جواب.
--   * اختلافات طباعية فقط بين ملف الحل وورقة الامتحان (نفس المحتوى): الامتحان يكتب
--     «438 000 km» بفاصل آلاف و«c = 3.10^8 m.s^-1» و«NADP⁺» بأس علوي، بينما ملف الحل
--     يكتب «438000 km» و«c = 3⋅10^8 m⋅s^-1» و«NADP+»؛ اعتُمد نص ملف الحل.
--   * Q107: هضبة المنطقة 2 في المسح الضوئي تقرأ عند ~1.5°C لا 0°C تماماً، لكنها
--     هضبة انصهار واضحة والجواب A غير متأثر (موسوم في verification_note).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_sciences_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على أرقام المصدر 91–120 (دون إعادة ترقيم).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_sciences_oct', 'specialty_primary', 2024, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q91', 'exam_primary_2024_sciences_oct', 91, 'البيولوجيا — الأحماض النووية (ADN)', 'La molécule d''ADN est constituée des éléments principaux suivants :', false, '[{"id": "A", "text": "Un groupe phosphate, un désoxyribose et des bases azotées A, U, C, G."}, {"id": "B", "text": "Un groupe phosphate, un ribose et des bases azotées A, T, C, G."}, {"id": "C", "text": "Un groupe phosphate, un désoxyribose et des bases azotées A, T, U, G."}, {"id": "D", "text": "Un groupe phosphate, un ribose et des bases azotées A, U, C, G."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'تتكون جزيئة ADN من نيوكليوتيدات، وكل نيوكليوتيد يتكون من: مجموعة فوسفاط (groupe phosphate)، وسكر خماسي هو الريبوز ناقص الأكسجين (désoxyribose)، وأربع قواعد أزوتية هي A, T, C, G. أما القاعدة U (اليوراسيل) وسكر الريبوز (ribose) فيخصان جزيئة ARN فقط. وبما أن الاختيارات الأربعة الأولى كلها خاطئة (A وC تتضمنان U، وB وD تتضمنان ribose)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): جزيئة ADN تتكون من فوسفاط + ديزوكسي ريبوز + القواعد A,T,C,G؛ كل الاختيارات A-D تتضمن U أو الريبوز (ribose) الخاصين بـ ARN.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q92', 'exam_primary_2024_sciences_oct', 92, 'البيولوجيا — التنفس الخلوي', 'Lors de la respiration cellulaire, la dégradation du glucose est :', false, '[{"id": "A", "text": "Complète et s''effectue dans le hyaloplasme et la matrice mitochondriale."}, {"id": "B", "text": "Incomplète et s''effectue dans le hyaloplasme et la membrane mitochondriale."}, {"id": "C", "text": "Complète et s''effectue dans le hyaloplasme et la membrane mitochondriale."}, {"id": "D", "text": "Incomplète et s''effectue dans le hyaloplasme et la matrice mitochondriale."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'خلال التنفس الخلوي (respiration cellulaire)، يتم الهدم الكلي (dégradation complète) للكليكوز إلى مواد معدنية (CO2 وH2O)، ويتم هذا الهدم على مرحلتين رئيسيتين: انحلال الكليكوز (glycolyse) في الجبلة الشفافة (hyaloplasme)، ثم هدم حمض البيروفيك (تكون الأستيل كوانزيم A ودورة كريبس) في ماتريس الميتوكندري (matrice mitochondriale).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q93', 'exam_primary_2024_sciences_oct', 93, 'البيولوجيا — التخمر الكحولي', 'La fermentation alcoolique est un processus catabolique qui permet :', false, '[{"id": "A", "text": "La formation de l''éthanol et l''oxydation de l''acide pyruvique."}, {"id": "B", "text": "La réduction de NAD+ et l''oxydation de l''acide pyruvique."}, {"id": "C", "text": "La formation de l''éthanol et la dégradation complète du glucose."}, {"id": "D", "text": "Le dégagement du CO2 et l''oxydation de l''acide pyruvique."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'التخمر الكحولي هو هدم غير تام (dégradation incomplète) للكليكوز (مما يُقصي C)، حيث يتحول حمض البيروفيك بعد إزالة الكربوكسيل (CO2) إلى إيثانول عبر اختزال (réduction) وليس أكسدة (بفضل أكسدة NADH,H+ إلى NAD+). وبما أن الاختيارات A وB وD تتحدث كلها خطأً عن «أكسدة حمض البيروفيك (oxydation de l''acide pyruvique)»، فإن جميع الاختيارات المقترحة خاطئة، والجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): التخمر الكحولي هدم غير تام مع اختزال حمض البيروفيك إلى إيثانول؛ كل الاختيارات A-D تتحدث خطأً عن أكسدة حمض البيروفيك أو عن هدم تام للكليكوز.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q94', 'exam_primary_2024_sciences_oct', 94, 'البيولوجيا — التركيب الضوئي (المرحلة الكيميوضوئية)', 'La phase photochimique de la photosynthèse se déroule dans :', false, '[{"id": "A", "text": "Le thylakoïde et permet, la formation de l''ATP et la réduction de NADP+."}, {"id": "B", "text": "Le stroma et permet, la formation de l''ATP et la réduction de NADP+."}, {"id": "C", "text": "Le thylakoïde et permet, la formation de l''ATP et l''oxydation de NADPH."}, {"id": "D", "text": "Le stroma et permet, la formation de l''ATP et l''oxydation de NADPH."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'تحدث المرحلة المضاءة / الكيميوضوئية (phase photochimique) من التركيب الضوئي على مستوى أغشية التيلاكويدات (thylakoïdes) داخل البلاستيدة الخضراء، وتُمكن من تحويل الطاقة الضوئية إلى طاقة كيميائية عبر تركيب جزيئات ATP واختزال NADP+ إلى NADPH,H+ (مع طرح ثنائي الأكسجين O2 الناتج عن أكسدة الماء).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q95', 'exam_primary_2024_sciences_oct', 95, 'البيولوجيا — التركيب الضوئي (دورة كالفن)', 'La phase chimique de la photosynthèse (le cycle de Calvin) permet :', false, '[{"id": "A", "text": "La formation des glucides et se déroule dans le stroma des chloroplastes."}, {"id": "B", "text": "La formation des glucides, l''oxydation de CO2 et l''oxydation de NADPH."}, {"id": "C", "text": "La formation des glucides et se déroule dans la membrane des thylakoïdes."}, {"id": "D", "text": "La formation des glucides, la réduction de CO2 et la réduction de NADP+."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'تتم المرحلة المظلمة / الكيميائية (دورة كالفن) داخل الستروما (stroma) في البلاستيدات الخضراء، ويتم خلالها اختزال CO2 (وليس أكسدته كما في B) وأكسدة NADPH,H+ إلى NADP+ (وليس اختزاله كما في D) لإنتاج السكريات (glucides).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q96', 'exam_primary_2024_sciences_oct', 96, 'البيولوجيا — الجهاز التنفسي', 'Les éléments qui correspondent à la légende du document 1 sont :', false, '[{"id": "A", "text": "1- Nez ; 2- trachée ; 3- poumon ; 4- bronche ; 5- diaphragme ; 6- larynx ; 7- pharynx ; 8- sac alvéolaire ; 9- bronchiole."}, {"id": "B", "text": "1- Nez ; 2- bronche ; 3- poumon ; 4- trachée ; 5- diaphragme ; 6- larynx ; 7- pharynx ; 8- sac alvéolaire ; 9- bronchiole."}, {"id": "C", "text": "1- Nez ; 2- bronche ; 3- poumon ; 4- trachée ; 5- diaphragme ; 6- pharynx ; 7- larynx ; 8- sac alvéolaire ; 9- bronchiole."}, {"id": "D", "text": "1- Nez ; 2- trachée ; 3- poumon ; 4- bronche ; 5- diaphragme ; 6- pharynx ; 7- larynx ; 8- sac alvéolaire ; 9- bronchiole."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'حسب الرسم التخطيطي للجهاز التنفسي (الوثيقة 1):
1: الأنف (Nez)
2: الرغامى / القصبة الهوائية (trachée)
3: الرئة (poumon)
4: القصبة الهوائية الرئيسية (bronche)
5: الحجاب الحاجز (diaphragme)
6: البلعوم (pharynx) ويقع في الأعلى خلف التجويف الأنفي والفموي
7: الحنجرة (larynx) وتقع أسفل البلعوم مباشرة في أعلى الرغامى
8: الكيس السنخي (sac alvéolaire)
9: القصيبة الهوائية (bronchiole)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 1 (رسم تخطيطي للجهاز التنفسي عند الإنسان، مرقّم من 1 إلى 9) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً، والترقيم في الوثيقة هو: 1 الأنف، 2 الرغامى، 3 الرئة، 4 القصبة، 5 الحجاب الحاجز، 6 البلعوم، 7 الحنجرة، 8 الكيس السنخي، 9 القصيبة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q97', 'exam_primary_2024_sciences_oct', 97, 'البيولوجيا — الدورة الدموية الرئوية', 'Au niveau des capillaires revêtant les alvéoles pulmonaires, le sang provenant du cœur :', false, '[{"id": "A", "text": "Droit par les artères pulmonaires, s''enrichit en oxygène et repart par les veines pulmonaires vers le cœur gauche."}, {"id": "B", "text": "Droit par les veines pulmonaires, s''enrichit en oxygène et repart par les artères pulmonaires vers le cœur gauche."}, {"id": "C", "text": "Gauche par les artères pulmonaires, s''enrichit en oxygène et repart par les veines pulmonaires vers le cœur droit."}, {"id": "D", "text": "Gauche par les veines pulmonaires, s''enrichit en oxygène et repart par les artères pulmonaires vers le cœur droit."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'في الدورة الدموية الصغرى (الرئوية)، ينطلق الدم الغني بـ CO2 من القلب الأيمن (البطين الأيمن) عبر الشرايين الرئوية (artères pulmonaires) نحو الرئتين؛ وعلى مستوى الشعيرات الدموية المحيطة بالأسناخ الرئوية يتخلص من CO2 ويغتني بـ O2، ثم يعود عبر الأوردة الرئوية (veines pulmonaires) إلى القلب الأيسر (الأذين الأيسر).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q98', 'exam_primary_2024_sciences_oct', 98, 'الإيكولوجيا — الشبكة الغذائية والمستويات الغذائية', 'D''après les données du document 2, on peut dire que :', false, '[{"id": "A", "text": "Les zooplanctons carnivores, les calmars et les krills occupent le même niveau trophique."}, {"id": "B", "text": "Les poissons, les calmars et les krills occupent le même niveau trophique."}, {"id": "C", "text": "Les poissons, les calmars et la baleine bleue occupent le même niveau trophique."}, {"id": "D", "text": "Les manchots, les calmars et les krills occupent le même niveau trophique."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'بتتبع الأسهم في الشبكة الغذائية (الوثيقة 2)، نجد المستويات الغذائية التالية:
المستوى 1 (منتجون): Phytoplanctons
المستوى 2 (مستهلكون من الدرجة 1): Zooplanctons Herbivores
المستوى 3 (مستهلكون من الدرجة 2): Zooplanctons carnivores و Krills
المستوى 4 (مستهلكون من الدرجة 3):
Poissons (تتغذى على Zooplanctons carnivores)
Calmars (تتغذى على Zooplanctons carnivores)
Baleine bleue (تتغذى على Krills)
إذن الأسماك (poissons) والحبار (calmars) والحوت الأزرق (baleine bleue) تحتل جميعها نفس المستوى الغذائي (المستوى الرابع / C3).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 2 (شبكة غذائية بحرية مبسطة بالأسهم: Phytoplanctons ← Zooplanctons Herbivores ← Krills / Zooplanctons carnivores ← Poissons، Calmars، Baleine bleue، Manchot، Léopard de mer، Cachalot، Orque) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q99', 'exam_primary_2024_sciences_oct', 99, 'الإيكولوجيا — تصنيف الكائنات حسب التغذية', 'Selon leur comportement alimentaire, on peut classer les organismes du réseau trophique représenté dans le document 2 en :', false, '[{"id": "A", "text": "Producteurs, consommateurs et décomposeurs."}, {"id": "B", "text": "Producteurs et décomposeurs."}, {"id": "C", "text": "Consommateurs et décomposeurs."}, {"id": "D", "text": "Producteurs et consommateurs."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'السؤال يقيدنا تحديداً بالكائنات الممثلة في الوثيقة 2 (représenté dans le document 2). وعند فحص الوثيقة نجد فقط المنتجين (Phytoplanctons) والمستهلكين (باقي الكائنات الحيوانية)، ولا يوجد أي تمثيل لـ المحللات (décomposeurs) في هذه الوثيقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 2 (الشبكة الغذائية البحرية) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً. لا يوجد أي محلل (décomposeur) ممثل في الوثيقة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q100', 'exam_primary_2024_sciences_oct', 100, 'الإيكولوجيا — المنتجون', 'Les producteurs d''un réseau trophique marin sont des organismes :', false, '[{"id": "A", "text": "Hétérotrophes capables de convertir l''énergie solaire en énergie chimique."}, {"id": "B", "text": "Détritivores capables de convertir la matière chimique en matière organique."}, {"id": "C", "text": "Autotrophes capables de convertir l''énergie solaire en énergie chimique."}, {"id": "D", "text": "Herbivores capables de convertir la matière chimique en matière organique."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'الكائنات المنتجة (مثل العوالق النباتية Phytoplanctons) هي كائنات ذاتية التغذية (autotrophes) تقوم بعملية التركيب الضوئي لتحويل الطاقة الضوئية (الشمسية) إلى طاقة كيميائية مخزنة في المادة العضوية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q101', 'exam_primary_2024_sciences_oct', 101, 'الجيولوجيا — منطقة الطمر', 'Les éléments qui correspondent à la légende du document 3 sont :', false, '[{"id": "A", "text": "1- croûte continentale ; 2- manteau lithosphérique ; 3- lithosphère ; 4- asthénosphère ; 5- discontinuité de Mohovicic ; 6- fosse ; 7- lithosphère océanique ; 8- pluton."}, {"id": "B", "text": "1- croûte continentale ; 2- manteau lithosphérique ; 3- asthénosphère ; 4- lithosphère ; 5- discontinuité de Mohovicic ; 6- fosse ; 7- lithosphère océanique ; 8- magma."}, {"id": "C", "text": "1- croûte continentale ; 2- manteau lithosphérique ; 3- lithosphère ; 4- asthénosphère ; 5- discontinuité de Lehmen ; 6- fosse ; 7- lithosphère océanique ; 8- magma."}, {"id": "D", "text": "1- croûte continentale ; 2- manteau lithosphérique ; 3- asthénosphère ; 4- lithosphère ; 5- discontinuité de Gutenberg ; 6- fosse ; 7- lithosphère océanique ; 8- pluton."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بملاحظة الرسم التخطيطي لمنطقة الطمر (الوثيقة 3):
1: القشرة القارية (croûte continentale)
2: الرداء الغلافي / الصخري (manteau lithosphérique)
3: الغلاف الصخري (lithosphère = 1 + 2)
4: الأستينوسفير (asthénosphère) الذي يقع تحت الغلاف الصخري
5: انقطاع موهوروفيتشيتش / موهو (discontinuité de Mohorovičić) الذي يفصل القشرة عن الرداء (وهو مكتوب اختصاراً في الامتحان بـ Mohovicic، بينما Lehmann وGutenberg يقعان في أعماق النواة)
6: الحفرة المحيطية (fosse)
7: الغلاف الصخري المحيطي (lithosphère océanique)
8: البلوتون (pluton) أي الكتلة الصهارية المتصلبة في العمق داخل القشرة القارية دون وصولها للسطح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 3 (رسم تخطيطي لمنطقة تقارب صفيحتين/طمر، مرقّم من 1 إلى 8) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً. ملاحظة: الامتحان يكتب «Mohovicic» اختصاراً لـ Mohorovičić.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q102', 'exam_primary_2024_sciences_oct', 102, 'الجيولوجيا — الصخور الصهارية في مناطق الطمر', 'Parmi les roches magmatiques qui caractérisent les zones de subduction, on trouve :', false, '[{"id": "A", "text": "L''andésite qui a une structure grenue et résulte d''un refroidissement lent du magma en profondeur."}, {"id": "B", "text": "La granodiorite qui a une structure grenue et résulte d''un refroidissement rapide du magma en surface."}, {"id": "C", "text": "L''andésite qui a une structure microlitique et résulte d''un refroidissement rapide du magma en surface."}, {"id": "D", "text": "La granodiorite qui a une structure microlitique et résulte d''un refroidissement lent du magma en profondeur."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'تتميز مناطق الطمر بصخرتين صهاريتين رئيسيتين:
الأنديزيت (andésite): صخرة بركانية ذات بنية ميكروليتية (structure microlitique) ناتجة عن تبريد سريع للصهارة على السطح.
الكرانوديوريت (granodiorite): صخرة بلوتونية ذات بنية محببة (structure grenue) ناتجة عن تبريد بطيء في العمق.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q103', 'exam_primary_2024_sciences_oct', 103, 'الجيولوجيا — تقارب الصفائح وسلاسل الطمر', 'Lors de la convergence des plaques lithosphériques, les chaînes de subduction résultent de :', false, '[{"id": "A", "text": "L''enfouissement d''une lithosphère océanique moins dense sous une plaque continentale plus dense."}, {"id": "B", "text": "La confrontation de deux lithosphères océaniques de même densité."}, {"id": "C", "text": "La confrontation de deux lithosphères continentales de même densité."}, {"id": "D", "text": "L''enfouissement d''une lithosphère océanique plus dense sous une lithosphère continentale moins dense."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'تتشكل سلاسل الطمر (مثل جبال الأنديز) نتيجة انغراز غلاف صخري محيطي أكثر كثافة (plus dense) تحت غلاف صخري قاري أقل كثافة (moins dense).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q104', 'exam_primary_2024_sciences_oct', 104, 'علم الفلك — المجرات', 'La galaxie dans laquelle nous vivons est nommée :', false, '[{"id": "A", "text": "Messier 74."}, {"id": "B", "text": "Voie Lactée."}, {"id": "C", "text": "Andromède."}, {"id": "D", "text": "Messier 81."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'المجرة التي ينتمي إليها نظامنا الشمسي وكوكب الأرض تسمى درب التبانة (La Voie Lactée).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q105', 'exam_primary_2024_sciences_oct', 105, 'علم الفلك — المسافة بين الأرض والقمر', 'Pendant une nuit de pleine lune, la lumière émise par la lune fait 1.28 s pour parvenir à la surface de la terre, à la vitesse c = 3⋅10^8 m⋅s^-1. La distance entre la terre et la lune est :', false, '[{"id": "A", "text": "438000 km environ."}, {"id": "B", "text": "843000 km environ."}, {"id": "C", "text": "483000 km environ."}, {"id": "D", "text": "834000 km environ."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نحسب المسافة بالعلاقة d = c × t:
d = 3 × 10^8 m/s × 1.28 s = 3.84 × 10^8 m = 384000 km
القيمة 384000 km غير موجودة ضمن الاختيارات A وB وC وD (فكلها أرقام مبدّلة للتمويه)، إذن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): المسافة الصحيحة d = c×t = 3×10^8 × 1.28 = 384000 km غير واردة في الاختيارات (كلها أرقام مبدّلة: 438000 / 843000 / 483000 / 834000).')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q106', 'exam_primary_2024_sciences_oct', 106, 'تنظيم المادة — مكونات الهواء', 'L''air, de masse volumique ρ = 1.3 g/L, est constitué notamment d''environ 80% de diazote (N2) et 20% de dioxygène (O2). Les masses de diazote m(N2) et de dioxygène m(O2) dans un litre (1 L) d''air sont :', false, '[{"id": "A", "text": "m(N2) = 0.26 g ; m(O2) = 1.04 g."}, {"id": "B", "text": "m(N2) = 0.68 g ; m(O2) = 0.62 g."}, {"id": "C", "text": "m(N2) = 1.04 g ; m(O2) = 0.62 g."}, {"id": "D", "text": "m(N2) = 0.62 g ; m(O2) = 0.68 g."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'كتلة لتر واحد من الهواء هي m_air = ρ × V = 1.3 g.
كتلة ثنائي الأزوت (80%): m(N2) ≈ 1.3 × 0.80 = 1.04 g
كتلة ثنائي الأكسجين (20%): m(O2) ≈ 1.3 × 0.20 = 0.26 g
نلاحظ أن الاختيار A عكس القيمتين، والاختيار C وضع فخاً بكتابة 0.62 g بدلاً من 0.26 g (حيث 1.04 + 0.62 = 1.66 g ≠ 1.3 g). (وحتى بالحساب الدقيق بالكتل المولية نجد m(N2) ≈ 1 g وm(O2) ≈ 0.29 g). وبالتالي لا يوجد أي اختيار صحيح ضمن A-D، فالجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): الكتلتان الصحيحتان m(N2) = 1.04 g وm(O2) = 0.26 g غير واردتين في الاختيارات (A يعكسهما، وC يكتب 0.62 g بدل 0.26 g).')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q107', 'exam_primary_2024_sciences_oct', 107, 'تنظيم المادة — تسخين الماء وانصهار الجليد', 'Dans la zone 2 (document 4), l''eau pure :', false, '[{"id": "A", "text": "Absorbe de l''énergie avec changement de son état physique."}, {"id": "B", "text": "Absorbe de l''énergie sans changement de son état physique."}, {"id": "C", "text": "Perd de l''énergie avec changement de son état physique."}, {"id": "D", "text": "Perd de l''énergie sans changement de son état physique."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'المنحنى في الوثيقة 4 يمثل تسخين الماء الخالص من −5°C (صلب) إلى +13°C (سائل). في المنطقة 2 (Zone 2) نلاحظ ثبات درجة الحرارة عند حوالي 0°C، وهي مرحلة انصهار الجليد (fusion)؛ حيث يواصل الماء امتصاص الطاقة الحرارية (absorbe de l''énergie) لتغيير حالته الفيزيائية من الصلب إلى السائل (الحرارة الكامنة للانصهار).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 4 (منحنى تطور درجة حرارة كمية من الماء الخالص بدلالة الزمن، من −5°C إلى +13°C، مقسّم إلى Zone 1 وZone 2 وZone 3) في ورقة الامتحان؛ المنحنى غير قابل للتمثيل نصياً. ملاحظة: هضبة المنطقة 2 في المسح الضوئي تقرأ عند ~1.5°C لا 0°C تماماً، لكنها هضبة انصهار واضحة والجواب A غير متأثر.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q108', 'exam_primary_2024_sciences_oct', 108, 'تنظيم المادة — احتراق ثنائي الهيدروجين', 'L''eau se produit par la combustion du dihydrogène dans le dioxygène. Cette combustion est une transformation :', false, '[{"id": "A", "text": "Chimique qui se fait sans échange de chaleur."}, {"id": "B", "text": "Chimique qui se fait avec un gain de chaleur."}, {"id": "C", "text": "Physique qui se fait sans échange de chaleur."}, {"id": "D", "text": "Physique qui se fait avec un gain de chaleur."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'احتراق ثنائي الهيدروجين في ثنائي الأكسجين (2H2 + O2 → 2H2O) هو تحول كيميائي ناشر للحرارة (exothermique)، أي أنه يتم مع تحرير/فقدان حرارة (avec dégagement / perte de chaleur) إلى الوسط الخارجي، وليس بدون تبادل حراري (A)، وليس مع اكتساب حرارة (gain de chaleur / endothermique) كما ورد في (B). إذن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): الاحتراق تحول كيميائي ناشر للحرارة (exothermique، تحرير حرارة)؛ لا يوجد اختيار يقول «كيميائي مع تحرير/فقدان حرارة».')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q109', 'exam_primary_2024_sciences_oct', 109, 'الانتقال الحراري — أنماط انتقال الحرارة', 'En été, il fait plus froid à l''intérieur de la maison qu''à l''extérieur. En plein jour ensoleillé, il y a de l''énergie thermique qui traverse les murs et les fenêtres ouvertes de la maison. Le transfert thermique ainsi mis en jeu est assuré par :', false, '[{"id": "A", "text": "Convection, rayonnement et conduction."}, {"id": "B", "text": "Convection et rayonnement."}, {"id": "C", "text": "Conduction et convection."}, {"id": "D", "text": "Conduction et rayonnement."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'تشترك أنماط الانتقال الحراري الثلاثة في هذه الوضعية:
التوصيل (Conduction): انتقال الحرارة عبر الجدران الصلبة (traverse les murs).
الحمل الحراري (Convection): دخول تيارات الهواء الساخن عبر النوافذ المفتوحة (fenêtres ouvertes).
الإشعاع (Rayonnement): وصول الأشعة الشمسية في يوم مشمس (en plein jour ensoleillé).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q110', 'exam_primary_2024_sciences_oct', 110, 'الكهرباء والمغناطيسية — المنوب والتيار المحرض', 'Dans un alternateur (document 5), le courant électrique induit dans la bobine est un courant :', false, '[{"id": "A", "text": "Continu."}, {"id": "B", "text": "Alternatif variable."}, {"id": "C", "text": "Alternatif sinusoïdal."}, {"id": "D", "text": "Alternatif rectangulaire."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'دوران المغناطيس بانتظام أمام الوشيعة في المنوب (alternateur) يولّد تغيراً جيبياً للتدفق المغناطيسي، مما ينتج عنه تيار كهربائي متناوب جيبي (courant alternatif sinusoïdal).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 5 (مخطط منوب: مغناطيس دوّار أمام وشيعة موصولة بكالفانومتر) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q111', 'exam_primary_2024_sciences_oct', 111, 'الكهرباء والمغناطيسية — شدة التيار المحرض', 'L''intensité du courant électrique induit dans la bobine a une valeur plus importante pour une bobine de :', false, '[{"id": "A", "text": "1000 spires avec noyau."}, {"id": "B", "text": "500 spires sans noyau."}, {"id": "C", "text": "1000 spires sans noyau."}, {"id": "D", "text": "500 spires avec noyau."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'تزداد شدة التيار المحرّض (والتوتر المحرّض) كلما ازداد عدد لفات الوشيعة (1000 > 500) وكلما احتوت الوشيعة على نواة حديدية (avec noyau) لأنها تضاعف شدة المجال والتدفق المغناطيسي داخل الوشيعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'مرتبط بالوثيقة 5 (مخطط المنوب) في ورقة الامتحان.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q112', 'exam_primary_2024_sciences_oct', 112, 'الكهرباء والمغناطيسية — موصلية المحاليل المائية', 'Du point de vue de la conductivité électrique des solutions aqueuses (document 6) :', false, '[{"id": "A", "text": "L''eau salée est conductrice et l''eau sucrée est conductrice."}, {"id": "B", "text": "L''eau salée est conductrice et l''eau sucrée est isolante."}, {"id": "C", "text": "L''eau salée est isolante et l''eau sucrée est isolante."}, {"id": "D", "text": "L''eau sucrée est conductrice et l''eau salée est isolante."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'الماء المالح محلول أيوني يحتوي على أيونات حرة (Na+ وCl−) مسؤولة عن نقل التيار الكهربائي، لذا فهو موصل (conductrice)؛ أما الماء السكري فهو محلول جزيئي لا يحتوي على أيونات حرة، لذا فهو عازل (isolante).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 6 (مخطط دارة: مولد + مصباح + قاطعة K + مسريان في محلول مالح أو سكري) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q113', 'exam_primary_2024_sciences_oct', 113, 'الكهرباء والمغناطيسية — المقاومة المكافئة', 'Circuit électrique (document 7) : La résistance, Req, du conducteur ohmique équivalent est :', false, '[{"id": "A", "text": "Req = R/3."}, {"id": "B", "text": "Req = 2R/3."}, {"id": "C", "text": "Req = 3R."}, {"id": "D", "text": "Req = 3R/2."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'لدينا موصلان أوميان مقاومة كل منهما R مركبان على التوازي، مقاومتهما المكافئة هي:
R12 = (R × R) / (R + R) = R/2
وهذه المجموعة مركبة على التوالي مع الموصل الأومي الثالث (R)، ومنه:
Req = R + R12 = R + R/2 = 3R/2', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 7 (دارة: مولد E + قاطعة K + موصل أومي R على التوالي (u3) مع موصلين أوميين R على التوازي (u1, u2)) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً. أُعيد حساب Req = R + R/2 = 3R/2.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q114', 'exam_primary_2024_sciences_oct', 114, 'الكهرباء والمغناطيسية — التوترات في دارة كهربائية', 'Les valeurs des tensions aux bornes des trois conducteurs ohmiques u1, u2 et u3 (document 7) sont :', false, '[{"id": "A", "text": "u1 = E/3 ; u2 = 2E/3 ; u3 = E/3."}, {"id": "B", "text": "u1 = E ; u2 = E/2 ; u3 = E/2."}, {"id": "C", "text": "u1 = E/2 ; u2 = E/2 ; u3 = E/2."}, {"id": "D", "text": "u1 = E/3 ; u2 = E/3 ; u3 = 2E/3."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'شدة التيار الرئيسي هي: I = E / Req = E / (3R/2) = 2E / 3R
التوتر بين مربطي المقاومة المركبة على التوالي: u3 = R ⋅ I = R ⋅ (2E / 3R) = 2E/3
التوتران u1 وu2 متساويان (تركيب على التوازي)، وحسب قانون إضافية التوترات (E = u3 + u1):
u1 = u2 = E − u3 = E − 2E/3 = E/3', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 7 (نفس دارة Q113) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً. أُعيد الحساب: I = 2E/3R، u3 = 2E/3، u1 = u2 = E/3.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q115', 'exam_primary_2024_sciences_oct', 115, 'البصريات والرؤية — العدسة المفرقة', 'Lentille mince divergente (document 8). D''après le document 8 :', false, '[{"id": "A", "text": "(Δ) : l''axe optique, A : le foyer objet et B : le foyer image."}, {"id": "B", "text": "(Δ) : l''axe optique, A : le foyer image et B : le foyer objet."}, {"id": "C", "text": "(Δ′) : l''axe optique, A : le foyer objet et B : le foyer image."}, {"id": "D", "text": "(Δ′) : l''axe optique, A : le foyer image et B : le foyer objet."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'المستقيم الأفقي (Δ) العمودي على العدسة والمار من مركزها البصري O هو المحور البصري الرئيسي (l''axe optique).
العدسة هنا عدسة مفرقة (lentille divergente) ومنحى انتشار الضوء من اليسار إلى اليمين؛ وفي العدسة المفرقة تكون المسافة البؤرية سالبة، وبالتالي تقع البؤرة الصورة (F′) قبل العدسة على اليسار (النقطة A)، بينما تقع البؤرة الشيء (F) خلف العدسة على اليمين (النقطة B).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 8 (عدسة مفرقة على شبكة تربيعات: المحور (Δ) أفقي، النقطة A يسار العدسة، النقطة B يمينها، وشعاع مائل (Δ′)) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q116', 'exam_primary_2024_sciences_oct', 116, 'البصريات والرؤية — المكبرة (صورة وهمية)', 'Par construction de l''image A′B′ de l''objet AB (document 9) :', false, '[{"id": "A", "text": "L''objet est réel, l''image est réelle."}, {"id": "B", "text": "L''objet est virtuel, l''image est virtuelle."}, {"id": "C", "text": "L''objet est virtuel, l''image est réelle."}, {"id": "D", "text": "L''objet est réel, l''image est virtuelle."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'في مبدأ عمل المكبرة (la loupe) (الوثيقة 9)، يوجد الشيء AB أمام العدسة المجمعة على مسافة أصغر من المسافة البؤرية (OA < OF) فهو شيء حقيقي (objet réel)، وتتشكل له صورة A′B′ من تقاطع امتدادات الأشعة المنبثقة (بخط متقطع) في نفس جهة الشيء، فهي صورة وهمية (image virtuelle) معتدلة ومكبرة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 9 (إنشاء صورة A′B′ لشيء AB بمكبرة/عدسة مجمعة على شبكة تربيعات) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q117', 'exam_primary_2024_sciences_oct', 117, 'البصريات والرؤية — تكبير المكبرة', 'Une loupe est caractérisée par son grandissement γ. La valeur de γ de cette loupe déterminée graphiquement est :', false, '[{"id": "A", "text": "γ = 1/2."}, {"id": "B", "text": "γ = 1/3."}, {"id": "C", "text": "γ = 2."}, {"id": "D", "text": "γ = 3."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'من خلال عدّ التربيعات في الوثيقة 9 نجد:
طول الشيء: AB = 1 تربيعة، والمسافة OA = 2 تربيعتان (علماً أن OF = 3 تربيعات).
طول الصورة: A′B′ = 3 تربيعات، والمسافة OA′ = 6 تربيعات.
وبحساب التكبير الخطي (grandissement):
γ = A′B′ / AB = 3/1 = 3 (أو γ = OA′ / OA = 6/2 = 3)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'السؤال يعتمد على الوثيقة 9 (نفس رسم Q116) في ورقة الامتحان؛ الرسم غير قابل للتمثيل نصياً. أُعيد الحساب من التربيعات: γ = A′B′/AB = 3/1 = 3.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q118', 'exam_primary_2024_sciences_oct', 118, 'الصوتيات — انتشار الموجات', 'Les ondes se propagent dans la matière et/ou dans le vide :', false, '[{"id": "A", "text": "Les OMs se propagent dans le vide et les OEMs se propagent dans le vide avec des vitesses différentes."}, {"id": "B", "text": "Les OMs se propagent dans l''air et les OEMs se propagent dans l''air avec la même vitesse."}, {"id": "C", "text": "Les OMs se propagent dans le vide et les OEMs se propagent dans l''air avec des vitesses différentes."}, {"id": "D", "text": "Les OMs se propagent dans l''air et les OEMs se propagent dans le vide avec la même vitesse."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'الموجات الميكانيكية (OMs) تحتاج إلى وسط مادي مرن ولا تنتشر في الفراغ (مما يُقصي A وC).
سرعة الموجات الميكانيكية (مثل الصوت في الهواء ≈ 340 m/s) تختلف تماماً عن سرعة الموجات الكهرومغناطيسية (مثل الضوء ≈ 3×10^8 m/s)، مما يُقصي B وD اللذين يزعمـان أنهما تنتشران بنفس السرعة (avec la même vitesse).
إذن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, 'الجواب E («لا يوجد أي اختيار صحيح»): الموجات الميكانيكية لا تنتشر في الفراغ، وسرعتها (≈340 m/s في الهواء) تختلف عن سرعة الموجات الكهرومغناطيسية (≈3×10^8 m/s)؛ كل الاختيارات A-D خاطئة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q119', 'exam_primary_2024_sciences_oct', 119, 'الصوتيات — العلاقة بين λ وc وf', 'La relation qui lie f, c et λ est donnée par l''équation suivante :', false, '[{"id": "A", "text": "λ = f²/c."}, {"id": "B", "text": "λ = c/f."}, {"id": "C", "text": "λ = f/c."}, {"id": "D", "text": "λ = c²/f."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'العلاقة الأساسية بين طول الموجة λ وسرعة الانتشار c والتردد f هي:
c = λ ⋅ f ⟹ λ = c/f', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة أكتوبر 2024) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_oct_q120', 'exam_primary_2024_sciences_oct', 120, 'الصوتيات — مجال السمع البشري', 'L''oreille humaine n''entend que les ondes dont la fréquence se trouve dans la gamme :', false, '[{"id": "A", "text": "0 Hz ≤ f ≤ 20 Hz."}, {"id": "B", "text": "20 kHz ≤ f ≤ 20 MHz."}, {"id": "C", "text": "20 Hz ≤ f ≤ 20 kHz."}, {"id": "D", "text": "20 MHz ≤ f ≤ 20 GHz."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'مجال الترددات المسموعة من طرف الأذن البشرية محصور بين 20 Hz و20 kHz (20000 Hz). ما دون 20 Hz يسمى تحت صوتية (infrasons)، وما فوق 20 kHz يسمى فوق صوتية (ultrasons).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1dAamDq56BycPuxat0XkPGl3jrj2UJWaI', true, NULL)
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
