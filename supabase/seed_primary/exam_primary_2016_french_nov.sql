-- ====================================================================
-- مباراتي — امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016)
-- ====================================================================
-- المصدر: ملف الحل solved/2016/اللغة الفرنسية - 2016.md
--   (سجل الامتحانات رقم 2؛ الحل: بحث Google أولا (تعليمات المستخدم 2026-11-25) — وُجد الحل كاملا منشورا على mesconcours.ma، فلم يستعمل AI Studio لهذا الامتحان. الأجوبة تتبع عناصر الإجابة الرسمية (كما يصرح الموقع)، ومطابقة لملف التصحيح الرسمي الموجود في مساحة العمل.)
--   ملف الامتحان: exams-ibtida2i/2016/الفرنسية - امتحان.pdf (3 صفحات).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q27 مطابق لورقة الامتحان.
--   * الأجوبة مأخوذة من عناصر الإجابة الرسمية (التصحيح الرسمي المقترن بسنة 2016).
--   * كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--     والجواب الكامل منقول في explanation.
--   * الترقيم في هذا الملف هو ترقيم mesconcours المتسلسل 1–27؛ التعيين مع ترقيم الورقة مذكور عند كل سؤال. الورقة نفسها ترقم أسئلة الجزء الأول 1–13 (بعضها بفروع أ، ب، ج) وأسئلة الجزء الثاني 1–3 (السؤال 1 بفروع أ–هـ). التعيين: عام 8–10 ← ورقة Q8 (أ، ب، ج)؛ عام 11–12 ← ورقة Q9 (أ، ب)؛ عام 14–16 ← ورقة Q11 (أ، ب، ج)؛ عام 18–20 ← ورقة Q13 (أ، ب، ج)؛ عام 21–25 ← ورقة ديداكتيك Q1 (أ–هـ)؛ عام 26 ← ورقة ديداكتيك Q2؛ عام 27 ← ورقة ديداكتيك Q3.
--   * النص الأول مقتطف من نهاية قصة «La Parure» (1884) لغي دو موباسان — نص في الملك العام، مذكور في ورقة الامتحان. النص الثاني قصة «Le grand-père» (conte universel) من ورقة الامتحان. نصا القراءة مذكوران بالإحالة فقط (لا يعاد نشرهما كاملين هنا)؛ نص كل سؤال مذكور كاملا.
--   * السؤال 6 (عام) سؤال رأي شخصي: تقبل الشبكة الرسمية كل صفة يدافع عنها النص (شجاعة، صدق، وفاء...) مع التعليل.
--   * السؤال 7 (عام) والسؤال 19 عربي والسؤال 24 (عام) إنتاجات كتابية/ديداكتيكية: الجواب هو معايير التقويم الرسمية وعناصر الإجابة المنتظرة، لا نص جاهز.
--   * لا تعارض بين mesconcours وملف التصحيح الرسمي في مساحة العمل: الأجوبة متطابقة في كل الأسئلة الـ27.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  و <exam_id>_q<n> للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2016_french_nov', 'specialty_primary', 2016, 'french', 'اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016)', 'دورة نونبر 2016', 240, 27)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (27 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q1', 'exam_primary_2016_french_nov', 1, 'اللغة الفرنسية — فهم النص', 'Texte : fin de « La Parure » de Guy de Maupassant. Deux moments structurent le texte. Indiquez le début et la fin de chacun d''eux. Justifiez votre réponse.', false, '[]'::jsonb, ARRAY[]::text[], 'Premier moment : du début « Mme Loisel connut la vie horrible... » jusqu''à « Comme il faut peu de chose pour vous perdre ou vous sauver ! ». Deuxième moment : de « Or, un dimanche, ... » jusqu''à la fin « Elle valait au plus cinq cents francs !... ». Justification : « Or, un dimanche... » introduit un changement par rapport à ce qui précède : on passe du résumé des dix années de misère à une scène précise, la rencontre avec Mme Forestier.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q2', 'exam_primary_2016_french_nov', 2, 'اللغة الفرنسية — فهم النص', '« Que serait-il arrivé si elle n''avait point perdu cette parure ? Qui sait ? Qui sait ? Comme la vie est singulière, changeante ! Comme il faut peu de chose pour vous perdre ou vous sauver ! » Le type de discours utilisé dans ce passage est-il direct, indirect ou indirect libre ? Justifiez l''emploi de ce discours.', false, '[]'::jsonb, ARRAY[]::text[], 'C''est le discours indirect libre. Justification : il indique la rencontre, l''enchevêtrement de deux voix, celle du narrateur et celle du personnage. Il permet l''accès direct à la pensée du personnage et renforce la fluidité du récit. (Ni guillemets ni verbe introducteur → pas de discours direct ; ni subordonnée « elle se demandait si... » → pas de discours indirect.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q3', 'exam_primary_2016_french_nov', 3, 'اللغة الفرنسية — معجم', 'Expliquez l''expression suivante : « Elle prit son parti. »', false, '[]'::jsonb, ARRAY[]::text[], '« Elle prit son parti » signifie : elle se détermina, elle se résolut (à accepter la situation). Le texte le confirme aussitôt : « Il fallait payer cette dette effroyable. Elle paierait. »', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q4', 'exam_primary_2016_french_nov', 4, 'اللغة الفرنسية — فهم النص', 'Quelle est la raison qui a conduit Mme Loisel à mener une vie difficile ? Relevez, dans le texte, les éléments qui caractérisent cette vie.', false, '[]'::jsonb, ARRAY[]::text[], 'La raison : le remboursement de la dette qu''elle avait contractée pour payer la parure perdue (la rivière de diamants achetée pour remplacer celle de Mme Forestier). Éléments qui caractérisent cette vie : « On renvoya la bonne ; on changea de logement ; on loua sous les toits une mansarde. » ; « Elle connut les gros travaux du ménage... défendant sou à sou son misérable argent. » ; « Mme Loisel semblait vieille... lavait à grande eau les planchers. »', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q5', 'exam_primary_2016_french_nov', 5, 'اللغة الفرنسية — فهم النص', 'Comment était la vie de Mme Loisel avant qu''elle ne devienne pauvre ? Justifiez votre réponse.', false, '[]'::jsonb, ARRAY[]::text[], 'Mme Loisel menait une vie modeste mais heureuse. Justification : elle avait une bonne et un logement convenable ; elle était invitée à une grande soirée mais elle a dû emprunter une parure pour y assister. (Le texte le dit en creux : « On renvoya la bonne ; on changea de logement » prouve qu''elle avait l''une et l''autre.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q6', 'exam_primary_2016_french_nov', 6, 'اللغة الفرنسية — رأي وتعليل', 'Mme Loisel a choisi de travailler dur pour rembourser sa dette. Comment trouvez-vous son attitude ? Justifiez votre réponse.', false, '[]'::jsonb, ARRAY[]::text[], 'Exemple de réponse : Mme Loisel est brave, courageuse, honnête, correcte, loyale, fière... Justification : elle a tenu à honorer ses engagements (rembourser la dette « tout, avec le taux de l''usure »), au prix de dix ans de privations, sans rien avouer à son amie. (Question de jugement personnel : toute qualité défendue par le texte est acceptée. Le narrateur dit qu''elle prit son parti « héroïquement », ce qui appuie l''idée de courage et d''honnêteté.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q7', 'exam_primary_2016_french_nov', 7, 'اللغة الفرنسية — إنتاج كتابي', 'Admettons que Mme Loisel n''ait pas perdu sa parure. Écrivez, en douze à quinze lignes, un texte où vous décrivez la vie qu''elle pourrait mener.', false, '[]'::jsonb, ARRAY[]::text[], 'Critères et indicateurs (barème officiel) : Respect de la consigne (3 pts) : le candidat écrit un texte de 12 lignes au moins, où il décrit la vie de Mme Loisel sachant qu''elle n''a pas perdu la parure (retour du bal, collier rendu, vie qui continue, aisance relative, rêves de mondanités...). Cohérence de la production (2 pts) : les deux tiers des phrases produites ont du sens et sont articulées entre elles. Correction de la langue (1 pt) : la production ne contient pas plus de cinq erreurs de langue.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q8', 'exam_primary_2016_french_nov', 8, 'اللغة الفرنسية — قواعد', 'Dans la phrase suivante, identifiez la proposition subordonnée et expliquez l''emploi du pronom qui l''introduit : a. « Elle savonna le linge sale, les chemises et les torchons, qu''elle faisait sécher sur une corde. »', false, '[]'::jsonb, ARRAY[]::text[], 'Subordonnée relative : « qu''elle faisait sécher sur une corde ». Elle est introduite par le pronom relatif « que », complément d''objet direct du verbe « faisait sécher » (« que » reprend « le linge sale, les chemises et les torchons »).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q9', 'exam_primary_2016_french_nov', 9, 'اللغة الفرنسية — قواعد', 'Dans la phrase suivante, identifiez la proposition subordonnée et expliquez l''emploi du pronom qui l''introduit : b. « Elle aperçut tout à coup une femme qui promenait un enfant. »', false, '[]'::jsonb, ARRAY[]::text[], 'Subordonnée relative : « qui promenait un enfant ». Elle est introduite par le pronom relatif « qui », sujet du verbe « promenait » (antécédent : « une femme »).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q10', 'exam_primary_2016_french_nov', 10, 'اللغة الفرنسية — قواعد', 'Dans la phrase suivante, identifiez la proposition subordonnée et expliquez l''emploi du pronom qui l''introduit : c. « Elle songeait à cette soirée d''autrefois, à ce bal où elle avait été si belle et si fêtée. »', false, '[]'::jsonb, ARRAY[]::text[], 'Subordonnée relative : « où elle avait été si belle et si fêtée ». Elle est introduite par le pronom relatif « où », complément circonstanciel de lieu (reprend « ce bal »).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q11', 'exam_primary_2016_french_nov', 11, 'اللغة الفرنسية — قواعد', 'Qu''exprime « comme » dans la phrase suivante ? a. « Comme la vie est singulière, changeante ! »', false, '[]'::jsonb, ARRAY[]::text[], '« Comme » exprime l''intensité (adverbe exclamatif) : dans une phrase exclamative, « comme » placé en tête signifie « à quel point » ; il renforce l''adjectif « singulière ». Ce n''est ni une comparaison ni une cause.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q12', 'exam_primary_2016_french_nov', 12, 'اللغة الفرنسية — قواعد', 'Qu''exprime « comme » dans la phrase suivante ? b. « Et, vêtue comme une femme du peuple, elle alla chez le fruitier. »', false, '[]'::jsonb, ARRAY[]::text[], '« Comme » exprime la comparaison : « Vêtue comme une femme du peuple » rapproche la tenue de Mme Loisel de celle des femmes pauvres (« comme » introduit le comparant).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q13', 'exam_primary_2016_french_nov', 13, 'اللغة الفرنسية — قواعد', 'Transformez cette phrase au discours indirect : « J''ai eu des jours bien durs, depuis que je ne t''ai vue », lui fit savoir Mme Loisel.', false, '[]'::jsonb, ARRAY[]::text[], 'Mme Loisel lui fit savoir qu''elle avait eu des jours bien durs, depuis qu''elle ne l''avait vue. (Le verbe introducteur est au passé simple, donc les temps reculent : le passé composé « j''ai eu » devient plus-que-parfait « elle avait eu », « je ne t''ai vue » devient « elle ne l''avait vue ». Les pronoms passent à la 3e personne et la subordonnée est introduite par « que ».)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q14', 'exam_primary_2016_french_nov', 14, 'اللغة الفرنسية — قواعد', 'Relevez l''adjectif qualificatif dans la phrase suivante et indiquez sa fonction grammaticale en justifiant votre réponse : a. « Mme Loisel se sentit émue. »', false, '[]'::jsonb, ARRAY[]::text[], '« émue » : attribut du sujet. L''adjectif est séparé du sujet par le verbe attributif « se sentir » (verbe d''état comme être, sembler, paraître).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q15', 'exam_primary_2016_french_nov', 15, 'اللغة الفرنسية — قواعد', 'Relevez l''adjectif qualificatif dans la phrase suivante et indiquez sa fonction grammaticale en justifiant votre réponse : b. « Et elle souriait d''une joie orgueilleuse. »', false, '[]'::jsonb, ARRAY[]::text[], '« orgueilleuse » : épithète. L''adjectif est attaché directement au nom « joie » qu''il qualifie (épithète liée : aucun verbe ne s''intercale entre « joie » et « orgueilleuse »).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q16', 'exam_primary_2016_french_nov', 16, 'اللغة الفرنسية — قواعد', 'Relevez l''adjectif qualificatif dans la phrase suivante et indiquez sa fonction grammaticale en justifiant votre réponse : c. « Je suis rudement contente. »', false, '[]'::jsonb, ARRAY[]::text[], '« contente » : attribut du sujet. L''adjectif est séparé du sujet « je » par le verbe « être » (« rudement » est un adverbe d''intensité qui modifie l''adjectif).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q17', 'exam_primary_2016_french_nov', 17, 'اللغة الفرنسية — قواعد', 'Dans le passage suivant, relevez les verbes conjugués et indiquez leur temps : « Or, un dimanche, comme elle était allée faire un tour aux Champs-Élysées pour se délasser des besognes de la semaine, elle aperçut tout à coup une femme qui promenait un enfant. C''était Mme Forestier, toujours jeune, toujours belle, toujours séduisante. »', false, '[]'::jsonb, ARRAY[]::text[], 'était allée : plus-que-parfait de l''indicatif ; aperçut : passé simple ; promenait : imparfait ; (C'')était : imparfait. (« faire » et « se délasser » sont à l''infinitif, donc non conjugués.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q18', 'exam_primary_2016_french_nov', 18, 'اللغة الفرنسية — قواعد', 'Justifiez l''accord du participe passé dans la phrase suivante : a. « Elle était allée faire un tour. »', false, '[]'::jsonb, ARRAY[]::text[], 'Le participe passé « allée », conjugué avec l''auxiliaire « être », s''accorde avec le sujet « elle » (féminin singulier).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q19', 'exam_primary_2016_french_nov', 19, 'اللغة الفرنسية — قواعد', 'Justifiez l''accord du participe passé dans la phrase suivante : b. « Tu te rappelles bien cette rivière de diamants que tu m''as prêtée pour aller à la fête. »', false, '[]'::jsonb, ARRAY[]::text[], 'Le participe passé « prêtée » (auxiliaire avoir) s''accorde avec le complément d''objet direct « que », dont l''antécédent « cette rivière de diamants » est féminin singulier, placé avant le participe passé.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q20', 'exam_primary_2016_french_nov', 20, 'اللغة الفرنسية — قواعد', 'Justifiez l''accord du participe passé dans la phrase suivante : c. « Eh bien, je l''ai perdue. »', false, '[]'::jsonb, ARRAY[]::text[], 'Le participe passé « perdue » (auxiliaire avoir) s''accorde avec le complément d''objet direct, le pronom personnel « l'' » (qui remplace « la parure », féminin), placé avant le participe passé.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q21', 'exam_primary_2016_french_nov', 21, 'ديداكتيك اللغة الفرنسية — جذاذة قراءة', 'Voici un support proposé pour une activité de lecture destinée aux élèves de la 6e année de l''enseignement primaire : le conte « Le grand-père ». Élaborez une fiche pédagogique pour cette activité : a. Définir, au moins, deux objectifs d''apprentissage.', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples d''objectifs (deux au moins) : reconnaître les caractéristiques d''un texte narratif ; reconnaître la structure d''un texte narratif ; identifier les personnages, le(s) lieu(x), le temps de l''histoire ; reconnaître la morale de l''histoire ; lire le texte de manière expressive. (Un objectif d''apprentissage se formule avec un verbe d''action observable centré sur l''élève. 1,5 pt par objectif pertinent.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q22', 'exam_primary_2016_french_nov', 22, 'ديداكتيك اللغة الفرنسية — جذاذة قراءة', 'b. Mentionner la durée et le nombre de séances.', false, '[]'::jsonb, ARRAY[]::text[], '90 minutes réparties en deux séances de 45 minutes chacune. (C''est le découpage habituel d''une activité de lecture dans le programme du primaire : une séance de découverte et de compréhension, une séance de lecture approfondie et d''évaluation.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q23', 'exam_primary_2016_french_nov', 23, 'ديداكتيك اللغة الفرنسية — جذاذة قراءة', 'c. Indiquer le matériel didactique à utiliser.', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples de matériel : images représentant un vieil homme, une scène de repas en famille... ; images ou objets concrets : poêle, écuelle de terre, planchettes de bois, auge... ; le texte reproduit (manuel ou photocopie), le tableau. (Le matériel aide à lever les obstacles lexicaux propres au texte : des mots comme « écuelle », « auge », « poêle » sont peu familiers aux élèves.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q24', 'exam_primary_2016_french_nov', 24, 'ديداكتيك اللغة الفرنسية — جذاذة قراءة', 'd. Citer les étapes méthodologiques à suivre en précisant, pour chacune d''elles, le rôle de l''enseignant(e) et les tâches de l''élève.', false, '[]'::jsonb, ARRAY[]::text[], '1. Mise en situation. Enseignant : préparer l''élève à la lecture en faisant appel à son vécu, à ses expériences, en rapport avec le texte (ex. activité orale ou illustration sur la famille). Élève : interagir avec la situation proposée, répondre aux questions. 2. Observation / découverte du texte. Enseignant : amener les élèves à repérer les indices paratextuels (titre, formule « Il était une fois », illustration) et à anticiper sur le sens en formulant des hypothèses de lecture. Élève : repérer le titre et la formule d''attaque, reconnaître le type de texte, formuler des hypothèses. 3. Interaction avec le texte / compréhension / construction du sens. Moment 1 : lecture magistrale expressive, questions sur les personnages, le lieu. Moment 2 : lecture silencieuse, première validation des hypothèses (lien de parenté, âge et santé du grand-père). Moment 3 : lecture silencieuse et orale pour valider les hypothèses (difficultés du grand-père, attitude du fils et de la belle-fille, réaction du petit-fils). Moment 4 : lecture orale pour reconnaître la structure (situation initiale, élément perturbateur, actions, résolution, situation finale). Élève : lire, relever les informations explicites, valider ses hypothèses, identifier les composantes du texte. 4. Évaluation / réaction au texte. Enseignant : faire lire le texte, faire résumer l''histoire par un questionnement précis, faire exprimer l''opinion des élèves sur les comportements des personnages, faire identifier la morale. Élève : lire expressivement, résumer, exprimer son avis, identifier la morale. (2 pts par étape.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q25', 'exam_primary_2016_french_nov', 25, 'ديداكتيك اللغة الفرنسية — جذاذة قراءة', 'e. Proposer une activité de prolongement appropriée.', false, '[]'::jsonb, ARRAY[]::text[], 'Exemples : raconter une histoire similaire à celle étudiée en changeant les personnages ; préparer, à partir de l''histoire, un dialogue et le dramatiser ; illustrer l''histoire par des dessins. (Le prolongement réinvestit la lecture dans une autre activité : oral, écrit, art.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q26', 'exam_primary_2016_french_nov', 26, 'ديداكتيك اللغة الفرنسية — صعوبات القراءة', 'Identifiez trois types de difficultés de lecture que ce texte semble présenter à des élèves de la 6e année de l''enseignement primaire. Justifiez votre réponse en donnant des exemples précis.', false, '[]'::jsonb, ARRAY[]::text[], 'Difficultés phonétiques : certains mots contiennent des phonèmes présentant des difficultés d''articulation : vieil, vieux, cuillère, poêle, écuelle, gronder, répandre, tremblantes... Difficultés lexicales : présence de mots et expressions difficiles : gronder, répandre, une écuelle de quatre sous, manquait sa bouche, auge... Difficultés syntaxiques : phrases longues (« Son fils... mourir de faim ») et structures complexes (« Il était une fois un très, très vieil homme, si vieux que ses yeux n''y voyaient plus guère tant ils étaient troubles, que ses oreilles n''entendaient plus du tout et que ses pauvres vieux genoux tremblaient sous lui »). (1 pt par type de difficulté justifié.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2016) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2016_french_nov_q27', 'exam_primary_2016_french_nov', 27, 'ديداكتيك اللغة الفرنسية — إنتاج كتابي', 'Lors d''une activité de production écrite dont l''objectif est « produire un récit », vous envisagez de consacrer la phase préparatoire à l''exploitation du texte de lecture « Le grand-père ». Montrez comment vous procéderez pour gérer cette phase.', false, '[]'::jsonb, ARRAY[]::text[], 'Exemple de réponse : l''exploitation du texte peut suivre le canevas suivant : faire lire le texte ; faire identifier les composantes de l''histoire à l''aide d''un questionnement précis (personnages, temps et lieux, problème et événements) ; faire repérer la structure d''un texte narratif (situation initiale, élément perturbateur, actions/transformations, résolution, situation finale) ; dégager les outils de la langue utiles au récit (formule d''ouverture, temps du récit, connecteurs temporels) pour les réinvestir dans la production. (La phase préparatoire sert de modèle : l''élève observe comment un récit est construit avant d''en écrire un.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
