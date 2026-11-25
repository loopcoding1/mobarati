-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/ديداكتيك اللغة الفرنسية - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/ديداكتيك اللغة الفرنسية.pdf (12 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q26 إلى Q50 وخياراته الخمسة (A-E) مطابق حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المنهاج الدراسي للتعليم
--     الابتدائي (يوليوز 2021) ونص الامتحان؛ لا يوجد مفتاح تصحيح رسمي مرفق
--     بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التي جوابها E بالاستبعاد (Q31، Q44، Q46، Q47) موسومة في
--     verification_note (الفئة الصحيحة غير واردة في الاختيارات A-D).
--   * التعليلات منقولة حرفياً من ملف الحل.
--   * علامات X المكتوبة بخط اليد على نسخة المسح (إجابات مرشح سابق) أُهملت تماماً.
--
-- ملاحظات عن ملف الحل وملف الامتحان:
--   * بعض صياغات الأسئلة الطويلة اقتُطعت في عرض المتصفح عند إنشاء ملف الحل
--     (مشار إليها بـ […] في النص)؛ النص الكامل استُرجع من ملف PDF نفسه:
--     Q26، Q27 (الخيارات A وB وD)، Q31، Q32، Q33، Q34، Q35، Q36 (الخيارات
--     A وC وD)، Q38، Q39، Q41، Q42، Q43، Q44، Q46، Q48، Q49، Q50
--     (الخيارات B وC وD). لم يُحذف أي سؤال — 25/25 مدرجة.
--   * المسح يبدأ من الصفحة 2/13 من كتيب الديداكتيك المجمّع (التخصص المزدوج:
--     العربية، الفرنسية، الرياضيات، العلوم)؛ صفحة الغلاف غير موجودة في الملف.
--     رمز الامتحان في الترويسة: COct24-S06.
--   * الفواصل العليا (apostrophes) في النص الفرنسي كُتبت بالشكل المطبعي ’
--     (U+2019) كما في ورقة الامتحان المطبوعة، بينما نسخ ملف الحل يستعمل ’
--     (ASCII)؛ المحتوى مطابق بعد توحيد هذا الحرف.
--   * المدة 45 دقيقة: من الجدول الرسمي لمواقيت اختبارات دورة أكتوبر 2024
--     (كل مادة من مواد الديداكتيك 45 دقيقة) ومن صفحة mesconcours.ma لهذا
--     الامتحان — https://mesconcours.ma/concours/enseignement/2024-1003/
--     (المدة: 45 دقيقة، 25 سؤالاً Q26–Q50). المعامل: المصادر متعارضة
--     (الجدول الرسمي: 3؛ mesconcours.ma: 1) ولا يوجد عمود للمعامل في جدول
--     exams — لم يُدرج.
--
--   * اختلاف واحد بين ملف الحل وورقة الامتحان (الورقة هي المرجع): الخيار A في
--     Q50 — ملف الحل يقول «d'un texte descriptif - Le lexique et les moyens
--     linguistiques pour décrire un lieu artistique» بينما الورقة تقول
--     «du texte descriptif - L'emploi du lexique et des moyens linguistiques
--     servant à décrire un lieu artistique.»؛ اعتُمد نص الورقة.
--
-- الأسئلة المحذوفة: لا شيء (0).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_didactics_fr_oct', 'specialty_primary', 2024, 'didactics_fr', 'ديداكتيك اللغة الفرنسية', 'امتحان ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E، بأرقامها الأصلية Q26–Q50)

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q26', 'exam_primary_2024_didactics_fr_oct', 26, 'النقل الديداكتيكي', 'La transposition didactique est une chaîne composée de maillons liés les uns aux autres. Dans quelle proposition cette chaîne est-elle convenablement représentée ?', false, '[{"id": "A", "text": "Savoirs savants → Savoirs à enseigner → Savoirs enseignés → Apprentissages effectifs"}, {"id": "B", "text": "Savoirs à enseigner → Savoirs enseignés → Savoirs savants → Apprentissages effectifs"}, {"id": "C", "text": "Savoirs à enseigner → Savoirs savants → Savoirs enseignés → Apprentissages effectifs"}, {"id": "D", "text": "Savoirs enseignés → Savoirs à enseigner → Savoirs savants → Apprentissages effectifs"}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['A']::text[], 'تمر سلسلة النقل الديداكتيكي (La transposition didactique) عبر مراحل متسلسلة تبدأ بالمعرفة العالمة (Savoirs savants)، ثم تتحول عبر النقل الديداكتيكي الخارجي (المناهج والبرامج) إلى معرفة قابلة للتدريس (Savoirs à enseigner)، ثم يحولها الأستاذ عبر النقل الديداكتيكي الداخلي إلى معرفة مدرَّسة (Savoirs enseignés)، لتنتهي بما يكتسبه المتعلم فعلياً (Apprentissages effectifs / Savoirs appris).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q27', 'exam_primary_2024_didactics_fr_oct', 27, 'المثلث الديداكتيكي', 'Laquelle des propositions, ci-dessous, est appropriée à la définition du triangle didactique ?', false, '[{"id": "A", "text": "Le triangle didactique est une représentation schématisée des relations entre enseignant et élève dans une situation à visée didactique."}, {"id": "B", "text": "Le triangle didactique est une représentation schématisée des relations entre élève et savoir dans une situation à visée pédagogique."}, {"id": "C", "text": "Le triangle didactique est une représentation schématisée des relations entre enseignant, élève et savoir dans une situation à visée didactique."}, {"id": "D", "text": "Le triangle didactique est une représentation schématisée des relations entre enseignant et savoir dans une situation à visée pédagogique."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'المثلث الديداكتيكي (Le triangle didactique) هو تمثيل خطاطي للعلاقات التفاعلية التي تربط الأقطاب الثلاثة: المدرس (enseignant)، المتعلم (élève)، والمعرفة (savoir) ضمن وضعية ذات هدف ديداكتيكي. أما الاختيارات A وB وD فتقتصر على قطبين فقط دون الثالث.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q28', 'exam_primary_2024_didactics_fr_oct', 28, 'الوضعية الديداكتيكية', 'Quelle est la proposition qui renvoie à la situation didactique ?', false, '[{"id": "A", "text": "Elle permet à l’élève de réaliser uniquement des activités d’évaluation."}, {"id": "B", "text": "Elle permet à l’élève de réaliser exclusivement des activités de consolidation."}, {"id": "C", "text": "Elle permet à l’élève de réaliser uniquement des activités d’application."}, {"id": "D", "text": "Elle permet à l’élève de construire de nouveaux apprentissages."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['D']::text[], 'تُعرَّف الوضعية الديداكتيكية (أو وضعية التعلم) بأنها وضعية مخطط لها ومقصودة تمكّن المتعلم من بناء تعلمات جديدة (construire de nouveaux apprentissages). أما الاختيارات A وB وC فتستعمل صيغ الحصر (uniquement / exclusivement) التي لا تناسب الوضعية الديداكتيكية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q29', 'exam_primary_2024_didactics_fr_oct', 29, 'خصائص الشفهي', 'Laquelle des propositions, ci-dessous, est une spécificité de l’oral ?', false, '[{"id": "A", "text": "La concomitance entre la planification et l’émission du discours."}, {"id": "B", "text": "L’absence de contact direct."}, {"id": "C", "text": "L’utilisation des signes de ponctuation."}, {"id": "D", "text": "L’organisation rigoureuse des signes graphiques."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['A']::text[], 'من أبرز خصائص التواصل الشفهي (l’oral) التزامن الآني بين التخطيط للخطاب وإرساله (la concomitance entre la planification et l’émission du discours)، إذ يفكر المتكلم وينتج كلامه في اللحظة نفسها. بينما الاختيارات B وC وD (غياب الاتصال المباشر، علامات الترقيم، تنظيم العلامات الخطية) خصائص تخص الكتابة (l’écrit).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q30', 'exam_primary_2024_didactics_fr_oct', 30, 'استراتيجيات التعلم — استقبال الشفهي', 'Laquelle des stratégies d’apprentissage, ci-dessous, est appropriée à la réception de l’oral ?', false, '[{"id": "A", "text": "Utiliser les indices relatifs à la ponctuation."}, {"id": "B", "text": "Établir des liens entre les propos échangés."}, {"id": "C", "text": "Rédiger un premier jet à partir d’idées formulées mentalement."}, {"id": "D", "text": "Prendre des risques de formulation."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'بحسب جدول استراتيجيات التعلم في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021): • B (الربط بين الأقوال المتبادلة) استراتيجية تخص استقبال/فهم الشفهي (réception de l’oral). • A تخص فهم المقروء (compréhension de l’écrit). • C تخص الإنتاج الكتابي (production de l’écrit). • D تخص الإنتاج الشفهي (production de l’oral).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q31', 'exam_primary_2024_didactics_fr_oct', 31, 'أفعال الكلام — الإلزام', 'Une professeure demande aux élèves d’une classe de la 5ᵉ année de l’enseignement primaire d’identifier les moyens linguistiques servant à réaliser l’acte de langage « Exprimer une obligation ». Dans quelle proposition les moyens linguistiques indiqués conviennent-ils tous à la réalisation de cet acte de langage ?', false, '[{"id": "A", "text": "Il serait souhaitable de ... - Il est recommandé de ... - Il est interdit de... - Il faut..."}, {"id": "B", "text": "... être obligé de ... - Il faudrait ... - Il serait bénéfique de ... - ... être tenu de ..."}, {"id": "C", "text": "Il serait intéressant de ... - Il ne faut pas ... - Ça me ferait plaisir de ... - Il serait préférable de ..."}, {"id": "D", "text": "Il importe de ... - ... avoir l’obligation de ... - Il serait génial de ... - Ce serait bien de ..."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['E']::text[], 'السؤال يشترط أن تكون جميع الوسائل اللغوية في الاختيار (conviennent-ils tous) صالحة للتعبير عن الإلزام (Exprimer une obligation)، وبفحص الاختيارات نجد أن كل اختيار يتضمن عبارات دخيلة لا تفيد الإلزام: • في A: Il serait souhaitable de (تمنٍّ/نصيحة)، Il est recommandé de (نصيحة)، Il est interdit de (منع). • في B: Il serait bénéfique de تفيد النصيحة والتوصية (conseil/recommandation) وليس الإلزام (وكذلك Il faudrait يفيد النصيحة). • في C: Il ne faut pas (منع)، Ça me ferait plaisir de (تمنٍّ)، Il serait préférable de (نصيحة). • في D: Il serait génial de وCe serait bien de تفيدان الاستحسان أو التمني لا الإلزام. إذن لا يوجد أي اختيار صحيح من بين A وB وC وD.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, 'الجواب E بالاستبعاد: كل اختيار من A إلى D يتضمن عبارة لا تفيد الإلزام؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q32', 'exam_primary_2024_didactics_fr_oct', 32, 'أفعال الكلام — النصيحة', 'Lors de l’évaluation diagnostique des prérequis relatifs à l’oral, un professeur demande aux élèves d’une classe de la 6ᵉ année de l’enseignement primaire d’identifier l’acte de langage auquel correspond l’énoncé suivant : « Si j’étais à ta place, je prendrais le TGV. » Parmi les réponses données par les élèves, indiquées ci-dessous, quelle est celle qui convient à la question de ce professeur ?', false, '[{"id": "A", "text": "Exprimer une obligation."}, {"id": "B", "text": "Exprimer un ordre."}, {"id": "C", "text": "Exprimer un conseil."}, {"id": "D", "text": "Exprimer une interdiction."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'تُعد البنية اللغوية (Si j’étais à ta place, je + conditionnel présent) من أشهر الصيغ المعتمدة في اللغة الفرنسية للتعبير عن النصيحة (Exprimer un conseil).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q33', 'exam_primary_2024_didactics_fr_oct', 33, 'أفعال الكلام — التمني', 'Lors d’une activité orale, un professeur demande aux élèves de produire des énoncés pour exprimer un souhait. Parmi les énoncés ci-dessous, produits par des élèves, quel est celui qui convient à la consigne donnée par ce professeur ?', false, '[{"id": "A", "text": "Respectons les animaux."}, {"id": "B", "text": "Nous aimerions visiter le zoo de Rabat."}, {"id": "C", "text": "Il faut protéger les océans."}, {"id": "D", "text": "Ne polluez pas l’environnement !"}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'استعمال الفعل (aimer) في صيغة الشرط الحاضر (Nous aimerions...) يُعبّر بوضوح عن التمني (un souhait). أما الجمل الأخرى فتعبر عن: • A: النصيحة أو الحث بصيغة الأمر (Respectons). • C: الإلزام (Il faut). • D: المنع/النهي (Ne polluez pas).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q34', 'exam_primary_2024_didactics_fr_oct', 34, 'القدرات — استقبال الشفهي', 'De quel sous-domaine d’apprentissage la capacité suivante relève-t-elle ? « Comprendre l’état attitudinal et émotionnel du locuteur à partir des caractéristiques prosodiques de sa parole. »', false, '[{"id": "A", "text": "La production de l’écrit."}, {"id": "B", "text": "La compréhension de l’écrit."}, {"id": "C", "text": "La réception de l’oral."}, {"id": "D", "text": "La production de l’oral."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'وفق مصفوفة القدرات في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، تندرج قدرة «فهم الحالة السلوكية والعاطفية للمتكلم انطلاقاً من الخصائص التطريزية/الصوتية لكلامه (الإيقاع، النبر، التنغيم...)» ضمن فهم/استقبال الشفهي (La réception / compréhension de l’oral).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q35', 'exam_primary_2024_didactics_fr_oct', 35, 'المنهجية — التواصل وأفعال الكلام', 'Lors de la mise en œuvre d’une activité orale, un professeur pose des questions aux élèves d’une classe de la 5ᵉ année de l’enseignement primaire pour les amener à identifier, dans le corpus proposé, les moyens linguistiques servant à réaliser l’acte de langage « Conseiller ». Quelle est l’étape méthodologique qui succède à l’identification, par les élèves, des moyens linguistiques demandés ?', false, '[{"id": "A", "text": "Réinvestissement/Production."}, {"id": "B", "text": "Réception/Compréhension."}, {"id": "C", "text": "Évaluation et soutien."}, {"id": "D", "text": "Entraînement/Réemploi."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['D']::text[], 'التسلسل المنهجي لمراحل أنشطة التواصل وأفعال الكلام (Communication et actes de langage) في المستويين الخامس والسادس: 1. الملاحظة والاكتشاف (Observation / Découverte) 2. الاستقبال والفهم (Réception / Compréhension)، وفي نهايتها يتم استخراج وتحديد الوسائل اللغوية للعمل اللغوي. 3. التدرب وإعادة التوظيف (Entraînement / Réemploi): وهي المرحلة التي تلي مباشرة استخراج الوسائل اللغوية، حيث يتدرب المتعلمون على استعمالها في وضعيات موجهة. 4. الاستثمار والإنتاج (Réinvestissement / Production) في وضعيات جديدة. 5. التقويم والدعم (Évaluation et soutien).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q36', 'exam_primary_2024_didactics_fr_oct', 36, 'الصوتيات — الفونيم [ɛ̃]', 'Lors d’une séance de poésie, une professeure constate que des élèves d’une classe de la 4ᵉ année de l’enseignement primaire ont du mal à prononcer les mots contenant le phonème [ɛ̃]. Parmi les propositions ci-dessous, quelle est celle que cette professeure choisirait pour remédier à cette difficulté ?', false, '[{"id": "A", "text": "Écrire au tableau des mots contenant, chacun, l’un des graphèmes correspondant au phonème [ɛ̃], lire ces mots, prononcer le phonème [ɛ̃] après chaque mot évoqué en faisant remarquer que les lèvres sont un peu arrondies et la langue est en arrière, puis faire lire plusieurs fois ces mots."}, {"id": "B", "text": "Dire des mots contenant le phonème [ɛ̃], isoler ce phonème après chaque mot évoqué et le prononcer en faisant remarquer que les lèvres sont écartées et la langue est en avant, écrire ces mots et les faire lire plusieurs fois, puis dire et faire dire d’autres mots contenant le phonème [ɛ̃]."}, {"id": "C", "text": "Écrire au tableau des mots contenant, chacun, l’un des graphèmes correspondant au phonème [ɛ̃], puis lire ces mots et prononcer [ɛ̃] après chaque mot lu en faisant remarquer que les lèvres sont arrondies, projetées et fermées, et que la langue est en arrière et en position assez basse."}, {"id": "D", "text": "Écrire au tableau des mots contenant, chacun, l’un des graphèmes correspondant au phonème [ɛ̃], lire lentement ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ɛ̃], puis prononcer le phonème [ɛ̃] isolé en faisant remarquer que les lèvres sont arrondies."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'من الناحية الصوتية النطقية (Phonétique articulatoire)، الصائت الأنفي [ɛ̃] (مثل: pain, vin, fin) يتميز بكونه أمامياً (la langue est en avant) وغير مستدير الشفتين / ممدود الشفتين (les lèvres sont écartées / non arrondies). أما الاختيارات A وC وD فكلها خاطئة صوتياً لأنها تصف الشفتين بكونهما مستديرتين (arrondies) واللسان في الخلف، ولهذا فالجواب الصحيح هو B.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q37', 'exam_primary_2024_didactics_fr_oct', 37, 'استراتيجيات التعلم — فهم المقروء', 'Laquelle des stratégies d’apprentissage, ci-dessous, est appropriée à la compréhension de l’écrit ?', false, '[{"id": "A", "text": "Reformuler, expliquer en cas d’incompréhension."}, {"id": "B", "text": "Anticiper la suite du texte à partir de ce qui précède."}, {"id": "C", "text": "Prendre son temps, parler lentement."}, {"id": "D", "text": "Relire sa production plus d’une fois."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'توقع تتمة النص انطلاقاً مما سبق (Anticiper la suite du texte à partir de ce qui précède) هي استراتيجية أساسية في فهم المقروء (compréhension de l’écrit) خلال القراءة. بينما A وC تخصان الإنتاج الشفهي، وD تخص الإنتاج الكتابي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q38', 'exam_primary_2024_didactics_fr_oct', 38, 'الوعي الصوتي', 'Lors d’une séance dévolue à l’évaluation et au soutien en lecture, une professeure dit respectivement des mots trisyllabiques et demande aux élèves d’une classe de la 2ᵉ année de l’enseignement primaire d’identifier la syllabe finale dans chaque mot évoqué. À quelle proposition la consigne donnée aux élèves renvoie-t-elle ?', false, '[{"id": "A", "text": "... au principe alphabétique."}, {"id": "B", "text": "... à l’identification des mots."}, {"id": "C", "text": "... à la fluidité."}, {"id": "D", "text": "... à la conscience phonologique."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['D']::text[], 'الأستاذة تنطق الكلمات شفهياً (dit... des mots trisyllabiques) وتطلب من المتعلمين تحديد المقطع الأخير فيها، وهذا يندرج ضمن الوعي الصوتي (la conscience phonologique)، وتحديداً الوعي المقطعي (la conscience syllabique).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q39', 'exam_primary_2024_didactics_fr_oct', 39, 'المنهجية — القراءة', 'Lors d’une activité de lecture, un professeur demande aux élèves d’une classe de la 6ᵉ année de l’enseignement primaire d’exprimer leur opinion sur une idée contenue dans le texte lu. À quelle étape méthodologique la consigne donnée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "... à la lecture oralisée du texte."}, {"id": "B", "text": "... à la découverte du texte."}, {"id": "C", "text": "... à la réaction au texte."}, {"id": "D", "text": "... à la compréhension du texte."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'في ديداكتيك القراءة بالسنوات العليا من الابتدائي (4، 5، 6)، تمر القراءة بمراحل: ما قبل القراءة (الملاحظة والاكتشاف)، القراءة (الفهم)، ثم التفاعل مع النص (la réaction au texte) التي يُطلب فيها من المتعلم إبداء رأيه الشخصي حول فكرة أو موقف ورد في النص المقروء.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q40', 'exam_primary_2024_didactics_fr_oct', 40, 'القدرات — فهم المقروء', 'À quel sous-domaine d’apprentissage la capacité suivante renvoie-t-elle ? « Évaluer des informations extraites d’un texte lu. »', false, '[{"id": "A", "text": "... à la réception de l’oral."}, {"id": "B", "text": "... à la compréhension de l’écrit."}, {"id": "C", "text": "... à la production de l’oral."}, {"id": "D", "text": "... à la production de l’écrit."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'تقييم معلومات مستخرجة من نص مقروء (texte lu) يُعد من أعلى مهارات وعمليات فهم المقروء (la compréhension de l’écrit) وفق المنهاج الدراسي ومؤشرات دراسة PIRLS المعتمدة في المنهاج المغربي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q41', 'exam_primary_2024_didactics_fr_oct', 41, 'الغرافيم والفونيمات — « y »', 'Lors d’une activité de lecture, une professeure propose aux élèves d’une classe de la 2ᵉ année de l’enseignement primaire l’exercice suivant : Entoure le mot quand tu vois « y » : pyjama - lit - bureau - stylo - four - voiture - troupeau - syllabe. Parmi les objectifs ci-dessous, quel est celui auquel correspond cet exercice ?', false, '[{"id": "A", "text": "Identifier le phonème [i] dans des mots usuels donnés."}, {"id": "B", "text": "Identifier le graphème « i » dans des mots usuels donnés."}, {"id": "C", "text": "Identifier le graphème « y » dans des mots usuels donnés."}, {"id": "D", "text": "Identifier le phonème [y] dans des mots usuels donnés."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'التعليمة هي: « Entoure le mot quand tu vois « y » »، ففعل الرؤية (vois) يدل على التمييز البصري للرمز الخطي أي الغرافيم « y » (le graphème « y ») في الكلمات المكتوبة (pyjama, stylo, syllabe)، وليس الفونيم (الصوت المسموع)، فضلاً عن أن صوت « y » في هذه الكلمات لا ينطق [y] بل [i] أو [j].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q42', 'exam_primary_2024_didactics_fr_oct', 42, 'فهم المقروء — المعلومات الصريحة', 'Lors de la mise en œuvre d’une activité de lecture dont l’objectif est « Lire un texte narratif », un professeur demande aux élèves d’une classe de la 5ᵉ année de l’enseignement primaire de lire le texte et d’identifier les personnages et les actions qui y sont cités. À quel objectif d’apprentissage la tâche demandée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "Faire des inférences directes."}, {"id": "B", "text": "Prélever des informations explicites."}, {"id": "C", "text": "Interpréter des informations."}, {"id": "D", "text": "Évaluer des éléments textuels."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['B']::text[], 'مادامت الشخصيات والأحداث مذكورة صراحةً في النص (qui y sont cités)، فإن المهمة المطلوبة من المتعلمين هي استخراج معلومات صريحة (Prélever des informations explicites).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q43', 'exam_primary_2024_didactics_fr_oct', 43, 'الغرافيم والفونيمات — [ɛ]', 'Lors de la mise en œuvre d’une activité de lecture, un professeur invite les élèves d’une classe de la 3ᵉ année de l’enseignement primaire à identifier, dans des mots écrits au tableau, les graphèmes qui correspondent au phonème [ɛ]. À quelle proposition la consigne donnée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "... à la discrimination des graphèmes qui correspondent au phonème [ɛ]."}, {"id": "B", "text": "... à la lecture de phrases composées de mots contenant le phonème [ɛ]."}, {"id": "C", "text": "... à la discrimination du phonème [ɛ] dans des mots donnés."}, {"id": "D", "text": "... à la composition de syllabes et de mots contenant le phonème [ɛ]."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['A']::text[], 'دعوة التلاميذ إلى تحديد الغرافيمات (مثل: è, ê, ai, ei, et...) المقابلة للفونيم [ɛ] في كلمات مكتوبة على السبورة يندرج ضمن التمييز البصري للغرافيمات المقابلة للفونيم [ɛ] (la discrimination des graphèmes qui correspondent au phonème [ɛ]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q44', 'exam_primary_2024_didactics_fr_oct', 44, 'صنافة بلوم — الفهم', 'Lors de l’évaluation d’une activité de lecture, une professeure demande aux élèves d’une classe de la 6ᵉ année de l’enseignement primaire de reformuler, dans leur propre langage, l’idée principale du texte. Quelle habileté cette professeure envisage-t-elle d’évaluer ?', false, '[{"id": "A", "text": "La connaissance."}, {"id": "B", "text": "L’application."}, {"id": "C", "text": "L’analyse."}, {"id": "D", "text": "La synthèse."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['E']::text[], 'بحسب صنافة بلوم (La taxonomie de Bloom) للأهداف المعرفية، فإن القدرة على إعادة صياغة الفكرة الرئيسية بأسلوب المتعلم الخاص (reformuler dans son propre langage) تُصنَّف ضمن مهارة الفهم (La compréhension)، وبما أن خيار «La compréhension» غير موجود ضمن الاختيارات الأربعة (حيث ذُكرت المعرفة، التطبيق، التحليل، التركيب)، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, 'الجواب E بالاستبعاد: إعادة الصياغة تصنف ضمن مهارة الفهم (بلوم)، وهي غير واردة في الاختيارات A–D؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q45', 'exam_primary_2024_didactics_fr_oct', 45, 'استراتيجيات التعلم — الإنتاج الكتابي', 'Laquelle des stratégies, ci-dessous, est appropriée à la production de l’écrit ?', false, '[{"id": "A", "text": "Formuler des hypothèses sur le sens du texte."}, {"id": "B", "text": "Entrer dans le texte en utilisant le paratexte."}, {"id": "C", "text": "Anticiper l’organisation du texte à produire."}, {"id": "D", "text": "Recourir à des éléments prosodiques pour appuyer ses propos."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['C']::text[], 'توقع وتخطيط بنية النص المراد إنتاجه (Anticiper l’organisation du texte à produire) هي استراتيجية خاصة بـ الإنتاج الكتابي (la production de l’écrit) في مرحلة ما قبل الكتابة. بينما الاختياران A وB يخصان فهم المقروء، والاختيار D يخص الإنتاج الشفهي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q46', 'exam_primary_2024_didactics_fr_oct', 46, 'أنواع النصوص — النص التوجيهي', 'Voici une situation relative à une activité de production écrite destinée à des élèves de la 5ᵉ année de l’enseignement primaire : « En te promenant sur la plage en compagnie de tes amies/amis, tu as constaté que des enfants jetaient des déchets dans la mer. Écris, pour le journal de ton école, un texte où tu recommandes à tes camarades de protéger les mers et les océans. » Quel est le type du texte visé par cette activité de production écrite ?', false, '[{"id": "A", "text": "Explicatif."}, {"id": "B", "text": "Descriptif."}, {"id": "C", "text": "Argumentatif."}, {"id": "D", "text": "Narratif."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['E']::text[], 'المطلوب في الوضعية هو كتابة نص يقدّم فيه التلميذ توصيات/نصائح وإرشادات (tu recommandes) لزملائه لحماية البحار والمحيطات. وبحسب برنامج السنة الخامسة ابتدائي (الوحدة 5: Le monde des océans et de l’espace)، فإن النص المطلوب هو النص التوجيهي/الإرشادي (Texte à caractère injonctif). وبما أن «Injonctif» غير وارد في الاختيارات A وB وC وD، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, 'الجواب E بالاستبعاد: النص المطلوب توجيهي/إرشادي (injonctif) وهو غير وارد في الاختيارات A–D؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q47', 'exam_primary_2024_didactics_fr_oct', 47, 'القدرات — الإنتاج الكتابي', 'Laquelle des capacités, ci-dessous, est appropriée à la production de l’écrit ?', false, '[{"id": "A", "text": "S’approprier le système accentuel, rythmique et intonatif de la langue."}, {"id": "B", "text": "Associer le verbal et le non verbal."}, {"id": "C", "text": "Prélever des informations implicites dans un texte lu."}, {"id": "D", "text": "Réagir à une sollicitation verbale."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['E']::text[], 'بمراجعة جدول القدرات في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، لا توجد أي قدرة من القدرات المقترحة تنتمي إلى الإنتاج الكتابي: • A وD: تنتميان إلى فهم الشفهي (Compréhension de l’oral). • B: تنتمي إلى الإنتاج الشفهي (Production de l’oral). • C: تنتمي إلى فهم المقروء (Compréhension de l’écrit). وعليه فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, 'الجواب E بالاستبعاد: لا قدرة من المقترحات تنتمي إلى الإنتاج الكتابي؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q48', 'exam_primary_2024_didactics_fr_oct', 48, 'المنهجية — الكتابة/النقل', 'Lors de la mise en œuvre d’une activité de copie, un professeur invite les élèves d’une classe de la 2ᵉ année de l’enseignement primaire à s’entraîner à recopier la phrase proposée pour cette activité. Quelle est l’étape méthodologique qui succède à la réalisation de la tâche demandée aux élèves ?', false, '[{"id": "A", "text": "Soutien et remédiation."}, {"id": "B", "text": "Observation/Découverte."}, {"id": "C", "text": "Évaluation/Correction."}, {"id": "D", "text": "Production/Réalisation."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['D']::text[], 'المراحل المنهجية لنشاط الكتابة/النقل (Écriture / Copie) في السنة الثانية ابتدائي تسير وفق الترتيب التالي: 1. الملاحظة والاكتشاف (Observation / Découverte) 2. التدرب (Entraînement): وهي المرحلة الموصوفة في السؤال (s’entraîner à recopier la phrase على الألواح أو الدفاتر). 3. الإنتاج والإنجاز (Production / Réalisation): وهي المرحلة التي تلي التدرب مباشرة، حيث يقوم المتعلم بنقل الجملة على دفتر القسم أو كراسة المتعلم. 4. التقويم والتصحيح (Évaluation / Correction).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q49', 'exam_primary_2024_didactics_fr_oct', 49, 'المنهجية — الإنتاج الكتابي', 'Lors de la mise en œuvre d’une activité de production écrite, une professeure demande aux élèves d’une classe de la 4ᵉ année de l’enseignement primaire de rédiger le premier jet. Quelle est l’étape méthodologique qui précède la réalisation de la tâche demandée à ces élèves ?', false, '[{"id": "A", "text": "La relecture du premier jet."}, {"id": "B", "text": "L’écriture du deuxième jet."}, {"id": "C", "text": "La correction du deuxième jet."}, {"id": "D", "text": "La découverte de la situation d’écriture."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['D']::text[], 'في المسار المنهجي لأنشطة الإنتاج الكتابي، تسبق مرحلة اكتشاف وضعية الكتابة (La découverte de la situation d’écriture) وفهم التعليمة مرحلةَ تحرير المسودة الأولى (rédiger le premier jet). أما الاختيارات A (إعادة قراءة المسودة الأولى) فتلي كتابة المسودة الأولى ولا تسبقها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة أكتوبر 2024) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_didactics_fr_oct_q50', 'exam_primary_2024_didactics_fr_oct', 50, 'الدعم والمعالجة — النص الوصفي', 'Une professeure procédera à la correction des textes, écrits par des élèves de la 6ᵉ année de l’enseignement primaire, lors d’une activité de production écrite. La situation d’écriture proposée pour cette activité s’articule autour de la description d’un lieu artistique. Lors de la réalisation de cette tâche de correction, la professeure constate que des élèves ont écrit des textes à visée informative sur des lieux qui ne sont pas artistiques. Quel choix cette professeure adopterait-elle pour planifier des activités de soutien et de remédiation appropriées aux difficultés identifiées ?', false, '[{"id": "A", "text": "La compréhension des consignes - La lecture de textes et l’identification de leur typologie - L’identification des caractéristiques du texte descriptif - L’emploi du lexique et des moyens linguistiques servant à décrire un lieu artistique."}, {"id": "B", "text": "La construction de phrases simples et/ou de textes courts - La mise en ordre des parties d’un texte données en désordre - La reconstitution de textes à l’aide d’éléments donnés - L’emploi des conjonctions de coordination."}, {"id": "C", "text": "L’identification des caractéristiques d’un texte informatif - L’application des règles de grammaire et d’orthographe étudiées - L’écriture, sous dictée, de phrases et/ou la copie de textes courts - L’emploi des connecteurs logiques."}, {"id": "D", "text": "La conjugaison des verbes usuels des trois groupes au futur simple et au passé composé - La reconstitution de phrases à l’aide d’éléments donnés - L’écriture, sous dictée, de textes courts - L’emploi des connecteurs chronologiques."}, {"id": "E", "text": "Aucun des choix précédents n’est correct."}]'::jsonb, ARRAY['A']::text[], 'الصعوبات المرصودة لدى المتعلمين ثلاث وهي: 1. عدم احترام المطلوب والخروج عن الموضوع (كتبوا عن أماكن غير فنية) ← يعالج عبر فهم التعليمات (La compréhension des consignes). 2. الخلط بين أنواع النصوص (كتبوا نصاً إخبارياً بدل النص الوصفي) ← يعالج عبر قراءة النصوص وتحديد أنماطها وتعرّف خصائص النص الوصفي. 3. غياب وصف المكان الفني ← يعالج عبر توظيف المعجم والوسائل اللغوية لوصف مكان فني. والاختيار A هو الوحيد الذي يستهدف هذه التعثرات بدقة وملاءمة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1TDelyzHMRAbeMwEi2OqYOXtgmPd9o5ro', true, NULL)
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
