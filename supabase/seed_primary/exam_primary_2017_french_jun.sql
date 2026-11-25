-- ====================================================================
-- مباراتي — اللغة الفرنسية، دورة يونيو 2017 (التعليم الابتدائي، التخصص المزدوج)
-- ====================================================================
-- المصدر: ملف الحل solved/2017/اللغة الفرنسية - 2017.md
--   ملف الامتحان: exams-ibtida2i/2017/اللغة الفرنسية - امتحان.pdf (13 صفحة، مسح).
--   ملف التصحيح الرسمي: exams-ibtida2i/2017/تصحيح الفرنسية.pdf (5 صفحات، مسح)
--   — وهو مرجع الأجوبة (source_type='official').
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q33 (الجزء الأول) والأسئلة الثلاثة المفتوحة
--     (الجزء الثاني) وخياراتها مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة مأخوذة حرفياً من التصحيح الرسمي المرفق (عناصر الإجابة).
--   * لا يوجد حل منشور كامل لهذا الامتحان بالذات على manasseb.com أو
--     mesconcours.ma (صفحة mesconcours للفرنسية تغطي دورة يونيو 2017 في
--     « Didactique du français » — 63 سؤالاً — وهو امتحان آخر)؛
--     لذلك لم يُستعمل أي مصدر طرف ثالث.
--
-- بنية الامتحان (من الغلاف): مباراة توظيف الأساتذة بموجب عقود، التعليم
--   الابتدائي (التخصص المزدوج)، دورة يونيو 2017 — 30 يونيو 2017،
--   المدة 3 ساعات (180 دقيقة)، المعامل 2، النقطة النهائية على 80.
--   الجزء الأول (40 نقطة): Q1 إلى Q33 — أسئلة اختيار من متعدد (a–d)،
--   وصحيح/خطأ (Q2)، وربط/مطابقة (Q11، Q13، Q15، Q16، Q18، Q19، Q24)،
--   وترتيب (Q31، Q33).
--   الجزء الثاني (40 نقطة): 3 أسئلة مفتوحة (بطاقة بيداغوجية للقراءة،
--   صعوبات القراءة، الإنتاج الكتابي) — مرقمة هنا Q34 وQ35 وQ36
--   (أسئلة الجزء الثاني 1 و2 و3).
--   المجموع المُدرج: 36 سؤالاً، ولا سؤال متخطى.
--
-- ملاحظات / أعلام:
--   * Q2 (صحيح/خطأ): التصحيح الرسمي يضع (c) « Monsieur Marsay est le mari
--     de Delphine » = Vrai. وهذا يتعارض مع الرواية ومع نص الامتحان نفسه
--     (دلفين تزوجت « cette grosse souche d'Alsacien » أي Nucingen، ومارساي
--     شاب يمقته غوريو) — يرجح أنه خطأ في التصحيح الرسمي. التصحيح الرسمي
--     يبقى المرجع (حسب التعليمات)، والخلاف مسجل في verification_note.
--   * Q22: التصحيح الرسمي ينقل الجواب (a) بإضافة « des romans »
--     (« lire et écrire des romans »)؛ ورقة الامتحان لا تحتوي « des romans »
--     — اعتُمد نص ورقة الامتحان.
--   * Q24 (d): العبارة ضعيفة القراءة في المسح (« Il a achevé son travail »)؛
--     القراءة مؤكدة بربط التصحيح الرسمي لها بالماضي المركب (d, 1).
--   * الأسئلة غير الاختيارية (Q2، المطابقات، الترتيب، الجزء الثاني) أُدرجت
--     بنوع 'open' مع options فارغة وcorrect_answers فارغة، والجواب الكامل
--     في explanation — حسب نمط الملف التجريبي للأسئلة المفتوحة.
--
-- تسمية المعرفات:
--   exam_primary_2017_french_jun ; <exam_id>_q<n> (n = 1..36).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2017_french_jun', 'specialty_primary', 2017, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — دورة يونيو 2017', 'دورة يونيو 2017', 180, 36)
ON CONFLICT (id) DO UPDATE SET
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (36 سؤالاً)

