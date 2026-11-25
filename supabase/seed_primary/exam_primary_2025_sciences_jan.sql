-- ====================================================================
-- مباراتي — العلوم، مادة التخصص، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/العلوم - مادة التخصص - دورة يناير 2025.md
--   (سجل الامتحانات رقم 49؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/العلوم - مادة التخصص.pdf (13 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q91 إلى Q120 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل (مع توحيد المسافات البيضاء في سطر واحد).
--
-- ملاحظات عن ملف الامتحان:
--   * الغلاف (صفحة 1/13) في ملف PDF نفسه: المدة ساعة واحدة، المعامل 2،
--     30 سؤالاً من Q91 إلى Q120، تنقيط: +1 للجواب الصحيح، 0 للملغى، −1 للجواب الخاطئ.
--   * المدة والمعامل مؤكَّدان أيضاً بالإعلان الرسمي للوزارة عن مباراة يناير 2025
--     (التخصص المزدوج: العلوم 60 دقيقة، المعامل 2).
--   * الوثائق 1–10 رُوجعت على رسوم الورقة مباشرة (دورة اللوز، الشبكة الغذائية، الفوالق،
--     الطية، دورة الماء، الدارة الكهربائية، مميزة المصباح، المغناطيس الكهربائي، سلسلة الصوت،
--     الرسم التذبذبي)؛ والوثائق نفسها غير مرفقة في قاعدة البيانات (التعليل يصف مضمونها).
--   * Q91 (خيار D): الورقة نفسها تكتب «appareil de Glogi» (خطأ مطبعي لـ Golgi) — نُقل كما هو مطبوع.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_sciences_jan', 'specialty_primary', 2025, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص (دورة يناير 2025)', 'دورة يناير 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q91', 'exam_primary_2025_sciences_jan', 91, 'Biologie — la cellule', 'À la différence d''une cellule procaryote, la cellule eucaryote se caractérise par la présence de :', false, '[{"id": "A", "text": "Mitochondrie, chloroplaste, paroi cellulaire et membrane plasmique."}, {"id": "B", "text": "Paroi cellulaire, ADN, mitochondrie et cytoplasme."}, {"id": "C", "text": "Mitochondrie, ADN, paroi cellulaire et réticulum endoplasmique."}, {"id": "D", "text": "Paroi cellulaire, mitochondrie, appareil de Glogi et cytoplasme."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'تتميز الخلية حقيقية النواة (Eucaryote) عن بدائية النواة (Procaryote) بوجود نواة حقيقية محاطة بغشاء نووي وعضيات غشائية (كالميتوكندريا، جهاز غولجي، الشبكة الأندوبلازمية...). أما جميع الاختيارات (A, B, C, D) فتتضمن مكونات مشتركة توجد أيضاً لدى بدائيات النواة (مثل: السيتوبلازم Cytoplasme، الغشاء السيتوبلازمي Membrane plasmique، الـ ADN، والجدار الخلوي Paroi cellulaire الذي يوجد في البكتيريا ويغيب أصلاً في الخلايا الحيوانية حقيقية النواة، كما أن البلاستيدات الخضراء Chloroplastes خاصة بالخلايا النباتية فقط). بالتالي لا يوجد أي اختيار صحيح من A إلى D.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'L''option D porte « appareil de Glogi » dans la feuille d''examen elle-même (coquille pour Golgi) ; le texte est transcrit tel qu''imprimé.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q92', 'exam_primary_2025_sciences_jan', 92, 'Biologie — acides aminés', 'Les acides aminés se caractérisent par une structure générale composée d''un :', false, '[{"id": "A", "text": "Radical \"R\", un groupe carboxyle et un groupe hydroxyle."}, {"id": "B", "text": "Radical \"R\", un groupe amine et un groupe hydroxyle."}, {"id": "C", "text": "Radical \"R\", un groupe amine et un groupe carboxyle."}, {"id": "D", "text": "Radical \"R\", un groupe carboxyle et un groupe ester."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'يتكون الحمض الأميني (Acide aminé) من ذرة كربون مركزية ترتبط بـ: جذر متغير "R" (Radical)، مجموعة أمينية (-NH₂، Groupe amine)، مجموعة كربوكسيلية (-COOH، Groupe carboxyle)، وذرة هيدروجين (-H).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q93', 'exam_primary_2025_sciences_jan', 93, 'Biologie — protéines', 'Les acides aminés se lient par des liaisons :', false, '[{"id": "A", "text": "Osidiques pour former une protéine."}, {"id": "B", "text": "Peptidiques pour former un polypeptide."}, {"id": "C", "text": "Esters pour former un polysaccharide."}, {"id": "D", "text": "Phosphoesters pour former une protéine."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'ترتبط الأحماض الأمينية فيما بينها بواسطة روابط بيبتيدية (Liaisons peptidiques) لتكوين سلسلة عديد البيبتيد (Polypeptide) التي تشكل البروتينات. (أما الروابط Osidiques فتخص السكريات، وEsters تخص الدهون، وPhosphodiesters تخص الأحماض النووية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q94', 'exam_primary_2025_sciences_jan', 94, 'Biologie — amphibiens', 'Les grenouilles se caractérisent par :', false, '[{"id": "A", "text": "Une respiration branchiale à l''état larvaire ; une respiration pulmonaire et cutanée à l''état adulte et une peau nue."}, {"id": "B", "text": "Une respiration cutanée à l''état larvaire ; une respiration pulmonaire à l''état adulte et une peau recouverte d''écailles non soudées."}, {"id": "C", "text": "Une respiration branchiale à l''état larvaire ; une respiration pulmonaire et cutanée à l''état adulte et une peau recouverte d''écailles soudées."}, {"id": "D", "text": "Une respiration cutanée à l''état larvaire ; une respiration pulmonaire et branchiale à l''état adulte et une peau nue."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'الضفادع من البرمائيات (Amphibiens)؛ في الطور اليرقي (الشرغوف / Têtard) تعيش في الماء وتتنفس تنفساً غلصمياً (Respiration branchiale)، وبعد التحول إلى الطور البالغ تتنفس تنفساً رئوياً وجلدياً (Pulmonaire et cutanée)، ويتميز جلدها بكونه عارياً ورطباً (Peau nue) دون حراشف.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q95', 'exam_primary_2025_sciences_jan', 95, 'Biologie — amphibiens', 'Les grenouilles sont des espèces :', false, '[{"id": "A", "text": "Ovipares, caractérisées par une fécondation interne et un cycle de développement direct."}, {"id": "B", "text": "Vivipares, caractérisées par une fécondation externe et un cycle de développement indirect."}, {"id": "C", "text": "Ovipares, caractérisées par une fécondation externe et un cycle de développement indirect."}, {"id": "D", "text": "Vivipares, caractérisées par une fécondation interne et un cycle de développement direct."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'الضفادع حيوانات بيوضة (Ovipares)، ويتم الإخصاب لديها في الوسط المائي خارج جسم الأنثى (إخصاب خارجي / Fécondation externe)، ويمر نموها بمرحلة يرقية (شرغوف) تختلف عن البالغ وتخضع للتحول (Métamorphose)، لذا فهو نمو غير مباشر (Développement indirect).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q96', 'exam_primary_2025_sciences_jan', 96, 'Biologie — reproduction des plantes', 'Les éléments qui correspondent à la légende du document 1 sont :', false, '[{"id": "A", "text": "1- pistil ; 2- étamine ; 3- gamète femelle ; 4- grain de pollen ; 5- pollinisation ; 6- ovule ; 7- ovaire ; 8- graine ; 9- fruit."}, {"id": "B", "text": "1- pistil ; 2- étamine ; 3- gamète femelle ; 4- grain de pollen ; 5- pollinisation ; 6- ovaire ; 7- ovule ; 8- fruit ; 9- graine."}, {"id": "C", "text": "1- étamine ; 2- pistil ; 3- grain de pollen ; 4- gamète femelle ; 5- pollinisation ; 6- ovule ; 7- ovaire ; 8- graine ; 9- fruit."}, {"id": "D", "text": "1- étamine ; 2- pistil ; 3- grain de pollen ; 4- gamète femelle ; 5- pollinisation ; 6- ovaire ; 7- ovule ; 8- fruit ; 9- graine."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'من خلال ملاحظة الوثيقة 1: 1: المدقة (Pistil) وتنتج 3: المشيج الأنثوي (Gamète femelle). 2: السداة (Étamine) وتنتج 4: حبة اللقاح (Grain de pollen). 5: توضع حبة اللقاح على الميسم أي عملية الأبر (Pollinisation). 6: البويضة (Ovule) داخل المبيض، وتتحول إلى 8: البذرة (Graine) بدليل أن السهم الصادر من 8 يتجه نحو النبيتة (Plantule) لأن البذرة هي التي تنبت لتعطي نبيتة. 7: المبيض (Ovaire) ويتحول إلى 9: الثمرة (Fruit).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 1 (cycle de développement de l''amandier) : 1- pistil ; 2- étamine ; 3- gamète femelle ; 4- grain de pollen ; 5- pollinisation ; 6- ovule ; 7- ovaire ; 8- graine ; 9- fruit.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q97', 'exam_primary_2025_sciences_jan', 97, 'Biologie — angiospermes', 'L''amandier est une angiosperme caractérisée par :', false, '[{"id": "A", "text": "Une fécondation simple ; l''ovule se transforme en graine et l''ovaire se transforme en fruit."}, {"id": "B", "text": "Une fécondation simple ; l''ovule se transforme en fruit et l''ovaire se transforme en graine."}, {"id": "C", "text": "Une fécondation double ; l''ovule se transforme en graine et l''ovaire se transforme en fruit."}, {"id": "D", "text": "Une fécondation double ; l''ovule se transforme en fruit et l''ovaire se transforme en graine."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'تتميز النباتات كاسيات البذور (Angiospermes)، مثل شجرة اللوز، بـ الإخصاب المضاعف (Fécondation double) (حيث يخصب أحد المشيجين الذكريين البويضة غير الملقحة لإعطاء الجنين، ويخصب الثاني نواتي الكيس الجنيني لإعطاء السويداء). وبعد الإخصاب، تتحول البويضة (Ovule) إلى بذرة (Graine) ويتحول المبيض (Ovaire) إلى ثمرة (Fruit). ب. علم البيئة العام (Écologie générale)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q98', 'exam_primary_2025_sciences_jan', 98, 'Écologie — réseau trophique', 'La correspondance entre les éléments du réseau trophique et leurs définitions est :', false, '[{"id": "A", "text": "(1→c) ; (2→d) ; (3→b) ; (4→a)."}, {"id": "B", "text": "(1→d) ; (2→c) ; (3→a) ; (4→b)."}, {"id": "C", "text": "(1→a) ; (2→b) ; (3→c) ; (4→d)."}, {"id": "D", "text": "(1→c) ; (2→d) ; (3→a) ; (4→b)."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], '1 - Producteur (منتج) → c : كائن ذاتي التغذية يحول المادة المعدنية (اللاعضوية) إلى مادة عضوية (عبر التركيب الضوئي). 2 - Décomposeur (محلّل) → d : كائن غير ذاتي التغذية يحول المادة العضوية إلى مادة معدنية (لاعضوية). 3 - Consommateur secondaire (مستهلك من الدرجة الثانية) → a : كائن لاحم يتغذى على كائنات غير ذاتية التغذية (المستهلكين من الدرجة الأولى). 4 - Consommateur primaire (مستهلك من الدرجة الأولى) → b : كائن عاشب يتغذى على كائنات ذاتية التغذية (المنتجين).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 2 (tableaux éléments / définitions) : 1- Producteur → c ; 2- Décomposeur → d ; 3- Consommateur secondaire → a ; 4- Consommateur primaire → b.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q99', 'exam_primary_2025_sciences_jan', 99, 'Écologie — biocénose', 'L''ensemble des êtres vivants (végétaux, animaux, bactéries, champignons, etc.) qui peuplent un milieu donné est appelé :', false, '[{"id": "A", "text": "Ecosystème."}, {"id": "B", "text": "Biomasse."}, {"id": "C", "text": "Biocénose."}, {"id": "D", "text": "Biotope."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'تسمى مجموع الكائنات الحية التي تعيش في وسط معين بـ العشيرة الإحيائية (Biocénose)؛ بينما يُقصد بالوسط الفيزيائي غير الحي المحيا (Biotope)، ومجموعهما معاً يشكل الحميلة البيئية (Écosystème)، أما Biomasse فهي الكتلة الحية. ج. الجيولوجيا (Géologie)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q100', 'exam_primary_2025_sciences_jan', 100, 'Géologie — failles', 'Les noms qui correspondent aux 3 types de failles représentées dans le document 3 sont :', false, '[{"id": "A", "text": "Figure 1 : faille inverse ; Figure 2 : faille normale ; Figure 3 : décrochement sénestre."}, {"id": "B", "text": "Figure 1 : faille normale ; Figure 2 : faille inverse ; Figure 3 : décrochement dextre."}, {"id": "C", "text": "Figure 1 : faille inverse ; Figure 2 : faille normale ; Figure 3 : décrochement dextre."}, {"id": "D", "text": "Figure 1 : faille normale ; Figure 2 : faille inverse ; Figure 3 : décrochement sénestre."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'Figure 1 : الكتلة العلوية (Bloc b) انزلقت نحو الأسفل مع تباعد الكتلتين (قوى تمددية)، مما يميز الفالق العادي (Faille normale). Figure 2 : الكتلة العلوية (Bloc b) صعدت فوق الكتلة السفلية (Bloc a) مع تقارب الكتلتين (قوى انضغاطية)، مما يميز الفالق المعكوس (Faille inverse). Figure 3 : حركة أفقية للكتلتين (انقلاع / Décrochement). وإذا وقف ملاحظ على الكتلة (Bloc a) ونظر نحو الكتلة المقابلة (Bloc b)، يلاحظ أنها أُزيحت نحو يمينه (والعكس صحيح إذا وقف على Bloc b)، إذن فهو انقلاع ميامن (Décrochement dextre).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 3 (3 figures de failles) : Figure 1 faille normale (bloc b descendu), Figure 2 faille inverse (bloc b remonté), Figure 3 décrochement dextre.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q101', 'exam_primary_2025_sciences_jan', 101, 'Géologie — plis', 'Les éléments qui correspondent à la légende du document 4 sont :', false, '[{"id": "A", "text": "1- pli synclinal ; 2- pli anticlinal ; 3- plan axial ; 4- charnière ; 5- axe de pli ; 6- flanc du pli."}, {"id": "B", "text": "1- pli anticlinal ; 2- pli synclinal ; 3- axe de pli ; 4- charnière ; 5- plan axial ; 6- flanc du pli."}, {"id": "C", "text": "1- pli synclinal ; 2- pli anticlinal ; 3- axe de pli ; 4- charnière ; 5- plan axial ; 6- flanc du pli."}, {"id": "D", "text": "1- pli anticlinal ; 2- pli synclinal ; 3- plan axial ; 4- charnière ; 5- axe de pli ; 6- flanc du pli."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], '1 : طية محدبة نحو الأعلى (Pli anticlinal). 2 : طية مقعرة نحو الأعلى (Pli synclinal). 3 : الخط الممتد طولياً على قمة الطية ويمثل تقاطع المساحة المحورية مع السطح (Axe de pli – محور الطية). 4 : منطقة التقوس الأقصى للطبقات (Charnière – المفصلة). 5 : المستوى التخيلي الذي يقسم الطية إلى شطرين ويمر عبر مفصلات الطبقات (Plan axial – المساحة/المستوى المحوري). 6 : الجانب المائل الذي يربط بين مفصلتين متتاليتين (Flanc du pli – جانب الطية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 4 (éléments d''un pli) : 1- pli anticlinal ; 2- pli synclinal ; 3- axe de pli ; 4- charnière ; 5- plan axial ; 6- flanc du pli.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q102', 'exam_primary_2025_sciences_jan', 102, 'Géologie — roches sédimentaires', 'Le gypse est une roche sédimentaire :', false, '[{"id": "A", "text": "Détritique qui résulte de l''altération et l''érosion des roches préexistantes."}, {"id": "B", "text": "Évaporitique produite à la suite d''une intervention des êtres vivants."}, {"id": "C", "text": "Évaporitique d''origine chimique produite par la précipitation des éléments chimiques."}, {"id": "D", "text": "Biochimique produite à la suite d''une intervention des êtres vivants."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'الجبس (Gypse، صيغته CaSO₄·2H₂O) صخرة رسوبية تبخرية ذات أصل كيميائي (Évaporitique d''origine chimique)، تتكون نتيجة تبخر المياه المالحة وترسب العناصر الكيميائية المذابة (كبريتات الكالسيوم) دون تدخل الكائنات الحية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q103', 'exam_primary_2025_sciences_jan', 103, 'Géologie — cycle de l''eau', 'Les éléments qui correspondent à la légende du document 5 sont :', false, '[{"id": "A", "text": "1- Évaporation ; 2- Condensation ; 3- Précipitation ; 4- Évapotranspiration ; 5- Déplacement ; 6- Infiltration ; 7- Ruissellement."}, {"id": "B", "text": "1- Évapotranspiration ; 2- Condensation ; 3- Précipitation ; 4- Évaporation ; 5- Déplacement ; 6- Ruissellement ; 7- Infiltration."}, {"id": "C", "text": "1- Évaporation ; 2- Condensation ; 3- Précipitation ; 4- Évapotranspiration ; 5- Déplacement ; 6- Ruissellement ; 7- Infiltration."}, {"id": "D", "text": "1- Évaporation ; 2- Condensation ; 3- Infiltration ; 4- Évapotranspiration ; 5- Déplacement ; 6- Ruissellement ; 7- Précipitation."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'تتبع الأسهم في الوثيقة 5 يعطي: 1: التبخر من المحيطات (Évaporation). 2: التكاثف وتكوّن السحب (Condensation). 3: التساقطات المطرية والثلجية (Précipitation). 4: النتح-تبخر من الغطاء النباتي (Évapotranspiration). 5: تنقل السحب بفعل الرياح (Déplacement). 6: الجريان السطحي على المنحدرات (Ruissellement). 7: تسرب المياه نحو الفرشة المائية (Infiltration). د. علم الفلك الوصفي (Astronomie descriptive)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 5 (cycle de l''eau) : 1- Évaporation ; 2- Condensation ; 3- Précipitation ; 4- Évapotranspiration ; 5- Déplacement ; 6- Ruissellement ; 7- Infiltration.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q104', 'exam_primary_2025_sciences_jan', 104, 'Astronomie — couche d''ozone', 'La couche d''ozone se situe dans :', false, '[{"id": "A", "text": "La troposphère."}, {"id": "B", "text": "La thermosphère."}, {"id": "C", "text": "La mésosphère."}, {"id": "D", "text": "La stratosphère."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'تقع طبقة الأوزون (O₃) في طبقة الستراتوسفير (La stratosphère) على ارتفاع يتراوح تقريباً بين 15 و35 كيلومتراً، وتقوم بامتصاص أغلب الأشعة فوق البنفسجية الضارة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q105', 'exam_primary_2025_sciences_jan', 105, 'Astronomie — distance Soleil-Terre', 'La lumière du soleil met 500 s pour parvenir à notre planète terre, à la vitesse c = 3.10⁸ m.s⁻¹. La distance entre le soleil et la terre est :', false, '[{"id": "A", "text": "140 millions de kilomètres environ."}, {"id": "B", "text": "160 millions de kilomètres environ."}, {"id": "C", "text": "180 millions de kilomètres environ."}, {"id": "D", "text": "120 millions de kilomètres environ."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نحسب المسافة بالعلاقة d = c × t : d = 3 × 10⁸ m/s × 500 s = 1,5 × 10¹¹ m = 1,5 × 10⁸ km = 150 millions de km وبما أن القيمة 150 مليون كيلومتر غير واردة في الاختيارات (A, B, C, D)، فإن الجواب الصحيح هو E. ثانياً: العلوم الفيزيائية والتكنولوجيا (Sciences Physiques et Technologie) أ. تنظيم المادة (Organisation de la matière)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q106', 'exam_primary_2025_sciences_jan', 106, 'Organisation de la matière — changements d''état', 'Lors de la transformation d''une quantité d''eau de l''état liquide à l''état gazeux :', false, '[{"id": "A", "text": "La masse varie et le volume augmente."}, {"id": "B", "text": "La masse varie et le volume diminue."}, {"id": "C", "text": "La masse se conserve et le volume augmente."}, {"id": "D", "text": "La masse se conserve et le volume diminue."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'التحول الفيزيائي (التبخر من الحالة السائلة إلى الغازية) يحافظ على عدد الجزيئات وبالتالي تنحفظ الكتلة (La masse se conserve)، بينما تتباعد الجزيئات في الحالة الغازية فـ يزداد الحجم (Le volume augmente).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q107', 'exam_primary_2025_sciences_jan', 107, 'Organisation de la matière — mélanges', 'La dissolution de l''alcool dans l''eau est une transformation :', false, '[{"id": "A", "text": "Chimique qui s''accompagne d''un dégagement de chaleur."}, {"id": "B", "text": "Chimique qui s''accompagne d''une absorption de chaleur."}, {"id": "C", "text": "Physique qui s''accompagne d''un dégagement de chaleur."}, {"id": "D", "text": "Physique qui s''accompagne d''une absorption de chaleur."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'ذوبان الكحول (الإيثانول) في الماء تحول فيزيائي (Physique) لأنه لا تنتج عنه مواد كيميائية جديدة ويمكن فصلهما مجدداً بالتقطير. وهو تحول ناشر للحرارة (Exothermique / dégagement de chaleur) حيث ترتفع درجة حرارة الخليط بسبب تشكل روابط هيدروجينية قوية بين جزيئات الماء والكحول.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q108', 'exam_primary_2025_sciences_jan', 108, 'Organisation de la matière — séparation', 'La séparation des constituants du mélange (eau, alcool et huile d''olive) se fait par :', false, '[{"id": "A", "text": "Filtration et évaporation."}, {"id": "B", "text": "Décantation et distillation."}, {"id": "C", "text": "Filtration et distillation."}, {"id": "D", "text": "Décantation et filtration."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'زيت الزيتون غير قابل للامتزاج مع خليط (الماء والكحول) ويطفو فوقه، فنفصله أولاً بـ التصفيق (Décantation) باستعمال حوجلة التصفيق. الماء والكحول سائلان ممتزجان لهما درجتا غليان مختلفتان (78 °C للكحول و100 °C للماء)، فنفصلهما بـ التقطير (Distillation). ب. الانتقال الحراري (Transfert thermique)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q109', 'exam_primary_2025_sciences_jan', 109, 'Transfert thermique', 'On met en contact thermique deux corps à des températures différentes T₁ et T₂ avec T₂ > T₁. Après le contact thermique des deux corps :', false, '[{"id": "A", "text": "T₁ diminue et T₂ augmente."}, {"id": "B", "text": "T₁ diminue et T₂ diminue."}, {"id": "C", "text": "T₁ augmente et T₂ augmente."}, {"id": "D", "text": "T₁ augmente et T₂ diminue."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'تنتقل الحرارة تلقائياً من الجسم الأسخن (T₂) نحو الجسم الأبرد (T₁) إلى أن يحدث التوازن الحراري؛ وبالتالي ترتفع T₁ وتنخفض T₂. ج. الكهرباء والمغناطيسية (Électricité et magnétisme)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q110', 'exam_primary_2025_sciences_jan', 110, 'Électricité — conducteurs et isolants', 'L''eau pure, l''air et l''aluminium sont tels que :', false, '[{"id": "A", "text": "L''eau pure est un conducteur, l''air est un conducteur et l''aluminium est un conducteur."}, {"id": "B", "text": "L''eau pure est un conducteur, l''air est un conducteur et l''aluminium est un isolant."}, {"id": "C", "text": "L''eau pure est un conducteur, l''air est un isolant et l''aluminium est un isolant."}, {"id": "D", "text": "L''eau pure est un isolant, l''air est un conducteur et l''aluminium est un conducteur."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'الماء الخالص (المقطر) عازل كهربائي (Isolant) لافتقاره إلى الأيونات الحرة، والهواء (في الظروف العادية) عازل كهربائي (Isolant)، بينما الألومنيوم فلز موصل كهربائي (Conducteur). ولا يوجد أي اختيار من A إلى D يجمع هذه الصفات الثلاث الصحيحة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q111', 'exam_primary_2025_sciences_jan', 111, 'Électricité — circuits', 'Les expressions des intensités de courant I₁ et I₂, en fonction de I, qui traversent les lampes L₁ et L₂ respectivement sont (document 6) :', false, '[{"id": "A", "text": "I₁ = I/3 et I₂ = 2I/3."}, {"id": "B", "text": "I₁ = I/2 et I₂ = I/2."}, {"id": "C", "text": "I₁ = 2I/3 et I₂ = I/3."}, {"id": "D", "text": "I₁ = I/2 et I₂ = I/3."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'حسب قانون العقد (Loi des nœuds): I = I₁ + I₂. وبما أن المصباحين L₁ و L₂ مماثلان ومركبان على التوازي (نفس التوتر ونفس المقاومة)، فإنه يمر فيهما نفس التيار: I₁ = I₂ = I/2.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 6 (circuit : lampe L en série avec L1 et L2 identiques en parallèle, intensité nominale 1 A par lampe) : I1 = I2 = I/2.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q112', 'exam_primary_2025_sciences_jan', 112, 'Électricité — protection', 'Pour protéger le circuit électrique contre la surintensité (document 6), on branche en série avec la lampe L un fusible de courant nominal (I_fn) :', false, '[{"id": "A", "text": "I_fn = 1.8 A."}, {"id": "B", "text": "I_fn = 2 A."}, {"id": "C", "text": "I_fn = 2.8 A."}, {"id": "D", "text": "I_fn = 3 A."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'المصباح L مركب في الفرع الرئيسي، لذا يمر عبره التيار الكلي I للدارة. وبما أن شدة التيار الاسمية لكل مصباح هي 1 A، فلا يجب أن تتجاوز الشدة I في الفرع الرئيسي 1 A وإلا سيتلف المصباح L بسبب فرط الشدة (Surintensité). ولحماية الدارة يجب تركيب صهيرة (Fusible) ذات تيار اسمي مساوٍ أو أكبر بقليل من 1 A (مثلاً 1 A أو 1,2 A). جميع القيم المقترحة (1,8 A فما فوق) مرتفعة جداً ولن تحمي المصباح L من التلف.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 6 : la lampe L porte le courant total I (1 A nominal) ; un fusible de 1,8 A ou plus ne la protégerait pas ; aucune valeur proposée ne convient.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q113', 'exam_primary_2025_sciences_jan', 113, 'Électricité — caractéristique tension-courant', 'La valeur de la tension U aux bornes de la lampe (document 7), déterminée graphiquement, pour I = 0.5 A est :', false, '[{"id": "A", "text": "U = 2 V."}, {"id": "B", "text": "U = 1.5 V."}, {"id": "C", "text": "U = 1 V."}, {"id": "D", "text": "U = 0.5 V."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'بالقراءة المبيانية المباشرة على منحنى الوثيقة 7: نُسقط القيمة I = 0,5 A عمودياً على المنحنى ثم أفقياً على محور التوترات U(V)، فنجد أن المنحنى يمر تماماً من النقطة (I = 0,5 A ; U = 0,5 V).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse lue graphiquement sur le document 7 (caractéristique tension-courant) : pour I = 0,5 A, U = 0,5 V.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q114', 'exam_primary_2025_sciences_jan', 114, 'Magnétisme — électroaimant', 'L''interrupteur K est fermé, l''électroaimant attire les boules en :', false, '[{"id": "A", "text": "Fer, cuivre et aluminium."}, {"id": "B", "text": "Cuivre, argent et fer."}, {"id": "C", "text": "Cuivre, aluminium et argent."}, {"id": "D", "text": "Argent, fer et aluminium."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'لا يجذب المغناطيس الكهربائي سوى المواد الفيرومغناطيسية (كالحديد Fer والفولاذ والنيكل والكوبالت)، بينما لا يجذب النحاس (Cuivre) ولا الألومنيوم (Aluminium) ولا الفضة (Argent). وبما أن جميع الاختيارات (A, B, C, D) تحتوي على معادن غير مغناطيسية، فالجواب الصحيح هو E. د. البصريات والرؤية (Optique et vision)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 8 (électroaimant : clou en acier, bobine, interrupteur K, boule métallique) : seul le fer est ferromagnétique ; toutes les options contiennent un métal non magnétique.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q115', 'exam_primary_2025_sciences_jan', 115, 'Optique — dispersion de la lumière', 'Les sept couleurs principales de la lumière de l''arc en ciel sont ordonnées comme suit :', false, '[{"id": "A", "text": "Rouge, jaune, verte, orange, bleue, indigo et violette."}, {"id": "B", "text": "Rouge, jaune, orange, verte, bleue, indigo et violette."}, {"id": "C", "text": "Rouge, orange, jaune, verte, bleue, indigo et violette."}, {"id": "D", "text": "Rouge, orange, indigo, verte, bleue, jaune et violette."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'الترتيب الصحيح لألوان طيف قوس قزح السبعة (من أكبر طول موجة إلى أصغرها) هو: الأحمر، البرتقالي، الأصفر، الأخضر، الأزرق، النيلي، البنفسجي (Rouge, orange, jaune, vert, bleu, indigo, violet).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q116', 'exam_primary_2025_sciences_jan', 116, 'Optique — synthèses additive et soustractive', 'Le mélange de couleurs bleue, rouge et verte d''une part et le mélange de couleurs jaune, bleue et violette d''autre part sont respectivement des synthèses :', false, '[{"id": "A", "text": "Additive et soustractive."}, {"id": "B", "text": "Soustractive et additive."}, {"id": "C", "text": "Additive et additive."}, {"id": "D", "text": "Soustractive et soustractive."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'مزج الأضواء الأزرق والأحمر والأخضر (RVB) يمثل التركيب الجمعي (Synthèse additive) للأضواء الملونة (الذي يعطي الضوء الأبيض). أما مزج الألوان الصبغية/المرشحات (الأصفر والأزرق/السيان والبنفسجي/الماجنتا) فيمثل التركيب الطرحي (Synthèse soustractive) (مع الإشارة العلمية إلى أن التسمية الفيزيائية الدقيقة للألوان الأولية للتركيب الطرحي هي الأصفر والسيان والماجنتا، وقد اعتمد واضع الامتحان التسمية المبسطة "الأزرق والبنفسجي" انسجاماً مع تقديم الوضعية 19).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'L''énoncé (paragraphe 19) emploie la dénomination simplifiée « jaune, bleue et violette » pour les couleurs primaires de la synthèse soustractive ; la dénomination physique précise est jaune, cyan et magenta.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q117', 'exam_primary_2025_sciences_jan', 117, 'Optique — couleur des corps', 'Deux corps C₁ et C₂ éclairés par la lumière blanche, apparaissent rouge et noir respectivement :', false, '[{"id": "A", "text": "C₁ absorbe la couleur rouge et C₂ absorbe les couleurs primaires."}, {"id": "B", "text": "C₁ absorbe les couleurs primaires et C₂ absorbe la couleur rouge."}, {"id": "C", "text": "C₁ absorbe les couleurs secondaires et C₂ absorbe la couleur rouge."}, {"id": "D", "text": "C₁ absorbe la couleur rouge et C₂ absorbe la couleur rouge."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'الجسم C₁ يظهر أحمر تحت الضوء الأبيض لأنه يشتت/يعكس اللون الأحمر ويمتص باقي الألوان (وليس يمتص الأحمر!). الجسم C₂ يظهر أسود لأنه يمتص جميع ألوان الضوء الأبيض ولا يعكس أي لون (وليس يمتص الأحمر فقط أو الأولية فقط). بالتالي جميع الاختيارات A وB وC وD خاطئة. هـ. مفاهيم في الصوتيات (Notions d''acoustique)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q118', 'exam_primary_2025_sciences_jan', 118, 'Acoustique — chaîne de production-réception du son', 'Les éléments de cette chaine sont :', false, '[{"id": "A", "text": "Diapason en vibration, vide, microphone 1 et microphone 2,"}, {"id": "B", "text": "Microphone 1, air, microphone 2 et oscilloscope,"}, {"id": "C", "text": "Diapason en vibration, vide, microphone 1 et oscilloscope."}, {"id": "D", "text": "Diapason en vibration, air, microphone 1 et microphone 2."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'تتكون سلسلة إنتاج واستقبال الصوت من ثلاثة عناصر أساسية: المنبع الصوتي (الباعث): الرنانة المهتزة (Diapason en vibration). وسط مادي للانتشار: الهواء (Air)، لأن الصوت موجة ميكانيكية لا تنتشر في الفراغ (Vide) مما يُقصي A وC. المستقبل الصوتي: الميكروفون 1 والميكروفون 2 (Microphone 1 et microphone 2). (أما الاختيار B فيغفل المنبع الصوتي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse vérifiée sur le document 9 (diapason en vibration, air, microphone 1, microphone 2 ; l''oscilloscope n''est pas un élément de la chaîne de production-réception elle-même).')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q119', 'exam_primary_2025_sciences_jan', 119, 'Acoustique — vitesse du son', 'Δt = 0.5 ms et v = 340 m.s⁻¹. La valeur de la distance d entre les deux microphones est :', false, '[{"id": "A", "text": "0.17 cm."}, {"id": "B", "text": "1.7 cm."}, {"id": "C", "text": "17 cm."}, {"id": "D", "text": "170 cm."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'نحوّل المدة الزمنية إلى الثانية: Δt = 0,5 ms = 0,5 × 10⁻³ s، ثم نطبق العلاقة d = v × Δt : d = 340 × 0,5 × 10⁻³ = 0,17 m = 17 cm', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة يناير 2025) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_jan_q120', 'exam_primary_2025_sciences_jan', 120, 'Acoustique — fréquence', 'La fréquence f du son émis, liée à la période T par la relation f = 1/T, est :', false, '[{"id": "A", "text": "50 Hz environ."}, {"id": "B", "text": "95 Hz environ."}, {"id": "C", "text": "50 kHz environ."}, {"id": "D", "text": "95 kHz environ."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'من خلال القراءة الدقيقة للشبكة في الوثيقة 10: السهم الأفقي 2 ms يمتد على تربيعتين (2 divisions)، أي أن كل تربيعة أفقية واحدة تمثل 1 ms. دور كامل واحد للموجة الجيبية (من نقطة بداية الصعود عند المحور العمودي إلى نقطة بداية الصعود الموالية، أو بين قمتين متتاليتين) يمتد على 10,5 تربيعة. إذن الدور هو: T = 10,5 × 1 ms = 10,5 ms = 10,5 × 10⁻³ s. وبالتالي التردد هو: f = 1/T = 1/(10,5 × 10⁻³) ≈ 95,24 Hz ≈ 95 Hz', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1b6CyJN_1czjhHOQJgnePxjHpEO8266ey', true, 'Réponse lue graphiquement sur le document 10 (oscillogramme) : l''indication 2 ms couvre 2 divisions, soit 1 ms par division ; une période couvre 10,5 divisions, soit T = 10,5 ms et f ≈ 95 Hz.')
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
