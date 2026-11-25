-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك اللغة الفرنسية - دورة يناير 2025.md
--   (سجل الامتحانات رقم 46؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك اللغة الفرنسية.pdf (12 صفحة، مرقمة 2/13–13/13).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q26 إلى Q50 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل المنهاج الدراسي للتعليم الابتدائي
--     (الصيغة النهائية، يوليوز 2021)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان،
--     والحل مصدره طرف ثالث (AI Studio).
--   * الأجوبة E («Aucun des choix précédents n'est correct») في Q37 وQ45 موسومة
--     في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[28] والتنبيه
--     على الفرق بين المبدأ الألفبائي والوعي الفونيمي في Q41.
--
-- ملاحظات عن ملف الامتحان:
--   * صفحة الغلاف (1/13) مفقودة من الملف؛ المدة (45 دقيقة) والمعامل (3) أُخذا من
--     إعلان المباراة الرسمي (دورة يناير 2025، التخصص المزدوج): اختبار في ديداكتيك
--     المواد، اللغة الفرنسية — 45 دقيقة، المعامل 3
--     https://www.scribd.com/document/809322600/Avis-Concours-EnsPrim-2025-VF-17h21-1
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_didactics_fr_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_fr_jan', 'specialty_primary', 2025, 'didactics_fr', 'ديداكتيك اللغة الفرنسية', 'امتحان ديداكتيك اللغة الفرنسية (دورة يناير 2025)', 'دورة يناير 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q26', 'exam_primary_2025_didactics_fr_jan', 26, 'Didactique générale — transposition didactique', 'Laquelle des propositions suivantes correspond à la définition de la transposition didactique ?', false, '[{"id": "A", "text": "La transposition didactique est un processus axé sur la conception et l''élaboration des dispositifs d''évaluation, de soutien et de remédiation."}, {"id": "B", "text": "La transposition didactique est un processus axé sur le traitement systématique des difficultés d''enseignement à des fins de régulation et de réajustement."}, {"id": "C", "text": "La transposition didactique est un processus axé sur le choix des modalités pédagogiques à adopter pour mettre en œuvre les activités d''enseignement/apprentissage."}, {"id": "D", "text": "La transposition didactique est un processus axé sur la transformation et l''adaptation du savoir savant à des fins d''enseignement et d''apprentissage."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'النقل الديداكتيكي (La transposition didactique)، كما حدده إيف شوفالار (Yves Chevallard)، هو السيرورة التي يتم من خلالها تحويل وتكييف المعرفة العالمة (savoir savant) إلى معرفة قابلة للتدريس (savoir à enseigner) في البرامج والمقررات، ثم إلى معرفة مُدرَّسة (savoir enseigné) داخل القسم، بما يتلاءم مع مستوى المتعلمين لأغراض التعليم والتعلم[3]. أما باقي الاختيارات فتحيل إلى التقويم والدعم (A)، المعالجة والتعديل (B)، والهندسة البيداغوجية (C).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q27', 'exam_primary_2025_didactics_fr_jan', 27, 'Didactique générale — triangle didactique', 'Parmi les propositions suivantes, quelle est celle qui correspond à la définition du triangle didactique ?', false, '[{"id": "A", "text": "Le triangle didactique est un schéma qui permet de modéliser la situation didactique autour de trois pôles et leurs relations : enseignant, savoir et élève."}, {"id": "B", "text": "Le triangle didactique est un schéma qui permet de modéliser les relations entre enseignant et savoir dans une situation à finalité didactique."}, {"id": "C", "text": "Le triangle didactique est un schéma qui permet de modéliser les relations entre enseignant et élève dans une situation à finalité didactique."}, {"id": "D", "text": "Le triangle didactique est un schéma qui permet de modéliser les relations entre élève et savoir dans une situation à finalité didactique."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'المثلث الديداكتيكي (Le triangle didactique) هو خطاطة تنمذج الوضعية الديداكتيكية انطلاقاً من ثلاثة أقطاب متفاعلة: المعلم (Enseignant)، المعرفة (Savoir)، والمتعلم (Élève)، والعلاقات القائمة بينها (القطب الإبستمولوجي، القطب البيداغوجي، والقطب السيكولوجي/التعلمي). أما الاختيارات B و C و D فتقتصر كل منها على قطبين فقط (ضلع واحد من المثلث).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q28', 'exam_primary_2025_didactics_fr_jan', 28, 'Didactique générale — situation didactique', 'Quelle est la proposition qui renvoie à la situation didactique ?', false, '[{"id": "A", "text": "Elle permet à l''élève de mobiliser ses ressources et d''utiliser les éléments de résolution qu''il possède au départ pour réaliser la tâche demandée."}, {"id": "B", "text": "Elle permet à l''élève de mobiliser ses connaissances et ses représentations afin d''en remettre certaines en cause mais aussi d''en construire de nouvelles."}, {"id": "C", "text": "Elle permet à l''élève de réaliser des activités d''application pour s''approprier des savoirs et savoir-faire et maîtriser les objectifs d''apprentissage visés."}, {"id": "D", "text": "Elle permet à l''élève de réaliser des activités d''évaluation appropriées lui permettant de prendre conscience de ses réussites et d''identifier ses difficultés."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'الوضعية الديداكتيكية (وضعية البناء / الوضعية المشكلة الديداكتيكية) تهدف أساساً إلى بناء تعلمات جديدة عبر وضع المتعلم أمام عائق يدفعه إلى تعبئة مكتسباته وتمثلاته السابقة قصد مساءلتها وإعادة النظر في بعضها لبناء معارف جديدة[4][5].
الاختيار A يحيل إلى وضعية الإدماج / إعادة الاستثمار (situation de réinvestissement / d''intégration) حيث يمتلك المتعلم مسبقاً عناصر الحل[5].
الاختيار C يحيل إلى وضعية التطبيق والتدريب (situation d''application).
الاختيار D يحيل إلى وضعية التقويم (situation d''évaluation).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q29', 'exam_primary_2025_didactics_fr_jan', 29, 'Oral — spécificités de l’oral', 'Laquelle des propositions, ci-dessous, est une spécificité de l''oral ?', false, '[{"id": "A", "text": "L''utilisation des signes de ponctuation."}, {"id": "B", "text": "La lisibilité et l''expressivité du texte."}, {"id": "C", "text": "La présence de signaux de régulation non verbaux."}, {"id": "D", "text": "L''organisation des signes graphiques."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'من أهم خصوصيات التواصل الشفهي (l''oral) حضور إشارات التعديل غير اللفظية (signaux de régulation non verbaux) مثل الإيماءات، تعابير الوجه، النظرات، وحركات الجسد التي ترافق الكلام وتنظّم التفاعل المباشر. بينما علامات الترقيم (A)، مقروئية النص (B)، وتنظيم العلامات الخطية (D) كلها خصائص مرتبطة بـ المكتوب (l''écrit).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q30', 'exam_primary_2025_didactics_fr_jan', 30, 'Oral — stratégies de réception', 'Laquelle des stratégies d''apprentissage, ci-dessous, est appropriée à la réception de l''oral ?', false, '[{"id": "A", "text": "Interpréter le langage non verbal."}, {"id": "B", "text": "Prendre son temps, parler lentement."}, {"id": "C", "text": "Anticiper l''organisation du texte à produire."}, {"id": "D", "text": "Reformuler, expliquer en cas d''incompréhension."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'وفق المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، تندرج استراتيجية "تأويل اللغة غير اللفظية" (Interpréter le langage non verbal) ضمن استراتيجيات الاستماع / استقبال الشفهي (La réception de l''oral)[6][7][8].
أما B و D فهما من استراتيجيات إنتاج الشفهي (production de l''oral)[8][9].
أما C فهي من استراتيجيات إنتاج المكتوب (production de l''écrit)[10][11].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q31', 'exam_primary_2025_didactics_fr_jan', 31, 'Oral — acte de langage « Conseiller »', 'Lors de l''évaluation des apprentissages relatifs à l''oral, un professeur demande aux élèves d''une classe de la 5e année de l''enseignement primaire d''identifier les moyens linguistiques servant à réaliser l''acte de langage « Conseiller ». Dans quelle proposition les moyens linguistiques indiqués conviennent-ils tous à la réalisation de cet acte de langage ?', false, '[{"id": "A", "text": "...être obligé de ... - Il faut ... - Il importe de... - Il ne faut pas ..."}, {"id": "B", "text": "Il est interdit de... - Il est recommandé de ... - Il serait souhaitable de ... - Il faut..."}, {"id": "C", "text": "Tu ferais bien de... - Il serait sage de... - À ta place, je ... - Il vaut mieux..."}, {"id": "D", "text": "Il importe de ... - ... avoir l''obligation de ... - Il serait génial de ... - Ce serait bien de ..."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'جميع الوسائل اللغوية الواردة في الاختيار C (Tu ferais bien de... / Il serait sage de... / À ta place, je... / Il vaut mieux...) تُستعمل حصراً لإنجاز الفعل الكلامي "النصح" (Conseiller).
أما A فتتضمن عبارات الإلزام والمنع (être obligé de, il faut, il ne faut pas).
أما B فتخلط بين المنع (il est interdit de)، الإلزام (il faut)، التوصية والتمني.
أما D فتخلط بين الإلزام (avoir l''obligation de) والتمني/الاستحسان (il serait génial de).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q32', 'exam_primary_2025_didactics_fr_jan', 32, 'Oral — acte de langage « souhait »', 'Lors de la mise en œuvre d''une activité orale, une professeure demande aux élèves d''une classe de la 6e année de l''enseignement primaire d''identifier l''acte de langage auquel correspond l''énoncé suivant : « Nous aimerions partir en voyage les vacances prochaines. » Parmi les réponses données par les élèves, indiquées ci-dessous, quelle est celle qui convient à la question de cette professeure ?', false, '[{"id": "A", "text": "Exprimer un ordre."}, {"id": "B", "text": "Exprimer une obligation."}, {"id": "C", "text": "Exprimer un conseil."}, {"id": "D", "text": "Exprimer un souhait."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'استعمال الفعل (aimer) مصرفاً في صيغة الشرط الحاضر (conditionnel présent : Nous aimerions...) يُستخدم في اللغة الفرنسية للتعبير عن التمني أو الرغبة (Exprimer un souhait)، وليس للأمر أو الإلزام أو النصح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q33', 'exam_primary_2025_didactics_fr_jan', 33, 'Oral — acte de langage « obligation »', 'Lors d''une activité orale, un professeur demande aux élèves de produire des énoncés pour exprimer une obligation. Laquelle des réponses, ci-dessous, présentées par des élèves, convient à la consigne donnée par ce professeur ?', false, '[{"id": "A", "text": "Nous devons protéger notre environnement."}, {"id": "B", "text": "Nous souhaiterions participer à des actions citoyennes."}, {"id": "C", "text": "Ce serait génial de visiter le jardin zoologique de Rabat."}, {"id": "D", "text": "Il est interdit de jouer au ballon dans les jardins publics."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'الجملة A تحتوي على الفعل (devoir) في الحاضر (Nous devons...) الذي يعبر صراحة عن الإلزام والوجوب (l''obligation).
الجملة B تعبر عن تمنٍ (souhait).
الجملة C تعبر عن رغبة أو اقتراح.
الجملة D تعبر عن منع (interdiction).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q34', 'exam_primary_2025_didactics_fr_jan', 34, 'Oral — sous-domaine (réception)', 'De quel sous-domaine d''apprentissage la capacité suivante relève-t-elle ? « Mémoriser des énoncés et des textes pour développer sa mémoire auditive. »', false, '[{"id": "A", "text": "La réception de l''oral."}, {"id": "B", "text": "La production de l''oral."}, {"id": "C", "text": "La compréhension de l''écrit."}, {"id": "D", "text": "La production de l''écrit."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'حسب جدول القدرات (capacités) في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، تندرج قدرة "حفظ ملفوظات ونصوص لتطوير الذاكرة السمعية" (Mémoriser des énoncés et des textes pour développer sa mémoire auditive) بشكل صريح ضمن المجال الفرعي استقبال الشفهي (La réception de l''oral)[12][13][14].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q35', 'exam_primary_2025_didactics_fr_jan', 35, 'Oral — étapes méthodologiques', 'Lors de l''étape de production d''une activité orale, une professeure propose des situations aux élèves d''une classe de la 4e année de l''enseignement primaire, et les invite à réaliser l''acte de langage « Recommander ». Parmi les propositions, ci-dessous, quelle est celle à laquelle renvoie le travail effectué par la professeure et les élèves juste avant cette étape de production ?', false, '[{"id": "A", "text": "Évaluation et soutien."}, {"id": "B", "text": "Réception/Compréhension."}, {"id": "C", "text": "Entraînement/Réemploi."}, {"id": "D", "text": "Observation/Découverte."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'التسلسل المنهجي لمراحل تدبير الأنشطة الشفهية (Activités orales) في التعليم الابتدائي هو كالتالي[15]:
Observation / Découverte (الملاحظة والاكتشاف)
Réception / Compréhension (الاستقبال والفهم)
Entraînement / Réemploi (التدريب / استثمار وإعادة توظيف الوسائل اللغوية)
Production / Réinvestissement (الإنتاج وإعادة الاستثمار)
Évaluation et soutien (التقويم والدعم)
وبالتالي فالمرحلة التي تسبق مرحلة الإنتاج مباشرة هي التدريب وإعادة التوظيف (Entraînement/Réemploi)[15].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q36', 'exam_primary_2025_didactics_fr_jan', 36, 'Lecture — phonème [ã]', 'Lors d''une activité de lecture diction, un professeur constate que des élèves d''une classe de la 5e année de l''enseignement primaire ne parviennent pas à prononcer correctement les mots contenant les graphèmes qui correspondent au phonème [ã]. Laquelle des propositions, ci-dessous, ce professeur choisirait-il pour traiter cette difficulté avec les élèves ?', false, '[{"id": "A", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ã], lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ã], prononcer ce phonème isolé après chaque mot lu en faisant remarquer que les lèvres sont écartées et la langue est en avant, puis faire lire plusieurs fois ces mots."}, {"id": "B", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ã], lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ã], prononcer ce phonème isolé après chaque mot lu en faisant remarquer que les lèvres sont fermées et la langue est en avant, puis faire lire plusieurs fois ces mots."}, {"id": "C", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ã], lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ã], prononcer ce phonème isolé après chaque mot lu en faisant remarquer que les lèvres sont un peu arrondies et la langue est en arrière, puis faire lire plusieurs fois ces mots."}, {"id": "D", "text": "Écrire au tableau des mots contenant, chacun, l''un des graphèmes correspondant au phonème [ã], lire ces mots en montrant, dans chaque mot lu, le graphème qui correspond au phonème [ã], prononcer ce phonème isolé après chaque mot lu en faisant remarquer que les lèvres sont ouvertes et la langue est en avant, puis faire lire plusieurs fois ces mots."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'من الناحية الصوتية النطقية (phonétique articulatoire)، يُعدّ الصويت الأنفي [ɑ̃] / [ã] (المقابل للغرافيـمات an, am, en, em) صائتاً خلفياً (voyelle postérieure)، أي أن اللسان يتراجع إلى الخلف (la langue est en arrière)، مع استدارة خفيفة للشفتين (les lèvres sont un peu arrondies)[16][17][18]. أما الاختيارات A و B و D فتذكر جميعها أن اللسان يكون في الأمام (en avant)، وهو خطأ علمي لأن ذلك يميز الصوائت الأمامية مثل [ɛ̃].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q37', 'exam_primary_2025_didactics_fr_jan', 37, 'Stratégies — compréhension de l’écrit', 'Parmi les stratégies d''apprentissage, ci-dessous, quelle est celle qui convient à la compréhension de l''écrit ?', false, '[{"id": "A", "text": "Adopter une posture d''écoute."}, {"id": "B", "text": "Recourir à des éléments prosodiques pour appuyer ses propos."}, {"id": "C", "text": "Adapter sa façon de dire/parler à ses interlocuteurs."}, {"id": "D", "text": "Anticiper l''organisation du texte à produire."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['E']::text[], 'لا توجد أي استراتيجية من الاستراتيجيات المذكورة تندرج ضمن فهم المكتوب (compréhension de l''écrit):
A تخص استقبال الشفهي (réception de l''oral)[9].
B و C تخصان إنتاج الشفهي (production de l''oral)[9].
D (Anticiper l''organisation du texte à produire) تخص إنتاج المكتوب (production de l''écrit)[10][11] (وهي الفخ الكلاسيكي في السؤال).
لذلك فالجواب الصحيح هو E (لا شيء مما سبق صحيح).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, 'لا استراتيجية من المذكورة تندرج ضمن فهم المكتوب حسب المنهاج (A استقبال الشفهي، B وC إنتاج الشفهي، D إنتاج المكتوب)، فالجواب E.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q38', 'exam_primary_2025_didactics_fr_jan', 38, 'Lecture — conscience phonologique (fusion)', 'Lors d''une séance dévolue à l''évaluation et au soutien en lecture, une professeure propose respectivement des séquences de sons aux élèves d''une classe de la 3e année de l''enseignement primaire, et leur demande de combiner les sons de chacune d''elles pour former un mot usuel. Quelle habileté de la conscience phonologique ces élèves mobiliseraient-ils pour réaliser la tâche demandée ?', false, '[{"id": "A", "text": "L''isolation."}, {"id": "B", "text": "La substitution."}, {"id": "C", "text": "La soustraction."}, {"id": "D", "text": "La fusion."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'تجميع/تركيب سلسلة من الأصوات (combiner les sons) لتكوين كلمة متداولة يُسمى في مهارات الوعي الصوتي بـ الدمج الصوتي (La fusion).
العزل (L''isolation): تحديد صوت معين داخل كلمة.
التعويض (La substitution): استبدال صوت بصوت آخر لتكوين كلمة جديدة.
الحذف (La soustraction): إزالة صوت من كلمة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q39', 'exam_primary_2025_didactics_fr_jan', 39, 'Lecture — étapes (compréhension)', 'Lors d''une activité de lecture, une professeure demande aux élèves d''une classe de la 5e année de l''enseignement primaire de prélever les informations explicites dans un texte. À quelle étape méthodologique la consigne donnée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "... à la réaction au texte."}, {"id": "B", "text": "... à la compréhension du texte."}, {"id": "C", "text": "... à la lecture oralisée du texte."}, {"id": "D", "text": "... à la découverte du texte."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'استخراج المعلومات الصريحة من النص (prélever les informations explicites) يمثل مستوى الفهم الحرفي وبناء المعنى، وهو يندرج ضمن مرحلة فهم النص (la compréhension du texte) أثناء القراءة[19][20]. أما مرحلة الاكتشاف (D) فتقتصر على الملاحظة وصياغة فرضيات القراءة قبل قراءة النص[21]، ومرحلة التفاعل (A) تأتي بعد الفهم لإبداء الرأي أو توسيع المعنى.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q40', 'exam_primary_2025_didactics_fr_jan', 40, 'Lecture — sous-domaine (compréhension de l’écrit)', 'À quel sous-domaine d''apprentissage la capacité suivante renvoie-t-elle ? « Interpréter des idées et des informations contenues dans un texte lu. »', false, '[{"id": "A", "text": "... à la compréhension de l''écrit."}, {"id": "B", "text": "... à la production de l''écrit."}, {"id": "C", "text": "... à la production de l''oral."}, {"id": "D", "text": "... à la réception de l''oral."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'تأويل الأفكار والمعلومات الواردة في نص مقروء (texte lu) يندرج صراحة في جدول قدرات المنهاج الدراسي المغربي (يوليوز 2021) ضمن مكون القراءة / فهم المكتوب (la compréhension de l''écrit)[19][22][23].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q41', 'exam_primary_2025_didactics_fr_jan', 41, 'Lecture — principe alphabétique', 'Lors d''une activité de lecture, une professeure affiche au tableau des étiquettes portant des mots usuels relatifs au thème de « L''environnement », et demande aux élèves d''une classe de la 1re année de l''enseignement primaire d''identifier, dans ces mots, le graphème qui correspond au son [d]. À quelle proposition la consigne donnée aux élèves renvoie-t-elle ?', false, '[{"id": "A", "text": "... à la lecture des mots."}, {"id": "B", "text": "... au principe alphabétique."}, {"id": "C", "text": "... à la compréhension des mots."}, {"id": "D", "text": "... à la conscience phonémique."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'يقوم المبدأ الألفبائي (Le principe alphabétique) على إدراك التطابق والعلاقة بين الوحدة الصوتية المنطوقة (الفونيم / الصوت [d]) والوحدة الخطية المكتوبة (الغرافيـم / الحرف « d »)[19].
⚠️ انتباه للفرق: الوعي الفونيمي (la conscience phonémique) يشتغل على المستوى الشفهي والسمعي الصرف دون اللجوء إلى المكتوب، بينما هنا يلاحظ التلاميذ بطاقات مكتوبة لتحديد الغرافيـم المقابل للصوت [d]، مما يحيل مباشرة إلى المبدأ الألفبائي[19].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q42', 'exam_primary_2025_didactics_fr_jan', 42, 'Lecture — inférences', 'Lors de la mise en œuvre d''une activité de lecture, un professeur demande aux élèves d''une classe de la 6e année de l''enseignement primaire de lire le texte et de répondre à des questions pour déduire des informations implicites. À quelle proposition la tâche demandée aux élèves correspond-elle ?', false, '[{"id": "A", "text": "Identifier des informations explicites."}, {"id": "B", "text": "Évaluer des éléments textuels."}, {"id": "C", "text": "Faire des inférences simples."}, {"id": "D", "text": "Reformuler un paragraphe du texte."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'استنتاج معلومات ضمنية غير مصرح بها مباشرة في النص (déduire des informations implicites) اعتماداً على قرائن ومؤشرات نصية هو التعريف الدقيق لمهارة الاستدلال / القيام باستنتاجات بسيطة (Faire des inférences simples).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q43', 'exam_primary_2025_didactics_fr_jan', 43, 'Lecture — graphèmes du phonème [o]', 'Lors de la mise en œuvre d''une activité de lecture, un professeur demande aux élèves d''une classe de la 3e année de l''enseignement primaire d''identifier, dans des mots composant des phrases écrites au tableau, les graphèmes qui correspondent au phonème [o]. Parmi les objectifs ci-dessous, quel est celui qui correspond à la consigne donnée par ce professeur ?', false, '[{"id": "A", "text": "Identifier, dans des mots donnés, des syllabes contenant le phonème [o]."}, {"id": "B", "text": "Discriminer les graphèmes qui correspondent au phonème [o]."}, {"id": "C", "text": "Discriminer le phonème [o] dans des mots usuels donnés."}, {"id": "D", "text": "Lire de phrases composées de mots contenant le phonème [o]."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'التعليمة تطلب تحديد الغرافيـمات (les graphèmes : o, au, eau) المقابلة للصوت [o] داخل كلمات مكتوبة على السبورة؛ وهو ما يطابق تماماً الهدف B (التمييز البصري للغرافيـمات المقابلة للصوت [o]).
A يركز على المقاطع الصوتية (syllabes).
C يركز على التمييز السمعي للصوت (phonème) فقط.
D يركز على فعل القراءة (lire) وليس تحديد الغرافيـمات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q44', 'exam_primary_2025_didactics_fr_jan', 44, 'Lecture — habileté (évaluation)', 'À la fin d''une activité de lecture, une professeure demande aux élèves d''une classe de la 6e année de l''enseignement primaire d''exprimer leur avis sur une idée contenue dans le texte lu. Quelle habileté cette professeure envisage-t-elle d''évaluer ?', false, '[{"id": "A", "text": "La synthèse."}, {"id": "B", "text": "L''évaluation."}, {"id": "C", "text": "L''analyse."}, {"id": "D", "text": "L''application."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'وفق صنافة بلوم (Taxonomie de Bloom) ومستويات فهم المقروء، فإن إبداء الرأي الشخصي أو إصدار حكم نقدي حول فكرة واردة في النص (exprimer son avis / porter un jugement) يندرج ضمن مهارة التقويم (L''évaluation). أما التركيب (la synthèse) فيتعلق بتجميع عناصر لإنتاج كل جديد (كالتلخيص أو التأليف).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q45', 'exam_primary_2025_didactics_fr_jan', 45, 'Stratégies — production de l’écrit', 'Laquelle des stratégies, ci-dessous, est appropriée à la production de l''écrit ?', false, '[{"id": "A", "text": "Formuler des hypothèses sur le sens du texte."}, {"id": "B", "text": "Entrer dans le texte en utilisant le paratexte."}, {"id": "C", "text": "Retenir l''essentiel de l''information véhiculée par un texte."}, {"id": "D", "text": "Recourir à des éléments prosodiques pour appuyer ses propos."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['E']::text[], 'لا توجد أي استراتيجية من الخيارات المقترحة تخص إنتاج المكتوب (production de l''écrit):
A و B و C كلها استراتيجيات خاصة بـ القراءة / فهم المكتوب (compréhension de l''écrit).
D استراتيجية خاصة بـ إنتاج الشفهي (production de l''oral)[9].
وبالتالي فالجواب الصحيح هو E (لا شيء مما سبق صحيح).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, 'لا استراتيجية من المذكورة تخص إنتاج المكتوب (A وB وC فهم المكتوب، D إنتاج الشفهي)، فالجواب E.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q46', 'exam_primary_2025_didactics_fr_jan', 46, 'Production de l’écrit — visée injonctive', 'Voici une situation relative à une activité de production écrite destinée à des élèves de la 4e année de l''enseignement primaire : « En te promenant dans la forêt en compagnie de tes parents, tu as constaté que des enfants jetaient des déchets sous des arbres. Écris, pour le journal de ton école, un texte de trois ou quatre phrases dans lequel tu conseilles à tes camarades de respecter la forêt. » Lequel des objectifs, ci-dessous, est approprié à cette situation d''écriture ?', false, '[{"id": "A", "text": "Produire, en trois ou quatre phrases, un texte à visée injonctive se rapportant à la protection de la forêt."}, {"id": "B", "text": "Produire, en trois ou quatre phrases, un texte à visée explicative se rapportant à la protection de la forêt."}, {"id": "C", "text": "Produire, en trois ou quatre phrases, un texte à visée informative se rapportant à la protection de la forêt."}, {"id": "D", "text": "Produire, en trois ou quatre phrases, un texte à visée narrative se rapportant à la protection de la forêt."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['A']::text[], 'المطلوب في تعليمة الكتابة هو تقديم نصائح للزملاء من أجل احترام الغابة (tu conseilles à tes camarades de respecter la forêt)، والنص الذي يهدف إلى تقديم نصائح أو توصيات أو تعليمات للحث على سلوك معين هو نص توجيهي / إرشادي (texte à visée injonctive).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q47', 'exam_primary_2025_didactics_fr_jan', 47, 'Production de l’écrit — capacités', 'Laquelle des capacités, ci-dessous, est appropriée à la production de l''écrit ?', false, '[{"id": "A", "text": "Acquérir des informations déduites d''un texte lu."}, {"id": "B", "text": "Maîtriser les tracés de base de l''écriture."}, {"id": "C", "text": "Utiliser des stratégies de compréhension diversifiées."}, {"id": "D", "text": "Réagir à une sollicitation verbale."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['B']::text[], 'حسب جدول القدرات في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، تندرج قدرة "التحكم في التخطيطات الأساسية للكتابة" (Maîtriser les tracés de base de l''écriture) ضمن مجال إنتاج المكتوب (La production de l''écrit)[24][25].
A و C تندرجان ضمن القراءة / فهم المكتوب[24].
D تندرج ضمن إنتاج الشفهي[24].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q48', 'exam_primary_2025_didactics_fr_jan', 48, 'Dictée — étapes méthodologiques', 'Lors d''une séance dévolue à la dictée, un professeur demande aux élèves d''une classe de la 3e année de l''enseignement primaire d''écrire, sous dictée, la phrase proposée pour cette activité. Quelle est l''étape méthodologique qui succède à la réalisation de cette tâche ?', false, '[{"id": "A", "text": "Observation/Découverte."}, {"id": "B", "text": "Entraînement/application."}, {"id": "C", "text": "Production/Réalisation."}, {"id": "D", "text": "Évaluation/Correction."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'تنتظم المراحل المنهجية لحصة الإملاء (la dictée) كما يلي[2][26]:
Observation / Découverte (الملاحظة والاكتشاف)
Entraînement / Application (التدريب والتطبيق)
Production / Réalisation (الإنجاز: كتابة الجملة إملاءً)
Évaluation / Correction (التقويم والتصحيح الجماعي ثم الفردي)
وبما أن كتابة الجملة إملاءً تمثل مرحلة الإنجاز (Production/Réalisation)، فإن المرحلة التي تليها مباشرة هي التقويم والتصحيح (Évaluation/Correction)[20][27].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q49', 'exam_primary_2025_didactics_fr_jan', 49, 'Production de l’écrit — étapes (deuxième jet)', 'Lors d''une activité de production écrite, une professeure demande aux élèves d''une classe de la 5e année de l''enseignement primaire d''écrire le deuxième jet du texte demandé. Quelle est l''étape méthodologique qui précède la réalisation de la tâche demandée à ces élèves ?', false, '[{"id": "A", "text": "La correction du deuxième jet."}, {"id": "B", "text": "La phase préparatoire orale."}, {"id": "C", "text": "La correction du premier jet."}, {"id": "D", "text": "L''écriture du premier jet."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['C']::text[], 'مراحل تدبير الإنتاج الكتابي (Production de l''écrit) في المستويين الخامس والسادس ابتدائي تتسلسل كالآتي[28]:
Observation / Découverte (المرحلة التحضيرية الشفهية واكتشاف النموذج)
L''écriture du premier jet (كتابة المسودة الأولى)
La correction du premier jet (تصحيح المسودة الأولى ومراجعتها بالاعتماد على شبكة التصحيح)
L''écriture du deuxième jet (إعادة الكتابة / المسودة الثانية)
La correction du deuxième jet (تصحيح وتقويم المسودة الثانية)
إذن المرحلة التي تسبق مباشرة كتابة المسودة الثانية هي تصحيح المسودة الأولى (La correction du premier jet)[3][28].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة يناير 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_fr_jan_q50', 'exam_primary_2025_didactics_fr_jan', 50, 'Production de l’écrit — critères (pertinence)', 'Pour corriger les textes, écrits par les élèves d''une classe de la 6e année de l''enseignement primaire, lors d''une activité de production écrite, un professeur se base sur des critères et des indicateurs. Lequel des indicateurs, ci-dessous, permettrait à ce professeur d''évaluer le critère de la pertinence des productions des élèves ?', false, '[{"id": "A", "text": "Les phrases du texte produit sont grammaticalement correctes."}, {"id": "B", "text": "Les phrases du texte produit sont articulées entre elles et ont du sens."}, {"id": "C", "text": "Le texte produit est lisible et convenablement présenté."}, {"id": "D", "text": "La consigne d''écriture, explicitée lors de la phase préparatoire, est respectée."}, {"id": "E", "text": "Aucun des choix précédents n''est correct."}]'::jsonb, ARRAY['D']::text[], 'في تقويم الإنتاج الكتابي وفق المقاربة بالكفايات، يُقصد بمعيار الملاءمة (La pertinence) مدى توافق منتوج المتعلم مع الوضعية التواصلية واحترامه لتعليمة الكتابة (الموضوع، نوع النص، عدد الأسطر/الجمل...)، وهو ما يعبر عنه المؤشر D.
المؤشر A يخص معيار سلامة اللغة (correction de la langue).
المؤشر B يخص معيار الانسجام والتماسك النصي (cohérence textuelle)[3].
المؤشر C يخص معيار الإتقان والمقروئية وتنظيم الورقة (perfectionnement / lisibilité et présentation).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1z32JfoX6efijWcFW_QJo6dZtP07mXe8_', true, NULL)
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
