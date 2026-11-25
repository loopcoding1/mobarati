-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة دجنبر 2021
-- ====================================================================
-- المصدر: ملف الحل solved/2021/ديداكتيك اللغة الفرنسية - 2021.md
--   (سجل الامتحانات رقم 80؛ الحل بالمفتاح الرسمي، لم يُستعمل AI Studio)
--   ملف الامتحان: exams-ibtida2i/2021/ديداكتيك اللغة الفرنسية.pdf (10 صفحات).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q30 وخياراته الأربعة (a-d) مطابقة حرفياً لورقة
--     الامتحان، بما فيها الأخطاء المطبعية في الورقة الأصلية (Q11: «relatives
--     la mise en œuvre» دون «à»؛ Q18: «couton» بدل «coton») — موسومة في
--     verification_note.
--   * جميع الأجوبة الـ30 من المفتاح الرسمي (ملف 2021/تصحيح اللغة الفرنسية.pdf،
--     الصفحتان 1–2)؛ صفحة mesconcours.ma متفقة مع الملف الرسمي في كل الأجوبة
--     والتعليلات — لا تعارضات.
--   * الاختيارات في الورقة بأحرف صغيرة (a/b/c/d)؛ حُوّلت إلى كبيرة (A/B/C/D)
--     للاتساق مع بقية الامتحانات في القاعدة.
--
-- ملاحظات عن ملف الامتحان:
--   * مدة الإنجاز (ساعتان) والمعامل (1) على الغلاف تخصان الاختبار الكامل
--     لديداكتيك المواد الأربع؛ مادة اللغة الفرنسية منقطة على 10 نقط.
--     duration_minutes=120 هو مدة الاختبار الكامل.
--
-- تسمية المعرفات: exam_primary_<year>_<subject>_<session>؛ session هنا dec
--   (دورة دجنبر 2021) — امتداد لاتفاقية jan/nov المستعملة في الامتحانات السابقة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_didactics_fr_dec', 'specialty_primary', 2021, 'didactics_fr', 'ديداكتيك اللغة الفرنسية', 'امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021)', 'دورة دجنبر 2021', 120, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً)

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q1', 'exam_primary_2021_didactics_fr_dec', 1, 'Curriculum et programme', 'Selon le curriculum scolaire de l''enseignement primaire (juillet 2021), dans quelle proposition les capacités à développer chez les élèves en langue française sont-elles exactement indiquées ?', false, '[{"id": "A", "text": "comprendre de l''oral et de l''écrit"}, {"id": "B", "text": "comprendre de l''écrit et produire de l''oral"}, {"id": "C", "text": "comprendre de l''oral et produire de l''écrit"}, {"id": "D", "text": "comprendre et produire de l''oral et de l''écrit"}]'::jsonb, ARRAY['D']::text[], 'Le curriculum vise les quatre habiletés langagières, en réception comme en production, à l''oral comme à l''écrit. Les trois autres propositions n''en gardent que deux et amputent donc la compétence de langue. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q2', 'exam_primary_2021_didactics_fr_dec', 2, 'Curriculum et programme', 'Pour chaque niveau scolaire de l''enseignement primaire, en combien d''unités didactiques le programme de français est-il organisé ?', false, '[{"id": "A", "text": "12 unités"}, {"id": "B", "text": "8 unités"}, {"id": "C", "text": "6 unités"}, {"id": "D", "text": "5 unités"}]'::jsonb, ARRAY['C']::text[], 'Six unités didactiques par niveau, de cinq semaines chacune, ce qui reconstitue bien les 30 semaines d''enseignement effectif de l''année (voir les items 3 et 6). (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q3', 'exam_primary_2021_didactics_fr_dec', 3, 'Curriculum et programme', 'Au cycle de l''enseignement primaire, en combien de semaines pédagogiques une unité didactique est-elle organisée ?', false, '[{"id": "A", "text": "en 3 semaines"}, {"id": "B", "text": "en 5 semaines"}, {"id": "C", "text": "en 4 semaines"}, {"id": "D", "text": "en 6 semaines"}]'::jsonb, ARRAY['B']::text[], 'Quatre semaines d''apprentissage suivies d''une semaine d''évaluation, de soutien et de consolidation, soit cinq au total. C''est le même découpage que celui de l''item 5, vu depuis l''autre bout. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q4', 'exam_primary_2021_didactics_fr_dec', 4, 'Curriculum et programme', 'Dans le cadre de l''enseignement/apprentissage, à quoi l''évaluation diagnostique consiste-t-elle ?', false, '[{"id": "A", "text": "à sanctionner les élèves en difficulté"}, {"id": "B", "text": "à certifier les élèves en fonction de leurs notes"}, {"id": "C", "text": "à établir l''état des lieux des acquis des élèves"}, {"id": "D", "text": "à identifier uniquement les points forts chez les élèves"}]'::jsonb, ARRAY['C']::text[], 'L''évaluation diagnostique se place en amont de l''apprentissage pour repérer prérequis et lacunes et ajuster la suite. b décrit l''évaluation certificative ; d est le piège, puisque le diagnostic porte autant sur les manques que sur les acquis. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q5', 'exam_primary_2021_didactics_fr_dec', 5, 'Curriculum et programme', 'Pour chaque unité didactique en langue française, quand la semaine d''évaluation, de soutien et de consolidation intervient-elle ?', false, '[{"id": "A", "text": "après trois semaines d''apprentissage"}, {"id": "B", "text": "après quatre semaines d''apprentissage"}, {"id": "C", "text": "après cinq semaines d''apprentissage"}, {"id": "D", "text": "après six semaines d''apprentissage"}]'::jsonb, ARRAY['B']::text[], 'L''unité compte cinq semaines : quatre d''apprentissage, la cinquième consacrée à l''évaluation, au soutien et à la consolidation. c confond le rang de la semaine bilan avec le nombre de semaines qui la précèdent. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q6', 'exam_primary_2021_didactics_fr_dec', 6, 'Curriculum et programme', 'Selon les Orientations Pédagogiques relatives à l''enseignement/apprentissage du français au cycle primaire, de combien de semaines l''année scolaire se compose-t-elle ?', false, '[{"id": "A", "text": "34 semaines"}, {"id": "B", "text": "33 semaines"}, {"id": "C", "text": "32 semaines"}, {"id": "D", "text": "31 semaines"}]'::jsonb, ARRAY['A']::text[], 'Trente-quatre semaines au total : les 30 semaines des six unités didactiques, plus les semaines d''évaluation diagnostique et de mise à niveau du début d''année et les périodes de bilan. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q7', 'exam_primary_2021_didactics_fr_dec', 7, 'Curriculum et programme', 'D''après le curriculum scolaire (juillet 2021), quelle est l''enveloppe horaire hebdomadaire impartie à l''enseignement/apprentissage de la langue française en 2e année de l''enseignement primaire ?', false, '[{"id": "A", "text": "3 heures"}, {"id": "B", "text": "4 heures"}, {"id": "C", "text": "5 heures"}, {"id": "D", "text": "6 heures"}]'::jsonb, ARRAY['C']::text[], 'Cinq heures hebdomadaires en 2e année. L''enveloppe n''est pas la même sur tout le cycle : elle démarre plus bas en 1re année puis se stabilise, ce qui explique que la question précise le niveau. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q8', 'exam_primary_2021_didactics_fr_dec', 8, 'Activités orales', 'En 1re année de l''enseignement primaire, quelles sont les activités les plus dominantes dans l''enseignement/apprentissage du français ?', false, '[{"id": "A", "text": "les activités écrites"}, {"id": "B", "text": "les activités orales"}, {"id": "C", "text": "les activités de lecture"}, {"id": "D", "text": "les activités réflexives sur la langue"}]'::jsonb, ARRAY['B']::text[], 'La première année installe d''abord le bain de langue : écoute, compréhension et prise de parole. L''écrit et l''étude explicite de la langue viennent plus tard, comme le confirme l''item 20. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q9', 'exam_primary_2021_didactics_fr_dec', 9, 'Activités orales', 'Pour quelles situations, la communication non verbale constitue-t-elle une spécificité ?', false, '[{"id": "A", "text": "pour les situations d''oral"}, {"id": "B", "text": "pour les situations de compréhension de l''écrit"}, {"id": "C", "text": "pour les situations d''oral et d''écrit"}, {"id": "D", "text": "pour les situations de production de l''écrit"}]'::jsonb, ARRAY['A']::text[], 'Gestes, mimique, posture, regard et distance n''existent que dans l''échange en présence, donc à l''oral. c est le distracteur tentant : l''écrit a bien une dimension non linguistique (mise en page, typographie), mais ce n''est pas de la communication non verbale au sens où la question l''entend. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q10', 'exam_primary_2021_didactics_fr_dec', 10, 'Activités orales', 'Quelles sont les stratégies qui conviennent à la réception de l''oral ?', false, '[{"id": "A", "text": "les stratégies de lecture"}, {"id": "B", "text": "les stratégies d''écoute"}, {"id": "C", "text": "les stratégies de prise de parole"}, {"id": "D", "text": "les stratégies de production écrite"}]'::jsonb, ARRAY['B']::text[], 'Recevoir de l''oral, c''est écouter : anticiper, repérer les mots clés, inférer, vérifier ses hypothèses. c relève de la production orale, pas de sa réception. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q11', 'exam_primary_2021_didactics_fr_dec', 11, 'Activités orales', 'Quel est l''enchaînement logique des étapes méthodologiques relatives la mise en œuvre d''une activité orale ?', false, '[{"id": "A", "text": "Réception/Compréhension - Observation et découverte - Réinvestissement/Production - Exploitation des moyens linguistiques/Réemploi"}, {"id": "B", "text": "Observation et découverte - Réception/Compréhension - Exploitation des moyens linguistiques/Réemploi - Réinvestissement/Production"}, {"id": "C", "text": "Observation et découverte - Réinvestissement/Production - Exploitation des moyens linguistiques/Réemploi - Réception/Compréhension"}, {"id": "D", "text": "Réception/Compréhension - Observation et découverte - Exploitation des moyens linguistiques/Réemploi - Réinvestissement/Production"}]'::jsonb, ARRAY['B']::text[], 'La démarche va de l''observation du support à la compréhension, puis au réemploi guidé des structures, et enfin à la production autonome. a et d placent la compréhension avant l''observation, ce qui revient à faire comprendre un support que l''élève n''a pas encore découvert. L''énoncé de la source écrit « relatives la mise en œuvre », sans la préposition. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, 'الورقة تطبع «relatives la mise en œuvre» دون حرف الجر «à» (خطأ مطبعي في الامتحان الأصلي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q12', 'exam_primary_2021_didactics_fr_dec', 12, 'Communication et actes de langage', 'Dans le programme de quelle composante de la langue française l''objectif d''apprentissage « Informer/S''informer sur les Marocains du monde » est-il mentionné ?', false, '[{"id": "A", "text": "dans le programme de la « communication et actes de langage »"}, {"id": "B", "text": "dans le programme de la « lecture »"}, {"id": "C", "text": "dans le programme de la « grammaire »"}, {"id": "D", "text": "dans le programme du « lexique »"}]'::jsonb, ARRAY['A']::text[], '« Informer » et « s''informer » sont des actes de langage : le programme de communication est justement celui qui liste les objectifs sous cette forme verbale. Le thème des Marocains du monde n''est ici qu''un support. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q13', 'exam_primary_2021_didactics_fr_dec', 13, 'Communication et actes de langage', 'À quel type de discours l''objectif de communication « Donner un ordre » correspond-il ?', false, '[{"id": "A", "text": "narratif"}, {"id": "B", "text": "descriptif"}, {"id": "C", "text": "injonctif"}, {"id": "D", "text": "explicatif"}]'::jsonb, ARRAY['C']::text[], 'Le discours injonctif vise à faire agir : ordre, consigne, conseil, recette, mode d''emploi. Le narratif raconte, le descriptif dépeint, l''explicatif fait comprendre. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q14', 'exam_primary_2021_didactics_fr_dec', 14, 'Lecture', 'Selon le curriculum (juillet 2021), quelle est la liste exhaustive des habiletés de base à développer en lecture en 1re, 2e et 3e années de l''enseignement primaire ?', false, '[{"id": "A", "text": "l''identification de mots - la compréhension - la fluidité"}, {"id": "B", "text": "l''identification de mots - le principe alphabétique - la compréhension"}, {"id": "C", "text": "la conscience phonologique - le principe alphabétique - l''identification de mots - la compréhension - la fluidité"}, {"id": "D", "text": "la conscience phonologique - le principe alphabétique - la fluidité"}]'::jsonb, ARRAY['C']::text[], 'La question demande la liste exhaustive : seule c porte les cinq habiletés, dans l''ordre d''apprentissage qui va du son à la compréhension fluide. Les trois autres en omettent au moins une, presque toujours la conscience phonologique ou la fluidité. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q15', 'exam_primary_2021_didactics_fr_dec', 15, 'Lecture', 'À quel type d''activités recourt-on pour développer la conscience phonologique chez les élèves ?', false, '[{"id": "A", "text": "aux activités de discrimination visuelle"}, {"id": "B", "text": "aux activités de déchiffrage de nouveaux mots"}, {"id": "C", "text": "aux activités de combinatoire"}, {"id": "D", "text": "aux activités de discrimination auditive"}]'::jsonb, ARRAY['D']::text[], 'La conscience phonologique se travaille à l''oreille, sans passer par l''écrit : repérer une syllabe, isoler un phonème, trouver des rimes. b et c supposent déjà la lettre, donc le principe alphabétique, qui vient après. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q16', 'exam_primary_2021_didactics_fr_dec', 16, 'Lecture', 'Selon le curriculum (juillet 21), pour quel niveau scolaire de l''enseignement primaire l''étude des phonèmes correspondant aux graphèmes complexes est-elle recommandée ?', false, '[{"id": "A", "text": "pour la 1re année"}, {"id": "B", "text": "pour la 2e année"}, {"id": "C", "text": "pour la 3e année"}, {"id": "D", "text": "pour la 4e année"}]'::jsonb, ARRAY['C']::text[], 'Les graphèmes complexes (ou, on, ch, eau, ille) arrivent en 3e année, une fois les correspondances simples installées en 1re et 2e années. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q17', 'exam_primary_2021_didactics_fr_dec', 17, 'Lecture', 'Selon le curriculum (juillet 2021), pour quel niveau scolaire de l''enseignement primaire le texte à caractère argumentatif est-il recommandé à l''étude ?', false, '[{"id": "A", "text": "pour la 3e année"}, {"id": "B", "text": "pour la 4e année"}, {"id": "C", "text": "pour la 5e année"}, {"id": "D", "text": "pour la 6e année"}]'::jsonb, ARRAY['D']::text[], 'L''argumentatif est le dernier type de texte introduit, en fin de cycle. L''item 30 le confirme par l''autre côté : en 4e année, la liste des types à produire s''arrête à l''explicatif. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q18', 'exam_primary_2021_didactics_fr_dec', 18, 'Lecture', 'Voici une consigne relative à une activité de lecture : Entoure le mot quand tu vois « ou » : mouton - moteur - couton - automobile - bureau - couleur - gâteau - genou. Quel est l''objectif d''apprentissage qui correspond à cette consigne ?', false, '[{"id": "A", "text": "identifier le phonème [u] dans des mots usuels donnés"}, {"id": "B", "text": "identifier le graphème qui correspond au phonème [u] dans des mots usuels donnés"}, {"id": "C", "text": "identifier les phonèmes [ɔ] et [y] dans des mots usuels donnés"}, {"id": "D", "text": "Identifier le graphème qui correspond au phonème [ɔ] dans des mots usuels donnés"}]'::jsonb, ARRAY['B']::text[], 'La consigne dit « quand tu vois », donc l''élève travaille sur la trace écrite : il repère le graphème « ou ». a décrirait la même activité menée à l''oreille, sans support écrit, c''est-à-dire de la conscience phonologique. La liste de la source imprime « couton » pour « coton ». (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, 'الورقة تطبع «couton» بدل «coton» في قائمة الكلمات (خطأ مطبعي في الامتحان الأصلي).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q19', 'exam_primary_2021_didactics_fr_dec', 19, 'Lecture', 'Quel est l''enchaînement logique des étapes méthodologiques relatives à la mise en œuvre d''une activité de lecture en 4e, 5e et 6e années de l''enseignement primaire ?', false, '[{"id": "A", "text": "Interaction avec le texte/Compréhension - Observation et découverte - Réaction au texte - Évaluation"}, {"id": "B", "text": "Observation et découverte - Interaction avec le texte/Compréhension - Réaction au texte - Évaluation"}, {"id": "C", "text": "Observation et découverte - Réaction au texte - Évaluation - Interaction avec le texte/Compréhension"}, {"id": "D", "text": "Réaction au texte - Observation et découverte - Évaluation - Interaction avec le texte/Compréhension"}]'::jsonb, ARRAY['B']::text[], 'L''élève observe le paratexte et formule des hypothèses, lit et construit le sens, réagit au texte en prenant position, puis on évalue. c et d font réagir l''élève à un texte qu''il n''a pas encore lu. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q20', 'exam_primary_2021_didactics_fr_dec', 20, 'Activités réflexives sur la langue', 'D''après le curriculum (juillet 2021), à partir de quel niveau scolaire de l''enseignement primaire, les règles qui régissent le fonctionnement de la langue sont-elles étudiées de manière explicite ?', false, '[{"id": "A", "text": "à partir de la 2e année"}, {"id": "B", "text": "à partir de la 3e année"}, {"id": "C", "text": "à partir de la 4e année"}, {"id": "D", "text": "à partir de la 5e année"}]'::jsonb, ARRAY['C']::text[], 'Avant la 4e année, la langue se travaille implicitement, dans l''usage et l''imprégnation. L''étude explicite des règles, avec métalangage et leçons identifiées, commence en 4e année : c''est aussi le niveau où l''item 21 situe les composantes réflexives. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q21', 'exam_primary_2021_didactics_fr_dec', 21, 'Activités réflexives sur la langue', 'Selon le curriculum (juillet 2021), quelle est la liste exacte des composantes relatives aux activités réflexives sur la langue, programmées en 4e année de l''enseignement primaire ?', false, '[{"id": "A", "text": "la grammaire - la conjugaison - le lexique"}, {"id": "B", "text": "la grammaire - la conjugaison - l''orthographe - le lexique"}, {"id": "C", "text": "la grammaire - la conjugaison - l''orthographe"}, {"id": "D", "text": "la grammaire - l''orthographe - le lexique"}]'::jsonb, ARRAY['C']::text[], 'Trois composantes seulement en 4e année, grammaire, conjugaison et orthographe. b est le distracteur qui coûte le plus de points, parce que le lexique est bien enseigné à ce niveau ; il n''est simplement pas rangé parmi les activités réflexives sur la langue dans le programme de la 4e année. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q22', 'exam_primary_2021_didactics_fr_dec', 22, 'Activités réflexives sur la langue', 'Au cycle de l''enseignement primaire, dans le programme de quelle composante de la langue française la leçon intitulée « Le conditionnel présent » est-elle mentionnée ?', false, '[{"id": "A", "text": "dans le programme de la grammaire"}, {"id": "B", "text": "dans le programme de la conjugaison"}, {"id": "C", "text": "dans le programme du lexique"}, {"id": "D", "text": "dans le programme de l''orthographe"}]'::jsonb, ARRAY['B']::text[], 'Un temps verbal et sa formation relèvent de la conjugaison. La grammaire porterait sur l''emploi du conditionnel dans la phrase, par exemple dans l''expression de l''hypothèse. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q23', 'exam_primary_2021_didactics_fr_dec', 23, 'Activités réflexives sur la langue', 'Quel est l''enchaînement logique des étapes méthodologiques relatives à la mise en œuvre d''une activité de grammaire ?', false, '[{"id": "A", "text": "Manipulation et réflexion - Observation et découverte - Compréhension/Conceptualisation - Application - Évaluation"}, {"id": "B", "text": "Observation et découverte - Manipulation et réflexion - Compréhension/Conceptualisation - Application - Évaluation"}, {"id": "C", "text": "Compréhension/Conceptualisation - Manipulation et réflexion - Observation et découverte - Application - Évaluation"}, {"id": "D", "text": "Observation et découverte - Manipulation et réflexion - Application - Compréhension/Conceptualisation - Évaluation"}]'::jsonb, ARRAY['B']::text[], 'Démarche inductive : on part d''un corpus observé, on manipule (substitution, déplacement, transformation), la règle se dégage, on l''applique, on évalue. d est le piège le plus fin, car il n''inverse que deux étapes, mais appliquer avant d''avoir conceptualisé revient à faire exécuter une règle qui n''a pas été formulée. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q24', 'exam_primary_2021_didactics_fr_dec', 24, 'Activités réflexives sur la langue', 'Pour quel niveau scolaire de l''enseignement primaire la leçon de lexique intitulée « Les gentilés : pays/ville + suffixes » est-elle programmée ?', false, '[{"id": "A", "text": "pour la 6e année"}, {"id": "B", "text": "pour la 5e année"}, {"id": "C", "text": "pour la 4e année"}, {"id": "D", "text": "pour la 3e année"}]'::jsonb, ARRAY['A']::text[], 'La dérivation par suffixes appliquée aux noms de pays et de villes suppose un lexique déjà large et la maîtrise du procédé de formation des mots : elle est placée en 6e année. Attention à l''ordre des options, qui descend de la 6e à la 3e année au lieu de monter. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q25', 'exam_primary_2021_didactics_fr_dec', 25, 'Activités réflexives sur la langue', 'Au cycle de l''enseignement primaire, dans le programme de quelle composante de la langue française la leçon intitulée « L''accord du verbe avec le sujet », est-elle mentionnée ?', false, '[{"id": "A", "text": "dans le programme de la grammaire"}, {"id": "B", "text": "dans le programme de la conjugaison"}, {"id": "C", "text": "dans le programme du lexique"}, {"id": "D", "text": "dans le programme de l''orthographe"}]'::jsonb, ARRAY['D']::text[], 'Le corrigé officiel retient d, et c''est l''item le plus contre-intuitif de l''épreuve : l''accord sujet-verbe est rangé en orthographe, comme fait d''orthographe grammaticale, puisqu''il se joue sur la terminaison écrite du verbe. a se défend en théorie (l''accord est une relation syntaxique), mais le programme le classe bien en orthographe. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q26', 'exam_primary_2021_didactics_fr_dec', 26, 'Écriture', 'D''après le curriculum (juillet 2021), pour quel niveau scolaire de l''enseignement primaire l''apprentissage du graphisme est-il recommandé ?', false, '[{"id": "A", "text": "pour la 1re année"}, {"id": "B", "text": "pour la 2e année"}, {"id": "C", "text": "pour la 3e année"}, {"id": "D", "text": "pour la 4e année"}]'::jsonb, ARRAY['A']::text[], 'Le graphisme travaille le geste avant la lettre : tenue de l''outil, boucles, ponts, sens de tracé. Il précède l''écriture proprement dite et se place donc en 1re année. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q27', 'exam_primary_2021_didactics_fr_dec', 27, 'Écriture', 'Selon le curriculum (juillet 2021), pour quel niveau scolaire de l''enseignement primaire l''apprentissage de l''écriture des lettres en majuscule cursive est-il programmé ?', false, '[{"id": "A", "text": "pour la 1re année"}, {"id": "B", "text": "pour la 2e année"}, {"id": "C", "text": "pour la 3e année"}, {"id": "D", "text": "pour la 4e année"}]'::jsonb, ARRAY['D']::text[], 'La majuscule cursive est la forme la plus exigeante du tracé et arrive en dernier, en 4e année, après le graphisme de 1re année (item 26), la minuscule cursive puis la majuscule d''imprimerie. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q28', 'exam_primary_2021_didactics_fr_dec', 28, 'Production de l''écrit', '« Produire un texte court, de cinq lignes au moins, à caractère informatif, narratif, descriptif, injonctif et explicatif. » À quel domaine d''apprentissage cette partie de l''énoncé de la compétence annuelle, relative à la 5e année de l''enseignement primaire, correspond-elle ?', false, '[{"id": "A", "text": "à la compréhension de l''oral"}, {"id": "B", "text": "à la compréhension de l''écrit"}, {"id": "C", "text": "à la production de l''écrit"}, {"id": "D", "text": "à la production de l''oral"}]'::jsonb, ARRAY['C']::text[], 'Deux indices suffisent : le verbe « produire » écarte les deux domaines de compréhension, et « de cinq lignes au moins » ne se mesure qu''à l''écrit. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q29', 'exam_primary_2021_didactics_fr_dec', 29, 'Production de l''écrit', 'Quel est l''enchaînement logique des étapes méthodologiques relatives à la mise en œuvre d''une activité d''écriture ?', false, '[{"id": "A", "text": "Entraînement/Application - Observation et découverte - Réalisation/Production - Évaluation/Correction"}, {"id": "B", "text": "Observation et découverte - Évaluation/Correction - Entraînement/Application - Réalisation/Production"}, {"id": "C", "text": "Observation et découverte - Réalisation/Production - Entraînement/Application - Évaluation/Correction"}, {"id": "D", "text": "Observation et découverte - Entraînement/Application - Réalisation/Production - Évaluation/Correction"}]'::jsonb, ARRAY['D']::text[], 'On observe le modèle, on s''entraîne sur des exercices guidés, on produit, puis on évalue et on corrige. b et c placent l''évaluation ou la production avant l''entraînement, alors que celui-ci n''a d''intérêt qu''en amont de l''écrit final. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة الفرنسية (دورة دجنبر 2021) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_didactics_fr_dec_q30', 'exam_primary_2021_didactics_fr_dec', 30, 'Production de l''écrit', 'Selon le curriculum (juillet 2021), quelle est la liste exacte des types de textes recommandés pour la production de l''écrit en 4e année de l''enseignement primaire ?', false, '[{"id": "A", "text": "informatif - narratif - descriptif - injonctif - explicatif"}, {"id": "B", "text": "narratif - descriptif - injonctif - explicatif - argumentatif"}, {"id": "C", "text": "informatif - descriptif - argumentatif - injonctif - explicatif"}, {"id": "D", "text": "informatif - argumentatif - narratif - descriptif - injonctif"}]'::jsonb, ARRAY['A']::text[], 'Les trois autres listes contiennent l''argumentatif, qui n''est introduit qu''en 6e année (item 17) et ne peut donc pas figurer au programme de production écrite de la 4e. (mesconcours.ma ; corrigé officiel)', 'qcm', 'official', 'https://mesconcours.ma/concours/enseignement/2021/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
