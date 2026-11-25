-- ====================================================================
-- مباراتي — اللغة الفرنسية، مادة التخصص والديداكتيك، دورة يناير 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/اللغة الفرنسية - امتحان - دورة يناير 2018.md
--   (سجل الامتحانات رقم 24)
--   ملف الامتحان: exams-ibtida2i/2018/اللغة الفرنسية - امتحان - دورة يناير 2018.pdf
--   (14 صفحة، ممسوحة ضوئياً؛ الغلاف: المدة ساعتان، المعامل 2، النقطة على 20).
--   ملف التصحيح الرسمي: exams-ibtida2i/2018/تصحيح الفرنسية - دورة يناير 2018.pdf
--   (8 صفحات، «Epreuve de français : éléments de réponse» — المرجع الأول للأجوبة).
--   حل منشور للمقارنة والتعليل: https://mesconcours.ma/concours/enseignement/2018-1019/
--   (نفس الامتحان، 39 سؤالاً، يصرّح أن أجوبته تتبع عناصر الإجابة الرسمية).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q30 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة من المفتاح الرسمي؛ عند التعارض يفوز المفتاح الرسمي.
--   * ترقيم الجزء الثاني: أسئلة الديداكتيك (1.1، 1.2، 1.3أ/ب/ج، 2.1، 2.2، 3أ، 3ب)
--     رُقّمت Q31 إلى Q39 على التوالي (كما في mesconcours.ma) — المجموع 39 سؤالاً.
--   * الجزء الأول 40 نقطة (فهم المكتوب 12 + اللغة 20 + إنتاج المكتوب 8)،
--     والجزء الثاني 40 نقطة، والنقطة النهائية على 20.
--
-- ملاحظات عن المفتاح الرسمي (موثقة أيضاً في ملف الحل):
--   * Q13: المفتاح يطبع (b, 1) — خطأ مطبعي مؤكد (الرقم 1 مرتين)؛ الصحيح
--     بالاستبعاد b → 4 (Populaire) وd → 1 (Généreux).
--   * Q15: المفتاح ينسى (d, 4) — «Travail à la main» → «Manuel».
--   * Q18: المفتاح ينسى (b, 1) — «Cheveux» → «Crépus».
--   * Q8 (c): النص يقول 99 من 100، والعبارة تقول 90% — حرفياً خاطئة، لكن
--     المفتاح يعتبرها Vraie (بمعنى «تقريباً كل الشباب»)؛ أُخذ جواب المفتاح.
--   * Q19: المفتاح يجيب B (COI — وظيفة الضمير «dont»)، بينما الجملة الفرعية
--     كاملةً مكمّل للاسم «instruments» أي A (Complément du nom) حسب mesconcours.ma؛
--     اعتُمد جواب المفتاح (B) مع تسجيل البديل في verification_note.
--   * Q22: سؤال معيب — D (Des gardes-frontières) صحيح أيضاً؛ اعتُمد B كما في المفتاح.
--   * Q22: المفتاح يكتب «des porte-fenêtre» بدون s، بينما ورقة الامتحان تكتب
--     «Des portes-fenêtres» — اعتُمد نص الورقة.
--
-- ترميز أسئلة الربط والترتيب (Q8، Q11، Q13، Q15، Q18، Q21، Q25، Q28، Q30):
--   لا يمكن تمثيل الربط باختيار واحد، فجُعل السؤال qcm متعدد الإجابات
--   (is_multiple=true) وخياراته هي الأزواج/البيانات الصحيحة كما في الورقة،
--   وcorrect_answers هي كل تلك الخيارات (عدا Q8: الخيارات هي العبارات الثماني،
--   والصحيح منها هو العبارات الصحيحة فقط: C وF وG وH). لم تُختلق أي خيارات
--   بديلة — كل نص خيار مأخوذ حرفياً من ورقة الامتحان أو من المفتاح الرسمي.
--
-- أسئلة الجزء الثاني (Q31-Q39) مفتوحة (question_type='open'): المفتاح الرسمي
--   يعطي «أمثلة للإجابة» لا جواباً وحيداً؛ وُضعت عناصر الإجابة المتوقعة في
--   حقل explanation، وoptions='[]' وcorrect_answers فارغة.
--
-- لا أسئلة متروكة: كل الأسئلة الـ39 لها جواب موثّق من المفتاح الرسمي.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_french_jan', 'specialty_primary', 2018, 'french', 'مادة التخصص والديداكتيك: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018)', 'دورة يناير 2018', 120, 39)
ON CONFLICT (id) DO UPDATE SET
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;


