-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022)
-- ====================================================================
-- المصدر: ملف الحل 2022/التربية البدنية (التخصص) - دورة نونبر 2022.md
--   فيديوهات يوتيوب (Orientation Oussa-Sport): الجزء 1 Q1–Q50
--   https://www.youtube.com/watch?v=RVW9ml_797s
--   الجزء 2 Q51–Q100 https://www.youtube.com/watch?v=xRMp7A4HLww
--   لا يوجد مفتاح رسمي ولا ورقة PDF؛ الأجوبة من تصحيح الفيديو (إطارات الشاشة).
--   عدد الأسئلة: 100 (QCM، أربعة اختيارات)؛ Q61(b) حُمّلت كـQ61؛ Q61(a) شريحة
--   إضافية بلا جواب (غير محمّلة). 5 أسئلة موسومة «إجابة مرجّحة حسب المقدّم».
--   المدة غير مؤكدة (240 دقيقة مرجعاً من فبراير 2024).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2022_specialty_lycee', 'eps_lycee', 2022, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022)', 'دورة نونبر 2022', 240, 100, 'المدة غير مؤكدة (240 دقيقة مرجعاً من دورة فبراير 2024)؛ شريحة إضافية Q61(a) في الفيديو (situations d''apprentissage) بلا جواب معروض')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (100 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q1', 'exam_eps_2022_specialty_lycee', 1, 'APS et apprentissage moteur', 'En Hand Ball les principes de l''attaque placée repose sur les éléments suivants :', false, '[{"id": "A", "text": "Conservation du ballon- Déséquilibre la défense adverse- Désarçonner la défense, avec utilisations des règles d''actions appropriées- Finition. (هجاء «Désarçonner» كما في الإطار المكبَّر)"}, {"id": "B", "text": "Amener la défense d''un côté, conclure de l''autre Prendre de vitesse l''adversaire Quadriller les espaces d''attaque."}, {"id": "C", "text": "Sécuriser la circulation de la balle entre les joueurs- jouer dans les intervalles-Opter pour une circulation rapide."}, {"id": "D", "text": "Privilégier la règle de la fixation des joueurs adverses."}]'::jsonb, ARRAY['A']::text[], 'مبادئ الهجوم المنظم في كرة اليد: الحفاظ على الكرة، وزعزعة توازن الدفاع، ثم الإنهاء بتسديدة، مع توظيف قواعد الفعل الملائمة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q2', 'exam_eps_2022_specialty_lycee', 2, 'Physiologie', 'Pour développer la capacité du processus aérobie, il est recommandé de mettre l''accent sur :', false, '[{"id": "A", "text": "Toutes les formes de travail où l''allure est égale ou dépasse l''allure critique."}, {"id": "B", "text": "Les formes de travail intermittent, à condition que l''intensité durant l''effort soit au moins égale au seuil critique."}, {"id": "C", "text": "Les efforts où la production lactique stimule l''apport de l''oxygène nécessaire."}, {"id": "D", "text": "Les efforts continus à allure régulière ou irrégulière à une intensité correspondant à une fourchette infra-maximale."}]'::jsonb, ARRAY['D']::text[], 'تُنمَّى سعة المسار الهوائي بالمجهودات المتواصلة بإيقاع منتظم أو متغير وشدة تحت قصوى، أما العمل عند السرعة الحرجة أو فوقها والعمل المتقطع فيخدمان القدرة الهوائية القصوى.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q3', 'exam_eps_2022_specialty_lycee', 3, 'APS et apprentissage moteur', 'En course de haies et au moment de la reprise d''appui :', false, '[{"id": "A", "text": "Le centre de gravité doit être le plus haut possible en arrière de l''appui."}, {"id": "B", "text": "Le centre de gravité doit être le plus bas possible en arrière de l''appui."}, {"id": "C", "text": "Le centre de gravité ne doit pas être plus haut et en arrière de l''appui."}, {"id": "D", "text": "Le centre de gravité doit être le plus bas possible et en arrière de l''appui."}]'::jsonb, ARRAY['C']::text[], '', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q4', 'exam_eps_2022_specialty_lycee', 4, 'APS et apprentissage moteur', 'Ce qui change dans les entraînements d''une période de préparation à une période de compétition est :', false, '[{"id": "A", "text": "Le nombre de séries et le nombre de répétitions."}, {"id": "B", "text": "La charge et le nombre de séries."}, {"id": "C", "text": "L''intensité et le volume de travail."}, {"id": "D", "text": "La fréquence et le volume de travail."}]'::jsonb, ARRAY['C']::text[], 'عند الانتقال من فترة الإعداد إلى فترة المنافسة يتناقص حجم العمل وترتفع الشدة والنوعية، لتحقيق قمة الأداء.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q5', 'exam_eps_2022_specialty_lycee', 5, 'APS et apprentissage moteur', 'Pour pallier à l''augmentation de l''anxiété chez les sportifs de haut niveau qui fixent des buts à long terme, il est recommandé de :', false, '[{"id": "A", "text": "Etablir une organisation hiérarchique du but à court terme qui soit mesurable et associé à un but à long terme en vue de réaliser ses buts."}, {"id": "B", "text": "Accorder toute son attention à ce que se dit dans les séances d''entraînement et verbaliser ses émotions en vue de réaliser ses buts."}, {"id": "C", "text": "Lutter quelles que soient les circonstances, et oser prendre des risques d''une manière méthodique pour réaliser ses buts."}, {"id": "D", "text": "Analyser avec objectivité les buts hiérarchisés et croire en soi, en ses capacités en vue d''atteindre ses buts."}]'::jsonb, ARRAY['A']::text[], 'تخفف الرياضي من قلق الأهداف البعيدة بتجزئتها إلى أهداف قريبة قابلة للقياس ومرتبطة بالهدف البعيد (Goal setting).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q6', 'exam_eps_2022_specialty_lycee', 6, 'APS et apprentissage moteur', 'L''ajustement optico-moteur et spatio-temporel en course de haies correspond à :', false, '[{"id": "A", "text": "Toutes les variables environnementales nécessaires aux développements des facteurs techniques."}, {"id": "B", "text": "Toutes les modifications fréquentes des consignes d''exécution cherchant à améliorer la vitesse de course."}, {"id": "C", "text": "Toutes les aptitudes à mettre en œuvre pour parvenir à une perception anticipée et à des prises de repères précoces."}, {"id": "D", "text": "Toutes les modifications d''attitudes susceptibles à solliciter en permanence la vigilance de l''athlète."}]'::jsonb, ARRAY['C']::text[], 'التعديل البصري-الحركي والمكاني-الزماني في الحواجز هو مجموع القدرات اللازمة لإدراك استباقي وأخذ علامات مبكرة قبل الحاجز.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q7', 'exam_eps_2022_specialty_lycee', 7, 'APS et apprentissage moteur', 'La préparation aux jeux olympiques rentre dans le cadre d''un :', false, '[{"id": "A", "text": "Cycle annuel."}, {"id": "B", "text": "Cycle pluriannuel."}, {"id": "C", "text": "Plan de carrière."}, {"id": "D", "text": "Cycle de vie du sportif."}]'::jsonb, ARRAY['B']::text[], 'التحضير للألعاب الأولمبية يندرج في دورة متعددة السنوات (Cycle pluriannuel)، أي دورة أولمبية من أربع سنوات.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q8', 'exam_eps_2022_specialty_lycee', 8, 'APS et apprentissage moteur', 'Le ¾ est une attitude défensive employée par :', false, '[{"id": "A", "text": "Le meneur."}, {"id": "B", "text": "Le pivot."}, {"id": "C", "text": "L''ailier distributeur."}, {"id": "D", "text": "L''ailier rebondeur."}]'::jsonb, ARRAY['B']::text[], 'وضعية «¾» دفاعية تُستعمل على اللاعب الارتكازي (Pivot) لقرب السلة لمنعه من استقبال الكرة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q9', 'exam_eps_2022_specialty_lycee', 9, 'Physiologie', 'Les facteurs organiques de la condition physique générale sont :', false, '[{"id": "A", "text": "Le système cardiovasculaire, nerveux, circulatoire, endocrinien."}, {"id": "B", "text": "Le système cardiovasculaire, nerveux, digestif."}, {"id": "C", "text": "Le système cardiovasculaire, circulatoire, perceptif, endocrinien."}, {"id": "D", "text": "Le système cardiovasculaire, nerveux, circulatoire, digestif, endocrinien."}]'::jsonb, ARRAY['D']::text[], 'العوامل العضوية للياقة البدنية العامة هي الأجهزة القلبي الوعائي والعصبي والدوري والهضمي والغددي، والخيار D هو الأشمل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q10', 'exam_eps_2022_specialty_lycee', 10, 'APS et apprentissage moteur', 'L''étalonnage de la course d''élan en saut de longueur permet de :', false, '[{"id": "A", "text": "Créer une vitesse de course maximale."}, {"id": "B", "text": "Gagner en amplitude des foulées de course."}, {"id": "C", "text": "Gagner en fréquence des foulées de course."}, {"id": "D", "text": "Prendre la planche avec une vitesse optimale."}]'::jsonb, ARRAY['D']::text[], 'معايرة ركضة الاقتراب (Étalonnage) تضمن الوصول إلى لوحة الارتقاء بسرعة مثلى وبلا تجاوز أو تعثر في الخطوات الأخيرة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q11', 'exam_eps_2022_specialty_lycee', 11, 'Physiologie', 'L''unité de mesure de la force variable d''aptitude physique est :', false, '[{"id": "A", "text": "Le joule."}, {"id": "B", "text": "Les unités m/s et km/h."}, {"id": "C", "text": "Le newton."}, {"id": "D", "text": "Le watt."}]'::jsonb, ARRAY['C']::text[], 'القوة تُقاس بالنيوتن (N)، أما الجول فوحدة الشغل والطاقة، والواط وحدة القدرة، و(م/ث) و(كم/س) وحدتا السرعة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q12', 'exam_eps_2022_specialty_lycee', 12, 'Physiologie', 'En physiologie, on parle de voie métabolique lorsque :', false, '[{"id": "A", "text": "Le système biochimique de dégradation des substrats énergétiques assure la synthèse de l''ATP."}, {"id": "B", "text": "L''énergie qui permet la reconstitution de l''ATP est obtenue par l''oxydation des glucides, lipides et protides."}, {"id": "C", "text": "La dégradation des substrats énergétiques aboutit à une libération d''ions hydrogènes."}, {"id": "D", "text": "Toutes les réactions dépendent de l''approvisionnement en oxygène et de la mise en jeu du processus oxydatif."}]'::jsonb, ARRAY['A']::text[], 'المسار الأيضي (Voie métabolique) هو النظام الكيميائي الحيوي الذي يحلل الركائز الطاقية لتركيب ATP، وقد يكون هوائيًا أو لاهوائيًا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q13', 'exam_eps_2022_specialty_lycee', 13, 'Physiologie', 'On parle de déficit d''oxygène lorsque :', false, '[{"id": "A", "text": "La consommation d''oxygène supérieure à sa valeur de repos alors que le travail mécanique est nul."}, {"id": "B", "text": "Au cours d''un effort progressivement croissant on constate une augmentation de débit ventilatoire alors que la puissance de travail reste linéaire."}, {"id": "C", "text": "La lactémie s''élève au-dessus de sa valeur de repos."}, {"id": "D", "text": "La demande énergétique est supérieure à celle qui peut être fournie par les voies oxydatives."}]'::jsonb, ARRAY['D']::text[], 'عجز الأكسجين يحدث أثناء الجهد، حين يتجاوز الطلب الطاقي ما تستطيع المسارات الأكسدية تقديمه، أما الخيار A فيصف دين الأكسجين بعد الجهد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q14', 'exam_eps_2022_specialty_lycee', 14, 'APS et apprentissage moteur', 'En volleyball, un joueur est expulsé :', false, '[{"id": "A", "text": "Après une sanction préalable."}, {"id": "B", "text": "Après un avertissement."}, {"id": "C", "text": "Suite à deux avertissements."}, {"id": "D", "text": "Même sans sanction préalable."}]'::jsonb, ARRAY['D']::text[], 'في الكرة الطائرة قد يُطرد اللاعب (expulsion) حتى دون عقوبة سابقة إذا ارتكب سلوكاً مهيناً، والجواب مرجح لاختلاف تدرج العقوبات بين نسخ القانون.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q15', 'exam_eps_2022_specialty_lycee', 15, 'Physiologie', 'L''entraînement en anaérobie alactique vise :', false, '[{"id": "A", "text": "L''amélioration du stockage des protides et des sels minéraux."}, {"id": "B", "text": "L''amélioration des réserves énergétiques en ATP et en CP."}, {"id": "C", "text": "L''amélioration du stockage des acides gras."}, {"id": "D", "text": "L''amélioration du processus d''élimination des déchets lactiques."}]'::jsonb, ARRAY['B']::text[], 'التدريب اللاهوائي اللالاكتيكي يهدف إلى رفع مخزون العضلة من ATP والفوسفوكرياتين (CP).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q16', 'exam_eps_2022_specialty_lycee', 16, 'APS et apprentissage moteur', 'Lors d''un ATR en saut de table :', false, '[{"id": "A", "text": "La tête est placée entre les bras alignés avec le corps et le regard et sur la table. [كما على الشاشة — الشريحة تحذف «est» قبل «sur la table»]"}, {"id": "B", "text": "La tête est placée en arrière du corps puis collée à la poitrine pour faciliter la rotation."}, {"id": "C", "text": "La tête est placée entre les bras alignés avec le corps et le regard est orienté sur la trajectoire de l''élan."}, {"id": "D", "text": "La tête est placée en avant du corps et le regard est orienté vers les appuis."}]'::jsonb, ARRAY['A']::text[], 'في الارتكاز المقلوب على طاولة القفز تكون الرأس بين الذراعين المصطفتين مع الجسم، والنظر موجه نحو الطاولة (اليدين).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q17', 'exam_eps_2022_specialty_lycee', 17, 'APS et apprentissage moteur', 'Les mouvements de ressort contrôlés sont synonymes d''un :', false, '[{"id": "A", "text": "Travail de musculation."}, {"id": "B", "text": "Travail d''étirement."}, {"id": "C", "text": "Travail de plyométrie."}, {"id": "D", "text": "Travail concentrique."}]'::jsonb, ARRAY['C']::text[], 'حركات النابض المنضبطة من مزايا العمل البليومتري (Plyométrie): تقلص لامركزي يتبعه فوراً تقلص مركزي مع الاستفادة من الطاقة المرنة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q18', 'exam_eps_2022_specialty_lycee', 18, 'Accidents et secourisme', 'Les étirements en douceur sont-ils un traitement pour :', false, '[{"id": "A", "text": "Les courbatures."}, {"id": "B", "text": "Les crampes."}, {"id": "C", "text": "Les claquages."}, {"id": "D", "text": "Les hématomes."}]'::jsonb, ARRAY['B']::text[], 'التمدد الخفيف يساعد على علاج التشنجات (Crampes) بإرخاء العضلة، أما التمزق (claquage) والكدمات فتحتاج راحة وعلاجاً آخر.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q19', 'exam_eps_2022_specialty_lycee', 19, 'APS et apprentissage moteur', 'La vélocité est la faculté de :', false, '[{"id": "A", "text": "Répéter le plus grand nombre d''exercices variés dans une séance."}, {"id": "B", "text": "Répéter le plus grand nombre de cycles gestuels identiques dans une unité de temps."}, {"id": "C", "text": "Répéter le plus grand nombre d''essais dans un exercice donné."}, {"id": "D", "text": "Répéter le plus grand nombre de tâches d''une manière automatique."}]'::jsonb, ARRAY['B']::text[], 'السرعة الحركية (Vélocité) هي القدرة على تكرار أكبر عدد من الدورات الحركية المماثلة في وحدة زمنية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q20', 'exam_eps_2022_specialty_lycee', 20, 'APS et apprentissage moteur', 'En course de durée, on tient compte essentiellement :', false, '[{"id": "A", "text": "De la distance à parcourir."}, {"id": "B", "text": "Du rapport intensité et distance parcourue."}, {"id": "C", "text": "Du volume de l''effort fourni."}, {"id": "D", "text": "De l''intensité de l''effort."}]'::jsonb, ARRAY['B']::text[], 'في سباقات التحمل تُراعى العلاقة بين الشدة والمسافة المقطوعة (أو الزمن)، لأن نفس المسافة تتطلب جهداً مختلفاً بحسب شدتها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q21', 'exam_eps_2022_specialty_lycee', 21, 'Physiologie', 'Les réserves organiques du glycogène jouent un rôle important dans l''équilibre énergétique lors des :', false, '[{"id": "A", "text": "Activités intenses et prolongées."}, {"id": "B", "text": "Activités intenses et explosives."}, {"id": "C", "text": "Activités modérées et soutenues."}, {"id": "D", "text": "Activités modérée et brèves. [كما على الشاشة]"}]'::jsonb, ARRAY['A']::text[], 'مخزون الغليكوجين حاسم في الأنشطة الشديدة والطويلة، لأن نفادها يؤدي إلى الإنهاك وانخفاض الأداء.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q22', 'exam_eps_2022_specialty_lycee', 22, 'Physiologie', 'La kilocalorie est une mesure utilisée pour déterminer :', false, '[{"id": "A", "text": "La qualité énergétique d''un aliment."}, {"id": "B", "text": "La puissance énergétique d''un aliment."}, {"id": "C", "text": "La capacité énergétique d''un aliment."}, {"id": "D", "text": "La valeur énergétique d''un aliment."}]'::jsonb, ARRAY['D']::text[], 'السعرة الحرارية الكبرى (kcal) وحدة تقيس القيمة الطاقية للغذاء، أي كمية الطاقة التي يمنحها للجسم.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q23', 'exam_eps_2022_specialty_lycee', 23, 'Physiologie', 'La resynthèse de l''ATP par la voie anaérobie alactique se situe :', false, '[{"id": "A", "text": "Aux environs de 3 minutes d''effort."}, {"id": "B", "text": "Après 2 minutes d''effort."}, {"id": "C", "text": "Après environ 1 minute 30 secondes d''effort."}, {"id": "D", "text": "Au bout des premières secondes d''effort."}]'::jsonb, ARRAY['D']::text[], 'إعادة تركيب ATP عبر المسار اللاهوائي اللالاكتيكي (الفوسفوكرياتين) تبدأ منذ الثواني الأولى للجهد، وتستمر نحو 10–15 ثانية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q24', 'exam_eps_2022_specialty_lycee', 24, 'APS et apprentissage moteur', 'En Basketball, la remise en jeu de la touche doit se faire dans :', false, '[{"id": "A", "text": "Les 5 secondes qui suivent la remise de la balle par l''arbitre."}, {"id": "B", "text": "Les 3 secondes qui suivent la remise de la balle par l''arbitre."}, {"id": "C", "text": "Les 2 secondes qui suivent la remise de la balle par l''arbitre."}, {"id": "D", "text": "Immédiatement après la remise de la balle par l''arbitre."}]'::jsonb, ARRAY['A']::text[], 'في كرة السلة يجب تنفيذ رمية التماس خلال 5 ثوانٍ من تسليم الحكم الكرة للاعب.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q25', 'exam_eps_2022_specialty_lycee', 25, 'APS et apprentissage moteur', 'Un joueur arrière en volley Ball, peut entrer dans la zone d''avant :', false, '[{"id": "A", "text": "Avant l''exécution du service."}, {"id": "B", "text": "Lors d''un contre."}, {"id": "C", "text": "Après l''exécution d''un service."}, {"id": "D", "text": "Après une attaque adverse."}]'::jsonb, ARRAY['C']::text[], 'اللاعب الخلفي لا يجوز له دخول المنطقة الأمامية قبل ضرب الإرسال، لكن يمكنه ذلك بعد تنفيذ الإرسال.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q26', 'exam_eps_2022_specialty_lycee', 26, 'Anatomie', 'La contraction en synergie des muscles des parois antérieures et postérieures du buste permet :', false, '[{"id": "A", "text": "Une contraction musculaire concentrique."}, {"id": "B", "text": "Un tétanos imparfait."}, {"id": "C", "text": "Une contraction musculaire stato-dynamique."}, {"id": "D", "text": "Un gainage."}]'::jsonb, ARRAY['D']::text[], 'تقلص عضلات الجدارين الأمامي والخلفي للجذع بتآزر يثبت الجذع ويشكل الغلاف العضلي الذي يسمى التغليف (Gainage).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q27', 'exam_eps_2022_specialty_lycee', 27, 'APS et apprentissage moteur', 'Le mouvement des mains en touche de balle en volley Ball est une :', false, '[{"id": "A", "text": "Rotation latérale."}, {"id": "B", "text": "Supination."}, {"id": "C", "text": "Pronation."}, {"id": "D", "text": "Extension."}]'::jsonb, ARRAY['D']::text[], 'في اللمسة العليا (التمرير بالأصابع) تقوم اليدان والرسغان بحركة بسط (Extension) تدفع الكرة للأعلى وللأمام.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q28', 'exam_eps_2022_specialty_lycee', 28, 'APS et apprentissage moteur', 'Lors d''un duel en sports collectifs, la distance d''attente est déterminée par :', false, '[{"id": "A", "text": "La distance d''affrontement moteur qui sépare deux adversaires quand l''un charge l''autre qui possède le ballon."}, {"id": "B", "text": "La distance moyenne qu''un joueur laisse entre lui et le détenteur de la balle."}, {"id": "C", "text": "La distance d''affrontement moteur séparant les deux adversaires de garde au moment qui précède immédiatement l''acte offensif de l''un d''entre eux."}, {"id": "D", "text": "La distance hypothétique qui sépare deux adversaires au moment de leur affrontement direct."}]'::jsonb, ARRAY['C']::text[], 'مسافة الانتظار في المواجهة هي المسافة الحركية الفاصلة بين الخصمين في وضع الحراسة لحظة تسبق مباشرة الفعل الهجومي لأحدهما.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q29', 'exam_eps_2022_specialty_lycee', 29, 'APS et apprentissage moteur', 'L''automatisation est le fait de :', false, '[{"id": "A", "text": "Passer d''un contrôle visuel au début de l''apprentissage à un contrôle kinesthésique."}, {"id": "B", "text": "Passer d''une action globale où tout le corps participe à une capacité de ne pas mobiliser qu''une partie du corps pour agir."}, {"id": "C", "text": "Passer d''une action où le déséquilibre est refusé à une capacité d''accepter le déséquilibre et même de l''anticiper."}, {"id": "D", "text": "Passer d''une action où les différents éléments de l''acte moteur sont juxtaposés et réalisés les uns après les autres."}]'::jsonb, ARRAY['A']::text[], 'الأتمتة (Automatisation) انتقال من التحكم البصري في بداية التعلم إلى التحكم الحسي الحركي العميق (Kinesthésique) الذي يحرر الانتباه.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q30', 'exam_eps_2022_specialty_lycee', 30, 'APS et apprentissage moteur', 'Le muscle agissant en touche de balle en VB est :', false, '[{"id": "A", "text": "Flexor carpi-radialis."}, {"id": "B", "text": "Le brachioradial."}, {"id": "C", "text": "Muscle extensor digitorum."}, {"id": "D", "text": "Flexor carpi ulnaris."}]'::jsonb, ARRAY['C']::text[], 'في اللمسة العليا تُنشط الأصابع بواسطة العضلة الباسطة للأصابع (Extensor digitorum).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q31', 'exam_eps_2022_specialty_lycee', 31, 'Physiologie', 'L''appui tendu renversé conduit à :', false, '[{"id": "A", "text": "La réduction du cortisol, hormone du stress."}, {"id": "B", "text": "L''augmentation de la pression."}, {"id": "C", "text": "La diminution de la production de la sérotonine."}, {"id": "D", "text": "L''augmentation du flux sanguin dans le cerveau."}]'::jsonb, ARRAY['D']::text[], 'الوقوف على اليدين (ATR) يقلب وضع الجسم فيزيد تدفق الدم نحو الدماغ بفعل الجاذبية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q32', 'exam_eps_2022_specialty_lycee', 32, 'APS et apprentissage moteur', 'A l''appel en haut en hauteur les muscles sollicités sont : [كما على الشاشة]', false, '[{"id": "A", "text": "Le quadriceps, les ischio-jambiers, les fessiers et les mollets."}, {"id": "B", "text": "Le vaste interne le couturier le soléaire le semi membraneux."}, {"id": "C", "text": "Les mollets I, le péronier latéral, jambier antérieur. [الحرف بعد «mollets» يظهر كـ«I» كبيرة على الشاشة]"}, {"id": "D", "text": "Le droit antérieur, le tenseur du facia lata, le couturier."}]'::jsonb, ARRAY['A']::text[], 'في ارتقاء الوثب العالي تعمل العضلات الرباعية والعضلات الخلفية للفخذ والأليتين والسمانة لدفع الجسم نحو الأعلى.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q33', 'exam_eps_2022_specialty_lycee', 33, 'APS et apprentissage moteur', 'En gymnastique, pour assurer l''intégrité physique de l''élève, l''enseignant doit veiller à :', false, '[{"id": "A", "text": "La schématisation des éléments gymniques."}, {"id": "B", "text": "La prévention et l''aménagement du milieu."}, {"id": "C", "text": "L''attrait et la motivation des élèves."}, {"id": "D", "text": "La démonstration des éléments à réaliser."}]'::jsonb, ARRAY['B']::text[], 'لحماية سلامة التلميذ في الجمباز يهتم الأستاذ بالوقاية وتهيئة الوسط (حصائر، مساحات، تأمين).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q34', 'exam_eps_2022_specialty_lycee', 34, 'Physiologie', 'L''effort physique qui déclenche le processus des phosphagènes renvoi au travail musculaire :', false, '[{"id": "A", "text": "En Production de l''acide lactique."}, {"id": "B", "text": "Sans Production d''acide lactique."}, {"id": "C", "text": "En Présence d''oxygène."}, {"id": "D", "text": "En phase terminale d''accumulation de l''acide lactique."}]'::jsonb, ARRAY['B']::text[], 'مسار الفوسفاجين (CP-ATP) يعمل بغياب الأكسجين وبدون إنتاج حمض اللاكتيك.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q35', 'exam_eps_2022_specialty_lycee', 35, 'Physiologie', 'Les produits résiduels de la glycolyse oxydative sont :', false, '[{"id": "A", "text": "Les adénosines diphosphate."}, {"id": "B", "text": "La baisse du pH cellulaire."}, {"id": "C", "text": "L''eau (sueur) + CO2."}, {"id": "D", "text": "Lactates – Ions hydrogène (H+)."}]'::jsonb, ARRAY['C']::text[], 'نواتج التحلل السكري الأكسدي (بحضور الأكسجين) هي الماء وثاني أكسيد الكربون، أما اللاكتات وأيونات H+ فهي نواتج التحلل اللاهوائي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q36', 'exam_eps_2022_specialty_lycee', 36, 'APS et apprentissage moteur', 'En entraînement le principe de cumul de stimulations dans le temps repose sur :', false, '[{"id": "A", "text": "Les exercices sollicitant fortement les réserves énergétiques et entraînant une fatigue aiguë initiale,"}, {"id": "B", "text": "Une charge d''entraînement en durée et en intensité équivalente et permettant de travailler sur des distances assez longues"}, {"id": "C", "text": "Des exercices proposés adaptés aux potentialités des joueurs entrecoupés de phases de récupération relativement longue."}, {"id": "D", "text": "Des charges d''entraînement ciblant de travailler à 80% de la VO2 Max."}]'::jsonb, ARRAY['A']::text[], 'مبدأ تراكم المثيرات عبر الزمن يقوم على تمارين تستنزف الاحتياطيات الطاقية وتحدث تعباً حاداً يتراكم أثره ويُنتج التكيف عند التكرار.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q37', 'exam_eps_2022_specialty_lycee', 37, 'APS et apprentissage moteur', 'Pendant l''atterrissage brutale en cloche pied en triple saut, la jambe d''amortissement encaisse jusqu''à :', false, '[{"id": "A", "text": "Trente G."}, {"id": "B", "text": "Douze G."}, {"id": "C", "text": "Dix-sept G."}, {"id": "D", "text": "Dix G."}]'::jsonb, ARRAY['C']::text[], 'في الوثب الثلاثي تتحمل رجل الامتصاص قوى ارتداد هائلة تبلغ عدة أضعاف وزن الجسم، والجواب المرجح 17 G ولم أتحقق من الرقم الدقيق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q38', 'exam_eps_2022_specialty_lycee', 38, 'APS et apprentissage moteur', 'Pour maximiser la poussée vers l''avant en demi-fond il faut que :', false, '[{"id": "A", "text": "Les articulations des chevilles, de la hanche, du genou soient en extension complète."}, {"id": "B", "text": "Le bassin soit en rétroversion avec une attaque des appuis au sol par les plantes."}, {"id": "C", "text": "La durée de la phase d''amortissement soit réduite."}, {"id": "D", "text": "La levée des genoux soit maximisée pour amplifier la foulée."}]'::jsonb, ARRAY['A']::text[], 'لتعظيم الدفع إلى الأمام في المسافات المتوسطة يجب بسط كامل لمفاصل الكاحل والركبة والورك أثناء مرحلة الدفع.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q39', 'exam_eps_2022_specialty_lycee', 39, 'APS et apprentissage moteur', 'En course de vitesse au starting bloc pour avoir de l''explosivité le sprinter devra avoir :', false, '[{"id": "A", "text": "Une poussée de la jambe arrière forte et courte, tandis que la poussée de la jambe avant est un peu moins forte mais plus longue."}, {"id": "B", "text": "Une attitude explosive caractérisée par une forte réaction sur les blocs au moment du départ."}, {"id": "C", "text": "Une légère avance de ligne des épaules par rapport à la ligne de départ."}, {"id": "D", "text": "Une très forte concentration sur le starter pour avoir une réaction explosive."}]'::jsonb, ARRAY['A']::text[], 'في الانطلاق من قالب البدء تكون دفعة الرجل الخلفية قوية وبشكل قصير، وتدفع الرجل الأمامية بقوة أقل لكن لمدة أطول، لتوليد انفجارية الانطلاق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q40', 'exam_eps_2022_specialty_lycee', 40, 'Physiologie', 'Pendant l''effort physique quand le QR tend vers 1, cela veut dire que :', false, '[{"id": "A", "text": "En majorité les lipides sont de plus en plus utilisés comme substrat énergétique pendant l''effort fourni par l''athlète."}, {"id": "B", "text": "Le glucose sanguin fournie l''énergie nécessaire à la poursuite de l''effort. [كما على الشاشة]"}, {"id": "C", "text": "L''acide lactique accumulé dans le sang devient un substrat énergétique."}, {"id": "D", "text": "Le cycle la phosphorisation est prédominant par rapport aux autres processus oxydatifs. [كما على الشاشة]"}]'::jsonb, ARRAY['B']::text[], 'حين يقترب المعامل التنفسي (QR) من 1 فهذا يعني أن الغلوكوز (الكربوهيدرات) هو الركيزة الطاقية الأساسية، بينما يقترب من 0.7 عند استعمال الدهون.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q41', 'exam_eps_2022_specialty_lycee', 41, 'Anatomie', 'Le gainage du bassin facilite :', false, '[{"id": "A", "text": "L''alignement des parties du corps et la résistance du corps à l''effort."}, {"id": "B", "text": "L''alignement des parties du corps et la transmission de l''énergie musculaire."}, {"id": "C", "text": "L''alignement et la rotation des parties du corps."}, {"id": "D", "text": "L''alignement des parties du corps et la transmission de la force musculaire."}]'::jsonb, ARRAY['D']::text[], 'تغليف الحوض (Gainage) يسهل محاذاة أجزاء الجسم ونقل القوة العضلية بين الجزء السفلي والعلوي دون ضياع.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q42', 'exam_eps_2022_specialty_lycee', 42, 'APS et apprentissage moteur', 'Pour optimaliser le rapport course appel en haut en longueur, il faut qu''il y est :', false, '[{"id": "A", "text": "Elévation progressive de centre de gravité + augmentation de la fréquence d''appuis. Mise en tension musculaire orientée vers un appel efficace (griffé) ; abaissement du centre de gravité sur l''avant dernier appui ; l''avant dernière foulée s''allonge."}, {"id": "B", "text": "Abaissement du centre de gravité vers les trois dernières foulées avec augmentation de la fréquence des appuis pour une mise sous tension renvoi."}, {"id": "C", "text": "Etalonnage optimal de la course d''élan pour atteindre un meilleur rapport course appel impulsion."}, {"id": "D", "text": "Ajustement technique qui permettra au sauteur de modifier la trajectoire qu''il suit."}]'::jsonb, ARRAY['C']::text[], 'لتحسين العلاقة بين الركضة والارتقاء يلزم معايرة مثلى لركضة الاقتراب تضمن أفضل علاقة ركضة-ارتقاء-دفع.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q43', 'exam_eps_2022_specialty_lycee', 43, 'APS et apprentissage moteur', 'En Basket Ball, la dissuasion aura lieu lorsque :', false, '[{"id": "A", "text": "La défense en direction d''un porteur de balle pour l''empêcher de passer la balle."}, {"id": "B", "text": "L''action de défendre pour fermer l''angle de tir au porteur de balle."}, {"id": "C", "text": "L''action du porteur de balle qui cherche l''ouverture de l''angle de tir."}, {"id": "D", "text": "La défense en direction d''un attaquant pour l''empêcher de recevoir la balle."}]'::jsonb, ARRAY['A']::text[], 'الإقناع بالدخول (Dissuasion) دفاع على حامل الكرة لمنعه من التمرير أو دفعه إلى التخلي عن مشروعه الهجومي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q44', 'exam_eps_2022_specialty_lycee', 44, 'APS et apprentissage moteur', 'En lancer, la mise en tension renvoi se joue lorsque :', false, '[{"id": "A", "text": "La ligne des épaules est à la verticale des appuis."}, {"id": "B", "text": "Le bassin est en avance sur l''engin dans la phase de double appui."}, {"id": "C", "text": "Le lanceur amorce le jet final pour donner à l''engin la plus grande poussée possible."}, {"id": "D", "text": "Lorsque le lanceur fait sa rotation pour entamer la phase terminale du lancer."}]'::jsonb, ARRAY['B']::text[], 'يتم الشد [؟] (Mise en tension renvoi) حين يتقدم الحوض على الأداة في مرحلة الارتكاز المزدوج، فيتولد شد بين الحوض والكتفين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q45', 'exam_eps_2022_specialty_lycee', 45, 'APS et apprentissage moteur', 'Pour les engins planeurs en lancer en athlétisme en vent latéral le lanceur doit-il :', false, '[{"id": "A", "text": "Chercher donc à exploiter les avantages de la portance en plaçant idéalement l''engin sur une bonne trajectoire."}, {"id": "B", "text": "Communiquer à l''engin plus de force pour vaincre les effets négatifs de la phase aérodynamique."}, {"id": "C", "text": "Chercher à stabiliser l''engin dans sa trajectoire en profitant de la direction de l''aire."}, {"id": "D", "text": "Modifier la direction de son lancer par rapport à l''aire de réception."}]'::jsonb, ARRAY['D']::text[], 'مع الريح الجانبية يعدل الرامي اتجاه رميته بالنسبة لمنطقة الاستقبال [؟] انحراف الأداة الطائرة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q46', 'exam_eps_2022_specialty_lycee', 46, 'APS et apprentissage moteur', 'Pour développer les capacités perceptivo-décisionnelles des apprenants en EPS, il est nécessaire de :', false, '[{"id": "A", "text": "Donner le maximum d''informations aux apprenants."}, {"id": "B", "text": "Donner des feedbacks appropriés aux apprenants."}, {"id": "C", "text": "Permettre aux apprenants de jouer les différents rôles."}, {"id": "D", "text": "Proposer différentes situations problèmes aux apprenants."}]'::jsonb, ARRAY['D']::text[], 'تنمو القدرات الإدراكية-القرارية عبر وضعيات-مشكلة متنوعة تدفع المتعلم إلى انتقاء المعلومات واتخاذ القرار.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q47', 'exam_eps_2022_specialty_lycee', 47, 'APS et apprentissage moteur', 'Parmi les points clés du lancer on peut citer :', false, '[{"id": "A", "text": "Le double appui, le chemin du lacement l''accélération dans le jet final, le trajet décrit par l''engin. [«lacement» كما على الشاشة]"}, {"id": "B", "text": "La rotation qui précède la phase finale du jet L''angle d''envole de l''engin."}, {"id": "C", "text": "Le double appui, le rôle les membres inférieurs, la poussée finale."}, {"id": "D", "text": "La préparation mise en action, l''accélération, la poussée finale."}]'::jsonb, ARRAY['A']::text[], 'من النقاط المفتاحية في الرمي: الارتكاز المزدوج، ومسار التشاور (chemin du lancement)، والتسارع في الرمية النهائية، ومسار الأداة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q48', 'exam_eps_2022_specialty_lycee', 48, 'APS et apprentissage moteur', 'En lancer de poids, la prise d''avance en rotation est sur tout réalisée :', false, '[{"id": "A", "text": "En phase de mise en action qui succède à la phase de préparation qui déclenche le chemin du lacement par. [كما على الشاشة، تنتهي بـ«par.»]"}, {"id": "B", "text": "Lorsque le corps agit comme un ressort en torsion dans le plan horizontal."}, {"id": "C", "text": "En phase terminale lorsque le bras lanceur déclenche son mouvement de lancer final."}, {"id": "D", "text": "En fin de phase en rotation qui permet le passage à la phase finale de l''action de lancer."}]'::jsonb, ARRAY['B']::text[], 'أخذ الأسبقية في الدوران (Prise d''avance) يتم حين يعمل الجسم كنابض ملتوٍ في المستوى الأفقي، فيسبق الحوض الكتفين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q49', 'exam_eps_2022_specialty_lycee', 49, 'Accidents et secourisme', 'Un élève qui a une entorse moyenne présente les signes suivants :', false, '[{"id": "A", "text": "La douleur est intense et plus diffuse que dans les foulures ; L''élongation du ligament est plus importante ou plus d''un ligament est atteint, mais il n''y a pas de rupture ligamentaire L''appui et le mouvement sont presque impossibles pour le patient en raison de la douleur ressentie."}, {"id": "B", "text": "L''élongation du ligament est plus importante ou plus d''un ligament est atteint, mais il n''y a pas de rupture ligamentaire L''appui et le mouvement sont presque impossibles pour le patient en raison de la douleur ressentie."}, {"id": "C", "text": "Il s''agit d''une entorse d''une distension ligamentaire qui provoque une douleur importante à l''étirement avec points douloureux à l''insertion des ligaments. L''appui et le mouvement sont presque impossibles pour le patient en raison de la douleur ressentie."}, {"id": "D", "text": "Le stade initial se caractérise par des douleurs et une gêne fonctionnelle (perte de mobilité ou de force) qui apparaissent pendant l''activité exercée."}]'::jsonb, ARRAY['A']::text[], 'في التواء المتوسط يكون الألم أشد وأوسع من الالتواء الخفيف، مع تمدد أكبر للرباط أو إصابة أكثر من رباط دون تمزق، ويصعب الارتكاز والحركة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q50', 'exam_eps_2022_specialty_lycee', 50, 'APS et apprentissage moteur', 'Pour maîtriser les bases de la défense en Basket Ball, le joueur doit :', false, '[{"id": "A", "text": "Mettre l''accent sur les déplacements latéraux semi fléchis en pointant une main vers le ballon en possession chez l''adversaire et l''autre main vers le haut pour empêcher la passe et ou le tir."}, {"id": "B", "text": "Adopter une bonne position défensive en écartant les jambes un peu plus de largeur des épaules, décollé les talons du sol, se positionner sur le terrain en se plaçant entre le joueur et le panier."}, {"id": "C", "text": "Adopter une position défensive pré-dynamique à intervenir sur l''adversaire direct en croisant les pieds pour se déplacer rapidement latéralement."}, {"id": "D", "text": "Avoir un contact complet des pieds avec le sol pour rester équilibrer, se déplacer."}]'::jsonb, ARRAY['B']::text[], 'أساس الدفاع في كرة السلة وضعية دفاعية جيدة: رجلان أوسع قليلاً من الكتفين، كعبان مرفوعان، والتموضع بين المهاجم والسلة. ## الأسئلة المستردة من الجزء الثاني (Q51–Q70)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=RVW9ml_797s', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q51', 'exam_eps_2022_specialty_lycee', 51, 'APS et apprentissage moteur', 'Lors d''un penalty en FB l''arbitre assistant doit se placer :', false, '[{"id": "A", "text": "A l''insertion de la ligne de but et de celle de la surface de réparation. [كما على الشاشة]"}, {"id": "B", "text": "Au niveau de la ligne de but."}, {"id": "C", "text": "Au niveau de la ligne de la surface de réparation."}, {"id": "D", "text": "Au niveau de la position du premier arbitre."}]'::jsonb, ARRAY['A']::text[], 'عند ركلة الجزاء يتموضع الحكم المساعد عند تقاطع خط المرمى مع خط منطقة الجزاء.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q52', 'exam_eps_2022_specialty_lycee', 52, 'APS et apprentissage moteur', 'Lors du contre dans l''espace adverse en volley-ball, le joueur :', false, '[{"id": "A", "text": "Peut passer ses mains et ses bras par-dessus le filet après la frappe de la balle."}, {"id": "B", "text": "Peut passer seulement ses mains jusqu''aux poignets sans gêner l''adversaire après sa frappe."}, {"id": "C", "text": "Peut passer ses mains et ses bras par-dessus le filet après la frappe de la balle par l''adversaire sans le gêner."}, {"id": "D", "text": "Peut passer ses mains et ses bras après la frappe de l''adversaire sans aucune autre obligation."}]'::jsonb, ARRAY['C']::text[], 'في الصد يجوز تمرير اليدين والذراعين فوق الشبكة بعد ضرب الخصم للكرة دون إزعاجه.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q53', 'exam_eps_2022_specialty_lycee', 53, 'APS et apprentissage moteur', 'En Hand Ball parmi les avantages du dispositif défensif 1- 5 on trouve :', false, '[{"id": "A", "text": "Provoquer des fautes directes dans la circulation de la balle (dissuasion, interception)."}, {"id": "B", "text": "Gêner la circulation sur la base arrière, renforcer la protection du secteur central."}, {"id": "C", "text": "Expédier le tir dans les couloirs latéraux, minimiser les pourcentages de réussite des tirs."}, {"id": "D", "text": "Contrer le tir à distance adverse."}]'::jsonb, ARRAY['B']::text[], 'من مزايا الدفاع 1-5 في كرة اليد إرباك تداول الكرة في الخط الخلفي وتقوية حماية المنطقة المركزية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q54', 'exam_eps_2022_specialty_lycee', 54, 'APS et apprentissage moteur', 'En foot Ball, la tactique du jeu fait référence aux :', false, '[{"id": "A", "text": "positionnements des joueurs sur le terrain, la capacité à exécuter parfaitement des phases de jeu répétées à l''entraînement et, d''une manière générale, l''aptitude des joueurs à pratiquer un football réaliste."}, {"id": "B", "text": "Capacités d''intelligence collective en jeu qui est la somme des intelligences individuelles et qui sont primordiales. Le résultat d''un match ne dépend pas seulement de l''habileté des joueurs à manier le ballon, mais aussi des choix tactiques"}, {"id": "C", "text": "Deux moments principaux du jeu la possession du ballon, la possession du ballon par l''adversaire"}, {"id": "D", "text": "Implications alternatives ; la longueur des séquences de jeu amène le joueur à rencontrer une grande variété de situations d''enchaînements offensifs et défensifs."}]'::jsonb, ARRAY['B']::text[], 'تكتيك لعبة كرة القدم يرتبط بالذكاء الجماعي أثناء اللعب: مجموع ذكاءات اللاعبين والاختيارات التكتيكية، لا بالمهارة الفنية وحدها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q55', 'exam_eps_2022_specialty_lycee', 55, 'Accidents et secourisme', 'Les groupes musculaires qui sont le plus exposés aux accidents d''élongation sont :', false, '[{"id": "A", "text": "Le couturier le vaste interne."}, {"id": "B", "text": "Les ischio-jambiers."}, {"id": "C", "text": "Les jumeaux."}, {"id": "D", "text": "Les biceps."}]'::jsonb, ARRAY['B']::text[], 'العضلات الخلفية للفخذ (Ischio-jambiers) هي الأكثر عرضة لإصابات التمدد خاصة في السرعة والقفز.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q56', 'exam_eps_2022_specialty_lycee', 56, 'APS et apprentissage moteur', 'En EPS, le temps consacré à l''apprentissage des conduites motrices est synonyme de :', false, '[{"id": "A", "text": "La durée effective passée par l''élève en activité d''apprentissage."}, {"id": "B", "text": "La durée effective passée par toute la classe en activité d''apprentissage."}, {"id": "C", "text": "La durée effective d''une situation d''apprentissage."}, {"id": "D", "text": "La durée effective d''une séance d''apprentissage."}]'::jsonb, ARRAY['A']::text[], 'الزمن المخصص لتعلم المهارات الحركية هو المدة الفعلية التي يقضيها التلميذ منخرطًا في نشاط التعلم (زمن الانخراط الحركي).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q57', 'exam_eps_2022_specialty_lycee', 57, 'APS et apprentissage moteur', 'En gymnastique sportive, l''élève apprend la rondade pour :', false, '[{"id": "A", "text": "Faciliter la détente verticale."}, {"id": "B", "text": "Conserver la vitesse horizontale."}, {"id": "C", "text": "Permettre la bonne prise de plinth."}, {"id": "D", "text": "Faciliter la rotation avant."}]'::jsonb, ARRAY['B']::text[], 'تُتعلم العجلة المتنقلة (Rondade) للحفاظ على السرعة الأفقية المكتسبة وتحويلها إلى دوران خلفي في العناصر التالية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q58', 'exam_eps_2022_specialty_lycee', 58, 'Anatomie', 'Les ligaments ont pour rôle :', false, '[{"id": "A", "text": "Le renforcement du cartilage osseux."}, {"id": "B", "text": "Le renforcement des os et des muscles."}, {"id": "C", "text": "Le renforcement de la capsule articulaire."}, {"id": "D", "text": "Le renforcement des muscles contractés."}]'::jsonb, ARRAY['C']::text[], 'وظيفة الأربطة تقوية المحفظة المفصلية وتثبيت العظام في المفصل ومنع الحركات الزائدة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q59', 'exam_eps_2022_specialty_lycee', 59, 'APS et apprentissage moteur', 'Dans un match de foot Ball, les décisions de l''arbitre prennent effet :', false, '[{"id": "A", "text": "Dès qu''il pénètre dans le terrain."}, {"id": "B", "text": "Dès qu''il donne le coup d''envoi."}, {"id": "C", "text": "Dès qu''il établit la feuille de match."}, {"id": "D", "text": "Dès qu''il salut les 2 capitaines équipes."}]'::jsonb, ARRAY['A']::text[], 'سلطة الحكم في مباراة كرة القدم تبدأ بمجرد دخوله ملعب المباراة للتفتيش ما قبل اللقاء.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q60', 'exam_eps_2022_specialty_lycee', 60, 'APS et apprentissage moteur', 'En volley-Ball, le libero se positionne sur le terrain en :', false, '[{"id": "A", "text": "Zone Avant droite."}, {"id": "B", "text": "Zone arrière."}, {"id": "C", "text": "Zone Avant Centre."}, {"id": "D", "text": "Zone Avant gauche."}]'::jsonb, ARRAY['B']::text[], 'الليبيرو في الكرة الطائرة يتموضع في المنطقة الخلفية، وهو لا يشارك في الهجوم من الصف الأمامي ولا في الإرسال أو الصد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q61', 'exam_eps_2022_specialty_lycee', 61, 'Physiologie', 'Chez un élève de 15 ans la fréquence cardiaque maximale lors d''un effort physique est :', false, '[{"id": "A", "text": "165 p/m"}, {"id": "B", "text": "185 p/m"}, {"id": "C", "text": "195 p/m"}, {"id": "D", "text": "205 p/m"}]'::jsonb, ARRAY['D']::text[], 'التردد القلبي الأقصى يُقدَّر بالمعادلة 220 - العمر، أي 220 - 15 = 205 نبضة في الدقيقة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q62', 'exam_eps_2022_specialty_lycee', 62, 'Anatomie', 'Les groupes musculaires dont la contraction produit un effet identique sont :', false, '[{"id": "A", "text": "Les muscles agonistes."}, {"id": "B", "text": "Les muscles complémentaires."}, {"id": "C", "text": "Les muscles addittionnels. [كما على الشاشة]"}, {"id": "D", "text": "Les muscles antagonistes."}]'::jsonb, ARRAY['A']::text[], 'العضلات المحركة (Agonistes) هي المجموعات التي ينتج تقلصها الأثر نفسه، أما المضادة فتحدث أثراً معاكساً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q63', 'exam_eps_2022_specialty_lycee', 63, 'Anatomie', 'Le contrôle de la motricité humaine est assuré par :', false, '[{"id": "A", "text": "Le cordon nerveux."}, {"id": "B", "text": "Le système nerveux central."}, {"id": "C", "text": "Le récepteur intramusculaire."}, {"id": "D", "text": "Le motoneurone."}]'::jsonb, ARRAY['B']::text[], 'ضبط الحركة البشرية يتم بواسطة الجهاز العصبي المركزي (الدماغ والنخاع) الذي يخطط الحركة وينظمها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q64', 'exam_eps_2022_specialty_lycee', 64, 'Physiologie', 'La modification physiologique supposée lors d''un entrainement en anaérobie alactique est :', false, '[{"id": "A", "text": "Une amélioration du processus d''élimination des déchets lactiques."}, {"id": "B", "text": "Une amélioration du stockage des acides gras."}, {"id": "C", "text": "Une amélioration des réserves intramusculaires en ATP et CP."}, {"id": "D", "text": "Une amélioration du stockage des protides et des sels minéraux."}]'::jsonb, ARRAY['C']::text[], 'التكيف الفيزيولوجي المنتظر من التدريب اللاهوائي اللاكتيكي هو زيادة المخزون العضلي من ATP و CP.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q65', 'exam_eps_2022_specialty_lycee', 65, 'APS et apprentissage moteur', 'La mesure en saut en longueur se prend à partir de :', false, '[{"id": "A", "text": "La marque la plus proche dans la zone de chute jusqu''à la ligne d''appel."}, {"id": "B", "text": "La marque la plus loin dans la zone de chute jusqu''à la ligne d''appel."}, {"id": "C", "text": "Du milieu de la zone de chute jusqu'' à la ligne d''appel."}, {"id": "D", "text": "La marque la plus loin latéralement dans la zone de chute jusqu''à la ligne d''appel."}]'::jsonb, ARRAY['A']::text[], 'يُقاس الوثب الطويل من أقرب أثر تتركه أي جزء من جسم الواثب في حفرة الرمل إلى خط الارتقاء.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q66', 'exam_eps_2022_specialty_lycee', 66, 'APS et apprentissage moteur', 'En gymnastique sportive la rondade est utilisée pour :', false, '[{"id": "A", "text": "Se déplacer et diminuer la vitesse pour un salto avant."}, {"id": "B", "text": "Se déplacer et augmenter la vitesse pour un salto arrière."}, {"id": "C", "text": "Se déplacer et préparer un saut de mains."}, {"id": "D", "text": "Se déplacer en vitesse et préparer un tour longitudinal complet."}]'::jsonb, ARRAY['B']::text[], 'تُستعمل العجلة المتنقلة للتنقل بسرعة وتحويل الركض إلى دوران خلفي يهيئ لعنصر خلفي (Salto arrière).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q67', 'exam_eps_2022_specialty_lycee', 67, 'APS et apprentissage moteur', 'Les catégories d''âge en sport scolaire au niveau du collège sont :', false, '[{"id": "A", "text": "Poussins, Benjamins, minimes, cadets, juniors."}, {"id": "B", "text": "Minimes, cadets, juniors."}, {"id": "C", "text": "Poussins, Benjamins, minimes, cadets."}, {"id": "D", "text": "Minimes, cadets."}]'::jsonb, ARRAY['D']::text[], 'الجواب مرجح: فئتا الرياضة المدرسية بالإعدادي هما الصغار (Minimes) والأشبال (Cadets)، لكن لم تتحقق من المذكرة المنظمة للفئات العمرية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, 'إجابة مرجّحة حسب المقدّم')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q68', 'exam_eps_2022_specialty_lycee', 68, 'APS et apprentissage moteur', 'Dans la préparation physique de l''élève volleyeur au niveau de l''ASS, il faut mettre l''accent sur le développement de :', false, '[{"id": "A", "text": "La vitesse de réaction et de mouvement, la résistance, l''agilité ; la détente, l''amplitude articulo-musculaire."}, {"id": "B", "text": "La vitesse de déplacement, la force, l''amplitude articulo- musculaire."}, {"id": "C", "text": "La détente, l''équilibration, l''adresse, l''agilité et la coordination."}, {"id": "D", "text": "La puissance, vitesse, force, l''agilité, la coordination, la vitesse de réaction et de mouvement, et la résistance."}]'::jsonb, ARRAY['D']::text[], 'الإعداد البدني للاعب الكرة الطائرة المدرسي يشمل القدرة والسرعة والقوة والرشاقة والتوافق وسرعة رد الفعل والتحمل، والخيار D هو الأمثل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q69', 'exam_eps_2022_specialty_lycee', 69, 'APS et apprentissage moteur', 'L''appellation technique en action défensive spécifique en hand-ball renvoi à l''action :', false, '[{"id": "A", "text": "Du soutien."}, {"id": "B", "text": "De l''appui."}, {"id": "C", "text": "De la dissuasion."}, {"id": "D", "text": "De la subtilisation."}]'::jsonb, ARRAY['D']::text[], 'الجواب مرجح: «الانتزاع / الاستلاب» (Subtilisation) من الأفعال الدفاعية الخاصة بكرة اليد، وهي انتزاع الكرة من حاملها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, 'إجابة مرجّحة حسب المقدّم')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q70', 'exam_eps_2022_specialty_lycee', 70, 'Physiologie', 'En physiologie de l''effort Le cycle de Krebs sous entant :', false, '[{"id": "A", "text": "La transformation du glycogene en acide lactique."}, {"id": "B", "text": "La transformation de l''ATP en lactate."}, {"id": "C", "text": "La transformation de la CP en ATP."}, {"id": "D", "text": "La transformation de l''acide pyruvique en CO2 et H2O."}]'::jsonb, ARRAY['D']::text[], 'دورة كريبس تحوّل حمض البيروفيك (بعد تحويله إلى أسيتيل مرافق الإنزيم A) إلى CO2 و H2O مع إنتاج الطاقة بحضور الأكسجين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q71', 'exam_eps_2022_specialty_lycee', 71, 'APS et apprentissage moteur', 'Pour effectuer un service flottant en volley Ball il faut :', false, '[{"id": "A", "text": "Servir en sautant tout en imprimant une grande vitesse de rotation à la balle. Effectuer une frappe la plus puissante possible pour amplifier son effet rotatif."}, {"id": "B", "text": "Effectuer son service et bloquer sa main au moment de la frappe."}, {"id": "C", "text": "Augmenter l''incertitude chez l''adversaire en ciblant des zones vulnérables par une frappe direct et flottante."}, {"id": "D", "text": "Frapper la balle par-dessus pour lui imprimer un effet descendant."}]'::jsonb, ARRAY['B']::text[], 'الإرسال الطافي (Service flottant) يتطلب ضرب الكرة وتوقيف اليد لحظة التماس دون تدوير الكرة، فيتأرجح مسارها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q72', 'exam_eps_2022_specialty_lycee', 72, 'Anatomie', 'Le centre d''évaluation et d''intégration des messages chez l''être humain est :', false, '[{"id": "A", "text": "La moelle epinière."}, {"id": "B", "text": "Le cervelet."}, {"id": "C", "text": "Le système nerveux."}, {"id": "D", "text": "Le cerveau."}]'::jsonb, ARRAY['D']::text[], 'الدماغ هو مركز تقييم الرسائل العصبية وتكاملها وصنع القرار الحركي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q73', 'exam_eps_2022_specialty_lycee', 73, 'APS et apprentissage moteur', 'La manchette en volley Ball est un geste technique en réception qui sert à :', false, '[{"id": "A", "text": "Protéger les zones de vulnérabilité défensive surtout lorsque l''équipe se trouve désemparer face à une équipe adverse qui possède les meilleurs attaquants."}, {"id": "B", "text": "Intercepter une trajectoire tendue ou puissante pour la transformer en une trajectoire arrondie."}, {"id": "C", "text": "Placer le corps derrière la balle, contacter le ballon dans l''espace situé entre les genoux et le bassin avec le 1/3 inférieur des avant-bras tendus et serrés."}, {"id": "D", "text": "Orienter le corps vers la direction dans laquelle on veut envoyer la balle."}]'::jsonb, ARRAY['C']::text[], 'الاستقبال بالساعدين (Manchette): وضع الجسم خلف الكرة ولمسها بين الركبتين والحوض بالثلث السفلي للساعدين المبسوطين والمضمومين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q74', 'exam_eps_2022_specialty_lycee', 74, 'Anatomie', 'L''arc reflexe représente le chemin parcouru par le message nerveux, il permet de :', false, '[{"id": "A", "text": "Transmettre un plus grand nombre d''informations."}, {"id": "B", "text": "Exciter un plus grand nombre de neurones."}, {"id": "C", "text": "Innerver un plus grand nombre de muscles."}, {"id": "D", "text": "Automatiser un plus grand nombre de contractions musculaires."}]'::jsonb, ARRAY['D']::text[], 'القوس المنعكس (Arc réflexe) مسار الرسالة العصبية الذي يتيح أتمتة عدد أكبر من التقلصات العضلية دون تدخل الدماغ الواعي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q75', 'exam_eps_2022_specialty_lycee', 75, 'APS et apprentissage moteur', 'L''estime de soi est définie par les psychologues du sport par :', false, '[{"id": "A", "text": "L''ensemble de forces qui poussent une personne à s''investir et d''éprouver le plaisir dans les performances."}, {"id": "B", "text": "La conscience de la valeur personnelle que l''être humain se reconnaît dans différents domaines."}, {"id": "C", "text": "La capacité à agir avec résolution pour atteindre un objectif à court ou à long terme. En reconnaissant la valeur de l''autre."}, {"id": "D", "text": "La capacité d''analyser avec objectivité et exactitude une situation et planification des objectifs en maîtrisant ses émotions."}]'::jsonb, ARRAY['B']::text[], 'تقدير الذات هو الوعي بالقيمة الشخصية التي يمنحها الإنسان لنفسه في مجالات مختلفة (جسدية، مدرسية، اجتماعية).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q76', 'exam_eps_2022_specialty_lycee', 76, 'Accidents et secourisme', 'Les facteurs extrinsèques responsables des blessures chez les athlètes sont dus à :', false, '[{"id": "A", "text": "L''effort sans récupération suffisante, la surcharge, le travail sur un groupe musculaire sans travailler le groupe opposé et la répétition du même mouvement de manière prolongée."}, {"id": "B", "text": "L''effort à base d''une course excessive sur une piste inclinée ou sur une route accidentée."}, {"id": "C", "text": "L''effort à base des mouvements inhabituels, tels que ceux qui sont effectués sur un vélo elliptique)."}, {"id": "D", "text": "La faiblesse et la raideur musculaire, laxité articulaire, antécédents de blessure, désaxation osseuse et asymétries des membres."}]'::jsonb, ARRAY['A']::text[], 'العوامل الخارجية للإصابات تشمل أخطاء التدريب: مجهود دون راحة كافية، حمل زائد، اختلال التوازن العضلي وتكرار الحركة نفسها طويلا. أما الخيار D فعوامل داخلية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q77', 'exam_eps_2022_specialty_lycee', 77, 'APS et apprentissage moteur', 'En sports collectifs de démarquage, le contournement sous-entend :', false, '[{"id": "A", "text": "L''encerclement des défenseurs par des attaquants."}, {"id": "B", "text": "L''action d''isoler les attaquants par les défenseurs."}, {"id": "C", "text": "L''encerclement des attaquants par les défenseurs."}, {"id": "D", "text": "L''action de jouer pour éviter le bloc défensif adverse."}]'::jsonb, ARRAY['A']::text[], 'في رياضات الفرق، المناورة (Contournement) تعني الالتفاف أن يطوّق المهاجمون المدافعين ليتجاوزوهم.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q78', 'exam_eps_2022_specialty_lycee', 78, 'APS et apprentissage moteur', 'En gymnastique sportive le critère d''évaluation de la virtuosité signifie :', false, '[{"id": "A", "text": "L''adaptation des éléments aux capacités."}, {"id": "B", "text": "La maitrise des éléments imposés."}, {"id": "C", "text": "L''exécution correcte des éléments imposés."}, {"id": "D", "text": "L''atteinte des limites de la perfection."}]'::jsonb, ARRAY['D']::text[], 'معيار البراعة (Virtuosité) في تقييم الجمباز يعني بلوغ حدود الكمال في الإنجاز بمستوى فني استثنائي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q79', 'exam_eps_2022_specialty_lycee', 79, 'Anatomie', 'Pour mettre en mouvement un membre du corps humain :', false, '[{"id": "A", "text": "Les tendons se contractent pour exercer une force qui fait jouer une articulation."}, {"id": "B", "text": "Un muscle et un tendon se contractent pour faire jouer une articulation."}, {"id": "C", "text": "Un muscle se contracte et exerce une force sur les tendons, ce qui fait jouer une articulation."}, {"id": "D", "text": "Les tendons tirent sur le muscle, qui fait jouer une articulation."}]'::jsonb, ARRAY['C']::text[], 'تتقلص العضلة وتشدّ بقوتها الأوتار المرتبطة بالعظام، فيتحرك المفصل، أما الوتر فلا يتقلص.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q80', 'exam_eps_2022_specialty_lycee', 80, 'APS et apprentissage moteur', 'La qualité « force-vitesse » renvoi à :', false, '[{"id": "A", "text": "La faculté d''exprimer des actions motrices avec une intensité maximale."}, {"id": "B", "text": "La faculté d''exprimer des actions motrices sub-maximales."}, {"id": "C", "text": "La faculté d''exprimer des actions motrices avec une intensité sur- maximale."}, {"id": "D", "text": "La faculté d''exprimer des actions motrices avec une intensité sous- maximale."}]'::jsonb, ARRAY['A']::text[], 'صفة القوة-السرعة (القوة) هي القدرة على إنجاز أفعال حركية بشدة قصوى في أقل زمن ممكن.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q81', 'exam_eps_2022_specialty_lycee', 81, 'Accidents et secourisme', 'Après avoir identifié une plaie grave et mettre la victime en position d''attente vous êtes appelés à :', false, '[{"id": "A", "text": "Ne rien mettre sur la plaie dans l''attente des renforts médicaux en assurant la protection de la victime par une position de sécurité latérale."}, {"id": "B", "text": "Réalisez systématiquement un emballage de la plaie, avec si possible du matériel stérile à usage unique en faveur de la victime."}, {"id": "C", "text": "Vous protégez si possible la plaie avec un pansement stérile, mais en absence de pansement stérile adapté, vous ne mettez rien sur la plaie."}, {"id": "D", "text": "Mettez un pansement adapte en utilisons une solution alcoolisée après avoir protégé la victime."}]'::jsonb, ARRAY['C']::text[], 'في الجرح الخطير نغطي الجرح بضمادة معقمة إن توفرت، وفي غيابها لا يوضع شيء على الجرح، مع تجنب الكحول وطلب الإسعاف.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q82', 'exam_eps_2022_specialty_lycee', 82, 'APS et apprentissage moteur', 'Afin de réussir une course de haies chez les élèves, il est conseillé de :', false, '[{"id": "A", "text": "Accélérer entre les intervalles pour ajuster son pied d''attaque à la hauteur de la haie."}, {"id": "B", "text": "Augmenter le temps de franchissement en réalisant des trajectoires de franchissement courte et en cloche de ramener."}, {"id": "C", "text": "Compter mentalement ces appuis entre les intervalles pour étalonner sa course inter-haies."}, {"id": "D", "text": "Ramener rapidement la jambe arrière pour une rééquilibration à partir d''un déséquilibre avant."}]'::jsonb, ARRAY['C']::text[], 'يُنصح التلميذ بعدّ الإيقاع ذهنياً بين الحواجز لمعايرة الركض بين الحواجز وتثبيت إيقاع الخطوات.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q83', 'exam_eps_2022_specialty_lycee', 83, 'APS et apprentissage moteur', 'La production d''un comportement moteur résulte de la mise en œuvre de 3 grands types de mécanismes qui sont :', false, '[{"id": "A", "text": "Le mécanisme proprioceptif, vestibulaire, sensorielles et le mécanisme de production d''énergie."}, {"id": "B", "text": "Le mécanisme informationnel de production d''énergie, le mécanisme kinesthésique et le mécanisme sensoriel."}, {"id": "C", "text": "Les mécanismes neuromusculaires de production d''énergie et informationnels du contrôle cognitif."}, {"id": "D", "text": "Le mécanisme biomécanique du contrôle du mouvement, le mécanisme physiologique de dépense d''énergie."}]'::jsonb, ARRAY['A']::text[], 'السلوك الحركي ينتج عن آليات الإحساس والإدراك (حسية عميقة ودهليزية) إلى جانب آلية إنتاج الطاقة؛ والجواب مرجح لغموض صياغة الخيارات.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, 'إجابة مرجّحة حسب المقدّم')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q84', 'exam_eps_2022_specialty_lycee', 84, 'APS et apprentissage moteur', 'Pour réaliser un bon enchainement en fin de cycle de gymnastique, l''élève doit pouvoir développer des conduites motrices sous tendues par les qualités suivantes :', false, '[{"id": "A", "text": "Souplesse, agilité, coordination, détente, force."}, {"id": "B", "text": "Amplitude articulo-musculaire, coordination, vitesse de réaction."}, {"id": "C", "text": "Coordination, souplesse, équilibration, agilité."}, {"id": "D", "text": "Equilibration, Souplesse, force, agilité."}]'::jsonb, ARRAY['A']::text[], 'السلسلة الجيدة في نهاية دورة الجمباز تتطلب المرونة والرشاقة والتوافق والقوة المتفجرة والقوة، والخيار A هو الأمثل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q85', 'exam_eps_2022_specialty_lycee', 85, 'Physiologie', 'L''énergie indispensable à la vie cellulaire issue des réactions chimiques est libérée :', false, '[{"id": "A", "text": "En quantité standard en fonction des facteurs purement interne propre à l''individu."}, {"id": "B", "text": "En quantité très variable en fonction de facteurs soit internes, propres à l''individu, soit externes, liés à l''environnement."}, {"id": "C", "text": "En quantité très variable en fonction des facteurs externes, liés spécialement à l''environnement."}, {"id": "D", "text": "En quantité standard en fonction des facteurs purement interne propre à l''individu soit externes, liés à l''environnement."}]'::jsonb, ARRAY['B']::text[], 'الطاقة المحررة من التفاعلات الكيميائية الخلوية تتغير بشدة بحسب عوامل داخلية خاصة بالفرد وأخرى خارجية مرتبطة بالمحيط.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q86', 'exam_eps_2022_specialty_lycee', 86, 'Biomécanique', 'La dépense énergétique a tendance à déminuer en course athlétique lorsque :', false, '[{"id": "A", "text": "Le produit entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur s''éloigne de 1."}, {"id": "B", "text": "Le Rapport entre la distance parcourue du pas et la durée de la période d''oscillation propre du membre inferieur se rapproche de 1."}, {"id": "C", "text": "Le produit entre la distance parcourue du pas et la durée de la période d''oscillation propre du membre inferieur s''éloigne de 1."}, {"id": "D", "text": "Le Rapport entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur se rapproche de 1."}]'::jsonb, ARRAY['D']::text[], 'تنخفض كلفة الطاقة في الجري حين تقترب النسبة بين مدة الخطوة ومدة التذبذب الخاصة بالطرف السفلي من 1 (ظاهرة الرنين).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q87', 'exam_eps_2022_specialty_lycee', 87, 'APS et apprentissage moteur', 'En psychologie de sport, le facteur qui influence la performance individuelle et collective est :', false, '[{"id": "A", "text": "La conception du modèle de jeu avec ses aspects stratégiques, tactiques et techniques exécuté par le joueur."}, {"id": "B", "text": "Les ressources énergétiques et les prédispositions physiques et leurs misent en jeu technique par le joueur."}, {"id": "C", "text": "La capacité à décider et régler l''activité dans les situations de jeu toujours changeantes par le joueur."}, {"id": "D", "text": "Le régime alimentaire généralement pauvre en sel minéraux et riche en glucide suivie par le joueur."}]'::jsonb, ARRAY['C']::text[], 'من العوامل النفسية المؤثرة في الأداء الفردي والجماعي القدرة على اتخاذ القرار وتعديل النشاط في وضعيات لعب متغيرة باستمرار.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q88', 'exam_eps_2022_specialty_lycee', 88, 'APS et apprentissage moteur', 'La souplesse résulte d''une grande amplitude de mouvements des articulations, pour la développer, l''entraineur peut agir sur :', false, '[{"id": "A", "text": "La forme des surfaces de la capsule articulaires type diarthrose qui permettent certains mouvements articulaires."}, {"id": "B", "text": "La tension des ligaments, de la capsule type synarthrose qui permettent certains mouvements articulaires."}, {"id": "C", "text": "L''élasticité des ligaments, de la capsule des muscles type diarthrose qui permettent certains mouvements articulaires."}, {"id": "D", "text": "La forme des surfaces, de la capsule articulaire type diarthrose qui permettent certains mouvements articulaires."}]'::jsonb, ARRAY['C']::text[], 'لتنمية المرونة يعمل المدرب على مرونة الأربطة والمحفظة والعضلات للمفاصل المتحركة (Diarthrose)، لا على شكل السطوح العظمية الثابت.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q89', 'exam_eps_2022_specialty_lycee', 89, 'Physiologie', 'Lors d''un effort physique, L''irrigation sanguine du tissu musculaire est gênée par :', false, '[{"id": "A", "text": "Les nerfs moteurs qui emmènent l''influx nerveux aux muscles par l''intermédiaire de la plaque motrice."}, {"id": "B", "text": "Les contractions musculaires tenues type isométrique d''une intensité maximale et de courte durée."}, {"id": "C", "text": "Les nerfs sensitifs qui partent du muscle au niveau des fuseaux neuro-musculaires."}, {"id": "D", "text": "Les contractions musculaires tenues type isotonique d''une faible intensité et de courte durée."}]'::jsonb, ARRAY['B']::text[], 'التقلصات الإيزومترية الشديدة تضغط على الأوعية الدموية داخل العضلة فتعيق تدفق الدم إليها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q90', 'exam_eps_2022_specialty_lycee', 90, 'APS et apprentissage moteur', 'Lorsqu''on s''accroupit avec une charge sur les épaules (squat) ; les muscles extenseurs agissent à la descente pour :', false, '[{"id": "A", "text": "Freiner la charge et empêcher que l''on s''écroule au sol garce à une contraction concentrique."}, {"id": "B", "text": "Orienter la charge et empêcher que l''on s''écroule au sol grâce à une contraction excentrique."}, {"id": "C", "text": "Freiner la charge et empêcher que l''on s''écroule au sol garce à une contraction pliométrique."}, {"id": "D", "text": "Orienter la charge et empêcher que l''on s''écroule au sol grâce à une contraction isotonique."}]'::jsonb, ARRAY['B']::text[], 'أثناء النزول في السكوات تعمل العضلات الباسطة بتقلص لامركزي (Excentrique) تستطيل وهي تكبح الحمل لمنع الانهيار.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q91', 'exam_eps_2022_specialty_lycee', 91, 'APS et apprentissage moteur', 'Le réflexe d''accroche chez un jeune athlète perchiste se manifeste par :', false, '[{"id": "A", "text": "Une extension des bras au moment du décollage, une perche mobile dans l''espace arrière, un corps aligné."}, {"id": "B", "text": "Une flexion des bras au moment du décollage, une perche fixée dans l''espace avant, un corps groupé."}, {"id": "C", "text": "Une extension des bras au moment du décollage ; une perche peu mobile dans l''espace avant, corps semi-groupé."}, {"id": "D", "text": "Une flexion des bras au moment du décollage ; une perche mobile dans l''espace arrière, corps aligné."}]'::jsonb, ARRAY['B']::text[], 'منعكس التثبيت لدى القافز الصغير بالزانة يظهر بثني الذراعين عند الارتقاء وزانة ثابتة أمام الجسم وجسم متكور.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q92', 'exam_eps_2022_specialty_lycee', 92, 'Biomécanique', 'Au tennis, un ballon a aura tendance à retomber plus rapidement si :', false, '[{"id": "A", "text": "La balle est brossée, avec un effet lifté par le haut d''une manière à la faire tourner vers l''avant."}, {"id": "B", "text": "La balle est coupée, sans effet lifté par le bas d''une manière à la faire tourner vers le haut."}, {"id": "C", "text": "La balle est brossée, sans un effet lifté par le haut d''une manière à la faire tourner vers l''arrière."}, {"id": "D", "text": "La balle est coupée, avec effet lifté par le bas d''une manière à la faire tourner vers le bas."}]'::jsonb, ARRAY['A']::text[], 'الكرة ذات الدوران الأمامي (Lifté) تتعرض لقوة ماغنوس إلى الأسفل، فتسقط أسرع من الكرة المقطوعة التي ترتفع.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q93', 'exam_eps_2022_specialty_lycee', 93, 'APS et apprentissage moteur', 'La vitesse d''un ballon lors du shoot en football dépend essentiellement de :', false, '[{"id": "A", "text": "La force des muscles extenseur de la cheville ; la vitesse des muscles extenseur du genou."}, {"id": "B", "text": "La force d''extension du genou, la force des muscles extenseurs de la cheville."}, {"id": "C", "text": "La vitesse de l''articulation sollicitée, La longueur de la jambe."}, {"id": "D", "text": "La vitesse angulaire de la hanche ; la force des muscles extenseurs du genou."}]'::jsonb, ARRAY['D']::text[], 'سرعة الكرة في التسديد تتوقف على السرعة الزاوية للورك وقوة العضلات الباسطة للركبة التي تدفع الساق كالسوط.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q94', 'exam_eps_2022_specialty_lycee', 94, 'Accidents et secourisme', 'Afin d''éviter les risques relatifs au traumatisme de la colonne vertébrale à la suite du soulèvement des charges importantes, il est recommandé de :', false, '[{"id": "A", "text": "Inverser les courbures normales de la colonne vertébrale lorsqu''on soulève une charge en maintenant les talons collés au sol."}, {"id": "B", "text": "Soulever la charge avec son dos en la plaçant hors du polygone de sustentation lorsqu''on soulève une charge en maintenant les talons soulevés avec une talonnette."}, {"id": "C", "text": "Éloigner les charges soulevées de l''axe du corps lorsqu''on soulève une charge en maintenant les talons collés au sol."}, {"id": "D", "text": "Placer son bassin en rétroversion et glisser la charge le plus près possible du corps lorsqu''on soulève une charge en maintenant les talons soulevés avec une talonnette."}]'::jsonb, ARRAY['D']::text[], 'لتفادي إصابات العمود الفقري عند رفع الأثقال تُقرّب الحمولة من الجسم قدر الإمكان مع وضع الحوض في ميل خلفي لتسطيح الظهر، وتُرفع الكعبان بحذر.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q95', 'exam_eps_2022_specialty_lycee', 95, 'Anatomie', 'Les muscles obéissent à des lois d''actions : la loi de variation et d''inversion des actions est définie comme suite :', false, '[{"id": "A", "text": "La contraction d''un muscle est fonctionnellement liée à celle de son ou de ses antagonistes. Ils sont mis en jeu : soit successivement, soit simultanément."}, {"id": "B", "text": "Un muscle a plusieurs actions. L''action unique est l''exception car rares sont les muscles mono-articulaires mobilisant une articulation,"}, {"id": "C", "text": "Un mouvement élémentaire est rarement produit par un seul muscle. Cela nécessite en général l''action de deux ou plusieurs muscles qui sont alors dits agonistes."}, {"id": "D", "text": "L''action d''un muscle sur un bras de levier squelettique subit des variations quantitatives et qualitatives au cours du même mouvement."}]'::jsonb, ARRAY['D']::text[], 'قانون التغير والانعكاس: يتغير فعل العضلة على الرافعة العظمية كميًا ونوعيًا خلال الحركة الواحدة، وقد ينقلب أثرها حسب وضع المفصل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q96', 'exam_eps_2022_specialty_lycee', 96, 'APS et apprentissage moteur', 'Le « hors-jeu semi-automatique » sera mis en place lors de la Coupe du monde 2022 signifie :', false, '[{"id": "A", "text": "Chaque fois que le ballon est reçu par un attaquant qui se trouvait en position de hors-jeu, les arbitres vidéo, établissent la position des joueurs et du ballon tout en remplaçant l''appréciation de l''arbitre principal."}, {"id": "B", "text": "Chaque fois que le ballon est reçu par un attaquant qui se trouvait en position de hors-jeu* Une alerte sera transmise aux arbitres vidéo par des récepteurs d''action installés sur le terrain ; l''arbitre principal aura la décision finale."}, {"id": "C", "text": "Chaque fois que le ballon est reçu par un attaquant qui se trouvait en position de hors-jeu les arbitres vidéo affichent dans les écrans du train la décision finale."}, {"id": "D", "text": "Chaque fois que le ballon est reçu par un attaquant qui se trouvait en position de hors-jeu une alerte sera transmise aux arbitres vidéo par l''arbitre principal auquel reviendra la décision finale."}]'::jsonb, ARRAY['B']::text[], 'في التسلل شبه الآلي (كأس العالم 2022) تُرسَل تنبيهات إلى حكام الفيديو عند استقبال مهاجم في وضع تسلل، ويبقى القرار النهائي للحكم الرئيسي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q97', 'exam_eps_2022_specialty_lycee', 97, 'APS et apprentissage moteur', 'Les objectifs qui déterminent les contenus des mésocycles et des microcycles pour un athlète de haut niveau par rapport à la compétition se traduit par :', false, '[{"id": "A", "text": "Plus la phase de compétition est proche, plus le volume est petit et plus l''intensité et la spécificité sont moins importantes, préparant le pic de performance."}, {"id": "B", "text": "Plus la phase de compétition est loin, plus le volume est grand et plus l''intensité et la spécificité sont importante, préparant le pic de performance."}, {"id": "C", "text": "Plus la phase de compétition est proche, plus le volume est grant et plus l''intensité et la spécificité sont importantes, préparant le pic de performance."}, {"id": "D", "text": "Plus la phase de compétition est loin, plus le volume est réduit et plus l''intensité et la spécificité sont plus importantes, préparant le pic de performance."}]'::jsonb, ARRAY['A']::text[], 'كلما اقتربت المنافسة صغُر حجم العمل وارتفعت الشدة والنوعية. ملاحظة: صياغة الخيار A تحوي كلمة «أقل أهمية» تخالف هذا المبدأ، فجميع الخيارات فيها خلل والجواب مرجح.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, 'إجابة مرجّحة حسب المقدّم')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q98', 'exam_eps_2022_specialty_lycee', 98, 'APS et apprentissage moteur', 'L''apprentissage par induction dans le domaine des habiletés morpho cinétiques consiste à :', false, '[{"id": "A", "text": "Reproduire les fondements techniques et tactiques. Avec un nombre réduit de répétions face à un modèle de qualité sans mode d''emploi."}, {"id": "B", "text": "Répéter les fondements techniques et tactiques avec un nombre élevé de répétitions et un mode d''emploi."}, {"id": "C", "text": "Intégrer les fondements techniques et tactiques à partir d''un processus de déduction suite à diverses expériences motrices, avec mode d''emploi."}, {"id": "D", "text": "Apprendre les fondements techniques et tactiques en faisant des liens entre les familles de comportements et doit, sans mode d''emploi."}]'::jsonb, ARRAY['D']::text[], 'التعلم بالاستقراء يقوم على اكتشاف الأسس الفنية والتكتيكية بإيجاد روابط بين عائلات السلوكات دون تعليمات جاهزة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q99', 'exam_eps_2022_specialty_lycee', 99, 'APS et apprentissage moteur', 'Les spécificités du tir au handball par rapport aux autres tirs à bras cassé d''après les analyses cinématiques et dynamiques de ce geste précise qu''il s''agit de :', false, '[{"id": "A", "text": "Une rotation externe de l''humérus peu prononcée, une adduction horizontale du bras précoce et une succession des pics de vitesse linéaire du bras tireur particulière."}, {"id": "B", "text": "Une rotation interne de l''humérus très prononcée, une abduction verticale du bras en retard et une succession des pics de force linéaire du bras tireur particulière."}, {"id": "C", "text": "Une rotation externe de l''humérus peu prononcée, une adduction verticale du bras précoce et une succession des pics de vitesse linéaire du bras tireur particulière."}, {"id": "D", "text": "Une rotation interne de l''humérus très prononcée, une abduction horizontale du bras en retard et une succession des pics de force linéaire du bras tireur particulière."}]'::jsonb, ARRAY['A']::text[], 'التحليل الحركي لتسديدة كرة اليد بالذراع المثنية يبين دوراناً خارجياً قليلاً للعضد وتقريباً أفقياً مبكراً للذراع وتتابعاً خاصاً لذروى السرعة؛ والجواب مرجح.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, 'إجابة مرجّحة حسب المقدّم')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2022) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2022_specialty_lycee_q100', 'exam_eps_2022_specialty_lycee', 100, 'APS et apprentissage moteur', 'Pour motiver les élèves à la participation aux compétitions du sport scolaire, l''enseignant d''EPS devra :', false, '[{"id": "A", "text": "Fixer des buts et des niveaux d''aspiration relativement difficiles pour activer l''engagement de l''élève."}, {"id": "B", "text": "Maintenir le même objectif spécifique lié à la nature de l''activité pratiqué."}, {"id": "C", "text": "Provoquer un décalage entre les buts et les possibilités de l''élève."}, {"id": "D", "text": "Chercher l''adéquation entre les besoins de l''élève et l''activité pratiquée."}]'::jsonb, ARRAY['A']::text[], 'نظرية تحديد الأهداف تبيّن أن الأهداف الصعبة نسبياً ومستوى الطموح المرتفع يرفعان التزام التلميذ ودافعيته للمشاركة. ## الأسئلة غير المستردة (Q71–Q100) الأسئلة من Q71 إلى Q100 **غير مستردة بعد**: نص السؤال واختياراته الأربعة والجواب الصحيح والتعليل كلها ظاهرة على الشاشة في الفيديو فقط، ولم ينطق بها المقدّم، فلا يوجد أي أثر نصي لها في النص التلقائي أو في وصف الفيديو أو في أي مصدر مكتوب وُجد بالبحث. لا يُعرض هنا أي نص سؤال أو جواب، حتى لا يُختلَق محتوى غير موثَّق. - (الجزء 1 مكتمل: Q1–Q50 كلها مستردة — توقف الفيديو عند 30:02 على إطار جواب Q50). - Q71–Q100 — الجزء 2 (xRMp7A4HLww) — قراءة الإطارات جارية (Q71 يظهر حوالي 12:31). - Q51–Q100 — الجزء 2 (xRMp7A4HLww).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=xRMp7A4HLww', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