-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q1', 'exam_primary_2017_french_jun', 1, 'فهم النص — بنية النص', 'Parmi les propositions suivantes, quelle est celle qui correspond le mieux au découpage du texte ?', false, '[{"id": "A", "text": "Le texte se compose de deux parties."}, {"id": "B", "text": "Le texte se compose de trois parties."}, {"id": "C", "text": "Le texte se compose de quatre parties."}, {"id": "D", "text": "Le texte constitue une seule partie."}]'::jsonb, ARRAY['A']::text[], 'Le texte se compose de deux parties : le dialogue entre le Père Goriot et Eugène, puis le commentaire du narrateur (« Le père Goriot était sublime… »).', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q2', 'exam_primary_2017_french_jun', 2, 'فهم النص — صحيح/خطأ', 'D''après le texte, les informations suivantes sont-elles vraies ou fausses ? a- Les personnages du dialogue sont le Père Goriot et Eugène. b- Le Père Goriot se sacrifie pour le bonheur de ses filles. c- Monsieur Marsay est le mari de Delphine. d- Le Père Goriot aime son gendre, monsieur Marsay. e- Le Père Goriot pense à son propre intérêt avant celui de ses filles. f- Eugène est indifférent à l''égard du Père Goriot.', false, '[]'::jsonb, ARRAY[]::text[], 'Réponse officielle : a- Vrai ; b- Vrai ; c- Vrai ; d- Faux ; e- Faux ; f- Faux (0,5 pt par item, 3 pts au total).', 'open', 'official', NULL, true, 'L''item c est marqué Vrai dans le corrigé officiel, en contradiction avec le roman (le mari de Delphine est le baron de Nucingen, « cette grosse souche d''Alsacien ») et avec le texte ; probable erreur du corrigé officiel, qui reste l''autorité ici.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q3', 'exam_primary_2017_french_jun', 3, 'فهم النص', '« C''est sorti de moi ! » D''après le texte, que signifie cette phrase ?', false, '[{"id": "A", "text": "les deux filles sont mariées ;"}, {"id": "B", "text": "les deux filles sont sorties de chez lui ;"}, {"id": "C", "text": "les deux filles sont engendrées par le Père Goriot ;"}, {"id": "D", "text": "les deux filles sont abandonnées par le Père Goriot."}]'::jsonb, ARRAY['C']::text[], '« C''est sorti de moi ! » : les filles sont issues de lui, elles sont sa chair (« chaque goutte de votre sang, dont elles ont été la fine fleur ») — elles ont été engendrées par le Père Goriot.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q4', 'exam_primary_2017_french_jun', 4, 'فهم النص', '« … et comment est l''endroit où je me couche ? » D''après le texte, que signifie cette interrogation ?', false, '[{"id": "A", "text": "le Père Goriot ignore l''endroit où il se couche ;"}, {"id": "B", "text": "le Père Goriot cherche à savoir l''endroit où il se couche ;"}, {"id": "C", "text": "le Père Goriot peut se coucher n''importe où à condition que ses filles soient heureuses ;"}, {"id": "D", "text": "le Père Goriot peut se coucher n''importe où mais pas au détriment de sa sécurité."}]'::jsonb, ARRAY['C']::text[], '« qu''importe de quel drap je sois vêtu, et comment est l''endroit où je me couche ? je n''ai point froid si elles ont chaud, je ne m''ennuie jamais si elles rient » : l''endroit où il dort lui est indifférent, pourvu que ses filles soient heureuses.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q5', 'exam_primary_2017_french_jun', 5, 'فهم النص', '« Quelque grossière que soit une créature, dès qu''elle exprime une affection forte et vraie, elle exhale un fluide particulier qui modifie la physionomie, anime le geste, colore la voix. » Que souligne l''auteur dans cette phrase ?', false, '[{"id": "A", "text": "l''interaction entre le physique et le moral ;"}, {"id": "B", "text": "l''impact des sentiments maniérés sur le physique ;"}, {"id": "C", "text": "l''impact des sentiments sincères sur le physique ;"}, {"id": "D", "text": "l''impact du physique sur le moral."}]'::jsonb, ARRAY['C']::text[], 'Une « affection forte et vraie » (des sentiments sincères) transforme l''apparence : elle « modifie la physionomie, anime le geste, colore la voix ».', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q6', 'exam_primary_2017_french_jun', 6, 'فهم النص', '« Si j''avais vécu chez elles, mais rien que d''entendre leurs voix, de les voir là, de les voir aller, sortir, comme quand je les avais chez moi, ça m''eût fait cabrioler le cœur. Etaient-elles bien mises ? » Quel état d''âme du Père Goriot cet extrait du texte traduit-il ?', false, '[{"id": "A", "text": "il est serein ;"}, {"id": "B", "text": "il est redoutable ;"}, {"id": "C", "text": "il est joyeux ;"}, {"id": "D", "text": "il est perturbé."}]'::jsonb, ARRAY['D']::text[], 'L''extrait montre Goriot agité et inquiet : le conditionnel, l''interrogation anxieuse (« Etaient-elles bien mises ? ») et le cœur qui « cabriole » traduisent son trouble face au sort de ses filles.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q7', 'exam_primary_2017_french_jun', 7, 'فهم النص', 'Qu''exprime le Père Goriot dans la phrase suivante ? « Où a-t-elle eu les yeux d''épouser cette grosse souche d''Alsacien ? »', false, '[{"id": "A", "text": "l''approbation ;"}, {"id": "B", "text": "l''indignation ;"}, {"id": "C", "text": "la joie ;"}, {"id": "D", "text": "la satisfaction."}]'::jsonb, ARRAY['B']::text[], 'Goriot s''indigne que Delphine ait épousé un tel homme (« cette grosse souche d''Alsacien ») : la question rhétorique exprime son indignation.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q8', 'exam_primary_2017_french_jun', 8, 'فهم النص', '« Un regard d''elles, quand il est triste, me fige le sang. » Quel sentiment cette phrase traduit-elle chez le Père Goriot ?', false, '[{"id": "A", "text": "la joie ;"}, {"id": "B", "text": "la peur ;"}, {"id": "C", "text": "l''indifférence ;"}, {"id": "D", "text": "la haine."}]'::jsonb, ARRAY['B']::text[], '« me fige le sang » : la tristesse de ses filles le paralyse d''effroi — c''est la peur.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q9', 'exam_primary_2017_french_jun', 9, 'أنواع النصوص', 'Parmi les types suivants, quel est celui qui correspond au texte ?', false, '[{"id": "A", "text": "argumentatif ;"}, {"id": "B", "text": "injonctif ;"}, {"id": "C", "text": "narratif ;"}, {"id": "D", "text": "informatif."}]'::jsonb, ARRAY['C']::text[], 'Extrait de roman (Balzac, Le Père Goriot) : récit avec dialogue et narration — type narratif.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q10', 'exam_primary_2017_french_jun', 10, 'المعجم — المرادفات', '« Elles étaient bien mises » Parmi les propositions suivantes, quel est le synonyme de « mises » ?', false, '[{"id": "A", "text": "posées ;"}, {"id": "B", "text": "habillées ;"}, {"id": "C", "text": "nées ;"}, {"id": "D", "text": "élevées."}]'::jsonb, ARRAY['B']::text[], '« Être bien mis » = être bien habillé.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q11', 'exam_primary_2017_french_jun', 11, 'المعجم — الأضداد', 'Reliez par une flèche chaque élément de la colonne A à son antonyme dans la colonne B. Colonne A : a- épouser ; b- entier ; c- grosse ; d- affection. Colonne B : 1- aversion ; 2- amour ; 3- divorcer ; 4- partiel ; 5- fine.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 3- divorcer ; b → 4- partiel ; c → 5- fine ; d → 1- aversion. (2- amour est l''intrus.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q12', 'exam_primary_2017_french_jun', 12, 'النحو — المفعول به', 'Parmi les phrases suivantes, quelle est celle qui contient un complément d''objet direct ?', false, '[{"id": "A", "text": "le Père Goriot ne pense qu''à ses filles ;"}, {"id": "B", "text": "le Père Goriot vit pour ses filles ;"}, {"id": "C", "text": "le Père Goriot se souvient de ses filles ;"}, {"id": "D", "text": "le Père Goriot a sacrifié toute sa vie pour ses filles."}]'::jsonb, ARRAY['D']::text[], 'Dans d, « toute sa vie » est COD du verbe « a sacrifié ». Dans a, « à ses filles » est COI ; dans b, « pour ses filles » est complément circonstanciel de but ; dans c, « de ses filles » est COI de « se souvient ».', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q13', 'exam_primary_2017_french_jun', 13, 'الصرف — المشتقات', 'Reliez chaque nom de la colonne A à son dérivé adjectival dans la colonne B. Colonne A : a- mariage ; b- jeunesse ; c- cou ; d- voix. Colonne B : 1- cervical ; 2- vocal ; 3- vicinal ; 4- juvénile ; 5- matrimonial.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 5- matrimonial ; b → 4- juvénile ; c → 1- cervical ; d → 2- vocal. (3- vicinal est l''intrus.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q14', 'exam_primary_2017_french_jun', 14, 'النحو — الجمل التابعة', '« Un jour vous saurez que l''on est bien plus heureux de leur bonheur. » De quelle subordonnée s''agit-il dans cette phrase ?', false, '[{"id": "A", "text": "complétive ;"}, {"id": "B", "text": "relative ;"}, {"id": "C", "text": "de cause ;"}, {"id": "D", "text": "de but."}]'::jsonb, ARRAY['A']::text[], 'La proposition « que l''on est bien plus heureux de leur bonheur » complète le verbe « saurez » : c''est une subordonnée complétive.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q15', 'exam_primary_2017_french_jun', 15, 'المعجم — العلاقات الدلالية', 'Reliez chaque élément de la colonne A au terme qui le désigne dans la colonne B. Colonne A : a- gazouiller / chanter ; b- beau / laid ; c- un geste / une geste ; d- une affection / une infection. Colonne B : 1- paronymes ; 2- homonymes ; 3- anaphore ; 4- synonymes ; 5- antonymes.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 4- synonymes (gazouiller / chanter) ; b → 5- antonymes (beau / laid) ; c → 2- homonymes (un geste / une geste) ; d → 1- paronymes (une affection / une infection). (3- anaphore est l''intrus.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q16', 'exam_primary_2017_french_jun', 16, 'النحو — وظائف الضمائر', 'Reliez par une flèche chaque pronom personnel souligné dans la colonne A à la fonction grammaticale qui lui correspond dans la colonne B. Colonne A : a- Un regard d''elles, quand il est triste, me chagrine. (pronom souligné : « elles ») b- Eugène l''interroge avec mauvaise foi. (pronom souligné : « l'' ») c- Elle nous raconte une histoire. (pronom souligné : « nous ») Colonne B : 1- complément d''objet indirect ; 2- complément d''objet direct ; 3- complément d''agent ; 4- complément du nom.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 4- complément du nom (« d''elles » complète « regard ») ; b → 2- complément d''objet direct (« l'' » = COD de « interroge ») ; c → 1- complément d''objet indirect (« nous » = COI de « raconte »). (3- complément d''agent est l''intrus.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q17', 'exam_primary_2017_french_jun', 17, 'أنواع الجمل', '« Ne pas aimer un bijou de femme, une voix de rossignol, et faite comme un modèle ! » Quel est le type de cette phrase ?', false, '[{"id": "A", "text": "phrase interrogative ;"}, {"id": "B", "text": "phrase impérative ;"}, {"id": "C", "text": "phrase exclamative ;"}, {"id": "D", "text": "phrase déclarative."}]'::jsonb, ARRAY['C']::text[], 'La phrase se termine par un point d''exclamation et exprime l''indignation de Goriot : c''est une phrase exclamative.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q18', 'exam_primary_2017_french_jun', 18, 'المعجم — النعت', 'Reliez par une flèche chaque nom de la colonne A à l''adjectif qualificatif qui lui correspond dans la colonne B. Colonne A : a- amour ; b- production ; c- écritures. Colonne B : 1- écrite ; 2- compréhensif ; 3- paternel ; 4- illisibles.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 3- paternel (amour paternel) ; b → 1- écrite (production écrite) ; c → 4- illisibles (écritures illisibles). (2- compréhensif est l''intrus.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q19', 'exam_primary_2017_french_jun', 19, 'النحو — الضمائر غير المحددة', 'Reliez chaque pronom indéfini de la colonne A à la phrase qu''il peut compléter dans la colonne B. Colonne A : a- On ; b- Nul ; c- Quiconque. Colonne B : 1- À l''impossible, ……… n''est tenu. 2- ……… doit aimer ses parents. 3- Il n''y a ……… de vie sans eau. 4- ……… n''a pas de bonnes notes ne doit pas gagner.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 2- « On doit aimer ses parents. » ; b → 1- « À l''impossible, nul n''est tenu. » ; c → 4- « Quiconque n''a pas de bonnes notes ne doit pas gagner. » (La phrase 3 est l''intrus : « Il n''y a pas de vie sans eau. »)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q20', 'exam_primary_2017_french_jun', 20, 'الخطاب — غير المباشر', '« Comment est l''endroit où je me couche ? », se demandait le Père Goriot. Quelle est la transformation au discours indirect correcte de la phrase ci-dessus ?', false, '[{"id": "A", "text": "Le Père Goriot se demandait que l''endroit où il se couchait était comment."}, {"id": "B", "text": "Le Père Goriot se demandait quel était l''endroit où il se couchait."}, {"id": "C", "text": "Le Père Goriot se demandait comment l''endroit où il se couchait."}, {"id": "D", "text": "Le Père Goriot se demandait comment était l''endroit où il se couchait."}]'::jsonb, ARRAY['D']::text[], 'Question partielle introduite par « comment » : on conserve le mot interrogatif, l''ordre sujet-verbe (« comment était l''endroit ») et on transpose au passé (présent → imparfait : « était », « se couchait »).', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q21', 'exam_primary_2017_french_jun', 21, 'النحو — الضمائر', 'Eugène veut connaître la face cachée du Père Goriot. Dans quelle proposition le groupe de mots, souligné dans la phrase ci-dessus, est-il correctement pronominalisé ?', false, '[{"id": "A", "text": "Eugène en veut connaître la face cachée."}, {"id": "B", "text": "Eugène veut en connaître la face cachée."}, {"id": "C", "text": "Eugène la veut connaître la face cachée."}, {"id": "D", "text": "Eugène veut la connaître la face cachée."}]'::jsonb, ARRAY['B']::text[], '« du Père Goriot » (complément du nom introduit par « de ») se pronominalise par « en », placé devant l''infinitif « connaître » : « Eugène veut en connaître la face cachée. »', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q22', 'exam_primary_2017_french_jun', 22, 'النحو — المبني للمعلوم/المجهول', '« Lire et écrire sont considérés par certains comme une évasion. » Parmi les propositions suivantes, quelle est celle qui correspond à la forme active de cette phrase ?', false, '[{"id": "A", "text": "Certains considèrent lire et écrire comme une évasion."}, {"id": "B", "text": "Certains ont considéré lire et écrire comme une évasion."}, {"id": "C", "text": "Certains auraient considéré lire et écrire comme une évasion."}, {"id": "D", "text": "Certains avaient considéré lire et écrire comme une évasion."}]'::jsonb, ARRAY['A']::text[], 'Le passif au présent (« sont considérés ») devient l''actif au présent (« considèrent »), avec « certains » comme sujet.', 'qcm', 'official', NULL, true, 'Le corrigé officiel transcrit la réponse a avec l''ajout « des romans » (« lire et écrire des romans ») ; le libellé retenu est celui du PDF de l''épreuve, sans « des romans ».')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q23', 'exam_primary_2017_french_jun', 23, 'الصرف — تصريف الأفعال', 'Dans quelle proposition le verbe souligné est-il correctement conjugué ?', false, '[{"id": "A", "text": "Si les gendres de Goriot aimaient vraiment ses filles, ils seraient devenus sûrement riches."}, {"id": "B", "text": "Si les gendres de Goriot aiment vraiment ses filles, ils deviendront sûrement riches."}, {"id": "C", "text": "Si les gendres de Goriot aiment vraiment ses filles, ils deviendraient sûrement riches."}, {"id": "D", "text": "Si les gendres de Goriot aiment vraiment ses filles, ils seront devenus sûrement riches."}]'::jsonb, ARRAY['B']::text[], 'Concordance : si + présent → futur simple. a mélange imparfait + conditionnel passé ; c mélange présent + conditionnel présent ; d mélange présent + futur antérieur.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q24', 'exam_primary_2017_french_jun', 24, 'الصرف — أزمنة الأفعال', 'Reliez par une flèche chaque verbe souligné dans la colonne A au temps de conjugaison qui lui correspond dans la colonne B. Colonne A : a- J''aurais été trop heureux ! b- Vous vous croirez attaché à leur peau. c- Je n''ai point froid. d- Il a achevé son travail. Colonne B : 1- Passé composé ; 2- Présent de l''indicatif ; 3- Conditionnel passé ; 4- Futur simple ; 5- Subjonctif présent.', false, '[]'::jsonb, ARRAY[]::text[], 'a → 3- Conditionnel passé (« aurais été ») ; b → 4- Futur simple (« croirez ») ; c → 2- Présent de l''indicatif (« ai ») ; d → 1- Passé composé (« a achevé »). (5- Subjonctif présent est l''intrus.)', 'open', 'official', NULL, true, 'L''item d de la colonne A est peu lisible sur le scan (« Il a achevé son travail ») ; la lecture est confirmée par le corrigé officiel qui l''associe au passé composé (d, 1).')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q25', 'exam_primary_2017_french_jun', 25, 'الإملاء — كتابة الأعداد', 'Quelle est l''écriture correcte du nombre 3981 ?', false, '[{"id": "A", "text": "trois-milles neuf cent quatre-vingts-un ;"}, {"id": "B", "text": "trois-milles neuf cents quatre-vingts-et-un ;"}, {"id": "C", "text": "trois-mille neuf cents quatre-vingts un ;"}, {"id": "D", "text": "trois-mille neuf cent quatre-vingt-un."}]'::jsonb, ARRAY['D']::text[], '« mille » est invariable ; « cent » ne prend pas de -s quand il est suivi d''un autre numéral (« neuf cent quatre-… ») ; « vingt » ne prend pas de -s quand il est suivi de « un » (« quatre-vingt-un », sans « et »).', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q26', 'exam_primary_2017_french_jun', 26, 'الإملاء — الجمع', 'Quel est le pluriel correct de « arc-en-ciel » ?', false, '[{"id": "A", "text": "des arc-en cieux ;"}, {"id": "B", "text": "des arc-en ciels ;"}, {"id": "C", "text": "des arcs-en-ciel ;"}, {"id": "D", "text": "arcs-en-cieux."}]'::jsonb, ARRAY['C']::text[], 'Dans le nom composé « arc-en-ciel », seul « arc » prend la marque du pluriel ; « ciel » reste invariable.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q27', 'exam_primary_2017_french_jun', 27, 'الصرف — اسم المفعول', '« Elles (se couper) les ongles. » Parmi les propositions suivantes, quelle est celle où le participe passé du verbe « se couper » est correctement orthographié ?', false, '[{"id": "A", "text": "Elles se sont coupées les ongles."}, {"id": "B", "text": "Elles se sont coupée les ongles."}, {"id": "C", "text": "Elles se sont coupé les ongles."}, {"id": "D", "text": "Elles se sont coupés les ongles."}]'::jsonb, ARRAY['C']::text[], 'Avec le verbe pronominal « se couper les ongles », « se » est COI (on se coupe les ongles à soi-même) et le COD « les ongles » est placé après le verbe : le participe passé reste invariable (« coupé »).', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q28', 'exam_primary_2017_french_jun', 28, 'النحو — الجمل التابعة', 'Qu''exprime la proposition subordonnée dans la phrase suivante ? « Comme le Père Goriot ne travaillait que pour le bonheur de ses filles, il est prêt à tout pour elles. »', false, '[{"id": "A", "text": "la cause ;"}, {"id": "B", "text": "la manière ;"}, {"id": "C", "text": "le but ;"}, {"id": "D", "text": "la conséquence."}]'::jsonb, ARRAY['A']::text[], '« Comme… » en tête de phrase introduit la cause de ce qui est énoncé dans la principale.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q29', 'exam_primary_2017_french_jun', 29, 'البلاغة — الصور البيانية', 'De quelle figure de style s''agit-il dans la phrase suivante ? « Cette fille est un ange. »', false, '[{"id": "A", "text": "la comparaison ;"}, {"id": "B", "text": "la métaphore ;"}, {"id": "C", "text": "la personnification ;"}, {"id": "D", "text": "le pléonasme."}]'::jsonb, ARRAY['B']::text[], '« Cette fille est un ange » : comparaison implicite sans outil de comparaison (« comme ») — c''est une métaphore.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q30', 'exam_primary_2017_french_jun', 30, 'الصرف — الصيغ والأزمنة', 'Dans la phrase suivante, à quel mode et à quel temps le verbe souligné est-il conjugué ? « Le Père Goriot appréciait que ses gendres aiment ses filles »', false, '[{"id": "A", "text": "au présent de l''indicatif ;"}, {"id": "B", "text": "au subjonctif présent ;"}, {"id": "C", "text": "au conditionnel présent ;"}, {"id": "D", "text": "au présent de l''impératif."}]'::jsonb, ARRAY['B']::text[], '« aiment » est au subjonctif présent, mode exigé après « apprécier que ».', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q31', 'exam_primary_2017_french_jun', 31, 'التنظيم — ترتيب النص', 'Voici le résumé d''un texte donné en désordre. Mettez-le dans l''ordre en écrivant les numéros de 1 à 7 dans les cases qui conviennent. a- Langa fournit chaque jour un peu de gibier au léopard et lui raconte les problèmes du village. b- Le chef de ce village étant devenu trop vieux, ses fils se disputent sa succession. c- Dans un village africain vit un excellent chasseur nommé Langa. d- Après la disparition des prétendants au pouvoir, Langa, le meilleur chasseur, est choisi pour devenir le chef du village. e- Après avoir écouté Langa, le léopard lui promet de l''aide. f- Une nuit, un troupeau de léopards dévore tous les fils du chef. g- Un jour, dans la forêt, Langa rencontre un léopard. Il ne le tue pas et devient son ami.', false, '[]'::jsonb, ARRAY[]::text[], 'Ordre correct : c(1) – b(2) – g(3) – a(4) – e(5) – f(6) – d(7). Le récit s''ouvre sur la présentation de Langa (c), puis le conflit de succession (b), la rencontre avec le léopard (g), l''amitié et les confidences (a), la promesse d''aide (e), la mort des fils (f) et enfin le choix de Langa comme chef (d).', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q32', 'exam_primary_2017_french_jun', 32, 'فهم النص — بداية الحكاية', 'Voici quatre passages extraits d''un conte. Lequel d''eux en constitue le début ?', false, '[{"id": "A", "text": "La princesse Gracieuse pensa mourir aussi de douleur d''avoir perdu une si bonne mère ; le roi regrettait beaucoup une si bonne femme. Il demeura près d''un an enfermé dans son palais."}, {"id": "B", "text": "Il y avait dans cette même cour, une vieille fille fort riche, appelée la duchesse Grogon, qui était affreuse de tout point : ses cheveux étaient d''un roux couleur de feu ; elle avait le visage épouvantablement gros et couvert de boutons…,"}, {"id": "C", "text": "Aussitôt la duchesse Grogon, avertie de l''arrivée du roi, vint le recevoir, il lui dit que l''endroit le plus frais de sa maison, c''était une grande cave bien voûtée, fort propre, où elle le priait de descendre."}, {"id": "D", "text": "Il y avait une fois un roi et une reine qui n''avaient qu''une fille. Sa beauté, sa douceur et son esprit qui étaient incomparables, la firent nommée Gracieuse…"}]'::jsonb, ARRAY['D']::text[], '« Il y avait une fois… » est la formule d''ouverture typique du conte ; les autres passages supposent déjà des personnages et des événements connus.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q33', 'exam_primary_2017_french_jun', 33, 'التنظيم — ترتيب النص', 'Voici un texte en désordre. Mettez-le dans l''ordre en écrivant les numéros 1, 2, 3 et 4 dans les cases qui conviennent. a- D''autre part, voyager enrichit l''homme : c''est un moyen de découvrir d''autres modes de vie, d''autres façons de penser et d''autres cultures. b- Mais, à un autre niveau, il faut quand même reconnaître que le voyage comporte des risques qu''il faut pouvoir assumer : aléas de l''inconnu, insécurité… c- D''une part, quitter son lieu de vie quotidien permet de se reposer l''esprit en vivant à un autre rythme. d- Le voyage est nécessaire à l''homme, même s''il suppose des sacrifices financiers.', false, '[]'::jsonb, ARRAY[]::text[], 'Ordre correct : d(1) – c(2) – a(3) – b(4). La thèse est posée (d), puis « D''une part » (c) et « D''autre part » (a) développent les avantages, et « Mais » (b) introduit la nuance finale sur les risques.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q34', 'exam_primary_2017_french_jun', 34, 'الديداكتيك — بطاقة بيداغوجية للقراءة', 'Voici, ci-dessus, un support proposé pour une activité de lecture destinée aux élèves de la 6ème année de l''enseignement primaire. (Texte : « Un planteur d''arbres », Jean Giono, L''homme qui plantait des arbres.) 1. Élaborez une fiche pédagogique pour cette activité en tenant compte des consignes suivantes : a. définir deux objectifs d''apprentissage ; (4pts) b. mentionner la durée et le nombre de séances ; (2pts) c. indiquer le matériel didactique à utiliser ; (2pts) d. citer les étapes méthodologiques à suivre et préciser, pour chacune d''elles, l''objectif (les objectifs) visé(s) ; (12pts) e. proposer, pour chaque étape citée, un questionnement permettant aux élèves de comprendre le texte. (8pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Éléments de réponse du corrigé officiel : a. Objectifs (exemples) : reconnaître les caractéristiques d''un texte narratif ; reconnaître la structure d''un texte narratif ; construire le sens du texte en identifiant les personnages, les lieux, le temps et les actions ; identifier la morale de l''histoire ; lire le texte de manière expressive. b. Durée : 90 minutes réparties en deux séances de 45 minutes chacune. c. Matériel didactique : images représentant des montagnes, des arbres ; un homme en train de regarder un berger qui plante des glands. d. Étapes méthodologiques et objectifs : Mise en situation (préparer l''élève à la lecture du texte en faisant appel à son vécu et à ses expériences qui sont en rapport avec le texte) ; Observation / Découverte du texte (repérer les indices prégnants à partir des éléments paratextuels ; anticiper sur le sens et la fonction du texte en formulant des hypothèses de lecture) ; Interaction avec le texte / Compréhension / Construction du sens (valider les hypothèses émises au départ ; construire le sens du texte ; identifier le type de texte ; lire le texte de manière expressive) ; Évaluation / Réaction au texte (reformuler des passages du texte ; identifier la morale du texte ; donner leur avis sur le texte ; évaluer les lectures individuelles ; évaluer la compréhension du texte). e. Questionnement : Mise en situation — Quels sont les arbres que vous connaissez ? Quelle est l''utilité des arbres ? Pourquoi faut-il protéger les arbres ? Observation / Découverte du texte — Quel est l''endroit représenté sur l''image ? Quels sont les personnages représentés sur l''image ? Que font ces personnages ? Quel est le titre du texte ? D''après les images et le titre, de quoi s''agit-il dans ce texte ? Interaction avec le texte — Quelles sont les actions citées par le narrateur au début du texte ? Quels sont les lieux cités au début de l''histoire ? Quel est le problème que le narrateur a évoqué dans le texte ? Comment a-t-il trouvé la solution à ce problème ? Qu''examinait le berger ? Qu''a fait le berger avec les glands ? La terre où le berger plantait des glands lui appartenait-elle ? Combien d''arbres le berger avait-il plantés depuis trois ans ? Évaluation / Réaction au texte — Pourquoi le berger plantait-il des arbres dans des terres qui ne lui appartenaient pas ? Est-il utile de planter des arbres ? Pourquoi ? Qu''est-ce que tu as apprécié dans ce texte ? Pourquoi ?', 'open', 'official', NULL, true, 'Question ouverte (fiche pédagogique) : la réponse attendue est un modèle du corrigé officiel, non une réponse unique.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q35', 'exam_primary_2017_french_jun', 35, 'الديداكتيك — صعوبات القراءة', '2. Identifiez trois types de difficultés de lecture que ce texte vous semble présenter à des élèves de la 6ème année de l''enseignement primaire. Justifiez votre réponse en donnant des exemples précis. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Éléments de réponse du corrigé officiel : Phonétique — certains mots contiennent des phonèmes présentant des difficultés d''articulation : la course, le pays, campai, abandonné, la veille, apercevoir, silhouette, hasard, accompagner… Lexical — présence de certains mots « difficiles » : camper, abandonné, la veille, silhouette, solitaire, gourde… Syntaxique — présence de certaines constructions difficiles : « Je la pris pour un tronc d''arbre », « Arrivé à l''endroit où il désirait aller », « Lui ne se souciait pas de connaître les propriétaires », « Il me sembla apercevoir dans le lointain une petite silhouette noire, debout », « Je la pris pour un tronc d''arbre solitaire », « Seul, depuis trois ans ».', 'open', 'official', NULL, true, 'Question ouverte : la réponse attendue est un modèle du corrigé officiel, non une réponse unique.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;


-- أسئلة امتحان: اللغة الفرنسية — دورة يونيو 2017 — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2017_french_jun_q36', 'exam_primary_2017_french_jun', 36, 'الديداكتيك — الإنتاج الكتابي', '3. Lors d''une activité de production écrite dont l''objectif est « produire un récit », vous constatez que des élèves éprouvent des difficultés à articuler chronologiquement des phrases dans leurs productions. Montrez comment vous procéderez pour traiter ces difficultés avec ces élèves. (6pts)', false, '[]'::jsonb, ARRAY[]::text[], 'Éléments de réponse du corrigé officiel : proposer, en désordre, des phrases exprimant des actions et demander aux élèves de les remettre en ordre ; proposer des phrases en désordre et demander aux élèves de les mettre en ordre pour obtenir un texte cohérent, en utilisant des connecteurs chronologiques donnés ; compléter un texte à trous avec des connecteurs chronologiques donnés…', 'open', 'official', NULL, true, 'Question ouverte : la réponse attendue est un modèle du corrigé officiel, non une réponse unique.')
ON CONFLICT (id) DO UPDATE SET
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

