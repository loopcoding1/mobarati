-- ====================================================================
-- مباراتي — اللغة الفرنسية، مادة التخصص، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/اللغة الفرنسية - مادة التخصص - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 36؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/اللغة الفرنسية - مادة التخصص - دورة نونبر 2025.pdf (12 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q31 إلى Q60 وخياراته الخمسة (A-E) مطابقة لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد اللغة الفرنسية ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التحليلية (Q35، Q36، Q46، Q47، Q48، Q50، Q51، Q52، Q53، Q55، Q56) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل.
--
-- ملاحظات عن ملف الامتحان:
--   * صفحات الملف مخلوطة الترتيب في الملف نفسه (صفحة PDF 1 = صفحة الامتحان 2،
--     وصفحة PDF 2 = صفحة الامتحان 12)؛ رُوجعت كل الصفحات الـ12 وتطابقت الأسئلة.
--   * الصفحة الأخيرة من الملف نسخة مكررة من الصفحة الأولى (Q31–Q34) — كما هو مذكور في ملف الحل.
--   * صفحة الغلاف (1/12) مفقودة من الملف؛ المدة (60 دقيقة) والمعامل (6) هما المدة والمعامل
--     الرسميان لمادة التخصص (الفرنسية) في مباراة التعليم الابتدائي (التخصص المزدوج) —
--     نفس البنية في دورة 2023 (mesconcours.ma: 1س، معامل 6) وفي إعلان دورة نونبر 2026.
--     جدول exams لا يحوي عمود معامل؛ المعامل مسجل في ملف progress المرافق فقط.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات و✓) — أُهملت تماماً.
--   * مقتطفات Q46 وQ49 وQ50 وQ53 وQ58 أُدرجت كاملة من ورقة الامتحان (ملف الحل اختصرها)؛
--     أسماء الناشرين (Beaumarchais، Chénier، Hugo، Banville، Arrou-Vignod، Dickens، Anouilh)
--     أُضيفت من ورقة الامتحان؛ علامتا (A)/(B) في Q55 من ملف الحل حُذفتا لأنهما ليستا في الورقة.
--   * في Q58، البيانات الشخصية للمرشحة في نموذج الرسالة مطموسة في الورقة نفسها؛
--     أُدرجت كما هي مع [...] موضع الطمس، على غرار [...] لاسم الشركة في ملف الحل.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_french_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_french_nov', 'specialty_primary', 2025, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q31', 'exam_primary_2025_french_nov', 31, 'النحو — أقسام الكلام', 'À quelle catégorie grammaticale le mot souligné dans la phrase suivante appartient-il ?
Ces filles parlent tout doucement.', false, '[{"id": "A", "text": "Substantif"}, {"id": "B", "text": "Adjectif"}, {"id": "C", "text": "Verbe"}, {"id": "D", "text": "Adverbe"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'كلمة doucement هي ظرف حال (Adverbe de manière) غير متغير، مشتق من الصفة المؤنثة douce بإضافة اللاحقة -ment، ويقوم بتحديد كيفية وقوع الفعل (parlent).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q32', 'exam_primary_2025_french_nov', 32, 'النحو — الوظائف النحوية', 'Quelle est la fonction syntaxique du groupe de mots soulignés dans la phrase suivante ?
Les voyageurs sortent de la gare.', false, '[{"id": "A", "text": "Complément d''objet indirect"}, {"id": "B", "text": "Complément de nom"}, {"id": "C", "text": "Complément circonstanciel de lieu"}, {"id": "D", "text": "Complément d''objet direct"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'المجموعة الاسمية de la gare تجيب عن السؤال « من أين يخرج المسافرون؟ » (Les voyageurs sortent d''où ?)، وبالتالي فهي تحدد مكان الانطلاق/الخروج، ووظيفتها النحوية هي Complément circonstanciel de lieu (CCL).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q33', 'exam_primary_2025_french_nov', 33, 'النحو — الاستفهام', 'Laquelle des phrases interrogatives suivantes est incorrectement formulée ?', false, '[{"id": "A", "text": "Majid partira-t-il tôt demain ?"}, {"id": "B", "text": "Est-ce que Majid partira-t-il tôt demain ?"}, {"id": "C", "text": "Majid partira tôt demain ?"}, {"id": "D", "text": "Est-ce que Majid partira tôt demain ?"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الجملة B خاطئة تركيبياً لأنها جمعت بين صيغتين للاستفهام في آن واحد: استخدام أداة الاستفهام Est-ce que مع قلب الفاعل والفعل (partira-t-il)، وهذا غير مقبول في اللغة الفرنسية؛ أما الجمل A وC وD فهي صحيحة وتمثل المستويات اللغوية الثلاثة (soutenu, familier, courant).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q34', 'exam_primary_2025_french_nov', 34, 'النحو — الجملة البسيطة والمركبة', 'Laquelle des phrases suivantes est une phrase simple ?', false, '[{"id": "A", "text": "Le petit garçon prend son cartable et se dirige vers l''école."}, {"id": "B", "text": "S''il continue à pleuvoir, je resterai à la maison."}, {"id": "C", "text": "Un mois après cette visite, monsieur Goriot en reçut une autre."}, {"id": "D", "text": "Dès que je vous ferai signe, vous lancerez le diaporama."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'الجملة البسيطة (phrase simple) تحتوي على فعل مصرف واحد فقط (جملة نواة واحدة). في الجملة C يوجد فعل مصرف واحد فقط وهو (reçut). بينما الجمل الأخرى مركبة (phrases complexes) لأنها تحتوي على فعلين مصرفين: (A: prend / se dirige، B: continue / resterai، D: ferai / lancerez).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q35', 'exam_primary_2025_french_nov', 35, 'النحو — الجمل الجزئية', 'Combien y a-t-il de propositions dans la phrase suivante ?
Le charretier était debout, un vieillard vêtu d''un tricot de laine violette, coiffé d''une casquette en poil de lapin ; pendant que son cheval, un gros cheval jaune, attendait, dans une immobilité de pierre, qu''on eût vidé les six berlines montées par lui. (ZOLA)', false, '[{"id": "A", "text": "Deux propositions"}, {"id": "B", "text": "Trois propositions"}, {"id": "C", "text": "Quatre propositions"}, {"id": "D", "text": "Cinq propositions"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'يُحدد عدد الجمل الجزئية (propositions) بعدد الأفعال المصرفة، وهي ثلاثة في هذا النص:
était (جملة رئيسية: Le charretier était debout...)
attendait (جملة تابعة ظرفية للزمان: pendant que son cheval... attendait...)
eût vidé (جملة تابعة مكملة: qu''on eût vidé les six berlines...)
(أما الكلمات vêtu وcoiffé وmontées فهي مجرد صفات مشتقة من اسم المفعول participes passés employés comme adjectifs وليست جملاً مستقلة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'عدد الجمل الجزئية تحليلي (يُحسب بعدد الأفعال المصرفة)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q36', 'exam_primary_2025_french_nov', 36, 'النحو — الجمل التابعة', 'Laquelle des phrases suivantes contient une proposition subordonnée complétive ?', false, '[{"id": "A", "text": "Nous avons perdu les trois points dont nous avions besoin."}, {"id": "B", "text": "Le stade où se déroule le match n''est pas loin d''ici."}, {"id": "C", "text": "Je te parle de la cause pour laquelle je me bats."}, {"id": "D", "text": "L''équipe que nous avons vaincue s''est disqualifiée."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'جميع الجمل المقترحة (A، B، C، D) تحتوي على جمل موصولة (propositions subordonnées relatives) تكمل اسماً سابقاً (antécédent) ومسبوقة بضمائر وصل (dont يعود على points، où يعود على stade، pour laquelle يعود على cause، que يعود على équipe)، ولا توجد أي جملة مكملة (complétive) في الاختيارات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'لا توجد جملة مكملة (complétive) في الاختيارات؛ كلها جمل موصولة (relatives)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q37', 'exam_primary_2025_french_nov', 37, 'الصرف — تصريف الأفعال', 'À quel temps et à quel mode le verbe souligné dans la phrase suivante est-il conjugué ?
Tous les dangers que nous courions m''apparurent en même temps.', false, '[{"id": "A", "text": "À l''imparfait de l''indicatif"}, {"id": "B", "text": "Au présent de l''indicatif"}, {"id": "C", "text": "Au futur simple de l''indicatif"}, {"id": "D", "text": "Au présent du conditionnel"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'الفعل courir في صيغة الماضي الناقص (imparfait de l''indicatif) مع الضمير nous يُصرف هكذا: nous courions (بحرف r واحد)، والسياق هنا إخباري واقعي في الماضي مع الفعل apparurent. (لو كان في صيغة الشرط conditionnel présent لكُتب بحرفي r: nous courrions).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q38', 'exam_primary_2025_french_nov', 38, 'المعجم — العلاقات المعجمية', 'Quelle relation lexicale les deux mots suivants entretiennent-ils ?
(Cinéphile ; Cynophile)', false, '[{"id": "A", "text": "L''antonymie"}, {"id": "B", "text": "La paronymie"}, {"id": "C", "text": "L''homonymie"}, {"id": "D", "text": "La synonymie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'الكلمتان متقاربتان جداً في النطق والكتابة (وليستا متطابقتين تماماً في النطق: [sinefil] مقابل [sinɔfil]) وتختلفان في المعنى (cinéphile محب السينما، وcynophile محب الكلاب)، وهذه هي العلاقة المعجمية المسماة بـ التجانس الصوتي التقريبي (La paronymie).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q39', 'exam_primary_2025_french_nov', 39, 'النحو — المبني للمجهول', 'Quelle est la transformation correcte de la phrase suivante à la voix passive ?
Cet apprenant a rapidement résolu la situation-problème.', false, '[{"id": "A", "text": "La situation-problème fut rapidement résolue par cet apprenant."}, {"id": "B", "text": "La situation-problème est rapidement résolue par cet apprenant."}, {"id": "C", "text": "La situation-problème sera rapidement résolue par cet apprenant."}, {"id": "D", "text": "La situation-problème a été rapidement résolue par cet apprenant."}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'عند التحويل إلى المبني للمجهول (voix passive)، يُصرف الفعل المساعد être في نفس زمن الفعل الأصلي. الفعل a résolu مصرف في الماضي المركب (passé composé)، فيصبح a été متبوعاً باسم المفعول متوافقاً في التأنيث والإفراد مع la situation-problème ليصير résolue.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q40', 'exam_primary_2025_french_nov', 40, 'الصرف — الاشتقاق', 'Par quel procédé le mot « tremblement » est-il formé ?', false, '[{"id": "A", "text": "La composition savante"}, {"id": "B", "text": "La suffixation"}, {"id": "C", "text": "La dérivation parasynthétique"}, {"id": "D", "text": "La préfixation"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'تتكون كلمة tremblement من جذر الفعل (trembl-) مضافاً إليه اللاحقة (suffixe) (-ement)، إذن هي عملية اشتقاق باللواحق (La suffixation).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q41', 'exam_primary_2025_french_nov', 41, 'المعجم — التجانس', 'Lequel des mots convient pour compléter la phrase suivante ?
Mon cousin s''occupe de l''élevage du ...................... à soie.', false, '[{"id": "A", "text": "vert"}, {"id": "B", "text": "verre"}, {"id": "C", "text": "ver"}, {"id": "D", "text": "vers"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'المقصود هو « دودة القز » (le ver à soie)، وكلمة ver تعني الدودة (في المفرد المذكر لوجود du). أما vert فتعني أخضر، verre تعني كأس/زجاج، وvers تعني نحو/بيت شعري.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q42', 'exam_primary_2025_french_nov', 42, 'الصوتيات — أنصاف الحركات', 'Quelle est la liste exacte des semi-voyelles du français ?', false, '[{"id": "A", "text": "[j] ; [ɥ] ; [w]"}, {"id": "B", "text": "[j] ; [y] ; [w]"}, {"id": "C", "text": "[j] ; [ɥ] ; [u]"}, {"id": "D", "text": "[i] ; [ɥ] ; [w]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'أشباه الصوائت (أو أنصاف الحركات les semi-voyelles / semi-consonnes) في اللغة الفرنسية عددها ثلاثة فقط، وهي: [j] (كما في pied)، و[ɥ] (كما في nuit)، و[w] (كما في oui). أما الأصوات [y] و[u] و[i] فهي صوائت كاملة (voyelles).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q43', 'exam_primary_2025_french_nov', 43, 'الصوتيات — الأصوات', 'Dans quel mot entend-on le phonème [s] ?', false, '[{"id": "A", "text": "poison"}, {"id": "B", "text": "cousin"}, {"id": "C", "text": "raisonnable"}, {"id": "D", "text": "vraisemblable"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'القاعدة العامة أن حرف s بين صائتين يُنطق [z] كما في (poison, cousin, raisonnable). لكن كلمة vraisemblable كلمة مركبة (vrai + semblable)، ولذلك يحتفظ حرف s فيها بنطقه الأصلي [s] أي [vʁɛsɑ̃blabl].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q44', 'exam_primary_2025_french_nov', 44, 'الصوتيات — الوصل', 'Dans quel groupe nominal la liaison est-elle inacceptable ?', false, '[{"id": "A", "text": "Les horaires"}, {"id": "B", "text": "Les hormones"}, {"id": "C", "text": "Les héros"}, {"id": "D", "text": "Les hommes"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'تبدأ كلمة héros بحرف h مُتَنَفَّس (h aspiré)، مما يمنع الوصل الصوتي (liaison interdite)، فننطق [le eʁo]. أما الكلمات horaires, hormones, hommes فتبدأ بـ h صامت (h muet) والوصل فيها واجب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q45', 'exam_primary_2025_french_nov', 45, 'الصوتيات — الكتابة الصوتية', 'Quelle est la transcription phonétique correcte du mot « accompagnement » ?', false, '[{"id": "A", "text": "[akɔ̃paɲmɑ̃]"}, {"id": "B", "text": "[akɔ̃paɲemɑ̃]"}, {"id": "C", "text": "[akɑ̃paɲmɔ̃]"}, {"id": "D", "text": "[akɔ̃paniəmɑ̃]"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'النطق الصوتي الصحيح للكلمة هو: ac- = [ak]، om- = [ɔ̃]، pa- = [pa]، gn- = [ɲ]، وحرف e يسقط في النطق (e caduc)، و-ment = [mɑ̃]، فتعطي [akɔ̃paɲmɑ̃]. باقي الاختيارات بها أخطاء صوتية واضحة ([e] في B، قلب الصوائت الأنفية في C، و[ni] بدل [ɲ] في D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q46', 'exam_primary_2025_french_nov', 46, 'الأدب — الأنواع الأدبية', 'À quel genre littéraire l''extrait suivant appartient-il ?
FANCHETTE, seule, tenant d''une main deux biscuits et une orange, et de l''autre une lanterne de papier, allumée.
Dans le pavillon à gauche, a-t-il dit. C''est celui-ci. S''il allait ne pas venir à présent ! mon petit rôle... Ces vilaines gens de l''office qui ne voulaient pas seulement me donner une orange et deux biscuits ! — Pour qui, mademoiselle ? — Eh bien, monsieur, c''est pour quelqu''un. — Oh ! nous savons. — Et quand ça serait ? Parce que monseigneur ne veut pas le voir, faut-il qu''il meure de faim ? [...] (Elle voit Figaro qui vient l''examiner ; elle fait un cri.) Ah ! ...
(Elle s''enfuit, et elle entre dans le pavillon à sa gauche.)
Pierre-Augustin BEAUMARCHAIS, Le mariage de Figaro.', false, '[{"id": "A", "text": "Genre narratif"}, {"id": "B", "text": "Genre épistolaire"}, {"id": "C", "text": "Genre théâtral"}, {"id": "D", "text": "Genre poétique"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'يحتوي النص على مؤشرات المسرح: اسم الشخصية بحروف كبيرة (FANCHETTE)، الإرشادات الركحية (didascalies) المكتوبة بخط مائل وبين قوسين، كما أن المصدر هو المسرحية الشهيرة Le Mariage de Figaro.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'تحديد النوع الأدبي من مؤشرات النص المسرحي (الشخصية، الإرشادات الركحية)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q47', 'exam_primary_2025_french_nov', 47, 'فهم النص — غاية النص', 'Quelle est la visée du texte suivant ?
Cette cuisinière est destinée à un usage domestique uniquement. Les enfants ne doivent pas y toucher. Quant aux adultes, ils doivent être capables de s''en servir correctement, comprendre les risques indiqués dans la notice d''utilisation et surtout faire attention à la porte du four, car de la vapeur chaude peut s''en échapper.', false, '[{"id": "A", "text": "Présenter une notice de fabrication"}, {"id": "B", "text": "Présenter les composantes d''un appareil"}, {"id": "C", "text": "Expliquer un mode d''installation"}, {"id": "D", "text": "Présenter des précautions d''emploi"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'يتضمن النص تحذيرات وتعليمات للسلامة والوقاية أثناء استخدام الجهاز (ne doivent pas y toucher, comprendre les risques, faire attention...)، وهو ما يوافق تقديم احتياطات الاستعمال.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'غاية النص تحليلية (احتياطات الاستعمال)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q48', 'exam_primary_2025_french_nov', 48, 'فهم النص — نوع النص', 'Quel est le type du texte suivant ?
Il y avait, sur une table de sapin, une chandelle fixée dans le goulot d''une bouteille, deux ou trois gobelets d''étain, un gros pain, un morceau de beurre et une assiette. [...] plusieurs lits, faits de sacs entassés les uns sur les autres, étaient alignés contre un mur, sur le plancher. Quatre adolescents se tenaient assis à la table. (Charles DICKENS, Oliver Twist)', false, '[{"id": "A", "text": "Injonctif"}, {"id": "B", "text": "Descriptif"}, {"id": "C", "text": "Argumentatif"}, {"id": "D", "text": "Explicatif"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'النص وصفي (descriptif) بامتياز؛ حيث يعتمد على زمن الماضي الناقص الوصفي (Il y avait, étaient alignés, se tenaient)، والمؤشرات المكانية (sur une table, dans le goulot, contre un mur, sur le plancher)، وتعداد مكونات المكان وأثاثه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'نوع النص تحليلي (وصفي)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q49', 'exam_primary_2025_french_nov', 49, 'الأدب — المسرح', 'Par quel terme désigne-t-on la phrase mise entre parenthèses dans l''extrait suivant ?
FIGARO.
Oh ! ma foi, pour celui-ci ! ...
(Il s''approche et baise le bas de l''habit de son maître.)
LE COMTE.
Figaro ?
FIGARO.
Excellence !
LE COMTE.
Crois-tu que l''on m''ait entendu ?
Pierre-Augustin de BEAUMARCHAIS, Le Barbier de Séville.', false, '[{"id": "A", "text": "Scène"}, {"id": "B", "text": "Aparté"}, {"id": "C", "text": "Tirade"}, {"id": "D", "text": "Didascalie"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'العبارة الموضوعة بين قوسين وبخط مائل في النص المسرحي لا ينطقها الممثل، بل هي إرشاد مسرحي/ركحي يحدد حركات الشخصية ومواقفها، ويُسمى Didascalie.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q50', 'exam_primary_2025_french_nov', 50, 'الأدب — النبرة', 'Quelle est la tonalité dominante dans l''extrait suivant ?
Ô jours de mon printemps, jours couronnés de rose,
À votre fuite, en vain, un long regret s''oppose.
Beaux jours, quoique souvent obscurcis de mes pleurs,
Vous dont j''ai su jouir même au sein des douleurs,
Sur ma tête bientôt vos fleurs seront fanées.
Hélas ! bientôt le flux des rapides années
Vous aura loin de moi fait voler sans retour.
André CHÉNIER', false, '[{"id": "A", "text": "Tonalité comique"}, {"id": "B", "text": "Tonalité épique"}, {"id": "C", "text": "Tonalité fantastique"}, {"id": "D", "text": "Tonalité lyrique"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'يعبر الشاعر عن مشاعره الذاتية (الحنين، الندم، الحسرة على زوال الشباب ومرور الزمن) باستخدام ضمير المتكلم (mon, mes, j''ai, ma, moi)، والنداء والتعجب (Ô jours, Hélas !)، والحقل المعجمي للأحاسيس (regret, pleurs, douleurs)، وهي أبرز خصائص النبرة الغنائية (Tonalité lyrique).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'النبرة الغنائية تحليلية (مشاعر ذاتية، ضمير المتكلم)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q51', 'exam_primary_2025_french_nov', 51, 'النحو — قيم الحاضر', 'Quelle est la valeur du présent de l''indicatif dans la phrase suivante ?
La terre effectue un tour complet autour du soleil en 365 jours et 6 heures.', false, '[{"id": "A", "text": "Présent d''énonciation"}, {"id": "B", "text": "Présent de narration"}, {"id": "C", "text": "Présent historique"}, {"id": "D", "text": "Présent d''injonction"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['E']::text[], 'تعبر الجملة عن حقيقة علمية ثابتة وصالحة في كل زمان، وبالتالي فإن قيمة الحاضر هنا هي حاضر الحقيقة العامة (Présent de vérité générale)، وهو غير مذكور ضمن الاختيارات من A إلى D.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'قيمة الحاضر هنا هي حاضر الحقيقة العامة (Présent de vérité générale)، غير مذكور ضمن الاختيارات؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q52', 'exam_primary_2025_french_nov', 52, 'فهم النص — الشخصية', 'D''après le texte suivant, par quel trait de caractère se distingue le vieux paysan ?
...Le vieil homme vivait en solitaire, ne pensait qu''à lui-même et n''avait qu''une seule passion : le travail incessant de la terre, la commercialisation des fruits et légumes et l''accumulation de l''argent.', false, '[{"id": "A", "text": "L''égoïsme"}, {"id": "B", "text": "La générosité"}, {"id": "C", "text": "La sociabilité"}, {"id": "D", "text": "La solidarité"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'يذكر النص صراحة أن الفلاح العجوز كان يعيش وحيداً ولا يفكر إلا في نفسه (ne pensait qu''à lui-même)، وهذا هو تعريف الأنانية (L''égoïsme).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'سمة الشخصية مستخلصة من النص (يعيش وحيداً ولا يفكر إلا في نفسه)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q53', 'exam_primary_2025_french_nov', 53, 'فهم النص — المشاعر', 'Quel sentiment l''expéditrice de la lettre suivante exprime-t-elle à travers la phrase en gras ?
Ma chère Lucie,
Je n''ai pas beaucoup de temps pour t''écrire parce que je suis à la gare et que le train s''en va dans trois minutes... Est-ce que je t''ai parlé de ce concours d''histoire organisé par la ville pour les classes de collège ? Eh bien, c''est moi qui ai gagné ! Dans trois minutes, c''est le départ. Pour une semaine. Je suis très excitée et en même temps j''ai le cafard. J''aurais tellement aimé partir avec toi !
J.-P. ARROU-VIGNOD, Le professeur a disparu.', false, '[{"id": "A", "text": "La joie"}, {"id": "B", "text": "La satisfaction"}, {"id": "C", "text": "Le doute"}, {"id": "D", "text": "Le regret"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'استعمال صيغة الشرط الماضي (conditionnel passé : aurais aimé) للتعبير عن أمنية لم تتحقق يدل على التحسر والأسف (Le regret).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'الشعور مستخلص من صيغة الشرط الماضي (أمنية لم تتحقق)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q54', 'exam_primary_2025_french_nov', 54, 'البلاغة — الصور البيانية', 'De quelle figure de style s''agit-il dans la réplique suivante ?
ANTIGONE : Le jardin dormait encore. Je l''ai surpris, nourrice. Je l''ai vu sans qu''il s''en doute. C''est beau un jardin qui ne pense pas encore aux hommes. (Jean ANOUILH, Antigone)', false, '[{"id": "A", "text": "L''anaphore"}, {"id": "B", "text": "La personnification"}, {"id": "C", "text": "L''oxymore"}, {"id": "D", "text": "La comparaison"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'أُسندت للحديقة (وهي غير عاقل) صفات وأفعال إنسانية: النوم (dormait)، المفاجأة والشك (surpris, s''en doute)، والتفكير (ne pense pas)؛ وهذا هو التشخيص (La personnification).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q55', 'exam_primary_2025_french_nov', 55, 'العروض — القوافي', 'De quelle qualité et de quelle disposition de rimes s''agit-il dans la strophe suivante ?
Cet homme, dans quelque ruine,
Avec la ronce et le lézard,
Vit sous la brume et la bruine,
Fruit tombé de l''arbre hasard.
V. HUGO, Les Contemplations.', false, '[{"id": "A", "text": "Rimes riches et croisées"}, {"id": "B", "text": "Rimes suffisantes et plates"}, {"id": "C", "text": "Rimes riches et embrassées"}, {"id": "D", "text": "Rimes pauvres et embrassées"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'الترتيب (Disposition): تتناوب القوافي وفق النظام ABAB (ruine / lézard / bruine / hasard)، وتُسمى قوافي متقاطعة (rimes croisées).
الجودة (Qualité):
ruine [ʁɥin] وbruine [bʁɥin] تشتركان في 4 أصوات ([ʁ-ɥ-i-n]).
lézard [lezaʁ] وhasard [azaʁ] تشتركان في 3 أصوات ([z-a-ʁ]).
اشتراك 3 أصوات فأكثر يعني أنها قوافي غنية (rimes riches).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'جودة القوافي وتوزيعها تحليليان (عدد الأصوات المشتركة)؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q56', 'exam_primary_2025_french_nov', 56, 'العروض — المقاطع', 'De combien de syllabes se compose chacun des vers de la strophe suivante ?
Lorsque, ma sœur et moi, dans les forêts profondes,
Nous avions déchiré nos pieds sur les cailloux,
En nous baisant au front, tu nous appelais fous,
Après avoir maudit nos courses vagabondes.
Théodore de BANVILLE', false, '[{"id": "A", "text": "Neuf syllabes"}, {"id": "B", "text": "Douze syllabes"}, {"id": "C", "text": "Dix syllabes"}, {"id": "D", "text": "Onze syllabes"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'بتقطيع الأبيات وفق قواعد العروض الفرنسي (إسقاط حرف e الصامت في آخر البيت واحتسابه قبل الحرف الساكن داخل البيت):
Lors-que, / ma / sœur / et / moi, // dans / les / fo-rêts / pro-fon-(des) = 12 مقطعاً.
Nous / a-vions / dé-chi-ré // nos / pieds / sur / les / cail-loux = 12 مقطعاً.
En / nous / bai-sant / au / front, // tu / nous / ap-pe-lais / fous = 12 مقطعاً.
A-près / a-voir / mau-dit // nos / cour-ses / va-ga-bon-(des) = 12 مقطعاً.
إذن هي أبيات إسكندرية (alexandrins) تتكون من 12 مقطعاً صوتياً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, 'عدد المقاطع تحليلي وفق قواعد العروض الفرنسي؛ لا يوجد مفتاح رسمي.')
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q57', 'exam_primary_2025_french_nov', 57, 'المعجم — ملء الفراغات', 'Dans quelle liste les mots sont-ils classés selon l''ordre convenable pour compléter le texte suivant ?
Le .................... de Slimane était merveilleux. Sa .................... noire flottante et sa robe en panache avaient de l''allure. Lorsque Slimane le ...................., il lui suffisait de frôler de ses étriers les flancs de sa monture pour qu''elle .................... au grand galop. Ses sabots martelaient le .................... dans un bruit de ....................', false, '[{"id": "A", "text": "sol - crinière - montait - s''élance - cheval - tonnerre"}, {"id": "B", "text": "tonnerre - crinière - sol - s''élance - montait - cheval"}, {"id": "C", "text": "cheval - crinière - montait - s''élance - tonnerre - sol"}, {"id": "D", "text": "cheval - crinière - montait - s''élance - sol - tonnerre"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['D']::text[], 'الترتيب المنطقي والسليم لغوياً ومعنوياً لملء الفراغات هو:
Le cheval de Slimane... Sa crinière noire flottante... Lorsque Slimane le montait... pour qu''elle s''élance au grand galop. Ses sabots martelaient le sol dans un bruit de tonnerre.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q58', 'exam_primary_2025_french_nov', 58, 'الكتابة — الرسالة الإدارية', 'Voici une lettre administrative dont certains éléments ont été supprimés et remplacés par des pointillés :
Tanger, le 15/01/2024
Nom et prénom : Amal A[...]
Adresse : 25 rue A, quartier [...], Tanger
Tél : 06[...]
e-mail : [...]@gmail.com
À l''attention de ............................................
Objet : ............................................
Monsieur le Directeur,
J''ai l''honneur de solliciter de votre haute bienveillance de bien vouloir accepter ma candidature.
Je suis très intéressée par les activités de votre société ; je me permets de vous soumettre ma présente candidature pour un éventuel poste au sein de votre équipe.
............................................, mon C.V, ci-joint, vous rendrait compte des formations dont j''ai bénéficié, des travaux et des stages que j''ai effectués. Un éventuel entretien me permettrait de vous présenter plus amplement mes qualités personnelles et professionnelles.
............................................, je vous prie, Monsieur le Directeur, de croire à l''expression de mes salutations les plus distinguées.
Signé : Amal A[...]
Dans quelle liste les éléments supprimés sont-ils classés selon l''ordre qui convient pour compléter cette lettre ?', false, '[{"id": "A", "text": "Demande d''emploi / Monsieur le Directeur Général de la société [...] / Dans l''attente de votre réponse / Pour une meilleure considération de ma candidature"}, {"id": "B", "text": "Monsieur le Directeur Général de la société [...] / Demande d''emploi / Dans l''attente de votre réponse / Pour une meilleure considération de ma candidature"}, {"id": "C", "text": "Monsieur le Directeur Général de la société [...] / Demande d''emploi / Pour une meilleure considération de ma candidature / Dans l''attente de votre réponse"}, {"id": "D", "text": "Demande d''emploi / Pour une meilleure considération de ma candidature / Monsieur le Directeur Général de la société [...] / Dans l''attente de votre réponse"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['C']::text[], 'وفق البنية المعتمدة للرسالة الإدارية (lettre administrative / lettre de motivation):
بعد À l''attention de نضع المرسل إليه: Monsieur le Directeur Général de la société [...]
بعد Objet : نضع الموضوع: Demande d''emploi
في بداية الفقرة التي تقدم السيرة الذاتية (mon C.V, ci-joint...): Pour une meilleure considération de ma candidature
في بداية جملة التحية الختامية (je vous prie, Monsieur le Directeur...): Dans l''attente de votre réponse', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q59', 'exam_primary_2025_french_nov', 59, 'النحو — الروابط', 'Dans quelle liste les connecteurs sont-ils classés selon l''ordre convenable pour compléter le texte suivant ?
Aux XVᵉ siècle, les souverains portugais et espagnols organisaient des explorations ................... trouver de nouvelles routes vers l''Orient. Les grands navigateurs se lançaient dans ces périples, ................... c''était l''occasion de trouver des territoires et civilisations inconnus. ..................., des hommes comme Christophe Colombe ne cessaient de parcourir les mers. ................... la rencontre entre les populations locales et les Européens débouchait souvent sur la violence.', false, '[{"id": "A", "text": "Ainsi - afin de - Mais - car"}, {"id": "B", "text": "afin de - car - Ainsi - Mais"}, {"id": "C", "text": "afin de - car - Mais - Ainsi"}, {"id": "D", "text": "Mais - afin de - Ainsi - car"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['B']::text[], 'afin de : رابط للغاية يُتبع بفعل في المصدر (trouver).
car : رابط للتعليل يفسر سبب انطلاق البحارة في تلك الرحلات.
Ainsi, : رابط للنتيجة والتمثيل (متبوع بفاصلة).
Mais : رابط للاستدراك والتعارض (يقدم الجانب السلبي العنيف للقاء، وغير متبوع بفاصلة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_french_nov_q60', 'exam_primary_2025_french_nov', 60, 'فهم النص — ترتيب الحكاية', 'Voici les parties d''un conte, présentées en désordre et numérotées de 1 à 5 :
1) Le fils ingrat était condamné à la nourrir, sans quoi elle lui aurait dévoré la tête ; et il passa le reste de ses jours à errer misérablement sur la terre.
2) Un homme était assis devant sa porte avec sa femme ; ils avaient devant eux un poulet rôti dont ils s''apprêtaient à se régaler.
3) Quand quelqu''un essayait de l''enlever, l''horrible bête lançait sur lui un regard venimeux, comme si elle allait se jeter dessus, si bien que personne n''osait en approcher.
4) Un instant plus tard, le fils alla chercher le plat pour le remettre sur la table, mais le poulet rôti s''était changé en un gros crapaud qui lui sauta au visage et s''y attacha pour toujours.
5) L''homme vit venir son vieux père. Aussitôt, il se hâta de cacher son plat pour ne pas avoir à en donner au vieillard. Celui-ci but seulement un verre d''eau et s''en retourna.
Quel est l''ordre qui convient pour reconstituer ce conte ?', false, '[{"id": "A", "text": "2 - 5 - 4 - 3 - 1"}, {"id": "B", "text": "5 - 4 - 2 - 3 - 1"}, {"id": "C", "text": "2 - 1 - 3 - 5 - 4"}, {"id": "D", "text": "5 - 2 - 1 - 4 - 3"}, {"id": "E", "text": "Aucun des choix précédents"}]'::jsonb, ARRAY['A']::text[], 'وفق البنية السردية للحكاية (حكاية "الابن العاق" للأخوين غريم):
2 (وضعية البداية): رجل وزوجته يجلسان وأمامهما دجاجة مشوية.
5 (العنصر المخل): قدوم الأب العجوز وإخفاء الابن للطبق بخلاً، ثم رحيل الأب.
4 (الأحداث/التطور): عودة الابن لإحضار الطبق فتحولت الدجاجة إلى ضفدع ضخم التصق بوجهه.
3 (استمرار الأحداث): كلما حاول أحد إزالته كان الحيوان البشع (l''horrible bête) ينظر نظرة سامة فيبتعد الجميع.
1 (وضعية النهاية): حُكم على الابن بإطعامه (الضمير la يعود على l''horrible bête المذكورة في 3) وقضى بقية حياته هائماً في بؤس.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1bQe2_rfdd-7i9jM2UPEPPZDCEdjv_tHR', true, NULL)
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
