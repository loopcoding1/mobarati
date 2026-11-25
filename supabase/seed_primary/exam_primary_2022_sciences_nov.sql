-- ====================================================================
-- مباراتي — امتحان ابتدائي: العلوم، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/العلوم - 2022.md
--   (سجل الامتحانات رقم 66؛ الحل: تصحيح منشور على mesconcours.ma، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2022/العلوم - امتحان.pdf (12 صفحة ممسوحة ضوئيا).
--   لا يوجد ملف تصحيح رسمي مرفق بالامتحان؛ الحل مصدره طرف ثالث (mesconcours.ma).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة، 12/12):
--   * نص كل سؤال من Q91 إلى Q120 وخياراته الأربعة (A-D) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة الثلاثون كلها من مصدر واحد (mesconcours.ma)؛ لا يوجد مصدر
--     ثانٍ للمقارنة، ولم يضع الموقع أي علامة تحفظ على أي سؤال.
--   * قيم تراكيز الديلدرين في الوثيقة 3 وجدول الوثيقة 9 وطيف الوثيقة 10 قُرئت
--     من ملف PDF مباشرة (الأسس سقطت من استخراج النص).
--
-- اختلافان لفظيان عن ملف الحل، اعتُمد فيهما نص ورقة الامتحان (PDF) لأنه الأصل:
--   * Q115: ملف الحل يقول «source lumineuse étendue (lampe d'un projecteur)»
--     و«cône d'ombre, ombre propre»؛ ورقة الامتحان تقول «projection lumineuse
--     étendue (Lampe d'un projecteur)» و«cône d'ombre ; ombre propre».
--   * Q119: ملف الحل يكتب «Jbel Toubkal» في الحاشية؛ ورقة الامتحان تطبع
--     «Jbel Toubkai» (خطأ مطبعي في الورقة نفسها، والعنوان يقول Toubkal).
--   * ما عدا ذلك، أُبقيت صياغة ملف الحل حرفياً، بما فيها تطبيع المسافات وعلامة
--     الضرب (×) في الصيغ الحسابية (Q111–Q114، Q119)؛ وهامش «(الشكل: الوثيقة N
--     في ملف PDF)» — وهو تعليق من الحلّال لا نص من الامتحان — حُذف من نصوص
--     الأسئلة، ما عدا Q120 حيث يحمل الهامش محتوى الوثيقة 10 نفسه فأُبقي عليه.
--
-- ملاحظات عن ملف الامتحان:
--   * الدورة نونبر 2022 والمدة (60 دقيقة) والمعامل (2) من غلاف الامتحان (صفحة 1).
--   * لا أسئلة محذوفة: الأسئلة الثلاثون كلها مدرجة وموثقة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2022_sciences_nov
--   <exam_id>_q<n>  للأسئلة، وعمود number يحمل الترقيم الأصلي للورقة (91–120).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_sciences_nov', 'specialty_primary', 2022, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بأربعة اختيارات A-D)

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q91', 'exam_primary_2022_sciences_nov', 91, 'البيولوجيا — الجزيئات الكبيرة العضوية', 'Biologie. L''organisation des êtres vivants varie selon les différents niveaux : molécules, cellules, tissus, organes et organismes.
1. Les macromolécules organiques diffèrent par leur composition chimique.
Un glucide est constitué des éléments chimiques suivants :', false, '[{"id": "A", "text": "Carbone, oxygène et azote."}, {"id": "B", "text": "Carbone, oxygène et hydrogène."}, {"id": "C", "text": "Hydrogène, oxygène et azote."}, {"id": "D", "text": "Hydrogène, carbone et azote."}]'::jsonb, ARRAY['B']::text[], 'Les glucides (sucres, amidon, cellulose) ont pour formule générale : ils ne contiennent que du carbone, de l''hydrogène et de l''oxygène. L''azote caractérise les protéines et les acides nucléiques, ce qui écarte A, C et D.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q92', 'exam_primary_2022_sciences_nov', 92, 'البيولوجيا — الجزيئات الكبيرة العضوية', 'Une protéine est une macromolécule présente dans toutes les cellules vivantes, elle est constituée :', false, '[{"id": "A", "text": "d''acides gras et de glycérol."}, {"id": "B", "text": "d''acides gras."}, {"id": "C", "text": "d''acides aminés."}, {"id": "D", "text": "d''acides aminés et d''acides nucléiques."}]'::jsonb, ARRAY['C']::text[], 'Une protéine est une chaîne d''acides aminés reliés par des liaisons peptidiques. Les acides gras et le glycérol forment les lipides (A, B). Les acides nucléiques (ADN, ARN) sont une autre famille de macromolécules, faite de nucléotides : D mélange deux familles.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q93', 'exam_primary_2022_sciences_nov', 93, 'البيولوجيا — خلية البصل (الوثيقة 1)', '2. Le document 1 présente une image d''observation microscopique des cellules d''épiderme d''oignon, avec quatre éléments légendés de 1 à 4.
Les éléments qui correspondent à la légende du document 1 sont :', false, '[{"id": "A", "text": "1 - noyau ; 2 - vacuole ; 3 - paroi squelettique ; 4 - cytoplasme."}, {"id": "B", "text": "1 - cytoplasme ; 2 - noyau ; 3 - vacuole ; 4 - paroi squelettique."}, {"id": "C", "text": "1 - vacuole ; 2 - noyau ; 3 - paroi squelettique ; 4 - cytoplasme."}, {"id": "D", "text": "1 - cytoplasme ; 2 - noyau ; 3 - paroi squelettique ; 4 - vacuole."}]'::jsonb, ARRAY['C']::text[], 'Dans une cellule d''épiderme d''oignon, la grande vacuole occupe presque tout le centre de la cellule (1). Le noyau est la petite masse arrondie et sombre (2). La limite rigide commune à deux cellules voisines est la paroi squelettique, ou paroi pectocellulosique (3). Le cytoplasme est réduit à une mince couche plaquée contre la paroi, bien visible dans les angles (4). Seule la proposition C donne cet ordre.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q94', 'exam_primary_2022_sciences_nov', 94, 'البيولوجيا — التنفس عند الجراد', '3. La respiration est l''un des modes d''adaptation des animaux à leur milieu de vie.
Chez le criquet, les trachées sont des structures permettant les échanges gazeux :', false, '[{"id": "A", "text": "directement entre les poumons et les organes."}, {"id": "B", "text": "directement entre l''air et les organes."}, {"id": "C", "text": "entre l''air et le sang, en passant par les poumons."}, {"id": "D", "text": "entre l''eau et les organes, en passant par les branchies."}]'::jsonb, ARRAY['B']::text[], 'Le criquet est un insecte terrestre sans poumons. L''air entre par les stigmates et circule dans un réseau de trachées et de trachéoles qui se ramifient jusqu''aux cellules des organes : le dioxygène passe directement de l''air aux tissus, sans transport par le sang. Les poumons (A, C) et les branchies (D) appartiennent à d''autres groupes d''animaux.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q95', 'exam_primary_2022_sciences_nov', 95, 'البيولوجيا — الجلد واللمس (الوثيقة 2)', '4. Le toucher est l''un des cinq sens qui jouent un rôle indispensable à la survie de l''être humain. Le document 2 présente un schéma des différents éléments de la peau.
Les éléments qui correspondent à la légende du document 2 sont :', false, '[{"id": "A", "text": "1- terminaison nerveuse ; 2- derme ; 3- hypoderme ; 4- épiderme ; 5- glande sudoripare ; 6- fibre nerveuse sensitive ; 7- corpuscule de Meissner ; 8- corpuscule de Pacini."}, {"id": "B", "text": "1- épiderme ; 2- derme ; 3- hypoderme ; 4- terminaison nerveuse ; 5- corpuscule de Meissner ; 6- fibre nerveuse sensitive ; 7- glande sudoripare ; 8- corpuscule de Pacini."}, {"id": "C", "text": "1- épiderme ; 2- derme ; 3- corpuscule de Pacini ; 4- terminaison nerveuse ; 5- corpuscule de Meissner ; 6- fibre nerveuse sensitive ; 7- hypoderme ; 8- glande sudoripare."}, {"id": "D", "text": "1- épiderme ; 2- derme ; 3- hypoderme ; 4- terminaison nerveuse ; 5- corpuscule de Pacini ; 6- fibre nerveuse sensitive ; 7- corpuscule de Meissner ; 8- glande sudoripare."}]'::jsonb, ARRAY['B']::text[], 'Les accolades 1, 2 et 3 délimitent les trois couches de la peau, de la surface vers la profondeur : épiderme, derme, hypoderme (ce qui écarte A et C). Les terminaisons ramifiées qui montent dans l''épiderme sont des terminaisons nerveuses libres (4), les petits corpuscules ovales logés dans les papilles du derme sont les corpuscules de Meissner (5) et le trait qui les relie est une fibre nerveuse sensitive (6). Le peloton profond relié à la surface par un canal est la glande sudoripare (7), et les gros corpuscules à lamelles concentriques de l''hypoderme sont les corpuscules de Pacini (8). D inverse Meissner et Pacini.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q96', 'exam_primary_2022_sciences_nov', 96, 'الإيكولوجيا العامة — التجمع الحيوي', 'Écologie générale. Les écosystèmes se caractérisent par les relations trophiques entre les êtres vivants et leurs relations avec le milieu.
5. La Dieldrine est un insecticide organochloré, appliqué en agriculture pour traiter les récoltes et les protéger contre les parasites. Cette substance toxique est peu biodégradable et très persistante dans l''environnement. Le document 3 présente la concentration de cet insecticide chez des individus de la biocénose d''un milieu aquatique.
On désigne par une biocénose l''ensemble des êtres vivants :', false, '[{"id": "A", "text": "producteurs qui peuplent un écosystème donné."}, {"id": "B", "text": "qui peuplent un écosystème donné."}, {"id": "C", "text": "consommateurs qui peuplent un écosystème donné."}, {"id": "D", "text": "décomposeurs qui peuplent un écosystème donné."}]'::jsonb, ARRAY['B']::text[], 'La biocénose est la totalité des êtres vivants d''un écosystème, toutes catégories confondues : producteurs, consommateurs et décomposeurs. Avec le biotope (le milieu physique), elle forme l''écosystème. A, C et D n''en retiennent qu''une partie.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q97', 'exam_primary_2022_sciences_nov', 97, 'الإيكولوجيا العامة — التضخم البيولوجي (الوثيقة 3)', 'D''après les résultats de l''étude du document 3, on déduit que la concentration du pesticide sera :', false, '[{"id": "A", "text": "plus élevée chez les mouettes que chez les cormorans."}, {"id": "B", "text": "plus élevée chez les poissons prédateurs que chez les cormorans."}, {"id": "C", "text": "moins élevée chez les mouettes que chez les cormorans."}, {"id": "D", "text": "moins élevée chez les cormorans que chez les sternes."}]'::jsonb, ARRAY['C']::text[], 'La concentration augmente à chaque maillon : 10⁻³ ppm (phytoplancton), 2·10⁻² ppm (zooplancton), 3·10⁻² ppm (maillon III : crustacés et poissons microphages), puis 1,6 ppm chez le cormoran (maillon V). C''est la bioamplification d''un toxique non biodégradable. Les mouettes occupent le niveau IV, sous le cormoran : elles en contiennent moins. A, B et D affirment l''inverse pour un consommateur de niveau inférieur. (قيم التركيز مقروءة من الوثيقة 3 في ملف PDF، إذ سقطت الأسس من استخراج نص الصفحة.)', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q98', 'exam_primary_2022_sciences_nov', 98, 'الإيكولوجيا العامة — المكافحة البيولوجية', 'Parmi les moyens non polluants pouvant substituer l''utilisation de la Dieldrine, on peut citer :', false, '[{"id": "A", "text": "le recours à la lutte chimique par l''utilisation des prédateurs naturels."}, {"id": "B", "text": "le recours à la lutte biologique par l''utilisation des prédateurs naturels."}, {"id": "C", "text": "la substitution de la Dieldrine par d''autres produits chimiques plus efficaces."}, {"id": "D", "text": "l''arrêt de l''utilisation de cet insecticide malgré la diminution du rendement agricole."}]'::jsonb, ARRAY['B']::text[], 'Utiliser les prédateurs naturels des ravageurs (coccinelles contre les pucerons, par exemple) s''appelle la lutte biologique : elle n''introduit aucun produit toxique dans la chaîne alimentaire. A donne un mauvais nom à cette méthode, C reste une lutte chimique polluante et D supprime la pollution sans proposer de moyen de remplacement.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q99', 'exam_primary_2022_sciences_nov', 99, 'الجيولوجيا — تصنيف الصخور (الوثيقة 4)', 'Géologie. Les sciences de la Terre regroupent plusieurs disciplines telles que la pétrographie qui s''intéresse à l''étude des roches et la sismologie qui étudie les séismes.
6. Les roches peuvent être classées, selon leur origine, en trois grandes catégories : roches sédimentaires, roches métamorphiques et roches magmatiques. Le document 4 présente quelques roches ayant des origines différentes (photographies) :
(a) Gneiss ; (b) Basalte ; (c) Anthracite (charbon) ; (d) Granite.
La classification des roches sus-citées est :', false, '[{"id": "A", "text": "(c) - roche sédimentaire ; (a) et (d) - roches magmatiques ; (b) - roche métamorphique."}, {"id": "B", "text": "(a) - roche sédimentaire ; (b) et (c) - roches magmatiques ; (d) - roche métamorphique."}, {"id": "C", "text": "(a) - roche métamorphique ; (b) et (d) - roches magmatiques ; (c) - roche sédimentaire."}, {"id": "D", "text": "(a) - roche magmatique ; (b) et (d) - roches métamorphiques ; (c) - roche sédimentaire."}]'::jsonb, ARRAY['C']::text[], 'Le gneiss (a), avec ses lits feuilletés, provient de la transformation d''une roche sous forte pression et température : il est métamorphique. Le basalte (b, volcanique) et le granite (d, plutonique) se forment par refroidissement d''un magma : ils sont magmatiques. L''anthracite (c) est un charbon issu de l''accumulation de débris végétaux enfouis : roche sédimentaire d''origine organique.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q100', 'exam_primary_2022_sciences_nov', 100, 'الجيولوجيا — الزلزال (الوثيقة 5)', '7. Un séisme ou tremblement de terre est une secousse du sol résultant de la libération brusque d''énergie accumulée suite aux déplacements des plaques tectoniques. Le document 5 ci-dessous est un modèle montrant quelques éléments d''un séisme.
La légende correspondant aux éléments à annoter du document 5 est la suivante :', false, '[{"id": "A", "text": "(a) - foyer ; (b) - surface ; (c) - faille ; (d) - ondes sismiques ; (e) - épicentre."}, {"id": "B", "text": "(a) - épicentre ; (b) - surface ; (c) - ondes sismiques ; (d) - faille ; (e) - foyer."}, {"id": "C", "text": "(a) - foyer ; (b) - faille ; (c) - ondes sismiques ; (d) - surface ; (e) - épicentre."}, {"id": "D", "text": "(a) - épicentre ; (b) - surface ; (c) - faille ; (d) - ondes sismiques ; (e) - foyer."}]'::jsonb, ARRAY['D']::text[], 'Le foyer (e) est le point en profondeur où la roche se rompt et d''où partent les ondes. L''épicentre (a) est le point de la surface situé juste à sa verticale. (b) désigne la surface du sol, (c) la cassure inclinée qui part du foyer, c''est-à-dire la faille, et (d) les cercles concentriques autour du foyer, qui représentent les ondes sismiques.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q101', 'exam_primary_2022_sciences_nov', 101, 'الجيولوجيا — الأمواج الزلزالية', 'Les différents types d''ondes sismiques se propagent à :', false, '[{"id": "A", "text": "la même vitesse dans toutes les directions."}, {"id": "B", "text": "différentes vitesses dans une même direction."}, {"id": "C", "text": "différentes vitesses dans toutes les directions."}, {"id": "D", "text": "la même vitesse dans une même direction."}]'::jsonb, ARRAY['C']::text[], 'Les ondes partent du foyer dans toutes les directions (les cercles concentriques du document 5). Les différents types d''ondes n''ont pas la même vitesse : les ondes P arrivent les premières, puis les ondes S, puis les ondes de surface. Les sismographes enregistrent donc des arrivées décalées dans le temps.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q102', 'exam_primary_2022_sciences_nov', 102, 'الجيولوجيا — بنية الأرض', 'Le comportement des ondes sismiques en profondeur montre que la Terre est constituée de plusieurs enveloppes :', false, '[{"id": "A", "text": "l''écorce solide, le manteau et le noyau liquides."}, {"id": "B", "text": "l''écorce, le manteau supérieur, le manteau inférieur et le noyau solides."}, {"id": "C", "text": "l''écorce et le manteau supérieur solides, le manteau inférieur et le noyau liquides."}, {"id": "D", "text": "l''écorce et le manteau solides, le noyau liquide."}]'::jsonb, ARRAY['D']::text[], 'Les ondes S ne traversent pas les liquides. Elles passent dans l''écorce et dans tout le manteau, qui sont donc solides, et s''arrêtent vers 2 900 km de profondeur, au contact du noyau externe liquide. A et C rendent le manteau liquide, B rend tout solide. D est la réponse attendue, au niveau du programme ; en toute rigueur seul le noyau externe est liquide, la graine (noyau interne) étant solide.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, 'الجواب D هو المتوقع حسب المنهاج؛ بدقة علمية النواة الخارجية فقط سائلة، أما النواة الداخلية (البذرة) فصلبة.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q103', 'exam_primary_2022_sciences_nov', 103, 'علم الفلك الوصفي — دوران الأرض حول الشمس', 'Astronomie descriptive. 8. L''astronomie est la science qui étudie les positions relatives, les mouvements, la structure et l''évolution des astres.
La Terre tourne au tour du soleil en :', false, '[{"id": "A", "text": "366,25 jours environ."}, {"id": "B", "text": "364,25 jours environ."}, {"id": "C", "text": "365,25 jours environ."}, {"id": "D", "text": "367,25 jours environ."}]'::jsonb, ARRAY['C']::text[], 'Une révolution de la Terre autour du Soleil dure environ 365,25 jours. Le calendrier compte 365 jours et rattrape le quart de jour restant en ajoutant un 29 février tous les quatre ans (année bissextile).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q104', 'exam_primary_2022_sciences_nov', 104, 'علم الفلك الوصفي — مستوى مسار الشمس', 'Le plan de l''écliptique est :', false, '[{"id": "A", "text": "le plan de l''orbite de la terre au tour du soleil."}, {"id": "B", "text": "le plan de l''orbite de la lune au tour du soleil."}, {"id": "C", "text": "le plan de l''orbite de la terre au tour de la lune."}, {"id": "D", "text": "le plan de l''orbite du soleil au tour de la terre."}]'::jsonb, ARRAY['A']::text[], 'L''écliptique est le plan qui contient l''orbite de la Terre autour du Soleil. Vu depuis la Terre, c''est aussi le chemin apparent du Soleil parmi les étoiles. C et D inversent les mouvements réels, et la Lune tourne autour de la Terre, pas directement autour du Soleil (B).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q105', 'exam_primary_2022_sciences_nov', 105, 'علم الفلك الوصفي — خسوف القمر', 'L''éclipse totale de la Lune a lieu quand :', false, '[{"id": "A", "text": "la terre se situe dans le cône d''ombre de la lune."}, {"id": "B", "text": "la lune se situe dans le cône d''ombre de la terre."}, {"id": "C", "text": "le soleil se situe dans le cône d''ombre de la terre."}, {"id": "D", "text": "le soleil se situe dans le cône d''ombre de la lune."}]'::jsonb, ARRAY['B']::text[], 'Lors d''une éclipse de Lune, le Soleil, la Terre et la Lune sont alignés dans cet ordre, à la pleine lune : la Lune entre dans le cône d''ombre de la Terre et n''est plus éclairée directement. A décrit une éclipse de Soleil. Le Soleil, source de lumière, ne peut pas se trouver dans une ombre (C, D).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q106', 'exam_primary_2022_sciences_nov', 106, 'العلوم الفيزيائية والتكنولوجيا — تغيرات حالات الماء (الوثيقة 6)', 'Sciences physiques et technologie.
Organisation de la matière. Une substance peut se présenter sous différentes formes physiques, selon ses propriétés, la température et la pression.
9. Dans la nature l''eau se présente sous trois états physiques différents : liquide (mer, fleuve, pluie...), solide (glace, neige) et gazeux (vapeur d''eau). Chaque numéro du document 6 correspond à l''un des six changements d''états possibles de l''eau dans la nature.
Les changements d''états de l''eau, dans la nature, présentés par le document 6 sont :', false, '[{"id": "A", "text": "(1)- Sublimation ; (2)- Liquéfaction ; (3)- Vaporisation ; (4)- Condensation ; (5)- Fusion ; (6)- Solidification."}, {"id": "B", "text": "(1)- Sublimation ; (2)- Fusion ; (3)- Vaporisation ; (4)- Solidification ; (5)- Liquéfaction ; (6)- Condensation."}, {"id": "C", "text": "(1)- Condensation ; (2)- Fusion ; (3)- Vaporisation ; (4)- Solidification ; (5)- Liquéfaction ; (6)- Sublimation."}, {"id": "D", "text": "(1)- Condensation ; (2)- Liquéfaction ; (3)- Vaporisation ; (4)- Solidification ; (5)- Fusion ; (6)- Sublimation."}]'::jsonb, ARRAY['B']::text[], 'On lit le sens de chaque flèche. (1) glace vers vapeur : sublimation. (2) glace vers eau liquide : fusion. (3) eau vers vapeur : vaporisation. (4) eau vers glace : solidification. (5) vapeur vers eau : liquéfaction. (6) vapeur vers glace : condensation (passage direct du gaz au solide, appelé aussi déposition). C et D inversent 1 et 6, A confond fusion, liquéfaction et solidification.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q107', 'exam_primary_2022_sciences_nov', 107, 'العلوم الفيزيائية والتكنولوجيا — الصلب المتراص', 'Un solide compact est caractérisé par les propriétés physiques suivantes :', false, '[{"id": "A", "text": "1 - Il est constitué d''un seul bloc ; 2 - Il est doté d''une forme propre ; 3 - Il a un volume constant ; 4 - Il peut être saisi par les doigts."}, {"id": "B", "text": "1 - Il est constitué de grains ou fragments très petits ; 2 - Il est doté d''une forme propre ; 3 - Il a un volume constant ; 4 - Il peut être saisi par les doigts."}, {"id": "C", "text": "1 - Il est constitué de grains ou fragments très petits ; 2 - Il a une forme variable ; 3 - Il a un volume constant ; 4 - Il peut être saisi par les doigts."}, {"id": "D", "text": "1 - Il est constitué d''un seul bloc ; 2 - Il est doté d''une forme propre ; 3 - Il a un volume variable ; 4 - Il peut être saisi par les doigts."}]'::jsonb, ARRAY['A']::text[], 'Un solide compact (une pierre, un morceau de bois) forme un seul bloc, garde sa forme propre et son volume, et se saisit avec les doigts. Les grains très petits et la forme variable décrivent un solide divisé, comme le sable ou la farine (B, C). Le volume d''un solide ne varie pas (D faux).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q108', 'exam_primary_2022_sciences_nov', 108, 'العلوم الفيزيائية والتكنولوجيا — الغاز', 'Un gaz, état de la matière, est doté des propriétés suivantes :', false, '[{"id": "A", "text": "1 - Il occupe tout l''espace disponible ; 2 - Il est compressible ; 3 - Il est expansible ; 4 - Il prend la forme du récipient qui le contient."}, {"id": "B", "text": "1 - Il occupe tout l''espace disponible ; 2 - Il n''est pas compressible ; 3 - Il peut être saisi avec la main ; 4 - Il a une surface libre plane."}, {"id": "C", "text": "1 - Il a un volume constant ; 2 - Il n''est pas compressible ; 3 - Il peut être saisi avec la main ; 4 - Il prend la forme du récipient qui le contient."}, {"id": "D", "text": "1 - Il a un volume constant ; 2 - Il est compressible ; 3 - Il est expansible ; 4 - Il a une surface libre plane."}]'::jsonb, ARRAY['A']::text[], 'Un gaz n''a ni forme ni volume propres : il occupe tout le volume offert et prend la forme du récipient. On peut le comprimer (seringue bouchée) et il se détend dès qu''on lui laisse de la place (expansible). La surface libre plane et le volume constant caractérisent les liquides, et un gaz ne se saisit pas avec la main (B, C, D).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q109', 'exam_primary_2022_sciences_nov', 109, 'العلوم الفيزيائية والتكنولوجيا — النقل الحراري', 'Transfert thermique. 10. Le transfert thermique peut s''effectuer selon trois modes : conduction, convection et rayonnement.
Le transfert thermique par convection permet :', false, '[{"id": "A", "text": "la propagation de la chaleur dans le vide ou à l''intérieur d''un corps solide, liquide ou gazeux."}, {"id": "B", "text": "le transfert de la chaleur entre deux corps avec déplacement de la matière."}, {"id": "C", "text": "la propagation de la chaleur entre deux corps sans déplacement de la matière."}, {"id": "D", "text": "le transfert de la chaleur sans contact direct ou dans le vide, d''un corps solide, liquide ou gazeux à un autre."}]'::jsonb, ARRAY['B']::text[], 'La convection est propre aux fluides (liquides et gaz) : la matière chauffée se déplace et emporte la chaleur, comme l''eau qui monte puis redescend dans une casserole. Sans déplacement de matière, c''est la conduction (C). Dans le vide et sans contact, c''est le rayonnement (A, D).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q110', 'exam_primary_2022_sciences_nov', 110, 'العلوم الفيزيائية والتكنولوجيا — الدارات الكهربائية (الوثيقة 7)', 'Électricité et magnétisme. L''électricité est une forme d''énergie issue d''un déplacement de charges électriques dans un matériau conducteur.
11. On réalise deux circuits électriques comportant chacun un générateur et trois lampes (L1, L2 et L3). Le document 7 représente deux montages : un montage en série (figure 1) et un montage en parallèle (figure 2).
Choisissez la réponse correcte parmi les propositions suivantes :', false, '[{"id": "A", "text": "dans le circuit en série, l''intensité du courant entre les dipôles est inférieure à celle qui traverse le générateur."}, {"id": "B", "text": "dans le circuit en parallèle, l''intensité du courant dans la branche principale est égale à la somme des intensités dans les branches dérivées."}, {"id": "C", "text": "dans le montage en série, lorsque la lampe L2 est court-circuitée, l''incandescence des lampes L1 et L3 devient faible et la lampe L2 s''éteint."}, {"id": "D", "text": "dans le montage en parallèle, lorsque la lampe L1 est court-circuitée, l''incandescence des lampes L2 et L3 devient forte et la lampe L1 s''éteint."}]'::jsonb, ARRAY['B']::text[], 'C''est la loi des nœuds : dans un montage en dérivation, l''intensité de la branche principale est la somme des intensités des branches dérivées. A est faux : en série l''intensité est la même partout. C est faux : si L2 est court-circuitée, L2 s''éteint mais L1 et L3 brillent plus fort, car il y a moins de lampes en série. D est faux : en dérivation, court-circuiter une lampe court-circuite le générateur, et toutes les lampes s''éteignent.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q111', 'exam_primary_2022_sciences_nov', 111, 'العلوم الفيزيائية والتكنولوجيا — شدة التيار', '12. Sur une bouilloire électrique, on trouve une plaque signalétique qui présente les indications suivantes : P = 1300 W, U = 230 V.
L''intensité ( I ) qui traverse la résistance chauffante de la bouilloire est :', false, '[{"id": "A", "text": "I = U/P = 230 / 1300 = 0,177 A."}, {"id": "B", "text": "I = P/U = 1300 / 230 = 5,65 A."}, {"id": "C", "text": "I = U×P = 230 × 1300 = 299000 A."}, {"id": "D", "text": "I = U+P = 230 + 1300 = 1530 A."}]'::jsonb, ARRAY['B']::text[], 'Pour un appareil de chauffage, P = U×I, donc I = P/U = 1300/230 = 5,65 A. Les autres formules ne sont pas homogènes : diviser U par P ne donne pas des ampères, et additionner des volts et des watts n''a pas de sens.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, 'تنبيه: نص تعليل المصدر (mesconcours.ma) يقول «donc A» بينما الجواب الصحيح المعلن في المصدر نفسه هو B؛ الصيغة والحساب (I = P/U = 1300/230 = 5,65 A) يعطيان B دون لبس، فأُبقي على B.')
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q112', 'exam_primary_2022_sciences_nov', 112, 'العلوم الفيزيائية والتكنولوجيا — الطاقة الكهربائية', 'Il faut environ 60 secondes pour faire chauffer l''eau. L''énergie (E) que cette bouilloire convertit en Joule (J) est :', false, '[{"id": "A", "text": "E = 1300 + 60 = 1360 J."}, {"id": "B", "text": "E = 60/1300 = 0,046 J."}, {"id": "C", "text": "E = 1300/60 = 21,66 J."}, {"id": "D", "text": "E = 1300×60 = 78000 J."}]'::jsonb, ARRAY['D']::text[], 'L''énergie est le produit de la puissance par la durée : E = P×t = 1300×60 = 78000 J. Avec P en watts et t en secondes, on obtient directement des joules.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q113', 'exam_primary_2022_sciences_nov', 113, 'العلوم الفيزيائية والتكنولوجيا — المقبس المتعدد', '13. Une multiprise branchée sur la tension de secteur (U = 220 V) est protégée par un fusible supportant une intensité I = 5 A. On a déjà branché sur cette multiprise un téléviseur de 150 W et trois autres appareils électriques de 75 W chacun. (Le sujet illustre la situation par une photographie de multiprise.)
L''intensité totale qui traverse cette multiprise est :', false, '[{"id": "A", "text": "I = (150 + (3×75)) + 220 = 595 A"}, {"id": "B", "text": "I = (150 + (3×75)) / 220 = 1,70 A"}, {"id": "C", "text": "I = 220 / (150 + (3×75)) = 0,58 A"}, {"id": "D", "text": "I = (150 + (3×75)) − 220 = 155 A"}]'::jsonb, ARRAY['B']::text[], 'Les appareils branchés sur une multiprise sont en dérivation : leurs puissances s''additionnent, P = 150 + 3×75 = 375 W. L''intensité totale vaut I = P/U = 375/220 = 1,70 A.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q114', 'exam_primary_2022_sciences_nov', 114, 'العلوم الفيزيائية والتكنولوجيا — الصهيرة', 'Que se passerait-il pour le fusible si, en plus des appareils déjà branchés, on voulait ajouter un ventilateur de 3000 W sur la même multiprise ?', false, '[{"id": "A", "text": "l''intensité qui traverse le fusible devient I = 15,34 A ; le fusible sautera car cette intensité est supérieure à 5 A."}, {"id": "B", "text": "l''intensité qui traverse le fusible devient I = 15,34 A ; le fusible résistera car cette intensité est supérieure à 5 A."}, {"id": "C", "text": "l''intensité qui traverse le fusible devient I = 0,065 A ; le fusible sautera car cette intensité est inférieure à 5 A."}, {"id": "D", "text": "l''intensité qui traverse le fusible devient I = 0,065 A ; le fusible résistera car cette intensité est inférieure à 5 A."}]'::jsonb, ARRAY['A']::text[], 'La puissance totale devient P = 375 + 3000 = 3375 W, d''où I = 3375/220 = 15,34 A. Cette intensité dépasse les 5 A que supporte le fusible : il fond et coupe le circuit, ce qui est précisément son rôle de protection.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q115', 'exam_primary_2022_sciences_nov', 115, 'البصريات والرؤية — الظل المحمول (الوثيقة 8)', 'Optique et vision. La propagation rectiligne de la lumière sur les objets opaques entraîne la formation des zones d''ombre et de pénombre qui dépendent des types de sources lumineuses (ponctuelle ou étendue).
14. L''éclairage d''un objet opaque (une balle) placé devant un écran blanc par une source lumineuse ponctuelle (une lampe de torche) donne les zones suivantes : cône d''ombre ; ombre propre et ombre portée. Dans le cas d''une projection lumineuse étendue (Lampe d''un projecteur), on obtient les résultats présentés dans le document 8.
L''ombre portée correspond à :', false, '[{"id": "A", "text": "la zone partiellement éclairée, elle est formée par l''interception de la lumière par un corps."}, {"id": "B", "text": "la zone partiellement sombre créée par un corps opaque qui intercepte les rayons lumineux."}, {"id": "C", "text": "la zone où les objets peuvent être éclairés par la source de lumière."}, {"id": "D", "text": "l''ombre créée derrière un objet éclairé par une source lumineuse venant d''un point opposé."}]'::jsonb, ARRAY['D']::text[], 'L''ombre portée est la zone sombre que l''objet opaque projette derrière lui, sur l''écran, du côté opposé à la source. A et B décrivent la pénombre, zone qui reçoit une partie seulement de la lumière d''une source étendue. C décrit la zone éclairée.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q116', 'exam_primary_2022_sciences_nov', 116, 'البصريات والرؤية — مناطق الظل (الوثيقة 8)', 'Les zones créées par la lumière issue de la source dans le document 8 sont :', false, '[{"id": "A", "text": "(a) - cône d''ombre ; (b) - ombre portée ; (c) - ombre propre ; (d) - pénombre."}, {"id": "B", "text": "(a) - ombre propre ; (b) - cône d''ombre ; (c) - ombre portée ; (d) - pénombre."}, {"id": "C", "text": "(a) - pénombre ; (b) - ombre portée ; (c) - ombre propre ; (d) - cône d''ombre."}, {"id": "D", "text": "(a) - pénombre ; (b) - ombre propre ; (c) - ombre portée ; (d) - cône d''ombre."}]'::jsonb, ARRAY['B']::text[], 'La partie sombre de la balle, du côté opposé à la source, est son ombre propre (a). L''espace pointillé entre la balle et l''écran, qui ne reçoit aucune lumière, est le cône d''ombre (b). Le disque sombre sur l''écran est l''ombre portée (c), entouré d''un anneau moins sombre, la pénombre (d), éclairé par une partie seulement de la source étendue.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q117', 'exam_primary_2022_sciences_nov', 117, 'البصريات والرؤية — تحليل الضوء الأبيض', 'La séparation de la lumière blanche avec un prisme permet d''obtenir un mélange de couleurs constitué par :', false, '[{"id": "A", "text": "sept couleurs qui s''étalent du violet au jaune."}, {"id": "B", "text": "sept couleurs qui s''étalent de l''ultraviolet à l''infrarouge."}, {"id": "C", "text": "cinq couleurs qui s''étalent du violet au rouge."}, {"id": "D", "text": "sept couleurs qui s''étalent du violet au rouge."}]'::jsonb, ARRAY['D']::text[], 'Le prisme décompose la lumière blanche en un spectre continu dont on distingue traditionnellement sept couleurs : violet, indigo, bleu, vert, jaune, orange, rouge. Le spectre visible va donc du violet au rouge ; l''ultraviolet et l''infrarouge (B) sont invisibles à l''œil.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q118', 'exam_primary_2022_sciences_nov', 118, 'مفاهيم الصوتيات — سرعة الصوت (الوثيقة 9)', 'Notions d''acoustique. Le son se propage à différentes vitesses selon le milieu que l''onde sonore traverse. Dans l''air, cette propagation dépend de la température et de l''altitude.
15. Le document 9 présente la vitesse du son en fonction de ces deux variables.
Document 9
Température (°C) | Altitude (m) | Vitesse du son (m/s)
25 | 0 | 346
18,5 | 1000 | 342
12 | 2000 | 340
−1 | 4000 | 330
−27 | 8000 | 314
La vitesse du son qui se propage dans l''air :', false, '[{"id": "A", "text": "diminue quand la température et l''altitude diminuent."}, {"id": "B", "text": "augmente quand la température et l''altitude diminuent."}, {"id": "C", "text": "diminue quand la température diminue et l''altitude augmente."}, {"id": "D", "text": "augmente quand la température diminue et l''altitude augmente."}]'::jsonb, ARRAY['C']::text[], 'Dans le document 9, quand on monte de 0 à 8000 m, la température tombe de 25 °C à −27 °C et la vitesse du son passe de 346 à 314 m/s. La vitesse diminue donc quand la température diminue et que l''altitude augmente. A et B associent une baisse de l''altitude à une baisse de température, ce que le tableau ne montre pas, et D contredit les valeurs.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q119', 'exam_primary_2022_sciences_nov', 119, 'مفاهيم الصوتيات — سرعة الصوت في جبل توبقال', '16. La plus haute montagne du Maroc est Jbel Toubkal. Elle se situe à 4165 m d''altitude (on considère dans ce cas que l''altitude de Jbel Toubkai est 4000 m).
À Jbel Toubkal, le son parcourt une distance de 1000 m dans une durée de :', false, '[{"id": "A", "text": "330 × 1000 = 330000 s."}, {"id": "B", "text": "1000 / 330 = 3,03 s."}, {"id": "C", "text": "342 × 1000 = 342000 s."}, {"id": "D", "text": "1000 / 342 = 2,92 s."}]'::jsonb, ARRAY['B']::text[], 'À 4000 m d''altitude, le document 9 donne une vitesse du son de 330 m/s. La durée est la distance divisée par la vitesse : t = 1000/330 = 3,03 s. D utilise la vitesse à 1000 m d''altitude (342 m/s), A et C multiplient au lieu de diviser.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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

-- أسئلة امتحان: العلوم — مادة التخصص (دورة نونبر 2022) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_nov_q120', 'exam_primary_2022_sciences_nov', 120, 'مفاهيم الصوتيات — الأمواج الصوتية (الوثيقة 10)', '17. On peut distinguer trois types d''ondes : les ondes sonores, les ondes infrasoniques et les ondes ultrasoniques. Le document 10 donne le spectre de ces ondes. (الشكل: الوثيقة 10 في ملف PDF — Infrasons < 20 Hz، Sons audibles 20 Hz – 20000 Hz، Ultrasons > 20000 Hz، Échographie)
L''Homme est capable d''entendre :', false, '[{"id": "A", "text": "Les ondes sonores et les ondes infrasoniques."}, {"id": "B", "text": "Les ondes infrasoniques et les ondes ultrasoniques."}, {"id": "C", "text": "Les ondes sonores."}, {"id": "D", "text": "Les ondes ultrasoniques."}]'::jsonb, ARRAY['C']::text[], 'L''oreille humaine perçoit les sons de fréquence comprise entre 20 Hz et 20 000 Hz environ, la zone des sons audibles du document 10. Les infrasons (moins de 20 Hz) et les ultrasons (plus de 20 000 Hz, utilisés en échographie) ne sont pas entendus par l''Homme.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1017/', true, NULL)
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