-- 2. إدراج الأسئلة (39 سؤالاً: Q1-Q30 QCM/ربط/ترتيب، Q31-Q39 أسئلة مفتوحة)

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q1', 'exam_primary_2018_french_jan', 1, 'فهم المكتوب', 'En tenant compte de la référence du texte, où se trouve cet extrait dans l''œuvre ?', false, '[{"id": "A", "text": "À la fin du roman"}, {"id": "B", "text": "Au milieu du roman"}, {"id": "C", "text": "Au début du roman"}, {"id": "D", "text": "À la quatrième de couverture"}]'::jsonb, ARRAY['B']::text[], 'La référence indique « Partie II » : l''extrait n''ouvre ni ne ferme le roman, il se situe en son milieu. La quatrième de couverture n''est pas un lieu du récit.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q2', 'exam_primary_2018_french_jan', 2, 'فهم المكتوب', 'Parmi les titres suivants, lequel correspond le mieux au texte ?', false, '[{"id": "A", "text": "Voyage de Charles de Paris aux Eaux de Baden"}, {"id": "B", "text": "Voyage de Charles de Paris à Saumur"}, {"id": "C", "text": "Voyage de Charles de Saumur à Paris"}, {"id": "D", "text": "Voyage de Charles des Eaux de Baden à Paris"}]'::jsonb, ARRAY['B']::text[], 'Le père de Charles l''envoie « chez son frère de Saumur » et Charles arrive en province par la diligence : le texte raconte le départ de Paris vers Saumur. Les Eaux de Baden ne sont qu''un projet pour juin prochain.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q3', 'exam_primary_2018_french_jan', 3, 'فهم المكتوب', 'D''après le texte, quel sentiment la description de Charles Grandet peut-elle produire chez le lecteur ?', false, '[{"id": "A", "text": "Le mépris de Charles"}, {"id": "B", "text": "L''amour de Charles"}, {"id": "C", "text": "L''admiration de Charles"}, {"id": "D", "text": "L''indifférence envers Charles"}]'::jsonb, ARRAY['A']::text[], 'Le narrateur insiste sur la vanité du personnage (« colifichets de dandy », « cargaison de futilités », « jeune oisif »). Ce portrait ironique éloigne le lecteur de Charles et suscite plutôt le mépris que l''admiration ou l''amour.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q4', 'exam_primary_2018_french_jan', 4, 'فهم المكتوب', 'Dans le dernier paragraphe du texte, quel est l''effet recherché par l''emploi excessif de la répétition et de l''énumération ?', false, '[{"id": "A", "text": "Marginalisation du personnage"}, {"id": "B", "text": "Valorisation du personnage"}, {"id": "C", "text": "Ridiculisation du personnage"}, {"id": "D", "text": "Félicitation du personnage"}]'::jsonb, ARRAY['C']::text[], 'L''anaphore « Il emporta » et l''accumulation d''objets inutiles (gilets, cols, cravates, toilette d''or) grossissent la frivolité de Charles jusqu''au comique : le narrateur le ridiculise.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q5', 'exam_primary_2018_french_jan', 5, 'فهم المكتوب', 'Quel type de discours est employé dans cette phrase ? « Peut-être M. Grandet, de Paris, pensait-il à Eugénie. »', false, '[{"id": "A", "text": "Discours direct"}, {"id": "B", "text": "Discours indirect"}, {"id": "C", "text": "Discours indirect libre"}]'::jsonb, ARRAY['C']::text[], 'La pensée prêtée au personnage est rapportée sans guillemets ni verbe introducteur suivi de « que », avec l''inversion et le modalisateur « peut-être » : c''est le discours indirect libre.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q6', 'exam_primary_2018_french_jan', 6, 'فهم المكتوب', 'Que signifie l''expression « faire époque » ?', false, '[{"id": "A", "text": "Laisser un souvenir durable marquant son temps."}, {"id": "B", "text": "Se souvenir de la Belle Epoque."}, {"id": "C", "text": "Vivre selon les traditions de son époque."}, {"id": "D", "text": "Vivre son âge normalement dans le temps."}]'::jsonb, ARRAY['A']::text[], '« Faire époque » veut dire marquer son temps, laisser un souvenir durable. Charles veut éblouir Saumur par son luxe parisien.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q7', 'exam_primary_2018_french_jan', 7, 'فهم المكتوب', 'D''après le texte, quel est le sens de : « C''est une grande dame » ?', false, '[{"id": "A", "text": "Une dame âgée."}, {"id": "B", "text": "Une dame qui frise la vieillesse."}, {"id": "C", "text": "Une dame admirée pour ses qualités intellectuelles et artistiques."}, {"id": "D", "text": "Une dame appartenant à une classe populaire."}]'::jsonb, ARRAY['C']::text[], 'Annette est présentée comme « la plus aimable des femmes » et comme une dame du grand monde : l''adjectif « grande » ne renvoie ni à l''âge ni au peuple, mais au prestige et aux qualités reconnues de la personne.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q8', 'exam_primary_2018_french_jan', 8, 'فهم المكتوب', 'D''après le texte, les informations suivantes sont-elles vraies ou fausses ?', true, '[{"id": "A", "text": "Charles Grandet, beau jeune homme, produisit contraste avec lui-même."}, {"id": "B", "text": "À vingt-deux ans, les jeunes produisent des contrastes avec eux-mêmes."}, {"id": "C", "text": "Quatre-vingt-dix pour cent des jeunes gens se comportent comme Charles."}, {"id": "D", "text": "Charles Grandet voulait passer son temps à tout expliquer."}, {"id": "E", "text": "Charles voyage aux Eaux de Baden pour rencontrer Eugénie Grandet."}, {"id": "F", "text": "Charles emporta de Paris une cargaison de futilités."}, {"id": "G", "text": "La mise de Charles Grandet choqua les habitants de Saumur."}, {"id": "H", "text": "Charles Grandet eut un sentiment de supériorité."}]'::jsonb, ARRAY['C','F','G','H']::text[], 'Réponse du corrigé officiel : a : Fausse ; b : Fausse ; c : Vraie ; d : Fausse ; e : Fausse ; f : Vraie ; g : Vraie ; h : Vraie. Le contraste est entre Charles et les provinciaux (a, b fausses). « Pour tout expliquer d''un mot » est une formule du narrateur (d fausse). Il doit rejoindre Annette à Baden, pas Eugénie (e fausse). Les manières de Charles « révoltaient » les provinciaux et il voulait paraître « avec la supériorité d''un jeune homme à la mode » (g, h vraies).', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Le corrigé officiel marque (c) Vraie alors que le texte dit « quatre-vingt-dix-neuf » sur cent (99%), non 90% — accepté au sens de « presque tous les jeunes » ; réponse du corrigé retenue.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q9', 'exam_primary_2018_french_jan', 9, 'اللغة', 'De quel mot l''adverbe « maritalement » est-il dérivé ?', false, '[{"id": "A", "text": "Mari"}, {"id": "B", "text": "Martial"}, {"id": "C", "text": "Maritime"}, {"id": "D", "text": "Marin"}]'::jsonb, ARRAY['A']::text[], '« Maritalement » vient de l''adjectif « marital », lui-même formé sur « mari ». « Martial » renvoie à la guerre, « maritime » et « marin » à la mer.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q10', 'exam_primary_2018_french_jan', 10, 'اللغة', 'Quelle est la figure de style employée dans cette phrase ? « Il emporta une cargaison de futilités. »', false, '[{"id": "A", "text": "La métaphore"}, {"id": "B", "text": "La personnification"}, {"id": "C", "text": "L''exagération"}, {"id": "D", "text": "L''antithèse"}]'::jsonb, ARRAY['C']::text[], 'Une « cargaison » désigne le chargement d''un navire : appliqué aux bagages d''un jeune homme, le mot grossit la quantité d''objets. Le corrigé y lit une exagération (hyperbole).', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q11', 'exam_primary_2018_french_jan', 11, 'اللغة', 'Reliez, par une flèche, chaque élément de la colonne « A » au terme qui le désigne dans la colonne « B ». Colonne A : a- En d''autres termes / autrement dit ; b- Assouvir / affamer ; c- Seing / saint ; d- Entendre / attendre. Colonne B : 1- Antonymes ; 2- Homonymes ; 3- Pseudonymes ; 4- Synonymes ; 5- Paronymes.', true, '[{"id": "A", "text": "a → 4 (Synonymes) : En d''autres termes / autrement dit"}, {"id": "B", "text": "b → 1 (Antonymes) : Assouvir / affamer"}, {"id": "C", "text": "c → 2 (Homonymes) : Seing / saint"}, {"id": "D", "text": "d → 5 (Paronymes) : Entendre / attendre"}]'::jsonb, ARRAY['A','B','C','D']::text[], '« En d''autres termes » et « autrement dit » ont le même sens. Assouvir (rassasier) s''oppose à affamer. « Seing » et « saint » se prononcent de la même façon. « Entendre » et « attendre » se ressemblent sans être identiques : ce sont des paronymes. « Pseudonymes » ne sert pas.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q12', 'exam_primary_2018_french_jan', 12, 'اللغة', 'Quelle figure de style est utilisée dans cette phrase ? « Un jeune oisif se sert des instruments aratoires pour labourer la vie. »', false, '[{"id": "A", "text": "La métaphore"}, {"id": "B", "text": "L''hyperbole"}, {"id": "C", "text": "La comparaison"}, {"id": "D", "text": "La métonymie"}]'::jsonb, ARRAY['A']::text[], 'Les objets de luxe sont assimilés à des outils agricoles et la vie à un champ, sans outil de comparaison : c''est une métaphore filée.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q13', 'exam_primary_2018_french_jan', 13, 'اللغة', 'Reliez, par une flèche, chaque mot de la colonne « A » à son antonyme dans la colonne « B ». Colonne A : a- Emporter ; b- Aristocrate ; c- Futilité ; d- Avare. Colonne B : 1- Généreux ; 2- Importer ; 3- Rapporter ; 4- Populaire ; 5- Importance.', true, '[{"id": "A", "text": "a → 3 (Rapporter) : Emporter"}, {"id": "B", "text": "b → 4 (Populaire) : Aristocrate"}, {"id": "C", "text": "c → 5 (Importance) : Futilité"}, {"id": "D", "text": "d → 1 (Généreux) : Avare"}]'::jsonb, ARRAY['A','B','C','D']::text[], 'L''antonyme d''« emporter » est « rapporter », d''« aristocrate » est « populaire », de « futilité » est « importance », d''« avare » est « généreux ». « Importer » s''oppose à « exporter », pas à « emporter ».', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Le corrigé officiel imprime (b, 1) — faute de frappe certaine (le numéro 1 deux fois) ; corrigé par élimination : b → 4, seul numéro inutilisé, antonyme d''aristocrate = populaire.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q14', 'exam_primary_2018_french_jan', 14, 'اللغة', 'De quelle comparaison s''agit-il dans cette phrase ? « Charles emporta le plus joli costume de chasse. »', false, '[{"id": "A", "text": "L''infériorité"}, {"id": "B", "text": "L''absolu"}, {"id": "C", "text": "L''égalité"}, {"id": "D", "text": "La supériorité"}]'::jsonb, ARRAY['D']::text[], '« Le plus joli » est un superlatif relatif de supériorité : il compare le costume à tous les autres.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q15', 'exam_primary_2018_french_jan', 15, 'اللغة', 'Reliez, par une flèche, chaque nom souligné dans la colonne « A » à son dérivé adjectival dans la colonne « B ». Colonne A : a- Exposition de fleurs. ; b- Ces poissons vivent dans des lacs. ; c- L''amour des fils et des filles. ; d- Travail à la main. Colonne B : 1- Lacustres ; 2- Artisanal ; 3- Florale ; 4- Manuel ; 5- Filial.', true, '[{"id": "A", "text": "a → 3 (Florale) : Exposition de fleurs"}, {"id": "B", "text": "b → 1 (Lacustres) : Ces poissons vivent dans des lacs"}, {"id": "C", "text": "c → 5 (Filial) : L''amour des fils et des filles"}, {"id": "D", "text": "d → 4 (Manuel) : Travail à la main"}]'::jsonb, ARRAY['A','B','C','D']::text[], 'Fleur donne floral, lac donne lacustre, fils et fille donnent filial, main donne manuel. « Artisanal » vient d''artisan.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Le corrigé officiel n''imprime que les trois premières paires et oublie (d, 4) ; complété par élimination (Manuel est le seul adjectif restant pour « la main »).')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q16', 'exam_primary_2018_french_jan', 16, 'اللغة', 'De quel type de subordonnée s''agit-il dans cette phrase ? « Les jeunes gens sont encore assez voisins de l''enfance pour se laisser aller à des enfantillages. »', false, '[{"id": "A", "text": "La subordonnée de cause"}, {"id": "B", "text": "La subordonnée de but"}, {"id": "C", "text": "La subordonnée de conséquence"}, {"id": "D", "text": "La subordonnée de concession"}]'::jsonb, ARRAY['C']::text[], 'La corrélation « assez ... pour » exprime la conséquence : ils sont si proches de l''enfance qu''ils se laissent aller à des enfantillages.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q17', 'exam_primary_2018_french_jan', 17, 'اللغة', 'De quel type de subordonnée s''agit-il dans la phrase suivante ? « Une grande dame qu''il nommait Annette lui a donné une écritoire. »', false, '[{"id": "A", "text": "Subordonnée complétive."}, {"id": "B", "text": "Subordonnée relative."}, {"id": "C", "text": "Subordonnée de cause."}, {"id": "D", "text": "Subordonnée de conséquence."}]'::jsonb, ARRAY['B']::text[], '« qu''il nommait Annette » est introduite par le pronom relatif « que » et complète l''antécédent « une grande dame » : c''est une subordonnée relative.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q18', 'exam_primary_2018_french_jan', 18, 'اللغة', 'Reliez, par une flèche, chaque nom de la colonne « A » à l''adjectif qualificatif qui lui correspond dans la colonne « B ». Colonne A : a- Robes ; b- Cheveux ; c- Savon ; d- ligne. Colonne B : 1- Crépus ; 2- Blanc ; 3- Bel ; 4- droite ; 5- jolies.', true, '[{"id": "A", "text": "a → 5 (jolies) : Robes"}, {"id": "B", "text": "b → 1 (Crépus) : Cheveux"}, {"id": "C", "text": "c → 2 (Blanc) : Savon"}, {"id": "D", "text": "d → 4 (droite) : ligne"}]'::jsonb, ARRAY['A','B','C','D']::text[], 'On s''appuie sur l''accord : « jolies » est féminin pluriel (robes), « crépus » masculin pluriel (cheveux), « blanc » masculin singulier (savon), « droite » féminin singulier (ligne). « Bel » ne s''emploie que devant une voyelle.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Le corrigé officiel omet la paire (b, 1) ; complété par élimination (Crépus est le seul adjectif restant pour « Cheveux »).')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q19', 'exam_primary_2018_french_jan', 19, 'اللغة', 'Quelle est la fonction grammaticale de la subordonnée relative dans cette phrase ? « Ce sont des instruments aratoires dont se sert Charles pour labourer la vie. »', false, '[{"id": "A", "text": "Complément du nom"}, {"id": "B", "text": "Complément d''objet indirect"}, {"id": "C", "text": "Complément d''adjectif"}, {"id": "D", "text": "Complément d''agent"}]'::jsonb, ARRAY['B']::text[], 'Réponse du corrigé officiel : B. Le pronom « dont » est complément d''objet indirect dans la relative (se servir DE quelque chose).', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Conflit documenté : mesconcours.ma juge que la bonne réponse grammaticale est A (Complément du nom), car la subordonnée relative entière complète le nom « instruments » ; B est la fonction du pronom « dont », non de la proposition. Le corrigé officiel (B) est retenu comme référence de notation.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q20', 'exam_primary_2018_french_jan', 20, 'اللغة', 'Quelle est l''écriture correcte du nombre 90281 ?', false, '[{"id": "A", "text": "Quatre-vingt-dix mille deux cents quatre-vingt-un"}, {"id": "B", "text": "Quatre-vingt-dix milles deux cents quatre-vingt-et-un"}, {"id": "C", "text": "Quatre-vingt-dix milles deux cent quatre-vingt-un"}, {"id": "D", "text": "Quatre-vingt-dix mille deux cent quatre-vingt-un"}]'::jsonb, ARRAY['D']::text[], '« Mille » est invariable. « Cent » ne prend pas de s quand il est suivi d''un autre nombre. « Quatre-vingt » perd son s devant « un » et ne prend pas « et ». D''où : quatre-vingt-dix mille deux cent quatre-vingt-un.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q21', 'exam_primary_2018_french_jan', 21, 'اللغة', 'Reliez, par une flèche, chaque verbe souligné dans la colonne « A » au temps et au mode auxquels il est conjugué dans la colonne « B ». Colonne A : a- Charles partit pour Saumur. ; b- Le père Grandet a demandé à son fils de voyager. ; c- Charles veut qu''Annette l''attende à Baden. ; d- Les provinciaux se seraient moqués de Charles. Colonne B : 1- Subjonctif présent ; 2- Futur simple de l''indicatif ; 3- Conditionnel passé ; 4- Passé simple de l''indicatif ; 5- Passé composé de l''indicatif.', true, '[{"id": "A", "text": "a → 4 (Passé simple de l''indicatif) : partit"}, {"id": "B", "text": "b → 5 (Passé composé de l''indicatif) : a demandé"}, {"id": "C", "text": "c → 1 (Subjonctif présent) : attende"}, {"id": "D", "text": "d → 3 (Conditionnel passé) : se seraient moqués"}]'::jsonb, ARRAY['A','B','C','D']::text[], '« partit » : passé simple. « a demandé » : auxiliaire avoir au présent + participe, passé composé. « attende » après « veut que » : subjonctif présent. « se seraient moqués » : auxiliaire au conditionnel présent + participe, conditionnel passé. Le futur simple ne sert pas.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q22', 'exam_primary_2018_french_jan', 22, 'اللغة', 'Parmi les noms composés suivants, lequel est correctement écrit au pluriel ?', false, '[{"id": "A", "text": "Des portes-avions"}, {"id": "B", "text": "Des portes-fenêtres"}, {"id": "C", "text": "Des gardes-feux"}, {"id": "D", "text": "Des gardes-frontières"}]'::jsonb, ARRAY['B']::text[], '« porte-fenêtre » est formé de deux noms, les deux varient au pluriel. « Porte » dans porte-avions et « garde » dans garde-feux sont des verbes, invariables.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, 'Item défectueux : « des gardes-frontières » (D) est également correct, car « garde » y désigne une personne (nom) et s''accorde. La clé officielle B est retenue. Le corrigé imprime « des porte-fenêtre » sans s, alors que la feuille d''examen écrit « Des portes-fenêtres » — texte de la feuille retenu.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q23', 'exam_primary_2018_french_jan', 23, 'اللغة', 'Dans quelle phrase les participes passés sont correctement orthographiés ?', false, '[{"id": "A", "text": "Ce jeune homme et cette dame se sont écrit des lettres et se sont rencontrées."}, {"id": "B", "text": "Ce jeune homme et cette dame se sont écrit des lettres et se sont rencontrés."}, {"id": "C", "text": "Ce jeune homme et cette dame se sont écrits des lettres et se sont rencontrés."}, {"id": "D", "text": "Ce jeune homme et cette dame se sont écrits des lettres et se sont rencontré."}]'::jsonb, ARRAY['B']::text[], '« se sont écrit des lettres » : le COD « des lettres » est placé après, le participe reste invariable (le « se » est COI). « se sont rencontrés » : « se » est COD placé avant, accord au masculin pluriel car le groupe mêle un homme et une femme.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q24', 'exam_primary_2018_french_jan', 24, 'اللغة', 'Parmi les phrases suivantes, laquelle contient une erreur concernant l''accord de l''adjectif qualificatif ?', false, '[{"id": "A", "text": "Charles est un jeune aristocrate."}, {"id": "B", "text": "Cette avocate jouit d''une notoriété public exemplaire."}, {"id": "C", "text": "Cet acteur a un bel avenir."}, {"id": "D", "text": "Tu rapportes toujours de fausses nouvelles."}]'::jsonb, ARRAY['B']::text[], '« Notoriété » est féminin : il faut « une notoriété publique ». Les autres phrases sont correctes (« bel » devant voyelle, « fausses » accordé avec « nouvelles »).', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q25', 'exam_primary_2018_french_jan', 25, 'اللغة', 'Reliez, par une flèche, chaque adjectif de la colonne « A » au nom duquel il est dérivé dans la colonne « B ». Colonne A : a- Adroit ; b- Séduisant ; c- Masculin ; d- Grave. Colonne B : 1- Mâle ; 2- Gravité ; 3- Séduction ; 4- Droiture ; 5- Adresse.', true, '[{"id": "A", "text": "a → 5 (Adresse) : Adroit"}, {"id": "B", "text": "b → 3 (Séduction) : Séduisant"}, {"id": "C", "text": "c → 1 (Mâle) : Masculin"}, {"id": "D", "text": "d → 2 (Gravité) : Grave"}]'::jsonb, ARRAY['A','B','C','D']::text[], 'On rapproche chaque adjectif du nom de même famille et de même sens : adroit / adresse, séduisant / séduction, masculin / mâle, grave / gravité. « Droiture » relève de « droit » au sens moral, pas d''« adroit ».', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q26', 'exam_primary_2018_french_jan', 26, 'اللغة', 'Parmi les propositions suivantes, laquelle contient une erreur concernant la concordance des temps ?', false, '[{"id": "A", "text": "Vous comprendriez mieux si vous lisiez le texte attentivement."}, {"id": "B", "text": "Vous auriez mieux compris si vous aviez lu attentivement le texte."}, {"id": "C", "text": "Vous comprendrez mieux si vous lisez le texte attentivement."}, {"id": "D", "text": "Vous comprenez mieux si vous lirez attentivement le texte."}]'::jsonb, ARRAY['D']::text[], 'Après « si » de condition, on n''emploie ni futur ni conditionnel. Les combinaisons correctes sont : imparfait / conditionnel présent (a), plus-que-parfait / conditionnel passé (b), présent / futur (c). La phrase d associe un futur après « si ».', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q27', 'exam_primary_2018_french_jan', 27, 'اللغة', 'Parmi les phrases suivantes, laquelle contient une erreur concernant l''accord de l''adjectif de couleur ?', false, '[{"id": "A", "text": "Cette robe est verte claire."}, {"id": "B", "text": "Ces chaussures sont rouge foncé."}, {"id": "C", "text": "Ces feuilles sont orange."}, {"id": "D", "text": "Ces couvertures sont marron."}]'::jsonb, ARRAY['A']::text[], 'Un adjectif de couleur composé (vert clair, rouge foncé) reste invariable : il faut « Cette robe est vert clair ». « Orange » et « marron », issus de noms, sont aussi invariables, donc c et d sont corrects.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q28', 'exam_primary_2018_french_jan', 28, 'إنتاج المكتوب', 'Voici des types de textes désignés par des numéros : narratif (1) ; descriptif (2) ; explicatif (3) ; injonctif (4) ; argumentatif (5) ; informatif (6). Écrivez le numéro qui correspond à la typologie de chacun des textes suivants.
Texte A : « Elle a bien soixante-dix ans et elle doit avoir les cheveux blancs ; je n''en sais rien ; personne n''en sait rien, car elle a toujours un serre-tête noir qui lui colle comme du taffetas sur le crâne ; elle a, par exemple, la barbe grise, un bouquet de poils ici, une petite mèche qui frisotte par-là, et de tous côtés des poireaux comme des groseilles, qui ont l''air de bouillir sur sa figure. Pour mieux dire, sa tête rappelle par le haut, à cause du serre-tête noir une pomme de terre brûlée et, par le bas, une pomme de terre germée : j''en ai trouvé une gonflée, violette, l''autre matin, sous le fourneau, qui ressemblait à grand tante Agnès comme deux gouttes d''eau. »
Texte B : « La télévision est omniprésente. Pour les uns, elle représente la seule fenêtre ouverte sur le monde. Quant aux autres, elle constitue une grave menace pour notre culture. Les avantages et les inconvénients de cette petite boîte magique sont nombreux. Abordons en premier lieu les aspects positifs de la question. Tout d''abord, on peut dire que la télé nous évite le détour par le cinéma. Par ailleurs, on peut ajouter que le petit écran nous offre un passe-temps agréable, un divertissement, voire une détente après une longue journée de stress. Enfin, la télévision nous informe de ce qui se passe dans le monde, et en plus, elle nous éduque. Quant aux aspects négatifs de la télévision, on peut noter qu''il s''agit, d''abord, d''un média passif : le téléspectateur est sujet à l''abêtissement et à l''abrutissement progressif. En outre, les médecins affirment que regarder la télé trop souvent nuit à la santé. Enfin et surtout, de nombreux critiques reprochent aux chaînes télévisées de diffuser trop de scènes de violence, ce qui risque d''augmenter l''agressivité des jeunes. En guise de conclusion, on peut dire que la télévision est un moyen d''information et de communication utile. Toutefois, il faut savoir comment, quand et dans quel but s''en servir. »
Texte C : « Pour préparer une tarte : 1- Dans un saladier, couper le chocolat en petits morceaux. 2- Faire fondre le chocolat et le beurre. 3- Ajouter l''œuf en remuant bien, puis verser le sucre, la farine et le lait. 4- Déposer la pâte dans le moule et faire cuire pendant cinq minutes au four à micro-ondes. »', true, '[{"id": "A", "text": "A → 2 (descriptif)"}, {"id": "B", "text": "B → 5 (argumentatif)"}, {"id": "C", "text": "C → 4 (injonctif)"}]'::jsonb, ARRAY['A','B','C']::text[], 'Le texte A fait le portrait physique d''une vieille femme avec des comparaisons : descriptif. Le texte B pèse les avantages et les inconvénients de la télévision avec des connecteurs (tout d''abord, quant à, en guise de conclusion) : argumentatif. Le texte C donne des consignes à l''infinitif numérotées : injonctif. 1 pt par réponse.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q29', 'exam_primary_2018_french_jan', 29, 'إنتاج المكتوب', 'Voici un texte incomplet : « C''est alors qu''il entend des voix venant du salon : — Ça y est, j''ai trouvé les bijoux. Regarde, nous pourrons les revendre à prix d''or. — Tais-toi. Filons au plus vite, le propriétaire pourrait rentrer. » Bien décidé à faire face, il ouvre brusquement la porte, voulant surprendre les malfrats. Parmi les propositions suivantes, laquelle constitue le début du texte ci-dessus ?', false, '[{"id": "A", "text": "Sans perdre son sang-froid, Monsieur Lepic s''empare d''un chandelier et avance à pas feutrés."}, {"id": "B", "text": "Ce soir, Monsieur Lepic est tout heureux de rentrer chez lui après une journée de travail bien remplie."}, {"id": "C", "text": "Surprise ! Personne ne se trouve dans le salon. Il avait tout simplement oublié d''éteindre son téléviseur avant de sortir. — Suis-je bête, pense-t-il."}, {"id": "D", "text": "Le cœur battant mais quand même soulagé, Monsieur Lepic décide de regarder la suite du feuilleton policier avant de préparer son repas du soir."}, {"id": "E", "text": "Il pousse la porte d''entrée, accroche son veston au porte-manteau et se dirige vers la cuisine."}]'::jsonb, ARRAY['B']::text[], 'Le début doit installer la situation initiale avant l''élément perturbateur (« C''est alors que »). Seule B présente le personnage et le moment (« Ce soir, Monsieur Lepic ... rentrer chez lui »). A et D supposent déjà le danger ou sa fin, C est la chute du récit, E n''introduit pas le personnage par son nom.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q30', 'exam_primary_2018_french_jan', 30, 'إنتاج المكتوب', 'Voici un texte donné en désordre. Remettez-le en ordre en écrivant les numéros de 1 à 6 dans les cases qui conviennent. (Contes de Tunisie)
A. Alors le lourd chameau vient et leur dit : « Qui est dans cette barque ? — Le rat, sa jeune épouse, le poisson argenté, la poule pondeuse d''œufs frais, le coq chanteur du matin et le cheval qui hennit. — Laissez-moi monter ; je suis le lourd chameau porteur de gros fardeaux. »
B. Bientôt un coq leur fait signe : « Qui est dans cette barque ? — Le rat, sa jeune épouse, le poisson argenté et la poule pondeuse d''œufs frais. — Laissez-moi monter ; je suis le coq chanteur du matin. » Le coq monte et tous cinq continuent à naviguer.
C. Du rivage, une poule les appelle : « Qui est dans cette barque ? — Le rat, sa jeune épouse et le poisson argenté. — Laissez-moi monter ; je suis la poule pondeuse d''œufs frais. » La poule monte et tous quatre continuent à naviguer.
D. Monsieur le Rat et sa jeune femme se promènent dans leur petite barque sur le lac. Survient un poisson qui leur dit : « Qui est dans cette barque ? — Le rat et sa jeune épouse. — Laissez-moi monter ; je suis le poisson argenté. » Le poisson monte et tous trois continuent à naviguer.
E. Un cheval, qui broute dans un pré, s''approche du bord : « Qui est dans cette barque ? — Le rat, sa jeune épouse, le poisson argenté, la poule pondeuse d''œufs frais et le coq chanteur du matin. — Laissez-moi monter ; je suis le cheval qui hennit. » Le cheval monte et ils sont six à naviguer dans la petite coque.
F. Et le chameau essaie de monter. Il pose son pied dans la barque. Mais il est si lourd que la barque coule : tous les joyeux voyageurs tombent à l''eau et doivent regagner la rive à la nage.', true, '[{"id": "A", "text": "D → 1 : Monsieur le Rat et sa jeune femme (situation initiale)"}, {"id": "B", "text": "C → 2 : la poule monte, tous quatre"}, {"id": "C", "text": "B → 3 : le coq monte, tous cinq"}, {"id": "D", "text": "E → 4 : le cheval monte, ils sont six"}, {"id": "E", "text": "A → 5 : le lourd chameau vient"}, {"id": "F", "text": "F → 6 : le chameau essaie de monter, la barque coule"}]'::jsonb, ARRAY['A','B','C','D','E','F']::text[], 'C''est un conte en randonnée : la liste des passagers s''allonge d''un animal à chaque épisode. D présente la situation initiale (rat et épouse), puis viennent la poule (3 passagers cités), le coq (4), le cheval (5), le chameau (6 cités). F, où la barque coule, est le dénouement.', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q31', 'exam_primary_2018_french_jan', 31, 'ديداكتيك اللغة الفرنسية', '1.1. Élaborer une fiche pédagogique pour l''activité de lecture du texte « Voyage en Afrique » (6e année) : définir deux objectifs d''apprentissage. (4pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (deux suffisent, 2 pts chacun) : Reconnaître les caractéristiques d''un texte narratif ; Reconnaître la structure d''un texte narratif ; Lire le texte de manière expressive. Tout objectif pertinent formulé avec un verbe d''action observable et lié au texte est accepté.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q32', 'exam_primary_2018_french_jan', 32, 'ديداكتيك اللغة الفرنسية', '1.2. Mentionner le matériel didactique à utiliser pour l''activité de lecture du texte « Voyage en Afrique ». (3pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemple du corrigé officiel : Carte de l''Afrique ; images représentant le lever et le coucher du soleil, des arbres, des couleurs, des poissons, des tissus, des épices, des éléphants, des groupes de touristes. Tout support cohérent avec le texte est accepté.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q33', 'exam_primary_2018_french_jan', 33, 'ديداكتيك اللغة الفرنسية', '1.3.a. Formuler trois questions et/ou consignes pour amener les élèves à émettre des hypothèses de lecture. (3pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (trois suffisent, 1 pt chacune) : Quel est le titre du texte ? D''après le titre, de qui s''agirait-il dans ce texte ? D''après le titre, dans quel continent le voyage a-t-il eu lieu ? D''après les images affichées (lever et coucher du soleil, arbres, couleurs, tissus, poissons...) quels seraient les éléments cités dans le texte ? À ton avis, de quel voyage s''agit-il dans ce texte ? D''après le titre et la référence, de quel type de texte s''agit-il ?', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q34', 'exam_primary_2018_french_jan', 34, 'ديداكتيك اللغة الفرنسية', '1.3.b. Formuler six questions et/ou consignes pour amener les élèves à vérifier les hypothèses et construire le sens du texte. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (six suffisent, 1 pt chacune) : Quel est le type de ce texte ? Relève, dans le texte, des indices pour justifier ta réponse. Quel voyage le narrateur évoque-t-il dans ce texte ? Le voyage du narrateur en Afrique a duré combien d''années ? Par quoi le narrateur était-il fasciné durant les années qu''il a passées en Afrique ? Qu''a-t-il beaucoup aimé ? De quoi se souvient-il toujours ? Quel type de musique écoutait-il ? Comment les touristes venaient-ils en Afrique ? Pourquoi les touristes étaient-ils surpris ? Quel était le rêve des touristes en Afrique ? L''ont-ils réalisé ? L''expérience que le narrateur a vécue en Afrique est-elle bénéfique ? Justifie ta réponse à partir du texte.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q35', 'exam_primary_2018_french_jan', 35, 'ديداكتيك اللغة الفرنسية', '1.3.c. Formuler deux questions et/ou consignes pour amener les élèves à réagir au texte. (2pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (deux suffisent, 1 pt chacune) : Qu''as-tu apprécié dans ce texte ? Comment trouves-tu le voyage évoqué dans ce texte ? Quel sentiment la lecture de ce témoignage a-t-il produit en toi ? D''après le texte, comment trouves-tu l''Afrique ? Que préfères-tu voyager seul ou en groupe ? Pourquoi ? Souhaites-tu visiter quelques pays d''Afrique. Pourquoi ?', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q36', 'exam_primary_2018_french_jan', 36, 'ديداكتيك اللغة الفرنسية', '2.1. Certains élèves éprouvent des difficultés à comprendre le texte. Identifiez deux difficultés d''ordre lexical et deux autres de type syntaxique. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (1,5 pt par difficulté) : Difficultés lexicales : des mots comme « émotion », « fasciné », « indifférents », « déçus ». Difficultés syntaxiques : « J''ai gardé de la lumière, beaucoup de lumière » (reprise elliptique) ; la longue phrase « Durant ces neuf ans remplis d''émotion, j''étais toujours fasciné par les levers et couchers de soleil magique et j''ai beaucoup aimé les arbres immenses » ; la mise en relief « Les touristes, eux, venaient souvent en voyage organisé » ; la suite d''infinitifs sans verbe conjugué « Sentir les odeurs ..., goûter une cuisine pimentée ».', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q37', 'exam_primary_2018_french_jan', 37, 'ديداكتيك اللغة الفرنسية', '2.2. Montrez comment vous procéderez pour traiter chacune de ces difficultés avec les élèves. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples du corrigé officiel (1,5 pt par difficulté traitée) : Difficultés lexicales : recourir aux gestes et mimiques (joie, fascination, déception) ; à la synonymie (fasciné : séduit, émerveillé, charmé ; émotion : sentiment) ; à l''antonymie (indifférent / passionné, intéressé) ; à la dérivation (déçus, déception, décevoir) ; au contexte (« Un élève a eu une mauvaise note : il est déçu ») ; au réemploi du mot dans des phrases. Difficultés syntaxiques : questionner pour identifier les constituants de la phrase (GNS « Les touristes », GV « venaient souvent en voyage organisé », en montrant que « eux » reprend le sujet) ; diviser la phrase longue en deux phrases simples : « Durant ces neuf ans remplis d''émotion, j''étais toujours fasciné par les levers et couchers de soleil magique. » et « J''ai beaucoup aimé les arbres immenses durant ces neuf ans. »', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q38', 'exam_primary_2018_french_jan', 38, 'ديداكتيك اللغة الفرنسية', '3.a. Pour assurer l''articulation lecture-écriture, vous exploitez le texte « Voyage en Afrique » pour une activité de production écrite. Définissez l''objectif d''apprentissage visé. (2pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Exemple du corrigé officiel : Produire un texte narratif (récit d''un souvenir ou d''un voyage vécu, à la première personne, de 4 à 6 lignes).', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص والديداكتيك (دورة يناير 2018) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_jan_q39', 'exam_primary_2018_french_jan', 39, 'ديداكتيك اللغة الفرنسية', '3.b. Mentionnez les étapes méthodologiques à suivre en précisant, pour chacune d''elles, les activités de l''enseignant(e) et les tâches de l''élève. (8pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Réponses possibles du corrigé officiel. 1) Phase préparatoire : Enseignant — indique le texte support, fait identifier le type de texte à partir de ses caractéristiques, explicite la consigne d''écriture (ex. « Raconte, en 4 à 6 lignes, un souvenir de vacances » ou « Raconte la sortie éducative de dimanche dernier à la campagne »). Élève — lit le texte, identifie le type à partir d''indices (personnages, lieu, temps, chronologie), interagit avec la consigne. 2) Rédaction des « premiers jets » : Enseignant — précise les modalités (forme de travail, durée, critères), accompagne et aide les élèves en difficulté. Élève — rédige le premier jet selon les critères. 3) Relecture et correction des « premiers jets » : Enseignant — rappelle la consigne et les critères, fait lire quelques productions, identifie les erreurs et difficultés et les traite de manière systématique. Élève — participe à la relecture, à l''évaluation des productions selon les critères et à la correction. 4) Réécriture et amélioration : Enseignant — fait réécrire et améliorer les premiers jets selon les indications retenues. Élève — réécrit et améliore sa production. Barème : 3 pts pour les quatre étapes (0,75 chacune), 3 pts pour les activités de l''enseignant(e), 2 pts pour les tâches de l''élève.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2018-1019/', true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
