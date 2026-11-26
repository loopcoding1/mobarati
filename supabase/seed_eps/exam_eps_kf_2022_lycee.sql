-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022)
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2022.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2022-1510/
--   لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 9 سؤالاً مفتوحاً؛ منها 1 verified=true (مصدر third_party)؛
--   2 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2022_lycee', 'eps_lycee', 2022, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022)', 'دورة دجنبر 2022', 180, 9, 'لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (9 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q1', 'exam_eps_kf_2022_lycee', 1, 'خصائص السكان والمشروع البيداغوجي', 'السياق: القفز العالي، الجذع المشترك، الوحدة 2: تدبير الجهد البدني؛ مشروع بيداغوجي (الجدول 1)، عينة اختبارات بدنية وأنثروبومترية (الجدول 2)، اختبار ملاحظة للحصة الأولى (الجدولان 3 و4).
1-1 Démontrez l''importance de l''étude des caractéristiques de cette population dans l''élaboration de ce projet pédagogique (tableau n°1). Que pensez-vous de l''interprétation obtenue (tableau n°2) ? (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'الأهمية: المشروع البيداغوجي قيمته في ملاءمته للتلاميذ. معرفة العمر، والمورفولوجيا، والمستوى البدني، والتحفيز، والمكتسبات تسمح بـ(1) تثبيت كفاءات ومكتسبات واقعية (هنا العلامات الثابتة، التمييز بين الجري والدفع، السلامة)، (2) اختيار المحتويات والتدرج وعتاد السلامة (البساط، المطاط)، (3) توقع مجموعات الحاجة والتمايز، (4) توقع المخاطر (السقوط الخلفي) والانحرافات، (5) إعطاء معنى للتعلمات والتحفيز، (6) توقع التقويم.

الرأي في التفسير: التفسير مؤسس جزئياً لكنه متسرع. حساب IMC (الوزن مقسوماً على مربع الطول): الولد أ 65 / 1,70² = 22,5 (طبيعي)؛ البنت أ 53 / 1,42² = 26,3 (زائد وزن)؛ الولد ب 41 / 1,49² = 18,5 (الحد الأدنى)؛ البنت ب 62 / 1,60² = 24,2 (أعلى المنطقة الطبيعية). تنبيه: عتبة 25 هي عتبة البالغ ولا تنطبق على مراهقي الجذع المشترك. في هذا السن يُقرأ IMC على منحنيات العمر والجنس (OMS 2007، زائد الوزن فوق +1 انحراف معياري): البنتان (26,3 و24,2) غالباً فوق حد عمرهما معاً، ولا يمكن الاستنتاج أن تلميذاً واحداً فقط من الأربعة زائد وزن. في كل الحالات، تعميم «نسبة زائد وزن» يبقى قابلاً للنقاش على عينة من أربعة تلاميذ. بالنسبة للقوة، القفزة العمودية تتراوح بين 18 و31 سم: دون جدول مرجعي حسب العمر والجنس، لا يمكن الحكم عليها ضعيفة أو صحيحة، ولا الاستنتاج أن السكان ضعيفو القوة دون اختبار أوسع. عدم التحفيز وانحراف المهام ملاحظتان سلوكيتان معقولتان تتطلبان ملاحظات، لا اختبارات.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', true, 'حسابات IMC صحيحة؛ تحفّظ: عتبة 25 هي عتبة البالغ ولا تنطبق على مراهقي الجذع المشترك (يُقرأ IMC على منحنيات العمر والجنس، OMS 2007)؛ ولا يمكن الحكم على «ضعف القوة» من قفزة عمودية (18–31 سم) دون جدول مرجعي حسب العمر والجنس.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q2', 'exam_eps_kf_2022_lycee', 2, 'إسهام المعارف النظرية', '1-2 Précisez l''apport des connaissances théoriques pour remédier aux problèmes observés (tableau n°2). (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], '- معارف فيزيولوجية وبيوميكانيكية: القفزة العمودية تعتمد على القوة الانفجارية للأطراف السفلية، وتُطوَّر بالقفز المتعدد (pliométrie) والتقوية التدريجية؛ عمل ملائم يحسّن نسبة القوة-الوزن، المفيدة للتلاميذ زائدي الوزن.
- معارف نفسية وبيداغوجية: عدم التحفيز وانحراف المهام يُفسَّران بالخوف من الفشل، والخوف من السقوط، وتقدير الذات؛ وتُعالَجان بمهام بمستوى خطر متحكَّم فيه، وأهداف قابلة للبلوغ، وأدوار متنوعة، وتغذية راجعة إيجابية.
- معارف صحية: نشاط منتظم ومقاس يؤثر في الوزن واللياقة البدنية.
- معارف حول التعلم: مهام متدرجة، تمايز وتغذية راجعة.

هذه المعارف توجّه اختيار المحتويات والوضعيات بدل البقاء وصفية.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q3', 'exam_eps_kf_2022_lycee', 3, 'تقنية الدفع في القفز العالي', '2-1 Décrivez la technique de l''impulsion en saut en hauteur ; et précisez celle du débutant. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'تقنية الدفع (rasoir أو fosbury): بعد جري انطلاق منحنٍ (على شكل «J»)، آخر دعم يكون بقدم الدفع مسطحة، أبعد ما يمكن عن العارضة. الدفع دفعة عمودية سريعة: الرجل الحرة، مثنية، تصعد بقوة، ركبة عالية، الذراعان يرافقان الحركة، الجذع مائل قليلاً نحو داخل المنحنى، ثم يستقيم، النظر يبقى إلى الأمام. طاقة الجري تتحول إلى سرعة عمودية، مع توجه نحو الأعلى وقليلاً إلى الأمام؛ الدفع أحادي القدم.

تقنية المبتدئ: انطلاق مستقيم أو غير منتظم، علامات غير مثبتة، قدم دفع متغيرة؛ تباطؤ قبل الدفع؛ دفع غالباً بقدمين أو نحو الأمام (تجاوز مواجه أو مقص)؛ رجل حرة قليلة النشاط؛ جذع مائل نحو العقبة؛ ترددات؛ دعم قفز موضوع بشكل سيئ بالنسبة للعارضة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q4', 'exam_eps_kf_2022_lycee', 4, 'القدرات البدنية والتمارين', '2-2 Nommez trois qualités physiques exigées lors d''un saut en hauteur, proposez un exercice de renforcement pour chacune de ces qualités. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], '1. القوة الانفجارية (القدرة) للأطراف السفلية: تمرين: قفزات متعددة (pliométrie)، مثلاً 3 سلاسل من 5 قفزات حواجز منخفضة متتابعة (قدمان معاً)، أو قفزات عمودية متكررة، مع استشفاء كامل.
2. السرعة (تسارع جري الانطلاق): تمرين: 4 إلى 6 تسارعات من 20 إلى 30 م في منحنى، انطلاق واقف، استشفاء دقيقتين.
3. المرونة وتقوية السلسلة الظهرية، المفيدة للتجاوز الظهري والاستقبال: تمرين: جسر الظهر، لوح وتقوية 20 ثانية في 3 سلاسل، مع فتح الوركين. يمكن إضافة التنسيق (إيقاع الانطلاق) بجري في دائرة ودعم عند المخاريط.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q5', 'exam_eps_kf_2022_lycee', 5, 'النمذجة والتخطيط', '2-3 Commentez la modélisation faite par l''enseignant et précisez sa relation avec la planification retenue dans le projet pédagogique (voir tableaux n°1 et 4). (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'التعليق: النمذجة تصف مستويين. في المستوى 1 (70%)، التلاميذ ما زالوا في الاكتشاف: لا يعرفون علاماتهم ولا قدم دفعهم، يجرون في خط مستقيم ويخافون السقوط الخلفي، ما يسبب تردداً ورفضاً. في المستوى 2 (30%)، ينطلقون من علاماتهم، لديهم انطلاق منحنٍ ويحاولون التجاوز، لكن الدفع يبقى عمودياً أكثر من اللازم والتجاوز قليل التنظيم. الأغلبية إذن في المستوى 1، ما يوجّه الأولويات.

العلاقة بالتخطيط: المكتسبات المنتظرة في الجدول 1 (علامات ثابتة لانطلاق دقيق، التمييز بين الجري والدفع، احترام السلامة) تجيب بالضبط عن نقائص المستوى 1. يجب إذن أن ينطلق تخطيط الدورة من اكتشاف قدم الدفع والعلامات، وتأمين الاستقبال، ثم فقط تطوير الدفع والتجاوز الظهري؛ وكفاءة تدبير الجهد والأدوار (مراقب، حكم، مساعد) تسمح بإشراك كل التلاميذ.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q6', 'exam_eps_kf_2022_lycee', 6, 'ملاءمة هدف الاختبار التشخيصي', '3-1 À votre avis, le choix de l''objectif du test diagnostique ainsi que les critères d''observation sont-ils en concordance avec les caractéristiques de la population ? Si non, proposez d''autres alternatives. (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], 'لا، ليس تماماً. الهدف «تحقيق أفضل أداء ممكن انطلاقاً من انطلاق معايَر ومتسارع مع تجاوز ظهري» يفترض أن التلاميذ يتقنون أصلاً الانطلاق المنحني وقدم الدفع والتجاوز الظهري، بينما السكان ضعيفو القوة، خائفون وغير متحفزين. إنه ينطوي على مخاطرة (السقوط الخلفي) ويفضّل الأداء على ملاحظة السلوك. معايير الجدول 3 تتعلق أصلاً بجوانب تقنية دقيقة (الاستقبال على الأرداف أو على الظهر) وتترك جانباً الخوف وأخذ العلامات وقدم الدفع.

البدائل: هدف الاختبار: «تجاوز عارضة منخفضة بارتفاع مختار بانطلاق حر، بالقفزة التي يختارها، محاولاً تجاوز أعلى ما يمكن في أمان»، على بساط سميك. المعايير: الانطلاق (علامات مثبتة، منتظم أو لا)، قدم الدفع (ثابتة أو لا)، الدفع (موجه نحو الأعلى أو نحو الأمام)، التجاوز (منخرط أو رافض)، سلامة الاستقبال، والموقف (الإرادة، الخوف).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q7', 'exam_eps_kf_2022_lycee', 7, 'مقاربات التدريس (الانحراف والتحفيز)', '3-2 Quelles démarches d''enseignement pourra s''approprier l''enseignant en vue de pallier aux problèmes de déviance des tâches chez les apprenants et créer la motivation des élèves vis-à-vis cette activité à risque ? (2 pts)', false, '[]'::jsonb, ARRAY[]::text[], '1. سلامة مرئية ومطمئنة: بساط سميك، منطقة استقبال واسعة، عارضة مرنة أو مطاط، عرض من تلميذ.
2. مهام متدرجة، بمستوى نجاح مرتفع في البداية، مع اختيار الارتفاع وطريقة التجاوز (عقد).
3. أدوار اجتماعية للجميع (حكم، مراقب، مساعد، مؤقِّت) حتى لا يبقى متفرجون.
4. تنظيم في ورشات، بمجموعات مستوى أو ألفة، مع تناوب.
5. وضعيات لعبية (منافسة فرق، تحديات، نقط متراكمة).
6. تغذية راجعة إيجابية، معايير نجاح واضحة وبطاقة تتبع التقدم.
7. مهام تقبل الانحراف بتوجيهه (انحرافات جيدة) بدل العقاب.
8. شروحات بسيطة لمعنى الجهد وتدبير موارده.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q8', 'exam_eps_kf_2022_lycee', 8, 'وضعية تعلم (الحصة العملية الأولى)', '3-3 Proposez une situation d''apprentissage de la première leçon pratique dans ce cycle. (3 pts) NB : la situation d''apprentissage doit être conforme aux exigences des OP 2007.', false, '[]'::jsonb, ARRAY[]::text[], '- But : « Franchir une barre basse, de ta hauteur choisie, par un saut avec élan, en repérant ton pied d''appel et tes marques, et en retombant en sécurité. »
- Dispositif : 4 ورشات مع بساط استقبال لكل واحدة، عارضة على مطاط، دائرة انطلاق معلَّمة، 6 تلاميذ في كل ورشة: قافز، حكم، مراقب، مساعد، اثنان ينتظران دورهما. الورقة لا تعطي العدد: 4 ورشات من 6 تصنع 24 تلميذاً، بينما قسم الجذع المشترك أكبر عدداً عادة، فيُحسب عدد الورشات (أو التلاميذ في الورشة) من العدد الحقيقي للقسم.
- Consignes : 1) إيجاد قدم الدفع (القفز فوق عقبة منخفضة، وتدوين القدم التي تنطلق)؛ 2) تثبيت علامتين (بداية الانطلاق، نقطة المنحنى)؛ 3) الجري في منحنى، التباطؤ قليلاً قبل الدفع والدفع نحو الأعلى؛ 4) التجاوز بالأسلوب المختار؛ 5) السقوط على الظهر أو الأرداف على البساط.
- Critères de réussite : انطلاق منحنٍ بنفس قدم الدفع ثلاث مرات من خمس؛ عارضة متجاوَزة دون رفض؛ استقبال آمن.
- Variables : ارتفاع العارضة، طول الانطلاق، شكل التجاوز.
- Régulation : عند الرفض، خفض العارضة أو تقريب العلامات؛ وعند السهولة، رفعها.
- مطابقة OP 2007: كفاءة تدبير الجهد، الأدوار والمهام (حكم، مراقب)، احترام قواعد السلامة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, 'الورقة لا تعطي عدد التلاميذ؛ 4 ورشات من 6 تصنع 24 تلميذاً، بينما قسم الجذع المشترك أكبر عدداً عادة — فيُحسب عدد الورشات (أو التلاميذ في الورشة) من العدد الحقيقي للقسم.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2022_lycee_q9', 'exam_eps_kf_2022_lycee', 9, 'المعارف القابلة للنقل بين الأنشطة', '3-4 Étant donné que ces élèves ont eu l''occasion de vivre au cours de cette année des apprentissages dans les APS suivantes : course en durée, saut en longueur, volleyball : décrivez les techniques, les capacités, les règles et les savoirs qui peuvent être transférables entre ces APS et celle en cours. (3 pts)', false, '[]'::jsonb, ARRAY[]::text[], '- من الجري المطوّل إلى القفز العالي: القدرات: تدبير الجهد والتنفس، انتظام الإيقاع؛ المعارف: الإحماء، النظافة، علامات السرعة؛ جري الانطلاق يتطلب تسارعاً تدريجياً منتظماً.
- من القفز الطويل إلى القفز العالي: تقنيات مشتركة: جري انطلاق متسارع مع علامات، قدم الدفع، دفعة الدفع، رجل حرة نشطة، موقف في الهواء والاستقبال؛ القدرات: السرعة، التنسيق، قوة الأطراف السفلية؛ القواعد: قدم دفع واحدة، محاولات محدودة، قياس الأداء؛ المعارف: قياس الانطلاق وقراءته، سلامة الحفرة أو البساط.
- من الكرة الطائرة إلى القفز العالي: القدرات: الدفع العمودي (الضربة الساحقة، الصد)، تنسيق الذراعين والرجلين، تقدير المسار؛ المعارف: أدوار الحكم، الملاحظة والتغذية الراجعة؛ القواعد: احترام الأدوار والسلامة.
- مشترك: السلامة، الإحماء، ملاحظة زميل بشبكة، تسيير مشروع أداء.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1510/', false, NULL)
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
