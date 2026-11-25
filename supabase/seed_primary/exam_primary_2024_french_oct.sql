-- ====================================================================
-- مباراتي — اللغة الفرنسية، مادة التخصص، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/اللغة الفرنسية - مادة التخصص - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/اللغة الفرنسية - مادة التخصص.pdf (13 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   رابط AI Studio: https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q31 إلى Q60 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد النحو والصرف والصوتيات
--     ونص الامتحان؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره
--     طرف ثالث (AI Studio).
--   * الأسئلة التفسيرية (Q47، Q50، Q52، Q53) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل.
--   * نصوص السؤال الطويلة (المقتطفات) وردت في ملف الحل بصيغة موجزة
--     "(Extrait : ...)"، وأُبقيت كما هي اتباعاً لاتفاقية الملف التجريبي؛
--     النصوص الكاملة للمقتطفات موجودة في ملف PDF.
--
-- تصحيح مهم — الغرامة (−1):
--   * ملف الحل يذكر غرامة نقطة واحدة (−1) عن كل جواب خاطئ، لكن غلاف ورقة
--     الامتحان نفسه (صفحة 1، القاعدتان 8 و9) ينص على: الجواب الصحيح = نقطة
--     واحدة (1)، والجواب الخاطئ = صفر (0). ورقة الامتحان هي المرجع، فلا
--     توجد غرامة −1 في هذا الامتحان. لا يوجد عمود في المخطط لتسجيل ذلك.
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (60 دقيقة) والمعامل (6) مأخوذان من غلاف ورقة الامتحان (صفحة 1:
--     «مدة الإنجاز: ساعة واحدة» و«المعامل: 6»). جدول exams لا يحتوي على
--     عمود للمعامل، فسُجِّل المعامل هنا فقط؛ وduration_minutes = 60.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (مثال: علامة على الخيار C
--     في Q51) — أُهملت تماماً.
--   * تنسيق الكلمات (تسطير «Attention» في Q31، و«y» بالخط العريض في Q32)
--     لا يُحفظ في النص العادي.
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_french_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على أرقام المصدر 31–60 (لا إعادة ترقيم).
--   subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي)، oct (دورة أكتوبر) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_french_oct', 'specialty_primary', 2024, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q31', 'exam_primary_2024_french_oct', 31, 'النحو — أصناف الكلمات', 'À quelle catégorie grammaticale le mot souligné appartient-il ?
Attention ! Tu vas te faire mal.', false, '[{"id": "A", "text": "Substantif"}, {"id": "B", "text": "Verbe"}, {"id": "C", "text": "Interjection"}, {"id": "D", "text": "Adverbe"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'كلمة « Attention » في الأصل اسم (substantif)، ولكنها عندما تُستعمل وحدها متبوعة بعلامة تعجب للتنبيه أو التحذير، فإنها تتحول نحوياً إلى أداة تعجب/نداء (Interjection) (وتحديداً اسم مستعمل كـ interjection).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q32', 'exam_primary_2024_french_oct', 32, 'النحو — الوظائف النحوية', 'Quelle est la fonction syntaxique du mot mis en gras dans la phrase suivante ?
Ce moment-là, nous ne nous y attendions pas.', false, '[{"id": "A", "text": "Complément d''objet direct"}, {"id": "B", "text": "Complément d''objet indirect"}, {"id": "C", "text": "Complément circonstanciel de lieu"}, {"id": "D", "text": "Complément circonstanciel de temps"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الفعل هو s''attendre à quelque chose (فعل متعدٍ غير مباشر). الضمير « y » يعوض المفعول غير المباشر « à ce moment-là » (Nous ne nous attendions pas à ce moment-là)، وبالتالي فوظيفته الإعرابية هي مفعول به غير مباشر (COI).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q33', 'exam_primary_2024_french_oct', 33, 'الإملاء — تطابق اسم المفعول', 'Laquelle des phrases suivantes contient un participe passé orthographié incorrectement ?', false, '[{"id": "A", "text": "Voici la lettre que j''ai voulu écrire."}, {"id": "B", "text": "Les deux amis se sont écrits plusieurs lettres."}, {"id": "C", "text": "Cette lettre est plus émouvante que je ne l''aurais cru."}, {"id": "D", "text": "Elles ont découvert les lettres qu''elles se sont lues."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'في الجملة B: الفعل الضميري s''écrire جاء معه المفعول به المباشر (COD) وهو « plusieurs lettres » بعد الفعل، بينما الضمير « se » هو مفعول غير مباشر (COI: l''un à l''autre). لذا يجب ألا يتطابق اسم المفعول، والصواب كتابة: Les deux amis se sont écrit plusieurs lettres (بدون s).
أما باقي الجمل فصحيحة: في (A) الضمير que مفعول للفعل المصدري écrire وليس لـ voulu؛ وفي (C) الضمير l'' محايد فيبقى cru ثابتاً؛ وفي (D) المفعول المباشر qu'' (= les lettres) جاء قبل الفعل فتطابق lues.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q34', 'exam_primary_2024_french_oct', 34, 'النحو — وظيفة الجملة الفرعية', 'Quelle est la fonction syntaxique de la proposition subordonnée dans la phrase suivante ?
Mon souhait est que tu réussisses.', false, '[{"id": "A", "text": "Complément d''objet direct"}, {"id": "B", "text": "Attribut du sujet"}, {"id": "C", "text": "Complément circonstanciel de but"}, {"id": "D", "text": "Attribut du complément"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الجملة الفرعية الموصولة بالمصدر المؤول (proposition subordonnée complétive conjonctive) « que tu réussisses » جاءت مباشرة بعد فعل الحالة (verbe d''état) « est » (être)، وبالتالي فهي تشغل وظيفة خبر للفاعل (Attribut du sujet) « Mon souhait ».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q35', 'exam_primary_2024_french_oct', 35, 'النحو — عدد الجمل', 'Combien y a-t-il de propositions dans la phrase suivante ?
Les ténèbres demeuraient profondes, mais la main du vieillard les avait comme emplies de grandes misères, que le jeune homme, inconsciemment, sentait à cette heure autour de lui, partout, dans l''étendue sans bornes. (É. ZOLA)', false, '[{"id": "A", "text": "Trois propositions"}, {"id": "B", "text": "Quatre propositions"}, {"id": "C", "text": "Cinq propositions"}, {"id": "D", "text": "Six propositions"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'نحدد عدد الجمل الفرعية/المستقلة (propositions) بعدد الأفعال المصرفة (verbes conjugués) في النص، وهي 3 أفعال:
Les ténèbres demeuraient profondes (جملة مستقلة)
mais la main du vieillard les avait comme emplies de grandes misères (جملة رئيسية معطوفة، والفعل مصرف في le plus-que-parfait)
que le jeune homme, inconsciemment, sentait à cette heure autour de lui... (جملة فرعية موصولة relative).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q36', 'exam_primary_2024_french_oct', 36, 'النحو — الجمل الفرعية الظرفية', 'Laquelle des phrases ci-dessous contient une proposition subordonnée circonstancielle ?', false, '[{"id": "A", "text": "La ville où je suis né n''est pas loin d''ici."}, {"id": "B", "text": "Je crois qu''il va faire beau."}, {"id": "C", "text": "Je me demande s''il va faire beau."}, {"id": "D", "text": "Je déménagerai demain, bien que la maison ne soit pas achevée."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الجملة الفرعية « bien que la maison ne soit pas achevée » هي جملة ظرفية دالة على الاستدراك/المعارضة (proposition subordonnée circonstancielle de concession) مبدوءة بأداة الربط bien que.
بينما (A) جملة موصولة (relative)، و(B) جملة مكملة (complétive conjonctive)، و(C) استفهامية غير مباشرة (interrogative indirecte).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q37', 'exam_primary_2024_french_oct', 37, 'الصرف — الشرطي الحاضر', 'Laquelle des phrases ci-dessous contient un verbe conjugué au conditionnel présent ?', false, '[{"id": "A", "text": "Vaguement, elle souriait de plaisir."}, {"id": "B", "text": "Les jours de pluie, il parcourait son journal."}, {"id": "C", "text": "À ta place, elle le secourrait sans aucun doute."}, {"id": "D", "text": "Il pleurait comme un enfant, en jetant les cinquante francs sur la table."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'الفعل « secourrait » (بحرفي rr) هو تصريف الفعل secourir في الشرطي الحاضر (conditionnel présent)، بخلاف الماضي الناقص الذي يكتب بحرف r واحد (secourait). كما أن سياق الجملة (À ta place...) يؤكد قيمة الشرط. أما الأفعال في (A: souriait)، (B: parcourait)، (D: pleurait) فكلها في الماضي الناقص (imparfait de l''indicatif).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q38', 'exam_primary_2024_french_oct', 38, 'المعجم — المرادفات', 'Dans quelle liste les mots présentés sont-ils tous synonymes du mot mis en gras ?', false, '[{"id": "A", "text": "Objecter : contester - protester - opposer - approcher - répliquer"}, {"id": "B", "text": "Soulager : alléger - clamer - adoucir - consoler - apaiser"}, {"id": "C", "text": "Durable : éternel - indélébile - permanent - altérable - perpétuel"}, {"id": "D", "text": "Subvenir : aider - subventionner - pourvoir - secourir - soutenir"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'جميع الكلمات في القائمة D هي مرادفات صحيحة للفعل Subvenir (يعين، يمول، يلبي الحاجيات، يسعف، يساند). بينما تحتوي باقي القوائم على كلمات دخيلة:
في A: كلمة approcher (يقترب) دخيلة.
في B: كلمة clamer (يصيح/ينادي) دخيلة (فخ لكلمة calmer).
في C: كلمة altérable (قابل للتلف/التغير) هي ضد كلمة durable وليست مرادفها (فخ لكلمة inaltérable).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q39', 'exam_primary_2024_french_oct', 39, 'النحو — المبني للمجهول', 'Laquelle des phrases ci-dessous est à la voix passive ?', false, '[{"id": "A", "text": "C''est par erreur qu''elle est rentrée par là."}, {"id": "B", "text": "Les joueurs de l''équipe nationale sont revenus de l''étranger."}, {"id": "C", "text": "Ils sont passés par Londres."}, {"id": "D", "text": "Elle est allée à la campagne par une belle journée de mars."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'جميع الجمل الأربع السابقة مبنية للمعلوم (voix active)، وأفعالها (rentrer, revenir, passer, aller) هي أفعال لازمة دالة على الحركة صُرّفت في الماضي المركب (passé composé) باستعمال الفعل المساعد être، وليست مبنية للمجهول.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q40', 'exam_primary_2024_french_oct', 40, 'تكوين الكلمات — التركيب العالم', 'Par quel procédé le mot « thermomètre » est-il formé ?', false, '[{"id": "A", "text": "Composition savante"}, {"id": "B", "text": "Suffixation"}, {"id": "C", "text": "Composition populaire"}, {"id": "D", "text": "Préfixation"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'كلمة « thermomètre » مركبة من جذرين يونانيين: thermo- (من اليونانية thermos بمعنى حرارة) و -mètre (من اليونانية metron بمعنى قياس). ويُسمى تركيب الكلمات من جذور إغريقية أو لاتينية بـ التركيب العالم (Composition savante).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q41', 'exam_primary_2024_french_oct', 41, 'الإملاء — التجانس اللفظي', 'Lequel des mots ci-dessous convient pour compléter la phrase suivante ?
Je lui ai envoyé son invitation dans une enveloppe en ................', false, '[{"id": "A", "text": "sois"}, {"id": "B", "text": "soit"}, {"id": "C", "text": "soi"}, {"id": "D", "text": "soie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'المقصود في الجملة المادة/النسيج الذي صُنع منه الظرف، أي الحرير (la soie): une enveloppe en soie. أما sois/soit ففعل أو رابط، وsoi ضمير شخصي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q42', 'exam_primary_2024_french_oct', 42, 'الصوتيات — الصفات النطقية', 'Lequel des phonèmes, ci-dessous, correspond aux traits articulatoires suivants ?
Consonne : nasale ; sonore ; bilabiale ; occlusive', false, '[{"id": "A", "text": "[b]"}, {"id": "B", "text": "[t]"}, {"id": "C", "text": "[n]"}, {"id": "D", "text": "[p]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'الصامت (الفونيم) الذي يجمع بين الصفات النطقية: أنفي (nasale)، مجهور (sonore)، شفتاني (bilabiale)، انفجاري (occlusive) هو الصوت [m]. وبما أن [m] غير موجود ضمن الاختيارات (فـ [b] و[p] غير أنفيين، و[n] لثوي/أسناني وليس شفتانياً، و[t] مهموس وأسناني وغير أنفي)، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q43', 'exam_primary_2024_french_oct', 43, 'الصوتيات — الفونيم [t]', 'Dans quel choix entend-on le phonème [t] ?', false, '[{"id": "A", "text": "La démocratie"}, {"id": "B", "text": "Des portions"}, {"id": "C", "text": "Des acrobaties"}, {"id": "D", "text": "Un grand arrêt"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'عند الوصل الصوتي (la liaison) في عبارة « Un grand arrêt » [œ̃ ɡʁɑ̃.t‿a.ʁɛ]، يُنطق حرف d في آخر الصفة grand صوتاً مهموساً [t] قبل الحرف الصائت. أما في (A: démocratie)، (B: portions)، (C: acrobaties) فإن المقطع « ti » يُنطق [s] ولا يُسمع فيها الصوت [t] إطلاقاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q44', 'exam_primary_2024_french_oct', 44, 'الصوتيات — الوصل', 'Dans quel choix la liaison est-elle obligatoire ?', false, '[{"id": "A", "text": "En haut"}, {"id": "B", "text": "Les chiens aboient."}, {"id": "C", "text": "Un goût acide"}, {"id": "D", "text": "Les hirondelles"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الوصل الصوتي واجب (obligatoire) بين أداة التعريف « Les » والاسم المبدوء بحرف « h » صامت (h muet) في « hirondelles » فتُنطق [le.z‿i.ʁɔ̃.dɛl].
أما في (A) فـ haut يبدأ بـ h aspiré (الوصل ممنوع)، وفي (B) الوصل ممنوع بين الفاعل الاسمي والفعل، وفي (C) الوصل ممنوع بين الاسم المفرد والصفة التي تليه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q45', 'exam_primary_2024_french_oct', 45, 'الصوتيات — التفكيك الصوتي', 'Quelle est la transcription phonétique correcte du mot « occasionnellement » ?', false, '[{"id": "A", "text": "[ɔkazjɔnɛlmɑ̃]"}, {"id": "B", "text": "[ɔkazjɔnɛlmɔ̃]"}, {"id": "C", "text": "[ɔkaziɔnɛlmɔ̃]"}, {"id": "D", "text": "[ɔkazjɔnɛlemɑ̃]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'التفكيك الصوتي الصحيح للكلمة هو: o [ɔ] + cc [k] + a [a] + s [z] + i [j] + o [ɔ] + nn [n] + e [ɛ] + ll [l] + e (صامت) + ment [mɑ̃].
الاختياران B وC خاطئان لوجود [ɔ̃] بدلاً من [ɑ̃] في النهاية، والاختيار D خاطئ لإثباته صوت [e] بدل الصامت.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q46', 'exam_primary_2024_french_oct', 46, 'الأدب — الأجناس الأدبية', 'À quel genre littéraire l''extrait suivant appartient-il ?
(Extrait : De Mme de SÉVIGNÉ à Mme de GRIGNAN – À Livry, jeudi au soir 2 novembre 1679... Madame de SÉVIGNÉ, Lettres choisies.)', false, '[{"id": "A", "text": "Genre narratif"}, {"id": "B", "text": "Genre argumentatif"}, {"id": "C", "text": "Genre théâtral"}, {"id": "D", "text": "Genre épistolaire"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'النص عبارة عن رسالة تحتوي على المرسل والمرسل إليه والمكان والتاريخ، ومقتطفة من مؤلف Lettres choisies لمدام دو سيفيني، وهو ما يندرج ضمن الجنس الترسلي (Genre épistolaire).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q47', 'exam_primary_2024_french_oct', 47, 'فهم النص — غاية النص', 'Quelle est la visée du texte suivant ?
(Extrait : Le guépard est une bête bien sympathique : sympathique, parce qu''il n''est pas cruel et que, de tout temps, il fut un animal fort facile à apprivoiser... D''après André DEMAISON)', false, '[{"id": "A", "text": "Décrire l''aspect physique du guépard"}, {"id": "B", "text": "Décrire le lieu de vie du guépard"}, {"id": "C", "text": "Expliquer un trait de caractère du guépard"}, {"id": "D", "text": "Informer sur l''origine du guépard"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'يركز النص منذ بدايته على سمة من سمات شخصية/طبع الفهد (bien sympathique) ويشرع في تفسير سببها باستعمال رابط التعليل (parce qu''il n''est pas cruel... facile à apprivoiser... accepte volontiers l''amitié...). ولم يتطرق لوصفه الجسدي أو أصله أو موطنه بشكل وصفي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, 'تفسير تحليلي لغاية النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q48', 'exam_primary_2024_french_oct', 48, 'أنواع النصوص — النمط التفسيري', 'Quel est le type dominant dans le texte suivant ?
(Extrait : On a observé que les pincettes de cheminée... acquièrent avec le temps une force magnétique... Pour avoir la raison de ce phénomène... L. Euler, Lettre à une princesse d''Allemagne...)', false, '[{"id": "A", "text": "Narratif"}, {"id": "B", "text": "Descriptif"}, {"id": "C", "text": "Argumentatif"}, {"id": "D", "text": "Explicatif"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'يطرح النص ظاهرة علمية/فيزيائية ملاحظة (On a observé que...) ثم يقدم تفسيرها العلمي وأسبابها (Pour avoir la raison de ce phénomène... conséquemment...)، وهذا هو النمط التفسيري (Explicatif).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q49', 'exam_primary_2024_french_oct', 49, 'المسرح — المصطلحات المسرحية', 'Par quel terme désigne-t-on la réplique de CRÉON dans l''extrait suivant ?
(Extrait de Jean ANOUILH, Antigone : longue réplique de Créon adressée à Antigone)', false, '[{"id": "A", "text": "Monologue"}, {"id": "B", "text": "Aparté"}, {"id": "C", "text": "Tirade"}, {"id": "D", "text": "Répartie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'في المسرح، يُطلق مصطلح Tirade على الكلام المسرحي الطويل الذي يلقيه أحد الشخصيات دون مقاطعة، ويكون موجهاً لشخصية أخرى حاضرة على الخشبة (هنا كريون يخاطب أنتيغون مباشرة بـ tu). أما الـ Monologue فيكون حين تتحدث الشخصية بمفردها مع نفسها، والـ Aparté كلام جانبي لا تسمعه الشخصية الأخرى، والـ Répartie رد قصير وسريع.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q50', 'exam_primary_2024_french_oct', 50, 'الأدب — النبرة', 'Quelle est la tonalité dominante dans l''extrait suivant ?
(Extrait de Charles DICKENS, Les Aventures d''Oliver Twist : La nuit était froide et sombre... réunir dans un mouchoir le peu d''effets qu''il possédait, il s''assit sur un banc et attendit les premières clartés du matin.)', false, '[{"id": "A", "text": "Tonalité tragique"}, {"id": "B", "text": "Tonalité épique"}, {"id": "C", "text": "Tonalité pathétique"}, {"id": "D", "text": "Tonalité lyrique"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'يصور المقطع حالة طفل وحيد وفقير في ليلة باردة ومظلمة وموحشة، يجمع ما تبقى له من أغراض قليلة في منديل ويجلس على مقعد منتظراً الصباح، وهو مشهد يثير مشاعر الشفقة والتعاطف (la pitié et la compassion) لدى القارئ، وهذا ما يميز النبرة/السجل المؤثر أو المثير للشفقة (Tonalité pathétique).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, 'تحديد تحليلي للنبرة المهيمنة؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q51', 'exam_primary_2024_french_oct', 51, 'النحو — قيمة المستقبل البسيط', 'Quelle est la valeur du futur simple dans la phrase suivante ?
On sonne ; ce sera mon voisin.', false, '[{"id": "A", "text": "Une action à venir"}, {"id": "B", "text": "Une demande"}, {"id": "C", "text": "Une supposition"}, {"id": "D", "text": "Un fait soumis à une condition"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'استُعمل المستقبل البسيط (sera) هنا للتعبير عن افتراض أو ترجيح (supposition / probabilité) بخصوص حدث يقع في الحاضر (بمعنى: لابد أنه جاري / أظن أنه جاري).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q52', 'exam_primary_2024_french_oct', 52, 'فهم النص — صفات الشخصية', 'D''après l''extrait de conte suivant, par quel trait de caractère se distingue l''hyène ?
(Extrait : Une hyène n''avait plus rien à manger... propose un marché à l''aveugle : elle lui donne la vue ; en échange, il lui apprend les formules magiques...)', false, '[{"id": "A", "text": "La convoitise"}, {"id": "B", "text": "La générosité"}, {"id": "C", "text": "L''indifférence"}, {"id": "D", "text": "La solidarité"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'أظهرت الضبع الطمع والجشع (la convoitise) فيما يحصل عليه الأعمى بسهولة من طعام بفضل التعاويذ السحرية، إلى درجة أنها قايضت بصرها مقابل تلك التعاويذ دون تفكير في العواقب. ولا يتعلق الأمر بالكرم (لأنها طلبت مقابلاً) ولا بالتضامن أو اللامبالاة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, 'استنتاج تحليلي لصفة الشخصية من النص؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q53', 'exam_primary_2024_french_oct', 53, 'فهم النص — العبرة', 'Quelle moralité peut-on dégager de l''histoire suivante ?
(Extrait : Le Sage finit par avouer : « Maintenant, tu sais ce que tu as besoin de savoir, tu as appris que tu ne sauras jamais tout ce qu''il y a à savoir, et tu as enfin appris à être humble et à accepter l''imperfection. »)', false, '[{"id": "A", "text": "On peut atteindre le savoir absolu dans les grottes."}, {"id": "B", "text": "On peut atteindre le savoir absolu en acceptant son imperfection."}, {"id": "C", "text": "On peut atteindre le savoir absolu par la lecture des piles de livres."}, {"id": "D", "text": "On peut atteindre le savoir absolu en ayant confiance en soi."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'هذا السؤال يحتوي على فخ دقيق: جميع الاختيارات الأربعة (A, B, C, D) تبدأ بعبارة « On peut atteindre le savoir absolu... » (يمكن بلوغ المعرفة المطلقة...)، وهذا يناقض تماماً العبرة الصريحة في النص التي أكد فيها الحكيم لتلميذه: « tu as appris que tu ne sauras jamais tout ce qu''il y a à savoir » (لا يمكن أبداً الإلمام بكل المعارف، بل يجب التواضع وتقبّل النقص). لذا فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, 'استنتاج تحليلي للعبرة؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q54', 'exam_primary_2024_french_oct', 54, 'البلاغة — الصور البيانية', 'De quelle figure de style s''agit-il dans la phrase suivante ?
Cet élève maîtrise bien la langue de Molière.', false, '[{"id": "A", "text": "La litote"}, {"id": "B", "text": "La périphrase"}, {"id": "C", "text": "La métonymie"}, {"id": "D", "text": "La métaphore"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'تعبير « la langue de Molière » يحل محل كلمة واحدة هي « le français » (اللغة الفرنسية) باستعمال عبارة وصفية متعددة الكلمات، وهذه الصورة البلاغية تُعرف بـ الكناية الإطنابية (La périphrase).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q55', 'exam_primary_2024_french_oct', 55, 'العروض — القوافي', 'De quelle qualité et de quelle disposition de rimes s''agit-il dans la strophe suivante ?
Une aube affaiblie
Verse par les champs
La mélancolie
Des soleils couchants.
(Paul VERLAINE, Soleils couchants.)', false, '[{"id": "A", "text": "Rimes riches et croisées"}, {"id": "B", "text": "Rimes suffisantes et plates"}, {"id": "C", "text": "Rimes suffisantes et croisées"}, {"id": "D", "text": "Rimes pauvres et embrassées"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'الترتيب (Disposition): القوافي تتعاقب على نسق ABAB (affaiblie / champs / mélancolie / couchants)، إذن فهي قوافٍ متقاطعة (rimes croisées).
الجودة (Qualité):
affaiblie / mélancolie: يشتركان في صوتين فقط هما [l] + [i] = [li].
champs / couchants: يشتركان في صوتين فقط هما [ʃ] + [ɑ̃] = [ʃɑ̃].
وبما أن عدد الأصوات المشتركة هو صوتان (2 phonèmes)، فالقافية تُصنّف كافية (rime suffisante).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q56', 'exam_primary_2024_french_oct', 56, 'العروض — أنواع الأبيات', 'De quel type de vers s''agit-il dans la strophe suivante ?
Des nuits du blond et de la brune
Pas un souvenir n''est resté ;
Pas une dentelle d''été,
Pas une cravate commune.
(Arthur RIMBAUD)', false, '[{"id": "A", "text": "Des hexasyllabes"}, {"id": "B", "text": "Des heptasyllabes"}, {"id": "C", "text": "Des octosyllabes"}, {"id": "D", "text": "Des décasyllabes"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'بتقطيع الأبيات وفق قواعد العروض الفرنسي (حيث لا يُحسب حرف « e » الصامت في نهاية البيت، ويُحسب إذا تلاه حرف ساكن):
Des / nuits / du / blond / et / de / la / bru(ne) = 8 مقاطع
Pas / un / sou / ve / nir / n''est / res / té = 8 مقاطع
Pas / u / ne / den / tel / le / d''é / té = 8 مقاطع
Pas / u / ne / cra / va / te / com / mu(ne) = 8 مقاطع
إذن فهي أبيات ثمانية المقاطع (octosyllabes).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q57', 'exam_primary_2024_french_oct', 57, 'المعجم — ترتيب كلمات الوصف', 'Dans quelle liste les mots sont-ils classés selon l''ordre convenable pour compléter le texte suivant ?
Martin était un homme costaud avec de larges ......... ; ses ......... étaient d''un blond cendré ; il avait le ......... rond, le ......... dégagé, le ......... droit, les ......... marron, le ......... gros par le bout, et les ......... d''une teinte jaunâtre.', false, '[{"id": "A", "text": "épaules - dents - visage - front - menton - yeux - nez - cheveux"}, {"id": "B", "text": "épaules - cheveux - visage - front - menton - yeux - nez - dents"}, {"id": "C", "text": "yeux - cheveux - visage - front - nez - épaules - menton - dents"}, {"id": "D", "text": "yeux - dents - front - visage - menton - épaules - nez - cheveux"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'بملء الفراغات وفق الترتيب B نحصل على وصف جسدي متناسق ومنطقي تماماً:
de larges épaules (أكتاف عريضة)
ses cheveux étaient d''un blond cendré (شعر أشقر رمادي)
le visage rond (وجه مستدير)
le front dégagé (جبين عريض/مكشوف)
le menton droit (ذقن مستقيم)
les yeux marron (عينان بنيتان)
le nez gros par le bout (أنف ضخم من طرفه)
les dents d''une teinte jaunâtre (أسنان مائلة للاصفرار).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q58', 'exam_primary_2024_french_oct', 58, 'الأدب — ترتيب الأبيات', 'Voici les vers d''une strophe, présentés en désordre et numérotés de 1 à 4 :
Et la nuque baignant dans le frais cresson bleu,
Pâle dans son lit vert où la lumière pleut.
Un soldat jeune, bouche ouverte, tête nue,
Dort ; il est étendu dans l''herbe, sous la nue,
Quel est le bon ordre de ces vers ?', false, '[{"id": "A", "text": "2 - 1 - 4 - 3"}, {"id": "B", "text": "3 - 2 - 4 - 1"}, {"id": "C", "text": "3 - 1 - 4 - 2"}, {"id": "D", "text": "4 - 1 - 3 - 2"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'هذه الرباعية مقتطفة من قصيدة آرثر رامبو الشهيرة Le Dormeur du val، وترتيبها النحوي والدلالي والعروضي (قوافٍ متقاطعة: nue / bleu / nue / pleut) هو:
3. Un soldat jeune, bouche ouverte, tête nue, (الفاعل)
1. Et la nuque baignant dans le frais cresson bleu, (عطف على الحال)
4. Dort ; il est étendu dans l''herbe, sous la nue, (الفعل الرئيسي)
2. Pâle dans son lit vert où la lumière pleut. (الختام بنقطة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q59', 'exam_primary_2024_french_oct', 59, 'فهم النص — بنية الحكاية', 'Parmi les parties du conte, données en désordre et numérotées de 1 à 5 dans le tableau ci-dessous, laquelle en constitue la situation finale ?
C''est alors qu''un troubadour se présenta au propriétaire de la ferme...
Sur le même endroit, il composa une mélodie tout à fait différente qui attira cette fois tous les moutons de la ferme. Ces derniers le suivirent jusqu''à une grotte où ils furent enfermés.
Jadis, une grande ferme fut envahie par les rats...
Mais de retour, il ne reçut pas la récompense espérée et jura de se venger.
Le jeune homme se rendit sur endroit élevé et joua de la flûte...', false, '[{"id": "A", "text": "5"}, {"id": "B", "text": "2"}, {"id": "C", "text": "1"}, {"id": "D", "text": "4"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الترتيب الزمني السليم لأحداث الحكاية هو:
3 (البداية: غزو الفئران للمزرعة)
← 1 (ظهور العازف واتفاقه مع صاحب المزرعة)
← 5 (إغراق الفئران بالموسيقى)
← 4 (رفض منحه المكافأة وتوعده بالانتقام)
← 2 (الوضعية النهائية / الانتقام: استدراج خراف المزرعة وحبسها في المغارة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة أكتوبر 2024) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_french_oct_q60', 'exam_primary_2024_french_oct', 60, 'فهم النص — ترتيب النص', 'Voici les parties d''un texte, présentées en désordre et numérotées de 1 à 5 :
Je te reconnais ! Ne te fais pas de souci, je t''ai donné ce qu''il faut, le rassure le pharmacien.
J''aimerais que vous me redonniez quelque chose pour soigner mon chat. Je suis déjà venu hier et le médicament ne fait pas effet.
Après l''avoir remercié, Julien est rentré chez lui afin de veiller sur Mistigri.
Julien est allé à la pharmacie pour son chat.
Il est très inquiet pour lui, car il est malade. Haletant, il demande dès son entrée :
Quel est l''ordre qui convient pour reconstituer ce texte ?', false, '[{"id": "A", "text": "4 - 5 - 2 - 1 - 3"}, {"id": "B", "text": "4 - 3 - 5 - 1 - 2"}, {"id": "C", "text": "3 - 4 - 1 - 5 - 2"}, {"id": "D", "text": "3 - 4 - 5 - 2 - 1"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'التسلسل المنطقي واللغوي للنص هو:
4: تقديم الشخصية والحدث (ذهاب جوليان إلى الصيدلية من أجل قطه).
5: بيان قلقه وتمهيده للحوار بنقطتي التفسير (il demande dès son entrée :).
2: كلام جوليان وطلبه للدواء.
1: رد الصيدلي وطمأنته له.
3: النهاية (بعد شكر الصيدلي، عاد جوليان إلى بيته للاعتناء بقطه).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1AyBT4UZNnGwd0FiftGDR244sPAEavQP3', true, NULL)
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
