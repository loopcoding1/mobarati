-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022)
-- ====================================================================
-- المصدر: ملف الحل 2022/ديداكتيك التربية البدنية - دورة نونبر 2022.md
--   جذوع Q1–Q42 وQ47–Q54 وQ59–Q60 منقولة حرفياً من صور الورقة المطبوعة
--   (منشور فيسبوك Mouhamed Sabbek، 13 صورة):
--   https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l
--   لا يوجد مفتاح رسمي ولا ورقة PDF؛ الأجوبة محلولة بالبحث سؤالاً بسؤال
--   (30 مؤكدة + 19 مرجّحة «للتحقق»؛ Q21–Q23 من ريلز @prof_marouan_eps).
--   Q43–Q46 وQ55–Q58 صفحاتها مفقودة من المنشور (غير محمّلة).
--   Q48 مكرر حرفياً من Q32 (نفس الجواب). المدة غير مؤكدة
--   (120 دقيقة مرجعاً من دورة أكتوبر 2024).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2022_didactics_college', 'eps_college', 2022, 'eps_didactics', 'ديداكتيك مادة التخصص', 'امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022)', 'دورة نونبر 2022', 120, 52, 'المدة غير مؤكدة (120 دقيقة مرجعاً من دورة أكتوبر 2024)؛ Q43–Q46 وQ55–Q58 صفحاتها مفقودة من منشور فيسبوك (غير محمّلة)؛ Q48 مكرر حرفياً من Q32؛ 19 جواباً مرجّحاً «للتحقق»؛ الأجوبة محلولة بالبحث سؤالاً بسؤال — لا مفتاح رسمي؛ Q21–Q23 من ريلز @prof_marouan_eps')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (52 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q1', 'exam_eps_2022_didactics_college', 1, 'ديداكتيك مادة التخصص', 'En EPS, on entend par activité de l''élève :', false, '[{"id": "A", "text": "Tout ce qui est attendu de l''élève dans un contexte plus large et qui inclut les déterminations sociales et personnelles."}, {"id": "B", "text": "Tout ce qui est à faire tout en véhiculant l''idée de prescription et d''obligation."}, {"id": "C", "text": "Tout ce que fait le sujet et met en œuvre dans l''accomplissement d''une tâche dans un contexte précis."}, {"id": "D", "text": "Tout ce qui permet à l''action de l''élève d''être tributaire aux éléments indispensables pour la réalisation de la tâche."}]'::jsonb, ARRAY['C']::text[], 'Leplat & Hoc: activité = ce que le sujet met en jeu pour accomplir une tâche (B décrit la tâche).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q2', 'exam_eps_2022_didactics_college', 2, 'ديداكتيك مادة التخصص', 'La difficulté de la tâche en activité physique et sportive renvoie :', false, '[{"id": "A", "text": "Au niveau des exigences sollicitant des ressources bio informationnelles."}, {"id": "B", "text": "A la quantité d''informations à traiter pour le déclenchement du mouvement."}, {"id": "C", "text": "Au niveau des exigences sollicitant des ressources bio énergétiques."}, {"id": "D", "text": "Au type de ressources que le sujet doit mobiliser pour réussir la tâche."}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Famose: difficulté = degré d''exigence sur les ressources à mobiliser (A/C cas partiels, B = complexité).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q3', 'exam_eps_2022_didactics_college', 3, 'ديداكتيك مادة التخصص', 'Dans l''enseignement apprentissage en EPS, la notion de représentation concerne :', false, '[{"id": "A", "text": "Le programme génétiquement inscrit dans le plan de construction du système nerveux et contenant tous les détails de l''organisation spatio-temporelle d''une séquence motrice."}, {"id": "B", "text": "Le modèle interne de la réalité que les sujets possèdent et utilisent pour organiser leur action lors d''une séquence motrice."}, {"id": "C", "text": "Les conditions et les comportements qui permettent au sujet d''entreprendre un nouvel apprentissage en fonction d''un plan d''action prédéterminé."}, {"id": "D", "text": "L''organisation temporelle de la réponse traduisant la capacité à faire appel et à coordonner les actions élémentaires pour exécuter une tâche donnée."}]'::jsonb, ARRAY['B']::text[], 'Représentation = modèle interne de la réalité (Paris Nanterre STAPS).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q4', 'exam_eps_2022_didactics_college', 4, 'ديداكتيك مادة التخصص', 'Dans l''analyse didactique en EPS, on entend par enjeu de formation :', false, '[{"id": "A", "text": "L''ensemble des contraintes, des droits et des interdits prescrits à un élève lors de la pratique d''une activité physique et sportive."}, {"id": "B", "text": "L''ensemble des modèles opératoires représentant les structures de base pour le fonctionnement de toute activité physique et sportive."}, {"id": "C", "text": "L''ensemble d''éléments qu''on peut estimer à moyen et à long terme, comme avantages à tirer de la pratique d''une activité physique et sportive."}, {"id": "D", "text": "L''ensemble de traits pertinents et des conséquences qu''elle entraine à court terme, lors de la pratique d''une activité physique et sportive."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Enjeu = avantages à moyen/long terme; distinction enjeu/effet + élimination (pas de source verbatim).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q5', 'exam_eps_2022_didactics_college', 5, 'ديداكتيك مادة التخصص', 'En EPS, une action motrice est dite efficiente lorsque :', false, '[{"id": "A", "text": "Elle atteint des résultats fixés à l''avance, avec le maximum de réussite et souvent un minimum de temps, d''énergie ou les deux."}, {"id": "B", "text": "Elle permet au sujet d''aborder avec des chances de réussite et ou d''efficacité, une large variété de tâches ou de situations."}, {"id": "C", "text": "Elle renvoie au comportement efficace, manifeste et actuel du sujet, à partir d''un résultat ou d''un produit perçu, mesuré ou évalué en fonction de la vitesse d''exécution, la précision, l''esthétique le risque etc…."}, {"id": "D", "text": "Elle permet d''atteindre à moindre coût le même niveau d''efficacité et s''exprime en vitesse d''exécution, de précision et de stabilité."}]'::jsonb, ARRAY['D']::text[], 'Leplat 1989: efficiente = « atteindre à moindre coût le même niveau d''efficacité » (verbatim).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q6', 'exam_eps_2022_didactics_college', 6, 'ديداكتيك مادة التخصص', 'En EPS et dans des conditions idéales, le choix des activités les plus favorables aux apprentissages des élèves est basé essentiellement sur :', false, '[{"id": "A", "text": "La pratique de l''ensemble des activités sportives socialement signifiantes."}, {"id": "B", "text": "Le profil pédagogique des différentes activités physiques et sportives en fonction des objectifs retenus."}, {"id": "C", "text": "La proposition d''un ensemble varié d''activités physiques et ou sportives."}, {"id": "D", "text": "Les pratiques sociales de référence par rapport auxquelles un apprentissage prend du sens pour un élève."}]'::jsonb, ARRAY['B']::text[], 'Lexique EPS (CLASSIFICATION): choix « en fonction des objectifs retenus »; D = définition des PSR (distracteur).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q7', 'exam_eps_2022_didactics_college', 7, 'ديداكتيك مادة التخصص', 'Les observables qualitatifs pour l''élève du 2ème niveau en Hand Ball font émerger les comportements suivants :', false, '[{"id": "A", "text": "Il conserve la balle longtemps ou s''en débarrasse vite (passe courte), il accompagne le PB près de lui, il se rapproche du PB où qu''il soit et le gêne pour prendre le ballon."}, {"id": "B", "text": "Le dribble domine mais dès qu''il voit un obstacle, il s''arrête pour passer la balle sans penser à la poursuite de l''action, il va devant le PB ou derrière et l''appelle pour recevoir. Il veut la balle pour poursuivre le jeu, il gêne déplacements dribbles et lancers et perturbe les réseaux d''échanges."}, {"id": "C", "text": "La recherche de progression est permanente. Il traverse en dribble ou en passe pour aller vers la cible, il est préoccupé par le prolongement de l''attaque et se propose comme relayeur proche ou loin du PB en appui ou en soutien, La réduction des réseaux d''échanges l''organise. Il harcèle son PB et joue sur des interceptions possibles."}, {"id": "D", "text": "Il traverse ou évite l''obstacle en le contournant. Il recherche toujours un prolongement à sa propre progression (passe et va/passe et suit) il sert de relais (passe et va/passe et suit) il sert d''aide (bloc et écran) Il protège le PB dans son potentiel d''action, il cherche à mettre en détresse le PB en fonction de son potentiel d''action et aide un partenaire en soutien."}]'::jsonb, ARRAY['B']::text[], 'FPC Handball 2014, niveaux de jeu: niveau 2 = dribble dominant, s''arrête devant l''obstacle pour passer, NPB appelle, interceptions tentées (A=niv.1, C=niv.3, D=niv.4).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q8', 'exam_eps_2022_didactics_college', 8, 'ديداكتيك مادة التخصص', 'Dans le cadre de la pédagogie mise en œuvre par les enseignants d''EPS, ces derniers :', false, '[{"id": "A", "text": "Doivent intégrer leurs élèves à toutes les activités pédagogiques qu''ils mettent en œuvre."}, {"id": "B", "text": "Doivent identifier comment se déroulent les processus d''apprentissage chez les élèves et comment remédier à leurs difficultés."}, {"id": "C", "text": "Doivent comprendre comment les élèves apprennent, comment rendre les leçons intéressantes et comment garder les élèves engagés."}, {"id": "D", "text": "Doivent concentrer leur attention sur les contenus proposés aux élèves pour favoriser leur acquisition."}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Pédagogie = processus d''apprentissage généraux + remédiation (D = didactique/contenus).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q9', 'exam_eps_2022_didactics_college', 9, 'ديداكتيك مادة التخصص', 'L''évaluation des connaissances comportementales adoptée en sports collectifs dans les OP 2009 est :', false, '[{"id": "A", "text": "4 points en 1er année, 5 points en 2ième année et 3 points en 3ième année."}, {"id": "B", "text": "3 points en 1er année, 5 points en 2ième année et 4 points en 3ième année."}, {"id": "C", "text": "3 points en 1er année, 4 points en 2ième année et 5 points en 3ième année."}, {"id": "D", "text": "5 points en 1er année, 4 points en 2ième année et 3 points en 3ième année."}]'::jsonb, ARRAY['C']::text[], 'OP 2009 collège, sports collectifs: comportementales 3 pts (1AC), 4 pts (2AC), 5 pts (3AC), total 20 chaque année (vérifié sur les projets de cycle).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q10', 'exam_eps_2022_didactics_college', 10, 'ديداكتيك مادة التخصص', 'La pratique des activités physique en cours d''EPS permet surtout :', false, '[{"id": "A", "text": "Le développement des capacités nécessaires aux conduites motrices inscrites dans le programme d''EPS."}, {"id": "B", "text": "L''acquisition par la pratique, des compétences et connaissances relatives aux activités physiques, sportives et artistiques."}, {"id": "C", "text": "L''assimilation du répertoire moteur pluridisciplinaire offert par la pluralité des APS pratiquées."}, {"id": "D", "text": "Le développement des habiletés motrices, des compétences, des connaissances relatives à l''EPS."}]'::jsonb, ARRAY['A']::text[], 'Parlebas 1985: premier objectif de l''EPS = développement des capacités nécessaires aux conduites motrices.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q11', 'exam_eps_2022_didactics_college', 11, 'ديداكتيك مادة التخصص', 'Le progrès d''un élève en activités physiques et sportives est conditionné par la prise en compte :', false, '[{"id": "A", "text": "Des indices pertinents et permanents lors des actions motrices."}, {"id": "B", "text": "De la spécialisation précoce dans des rôles ou des postes précis."}, {"id": "C", "text": "Du nombre de séances d''apprentissage et d''entrainement vécu."}, {"id": "D", "text": "Des différentes procédures techniques utilisées en entrainement."}]'::jsonb, ARRAY['A']::text[], 'Même stem que Q9 de l''examen EPS collégial 2014: « indices pertinents et permanents ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q12', 'exam_eps_2022_didactics_college', 12, 'ديداكتيك مادة التخصص', 'En apprentissage des sports collectifs, un élève débutant possède :', false, '[{"id": "A", "text": "Un temps de latence court pour revenir en défense."}, {"id": "B", "text": "Un temps de latence court pour tirer au but."}, {"id": "C", "text": "Un temps de latence court pour changer de statut."}, {"id": "D", "text": "Un temps de latence long pour changer de statut."}]'::jsonb, ARRAY['D']::text[], 'EPS collégial 2014 Q11: le débutant a « un long temps de latence pour changer de statut ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q13', 'exam_eps_2022_didactics_college', 13, 'ديداكتيك مادة التخصص', 'Les contenus d''enseignement-apprentissage en EPS sont :', false, '[{"id": "A", "text": "Des formes de pratique ludiques proposées aux apprenants."}, {"id": "B", "text": "Des formes de pratique fédérées proposées aux apprenants."}, {"id": "C", "text": "Des formes et des figurines destinées aux apprenants."}, {"id": "D", "text": "Des formes de pratiques et des savoirs proposées aux apprenants."}]'::jsonb, ARRAY['D']::text[], 'Contenus = formes de pratiques + savoirs (OP 2007/2009; Lexique EPS, CONTENU D''ENSEIGNEMENT).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q14', 'exam_eps_2022_didactics_college', 14, 'ديداكتيك مادة التخصص', 'Pendant les cours d''EPS la méthode démonstrative renvoie à une :', false, '[{"id": "A", "text": "Démarche d''intervention pédagogique hybride."}, {"id": "B", "text": "Démarche d''intervention pédagogique pédo-centrée."}, {"id": "C", "text": "Démarche d''intervention pédagogique classique."}, {"id": "D", "text": "Démarche d''intervention pédagogique matériocentrée."}]'::jsonb, ARRAY['C']::text[], 'CRMEF (Bayali): méthode démonstrative = méthode classique (expositive/reproduction), pas pédo-centrée.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q15', 'exam_eps_2022_didactics_college', 15, 'ديداكتيك مادة التخصص', 'Une situation d''apprentissage en EPS est une proposition didactique qui vise :', false, '[{"id": "A", "text": "La construction d''un ensemble d''exercices en progression."}, {"id": "B", "text": "La construction d''un ensemble de tâches à réaliser."}, {"id": "C", "text": "La construction d''un nouveau savoir à acquérir."}, {"id": "D", "text": "La construction d''un nouveau contenu à transmettre."}]'::jsonb, ARRAY['C']::text[], 'Famose: situation d''apprentissage = acquérir un nouveau savoir pour résoudre le problème posé.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q16', 'exam_eps_2022_didactics_college', 16, 'ديداكتيك مادة التخصص', 'Le concept de didactique des APS renvoi à ce que :', false, '[{"id": "A", "text": "L''EPS apparait comme une discipline se basant sur des activités ludiques et de loisirs."}, {"id": "B", "text": "L''EPS apparait comme une discipline se basant sur l''étude des sciences de la motricité humaine."}, {"id": "C", "text": "L''EPS apparait comme une discipline se basant sur une juxtaposition de différentes activités physiques et sportives."}, {"id": "D", "text": "L''EPS apparait comme une discipline se basant sur un amalgame de données scientifiques, pédagogiques et didactiques."}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Par élimination: B = sciences de la motricité, C = juxtaposition dépassée (Dugal/Pineau); D reste (amalgame de données scientifiques, pédagogiques et didactiques).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q17', 'exam_eps_2022_didactics_college', 17, 'ديداكتيك مادة التخصص', 'La logique interne d''une APS rend compte :', false, '[{"id": "A", "text": "D''une construction générale et un instrument opératoire constituant un cadre de référence permettant de pratiquer une APS d''une manière efficace."}, {"id": "B", "text": "Du problème auquel l''élève est nécessairement confronté au cours de la pratique d''une APS donnée."}, {"id": "C", "text": "Des conditions à respecter et des éléments à prendre en compte pour que l''action soit efficace."}, {"id": "D", "text": "De la manière dont les règles de l''activité contraignent le comportement des joueurs."}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Parlebas: logique interne = règles qui contraignent le comportement des joueurs (B = « problème fondamental », concept distinct).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q18', 'exam_eps_2022_didactics_college', 18, 'ديداكتيك مادة التخصص', 'Apprendre par imitation en EPS est considéré comme :', false, '[{"id": "A", "text": "Une copie conforme de la production."}, {"id": "B", "text": "Un processus complexe de reproduction du modèle."}, {"id": "C", "text": "Un mimétisme partiel du geste technique."}, {"id": "D", "text": "Une exécution simple du modèle."}]'::jsonb, ARRAY['B']::text[], 'Bandura/Leca: imitation = processus complexe de reproduction du modèle (attention, rétention, reproduction, motivation), pas une copie conforme.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q19', 'exam_eps_2022_didactics_college', 19, 'ديداكتيك مادة التخصص', 'Les méthodes d''enseignement en EPS signifient :', false, '[{"id": "A", "text": "L''ensemble d''exercices choisis pour intervenir en classe."}, {"id": "B", "text": "L''ensemble de tâches proposées pour intervenir en classe."}, {"id": "C", "text": "L''ensemble de procédures utilisées pour intervenir en classe."}, {"id": "D", "text": "L''ensemble de gestes techniques modèles pour intervenir classe."}]'::jsonb, ARRAY['C']::text[], 'Méthode = ensemble de procédures d''intervention (Bayali); exercices/tâches/gestes = contenus ou outils.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q20', 'exam_eps_2022_didactics_college', 20, 'ديداكتيك مادة التخصص', 'Lors d''une observation en football, les élèves débutants auront des problèmes essentiellement pour :', false, '[{"id": "A", "text": "Recevoir la balle dans leur propre zone de jeu."}, {"id": "B", "text": "Recevoir la balle sur les lignes de fond."}, {"id": "C", "text": "Recevoir la balle en course dans la zone d''attaque."}, {"id": "D", "text": "Recevoir la balle dans l''espace arrière."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Boukayoua: le débutant ne maîtrise pas la réception, surtout en course en zone d''attaque.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q21', 'exam_eps_2022_didactics_college', 21, 'ديداكتيك مادة التخصص', 'Planifier les apprentissages des APS permet principalement de :', false, '[{"id": "A", "text": "Dégager les principes et les règles d''action des activités."}, {"id": "B", "text": "Construire et organiser les contenus d''enseignement appropriés."}, {"id": "C", "text": "Orienter les élèves en fonction de leur niveau de pratique observée."}, {"id": "D", "text": "Faire acquérir aux élèves les habiletés et les techniques escomptées."}]'::jsonb, ARRAY['B']::text[], 'Construire et organiser les contenus d''enseignement appropriés. (الخيارات الكاملة من صورة الورقة — كانت ناقصة في الريل.) **التعليل (من الفيديو + تحقق مستقل):** التخطيط يعني بناء وتنظيم محتويات تعليمية مناسبة بعد التشخيص، وفق دورة: التشخيص، ثم البناء/التنظيم، ثم التوجيه حسب مستوى التلاميذ، ثم اكتساب المهارات. التحقق المستقل: وحدة «Planification des apprentissages au CRMEF» تعرّف التخطيط بأنه تنظيم سيرورة أنشطة لبناء كفاية — وهو معنى الجواب B (انظر الملاحظة 3).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q22', 'exam_eps_2022_didactics_college', 22, 'ديداكتيك مادة التخصص', 'Les fondamentaux d''une activité physique et sportive renvoient aux :', false, '[{"id": "A", "text": "Principes technico-tactiques et réglementaires d''une APS."}, {"id": "B", "text": "Aspects techniques nécessaires lors de la réalisation d''une tâche motrice dans une APS."}, {"id": "C", "text": "Notions générales à prendre en compte lors de la pratique d''une APS."}, {"id": "D", "text": "Niveaux d''habiletés exigés pour la pratique d''une APS."}]'::jsonb, ARRAY['C']::text[], 'Notions générales à prendre en compte lors de la pratique d''une APS. (الخيارات الكاملة حرفياً من صورة الورقة — كانت تقريبية في الريل.) **التعليل (من الفيديو + تحقق مستقل):** الأساسيات هي القواعد العامة التي تُؤخذ بعين الاعتبار عند ممارسة أي نشاط بدني ورياضي: السلامة، التنظيم، المبادئ الأساسية للعبة، وتسري عبر الرياضات (كرة السلة، كرة القدم…). التحقق المستقل: الأدبيات تعرّف «les fondamentaux» بأنها العناصر العامة الحاكمة للممارسة («les éléments qui régissent ou fondent la motricité… les incontournables») — متسق مع الجواب C، دون مصدر يورد صياغته حرفياً (انظر الملاحظة 3).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q23', 'exam_eps_2022_didactics_college', 23, 'ديداكتيك مادة التخصص', 'La pédagogie différenciée en EPS cherche essentiellement à différencier :', false, '[{"id": "A", "text": "Les tâches pendant les différentes séances."}, {"id": "B", "text": "Les résultats obtenus par les apprenants."}, {"id": "C", "text": "Les itinéraires d''apprentissage des élèves."}, {"id": "D", "text": "Les attentes et les représentations des apprenants."}]'::jsonb, ARRAY['C']::text[], 'Les itinéraires d''apprentissage des élèves. **التعليل (من الفيديو + تحقق مستقل):** البيداغوجيا المتمايزة لا تهدف إلى تمييز المهام أثناء الحصص ولا النتائج ولا التوقعات/التمثلات، بل إلى تمييز مسارات التعلم: الهدف نفسه للجميع، والطريق إليه يختلف حسب مستوى كل متعلم. التحقق المستقل: Meirieu (1985) يعرّف البيداغوجيا المتمايزة بأنها «multiplier les itinéraires d''apprentissage» — صياغة الخيار C حرفياً (انظر الملاحظة 3).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q24', 'exam_eps_2022_didactics_college', 24, 'ديداكتيك مادة التخصص', 'Pour contribuer efficacement à la formation des élèves en EPS, l''enseignant doit :', false, '[{"id": "A", "text": "Centrer son attention sur l''exploitation des différentes approches et pédagogies possibles."}, {"id": "B", "text": "Centrer son attention sur les besoins et les représentations des élèves lors de l''action pédagogique."}, {"id": "C", "text": "Centrer son attention sur les aspects physiques et technico-tactiques à acquérir dans une APS donnée."}, {"id": "D", "text": "Centrer son attention sur l''apprentissage des principes et des règles d''action d''une APS donnée."}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Principe pédo-centré (Bayali): partir des besoins et des représentations des élèves.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q25', 'exam_eps_2022_didactics_college', 25, 'ديداكتيك مادة التخصص', 'Les principes d''action en sports collectifs sont :', false, '[{"id": "A", "text": "Un ensemble de consignes claires à respecter par les élèves."}, {"id": "B", "text": "Un ensemble de constructions théoriques pour faciliter l''apprentissage."}, {"id": "C", "text": "Un ensemble de procédures connues permettant de réaliser les phases de jeu."}, {"id": "D", "text": "Un ensemble de gestes techniques à maitriser dans une APS donnée."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Principes d''action = règles d''action par phase de jeu (procédures connues pour réaliser les phases).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q26', 'exam_eps_2022_didactics_college', 26, 'ديداكتيك مادة التخصص', 'Un Nomogramme est :', false, '[{"id": "A", "text": "Un outil de comparaison d''indicateurs chiffrés par rapport à une grille de référence."}, {"id": "B", "text": "Un outil de mesure permettant de situer les performances des élèves par rapport à des normes."}, {"id": "C", "text": "Un outil de sélection des élèves se basant sur des critères observables en rapport à une référence."}, {"id": "D", "text": "Un outil de recueil d''informations par rapport à une référence pour l''émission d''un jugement."}]'::jsonb, ARRAY['A']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Hanula (nomogramme, EDPM-UCL 2004): correspondance entre échelles numériques — comparaison d''indicateurs chiffrés à une grille de référence.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q27', 'exam_eps_2022_didactics_college', 27, 'ديداكتيك مادة التخصص', 'Les conduites motrices en EPS renvoient aux :', false, '[{"id": "A", "text": "Procédures d''acquisition des contenus proposés aux apprenants."}, {"id": "B", "text": "Tâches réalisées dans chaque APS par les apprenants."}, {"id": "C", "text": "Prestations techniques manifestées par les apprenants."}, {"id": "D", "text": "habiletés manifestées par les apprenants dans un niveau de pratique donné."}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Parlebas: conduite motrice = habiletés manifestées à un niveau de pratique donné; C (prestations techniques) trop étroit.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q28', 'exam_eps_2022_didactics_college', 28, 'ديداكتيك مادة التخصص', 'La notion de progrès en EPS renvoie à ;', false, '[{"id": "A", "text": "Un changement des prédispositions d''apprentissage d''un élève favorisant l''engagement de ce dernier dans la réalisation d''une tâche."}, {"id": "B", "text": "Un changement dans le niveau d''habileté par rapport à des critères et des indicateurs bien déterminés."}, {"id": "C", "text": "Un changement dans le niveau d''habileté par rapport à une mesure étalonnant les niveaux de performance dans une population de référence."}, {"id": "D", "text": "Un changement en mieux par lequel l''élève se rapproche de l''objectif visé stipulé dans le contrat pédagogique."}]'::jsonb, ARRAY['B']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Progrès apprécié de façon critériée (critères + indicateurs déterminés); C = évaluation normée (étalonnage sur population).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q29', 'exam_eps_2022_didactics_college', 29, 'ديداكتيك مادة التخصص', 'la transposition didactique est :', false, '[{"id": "A", "text": "L''opération qui suit l''évaluation diagnostique (situation de référence)."}, {"id": "B", "text": "L''ensemble des démarches de construction de contenus d''enseignement."}, {"id": "C", "text": "Le passage de l''objet culture vers l''objet d''enseignement et vers l''objet de formation."}, {"id": "D", "text": "L''étape de la fixation des séquences d''enseignements et les objectifs d''apprentissage."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Chevallard (1985) + Goirand/Lafont: transposition = passage de l''objet culturel vers l''objet d''enseignement puis de formation.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q30', 'exam_eps_2022_didactics_college', 30, 'ديداكتيك مادة التخصص', 'Le triangle didactique est la combinaison d''un :', false, '[{"id": "A", "text": "Processus de formation, d''un processus d''instruction et d''un processus d''éducation."}, {"id": "B", "text": "Processus d''apprentissage, d''un processus d''éducation et d''un processus d''enseignement."}, {"id": "C", "text": "Processus d''enseignement, d''un processus d''apprentissage et d''un processus de formation."}, {"id": "D", "text": "Processus d''instruction, d''un processus d''enseignement et d''un processus d''apprentissage."}]'::jsonb, ARRAY['C']::text[], 'Houssaye (1986), triangle pédagogique: enseigner / apprendre / former.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q31', 'exam_eps_2022_didactics_college', 31, 'ديداكتيك مادة التخصص', 'les compétences transversales renvoient à la combinaison entre :', false, '[{"id": "A", "text": "Les connaissances procédurales et les connaissances conceptuelles et Les connaissances comportementales."}, {"id": "B", "text": "Les connaissances conceptuelles et les connaissances comportementales."}, {"id": "C", "text": "Les connaissances comportementales et Les connaissances procédurales."}, {"id": "D", "text": "Les connaissances conceptuelles et Les connaissances procédurales."}]'::jsonb, ARRAY['A']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: OP 2007 §5.2: compétence = système de connaissances conceptuelles + procédurales + comportementales (les trois types combinés).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q32', 'exam_eps_2022_didactics_college', 32, 'ديداكتيك مادة التخصص', 'Lorsque l''enseignant d''EPS prépare un milieu richement aménagé pour ses élèves se situe-t-il dans :', false, '[{"id": "A", "text": "Une démarche pédagogique à dominante déductive."}, {"id": "B", "text": "Une démarche pédagogique à dominante expérientielle."}, {"id": "C", "text": "Une démarche pédagogique à dominante inductive."}, {"id": "D", "text": "Une démarche pédagogique à dominante heuristique."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: CRMEF (Bayali): démarche inductive = partir du concret (milieu aménagé, Brousseau) vers le général; la taxonomie CRMEF des démarches ne retient que déductive/inductive/dialectique. CONFLIT: l''agent C a proposé B (expérientielle); tranché par le coordinateur — la pédagogie expérientielle est elle-même décrite comme inductive (Aletheia), donc C subsume B; B reste le rival proche.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q33', 'exam_eps_2022_didactics_college', 33, 'ديداكتيك مادة التخصص', 'La définition de la compétence selon les orientations pédagogiques 2007 est :', false, '[{"id": "A", "text": "L''agencement des savoirs, savoir-faire et savoir être et devenir."}, {"id": "B", "text": "L''agencement des ressources (habiletés méthodologiques, habiletés motrices, attitudes et connaissances déclaratives)."}, {"id": "C", "text": "L''agencement des connaissances procédurales, de connaissances conceptuelles et de connaissances comportementales."}, {"id": "D", "text": "L''agencement des savoirs et des connaissances relatives à l''aspect moteur de l''apprentissage."}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: OP 2007 §5.2 (texte vérifié): « système de connaissances conceptuelles, connaissances procédurales et comportementales, organisées en schémas opératoires… »; B = formule de Delignières & Garsault (1993), pas des OP — si la clé suit un polycopié CRMEF attribuant B aux OP, la clé pourrait être B.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q34', 'exam_eps_2022_didactics_college', 34, 'ديداكتيك مادة التخصص', 'L''enseignant d''EPS évalue la notion du progrès en se référant à :', false, '[{"id": "A", "text": "Un objet de formation, aux indicateurs et aux critères d''évaluation."}, {"id": "B", "text": "Une comparaison de ce qui est programmé à une référence donnée."}, {"id": "C", "text": "Une grille de lecture et à La communication des résultats."}, {"id": "D", "text": "Une comparaison de la performance et de la procédure d''action."}]'::jsonb, ARRAY['A']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Cohérent avec Q28: évaluer le progrès = objet de formation + indicateurs + critères d''évaluation.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q35', 'exam_eps_2022_didactics_college', 35, 'ديداكتيك مادة التخصص', 'Le premier objectif général de l''éducation physique et sportive est :', false, '[{"id": "A", "text": "Le développement des capacités organiques et foncières."}, {"id": "B", "text": "L''acquisition des connaissances relatives à l''aspect culturel des activités physiques et sportives."}, {"id": "C", "text": "Le développement des connaissances relatives à la santé, à la qualité de vie et de l''écologie."}, {"id": "D", "text": "L''acquisition des habiletés et le développement des capacités perceptivo motrices de base."}]'::jsonb, ARRAY['A']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Listes des objectifs généraux: « développement des capacités organiques et foncières » en premier (Revue EPS n°241); réserve: les finalités OP 2007/2009 placent D en premier — la question dit « objectif général », non « finalité ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q36', 'exam_eps_2022_didactics_college', 36, 'ديداكتيك مادة التخصص', 'Pour planifier un cycle d''enseignement en EPS, l''enseignant devra :', false, '[{"id": "A", "text": "programmer des contenus et produire ou faire produire par les élèves des formalisations de connaissances fondamentales."}, {"id": "B", "text": "Identifier son rôle dans le développement des compétences pour mettre en avant ce qu''il y a à apprendre par l''élève."}, {"id": "C", "text": "Rassembler le maximum d''informations sur les ressources que les élèves sont capables de mobiliser dans différentes situations problèmes."}, {"id": "D", "text": "Imaginer ce que les élèves, dans leur diversité, vont devoir apprendre pour progresser."}]'::jsonb, ARRAY['D']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Planifier = anticiper ce que les élèves, dans leur diversité, vont devoir apprendre pour progresser; C = étape diagnostique préalable.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q37', 'exam_eps_2022_didactics_college', 37, 'ديداكتيك مادة التخصص', 'La classification des activités physiques et sportives selon les orientations pédagogiques (2007-2009) est organisée par :', false, '[{"id": "A", "text": "Regroupement des activités en fonction de leurs caractéristiques psychomotrices et sociomotrices."}, {"id": "B", "text": "Regroupement des activités en fonction de la complexité de mobilisation des ressources."}, {"id": "C", "text": "Regroupement des activités suivant les motivations, la signification de l''action et l''ancrage affectif."}, {"id": "D", "text": "Regroupement des activités selon les groupes de famille."}]'::jsonb, ARRAY['A']::text[], 'Parlebas (praxéologie): classification psychomoteur / sociomoteur.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q38', 'exam_eps_2022_didactics_college', 38, 'ديداكتيك مادة التخصص', 'En EPS, dans le modèle pédagogique appropriatif :', false, '[{"id": "A", "text": "L''enseignant transmet le savoir aux élèves."}, {"id": "B", "text": "L''enseignant initie les élèves à s''engager dans des tâches de l''organisation."}, {"id": "C", "text": "L''enseignant offre aux élèves l''opportunité de s''auto construire."}, {"id": "D", "text": "L''enseignant détourne son acte pédagogique vers la réalisation des contenus d''enseignement."}]'::jsonb, ARRAY['C']::text[], 'Modèle appropriatif: l''enseignant offre aux élèves l''opportunité de s''auto-construire (constructivisme); A = transmissif.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q39', 'exam_eps_2022_didactics_college', 39, 'ديداكتيك مادة التخصص', 'Le profil de sortie des élèves du cycle secondaire qualifiant spécifique à l''enseignement d''éducation physique et sportive est synonyme de :', false, '[{"id": "A", "text": "La maitrise des connaissances conceptuelles liées au domaine de la culture sportive."}, {"id": "B", "text": "La maitrise des connaissances méthodologiques et procédurales qui contribuent à la richesse de l''éducation à la santé et la gestion de la vie physique."}, {"id": "C", "text": "La maitrise des connaissances méthodologiques et procédurales qui contribuent à la richesse de l''éducation à la santé et à la dimension sociale des élèves."}, {"id": "D", "text": "La maitrise des connaissances méthodologiques et procédurales qui contribuent à la richesse de l''éducation à la santé et à l''aspect socioculturel des élèves."}]'::jsonb, ARRAY['D']::text[], 'OP 2007, profil de sortie du lycéen: savoirs méthodologiques et opérationnels enrichissant « l''éducation sanitaire, sociale et culturelle » — seule D combine santé + socioculturel.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q40', 'exam_eps_2022_didactics_college', 40, 'ديداكتيك مادة التخصص', 'Les compétences dictées dans la charte nationale de l''éducation et de la formation sont :', false, '[{"id": "A", "text": "La compétence culturelle, La compétence transversale, La compétence technologique, La compétence méthodologique, et La compétence disciplinaire."}, {"id": "B", "text": "La compétence disciplinaire, La compétence communicationnelle, compétence méthodologique, La compétence culturelle et la compétence stratégique."}, {"id": "C", "text": "La compétence technologique, La compétence communicationnelle, compétence méthodologique, La compétence culturelle et la compétence stratégique."}, {"id": "D", "text": "La compétence transversale, La compétence communicationnelle, compétence méthodologique, La compétence culturelle et la compétence stratégique."}]'::jsonb, ARRAY['C']::text[], 'Charte nationale 1999: cinq compétences transversales = méthodologiques, stratégiques, culturelles, communicationnelles, technologiques (énumérées exactement par C).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q41', 'exam_eps_2022_didactics_college', 41, 'ديداكتيك مادة التخصص', 'La méthode pédagogie de type transmissif signifie que :', false, '[{"id": "A", "text": "L''enseignant détient le savoir tandis que l''élève est totalement négligé et doit tout apprendre."}, {"id": "B", "text": "Les élèves apprennent en reproduisant les mêmes gestes que l''enseignant."}, {"id": "C", "text": "L''enseignant ne détient pas forcement tout le savoir et joue dans certains cas un guide ou un médiateur."}, {"id": "D", "text": "L''enseignant devient un simple intervenant même s''il possède le savoir et le savoir-faire, il n''est pas en position dominante, l''élève s''auto construit par l''expérience."}]'::jsonb, ARRAY['A']::text[], 'Modèle transmissif: l''enseignant détient le savoir, l''élève est « tête vide » / totalement négligé.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q42', 'exam_eps_2022_didactics_college', 42, 'ديداكتيك مادة التخصص', 'Une équipe qui cherche à freiner la progression de l''adversaire en réduisant l''espace et le mouvement devra adopter les comportements suivants :', false, '[{"id": "A", "text": "Peser sur la conduite de l''attaquant grâce à son placement et ses déplacements."}, {"id": "B", "text": "Repérer, jauger et surveiller son adversaire direct."}, {"id": "C", "text": "Maintenir l''attaque hors de portée de la cible et orienter les adversaires dans une zone."}, {"id": "D", "text": "Harceler le porteur de balle, dissuader et intercepter les passes."}]'::jsonb, ARRAY['C']::text[], 'Sports collectifs (ATD): freiner la progression = « maintenir l''attaque hors de portée de la cible et orienter les adversaires dans une zone ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q47', 'exam_eps_2022_didactics_college', 47, 'ديداكتيك مادة التخصص', 'Lors d''une leçon d''EPS et face à une classe turbulente, le style associatif sera :', false, '[{"id": "A", "text": "Centré d''avantage sur la matière ainsi que l''aménagement de l''environnement."}, {"id": "B", "text": "Centré à la fois sur la matière et sur les apprenants."}, {"id": "C", "text": "Centré davantage sur les apprenants que sur la matière."}, {"id": "D", "text": "Très peu centré tant sur les apprenants que sur la matière."}]'::jsonb, ARRAY['C']::text[], 'Grille Therer-Willemart: style associatif = centré davantage sur les apprenants.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q48', 'exam_eps_2022_didactics_college', 48, 'ديداكتيك مادة التخصص', 'Lorsque l''enseignant d''EPS prépare un milieu richement aménagé pour ses élèves se situe-t-il dans :', false, '[{"id": "A", "text": "Une démarche pédagogique à dominante déductive."}, {"id": "B", "text": "Une démarche pédagogique à dominante expérientielle."}, {"id": "C", "text": "Une démarche pédagogique à dominante inductive."}, {"id": "D", "text": "Une démarche pédagogique à dominante heuristique"}]'::jsonb, ARRAY['C']::text[], '⚠️ «للتحقق — إجابة مرجّحة»: Duplicata verbatim de Q32 — même réponse (voir Q32; conflit B/C tranché en faveur de C).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, 'للتحقق — إجابة مرجّحة؛ مكرر حرفياً من Q32')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q49', 'exam_eps_2022_didactics_college', 49, 'ديداكتيك مادة التخصص', 'Un style d''enseignement est dit orienté vers les résultats si l''enseignant d''EPS à travers sa leçon :', false, '[{"id": "A", "text": "Veille sur l''organisation et centre sa démarche sur l''apprentissage."}, {"id": "B", "text": "Veille sur l''organisation et centre sa démarche sur l''apprenant."}, {"id": "C", "text": "Néglige la mise en place de l''organisation mais centre sa démarche sur l''apprentissage."}, {"id": "D", "text": "Néglige la mise en place de l''organisation et centre d''avantage sa démarche sur l''apprenant."}]'::jsonb, ARRAY['A']::text[], 'Silver et al. (1980), style orienté vers les résultats: classe très structurée, organisation + démarche centrée sur l''apprentissage.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q50', 'exam_eps_2022_didactics_college', 50, 'ديداكتيك مادة التخصص', 'La conception de l''apprentissage dans le courant humaniste est liée directement aux :', false, '[{"id": "A", "text": "Conséquences fournies par l''environnement et définie en fonction du produit réalisé par l''apprenant."}, {"id": "B", "text": "Au degré du contrôle métacognitif exercé par l''apprenant et définie en fonction de son habileté cognitive."}, {"id": "C", "text": "Au sujet qui apprend en fonction de ses expériences et ses connaissances antérieures"}, {"id": "D", "text": "Au degré de la qualité d''engagement personnel de l''apprenant et définie en fonction du processus de son développement."}]'::jsonb, ARRAY['D']::text[], 'Rogers (courant humaniste): engagement personnel (« personal involvement ») et processus de développement de l''apprenant.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q51', 'exam_eps_2022_didactics_college', 51, 'ديداكتيك مادة التخصص', 'L''une des tâches suivantes ne figure pas dans l''opérationnalisation de l''évaluation formative par l''enseignant d''EPS :', false, '[{"id": "A", "text": "Recueillir des informations concernant les progrès et les difficultés d''apprentissage des élèves."}, {"id": "B", "text": "Se centrer sur le résultat ou le produit de l''apprentissage, fonction de contrôle pour valider l''ensemble des acquisitions des élèves."}, {"id": "C", "text": "Interpréter les informations en diagnostiquant les facteurs qui sont à l''origine des difficultés d''apprentissage des élèves."}, {"id": "D", "text": "Adapter son enseignement en fonction de l''interprétation faite des informations recueillies à la suite des difficultés d''apprentissage des élèves."}]'::jsonb, ARRAY['B']::text[], 'Évaluation formative = recueillir (A), interpréter/diagnostiquer (C), adapter (D); se centrer sur le résultat/produit = fonction de contrôle sommative, l''intrus.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q52', 'exam_eps_2022_didactics_college', 52, 'ديداكتيك مادة التخصص', 'Les théories de l''apprentissage ont fait émerger :', false, '[{"id": "A", "text": "Des découvertes sur le fonctionnement du cerveau et sur le corps de l''homme et qui ont eu un impact très positif sur les apprentissages des élèves."}, {"id": "B", "text": "Des modèles qui représentent l''ensemble des relations qui expliquent un phénomène spécifique, en l''occurrence l''apprentissage."}, {"id": "C", "text": "Des modèles précurseurs qui ont permis d''établir certains principes de base facilitant la planification et les interventions en classe."}, {"id": "D", "text": "Des modèles qui adhèrent à l''idée que l''élève apprend dans un contexte structuré, dans lequel les décisions sont prises par lui-même en collaboration avec l''enseignant et facilitant l''intervention de celui-ci."}]'::jsonb, ARRAY['B']::text[], 'Théorie de l''apprentissage = modèles représentant l''ensemble des relations expliquant le phénomène « apprentissage ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q53', 'exam_eps_2022_didactics_college', 53, 'ديداكتيك مادة التخصص', 'En EPS, l''acte d''enseigner-apprendre dans sa dimension qui spécifie la relation de l''élève au savoir à apprendre met en évidence :', false, '[{"id": "A", "text": "Les obstacles qui s''opposent à l''apprentissage de l''élève et qui lui interdisent l''accès au savoir programmé."}, {"id": "B", "text": "Les processus mis en œuvre par l''élève pour accéder à l''appropriation des savoirs souhaités."}, {"id": "C", "text": "La mise en œuvre des situations d''apprentissage débouche sur une organisation dite pédagogique."}, {"id": "D", "text": "La mise en place des situations, la gestion des tâches (régulation et remédiation) et l''évaluation."}]'::jsonb, ARRAY['B']::text[], 'Triangle didactique (Houssaye): relation Élève–Savoir = processus « Apprendre » (cheminement pour s''approprier le savoir).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q54', 'exam_eps_2022_didactics_college', 54, 'ديداكتيك مادة التخصص', 'En course de haies, le critère d''observation appelé : continuité trajet- trajectoire vise à :', false, '[{"id": "A", "text": "Focaliser l''attention de l''enseignant d''EPS sur les moments qui précèdent et qui suivent la trajectoire."}, {"id": "B", "text": "Observer les variations de la vitesse du corps pendant la course du départ à l''arrivée, avant, pendant et après l''impulsion."}, {"id": "C", "text": "Décrire ce qui se passe pendant la trajectoire constitue à la fois cause et conséquence potentielle de l''action précédente et future."}, {"id": "D", "text": "Observer les variations segmentaires du corps en phase d''un seul franchissement pendant la course."}]'::jsonb, ARRAY['B']::text[], 'Critères d''observation en course de haies (Hubich, Revue EPS): « continuité trajet-trajectoire » = variations de la vitesse du corps du départ à l''arrivée, avant/pendant/après l''impulsion (verbatim).', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q59', 'exam_eps_2022_didactics_college', 59, 'ديداكتيك مادة التخصص', 'Pour que l''enseignant d''EPS se situe véritablement dans la démarche active il faut nécessairement que :', false, '[{"id": "A", "text": "L''apprenant ait envie d''apprendre et respecte minutieusement ce qu''on lui propose d''apprendre."}, {"id": "B", "text": "L''apprenant prône l''action pour point de départ, car les connaissances ne s''apprennent pas, mais se construisent avant tout."}, {"id": "C", "text": "L''élève accepte et s''engage à se lancer dans un apprentissage qui place l''aspect collaboratif et coopératif au cœur de ses processus."}, {"id": "D", "text": "L''apprenant peut tester rapidement si ce qu''il entreprend confirme ou infirme ses hypothèses à travers des expériences, ou via des débats avec d''autres élèves."}]'::jsonb, ARRAY['B']::text[], 'Méthodes actives (EduTech Wiki): « la connaissance ne s''apprend pas, elle se construit ; partir de l''action pour aller vers la réflexion ».', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — ديداكتيك مادة التخصص (دورة نونبر 2022) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_didactics_college_q60', 'exam_eps_2022_didactics_college', 60, 'ديداكتيك مادة التخصص', 'L''apprentissage, selon la conception du constructivisme est défini comme suite :', false, '[{"id": "A", "text": "Le climat d''apprentissage et le conflit socio-cognitif vécus par l''apprenant."}, {"id": "B", "text": "Le processus de perception collective de la réalité en interaction avec les paires."}, {"id": "C", "text": "Le processus de développement social et d''une citoyenneté responsable sollicitant des dimensions intra-personnelles."}, {"id": "D", "text": "Le processus de perception personnelle de la réalité par suite des expériences et connaissances antérieurs."}]'::jsonb, ARRAY['D']::text[], 'Constructivisme (Piaget): perception personnelle de la réalité à partir des expériences et connaissances antérieures.', 'qcm', 'third_party', 'https://www.facebook.com/mouhamed.sabbek/posts/pfbid04ksgrZ5Mgb1F2oUdJEGyAqCDoeHcF7RtNDiKNNM3a6ziFQ7w2vGmhscUYRXKEvZ1l', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
