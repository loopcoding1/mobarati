-- ====================================================================
-- مباراتي — اللغة الفرنسية، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- النص: «L'immunité collective» — Bruno Del Medico, Coronavirus Tsunami, E-Book, 2020.
--   النص الكامل منقول حرفياً في ملف الحل.
-- التنقيط: COMPRÉHENSION 4,5pts (Q1–Q12)، LANGUE 7,5pts (Q13–Q31)، PRODUCTION 3pts (Q32–Q34).
-- ترميز المطابقة: Q32 — الخيارات هي الكلمات الست (A–F)، والأجوبة الصحيحة مرتبة حسب ترتيب
--   الفراغات؛ Q33 — الخيارات هي الفقرات a–f، والأجوبة الصحيحة مرتبة حسب المواضع 1–6؛
--   Q34 — الخيارات هي الجمل الثماني (1–8)، والأجوبة الصحيحة [6، 5] (6 = début، 5 = fin).
-- خيارات QCM بحروف a–d صغيرة كما في الورقة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_french_nov', 'specialty_primary', 2020, 'french', 'Langue française', 'Examen de langue française (session de novembre 2020)', 'دورة نونبر 2020', 240, 34)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (34 سؤالاً)

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q1', 'exam_primary_2020_french_nov', 1, 'Compréhension', 'Quel est le type de ce texte?', false, '[{"id": "a", "text": "narratif"}, {"id": "b", "text": "descriptif"}, {"id": "c", "text": "argumentatif"}, {"id": "d", "text": "prescriptif"}]'::jsonb, ARRAY['c']::text[], 'L''auteur défend une thèse (l''immunité collective n''est pas applicable au Covid-19) avec des arguments et des exemples. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q2', 'exam_primary_2020_french_nov', 2, 'Compréhension', 'À quel champ disciplinaire le texte renvoie-t-il?', false, '[{"id": "a", "text": "l''astronomie"}, {"id": "b", "text": "la géographie"}, {"id": "c", "text": "la médecine"}, {"id": "d", "text": "l''économie"}]'::jsonb, ARRAY['c']::text[], 'infection, virus, vaccination, immunité. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q3', 'exam_primary_2020_french_nov', 3, 'Compréhension', 'D''après le texte, quand l''immunité collective se produit-elle dans une communauté de personnes?', false, '[{"id": "a", "text": "quand tous les membres, dans cette communauté, sont infectés"}, {"id": "b", "text": "quand la majorité des membres, dans cette communauté, sont immunisés contre une infection"}, {"id": "c", "text": "quand la majorité des membres, dans cette communauté, ne sont pas immunisés contre une infection"}, {"id": "d", "text": "quand la minorité des membres, dans cette communauté, ne sont pas infectés"}]'::jsonb, ARRAY['b']::text[], 'Reprise littérale de la première phrase du texte. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q4', 'exam_primary_2020_french_nov', 4, 'Compréhension', 'Quel type de raisonnement l''auteur adopte-t-il dans les trois premiers paragraphes du texte?', false, '[{"id": "a", "text": "le raisonnement analogique"}, {"id": "b", "text": "le raisonnement critique"}, {"id": "c", "text": "le raisonnement dialectique"}, {"id": "d", "text": "le raisonnement concessif"}]'::jsonb, ARRAY['a']::text[], 'L''auteur compare l''infection à un feu qui se propage dans une forêt. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q5', 'exam_primary_2020_french_nov', 5, 'Compréhension', 'Que signifie le mot « écran » dans le deuxième paragraphe du texte?', false, '[{"id": "a", "text": "afficheur"}, {"id": "b", "text": "téléviseur"}, {"id": "c", "text": "projecteur"}, {"id": "d", "text": "barrière"}]'::jsonb, ARRAY['d']::text[], 'Les arbres non inflammables « fonctionneront comme un écran », c''est-à-dire une barrière contre le feu. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q6', 'exam_primary_2020_french_nov', 6, 'Compréhension', 'Qu''exprime l''auteur à la fin du sixième paragraphe du texte?', false, '[{"id": "a", "text": "une objection"}, {"id": "b", "text": "une condition"}, {"id": "c", "text": "une approbation"}, {"id": "d", "text": "une supposition"}]'::jsonb, ARRAY['a']::text[], '« Cependant, le concept d''immunité collective n''est actuellement qu''une spéculation théorique » : l''auteur objecte à l''application du concept. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q7', 'exam_primary_2020_french_nov', 7, 'Compréhension', 'Quel est le mot qui a un sens équivalent à celui du mot souligné dans la phrase suivante? « C''est un principe plausible mais il n''a jamais été démontré directement. »', false, '[{"id": "a", "text": "inacceptable"}, {"id": "b", "text": "semblable"}, {"id": "c", "text": "admissible"}, {"id": "d", "text": "invraisemblable"}]'::jsonb, ARRAY['c']::text[], 'plausible = admissible, acceptable. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q8', 'exam_primary_2020_french_nov', 8, 'Compréhension', 'D''après le texte, dans quel but la campagne de vaccination des renards a-t-elle été effectuée en Allemagne?', false, '[{"id": "a", "text": "pour faire diminuer la rage"}, {"id": "b", "text": "pour faire atténuer la rage"}, {"id": "c", "text": "pour déraciner la rage"}, {"id": "d", "text": "pour provoquer la rage"}]'::jsonb, ARRAY['c']::text[], '« pour l''éradication de la rage ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q9', 'exam_primary_2020_french_nov', 9, 'Compréhension', 'Que veut dire « immunité collective »?', false, '[{"id": "a", "text": "immunité cellulaire"}, {"id": "b", "text": "immunité grégaire"}, {"id": "c", "text": "immunité humorale"}, {"id": "d", "text": "immunité naturelle"}]'::jsonb, ARRAY['b']::text[], '« effet troupeau » (grégaire = du troupeau). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q10', 'exam_primary_2020_french_nov', 10, 'Compréhension', 'Dans quel but l''auteur recourt-il à la comparaison dans certains passages du texte?', false, '[{"id": "a", "text": "pour expliquer"}, {"id": "b", "text": "pour raconter"}, {"id": "c", "text": "pour prescrire"}, {"id": "d", "text": "pour décrire"}]'::jsonb, ARRAY['a']::text[], 'La comparaison feu/forêt sert à expliquer le mécanisme de l''immunité collective. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q11', 'exam_primary_2020_french_nov', 11, 'Compréhension', 'Que signifie le mot souligné dans la phrase suivante? « Autrement dit, nous ne savons pas si une personne infectée puis guérie est immunisée contre une récidive d''infection. »', false, '[{"id": "a", "text": "suppression"}, {"id": "b", "text": "réapparition"}, {"id": "c", "text": "disparition"}, {"id": "d", "text": "régression"}]'::jsonb, ARRAY['b']::text[], 'Une récidive est une réapparition de la maladie. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q12', 'exam_primary_2020_french_nov', 12, 'Compréhension', 'Quel est le titre qui correspond le mieux au texte?', false, '[{"id": "a", "text": "La convalescence"}, {"id": "b", "text": "La prévention"}, {"id": "c", "text": "La vaccination"}, {"id": "d", "text": "L''immunité collective"}]'::jsonb, ARRAY['d']::text[], 'C''est le thème central du texte. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q13', 'exam_primary_2020_french_nov', 13, 'Langue', 'Laquelle des phrases suivantes constitue une interrogation partielle?', false, '[{"id": "a", "text": "Vous êtes-vous rendus à l''hôpital?"}, {"id": "b", "text": "Est-ce que vous pouvez m''expliquer comment se propagent les virus?"}, {"id": "c", "text": "Vous avez consulté un virologue?"}, {"id": "d", "text": "Quand la campagne de vaccination aura-t-elle lieu?"}]'::jsonb, ARRAY['d']::text[], 'Interrogation partielle (mot interrogatif « quand ») ; a, b et c sont des interrogations totales. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q14', 'exam_primary_2020_french_nov', 14, 'Langue', 'Laquelle des phrases suivantes est construite incorrectement?', false, '[{"id": "a", "text": "Le vaccin qui a été découvert est encore en phase d''expérimentation."}, {"id": "b", "text": "J''ai rencontré le virologue qui a découvert ce virus."}, {"id": "c", "text": "J''ai trouvé le médicament que j''avais besoin."}, {"id": "d", "text": "As-tu bien respecté le régime que le diététicien t''a prescrit?"}]'::jsonb, ARRAY['c']::text[], '« que j''avais besoin » est incorrect : il faut « dont j''avais besoin » (avoir besoin de). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q15', 'exam_primary_2020_french_nov', 15, 'Langue', 'Laquelle des phrases suivantes est à la voix passive?', false, '[{"id": "a", "text": "Il est aimé de tous ses camarades."}, {"id": "b", "text": "On l''a vacciné contre la tuberculose."}, {"id": "c", "text": "Elles sont allées à l''hôpital."}, {"id": "d", "text": "Cette étudiante est douée en biologie."}]'::jsonb, ARRAY['a']::text[], '« Il est aimé » (être + participe passé, agent « de tous ses camarades »). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q16', 'exam_primary_2020_french_nov', 16, 'Langue', 'Quelle est la fonction grammaticale de la subordonnée dans la phrase suivante? « Le pourcentage de 55% a révélé qu''il était largement insuffisant. »', false, '[{"id": "a", "text": "complément circonstanciel de manière"}, {"id": "b", "text": "complément d''objet indirect"}, {"id": "c", "text": "complément d''objet direct"}, {"id": "d", "text": "complément circonstanciel de conséquence"}]'::jsonb, ARRAY['c']::text[], 'La subordonnée complétive est COD du verbe « révéler ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q17', 'exam_primary_2020_french_nov', 17, 'Langue', 'Dans quelle proposition les mots soulignés dans la phrase suivante sont-ils pronominalisés correctement? « Le médecin n''a pas prescrit de médicaments à ce patient. »', false, '[{"id": "a", "text": "Le médecin n''en lui a pas prescrit."}, {"id": "b", "text": "Le médecin ne lui en a pas prescrit."}, {"id": "c", "text": "Le médecin ne les lui a pas prescrits."}, {"id": "d", "text": "Le médecin ne lui les a pas prescrits."}]'::jsonb, ARRAY['b']::text[], '« de médicaments » → « en », « à ce patient » → « lui » ; l''ordre est : ne + lui + en + verbe. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q18', 'exam_primary_2020_french_nov', 18, 'Langue', 'Quelle est la transformation correcte au discours indirect de la phrase suivante? Il lui demanda: « iras-tu consulter ton médecin, demain? »', false, '[{"id": "a", "text": "Il lui demanda qu''il irait consulter son médecin ce jour-là."}, {"id": "b", "text": "Il lui demanda est-ce qu''il ira consulter son médecin le lendemain."}, {"id": "c", "text": "Il lui demanda s''il irait consulter son médecin le lendemain."}, {"id": "d", "text": "Il lui demanda s''il ira consulter son médecin demain."}]'::jsonb, ARRAY['c']::text[], 'Interrogation totale → « si » ; futur → conditionnel (« irait ») ; « demain » → « le lendemain ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q19', 'exam_primary_2020_french_nov', 19, 'Langue', 'De quelle figure de style s''agit-il dans cette phrase? « Ce malade, alité, meurt d''ennui. »', false, '[{"id": "a", "text": "la métaphore"}, {"id": "b", "text": "l''hyperbole"}, {"id": "c", "text": "l''oxymore"}, {"id": "d", "text": "la métonymie"}]'::jsonb, ARRAY['b']::text[], 'Exagération (« mourir d''ennui »). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q20', 'exam_primary_2020_french_nov', 20, 'Langue', 'Dans quelle phrase le verbe de la subordonnée complétive est-il conjugué inconvenablement?', false, '[{"id": "a", "text": "J''espère que ce vaccin convienne à cette maladie."}, {"id": "b", "text": "Je souhaite que mon voisin se rétablisse promptement."}, {"id": "c", "text": "Je crois qu''on va bientôt trouver un vaccin contre le coronavirus."}, {"id": "d", "text": "Le médecin exige que ce patient fasse des analyses."}]'::jsonb, ARRAY['a']::text[], '« espérer » se construit avec l''indicatif (« convient »), non le subjonctif. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q21', 'exam_primary_2020_french_nov', 21, 'Langue', 'Dans quelle phrase le verbe de la proposition principale est-il conjugué incorrectement?', false, '[{"id": "a", "text": "Vous disez que le coronavirus se propage vite."}, {"id": "b", "text": "Vous devez faire attention quand vous fréquentez les espaces publics."}, {"id": "c", "text": "Vous savez que cette maladie est contagieuse."}, {"id": "d", "text": "Vous pouvez me téléphoner si besoin est."}]'::jsonb, ARRAY['a']::text[], '« disez » est incorrect : « vous dites ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q22', 'exam_primary_2020_french_nov', 22, 'Langue', 'Laquelle des phrases suivantes contient une erreur de conjugaison?', false, '[{"id": "a", "text": "C''est toi qui as commis cette erreur."}, {"id": "b", "text": "C''est moi qui est allé à l''hôpital."}, {"id": "c", "text": "C''est elle qui t''a envoyé ce colis."}, {"id": "d", "text": "Ce sont eux qui ont été vaccinés."}]'::jsonb, ARRAY['b']::text[], '« C''est moi qui suis allé » (accord avec « moi »). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q23', 'exam_primary_2020_french_nov', 23, 'Langue', 'À quel temps et à quel mode le verbe souligné dans la phrase suivante est-il conjugué? « Quand vous saluez quelqu''un, il est bienséant que vous lui souriiez. »', false, '[{"id": "a", "text": "au futur simple de l''indicatif"}, {"id": "b", "text": "au subjonctif présent"}, {"id": "c", "text": "à l''imparfait de l''indicatif"}, {"id": "d", "text": "au conditionnel présent"}]'::jsonb, ARRAY['b']::text[], '« souriiez » après « il est bienséant que ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q24', 'exam_primary_2020_french_nov', 24, 'Langue', 'Dans quelle phrase la proposition principale contient-elle une erreur de conjugaison?', false, '[{"id": "a", "text": "Si tu as de la fièvre, n''hésite pas à consulter un médecin."}, {"id": "b", "text": "Si tu avais pris tes médicaments, tu aurais évité cette crise."}, {"id": "c", "text": "Si tu portais un masque, tu seras à l''abri de la contamination."}, {"id": "d", "text": "Si tu respectes ton régime alimentaire, tu resteras en bonne santé."}]'::jsonb, ARRAY['c']::text[], 'si + imparfait → conditionnel (« serais »), non le futur (« seras »). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q25', 'exam_primary_2020_french_nov', 25, 'Langue', 'Dans quelle liste les noms composés sont-ils invariables?', false, '[{"id": "a", "text": "faire-valoir, laisser-aller, va-et-vient, cache-cache, savoir-vivre"}, {"id": "b", "text": "sapeur-pompier, chien-loup, loup-garou, moissonneuse-batteuse, ciné-club"}, {"id": "c", "text": "belle-sœur, chassé-croisé, coffre-fort, court-circuit, grand-père"}, {"id": "d", "text": "garde-malade, aide-comptable, aide-soignant, garde-frontière, aide-cuisinier"}]'::jsonb, ARRAY['a']::text[], 'Noms composés verbe + verbe/infinitif, invariables. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q26', 'exam_primary_2020_french_nov', 26, 'Langue', 'Laquelle des phrases suivantes contient un mot orthographié incorrectement?', false, '[{"id": "a", "text": "Ce malade me paraît un peu négligeant car il ne respecte pas son régime alimentaire."}, {"id": "b", "text": "Ce patient, négligeant sa santé, ne suit pas les conseils de son médecin."}, {"id": "c", "text": "Le comédien a l''art de paraître différent de ce qu''il est."}, {"id": "d", "text": "Ne différant que sur un seul point, les chercheurs peuvent cependant trouver un compromis."}]'::jsonb, ARRAY['a']::text[], 'L''adjectif est « négligent » ; « négligeant » est le participe présent (correct en b). (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q27', 'exam_primary_2020_french_nov', 27, 'Langue', 'Dans quelle phrase le participe passé est-il orthographié incorrectement?', false, '[{"id": "a", "text": "Ils se sont blessés en jouant au rugby."}, {"id": "b", "text": "Ils se sont permis de prendre ce médicament sans l''avis du médecin."}, {"id": "c", "text": "Vous vous êtes arrogé le droit de me prescrire ce médicament."}, {"id": "d", "text": "Nous nous sommes désinfectés les mains."}]'::jsonb, ARRAY['d']::text[], '« Nous nous sommes désinfecté les mains » : le COD « les mains » est placé après le verbe, donc pas d''accord. (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q28', 'exam_primary_2020_french_nov', 28, 'Langue', 'Laquelle des phrases suivantes contient une erreur d''orthographe?', false, '[{"id": "a", "text": "Les parents sont tout pour l''enfant."}, {"id": "b", "text": "Ces personnes sont toutes attentives."}, {"id": "c", "text": "En toute évidence, le coronavirus est très dangereux."}, {"id": "d", "text": "Ces infirmières, toutes jeunes, travaillent avec beaucoup d''enthousiasme."}]'::jsonb, ARRAY['b']::text[], 'L''adverbe « tout » est invariable devant un adjectif féminin commençant par une voyelle : « tout attentives ». (En d, « toutes jeunes » est correct car « jeunes » commence par une consonne.) (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q29', 'exam_primary_2020_french_nov', 29, 'Langue', 'Dans quelle liste les mots sont-ils tous des homonymes?', false, '[{"id": "a", "text": "sang, son, sans, sont"}, {"id": "b", "text": "saut, sceau, seau, sot"}, {"id": "c", "text": "ton, temps, tant, taon"}, {"id": "d", "text": "plein, plan, plomb, plant"}]'::jsonb, ARRAY['b']::text[], 'Tous se prononcent [so]. (En a, « son » = [sɔ̃] rompt la série [sɑ̃] ; en c, « ton » = [tɔ̃].) (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q30', 'exam_primary_2020_french_nov', 30, 'Langue', 'Dans quelle liste les mots sont-ils tous d''une même famille?', false, '[{"id": "a", "text": "vendre, attendre, tendre, rendre, gendre"}, {"id": "b", "text": "chanter, chant, monter, hanter, enchanter"}, {"id": "c", "text": "apprendre, dépendre, peinture, joindre, dépeindre"}, {"id": "d", "text": "jour, ajourner, journée, journalier, journellement"}]'::jsonb, ARRAY['d']::text[], 'Tous dérivent de « jour ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q31', 'exam_primary_2020_french_nov', 31, 'Langue', 'Dans quelle liste les mots entretiennent-ils, entre eux, un rapport de synonymie?', false, '[{"id": "a", "text": "effectuer, réaliser, accomplir, exécuter"}, {"id": "b", "text": "mugir, rougir, surgir, agir"}, {"id": "c", "text": "parler, joindre, s''asseoir, boire"}, {"id": "d", "text": "survenir, se souvenir, survivre, convenir"}]'::jsonb, ARRAY['a']::text[], 'Synonymes de « faire ». (المفتاح الرسمي.)', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q32', 'exam_primary_2020_french_nov', 32, 'Production', 'Voici un texte à trous. Complétez-le avec les mots suivants, donnés en désordre: Certaines - Toutefois - causes - intrinsèquement - nocif - paraissent. « Les ................ des maladies, autrement dit leur étiologie, se classent en deux grands groupes: celles qui proviennent du dehors et celles qui trouvent leur origine dans le corps du malade................. maladies sont tellement semblables chez tous les individus qu''elles évoquent « quelque chose » d''extérieur qui s''abat sur les gens. D''autres................ en rapport avec « quelque chose » situé à l''intérieur du malade, soit qu''un accident de la vie extérieure, commun à toute l''humanité ne rende malade qu''un petit nombre de personnes, soit que la preuve de son effet................ ne puisse être faite................., l''opposition de l''individu et de son milieu est une pure abstraction: un individu fait................ partie d''un milieu défini. »', false, '[{"id": "A", "text": "Certaines"}, {"id": "B", "text": "Toutefois"}, {"id": "C", "text": "causes"}, {"id": "D", "text": "intrinsèquement"}, {"id": "E", "text": "nocif"}, {"id": "F", "text": "paraissent"}]'::jsonb, ARRAY['C','A','F','E','B','D']::text[], 'Texte complété (المفتاح الرسمي): «Les causes des maladies, autrement dit leur étiologie, se classent en deux grands groupes: celles qui proviennent du dehors et celles qui trouvent leur origine dans le corps du malade. Certaines maladies sont tellement semblables chez tous les individus qu''elles évoquent «quelque chose» d''extérieur qui s''abat sur les gens. D''autres paraissent en rapport avec «quelque chose» situé à l''intérieur du malade, soit qu''un accident de la vie extérieure, commun à toute l''humanité ne rende malade qu''un petit nombre de personnes, soit que la preuve de son effet nocif ne puisse être faite. Toutefois, l''opposition de l''individu et de son milieu est une pure abstraction: un individu fait intrinsèquement partie d''un milieu défini.»', 'matching', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q33', 'exam_primary_2020_french_nov', 33, 'Production', 'Voici le début d''un conte, donné en désordre. Remettez-le en ordre en écrivant les numéros de (1 à 6) dans les cases qui conviennent.', false, '[{"id": "a", "text": "En un clin d''œil, ils se trouvèrent transformés en cinq corbeaux malheureux, et la marâtre, qui avait assisté à leur métamorphose, ouvrit la fenêtre de la salle et leur dit: « Bon débarras! Envolez-vous dans le vaste monde … »."}, {"id": "b", "text": "Il était une fois, dans un pays très lointain, un grand fermier qui, étant veuf, s''était remarié avec une méchante femme."}, {"id": "c", "text": "Les enfants, fiers et courageux, revenaient de la chasse ce soir-là. Ils étaient donc fort assoiffés et ils burent le contenu de leurs gobelets sans se laisser arrêter par son goût étrange."}, {"id": "d", "text": "Comme la nouvelle épouse s''adonnait à la magie et qu''elle avait de grands amis dans le monde des sorciers, elle donna à boire, un soir, un liquide magique aux enfants en le mélangeant au petit-lait qui était dans leurs gobelets."}, {"id": "e", "text": "Ce fermier avait cinq fils, tous de son premier mariage, et la nouvelle femme s''était juré de se débarrasser de ses beaux-enfants."}, {"id": "f", "text": "Les corbeaux s''envolèrent alors avec un cri mélancolique et disparurent au-dessus du parc et de la forêt."}]'::jsonb, ARRAY['b','e','d','c','a','f']::text[], 'Ordre correct: b (1) · e (2) · d (3) · c (4) · a (5) · f (6). (المفتاح الرسمي.)', 'matching', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: Examen de langue française (session de novembre 2020) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_french_nov_q34', 'exam_primary_2020_french_nov', 34, 'Production', 'Voici une histoire donnée en désordre. Écrivez « D » dans la case qui correspond à son début et « F » dans celle qui correspond à sa fin.', false, '[{"id": "1", "text": "« Bonjour! répondit la poule. Que me vaut ta visite de ce matin? », demanda-t-elle."}, {"id": "2", "text": "« Ah! Non!... Il n''y a pas de pardon qui vaille. Je vais prendre tes enfants en gage jusqu''à ce que tu me rendes mon aiguille. », répliqua l''aigle."}, {"id": "3", "text": "Si j''ai mis si longtemps à te la rapporter, c''est que je l''ai perdue entre temps. Mon ami, je te demande pardon..."}, {"id": "4", "text": "L''aigle répondit: « Tu te souviens..., il y a de cela un peu longtemps, tu étais venue me demander une aiguille afin de raccommoder les vêtements de tes enfants. J''en ai besoin, moi aussi, aujourd''hui. C''est ce qui me vaut ce déplacement. »."}, {"id": "5", "text": "C''est depuis cette époque que les aigles continuent d''enlever les poussins et c''est aussi depuis ces temps immémoriaux que les poules grattent le sol à la recherche de l''aiguille de l''aigle."}, {"id": "6", "text": "Il y a bien longtemps, la poule et l''aigle étaient de très bons amis."}, {"id": "7", "text": "Comme le temps passait et que la poule ne ramenait pas l''aiguille, l''aigle décida d''aller chez son amie la poule réclamer son bien. « Bonjour chère amie! », dit-il."}, {"id": "8", "text": "Un jour, la poule emprunta une aiguille à son ami l''aigle pour coudre les vêtements déchirés de ses enfants."}]'::jsonb, ARRAY['6','5']::text[], '6 = début (D) : « Il y a bien longtemps, la poule et l''aigle étaient de très bons amis. » ; 5 = fin (F) : « C''est depuis cette époque que les aigles continuent d''enlever les poussins... ». (المفتاح الرسمي.)', 'matching', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
