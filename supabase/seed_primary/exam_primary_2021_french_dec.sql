-- ====================================================================
-- مباراتي — اللغة الفرنسية، مادة التخصص، دورة دجنبر 2021
-- ====================================================================
-- المصدر: ملف الحل solved/2021/اللغة الفرنسية - 2021.md
--   (سجل الامتحانات رقم 79؛ الحل منشور، لم يُستعمل AI Studio)
--   ملف الامتحان: exams-ibtida2i/2021/اللغة الفرنسية - امتحان.pdf (14 صفحة).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q40 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * الأسئلة Q1–Q18: الأجوبة من تصحيح wadifa-info المقترح (طرف ثالث)؛
--     الصفحة 1/3 من المفتاح الرسمي غير موجودة في ملف التصحيح بالمجلد.
--   * الأسئلة Q19–Q40: الأجوبة من المفتاح الرسمي (ملف 2021/تصحيح اللغة
--     الفرنسية.pdf، الصفحتان 3–4)؛ تصحيح wadifa-info متفق معها كلها.
--   * الأسئلة المرجّحة Q2 وQ4 وQ9 موسومة في verification_note.
--   * الأسئلة Q2 وQ11 وQ15 بثلاثة اختيارات فقط (a/b/c) في الورقة الأصلية.
--   * الاختيارات في الورقة بأحرف صغيرة (a/b/c/d)؛ حُوّلت إلى كبيرة (A/B/C/D)
--     للاتساق مع بقية الامتحانات في القاعدة.
--
-- ملاحظات عن ملف الامتحان:
--   * مدة الإنجاز (3 ساعات) والمعامل (3) على الغلاف تخصان الاختبار الكامل
--     بجميع المواد (العربية والفرنسية والرياضيات والعلوم)؛ مادة اللغة
--     الفرنسية منقطة على 30 نقطة. duration_minutes=180 هو مدة الاختبار الكامل.
--   * النص: مقتطف من رواية Le Rouge et le Noir لستندال (الصفحتان 2–3).
--
-- تسمية المعرفات: exam_primary_<year>_<subject>_<session>؛ session هنا dec
--   (دورة دجنبر 2021) — امتداد لاتفاقية jan/nov المستعملة في الامتحانات السابقة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2021_french_dec', 'specialty_primary', 2021, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 40)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (40 سؤالاً)

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q1', 'exam_primary_2021_french_dec', 1, 'Compréhension du texte', 'À quel type de texte cet extrait appartient-il ?', false, '[{"id": "A", "text": "explicatif"}, {"id": "B", "text": "informatif"}, {"id": "C", "text": "narratif"}, {"id": "D", "text": "injonctif"}]'::jsonb, ARRAY['C']::text[], 'Le texte est un récit au passé simple et à l''imparfait : l''arrivée de Julien chez Mme de Rênal, avec des dialogues. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q2', 'exam_primary_2021_french_dec', 2, 'Compréhension du texte', 'De quel niveau de langue s''agit-il dans cet extrait ?', false, '[{"id": "A", "text": "niveau familier"}, {"id": "B", "text": "niveau courant"}, {"id": "C", "text": "niveau soutenu"}]'::jsonb, ARRAY['C']::text[], 'Il s''agit d''un texte littéraire du XIXe siècle, avec un lexique recherché (daignerait, rébarbatif, tressaillit), le passé simple et des inversions du sujet (« lui dit-elle »). Certains correcteurs pourraient accepter « courant » pour les répliques, mais la narration relève du registre soutenu. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, 'إجابة مرجّحة حسب wadifa-info (réponse probable)؛ المفتاح الرسمي للأسئلة 1–18 غير متوفر في الملف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q3', 'exam_primary_2021_french_dec', 3, 'Compréhension du texte', 'Parmi les titres suivants, quel est celui qui correspond au texte ?', false, '[{"id": "A", "text": "La dispute"}, {"id": "B", "text": "La première rencontre"}, {"id": "C", "text": "La séparation"}, {"id": "D", "text": "La dernière rencontre"}]'::jsonb, ARRAY['B']::text[], 'Julien arrive comme précepteur et les deux personnages se voient pour la première fois. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q4', 'exam_primary_2021_french_dec', 4, 'Compréhension du texte', 'D''après le texte, quels sentiments Julien éprouve-t-il ?', false, '[{"id": "A", "text": "la joie et le soulagement"}, {"id": "B", "text": "l''inquiétude et le soulagement"}, {"id": "C", "text": "l''inquiétude et la déception"}, {"id": "D", "text": "la joie et la déception"}]'::jsonb, ARRAY['B']::text[], 'Julien arrive en larmes, timide, et « tressaillit ». Il est ensuite rassuré par la douceur de Mme de Rênal : s''entendre appeler « monsieur » était « au-dessus de toutes [ses] prévisions ». (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, 'إجابة مرجّحة حسب wadifa-info (réponse probable)؛ المفتاح الرسمي للأسئلة 1–18 غير متوفر في الملف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q5', 'exam_primary_2021_french_dec', 5, 'Compréhension du texte', 'Que signifient les deux phrases suivantes ? « Mme de Rênal resta interdite. Ils étaient fort près l''un de l''autre à se regarder. »', false, '[{"id": "A", "text": "la sidération et la fascination"}, {"id": "B", "text": "la sudation et l''attraction"}, {"id": "C", "text": "l''étonnement et la révolte"}, {"id": "D", "text": "l''étonnement et la répulsion"}]'::jsonb, ARRAY['A']::text[], 'Resta interdite : elle est stupéfaite. Fort près l''un de l''autre à se regarder : ils sont captivés l''un par l''autre. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q6', 'exam_primary_2021_french_dec', 6, 'Compréhension du texte', 'Que signifie le mot « grâce » dans la phrase suivante ? « Le teint de ce petit paysan était si blanc, ses yeux si doux, que l''esprit un peu romanesque de Mme de Rênal eut d''abord l''idée que ce pouvait être une jeune fille déguisée, qui venait demander quelque grâce à M. le maire. »', false, '[{"id": "A", "text": "ingratitude"}, {"id": "B", "text": "obligation"}, {"id": "C", "text": "maladresse"}, {"id": "D", "text": "faveur"}]'::jsonb, ARRAY['D']::text[], '« Demander quelque grâce » signifie demander une faveur. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q7', 'exam_primary_2021_french_dec', 7, 'Compréhension du texte', 'D''après le texte, en quoi consiste la fonction de « précepteur » ?', false, '[{"id": "A", "text": "à éduquer les enfants de familles nobles"}, {"id": "B", "text": "à assister les personnes à besoins spécifiques"}, {"id": "C", "text": "à payer des taxes"}, {"id": "D", "text": "à percevoir des impôts"}]'::jsonb, ARRAY['A']::text[], 'Le précepteur est chargé de l''éducation des enfants d''une famille aisée, ici ceux du maire. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q8', 'exam_primary_2021_french_dec', 8, 'Compréhension du texte', 'De quelle figure de style s''agit-il dans la phrase suivante ? « Quoi, c''était là ce précepteur qu''elle s''était figuré comme un prêtre sale et mal vêtu, qui viendrait gronder et fouetter ses enfants ! »', false, '[{"id": "A", "text": "la métaphore"}, {"id": "B", "text": "la comparaison"}, {"id": "C", "text": "le parallélisme"}, {"id": "D", "text": "la personnification"}]'::jsonb, ARRAY['B']::text[], 'L''outil de comparaison est comme : « qu''elle s''était figuré comme un prêtre sale et mal vêtu ». (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q9', 'exam_primary_2021_french_dec', 9, 'Compréhension du texte', 'D''après la phrase suivante, quels sentiments Mme de Rênal éprouve-t-elle ? « Elle fut étonnée de se trouver ainsi à la porte de sa maison avec ce jeune homme presque en chemise et si près de lui. »', false, '[{"id": "A", "text": "la surprise et la satisfaction"}, {"id": "B", "text": "la surprise et la haine"}, {"id": "C", "text": "la surprise et le remords"}, {"id": "D", "text": "la surprise et l''émerveillement"}]'::jsonb, ARRAY['A']::text[], 'Elle « revint de sa surprise » et le texte insiste sur sa joie (« À sa grande joie », « si heureuse »). L''émerveillement (d) décrit plutôt son sentiment devant la beauté de Julien, plus haut dans le texte. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, 'إجابة مرجّحة حسب wadifa-info (réponse probable)؛ المفتاح الرسمي للأسئلة 1–18 غير متوفر في الملف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q10', 'exam_primary_2021_french_dec', 10, 'Langue', 'Quelle est la nature grammaticale du mot souligné dans la phrase suivante ? « Bientôt, elle se mit à rire, avec toute la gaieté folle d''une jeune fille. » (Bientôt souligné)', false, '[{"id": "A", "text": "substantif"}, {"id": "B", "text": "pronom"}, {"id": "C", "text": "adjectif"}, {"id": "D", "text": "adverbe"}]'::jsonb, ARRAY['D']::text[], 'Bientôt est un adverbe de temps, invariable. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q11', 'exam_primary_2021_french_dec', 11, 'Langue', 'De quelle proposition subordonnée s''agit-il dans la phrase suivante ? « Mme de Rênal sortait par la porte-fenêtre du salon qui donnait sur le jardin. »', false, '[{"id": "A", "text": "proposition subordonnée complétive"}, {"id": "B", "text": "proposition subordonnée relative"}, {"id": "C", "text": "proposition subordonnée circonstancielle"}]'::jsonb, ARRAY['B']::text[], 'Elle est introduite par qui et complète l''antécédent salon. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q12', 'exam_primary_2021_french_dec', 12, 'Langue', 'Quelle est la fonction grammaticale de la proposition subordonnée dans la phrase suivante ? « Mme de Rênal s''approcha, distraite un instant de l''amer chagrin que lui donnait l''arrivée du précepteur. »', false, '[{"id": "A", "text": "complément d''objet direct"}, {"id": "B", "text": "complément du nom « instant »"}, {"id": "C", "text": "complément d''objet indirect"}, {"id": "D", "text": "complément du nom « chagrin »"}]'::jsonb, ARRAY['D']::text[], 'La relative « que lui donnait l''arrivée du précepteur » a pour antécédent chagrin. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q13', 'exam_primary_2021_french_dec', 13, 'Langue', 'Qu''exprime la proposition subordonnée dans la phrase suivante ? « Ce mot de monsieur étonna si fort Julien qu''il réfléchit un instant. »', false, '[{"id": "A", "text": "la cause"}, {"id": "B", "text": "le but"}, {"id": "C", "text": "la conséquence"}, {"id": "D", "text": "l''opposition"}]'::jsonb, ARRAY['C']::text[], 'La construction est si + adverbe… que : « étonna si fort Julien qu''il réfléchit ». (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q14', 'exam_primary_2021_french_dec', 14, 'Langue', 'Quelle est la transformation négative qui correspond à la phrase suivante ? « Elle avait toujours pitié de cette pauvre créature. »', false, '[{"id": "A", "text": "Elle n''avait jamais pitié de cette pauvre créature."}, {"id": "B", "text": "Elle n''avait guère pitié de cette pauvre créature."}, {"id": "C", "text": "Elle n''avait plus pitié de cette pauvre créature."}, {"id": "D", "text": "Elle n''avait pas pitié de cette pauvre créature."}]'::jsonb, ARRAY['A']::text[], 'La négation de toujours est ne… jamais. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q15', 'exam_primary_2021_french_dec', 15, 'Langue', 'De quel type de discours s''agit-il dans la phrase suivante ? « Quoi, c''était là ce précepteur qu''elle s''était figuré comme un prêtre sale et mal vêtu, qui viendrait gronder et fouetter ses enfants ! »', false, '[{"id": "A", "text": "le discours direct"}, {"id": "B", "text": "le discours indirect libre"}, {"id": "C", "text": "le discours indirect"}]'::jsonb, ARRAY['B']::text[], 'Ce sont les pensées de Mme de Rênal, sans verbe introducteur ni guillemets, à l''imparfait et à la 3e personne, avec l''exclamation « Quoi ». (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q16', 'exam_primary_2021_french_dec', 16, 'Langue', 'Quelle est la transformation correcte au discours indirect de la phrase suivante ? Mme de Rênal demanda à Julien : « Que voulez-vous ? »', false, '[{"id": "A", "text": "Mme de Rênal demanda à Julien qu''est-ce qu''il voulait."}, {"id": "B", "text": "Mme de Rênal demanda à Julien ce qu''il voulait."}, {"id": "C", "text": "Mme de Rênal demanda à Julien ce qu''il veut."}, {"id": "D", "text": "Mme de Rênal demanda à Julien ce que vous voulez."}]'::jsonb, ARRAY['B']::text[], '« … ce qu''il voulait ». Que interrogatif devient ce que, vous devient il, et le présent devient imparfait. La forme a (qu''est-ce que) est incorrecte au discours indirect. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q17', 'exam_primary_2021_french_dec', 17, 'Langue', 'Laquelle des phrases suivantes est à la voix passive ?', false, '[{"id": "A", "text": "Enfin elle revint de sa surprise."}, {"id": "B", "text": "Elle était complètement enchantée par cette rencontre."}, {"id": "C", "text": "Mme de Rênal sortait par la porte-fenêtre."}, {"id": "D", "text": "Elle eut pitié de cette pauvre créature."}]'::jsonb, ARRAY['B']::text[], '« Elle était enchantée par cette rencontre » : auxiliaire être + participe passé + complément d''agent. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q18', 'exam_primary_2021_french_dec', 18, 'Langue', 'Dans quelle proposition les mots soulignés dans la phrase suivante sont-ils pronominalisés correctement ? « Il venait demander de l''aide à M. le maire. » (de l''aide et à M. le maire soulignés)', false, '[{"id": "A", "text": "Il venait la lui demander."}, {"id": "B", "text": "Il venait en lui demander."}, {"id": "C", "text": "Il venait lui la demander."}, {"id": "D", "text": "Il venait lui en demander."}]'::jsonb, ARRAY['D']::text[], '« Il venait lui en demander. » De l''aide (partitif) devient en, à M. le maire devient lui, dans l''ordre lui + en. (wadifa-info)', 'qcm', 'third_party', 'https://www.wadifa-info.com/fr/modele-concours/984/modele-concours-enseignement-cadres-aref-epreuve-de-specialite-langue-francaise-primaire-2', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q19', 'exam_primary_2021_french_dec', 19, 'Langue', 'Avec quel pronom relatif peut-on compléter la phrase suivante ? « Mme de Rênal aperçut près de la porte d''entrée un jeune paysan ............ la figure était pâle. »', false, '[{"id": "A", "text": "que"}, {"id": "B", "text": "dont"}, {"id": "C", "text": "où"}, {"id": "D", "text": "qui"}]'::jsonb, ARRAY['B']::text[], '« un jeune paysan dont la figure était pâle » : la figure de ce paysan. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q20', 'exam_primary_2021_french_dec', 20, 'Langue', 'Laquelle des phrases suivantes contient un complément d''objet direct ?', false, '[{"id": "A", "text": "La porte-fenêtre du salon donnait sur le jardin."}, {"id": "B", "text": "Mme de Rênal resta interdite."}, {"id": "C", "text": "Julien oublia une partie de sa timidité."}, {"id": "D", "text": "Enfin, elle revint de sa surprise."}]'::jsonb, ARRAY['C']::text[], '« Julien oublia une partie de sa timidité » : COD de oublia. En a, le complément est indirect (donnait sur). En b, interdite est attribut. En d, le complément est indirect (revint de). (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q21', 'exam_primary_2021_french_dec', 21, 'Langue', 'À quel temps et à quel mode le verbe souligné dans la phrase suivante est-il conjugué ? « Mme de Rênal regardait les grosses larmes, qui s''étaient arrêtées sur les joues si pâles d''abord et maintenant si roses de ce jeune paysan. » (s''étaient arrêtées souligné)', false, '[{"id": "A", "text": "au passé composé de l''indicatif"}, {"id": "B", "text": "au futur antérieur de l''indicatif"}, {"id": "C", "text": "au plus-que-parfait de l''indicatif"}, {"id": "D", "text": "au conditionnel passé"}]'::jsonb, ARRAY['C']::text[], 'C''est l''imparfait de l''auxiliaire être + le participe passé : s''étaient arrêtées. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q22', 'exam_primary_2021_french_dec', 22, 'Langue', 'Quel est l''infinitif du verbe souligné dans la phrase suivante ? « Et, brusquement, ce fut Julien qui se leva. » (fut souligné)', false, '[{"id": "A", "text": "falloir"}, {"id": "B", "text": "avoir"}, {"id": "C", "text": "être"}, {"id": "D", "text": "faire"}]'::jsonb, ARRAY['C']::text[], 'Fut est le passé simple de être. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q23', 'exam_primary_2021_french_dec', 23, 'Langue', 'Quelle est la forme conjuguée du verbe « venir » qui convient pour compléter la phrase suivante ? « Si Julien était riche, il ne (venir) .................... pas chercher un emploi chez M. le maire. »', false, '[{"id": "A", "text": "vient"}, {"id": "B", "text": "viendra"}, {"id": "C", "text": "vint"}, {"id": "D", "text": "viendrait"}]'::jsonb, ARRAY['D']::text[], 'Avec si + imparfait, la principale se met au conditionnel présent. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q24', 'exam_primary_2021_french_dec', 24, 'Langue', 'Quelle est la phrase qui contient un adjectif qualificatif orthographié incorrectement ?', false, '[{"id": "A", "text": "Elle avait une belle robe blanche."}, {"id": "B", "text": "Ces joueurs portent des maillots oranges."}, {"id": "C", "text": "Nous avons acheté des chemises bleu clair."}, {"id": "D", "text": "Cet enfant a les yeux marron."}]'::jsonb, ARRAY['B']::text[], 'Il faut écrire « des maillots orange » : un nom de fruit ou de chose employé comme adjectif de couleur reste invariable. Bleu clair (couleur composée) et marron sont eux aussi invariables, ce que les phrases c et d respectent. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q25', 'exam_primary_2021_french_dec', 25, 'Langue', 'Quel est le mot qui a un sens équivalent à l''infinitif du verbe souligné dans la phrase suivante ? « Il s''était dit qu''aucune dame comme il faut ne daignerait lui parler que quand il aurait un bel uniforme. » (daignerait souligné)', false, '[{"id": "A", "text": "accepter"}, {"id": "B", "text": "ordonner"}, {"id": "C", "text": "demander"}, {"id": "D", "text": "recommander"}]'::jsonb, ARRAY['A']::text[], 'Daigner signifie « accepter de, condescendre à ». (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q26', 'exam_primary_2021_french_dec', 26, 'Langue', 'Quel est l''antonyme du mot « pâle » ?', false, '[{"id": "A", "text": "insipide"}, {"id": "B", "text": "brillant"}, {"id": "C", "text": "éteint"}, {"id": "D", "text": "blême"}]'::jsonb, ARRAY['B']::text[], 'Pâle signifie « sans éclat ». Éteint et blême sont des synonymes, et insipide se dit d''un goût. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q27', 'exam_primary_2021_french_dec', 27, 'Langue', 'Quel est le synonyme du mot « pitié » ?', false, '[{"id": "A", "text": "compassion"}, {"id": "B", "text": "peur"}, {"id": "C", "text": "indifférence"}, {"id": "D", "text": "cruauté"}]'::jsonb, ARRAY['A']::text[], '« Pitié » a pour synonyme « compassion ». (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q28', 'exam_primary_2021_french_dec', 28, 'Langue', 'Quel est le mot qui convient pour compléter la phrase suivante ? « Julien salua Mme de Rênal d''une légère .................... de la tête. »', false, '[{"id": "A", "text": "inclinaison"}, {"id": "B", "text": "inclination"}, {"id": "C", "text": "déclinaison"}, {"id": "D", "text": "déclination"}]'::jsonb, ARRAY['B']::text[], 'Une inclination de tête est un salut. L''inclinaison désigne l''état de ce qui est penché (la pente d''un toit, par exemple). (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q29', 'exam_primary_2021_french_dec', 29, 'Langue', 'Parmi les homonymes grammaticaux ci-dessous, quel est celui qui convient pour compléter la phrase suivante ? « .................... vos soucis, vivez toujours avec sourire, enthousiasme et joie. »', false, '[{"id": "A", "text": "Quel que"}, {"id": "B", "text": "Quels que"}, {"id": "C", "text": "Quelles que"}, {"id": "D", "text": "Qu''elles que"}]'::jsonb, ARRAY['B']::text[], 'Quel que s''accorde avec le sujet du verbe être, ici soucis (masculin pluriel) : « Quels que [soient] vos soucis ». Le verbe soient manque dans l''énoncé, mais seule la forme masculin pluriel convient. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q30', 'exam_primary_2021_french_dec', 30, 'Langue', 'Parmi les noms composés suivants, quel est celui qui est écrit correctement au pluriel ?', false, '[{"id": "A", "text": "des gardes-feux"}, {"id": "B", "text": "des garde-chasses"}, {"id": "C", "text": "des gardes-fous"}, {"id": "D", "text": "des gardes-champêtres"}]'::jsonb, ARRAY['D']::text[], 'Dans garde champêtre, garde est un nom de personne et champêtre un adjectif : les deux prennent la marque du pluriel. Dans garde-feu et garde-fou, garde est un verbe et reste invariable (des garde-fous). Dans garde-chasse, garde est une personne et prend un s (des gardes-chasses). (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q31', 'exam_primary_2021_french_dec', 31, 'Langue', 'Laquelle des phrases suivantes contient un adjectif numéral orthographié incorrectement ?', false, '[{"id": "A", "text": "Dans notre école, il y a trois cent quatre-vingt élèves."}, {"id": "B", "text": "Mon grand-père a quatre-vingt-un ans."}, {"id": "C", "text": "Ce village compte approximativement mille six cents habitants."}, {"id": "D", "text": "Ce livre se compose de trois cents pages."}]'::jsonb, ARRAY['A']::text[], 'Il faut écrire « trois cent quatre-vingts élèves » : vingt prend un s quand il est multiplié et termine le nombre. Les autres phrases sont correctes : quatre-vingt-un, mille six cents, trois cents. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q32', 'exam_primary_2021_french_dec', 32, 'Langue', 'Dans quelle phrase les participes passés sont-ils orthographiés correctement ?', false, '[{"id": "A", "text": "Les deux personnages se sont regardés et se sont plus."}, {"id": "B", "text": "Les deux personnages se sont regardé et se sont plus."}, {"id": "C", "text": "Les deux personnages se sont regardés et se sont plu."}, {"id": "D", "text": "Les deux personnages se sont regardé et se sont plu."}]'::jsonb, ARRAY['C']::text[], '« se sont regardés » : se est COD placé avant, donc accord. « se sont plu » : plaire à se construit avec un COI, donc le participe reste invariable. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q33', 'exam_primary_2021_french_dec', 33, 'Langue', 'Quel est le nom dérivé du verbe « exister » ?', false, '[{"id": "A", "text": "excision"}, {"id": "B", "text": "excitation"}, {"id": "C", "text": "existence"}, {"id": "D", "text": "exécution"}]'::jsonb, ARRAY['C']::text[], 'Le nom dérivé de « exister » est « existence ». (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q34', 'exam_primary_2021_french_dec', 34, 'Langue', 'Par quel procédé le mot « sérieusement » est-il formé ?', false, '[{"id": "A", "text": "la préfixation"}, {"id": "B", "text": "la suffixation"}, {"id": "C", "text": "la composition"}, {"id": "D", "text": "la dérivation parasynthétique"}]'::jsonb, ARRAY['B']::text[], 'On ajoute le suffixe -ment à l''adjectif au féminin sérieuse. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q35', 'exam_primary_2021_french_dec', 35, 'Langue', 'Quelle est la transcription phonétique correcte du mot « champion » ?', false, '[{"id": "A", "text": "[ʃɔ̃pjɔ̃]"}, {"id": "B", "text": "[ʃɔ̃pjɑ̃]"}, {"id": "C", "text": "[ʃɑ̃pjɔ̃]"}, {"id": "D", "text": "[ʃɑ̃piɔ̃]"}]'::jsonb, ARRAY['C']::text[], 'cham- = [ʃɑ̃], -pion = [pjɔ̃]. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q36', 'exam_primary_2021_french_dec', 36, 'Langue', 'Quel est le découpage syllabique correct du mot « international » ?', false, '[{"id": "A", "text": "in / ter / na / tio / nal"}, {"id": "B", "text": "in / ter / na / tional"}, {"id": "C", "text": "in / ter / natio / nal"}, {"id": "D", "text": "inter / na / tio / nal"}]'::jsonb, ARRAY['A']::text[], 'Le découpage se fait en syllabes graphiques, chacune organisée autour d''une voyelle ou d''un groupe vocalique. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q37', 'exam_primary_2021_french_dec', 37, 'Langue', 'Quelle est la transcription phonétique qui correspond au mot souligné dans la phrase suivante ? « Elle avait trois enfants, un garçon et deux filles. » (filles souligné)', false, '[{"id": "A", "text": "[fil]"}, {"id": "B", "text": "[fis]"}, {"id": "C", "text": "[fij]"}, {"id": "D", "text": "[fi]"}]'::jsonb, ARRAY['C']::text[], 'Dans fille, -ille se prononce [ij]. (wadifa-info ; confirmé par le corrigé officiel)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q38', 'exam_primary_2021_french_dec', 38, 'Production', 'Voici un texte à trous. Complétez-le avec les mots suivants, donnés en désordre : au pied - timidement - pauvre - regards - se rétablit - épeler - mouvement - parvenu. « Cependant, sous la pluie des pensums, l''ordre peu à peu .................... dans la classe, et le professeur, .................... à saisir le nom de Charles Bovary, se l''étant fait dicter, .................... et relire, commanda tout de suite au .................... diable d''aller s''asseoir sur le banc de paresse, .................... de la chaire. Il se mit en...................., mais, avant de partir, hésita. - Que cherchez-vous ? demanda le professeur. - Ma casq…, fit .................... le nouveau, promenant autour de lui des .................... inquiets. »', false, '[]'::jsonb, ARRAY['se rétablit', 'parvenu', 'épeler', 'pauvre', 'au pied', 'mouvement', 'timidement', 'regards']::text[], 'Texte complété (début de Madame Bovary de Flaubert) : « Cependant, sous la pluie des pensums, l''ordre peu à peu se rétablit dans la classe, et le professeur, parvenu à saisir le nom de Charles Bovary, se l''étant fait dicter, épeler et relire, commanda tout de suite au pauvre diable d''aller s''asseoir sur le banc de paresse, au pied de la chaire. Il se mit en mouvement, mais, avant de partir, hésita. – Que cherchez-vous ? demanda le professeur. – Ma casq…, fit timidement le nouveau, promenant autour de lui des regards inquiets. » (corrigé officiel ; wadifa-info)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q39', 'exam_primary_2021_french_dec', 39, 'Production', 'Voici un conte, donné en désordre. Mettez-le en ordre en écrivant les numéros de (1 à 5) dans les cases qui conviennent. A) Un jour, lors de leur sortie habituelle, elles allèrent découvrir une nouvelle forêt. Elles étaient en train de s''amuser lorsque trois d''entre elles tombèrent dans un trou profond qu''aucune d''entre elles n''avait remarqué. Les autres grenouilles étaient choquées. Elles regardèrent au fond du trou et virent qu''il était trop profond. « Nous les avons perdues », dirent-elles. B) Deux des grenouilles entendirent ces commentaires et se mirent à abandonner. Elles pensaient que les autres avaient raison. La troisième grenouille, en revanche, continuait à monter et à tomber. C) Il était une fois plusieurs grenouilles qui allaient toujours s''amuser dans la forêt. Elles chantaient toutes et elles sautaient jusqu''à ce que tombe la nuit. Elles riaient beaucoup et étaient inséparables. D) Les trois grenouilles au fond du trou essayèrent de remonter en escaladant la paroi, mais c''était trop difficile. Elles avançaient à peine d''un mètre et tombaient à nouveau. Les autres commencèrent à dire que leurs efforts étaient inutiles. Comment pourraient-elles escalader une paroi aussi haute ? Il valait mieux qu''elles abandonnent. Il n''y avait rien d''autre à faire. E) Après quelques heures, elle réussit à remonter à la surface. Les autres étaient stupéfaites. L''une des deux lui demanda : « Comment as-tu réussi ? ». La grenouille ne répondit pas. Elle était sourde.', false, '[]'::jsonb, ARRAY['C=1', 'A=2', 'D=3', 'B=4', 'E=5']::text[], 'Ordre du conte : C = 1, A = 2, D = 3, B = 4, E = 5. On a la situation initiale (les grenouilles inséparables), la chute de trois d''entre elles dans le trou, leurs efforts et les commentaires décourageants, l''abandon de deux grenouilles, puis la réussite de la troisième, qui était sourde : c''est la chute du conte. (wadifa-info ; confirmé par le corrigé officiel)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة الفرنسية — مادة التخصص (دورة دجنبر 2021) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2021_french_dec_q40', 'exam_primary_2021_french_dec', 40, 'Production', 'Voici un passage descriptif. Complétez-le avec les adjectifs suivants, donnés en désordre : imperceptibles - longs - arrondies - frangées - modelées - mystérieux - colorée - endormie. « La tête semblait .................... plutôt que morte ; les paupières, encore .................... de leurs .................... cils, faisaient briller entre leurs lignes d''antimoine des yeux d''émail lustrés des humides lueurs de la vie ; on eût dit qu''elles allaient secouer comme un rêve léger leur sommeil de trente siècles. Le nez, mince et fin, conservait ses pures arêtes ; aucune dépression ne déformait les joues, .................... comme le flanc d''un vase ; la bouche, .................... d''une faible rougeur, avait gardé ses plis ...................., et sur les lèvres voluptueusement .................... voltigeait un mélancolique et .................... sourire plein de douceur, de tristesse et de charme. »', false, '[]'::jsonb, ARRAY['endormie', 'frangées', 'longs', 'arrondies', 'colorée', 'imperceptibles', 'modelées', 'mystérieux']::text[], 'Passage complété (Théophile Gautier, Le Roman de la momie) : « La tête semblait endormie plutôt que morte ; les paupières, encore frangées de leurs longs cils, faisaient briller entre leurs lignes d''antimoine des yeux d''émail lustrés des humides lueurs de la vie ; […] aucune dépression ne déformait les joues, arrondies comme le flanc d''un vase ; la bouche, colorée d''une faible rougeur, avait gardé ses plis imperceptibles, et sur les lèvres voluptueusement modelées voltigeait un mélancolique et mystérieux sourire plein de douceur, de tristesse et de charme. » Appuyez-vous sur les accords : frangées (féminin pluriel) va avec paupières, arrondies avec joues, colorée avec bouche, modelées avec lèvres, et longs avec cils. (wadifa-info ; confirmé par le corrigé officiel)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
