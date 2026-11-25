-- ====================================================================
-- مباراتي — اللغة الفرنسية، مادة التخصص، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/اللغة الفرنسية - مادة التخصص - دورة يناير 2025.md
--   (سجل الامتحانات رقم 45؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/اللغة الفرنسية - مادة التخصص.pdf (12 صفحة).
--
-- ⚠️ صيغة مختصرة في ملف الحل (حظر الاستنساخ الحرفي Recitation block):
--   حظر فلتر الاستنساخ في AI Studio توليد الجواب الكامل مرتين، فأُعيد الحل بصيغة
--   مختصرة (رقم السؤال + حرف الجواب + ملخص المضمون + التعليل بالعربية) دون نص
--   الأسئلة والاختيارات. لذلك نُقلت نصوص الأسئلة والاختيارات هنا مباشرة من ورقة
--   الامتحان (PDF) بعد تصييره صوراً وقراءته صفحة بصفحة، والتعليلات منقولة حرفياً
--   من ملف الحل.
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q31 إلى Q60 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان،
--     بما فيها النصوص الطويلة (Camus، Montaigne، Zola، Balzac، Anouilh، Baudelaire،
--     Charles d'Orléans، La Fontaine) والرموز الصوتية في Q42 وQ45 (قرئت من تصيير 300 dpi).
--   * الأجوبة الصحيحة (حروفها من ملف الحل) رُوجعت واحداً واحداً مقابل قواعد اللغة
--     الفرنسية ونصوص الامتحان؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل
--     مصدره طرف ثالث (AI Studio).
--   * Q32: الكلمة المقصودة هي «forgeron» (بخط عريض في الورقة) بعد devenir.
--   * Q54 وQ58 وQ60: القوائم المرقمة منقولة ومفصولة بـ « | »، والاختيارات المرتبة
--     عمودياً في الورقة نُقلت مفصولة بـ « - » (موسومة في verification_note).
--   * التنقيط: جواب صحيح +1، جواب خاطئ −1 (من غلاف ورقة الامتحان).
--
-- ملاحظات عن ملف الامتحان:
--   * الغلاف موجود في الملف (صفحة 1/12): المدة ساعة واحدة، المعامل 6.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--   * Q56 الخيار D مطبوع «Des hendécasyllabe» (مفرد) — نُقل كما هو.
--   * Q43 الخيار D مطبوع «Lire de phrases composées...» — نُقل كما هو.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_french_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_french_jan', 'specialty_primary', 2025, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة يناير 2025)', 'دورة يناير 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q31', 'exam_primary_2025_french_jan', 31, 'Grammaire — nature des mots', 'À quelle catégorie grammaticale le mot souligné appartient-il ? La langue est ainsi dans un perpétuel devenir, comme disent les philosophes. (SARCEY)', false, '[{"id": "A", "text": "Conjonction de coordination"}, {"id": "B", "text": "Conjonction de subordination"}, {"id": "C", "text": "Préposition"}, {"id": "D", "text": "Adverbe"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'جاءت كلمة «comme» هنا لربط جملة فرعية تتضمن فعلاً مصرفاً تفيد المقارنة والمطابقة، مما يجعلها أداة تبعية وليست حرف جر أو ظرفاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q32', 'exam_primary_2025_french_jan', 32, 'Grammaire — fonction syntaxique', 'Quelle est la fonction syntaxique du mot mis en gras dans la phrase suivante ? C’est en forgeant qu’on devient forgeron.', false, '[{"id": "A", "text": "Complément d’objet direct"}, {"id": "B", "text": "Complément d’agent"}, {"id": "C", "text": "Attribut du complément"}, {"id": "D", "text": "Attribut du sujet"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الكلمة المقصودة جاءت بعد فعل حالة «devenir»، وهي تصف الفاعل «on» وتُسند إليه، ولذلك تُعرب مسنداً للفاعل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'الكلمة المقصودة هي «forgeron» (المكتوبة بخط عريض في ورقة الامتحان) بعد فعل الحالة devenir، فهي مسند للفاعل.')
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q33', 'exam_primary_2025_french_jan', 33, 'Conjugaison — infinitif', 'Quel est l’infinitif du verbe conjugué dans cette phrase ? Claude Monet peignait ses toiles en pleine nature.', false, '[{"id": "A", "text": "Peindre"}, {"id": "B", "text": "Peigner"}, {"id": "C", "text": "Peiner"}, {"id": "D", "text": "Pigner"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'يتشابه تصريف فعلي «peindre» (رسم) و«peigner» (مشّط) في زمن الماضي الناقص، غير أن سياق الجملة الذي يشير إلى الرسام كلود مونيه ولوحاته يحدد أن المقصود هو فعل الرسم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q34', 'exam_primary_2025_french_jan', 34, 'Grammaire — fonction de la subordonnée', 'Quelle est la fonction syntaxique de la proposition subordonnée dans la phrase suivante ? Je m’attends à ce qu’il arrive d’un instant à l’autre.', false, '[{"id": "A", "text": "Complément d’objet direct"}, {"id": "B", "text": "Complément d’objet indirect"}, {"id": "C", "text": "Complément circonstanciel de temps"}, {"id": "D", "text": "Complément circonstanciel de lieu"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الفعل «s''attendre» يتعدى بحرف الجر «à»، وبالتالي فإن الجملة الفرعية المسبوقة بـ «à ce que» تشغل وظيفة المفعول به غير المباشر.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q35', 'exam_primary_2025_french_jan', 35, 'Grammaire — propositions', 'Combien y a-t-il de propositions dans la phrase suivante ? Étienne, un jour, au sortir du puits, avait reçu à la face cette bouffée tiède d’avril, une bonne odeur de terre jeune, de verdure tendre, de grand air pur ; et, maintenant, à chaque sortie, le printemps sentait meilleur et le chauffait davantage, après ses dix heures de travail dans l’éternel hiver du fond, au milieu de ces ténèbres humides que jamais ne dissipait aucun été. (É. ZOLA)', false, '[{"id": "A", "text": "Deux propositions"}, {"id": "B", "text": "Trois propositions"}, {"id": "C", "text": "Quatre propositions"}, {"id": "D", "text": "Cinq propositions"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'يُحدد عدد القضايا بعدد الأفعال المصرفة في الجملة، وتحتوي الجملة على أربعة أفعال مصرفـة هي: «avait reçu» و«sentait» و«chauffait» و«dissipait» (أما «au sortir» فمصدر اسمي لا يُعد فعلاً مصرفاً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q36', 'exam_primary_2025_french_jan', 36, 'Grammaire — coordination', 'Laquelle des phrases suivantes est formée par coordination ?', false, '[{"id": "A", "text": "Comme il ne restait qu’un petit morceau de beurre, personne n’y toucha."}, {"id": "B", "text": "Ces dames se tortillèrent de rire, parce que ça leur semblait drôle tout de même, quoique triste."}, {"id": "C", "text": "À cette heure, son endroit devait être bigrement large, car elle y envoyait tout le monde."}, {"id": "D", "text": "Il ne pouvait plus remuer les jambes : c’était la mort bientôt."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'تعتمد هذه الجملة على أداة العطف «car» للربط بين قضيتين مستقلتين، بخلاف الجمل الأخرى التي تعتمد على التبعية (بأدوات مثل comme وparce que) أو التجاور (بالنقطتين).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q37', 'exam_primary_2025_french_jan', 37, 'Conjugaison — subjonctif', 'Laquelle des formes verbales ci-dessous convient pour compléter la phrase suivante ? L’administration acceptera votre demande, à condition que vous .................... un stage d’au moins six mois dans une entreprise de marketing.', false, '[{"id": "A", "text": "avez effectué"}, {"id": "B", "text": "aurez effectué"}, {"id": "C", "text": "ayez effectué"}, {"id": "D", "text": "auriez effectué"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'أداة الشرط «à condition que» تستوجب دائماً تصريف الفعل بعدها في صيغة النصب (Subjonctif)، وقد استُعمل الماضي المنصوب للتعبير عن أسبقية إنجاز التدريب قبل قبول الطلب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q38', 'exam_primary_2025_french_jan', 38, 'Lexique — relations lexicales', 'De quelle relation lexicale s’agit-il dans le couple de mots (pair ; paire) ?', false, '[{"id": "A", "text": "La synonymie"}, {"id": "B", "text": "L’homographie"}, {"id": "C", "text": "La paronymie"}, {"id": "D", "text": "L’homophonie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الكلمتان «pair» و«paire» تُنطقان بالطريقة نفسها تماماً [pɛʁ] لكنهما تختلفان في الرسم الإملائي وفي المعنى، وهذه هي سمة التجانس الصوتي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q39', 'exam_primary_2025_french_jan', 39, 'Grammaire — voix passive', 'Quelle est la transformation correcte de la phrase suivante à la voix passive ? Ici, on vend les bouquets de fleurs à bon prix.', false, '[{"id": "A", "text": "Ici, les bouquets de fleurs sont vendus à bon prix par lui."}, {"id": "B", "text": "Ici, les bouquets de fleurs sont vendus à bon prix."}, {"id": "C", "text": "Ici, les bouquets de fleurs sont vendus par bon prix."}, {"id": "D", "text": "Ici, les bouquets de fleurs sont vendus à bon prix par nous."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'عندما يكون الفاعل في الجملة المبنية للمعلوم هو الضمير النكرة «on»، فإنه يُحذف تماماً عند التحويل إلى المبني للمجهول، مع تحويل الفعل المضارع إلى «sont vendus».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q40', 'exam_primary_2025_french_jan', 40, 'Lexique — formation des mots', 'Par quel procédé le verbe « épurer » est-il formé ?', false, '[{"id": "A", "text": "La composition savante"}, {"id": "B", "text": "La suffixation"}, {"id": "C", "text": "L’emprunt"}, {"id": "D", "text": "La composition populaire"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'الفعل «épurer» مشتق من الجذر «pur» بإضافة سابقة «é-» ولاحقة فعلية «-er» في آنٍ واحد (إذ لا وجود لكلمة *épur ولا *purer)، وتُعرف هذه الآلية بالاشتقاق التلازمي أو التركيبي (Dérivation parasynthétique)[1][2]، وهو غير وارد ضمن الاختيارات المقترحة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q41', 'exam_primary_2025_french_jan', 41, 'Grammaire — pronoms relatifs', 'Lequel des pronoms relatifs ci-dessous convient pour compléter la phrase suivante ? Le match a été annulé en raison du mauvais temps, ce ............ je m’attendais.', false, '[{"id": "A", "text": "dont"}, {"id": "B", "text": "que"}, {"id": "C", "text": "duquel"}, {"id": "D", "text": "qui"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'الفعل «s''attendre» يحتاج إلى حرف الجر «à»، وعندما يكون المرجع محايداً مسبوقاً بـ «ce» فإن الاسم الموصول الصحيح هو «à quoi»، وهو غير موجود في الاختيارات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q42', 'exam_primary_2025_french_jan', 42, 'Phonétique — voyelles nasales', 'Quelle est la liste exacte des voyelles nasales en langue française ?', false, '[{"id": "A", "text": "[ɔ] ; [a] ; [ɛ] ; [œ]"}, {"id": "B", "text": "[ĩ] ; [a] ; [ɛ] ; [œ̃]"}, {"id": "C", "text": "[ɔ] ; [ɑ̃] ; [ɛ̃] ; [ø]"}, {"id": "D", "text": "[ɔ̃] ; [ɑ̃] ; [ɛ̃] ; [œ̃]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'تتميز الصوائت الأنفية في الأبجدية الصوتية الدولية بوجود علامة المد فوقها (tilde)، والاختيار D هو الوحيد الذي يضم الأصوات الأنفية الأربع للفرنسية بشكل صحيح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'الرموز الصوتية منقولة كما هي مطبوعة في ورقة الامتحان (قرئت من تصيير 300 dpi).')
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q43', 'exam_primary_2025_french_jan', 43, 'Phonétique — phonème [g]', 'Dans quel choix entend-on le phonème [g] ?', false, '[{"id": "A", "text": "La seconde"}, {"id": "B", "text": "La fécondité"}, {"id": "C", "text": "Le gypse"}, {"id": "D", "text": "Les gens"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'يُنطق حرف «c» في كلمة «seconde» ومشتقاتها بصوت [g] استثنائياً، بينما يُنطق [k] في «fécondité»، ويُنطق حرف «g» بصوت [ʒ] في «gypse» و«gens».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q44', 'exam_primary_2025_french_jan', 44, 'Phonétique — découpage syllabique', 'Quel est le découpage syllabique exact du mot « électricité » ?', false, '[{"id": "A", "text": "é / lect / ri / ci / té"}, {"id": "B", "text": "él / ec / tri / ci / té"}, {"id": "C", "text": "é / lec / tri / ci / té"}, {"id": "D", "text": "é / le / ctri / ci / té"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'وفق قواعد التقطيع الصوتي في الفرنسية، يُفصل بين الساكنين «c» و«t»، بينما يظل التجمع الصوتي «tr» (ساكن متبوع بـ r) متماسكاً لا يُفصل في بداية المقطع الثالث.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q45', 'exam_primary_2025_french_jan', 45, 'Phonétique — transcription phonétique', 'Quelle est la transcription phonétique correcte du mot « vraisemblablement » ?', false, '[{"id": "A", "text": "[vʁɛsɔ̃blabləmɔ̃]"}, {"id": "B", "text": "[vʁɛzɑ̃blabləmɑ̃]"}, {"id": "C", "text": "[vʁɛsɑ̃blablemɑ̃]"}, {"id": "D", "text": "[vʁɛsɑ̃blabləmɑ̃]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'في الكلمات المركبة أو التي يبدأ جذرها بحرف «s» مثل «vraisemblablement»، يحتفظ الحرف «s» بنطقه مهموساً [s] رغم وقوعه بين صائتين، كما يُنطق الصائت الأنفي في المقطعين بصوت [ɑ̃] مع وجود [ə] قبل النهاية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'النقل الصوتي منقول كما هو مطبوع في ورقة الامتحان (قرئ من تصيير 300 dpi).')
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q46', 'exam_primary_2025_french_jan', 46, 'Littérature — genre littéraire', 'À quel genre littéraire l’extrait suivant appartient-il ? Loin de dire que la peine de mort est d’abord nécessaire et qu’il convient ensuite de n’en pas parler, il faut parler au contraire de ce qu’elle est réellement et dire alors si, telle qu’elle est, elle doit être considérée comme nécessaire. Je la crois, quant à moi, non seulement inutile, mais profondément nuisible et je dois consigner ici cette conviction, avant d’en venir au sujet lui-même. Il ne serait pas honnête de laisser croire que je suis arrivé à cette conclusion après les semaines d’enquêtes et de recherches que je viens de consacrer à cette question [...]. Albert CAMUS, Réflexions sur la guillotine, 1957.', false, '[{"id": "A", "text": "Genre argumentatif"}, {"id": "B", "text": "Genre narratif"}, {"id": "C", "text": "Genre théâtral"}, {"id": "D", "text": "Genre épistolaire"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'يعرض ألبير كامو موقفاً شخصياً واضحاً ومعللاً ضد عقوبة الإعدام («non seulement inutile, mais profondément nuisible»)، مما يجعله نصاً حجاجياً بامتياز.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q47', 'exam_primary_2025_french_jan', 47, 'Littérature — visée de l’auteur', 'Quelle est la visée de l’auteur dans le texte suivant ? La diversité des façons d’une nation à autre ne me touche que par le plaisir de la variété. Chaque usage a sa raison. Soient des assiettes d’étain, de bois, de terre : bouilli ou rôti ; beurre ou huile, de noix ou d’olive, chaud ou froid, tout m’est un. [...] Quand j’ai été ailleurs qu’en France : et que, pour me faire courtoisie, on m’a demandé, si je voulais être servi à la Française, je m’en suis moqué, et me suis toujours jeté aux tables les plus épaisses d’étrangers. J’ai honte de voir nos hommes, enivré de cette sotte humeur, de s’effaroucher des formes contraires aux leurs. Il leur semble être hors de leur élément, quand ils sont hors de leur village. Où qu’ils aillent, ils se tiennent à leurs façons, et abominent les étrangères. Michel de MONTAIGNE, Les Essais, livre III, chapitre IX (extrait)', false, '[{"id": "A", "text": "Condamner les étrangers"}, {"id": "B", "text": "Exalter les compatriotes"}, {"id": "C", "text": "Rejeter la différence"}, {"id": "D", "text": "Défendre la diversité"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'يُشيد الكاتب ميشيل دو مونتين بمتعة التنوع الثقافي والانفتاح على عادات الآخرين[3]، وينتقد بشدة انغلاق مواطنيه ونفورهم مما يخالف تقاليدهم[3].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q48', 'exam_primary_2025_french_jan', 48, 'Types de textes — type dominant', 'Quel est le type dominant dans le texte suivant ? À deux kilomètres de Mulhouse, vers le Rhin, au milieu de la plaine fertile, le camp était dressé. Sous le jour finissant de cette soirée d’août, au ciel trouble, traversé de lourds nuages, les tentes-abris s’alignaient, les faisceaux luisaient, s’espaçaient régulièrement sur le front de bandière ; tandis que, fusils chargés, les sentinelles les gardaient, immobiles, les yeux perdus, là-bas, dans les brumes violâtres du lointain horizon, qui montaient du grand fleuve. Émile ZOLA, La Débâcle.', false, '[{"id": "A", "text": "Informatif"}, {"id": "B", "text": "Descriptif"}, {"id": "C", "text": "Injonctif"}, {"id": "D", "text": "Explicatif"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'يغلب على المقطع وصف مكان المعسكر والمشهد الطبيعي المحيط به باستخدام محددات مكانية، والزمن الماضي الناقص للوصف، وكثرة النعوت والتفاصيل البصرية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q49', 'exam_primary_2025_french_jan', 49, 'Littérature — compréhension de texte', 'Pour quelle raison le père Lambert décida-t-il de ne pas apprendre son métier à son fils Louis ? Louis Lambert naquit, en 1797, à Montoire, petite ville du Vendômois, où son père exploitait une tannerie de médiocre importance et comptait faire de lui son successeur ; mais les dispositions qu’il manifesta prématurément pour l’étude modifièrent l’arrêt paternel. D’ailleurs le tanneur et sa femme chérissaient Louis comme on chérit un fils unique et ne le contrariaient en rien. Honoré de Balzac, Louis Lambert, 1832.', false, '[{"id": "A", "text": "Louis est le fils unique du couple Lambert."}, {"id": "B", "text": "Le père Lambert trouve son métier trop difficile pour un petit enfant."}, {"id": "C", "text": "La maman Lambert choisit un autre métier pour son fils."}, {"id": "D", "text": "Le projet du père ne rapporte pas beaucoup."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'السبب الصريح المذكور في النص لتراجع الأب عن تعليم ابنه حرفته هو ما أبداه لويس من استعداد وميل مبكر للدراسة والعلم، وهذا السبب غير مذكور في أي من الاختيارات الأربعة الأولى.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q50', 'exam_primary_2025_french_jan', 50, 'Littérature — tonalité', 'Quelle est la tonalité dominante dans l’extrait suivant ? Ce fut une agonie effroyable, cette vieille bête, fracassée, immobilisée, se débattant à cette profondeur, loin du jour. Son cri de détresse ne cessait, le flot noyait sa crinière. [...] Il y eut un dernier ronflement, le bruit sourd d’un tonneau qui s’emplît. Puis un grand silence tomba. Émile Zola, Germinal, 1887.', false, '[{"id": "A", "text": "Tonalité pathétique"}, {"id": "B", "text": "Tonalité épique"}, {"id": "C", "text": "Tonalité ironique"}, {"id": "D", "text": "Tonalité fantastique"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'يصور النص معاناة مؤلمة واحتضاراً مروعاً لحيوان يغرق، باستعمال معجم الألم والاستغاثة لإثارة مشاعر الحزن والشفقة لدى القارئ[4].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q51', 'exam_primary_2025_french_jan', 51, 'Compréhension de texte', 'Pourquoi Monsieur Robert n’a-t-il pas coupé les branches du troisième arbre ? Monsieur Robert est venu avec son échelle et ses outils pour scier quelques branches dans les arbres du jardin public près de la gare. Il a réussi à couper les branches hautes des deux cyprès, mais il devra revenir la semaine prochaine pour le chêne centenaire.', false, '[{"id": "A", "text": "Il n’a pas fini de couper les branches des autres arbres."}, {"id": "B", "text": "Il n’avait pas de scie."}, {"id": "C", "text": "Le jardin était à côté de la gare."}, {"id": "D", "text": "Le portail du jardin était fermé."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'النص يكتفي بالإشارة إلى أن السيد روبير سيعود الأسبوع المقبل لتقليم الشجرة الثالثة دون بيان السبب، وجميع الأسباب المقترحة في الاختيارات الأربعة تتعارض مع معطيات النص أو لا علاقة لها بالسبب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q52', 'exam_primary_2025_french_jan', 52, 'Compréhension de texte — sentiments', 'D’après la phrase suivante, quel sentiment Sami éprouve-t-il ? Sami ne veut plus jouer au ballon avec Amine, car ce dernier est meilleur que lui.', false, '[{"id": "A", "text": "La paresse"}, {"id": "B", "text": "La joie"}, {"id": "C", "text": "L’indifférence"}, {"id": "D", "text": "La jalousie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'امتناع سامي عن اللعب مع أمين لمجرد أن هذا الأخير يتفوق عليه مهارةً يعكس بوضوح شعوراً بالغيرة من تفوقه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q53', 'exam_primary_2025_french_jan', 53, 'Figures de style — oxymore', 'De quelle figure de style s’agit-il dans la phrase suivante ? Antigone a levé sans étonnement ses yeux graves sur lui et elle lui a dit « oui » avec un petit sourire triste... (J. ANOUILH)', false, '[{"id": "A", "text": "La métonymie"}, {"id": "B", "text": "La personnification"}, {"id": "C", "text": "L’hyperbole"}, {"id": "D", "text": "L’oxymore"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الجمع المباشر في عبارة اسمية واحدة بين لفظين متضادين في الدلالة هما الابتسامة والحزن («sourire triste») يُعد مثالاً نموذجياً على هذا المحسن الأسلوبي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q54', 'exam_primary_2025_french_jan', 54, 'Compréhension — ordre du dialogue', 'Voici les répliques d’un dialogue, présentées en désordre et numérotées de 1 à 7 : 1. Je ne suis pas médecin, donc je ne peux pas vous prescrire de médicaments pour dormir. Avez-vous des raisons d’être stressée comme ça ? | 2. Bonjour madame. Puis-je vous aider ? | 3. Bon, écoutez, vous me semblez si fatiguée et nerveuse que je vous conseille d’aller voir un médecin. En attendant, je vous donne un traitement naturel à base de plantes, cela peut vous aider à vous relaxer. Et je vous conseille de faire une promenade le soir, puis de regarder un bon film, ça vous changera les idées. | 4. Ben en fait, je passe des entretiens d’embauche presque tous les jours... | 5. Oui, je pense tellement à tout ça que j’ai le cœur qui bat très vite ! En plus, je ne dors pas beaucoup, donc j’ai des douleurs dans le dos et les épaules. | 6. Oui, je suis très angoissée, je n’arrive plus à dormir depuis quelques jours, alors j’aimerais quelque chose pour dormir. | 7. Ah, je comprends : vous imaginez l’entretien prochain, c’est pour ça que vous n’arrivez pas à vous reposer ! Avez-vous d’autres symptômes ? — Laquelle de ces répliques constitue la fin du dialogue ?', false, '[{"id": "A", "text": "7"}, {"id": "B", "text": "3"}, {"id": "C", "text": "5"}, {"id": "D", "text": "1"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'وفق التسلسل المنطقي للحوار بين الصيدلي والزبونة (2 ثم 6 ثم 1 ثم 4 ثم 7 ثم 5 ثم 3)، تمثل الفقرة 3 الخلاصة التي يقدم فيها الصيدلي تشخيصه العام ونصائحه وعلاجاً طبيعياً لإنهاء المحادثة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'الردود السبع منقولة من ورقة الامتحان ومفصولة بـ « | »؛ السؤال عن الرد الذي يشكل خاتمة الحوار.')
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q55', 'exam_primary_2025_french_jan', 55, 'Versification — rimes', 'De quelle qualité et de quelle disposition de rimes s’agit-il dans la strophe suivante ? Le temps a laissé son manteau / De vent, de froidure et de pluie, / Et s’est vêtu de broderie, / De soleil luisant, clair et beau. Charles d’ORLÉANS', false, '[{"id": "A", "text": "Rimes suffisantes et embrassées"}, {"id": "B", "text": "Rimes riches et croisées"}, {"id": "C", "text": "Rimes pauvres et embrassées"}, {"id": "D", "text": "Rimes suffisantes et croisées"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'ترتيب القوافي يتبع النسق (ABBA) مما يجعلها متعانقة (embrassées)[5]، وهي فقيرة (pauvres) لأن الاشتراك الصوتي بين نهايات الأبيات يقتصر على صوت واحد فقط (الصائت [o] في manteau/beau، والصائت [i] في pluie/broderie)[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q56', 'exam_primary_2025_french_jan', 56, 'Versification — types de vers', 'De quel type de vers s’agit-il dans la strophe suivante ? J’ai longtemps habité sous de vastes portiques / Que les soleils marins teignaient de mille feux / Et que leurs grands piliers, droits et majestueux, / Rendaient pareils, le soir, aux grottes basaltiques. Charles Baudelaire, Les fleurs du mal.', false, '[{"id": "A", "text": "Des octosyllabes"}, {"id": "B", "text": "Des ennéasyllabes"}, {"id": "C", "text": "Des décasyllabes"}, {"id": "D", "text": "Des hendécasyllabe"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'يتألف كل بيت من أبيات هذا المقطع لبودلير من 12 مقطعاً صوتياً، وتُسمى هذه الأبيات بالإسكندرية (Des alexandrins)، وهو نوع غير مذكور ضمن الاختيارات (التي اقتصرت على 8 و9 و10 و11 مقطعاً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q57', 'exam_primary_2025_french_jan', 57, 'Compréhension — ordre des mots', 'Dans quelle liste les mots sont-ils classés selon l’ordre convenable pour compléter le texte suivant ? Ma ............ est bien cachée au milieu d’un grand jardin que gardent des ............ et des grilles de fer forgé. C’est un jardin ............ où ont poussé en vrac, des pelouses, des massifs de ............, une tonnelle couverte de clématites, des ............ fruitiers, un sapin bleu et une ............ à outils – maison de poupée, avec des ............ roses à la fenêtre et toiles d’araignées en prime. C’est un jardin que j’aime parce qu’il est plein de souvenirs de mon enfance et qu’il n’a rien d’organisé : les ............ y vivent en liberté, échevelées et foisonnantes.', false, '[{"id": "A", "text": "cabane ; plantes ; pot-pourri ; fleurs ; arbres ; maison ; rideaux ; murettes"}, {"id": "B", "text": "maison ; murettes ; cabane ; rideaux ; arbres ; pot-pourri ; fleurs ; plantes"}, {"id": "C", "text": "maison ; rideaux ; pot-pourri ; fleurs ; plantes; cabane ; murettes ; arbres"}, {"id": "D", "text": "maison ; murettes ; pot-pourri ; fleurs ; arbres ; cabane ; rideaux ; plantes"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'ينسجم هذا الترتيب نحوياً ودلالياً مع جميع فراغات النص (منزل محاط بأسوار منخفضة، حديقة متنوعة، أحواض زهور، أشجار مثمرة، كوخ للأدوات بستائر وردية، ونباتات تنمو بحرية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q58', 'exam_primary_2025_french_jan', 58, 'Littérature — ordre des vers', 'Voici les premiers vers d’un poème, présentés en désordre et numérotés de 1 à 4 : 1. Mourant presque de faim, vit au haut d’une treille | 2. Et couverts d’une peau vermeille. | 3. Des raisins, mûrs apparemment | 4. Certain renard gascon, d’autres disent normand, — Quel est le bon ordre de ces vers ?', false, '[{"id": "A", "text": "4 - 1 - 3 - 2"}, {"id": "B", "text": "3 - 2 - 4 - 1"}, {"id": "C", "text": "3 - 1 - 4 - 2"}, {"id": "D", "text": "1 - 2 - 4 - 3"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'هذا هو الترتيب الأصلي لمطلع حكاية «الثعلب والعنب» لجان دو لافونتين، والذي يحقق اكتمال المعنى النحوي (الفاعل ثم الفعل ثم المفعول به ونعته) وتناسق القوافي المتقاطعة (ABAB).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'الأبيات الأربعة منقولة من ورقة الامتحان ومفصولة بـ « | »؛ الاختيارات مرتبة عمودياً في الورقة ونُقلت هنا مفصولة بـ « - ».')
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q59', 'exam_primary_2025_french_jan', 59, 'Connecteurs logiques', 'Voici un texte à compléter avec des connecteurs logiques : .................... cette croûte, je m’évanouis quand mon crâne fut en contact avec la neige. ...................., le peu de chaleur qui me restait ayant fait fondre la neige autour de moi, je me trouvai, quand je repris connaissance, au centre d’une petite ouverture par laquelle je criai .................... longtemps que je le pus. ...................., alors le soleil se levait, j’avais .................... bien peu de chances pour être entendu. Quel est l’ordre convenable de ces connecteurs ?', false, '[{"id": "A", "text": "cependant - donc - aussi - mais - malgré"}, {"id": "B", "text": "malgré - cependant - aussi - mais - donc"}, {"id": "C", "text": "malgré - aussi - cependant - mais - donc"}, {"id": "D", "text": "mais - cependant - aussi - malgré - donc"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'يتوافق هذا الترتيب مع العلاقات المنطقية في النص (الاستدراك/التنازل بـ malgré، ثم المعارضة بـ cependant، ثم المقارنة المتساوية «aussi ... que»، ثم الاستدراك بـ mais، وأخيراً النتيجة بـ donc)، وهو المطابق للنص الأصلي لبلزاك في رواية «الكولونيل شابير»[7].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, NULL)
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

-- أسئلة امتحان: مادة التخصص: اللغة الفرنسية (دورة يناير 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_jan_q60', 'exam_primary_2025_french_jan', 60, 'Compréhension — ordre des phrases', 'Voici les phrases d’un texte, présentées en désordre et numérotées de 1 à 6 : 1. Car, futé, l’animal a réussi à retrouver la trace de la famille, qui venait de déménager. | 2. Or, rapidement, le mâtin n’a plus supporté la séparation. | 3. Il y a quelques semaines, il avait été placé à Nîmes, afin d’effectuer un stage de gardiennage. | 4. Rex est un splendide berger malinois de sept ans. | 5. Lundi, après avoir parcouru des centaines de kilomètres, il a montré son museau... au nouveau domicile familial. | 6. Et un beau matin, bien décidé à retrouver ses maîtres - qui vivent en Lorraine - le toutou a pris la poudre d’escampette. — Quel est l’ordre qui convient pour reconstituer ce texte ?', false, '[{"id": "A", "text": "3 - 6 - 4 - 1 - 5 - 2"}, {"id": "B", "text": "5 - 6 - 1 - 3 - 2 - 4"}, {"id": "C", "text": "3 - 4 - 2 - 6 - 1 - 5"}, {"id": "D", "text": "4 - 3 - 2 - 6 - 5 - 1"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'يبدأ النص بتقديم الكلب (4)، ثم ذكر سبب سفره للتدريب (3)، ثم عدم تحمله للفراق مسبوقاً برابط الاستدراك «Or» (2)، ثم هروبه (6)، ثم وصوله إلى المسكن الجديد (5)، وأخيراً تعليل تمكنه من إيجاد المسكن الجديد بـ «Car» (1).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1k_XHHfgl8ekvGdvk_khT6WDzYtTn6MlM', true, 'الجمل الست منقولة من ورقة الامتحان ومفصولة بـ « | »؛ الاختيارات مرتبة عمودياً في الورقة ونُقلت هنا مفصولة بـ « - ».')
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
