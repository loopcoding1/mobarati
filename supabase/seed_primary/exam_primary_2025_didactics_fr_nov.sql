-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك اللغة الفرنسية - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 37؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك اللغة الفرنسية - دورة نونبر 2025.pdf (13 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q26 إلى Q50 وخياراته الخمسة (A-E) مطابقة لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل المنهاج الدراسي ومفاهيم الديداكتيك؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التحليلية/المنهجية (Q32، Q35، Q38، Q44، Q45، Q48، Q49) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[12].
--
-- ملاحظات عن ملف الامتحان:
--   * صفحة الغلاف موجودة في الملف: المدة 45 دقيقة والمعامل 3 (مقروءان مباشرة من الغلاف).
--     جدول exams لا يحوي عمود معامل؛ المعامل مسجل في ملف progress المرافق فقط.
--   * تعليمات الغلاف: 25 سؤالاً (من Q26 إلى Q50)، جواب صحيح واحد فقط لكل سؤال.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات و✓) — أُهملت تماماً.
--   * سؤال Q49 مقطوع قليلاً عند الحافة اليمنى للمسح («classe de la ... année»)؛
--     نص ملف الحل («6e année») مقبول لأنه متسق مع نمط الأسئلة وسياقها.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_didactics_fr_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_fr_nov', 'specialty_primary', 2025, 'didactics_fr', 'ديداكتيك اللغة الفرنسية', 'امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025)', 'دورة نونبر 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q26', 'exam_primary_2025_didactics_fr_nov', 26, 'النقل الديداكتيكي', 'Lequel de ces choix permet de distinguer la transposition didactique externe de la transposition didactique interne ?', false, '[{"id": "A", "text": "La transposition didactique externe concerne l''adaptation du savoir par les élèves ; la transposition didactique interne concerne les manuels scolaires."}, {"id": "B", "text": "La transposition didactique externe transforme le savoir savant en savoir à enseigner ; la transposition didactique interne adapte ce savoir à la situation de la classe."}, {"id": "C", "text": "La transposition didactique externe concerne uniquement les évaluations ; la transposition didactique interne concerne l''élaboration des dispositifs de remédiation."}, {"id": "D", "text": "La transposition didactique externe relève de la responsabilité des enseignants ; la transposition didactique interne concerne la sélection des savoirs à enseigner par les autorités éducatives."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'حسب مفهوم النقل الديداكتيكي (Yves Chevallard)، يقوم النقل الديداكتيكي الخارجي بتحويل المعرفة العالمة (Savoir savant) إلى معرفة قابلة للتدريس/معرفة مقررة (Savoir à enseigner) عبر المناهج والبرامج والكتب المدرسية، بينما يقوم النقل الديداكتيكي الداخلي (الذي ينجزه الأستاذ) بتكييف هذه المعرفة المقررة وتحويلها إلى معرفة مُدرَّسة (Savoir enseigné) تناسب وضعية القسم ومستوى المتعلمين.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q27', 'exam_primary_2025_didactics_fr_nov', 27, 'المثلث الديداكتيكي', 'Lequel de ces choix illustre les relations entre les pôles du triangle didactique ?', false, '[{"id": "A", "text": "L''élève construit seul un savoir, objet d''apprentissage, sans interaction ni avec l''enseignant, ni avec les autres élèves."}, {"id": "B", "text": "L''enseignant amène les élèves à construire un nouveau savoir, puis les accompagne dans la réalisation des activités d''application."}, {"id": "C", "text": "Les élèves travaillent à partir d''un manuel scolaire, sans interaction avec l''enseignant, afin de découvrir la notion à leur rythme."}, {"id": "D", "text": "L''enseignant corrige les productions des élèves pendant que ceux-ci réalisent, en autonomie, de nouvelles activités, sans interaction avec lui."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'يتكون المثلث الديداكتيكي (Jean Houssaye) من ثلاثة أقطاب متفاعلة: الأستاذ – المتعلم – المعرفة. في الاختيارات (A و C و D) يتم تغييب التفاعل مع الأستاذ (sans interaction avec l''enseignant)، مما يُقصي أحد الأقطاب والعلاقات الأساسية. أما الاختيار B فيجسد التفاعل المتكامل بين الأقطاب الثلاثة (الأستاذ يوجه ويدعم المتعلمين لبناء المعرفة الجديدة ثم يواكبهم في أنشطة التطبيق).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q28', 'exam_primary_2025_didactics_fr_nov', 28, 'وضعية المعرفة', 'Lequel de ces choix présente l''un des aspects du statut du savoir dans une situation didactique ?', false, '[{"id": "A", "text": "Un contenu à mémoriser impérativement par l''élève à travers la répétition"}, {"id": "B", "text": "Une vérité absolue à imposer par l''enseignant sans interaction avec l''élève"}, {"id": "C", "text": "Un objet à construire par l''élève dans un contexte d''action et d''interaction"}, {"id": "D", "text": "Un ensemble de connaissances à transmettre exclusivement par l''enseignant"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'في الديداكتيك الحديث (المقاربة بالكفايات والبنائية السوسيوبنائية ونظرية الوضعيات الديداكتيكية)، لم تعد المعرفة حقيقة مطلقة تُلقَّن أو تُحفظ آلياً (كما في A و B و D)، بل هي موضوع يبنيه المتعلم بنفسه في سياق من الفعل والتفاعل (سواء مع الوضعية أو مع الأستاذ أو مع الأقران).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q29', 'exam_primary_2025_didactics_fr_nov', 29, 'الشفهي — التعبير التلقائي', 'Quel est le choix qui constitue l''un des traits fondamentaux de l''oral spontané par rapport à l''écrit ?', false, '[{"id": "A", "text": "L''organisation rigoureuse des signes graphiques"}, {"id": "B", "text": "L''utilisation d''une syntaxe rigide et normative"}, {"id": "C", "text": "La fréquence des signaux de régulation, verbaux et non verbaux"}, {"id": "D", "text": "L''absence de répétitions, d''amorces et de reprises"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'يتميز التعبير الشفهي التلقائي (l''oral spontané) مقارنة بالمكتوب بمرونة في التركيب النحوي، وبكثرة التكرارات والتوقفات والتصحيحات الذاتية (مما ينفي A و B و D)، وبشكل أساسي بكثرة إشارات الضبط والتنظيم التواصلية اللفظية وغير اللفظية (مثل الإيماءات، تعابير الوجه، نبرة الصوت، كلمات الموافقة والتنبيه مثل: oui, d''accord, hein, tu vois...).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q30', 'exam_primary_2025_didactics_fr_nov', 30, 'الشفهي — استراتيجيات الاستقبال', 'Laquelle de ces stratégies d''apprentissage est appropriée à la réception de l''oral ?', false, '[{"id": "A", "text": "Recourir à des éléments prosodiques pour appuyer ses propos."}, {"id": "B", "text": "Reformuler, expliquer en cas d''incompréhension."}, {"id": "C", "text": "Prendre des risques de formulation."}, {"id": "D", "text": "Repérer les sons, distinguer les mots."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'استناداً إلى المنهاج الدراسي للتعليم الابتدائي (2021)، تندرج الاختيارات (A و B و C) ضمن استراتيجيات إنتاج الشفهي (Production de l''oral)، في حين أن رصد الأصوات والتمييز بين الكلمات (Repérer les sons, distinguer les mots) يعد استراتيجية خاصة بـ استقبال/فهم الشفهي (Réception de l''oral).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q31', 'exam_primary_2025_didactics_fr_nov', 31, 'الشفهي — الفعل الكلامي', 'Lors de l''évaluation des prérequis relatifs à l''oral, une professeure demande aux élèves d''une classe de la 6e année de l''enseignement primaire d''identifier l''acte de langage réalisé dans la situation suivante :
Le maître-nageur dit aux baigneurs : « Faites attention, la mer devient de plus en plus agitée. »
Parmi ces réponses présentées par des élèves, laquelle convient à la consigne de la professeure ?', false, '[{"id": "A", "text": "Avertir"}, {"id": "B", "text": "Interdire"}, {"id": "C", "text": "Souhaiter"}, {"id": "D", "text": "Apprécier"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'عبارة « Faites attention, la mer devient de plus en plus agitée » (انتبهوا، البحر يصبح هائجاً أكثر فأكثر) تعبّر عن تنبيه وتحذير من خطر محدق، وبالتالي فإن الفعل الكلامي (acte de langage) المقصود هو التحذير (Avertir)، وليس المنع أو التمني أو التقدير/الاستحسان.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q32', 'exam_primary_2025_didactics_fr_nov', 32, 'الشفهي — الوسائل اللغوية', 'Lors d''une séance dédiée à l''évaluation et au soutien des apprentissages relatifs à l''oral, un professeur demande aux élèves d''identifier les moyens linguistiques servant à réaliser l''acte de langage « Apprécier ».
Dans quel choix les moyens linguistiques indiqués sont tous appropriés à la réalisation de cet acte de langage ?', false, '[{"id": "A", "text": "Il vaut mieux ... - Il importe de ... - Il serait opportun de ... - ... est impeccable !"}, {"id": "B", "text": "... est décevant ! - Il serait souhaitable de ... - Il est interdit de ... - Il faut ..."}, {"id": "C", "text": "Il est défendu de ... - ... est pertinente ! - Il est conseillé de ... - ... sont formidables !"}, {"id": "D", "text": "Il importe de ... - ... est génial ! - Il serait bénéfique de ... - ... est impressionnant !"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['E']::text[], 'يشترط السؤال أن تكون جميع التعابير اللغوية في الاختيار صالحة لتحقيق الفعل الكلامي « Apprécier » (التقدير/الاستحسان أو الاستهجان). وبفحص الاختيارات نجد أن أياً منها لا يقتصر على هذا الفعل الكلامي:

في A: التعابير (Il vaut mieux, Il importe de, Il serait opportun de) تُستعمل للنصح والتوصية (Conseiller / Recommander).

في B: يتضمن المنع (Il est interdit de) والإلزام (Il faut).

في C: يتضمن المنع (Il est défendu de) والنصح (Il est conseillé de).

في D: يتضمن النصح والتوصية (Il importe de, Il serait bénéfique de).
وبالتالي فإن الجواب الصحيح هو E (Aucun des choix précédents n''est correct).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'لا يوجد اختيار تقتصر تعابيره كلها على فعل التقدير (Apprécier)؛ كل اختيار يخلط أفعالاً كلامية أخرى؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q33', 'exam_primary_2025_didactics_fr_nov', 33, 'الشفهي — الأمر', 'Lors d''une activité orale, un professeur demande aux élèves de produire des phrases pour exprimer un ordre.
Parmi ces phrases produites par des élèves, laquelle convient à la consigne du professeur ?', false, '[{"id": "A", "text": "Il est défendu de stationner sur les trottoirs."}, {"id": "B", "text": "Quittez immédiatement cet endroit."}, {"id": "C", "text": "Nous aimerions partir en voyage le mois prochain."}, {"id": "D", "text": "Il est conseillé de protéger les mers et les océans."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'الجملة A تعبر عن المنع (interdiction).

الجملة B (Quittez immédiatement cet endroit.) مصاغة بصيغة الأمر (l''impératif) وتعبر بوضوح عن الأمر (un ordre).

الجملة C تعبر عن التمني (un souhait).

الجملة D تعبر عن النصح (un conseil).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q34', 'exam_primary_2025_didactics_fr_nov', 34, 'الشفهي — استقبال الشفهي', 'À quel sous-domaine d''apprentissage la capacité suivante correspond-elle ?
« Traiter des informations entendues pour en saisir le sens. »', false, '[{"id": "A", "text": "La production de l''écrit"}, {"id": "B", "text": "La production de l''oral"}, {"id": "C", "text": "La compréhension de l''écrit"}, {"id": "D", "text": "La réception de l''oral"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'تشير عبارة « informations entendues » (معلومات مسموعة) و« pour en saisir le sens » (لإدراك معناها) بشكل مباشر إلى المجال الفرعي استقبال/فهم الشفهي (La réception de l''oral).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q35', 'exam_primary_2025_didactics_fr_nov', 35, 'الشفهي — مراحل النشاط الشفهي', 'Lors de la mise en œuvre d''une activité orale pour une classe de la 4e année de l''enseignement primaire, une professeure propose des situations de communication illustrées par des images, et demande aux élèves de réemployer les moyens linguistiques identifiés, pour réaliser l''acte de langage « Interdire ».
Quelle est l''étape méthodologique qui succède à la tâche demandée aux élèves ?', false, '[{"id": "A", "text": "Découverte"}, {"id": "B", "text": "Compréhension"}, {"id": "C", "text": "Production"}, {"id": "D", "text": "Évaluation"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'تتسلسل المراحل المنهجية للأنشطة الشفهية (Activités orales) في السنة الرابعة ابتدائي كالتالي:

الملاحظة والاكتشاف (Découverte).

الفهم (Compréhension).

الإنتاج/إعادة الاستثمار (Production)، وفيها يقترح الأستاذ وضعيات تواصلية مصورة ويطلب من المتعلمين إعادة توظيف الأساليب اللغوية المكتسبة لتحقيق الفعل الكلامي (وهي المهمة الموصوفة في السؤال)[1][2].

التقويم (Évaluation)[3].
وبما أن السؤال يطلب المرحلة التي تلي (qui succède à) هذه المهمة، فالجواب الصحيح هو Évaluation (D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'المرحلة التالية (التقويم) حسب تدرج الأنشطة الشفهية في المنهاج الدراسي؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q36', 'exam_primary_2025_didactics_fr_nov', 36, 'القراءة — الصوتيات', 'Lors de l''étape de la lecture oralisée, un professeur constate que des élèves d''une classe de la 5e année de l''enseignement primaire ne parviennent pas à prononcer correctement les mots contenant les graphèmes qui correspondent au phonème [ɔ̃].
Lequel de ces choix convient au traitement immédiat de cette difficulté ?', false, '[{"id": "A", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ɔ̃] ; lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ɔ̃] ; prononcer ce phonème isolé, après chaque mot lu, en faisant remarquer que les lèvres sont fermées, la langue est en arrière ; lire et faire lire plusieurs fois ces mots."}, {"id": "B", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ɔ̃] ; lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ɔ̃] ; prononcer ce phonème isolé, après chaque mot lu, en faisant remarquer que les lèvres sont un peu arrondies, la langue est en avant ; lire et faire lire plusieurs fois ces mots."}, {"id": "C", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ɔ̃] ; lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ɔ̃] ; prononcer ce phonème isolé, après chaque mot lu, en faisant remarquer que les lèvres sont écartées, la langue est en avant ; lire et faire lire plusieurs fois ces mots."}, {"id": "D", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ɔ̃] ; lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ɔ̃] ; prononcer ce phonème isolé, après chaque mot lu, en faisant remarquer que les lèvres sont arrondies et mi-ouvertes, la langue est en arrière ; lire et faire lire plusieurs fois ces mots."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'من حيث الصوتيات النطقية (phonétique articulatoire)، يتميز الصائت الأنفي [ɔ̃] (كما في bon, maison, tomber) بالخصائص النطقية التالية: هو صائت خلفي (postérieure، أي اللسان في الخلف: la langue est en arrière)، مستدير الشفتين (arrondie)، ونصف مفتوح (mi-ouverte: les lèvres sont arrondies et mi-ouvertes). وهذا ما يطابق بدقة الوصف الوارد في الاختيار D (بينما A و B و C تحتوي على أوصاف نطقية خاطئة للصوت [ɔ̃]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q37', 'exam_primary_2025_didactics_fr_nov', 37, 'القراءة — فهم المكتوب', 'Laquelle de ces stratégies d''apprentissage est appropriée à la compréhension de l''écrit ?', false, '[{"id": "A", "text": "Décoder, en contexte, les mots nouveaux rencontrés dans un texte lu."}, {"id": "B", "text": "Distinguer les voix pour identifier les personnages."}, {"id": "C", "text": "Vérifier si ce qui est écrit correspond bien à ce qui est demandé."}, {"id": "D", "text": "Rédiger un premier jet à partir d''idées formulées mentalement."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'A (Décoder, en contexte, les mots nouveaux rencontrés dans un texte lu) هي استراتيجية خاصة بـ فهم المقروء (Compréhension de l''écrit).

B تتعلق باستقبال الشفهي (التمييز بين الأصوات المسموعة في حوار).

C و D تتعلقان بإنتاج المكتوب (التحقق من المطابقة للمطلوب وتحرير المسودة الأولى).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q38', 'exam_primary_2025_didactics_fr_nov', 38, 'الوعي الصوتي', 'Lors d''une séance dédiée à l''évaluation et au soutien en lecture pour une classe de la 3e année de l''enseignement primaire, une professeure dit respectivement des mots et demande aux élèves d''ajouter un phonème, à chaque mot entendu, pour former un autre mot.
À quel choix la consigne donnée aux élèves renvoie-t-elle ?', false, '[{"id": "A", "text": "La fusion"}, {"id": "B", "text": "La segmentation"}, {"id": "C", "text": "La substitution"}, {"id": "D", "text": "La catégorisation"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['E']::text[], 'في مهارات الوعي الصوتي (la conscience phonologique)، تُسمى عملية إضافة صامت/فونيم إلى كلمة مسموعة لتكوين كلمة جديدة بـ الإضافة (L''addition / L''ajout)[4][5]. أما الاختيارات المقترحة فتعني مهاماً أخرى مختلفة:

La fusion (الدمج): جمع فونيمات أو مقاطع معزولة لتكوين كلمة[6].

La segmentation (التقطيع): تفكيك الكلمة إلى مقاطع أو فونيمات[7].

La substitution (التعويض): استبدال فونيم بآخر داخل كلمة[4].

La catégorisation (التصنيف): تجميع الكلمات التي تشترك في نفس الصوت أو عزل الكلمة الدخيلة.
وبما أن مهارة « L''addition / L''ajout » غير مدرجة ضمن A, B, C, D، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'مهارة الإضافة (L''addition / L''ajout) غير مدرجة ضمن الاختيارات؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q39', 'exam_primary_2025_didactics_fr_nov', 39, 'القراءة — التفاعل مع النص', 'Lors d''une activité de lecture, une professeure demande aux élèves d''une classe de la 6e année de l''enseignement primaire de porter un jugement sur des informations contenues dans le texte.
À quel choix la tâche demandée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "L''organisation des informations"}, {"id": "B", "text": "La gestion de la lecture"}, {"id": "C", "text": "La planification de la lecture"}, {"id": "D", "text": "La réaction au texte"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'إبداء حكم أو رأي شخصي/نقدي حول المعلومات الواردة في النص (porter un jugement sur des informations contenues dans le texte) يندرج ضمن عملية التفاعل مع النص (La réaction au texte)، وهي من العمليات العليا لفهم المقروء (مرحلة ما بعد القراءة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q40', 'exam_primary_2025_didactics_fr_nov', 40, 'القراءة — فهم المكتوب', 'De quel sous-domaine d''apprentissage la capacité suivante relève-t-elle ?
« Interpréter des idées et des informations contenues dans un texte lu. »', false, '[{"id": "A", "text": "La compréhension de l''écrit"}, {"id": "B", "text": "La production de l''écrit"}, {"id": "C", "text": "La production de l''oral"}, {"id": "D", "text": "La réception de l''oral"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'تأويل الأفكار والمعلومات الواردة في نص مقروء (contenues dans un texte lu) يندرج بوضوح ضمن المجال الفرعي فهم المكتوب / المقروء (La compréhension de l''écrit).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q41', 'exam_primary_2025_didactics_fr_nov', 41, 'القراءة — المبدأ الألفبائي', 'Lors d''une activité de lecture, une professeure écrit au tableau des mots usuels et demande aux élèves d''une classe de la 1re année de l''enseignement primaire d''identifier, dans ces mots, le graphème qui correspond au son [p].
À quel choix la consigne donnée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "La conscience phonologique"}, {"id": "B", "text": "Le principe alphabétique"}, {"id": "C", "text": "La fluidité"}, {"id": "D", "text": "La compréhension"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'ينبغي التمييز بدقة بين الوعي الصوتي والمبدأ الألفبائي في مكونات القراءة المقطعية:

الوعي الصوتي (La conscience phonologique): يشتغل على الأصوات شفهياً فقط دون ربطها بالرسم الخطي (الحروف).

المبدأ الألفبائي (Le principe alphabétique): يرتكز على الربط بين الصوت (le son / phonème) والحرف/الرسم الخطي المقابل له (le graphème)[8].
وبما أن الأستاذة كتبت كلمات على السبورة وطلبت تحديد الحرف (le graphème) المقابل للصوت [p]، فالأمر يتعلق بـ المبدأ الألفبائي (B).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q42', 'exam_primary_2025_didactics_fr_nov', 42, 'القراءة — الفهم القرائي', 'Lors d''une activité de lecture, un professeur demande aux élèves d''une classe de la 5e année de l''enseignement primaire de lire silencieusement un texte narratif et d''y relever les lieux qui indiquent où se déroulent les actions effectuées par le personnage principal.
À quel choix la tâche demandée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "Interpréter des informations."}, {"id": "B", "text": "Faire des déductions simples."}, {"id": "C", "text": "Évaluer le contenu et les éléments textuels."}, {"id": "D", "text": "Identifier des informations explicites."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'استخراج الأماكن التي تدور فيها أحداث القصة مباشرة من النص السردي (relever les lieux) يندرج ضمن المستوى الأول من مستويات الفهم القرائي (وفق تصنيف PIRLS المعتمد في المنهاج المغربي)، وهو استخراج/تحديد معلومات صريحة (Identifier des informations explicites).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q43', 'exam_primary_2025_didactics_fr_nov', 43, 'القراءة — الغرافيم', 'Lors de la mise en œuvre d''une activité de lecture destinée à une classe de la 3e année de l''enseignement primaire, un professeur affiche au tableau des étiquettes portant des mots usuels et demande aux élèves d''entourer, dans ces mots, le graphème qui correspond au son [ɲ].
Lequel de ces objectifs d''apprentissage correspond à la consigne donnée par le professeur ?', false, '[{"id": "A", "text": "Identifier le graphème « g » et le graphème « n » dans des mots usuels donnés."}, {"id": "B", "text": "Identifier le phonème [n] dans des mots usuels donnés."}, {"id": "C", "text": "Identifier le graphème « gn » dans des mots usuels donnés."}, {"id": "D", "text": "Identifier le graphème « g » dans des mots usuels donnés."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'الرمز الصوتي [ɲ] يمثل الصوت الذي يُنطق في كلمات مثل (montagne, agneau, ligne)، ويقابله في الكتابة الفرنسية غرافييم مركّب واحد (digramme) هو « gn »، وليس غرافييمين منفصلين (مما يبطل A). لذا فإن الهدف التعلمي المطابق للتعليمة هو C.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q44', 'exam_primary_2025_didactics_fr_nov', 44, 'القراءة — مهارات بلوم', 'Lors d''une activité de lecture destinée à une classe de la 5e année de l''enseignement primaire, une professeure demande aux élèves d''identifier, à partir du texte, ce qui justifie une action effectuée par un personnage donné.
Laquelle de ces habiletés convient à la réalisation de la tâche demandée ?', false, '[{"id": "A", "text": "L''application"}, {"id": "B", "text": "L''évaluation"}, {"id": "C", "text": "L''analyse"}, {"id": "D", "text": "La synthèse"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'وفق صنافة بلوم (Taxonomie de Bloom)، فإن البحث داخل النص عن الأسباب والدوافع والعلاقات السببية التي تفسّر أو تبرّر سلوكاً أو فعلاً قامت به شخصية معينة (identifier, à partir du texte, ce qui justifie une action...) يتطلب تفكيك النص والربط بين عناصره، وهي مهارة التحليل (L''analyse). (أما التقويم L''évaluation فيتعلق بإصدار المتعلم حكماً نقدياً شخصياً على الفعل أو النص وفق معايير، وليس استخراج مبرر الفعل من النص).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'التمييز بين التحليل والتقويم حسب صنافة بلوم؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q45', 'exam_primary_2025_didactics_fr_nov', 45, 'الكتابة — استراتيجيات الإنتاج', 'Laquelle de ces stratégies relève de la production de l''écrit ?', false, '[{"id": "A", "text": "Utiliser le contexte pour donner du sens à un mot nouveau."}, {"id": "B", "text": "Interpréter le sens des marqueurs de relation explicites."}, {"id": "C", "text": "Recourir aux indices textuels et paratextuels pour construire du sens."}, {"id": "D", "text": "Émettre des hypothèses sur le sens du texte et les vérifier."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['E']::text[], 'عند تفحص الاستراتيجيات الأربع (A و B و C و D) يتضح أنها كلها تنتمي إلى استراتيجيات فهم المكتوب/المقروء (Compréhension de l''écrit) (استعمال السياق لفهم كلمة جديدة، تأويل الروابط، استثمار المؤشرات النصية والموازية لبناء المعنى، وصياغة فرضيات المعنى والتحقق منها)، ولا تنتمي أي واحدة منها إلى إنتاج المكتوب (Production de l''écrit). وعليه فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'الاستراتيجيات الأربع كلها من فهم المكتوب، لا من إنتاج المكتوب؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q46', 'exam_primary_2025_didactics_fr_nov', 46, 'الكتابة — أهداف الإنتاج الكتابي', 'Voici une situation proposée, lors d''une activité de production écrite, à des élèves de la 5e année de l''enseignement primaire :
« En lisant des textes, tu te rends compte que les mers sont de plus en plus menacées par la pollution.
Écris, pour le journal de ton école, un texte de cinq lignes au moins où tu encourages les lecteurs à agir pour protéger les mers. »
Lequel de ces objectifs est approprié à cette situation ?', false, '[{"id": "A", "text": "Produire, en cinq lignes au moins, un texte à visée descriptive se rapportant à la protection des mers."}, {"id": "B", "text": "Produire, en cinq lignes au moins, un texte à visée narrative se rapportant à la protection des mers."}, {"id": "C", "text": "Produire, en cinq lignes au moins, un texte à visée injonctive se rapportant à la protection des mers."}, {"id": "D", "text": "Produire, en cinq lignes au moins, un texte à visée informative se rapportant à la protection des mers."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'تتضمن التعليمة عبارة « où tu encourages les lecteurs à agir pour protéger les mers » (حث وتشجيع القراء على التصرف والقيام بأفعال لحماية البحار)، أي تقديم توجيهات ونصائح وتوصيات تحث على الفعل، وهو ما يطابق تماماً النص التوجيهي/الإيعازي (texte à visée injonctive).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q47', 'exam_primary_2025_didactics_fr_nov', 47, 'الكتابة — قدرات الإنتاج', 'Laquelle de ces capacités correspond à la production de l''écrit ?', false, '[{"id": "A", "text": "Mémoriser des énoncés et des textes pour développer sa mémoire auditive."}, {"id": "B", "text": "Écrire correctement, sous dictée, des phrases simples et des textes courts."}, {"id": "C", "text": "Dire de mémoire des comptines, des chansons, des poèmes et des contes."}, {"id": "D", "text": "Prélever des informations explicitement énoncées dans un texte écouté ou lu."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'في المنهاج المغربي للغة الفرنسية، يشمل مجال الأنشطة الكتابية وإنتاج المكتوب (Production de l''écrit) الكتابة والنقل والإملاء والإنشاء، وتُعد قدرة كتابة جمل بسيطة ونصوص قصيرة بشكل صحيح عن طريق الإملاء (Écrire correctement, sous dictée...) من قدرات إنتاج المكتوب. أما A و C فتتعلقان بالشفهي/المحفوظات، و D تتعلق باستقبال الشفهي أو فهم المقروء.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q48', 'exam_primary_2025_didactics_fr_nov', 48, 'الكتابة — مراحل حصة الكتابة', 'Lors d''une séance consacrée à l''écriture, un professeur amène les élèves d''une classe de la 1re année de l''enseignement primaire à s''entraîner à écrire en minuscule cursive le graphème « n » en suivant le modèle proposé à cet effet.
Quelle est l''étape méthodologique qui succède à la réalisation de cette tâche ?', false, '[{"id": "A", "text": "Évaluation/Correction"}, {"id": "B", "text": "Observation/Découverte"}, {"id": "C", "text": "Soutien/Consolidation"}, {"id": "D", "text": "Production/Réalisation"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'تتبع حصة الخط/الكتابة (Écriture) في السنة الأولى ابتدائي التدرج المنهجي التالي[9][10]:

الملاحظة والاكتشاف (Observation/Découverte).

التدريب (Entraînement): وفيها يتدرب المتعلمون على كتابة الحرف باتباع النموذج (في الهواء، على الألواح، أو على النقط المتقطعة) وهي المهمة الموصوفة في السؤال.

الإنتاج/الإنجاز (Production/Réalisation): إنجاز الكتابة الفردية على كراسة المتعلم أو الدفتر (فقرة Je produis / J''écris)[10].

التقويم والتصحيح (Évaluation/Correction).
إذن، المرحلة التي تلي (qui succède à) التدريب هي Production/Réalisation (D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'المرحلة التالية (الإنتاج/الإنجاز) حسب تدرج حصة الكتابة في السنة الأولى؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q49', 'exam_primary_2025_didactics_fr_nov', 49, 'الكتابة — مراحل التعبير الكتابي', 'Lors d''une activité de production écrite, un professeur demande aux élèves d''une classe de la 6e année de l''enseignement primaire d''écrire le deuxième jet du texte demandé.
Quelle est l''étape méthodologique qui précède la réalisation de la tâche d''écriture demandée par ce professeur ?', false, '[{"id": "A", "text": "La phase préparatoire orale"}, {"id": "B", "text": "La correction du premier jet"}, {"id": "C", "text": "La correction du deuxième jet"}, {"id": "D", "text": "L''écriture du premier jet"}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'تتدرج مراحل درس التعبير الكتابي (Production de l''écrit) في السنة السادسة ابتدائي كالتالي[11][12]:

الملاحظة والاكتشاف / التهيئة الشفهية (La phase préparatoire).

كتابة المسودة الأولى (L''écriture du premier jet).

تصحيح المسودة الأولى وتقويمها بالاعتماد على شبكة التصحيح (La correction du premier jet).

كتابة المسودة الثانية / التحسين (L''écriture du deuxième jet).

تصحيح المسودة الثانية (La correction du deuxième jet).
وبما أن السؤال يطلب المرحلة التي تسبق (qui précède) كتابة المسودة الثانية، فالجواب الصحيح هو La correction du premier jet (B).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, 'المرحلة السابقة (تصحيح المسودة الأولى) حسب تدرج التعبير الكتابي في السنة السادسة؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_nov_q50', 'exam_primary_2025_didactics_fr_nov', 50, 'الكتابة — معالجة صعوبات الانسجام', 'Lors de la correction des productions écrites, une professeure constate que des élèves d''une classe de la 5e année de l''enseignement primaire éprouvent des difficultés à écrire des textes cohérents.
Dans quel choix les éléments indiqués conviennent-ils tous pour remédier progressivement à ces difficultés ?', false, '[{"id": "A", "text": "Proposer aux élèves des textes à compléter avec des mots donnés. - Procéder à un travail systématique sur l''emploi des connecteurs chronologiques et logiques. - Encourager les élèves à produire de textes à l''aide de modèles donnés. - Proposer aux élèves des textes à mettre en ordre."}, {"id": "B", "text": "Faire mémoriser les textes de lecture diction déjà étudiés. - Faire copier des phrases et des textes courts. - Faire mémoriser les règles de conjugaison. - Consolider les acquis des élèves en grammaire et en conjugaison."}, {"id": "C", "text": "Faire mémoriser les règles de grammaire. - Faire réaliser des exercices portant sur l''orthographe d''usage. - Conduire un travail systématique et permanent sur la typologie de textes et leurs caractéristiques. - Faire copier des textes de lecture diction."}, {"id": "D", "text": "Faire mémoriser les règles orthographiques. - Conduire un travail systématique sur la compréhension de consignes. - Proposer aux élèves des exercices de grammaire et d''orthographe. - Faire écrire, sous dictée, des textes courts."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'الصعوبة المرصودة تتعلق بـ انسجام النص وتماسكه (la cohérence textuelle). وجميع الإجراءات الواردة في الاختيار A تستهدف معالجة هذه الصعوبة بشكل تدريجي ومباشر: ملء فراغات نص بكلمات معطاة (الروابط والبدائل)، الاشتغال المنهجي على الروابط الزمنية والمنطقية (connecteurs chronologiques et logiques)، الإنتاج وفق نماذج مهيكلة، وترتيب جمل/فقرات لإعادة بناء نص منسجم (textes à mettre en ordre). أما الاختيارات B و C و D فتتضمن أنشطة ميكانيكية أو إملائية/نحوية (كحفظ النصوص الشعرية والنقل والإملاء) لا تعالج مباشرة مشكل انسجام النص.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bCTw_bDRAO7pJE8w5clJlXhU-IFUytvz', true, NULL)
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
