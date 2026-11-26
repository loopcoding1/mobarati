-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023)
-- ====================================================================
-- المصدر: ملف الحل المصحّح (الموجة 2) 2023/التربية البدنية (التخصص) - دورة ولوج CRMEF 2023 (مصحح).md
--   فيديوهات يوتيوب (قناة #epsmaroc_ma): الجزء 1 Q1–Q50
--   https://www.youtube.com/watch?v=mYPh-HsNRw8
--   الجزء 2 Q51–Q100 https://www.youtube.com/watch?v=4n6UZvNqM4E
--   لا يوجد مفتاح رسمي ولا ورقة PDF؛ النصوص والاختيارات الأربعة استُرجعت
--   بقراءة إطارات الفيديوهين (2026-11-26)، والأجوبة حُقّقت سؤالاً بسؤال
--   بمصادر مستقلة (IHF، FIBA، FIVB، World Athletics، World Rugby، IFAB،
--   مراجع فيزيولوجيا/تشريح، المذكرة الوزارية 074X21).
--   عدد الأسئلة: 100 (QCM، أربعة اختيارات).
--   المفتاح المصحّح: DCBBADBAABABACABCCBACBBBAABDDCCABCABDCCBCCACDDDCADCBDCDCCCBDCAACCADCBCCABBDBCBCBABBCCACACACBDABCADCD
--   الحرف المنطوق صحيح (مؤكد) 77 · خاطئ (مؤكد) 6 · مرجّح «للتحقق» 17 · غير محلول 0.
--   تصحيحات مؤكدة: Q1 وQ14 وQ24 (من العشرة المزروعة) + Q55 وQ65 وQ100
--   (أخطاء صاحب الفيديو)؛ تصحيحات مرجّحة: Q8 وQ28 وQ75.
--   المدة غير مؤكدة (240 دقيقة مرجعاً من فبراير 2024)؛ تاريخ الدورة غير مؤكد.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2023_crmef_lycee', 'eps_lycee', 2023, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023)', 'دورة ولوج CRMEF 2023', 240, 100, 'المفتاح المصحّح (الموجة 2) — لا مفتاح الفيديو المنطوق: صرّح صاحب الفيديو بأن 10 من أجوبة Q1–Q50 خاطئة عمداً؛ حُدّد منها 5 وصُحّحت (مؤكدة Q1 وQ14 وQ24، ومرجّحة Q8 وQ28)، والخمسة الباقية لم تُحدَّد. أخطاء صاحب الفيديو في الجزء الثاني صُحّحت أيضاً (مؤكدة Q55 وQ65 وQ100، ومرجّحة Q75). Q27: الحرف الصحيح B مؤكد؛ المنطوق مسجَّل B في النصوص وسُمع A في قراءة الإطارات. المدة غير مؤكدة (240 دقيقة مرجعاً من دورة فبراير 2024)؛ تاريخ الدورة غير مؤكد (الفيديوهان يقولان «دورة 2023» فقط — الأرجح الكتابي دجنبر 2023)')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (100 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q1', 'exam_eps_2023_crmef_lycee', 1, 'APS et apprentissage moteur', 'La course de 4x400 m relais se déroule :', false, '[{"id": "A", "text": "Totalement en couloir"}, {"id": "B", "text": "100m en couloir"}, {"id": "C", "text": "200m en couloir"}, {"id": "D", "text": "500m en couloir"}]'::jsonb, ARRAY['D']::text[], 'World Athletics / Wikipédia FR « Relais 4 × 400 m » : « Trois virages sont courus en couloirs » — le 1er relayeur toute sa course en couloir + le 2e jusqu''à la sortie du 1er virage, soit 500 m en couloir (« les coureurs restent dans leur couloir respectif pendant trois virages (500 m) »). ملاحظة: **مرجّح بقوة أنه أحد العشرة المزروعة:** الحرف B مسموع بوضوح ومؤكد من نصين، والخطأ ليس خطأ سماع بل إجابة خاطئة عمداً على ما يبدو؛ الخيار B (100 m) يصف فقط الجزء الذي يجريه العدّاء الثاني في ممره، لا مجموع السباق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, 'تصحيح مؤكد — المنطوق B كان خاطئاً عمداً (من العشرة المزروعة في الجزء الأول)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q2', 'exam_eps_2023_crmef_lycee', 2, 'APS et apprentissage moteur', 'L''entraînement sportif de haut niveau se base surtout sur :', false, '[{"id": "A", "text": "Les tâches motrices qui servent à transmettre un contenu sportif"}, {"id": "B", "text": "Les situations d''apprentissage qui visent l''amélioration des compétences motrices"}, {"id": "C", "text": "Les procédés techniques et les exercices physiques qui visent l''amélioration de la performance"}, {"id": "D", "text": "Les habiletés motrices d''un individu dans une pratique sportive donnée"}]'::jsonb, ARRAY['C']::text[], 'Wikipédia « Entraînement sportif » : « l''ensemble des méthodes et exercices physiques visant l''entretien et l''amélioration des performances sportives » — يطابق نص الخيار C حرفياً (« procédés techniques et exercices physiques qui visent l''amélioration de la performance »)؛ أما A وB فتصفان التعليم/التعلّم لا التدريب.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q3', 'exam_eps_2023_crmef_lycee', 3, 'APS et apprentissage moteur', 'Les fondamentaux de la contre-attaque dans les sports de démarquage sont :', false, '[{"id": "A", "text": "Diminuer les relais et écarter l''espace,"}, {"id": "B", "text": "Transition rapide, passe en profondeur et le timing"}, {"id": "C", "text": "Démarquage, anticipation et vitesse d''exécution"}, {"id": "D", "text": "Perception, anticipation et transition rapide"}]'::jsonb, ARRAY['B']::text[], 'FIFA Training Centre (contre-attaque) : la réussite du contre repose sur la vitesse d''exécution/transition, les passes en profondeur (« into space ») et le timing des appels et des passes — العناصر الثلاثة مجتمعة في الخيار B فقط؛ D (perception/anticipation/transition) عام ويفتقد التمريرة العميقة والتوقيت. ملاحظة: الجذع مشوَّش (« sports de démarquage ») لكن الخيار B هو الأخصّ؛ يبقى احتمال D قائماً بدرجة أقل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q4', 'exam_eps_2023_crmef_lycee', 4, 'Physiologie', 'Les têtes de myosine possèdent des sites de fixation pour :', false, '[{"id": "A", "text": "La troponine"}, {"id": "B", "text": "L''ATP"}, {"id": "C", "text": "La tropomyosine"}, {"id": "D", "text": "Le calcium"}]'::jsonb, ARRAY['B']::text[], 'LibreTexts, Muscle Contraction (crossbridge cycling) : chaque tête de myosine possède un site de fixation pour l''ATP (et un pour l''actine)؛ الكالسيوم يرتبط بالتروبونين لا بالميوزين — الخيار B. ملاحظة: مؤكد بالخيارات كما في الملف الرئيسي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q5', 'exam_eps_2023_crmef_lycee', 5, 'APS et apprentissage moteur', 'En Basket-ball la défense individuelle s''effectue généralement par deux options :', false, '[{"id": "A", "text": "Se situer entre la cible et l''attaquant ou dans la ligne de passe pour intercepter"}, {"id": "B", "text": "Être directement sur le porteur de balle ou prêt de lui pour contrôler le jeu"}, {"id": "C", "text": "Conserver son poste ou défendre en fonction du ballon"}, {"id": "D", "text": "Être prêt du tireur ou le gêner pour augmenter l''incertitude chez les adversaires"}]'::jsonb, ARRAY['A']::text[], 'Défense individuelle (coachcedric / principes Ball-You-Basket) : « la première chose à apprendre est d''être entre le joueur avec le ballon et le panier » + « serrer les lignes de passe » pour intercepter — الخيار A يجمع المبدأين اللذين يسميهما الجذع « deux options »؛ B وC وD سلوكيات دفاعية صحيحة لكنها لا تطابق صيغة « deux options ». ملاحظة: الجذع (« par deux options ») غامض؛ الحكم مبني على مطابقة نص الخيار A للمبدأين الكلاسيكيين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q6', 'exam_eps_2023_crmef_lycee', 6, 'Biomécanique', 'En biomécanique, un double salto s''exécute :', false, '[{"id": "A", "text": "Dans un plan frontal par rapport à un axe transversal"}, {"id": "B", "text": "Dans un plan transversal par rapport à un axe longitudinal"}, {"id": "C", "text": "Dans un plan frontal par rapport à un axe latéral"}, {"id": "D", "text": "Dans un plan sagittal par rapport à un axe transversal"}]'::jsonb, ARRAY['D']::text[], 'بيوميكانيك: الشقلبة (salto) دوران أمامي/خلفي في المستوى السهمي (sagittal) حول محور مستعرض (transverse/ médio-latéral) — الخيار D؛ المستوى الجبهي/المحور الطولي يخصان الدوران الجانبي/اللّف.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q7', 'exam_eps_2023_crmef_lycee', 7, 'APS et apprentissage moteur', 'La validation d''une performance dans une course de vitesse tient compte de :', false, '[{"id": "A", "text": "N''importe quelle partie du corps qui franchit la ligne d''arrivée."}, {"id": "B", "text": "Torse qui atteint le plan vertical du bord intérieur de la ligne d''arrivée"}, {"id": "C", "text": "La tête de l''athlète qui atteint le plan vertical du bord intérieur de la ligne d''arrivée"}, {"id": "D", "text": "Des jambes de l''athlète qui atteignent le plan vertical du bord intérieur de la ligne d''arrivée"}]'::jsonb, ARRAY['B']::text[], 'World Athletics, Technical Rules (finish) : l''athlète est classé selon l''ordre où son torse — à l''exclusion de la tête, du cou, des bras, des jambes, des mains et des pieds — atteint le plan vertical du bord le plus proche de la ligne d''arrivée — الخيار B حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q8', 'exam_eps_2023_crmef_lycee', 8, 'APS et apprentissage moteur', 'Le grand écart facial se réalise par une bascule:', false, '[{"id": "A", "text": "Antérieure du bassin associée à une hyperlordose."}, {"id": "B", "text": "Postérieure du bassin associée à une hyperlordose"}, {"id": "C", "text": "Postérieure du bassin associée à une hypercyphose"}, {"id": "D", "text": "Antérieure du bassin associée à une scoliose"}]'::jsonb, ARRAY['A']::text[], 'البسكل الأمامي للحوض (antéversion) يقترن بفرط التقوّس القطني (hyperlordose)، والبسكل الخلفي يمسّح التقوّس؛ وفتح الورك في الإكارت يتطلب بسكلاً أمامياً يفتح التجويف الحُقّي (anteversion opens the hip socket; retroversion limits range) — الزوج المتماسك هو A (antérieure + hyperlordose)، لا C. ملاحظة: **مرشّح لأن يكون أحد العشرة المزروعة** (الحرف C مسموع بوضوح، فالخطأ ليس خطأ سماع) — لكن التصحيح إلى A **مرجَّح لا مؤكد**: المصدر المباشر للإكارت الوجهي ضعيف (نصيحة مدرّبة مرونة + قاعدة الاقتران الحوض–العمود)، ولم يُعثر على نص مرجعي فرنسي يسمّي بسكل الإكارت الوجهي صراحة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q9', 'exam_eps_2023_crmef_lycee', 9, 'APS et apprentissage moteur', 'Le résultat du rapport entre les tirs tentés et les tirs réussis (TT/TR) est un indice qui renseigne sur:', false, '[{"id": "A", "text": "L''efficacité du tir"}, {"id": "B", "text": "La qualité des tirs"}, {"id": "C", "text": "Le nombre de tirs"}, {"id": "D", "text": "Les tirs de loin et de près"}]'::jsonb, ARRAY['A']::text[], 'تعريف FG% (field-goal percentage = tirs réussis ÷ tirs tentés × 100) : النسبة تقيس الدقة/الفعالية في التسديد (adresse/efficacité) — الخيار A. ملاحظة: فكرة مؤكدة في الموجة الأولى، ومطابقة الخيار مؤكدة هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q10', 'exam_eps_2023_crmef_lycee', 10, 'Sport scolaire', 'Les séances des activités de l''ASS au Lycée se répartissent comme suit :', false, '[{"id": "A", "text": "2 heures le mercredi après-midi, 3 heures le vendredi après-midi"}, {"id": "B", "text": "3 heures le vendredi après-midi"}, {"id": "C", "text": "2 heures le mercredi après-midi"}, {"id": "D", "text": "3 heures le mercredi après-midi, 2 heures le vendredi après-midi"}]'::jsonb, ARRAY['B']::text[], 'المغرب (دورة تكوين « Organisation du Sport Scolaire ») : « Le jour réservé aux activités de l''ASS est le mercredi et le vendredi après-midi pour le secondaire collégial et le vendredi après-midi pour le secondaire qualifiant » — أي الثانوي التأهيلي (Lycée) جمعةً فقط؛ وحصة ASS الأسبوعية 3 ساعات (مشروع ASS، ثانوية الموحدين) — الخيار B (3 h le vendredi après-midi). ملاحظة: A (2 h merc. + 3 h vend.) هو نمط الإعدادي لا الثانوي؛ D يضيف الأربعاء للثانوي بلا سند.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q11', 'exam_eps_2023_crmef_lycee', 11, 'Physiologie', 'L''âge le plus adéquat pour développer les qualités physiques', false, '[{"id": "A", "text": "De 6 à 12 ans"}, {"id": "B", "text": "Entre 12 et 20 ans"}, {"id": "C", "text": "Entre 20 et 30 ans"}, {"id": "D", "text": "Le long de la vie"}]'::jsonb, ARRAY['A']::text[], 'Hirtz/Weineck + Prezi (TD 2, périodes sensibles) : الفترة الحساسة للتنسيق والسرعة والمرونة هي 6–12 سنة (النضج السريع للجهاز العصبي المركزي حتى بداية البلوغ)؛ القوة والتحمّل اللاهوائي لا يتطوران أساساً إلا بعد 12–15 سنة — الخيار A. ملاحظة: الجذع عام (« les qualités physiques » دون تسمية صفة)؛ A هو الجواب المعياري في مقررات EPS، لكن بلا صفة محددة يبقى ترجيحاً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q12', 'exam_eps_2023_crmef_lycee', 12, 'Physiologie', 'Le type I de fibres musculaires est :', false, '[{"id": "A", "text": "Très fatigable"}, {"id": "B", "text": "Résistant à la fatigue"}, {"id": "C", "text": "Explosif"}, {"id": "D", "text": "Peut fatigable"}]'::jsonb, ARRAY['B']::text[], 'OpenStax Anatomy & Physiology 10.5 / Pearson : fibres de type I = lentes (slow-twitch), oxydatives, riches en mitochondries/myoglobine, résistantes à la fatigue — الخيار B. ملاحظة: فكرة مؤكدة في الموجة الأولى، ومطابقة الخيار مؤكدة هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q13', 'exam_eps_2023_crmef_lycee', 13, 'Accidents et secourisme', 'Une déchirure musculaire est :', false, '[{"id": "A", "text": "Une lésion d''un muscle lors d''un effort physique important"}, {"id": "B", "text": "Étirement du muscle lors d''un effort physique important"}, {"id": "C", "text": "Un gonflement survenu au niveau du muscle lors d''un effort physique"}, {"id": "D", "text": "Une hyper-contraction du muscle lors d''un effort physique"}]'::jsonb, ARRAY['A']::text[], 'HSS / Montefiore (Muscle Strain) : une déchirure musculaire est une rupture partielle ou complète (lésion) de fibres musculaires lors d''un effort important — الخيار A (« lésion d''un muscle lors d''un effort physique important »)؛ B يصف التمدد (étirement) لا التمزق. ملاحظة: فكرة مؤكدة في الموجة الأولى، ومطابقة الخيار مؤكدة هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q14', 'exam_eps_2023_crmef_lycee', 14, 'Sport scolaire', 'L''assemblée générale de l''association sportive scolaire tient une session ordinaire [illisible — نهاية الجذع مغطاة بشعار EPS MAROC؛ الخيارات (مدد) توحي بأنها تستمر «tous les :»]', false, '[{"id": "A", "text": "Les 4 ans"}, {"id": "B", "text": "Les 3ans"}, {"id": "C", "text": "Les 2 ans"}, {"id": "D", "text": "Chaque année"}]'::jsonb, ARRAY['C']::text[], 'النظام الأساسي للجمعية الرياضية المدرسية، المادة 9 (نص منشور على mostajad.com) : « يعقد الجمع العام دورة عادية كل سنتين » — الخيار C (Les 2 ans)؛ D (Chaque année) خطأ. ملاحظة: **مرجّح بقوة أنه أحد العشرة المزروعة:** الحرف D مسموع بوضوح، والنص القانوني قاطع، والخطأ يطابق نمط الفخ (إجابة تبدو بديهية — « كل سنة » — لكنها مخالفة للنظام الأساسي).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, 'تصحيح مؤكد — المنطوق D كان خاطئاً عمداً (من العشرة المزروعة في الجزء الأول)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q15', 'exam_eps_2023_crmef_lycee', 15, 'Accidents et secourisme', 'Les fractures comminutives surviennent :', false, '[{"id": "A", "text": "Lorsque l''os se brise en multiple petits fragments"}, {"id": "B", "text": "Lorsqu''un os est fracturé au niveau de l''hypophyse"}, {"id": "C", "text": "Lorsqu''un os est fracturé au niveau de la diaphyse"}, {"id": "D", "text": "Lorsqu''il y a présence d''une fissure dans l''os"}]'::jsonb, ARRAY['A']::text[], 'KidsHealth (Comminuted Fractures) : « A comminuted fracture is a type of broken bone. The bone is broken into more than two pieces » — الخيار A (« l''os se brise en multiple petits fragments »).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q16', 'exam_eps_2023_crmef_lycee', 16, 'APS et apprentissage moteur', 'La sanction d''un défenseur qui pousse violemment par derrière ou par le côté un joueur qui s''apprête à tirer dans les 9 mètres est :', false, '[{"id": "A", "text": "Jet de 7 mètres"}, {"id": "B", "text": "Jet de 7 mètres plus expulsion temporaire du fautif"}, {"id": "C", "text": "9 mètres plus exclusion temporaire du fautif"}, {"id": "D", "text": "Avertissement et exclusion temporaire du fautif"}]'::jsonb, ARRAY['B']::text[], 'IHF Rules of the Game, Règles 8:3–8:5, 14:1, 16 : دفع لاعب يستعد للتسديد (من الخلف/الجانب) يدمّر فرصة هدف واضحة ⇒ رمية 7 م + إيقاف مؤقت دقيقتين (استبعاد إن كانت الخطورة شديدة) — الخيار B حرفياً. ملاحظة: فكرة مؤكدة في الموجة الأولى، ومطابقة الخيار مؤكدة هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q17', 'exam_eps_2023_crmef_lycee', 17, 'APS et apprentissage moteur', 'Le terme spécifique de la phase offensive en Rugby est :', false, '[{"id": "A", "text": "Permutation"}, {"id": "B", "text": "Espacement"}, {"id": "C", "text": "Redoublement"}, {"id": "D", "text": "Étagement"}]'::jsonb, ARRAY['C']::text[], 'Albaladejo, « Le rugby d''aujourd''hui » (Tactique d''aujourd''hui) : « les redoublements des centres […] ne sont que des détails de base, une sorte d''ABC du rugby d''attaque » — الـ Redoublement مصطلح هجومي نوعي في الرغبي؛ الإتاجمان (D) مبدأ تنظيمي عام (العمق) والإسباسمون (B) مبدأ العرض، لا « المصطلح النوعي » للمرحلة الهجومية. ملاحظة: الجذع مبتور (« est : » دون تتمة) فلا يمكن الجزم؛ D هو المنافس الرئيسي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q18', 'exam_eps_2023_crmef_lycee', 18, 'Sport scolaire', 'L''association sportive scolaire s''intéresse essentiellement au :', false, '[{"id": "A", "text": "Sport de masse pendant toute l''année scolaire"}, {"id": "B", "text": "Sport d''élite pendant toute l''année scolaire"}, {"id": "C", "text": "Sport de masse et d''élite pendant toute l''année scolaire"}, {"id": "D", "text": "Sport de masse et d''élite lors des périodes de compétitions sportives scolaires"}]'::jsonb, ARRAY['C']::text[], 'OP 2007 (votreeps.com, « L''ASS ») : أنشطة الجمعية مبنية على ركيزتين متكاملتين — « Le Sport de Masse » (إدماج أكبر عدد) و« Le Sport d''Élite » (انتقاء المواهب من قاعدة الممارسة) — طوال السنة الدراسية (بطولات بين الأقسام + منافسات)؛ D يحصر الاثنين في فترات المنافسات فقط — الخيار C. ملاحظة: التمييز C/D هو « طوال السنة » مقابل « فترات المنافسات فقط »؛ المصدر يؤيد الاستمرارية السنوية.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q19', 'exam_eps_2023_crmef_lycee', 19, 'APS et apprentissage moteur', 'Les différents engins en gymnastique rythmique sont :', false, '[{"id": "A", "text": "Massues, corde, Ballon, ruban, élastique"}, {"id": "B", "text": "Cerceaux, Ballon, Massues, Ruban, corde"}, {"id": "C", "text": "Corde, Ballon, Ruban, cerceaux"}, {"id": "D", "text": "Ballons, ruban, cerceaux, trampoline"}]'::jsonb, ARRAY['B']::text[], 'FIG / Olympics.com / Britannica : أجهزة الجمباز الإيقاعي الخمسة هي الحبل والطوق والكرة والصولجانات والشريط (corde, cerceau, ballon, massues, ruban) — الخيار B حرفياً؛ A يضيف المطاط، D يضيف الترامبولين. ملاحظة: فكرة مؤكدة في الموجة الأولى، ومطابقة الخيار مؤكدة هنا.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q20', 'exam_eps_2023_crmef_lycee', 20, 'APS et apprentissage moteur', 'Une passe décisive est qualifiée comme :', false, '[{"id": "A", "text": "La dernière passe à partir de laquelle on marque un but"}, {"id": "B", "text": "La dernière passe à partir de laquelle on relance une attaque"}, {"id": "C", "text": "La dernière passe à partir de laquelle on reçoit un pénalty"}, {"id": "D", "text": "La dernière passe qui débouche sur une contre-attaque"}]'::jsonb, ARRAY['A']::text[], 'تعريف التمريرة الحاسمة (passe décisive / assist) : آخر تمريرة يُسجَّل منها هدف — الخيار A حرفياً؛ B وC وD تصف نتائج أخرى (استئناف هجوم، ركلة جزاء، هجمة مرتدة). ملاحظة: مؤكد بالخيارات كما في الملف الرئيسي.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q21', 'exam_eps_2023_crmef_lycee', 21, 'Anatomie', 'L''Ostéologie est la partie de l''anatomie qui:', false, '[{"id": "A", "text": "Explique les anomalies des différentes pièces osseuses du corps humain"}, {"id": "B", "text": "Traite les différentes déformations du corps humain"}, {"id": "C", "text": "Traite les différentes pièces osseuses du corps humain"}, {"id": "D", "text": "Explique les anomalies des différents organes du corps humain"}]'::jsonb, ARRAY['C']::text[], 'الأوستيولوجيا = دراسة العظام (Britannica «Osteology»؛ ملف فبراير 2024: «L''étude des os relève de l''ostéologie»)؛ الخيار C «Traite les différentes pièces osseuses du corps humain» هو المطابق حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q22', 'exam_eps_2023_crmef_lycee', 22, 'APS et apprentissage moteur', 'En volley-ball, le libero a le droit :', false, '[{"id": "A", "text": "De contrer un joueur adverse à l''intérieur des trois mètres"}, {"id": "B", "text": "D''effectuer une passe dans la ligne des trois mètres"}, {"id": "C", "text": "D''effectuer une attaque au-dessus du filet dans la ligne des trois mètres"}, {"id": "D", "text": "D''effectuer un service d''au moins dans un set"}]'::jsonb, ARRAY['B']::text[], 'FIVB Règle 19.3.1: الليبيرو لا يخدم ولا يعترض ولا ينهي هجمة فوق الشبكة، لكن له أن يمرّر الكرة بما فيها في المنطقة الأمامية؛ جذع وخيارات مطابقان حرفياً لملف فبراير 2024 Q28 وجوابه B.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q23', 'exam_eps_2023_crmef_lycee', 23, 'Sport scolaire', 'L''encadrement de la formation sportive dans le cadre des parcours sport-études est par :', false, '[{"id": "A", "text": "Les professeurs d''EPS de l''établissement concerné uniquement"}, {"id": "B", "text": "Les professeurs d''EPS de l''établissement concerné et les entraîneurs des clubs, ligues, ou fédération sportive"}, {"id": "C", "text": "Les entraîneurs des clubs, ligues, ou fédération sportive uniquement"}, {"id": "D", "text": "En alternance : une semaine par les professeurs d''EPS et une par les cadres des clubs"}]'::jsonb, ARRAY['B']::text[], 'لا نص وزاري مباشر عُثر عليه؛ لكن مسار sport-études مشروع مزدوج (مدرسة + مؤسسة رياضية — ملف أكتوبر 2024: التكوين الرياضي في المؤسسة المدرسية والمؤسسة الرياضية معاً)، فالتأطير المشترك (أساتذة EPS + مدربي الأندية/العصب/الجامعة، الخيار B) هو الوحيد المتماسك؛ A وC أحاديّا الفاعل وD (التناوب الأسبوعي) مختلَق. ملاحظة: مرجّح لا مؤكد — لم يُسترجع نص وزاري يسمّي المؤطِّرين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q24', 'exam_eps_2023_crmef_lycee', 24, 'Physiologie', 'Le rôle du réflexe d''étirement est de:', false, '[{"id": "A", "text": "Rétablir l''état normal du muscle en état d''éveil ou de sommeil"}, {"id": "B", "text": "Contrôler les changements brusques ou involontaires de la longueur du muscle"}, {"id": "C", "text": "Déclencher les différents mouvements volontaires du muscle"}, {"id": "D", "text": "Déclencher les différents mouvements involontaires du muscle"}]'::jsonb, ARRAY['B']::text[], 'Kenhub «Stretch reflex»: المنعكس انقباض العضلة رداً على تمددها، إجراء وقائي يمنع التمزق عبر المغزل العضلي؛ الخيار B «Contrôler les changements brusques ou involontaires de la longueur du muscle» هو التعريف، أما A («Rétablir l''état normal… en état d''éveil ou de sommeil») فلا علاقة له بالمنعكس. ملاحظة: **مرجّح مزروع:** A مشتِّت لا معنى فيزيولوجي له — خطأ متعمَّد محتمل جداً، لا خطأ سماع (A مسموع بوضوح ومؤكد من النص العربي).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, 'تصحيح مؤكد — المنطوق A كان خاطئاً عمداً (من العشرة المزروعة في الجزء الأول)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q25', 'exam_eps_2023_crmef_lycee', 25, 'APS et apprentissage moteur', 'Le drop en rugby :', false, '[{"id": "A", "text": "Se produit lorsque le joueur laisse tomber le ballon sur le sol et le Frappe juste au moment où il rebondit"}, {"id": "B", "text": "S''effectue directement à la touche du ballon tenu dans son propre camp"}, {"id": "C", "text": "S''effectue après avoir aplatit le ballon dans l''en-but adverse"}, {"id": "D", "text": "Se produit après un coup franc ballon bloqué par terre"}]'::jsonb, ARRAY['A']::text[], 'World Rugby (Definitions): الـdrop-kick هو إسقاط الكرة وركلها لحظة ارتفاعها بعد الارتداد الأول — وهو نص الخيار A حرفياً؛ (قيمة الدروب 3 نقاط صحيحة أيضاً لكنها ليست من بين الخيارات، فالسؤال كما هو مطبوع سؤال تعريف لا سؤال قيمة). ملاحظة: التحقق السابق سجّل فكرة «3 نقاط»؛ الخيارات تثبت أن المطلوب التعريف، والجواب A صحيح على الوجهين.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q26', 'exam_eps_2023_crmef_lycee', 26, 'Physiologie', 'La performance en 800 m repose sur l''amélioration de la:', false, '[{"id": "A", "text": "Capacité anaérobie lactique."}, {"id": "B", "text": "Puissance anaérobie alactique."}, {"id": "C", "text": "Endurance fondamentale."}, {"id": "D", "text": "Capacité anaérobie alactique"}]'::jsonb, ARRAY['A']::text[], 'ملف فبراير 2024 Q23 (جذع مطابق): 800 م «épreuve type de la filière anaérobie lactique» وجوابه C هناك = «puissance anaérobie lactique»؛ في ورقة 2023 الخيار المقابل هو A «Capacité anaérobie lactique»؛ واللاكتيكي يهيمن على الشق اللاهوائي بعد الثواني الأولى (الألاكتيكي يغطي ~10–15 ث فقط). ملاحظة: تنبيه: الهوائي يساهم بنحو 60% من طاقة 800 م (Duffield et al. 2005) لكنه ليس من بين الخيارات؛ A هو الأفضل بين المعروض.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q27', 'exam_eps_2023_crmef_lycee', 27, 'APS et apprentissage moteur', 'Pour gagner un set en volley-ball, il faut réaliser 25 points avec une avance:', false, '[{"id": "A", "text": "D''au moins un point sur l''autre équipe"}, {"id": "B", "text": "D''au moins deux points d''écart sur l''autre équipe"}, {"id": "C", "text": "D''un point d''écart sur l''autre équipe"}, {"id": "D", "text": "D''au moins trois points d''écart sur l''autre équipe"}]'::jsonb, ARRAY['B']::text[], 'FIVB Règles 6.2–6.3: الفوز بالشوط = 25 نقطة بفارق نقطتين على الأقل؛ الخيار B «D''au moins deux points d''écart» مطابق؛ جذع مطابق لملف فبراير 2024 Q15 وجوابه B. ملاحظة: **نزاع موثّق:** الملف يسجّل المنطوق B، لكن المتصفح سمع A أثناء قراءة الإطارات. الحرف الصحيح B في كل الأحوال؛ إن كان صاحب الفيديو قال A فعلاً فهو أحد الأجوبة العشرة المزروعة، وإن قال B فالمتصفح أخطأ السماع. لا يمكن الحسم بين الفرضيتين من النصوص وحدها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q28', 'exam_eps_2023_crmef_lycee', 28, 'Accidents et secourisme', 'Généralement le délai avant la reprise de l''activité physique selon un traumatisme musculaire aigue pour les déchirures dure :', false, '[{"id": "A", "text": "4 semaines"}, {"id": "B", "text": "3 semaines"}, {"id": "C", "text": "7 semaines"}, {"id": "D", "text": "5 semaines"}]'::jsonb, ARRAY['D']::text[], 'لتمزق جزئي (grade 2 / déchirure-claquage): الشفاء والعودة 4–6 أسابيع (Sungym/Rev. méd. suisse؛ grade 2 = 4–8 أسابيع في مصادر فيزيو أخرى)؛ D = 5 أسابيع هو منتصف نافذة 4–6 أسابيع، وA = 4 أسابيع داخلها أيضاً، وC = 7 أسابيع خارج نافذة grade 2 (وإن كان داخل نافذة العودة 4–8). ملاحظة: **للتحقق — إجابة مرجّحة:** المنطوق C غير محسوم خطؤه؛ إن كان الجذع المخفي يحدد «3e degré» (كما لمّح الملف: «déchirures dures»؟) فالصحيح C (rupture: 6–8 أسابيع فأكثر) لا D. درجة التمزق في الجذع غير مقروءة، فلا جزم.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q29', 'exam_eps_2023_crmef_lycee', 29, 'APS et apprentissage moteur', 'La transformation en rugby se fait en bottant le ballon:', false, '[{"id": "A", "text": "Vers le camp adverse après avoir sorti de la mêlée"}, {"id": "B", "text": "Vers le camp adverse allant directement vers l''en-but"}, {"id": "C", "text": "Vers le camp adverse après une infraction du jeu"}, {"id": "D", "text": "Entre les poteaux de but adverse après un essai marqué"}]'::jsonb, ARRAY['D']::text[], 'التحويلة: ركلة بين قائمي مرمى الخصم بعد تسجيل المحاولة (World Rugby Law 8؛ التحويلة الناجحة = نقطتان)؛ جذع وخيارات مطابقان حرفياً لملف أكتوبر 2024 Q82 وجوابه D.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q30', 'exam_eps_2023_crmef_lycee', 30, 'Anatomie', 'Le plan sagittal divise le sujet en une partie :', false, '[{"id": "A", "text": "Supérieure et une partie inférieure"}, {"id": "B", "text": "Longitudinale et une partie verticale"}, {"id": "C", "text": "Droite et une partie gauche"}, {"id": "D", "text": "Antérieure et une partie postérieure"}]'::jsonb, ARRAY['C']::text[], 'LibreTexts «1.6: Body Planes»: المستوى السهمي (sagittal) عمودي أمامي-خلفي يفصل الجسم إلى يمين ويسار؛ الخيار C مطابق؛ جذع مطابق لملف فبراير 2024 Q70 وجوابه C.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q31', 'exam_eps_2023_crmef_lycee', 31, 'APS et apprentissage moteur', 'Un quart temps en basket-ball en FIBA dure :', false, '[{"id": "A", "text": "12 minutes sans arrêt du chronomètre"}, {"id": "B", "text": "10 minutes sans arrêt du chronomètre"}, {"id": "C", "text": "10 minutes avec arrêt du chronomètre"}, {"id": "D", "text": "12 minutes avec arrêt du chronomètre"}]'::jsonb, ARRAY['C']::text[], 'FIBA Official Basketball Rules: المباراة 4 أرباع × 10 دقائق، والساعة تتوقف عند الكرات الميتة (الأخطاء، المخالفات، الرميات الحرة، خروج الكرة)؛ الخيار C «10 minutes avec arrêt du chronomètre» مطابق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q32', 'exam_eps_2023_crmef_lycee', 32, 'Anatomie', 'Le plan transversal divise le sujet en une partie:', false, '[{"id": "A", "text": "Supérieure et une partie inférieure"}, {"id": "B", "text": "Droite et une partie gauche"}, {"id": "C", "text": "Longitudinale et une partie verticale"}, {"id": "D", "text": "Antérieure et une partie postérieure"}]'::jsonb, ARRAY['A']::text[], 'LibreTexts «1.6: Body Planes»: المستوى المستعرض (transverse/axial) أفقي يفصل الجسم إلى علوي وسفلي؛ الخيار A مطابق (ملف فبراير 2024 Q70، نفس التعليل).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q33', 'exam_eps_2023_crmef_lycee', 33, 'APS et apprentissage moteur', 'Le résultat du rapport entre les tirs tentés et les entrées en possession de la balle (TT/E) est un indice qui renseigne sur :', false, '[{"id": "A", "text": "Le nombre de tirs marqués"}, {"id": "B", "text": "La progression vers la cible"}, {"id": "C", "text": "La récupération de la balle"}, {"id": "D", "text": "La conservation de la balle"}]'::jsonb, ARRAY['B']::text[], 'لم يُعثر على مرجع يعرّف TT/E بهذا اللفظ؛ بالاستبعاد والمنطق الإحصائي: TT/E = محاولات التسديد ÷ مرات دخول الاستحواذ = نسبة الاستحواذات التي تنتهي بمحاولة تسديد، أي قياس التقدم نحو الهدف (B)؛ C (استرداد الكرة = اعتراضات/متابعات) وD (الحفاظ على الكرة = عكس التسديد) يخصّان طورين آخرين، وA (عدد الأهداف المسجلة) يتطلب TR لا TT. ملاحظة: **للتحقق — إجابة مرجّحة:** لا مصدر مباشر للصيغة TT/E؛ B هو الأرجح بالاستبعاد لا بالتعريف الموثّق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q34', 'exam_eps_2023_crmef_lycee', 34, 'APS et apprentissage moteur', 'La faculté de répéter le plus grand nombre de cycles gestuels en un temps donné est :', false, '[{"id": "A", "text": "Force optimale gestuelle"}, {"id": "B", "text": "Force maximale gestuelle"}, {"id": "C", "text": "Fréquence gestuelle"}, {"id": "D", "text": "Explosivité gestuelle"}]'::jsonb, ARRAY['C']::text[], 'dadda.ma (pédagogie EPS): «Fréquence gestuelle: c''est le nombre de mouvements exécutés par unité de temps» — وهو نص الجذع تقريباً؛ الخيار C «Fréquence gestuelle» مطابق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q35', 'exam_eps_2023_crmef_lycee', 35, 'Accidents et secourisme', 'La cause de l''entorse de la cheville est un étirement excessif:', false, '[{"id": "A", "text": "Des ligaments de l''articulation de la cheville"}, {"id": "B", "text": "Des muscles spécifiques de l''articulation de la cheville"}, {"id": "C", "text": "Des ligaments de la cheville et le soléaire"}, {"id": "D", "text": "Tendon d''Achille et le triceps sural"}]'::jsonb, ARRAY['A']::text[], 'StatPearls «Acute Ankle Sprain» / AAOS: التواء الكاحل إصابة أربطة الكاحل بتمدد مفرط/تمزق؛ الخيار A «Des ligaments de l''articulation de la cheville» مطابق؛ متسق مع Q87 (ملف فبراير 2024 Q18 وجوابه A).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q36', 'exam_eps_2023_crmef_lycee', 36, 'Physiologie', 'L''actine et la myosine sont des protéines:', false, '[{"id": "A", "text": "Structurales"}, {"id": "B", "text": "Contractiles"}, {"id": "C", "text": "Régulatrices"}, {"id": "D", "text": "Inhibitrices"}]'::jsonb, ARRAY['B']::text[], 'LibreTexts «Muscle Contraction»: الأكتين والميوزين هما البروتينان المقلّصان (contractile proteins) في العضلة؛ الخيار B مطابق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q37', 'exam_eps_2023_crmef_lycee', 37, 'APS et apprentissage moteur', 'Les agrès officiels programmés en gymnastique artistique masculine sont :', false, '[{"id": "A", "text": "Anneaux, barre fixe, cheval d''arçons, sol et barre asymétrique"}, {"id": "B", "text": "Poutre, le sol, barre fixe, barre parallèle et anneaux,"}, {"id": "C", "text": "Barre asymétrique, table de saut, barre fixe, barre parallèle et le sol"}, {"id": "D", "text": "Table de saut, barre fixe, barre parallèle, anneaux, cheval d''arçons et le sol"}]'::jsonb, ARRAY['D']::text[], 'FIG / Britannica: أجهزة الجمباز الفني للرجال ستة: الأرضي، حصان المقابض، الحلقات، القفز، المتوازيان، العقلة؛ الخيار D وحده يسرد الستة كاملة («Table de saut, barre fixe, barre parallèle, anneaux, cheval d''arçons et le sol»).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q38', 'exam_eps_2023_crmef_lycee', 38, 'Sport scolaire', 'Parmi les domaines de décaissement des fonds liés aux associations sportives scolaires [illisible — نهاية الجذع مغطاة بشعار EPS MAROC في كل الإطارات]', false, '[{"id": "A", "text": "Frais d''organisation d''événements artistiques et culturels"}, {"id": "B", "text": "Frais pour construire des nouvelles classes pour les élèves"}, {"id": "C", "text": "Frais de transport et de nourriture pour les équipes sportives, et leurs accompagnateurs hors l''établissement concerné"}, {"id": "D", "text": "Frais d''entretiens d''espace scolaire au sein de leur établissement concerné"}]'::jsonb, ARRAY['C']::text[], 'أموال الجمعية الرياضية المدرسية مخصصة للنشاط الرياضي المدرسي (تنظيم المنافسات ومشاركة الفرق)؛ C وحده نفقة رياضية مشروعة (نقل وإطعام الفرق ومرافقيها خارج المؤسسة)؛ A (فعاليات فنية/ثقافية) وB (بناء أقسام جديدة) وD (صيانة فضاء المدرسة) خارج اختصاص الجمعية وميزانيتها. لم يُسترجع نص المذكرة 074X21 الأصلي لتأكيد قائمة النفقات. ملاحظة: **للتحقق — إجابة مرجّحة:** نهاية الجذع مغطاة بشعار EPS في كل الإطارات؛ إن كان السؤال «… ne figure PAS parmi les domaines» (أيُّها ليس من مجالات الصرف) فالصحيح B (بناء الأقسام) لا C. الحكم C مبني على فرض أن السؤال يسأل عن مجال صرف مشروع.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q39', 'exam_eps_2023_crmef_lycee', 39, 'Physiologie', 'La molécule qui sert au stockage du sucre dans le foie est :', false, '[{"id": "A", "text": "Amidon"}, {"id": "B", "text": "Cellulose"}, {"id": "C", "text": "Glycogène"}, {"id": "D", "text": "Ribosome"}]'::jsonb, ARRAY['C']::text[], 'StatPearls «Physiology, Glucose»: الغليكوجين هو بوليمر الغلوكوز وشكل تخزينه الرئيسي في الكبد والعضلات؛ الخيار C مطابق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q40', 'exam_eps_2023_crmef_lycee', 40, 'APS et apprentissage moteur', 'Le coup de pied de pénalité en rugby vaut :', false, '[{"id": "A", "text": "2 points"}, {"id": "B", "text": "3 points"}, {"id": "C", "text": "4 points"}, {"id": "D", "text": "5 points"}]'::jsonb, ARRAY['B']::text[], 'World Rugby Law 8.1(d): ركلة الجزاء الناجحة = 3 نقاط؛ الخيار B «3 points» مطابق.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q41', 'exam_eps_2023_crmef_lycee', 41, 'Biomécanique', 'Dans le rapport vitesse / force : la Vitesse > 0 et la Force est < à 0, le type de contraction est :', false, '[{"id": "A", "text": "Isométrique"}, {"id": "B", "text": "Concentrique"}, {"id": "C", "text": "Excentrique"}, {"id": "D", "text": "Pliométrique"}]'::jsonb, ARRAY['C']::text[], 'في صياغة القوة-السرعة: V > 0 و F < 0 ⇒ القدرة الميكانيكية P = F·V سالبة، أي شغل سالب (امتصاص طاقة) = انقباض لامركزي؛ الإيزومتري يتطلب V = 0 والمركزي F > 0 (منحنى القوة-السرعة، Hill؛ durgical.com: eccentric power is negative) ملاحظة: الصيغة المنطوقة بدت غريبة في الموجة الأولى، لكن بإشارة القدرة السالبة لا يوجد مرشح آخر غير C', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q42', 'exam_eps_2023_crmef_lycee', 42, 'Physiologie', 'Les qualités physiques les plus requises en lancer de poids sont :', false, '[{"id": "A", "text": "Force, souplesse et explosivité"}, {"id": "B", "text": "Force, précision, rapidité et efficacité"}, {"id": "C", "text": "Force, vitesse et coordination"}, {"id": "D", "text": "Force, adresse, explosivité et vitesse d''exécution"}]'::jsonb, ARRAY['C']::text[], 'رمي الجلة يتطلب القوة والسرعة والتنسيق؛ القدرة = القوة × السرعة هي الصفة المهيمنة (LNCA/IAAF, Jonath et al.: «FORCE VITESSE COORDINATION») — الخيار C يطابقها حرفياً', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q43', 'exam_eps_2023_crmef_lycee', 43, 'Physiologie', 'La pliométrie est une contraction :', false, '[{"id": "A", "text": "Excentrique suivie d''une contraction concentrique"}, {"id": "B", "text": "Isométrique suivie d''une contraction concentrique"}, {"id": "C", "text": "Concentrique suivie d''une contraction excentrique"}, {"id": "D", "text": "Isotonique suivie d''une contraction excentrique"}]'::jsonb, ARRAY['A']::text[], 'البليومترية = دورة التمدد-التقصير: انقباض لامركزي يليه انقباض مركزي سريع (Wikipedia, «Stretch-shortening cycle»؛ Physiopedia, «Plyometrics») — الخيار A يطابقها حرفياً', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q44', 'exam_eps_2023_crmef_lycee', 44, 'APS et apprentissage moteur', 'Un jet est nul en lancer de poids si :', false, '[{"id": "A", "text": "Le poids touche le sol et tombe à l''intérieur de l''aire de chute"}, {"id": "B", "text": "Le lanceur bute le butoir et le poids tombe à l''intérieur de l''aire de chute"}, {"id": "C", "text": "Le lanceur touche le haut du butoir par n''importe quelle partie de son corps"}, {"id": "D", "text": "Le lanceur sort de la moitié arrière du cercle après la chute du poids à l''intérieur de l''aire de lancer"}]'::jsonb, ARRAY['C']::text[], 'World Athletics, Technical Rules 32.2: لمس أعلى الحاجز (butoir) بأي جزء من الجسم = رمية باطلة؛ A رمية صحيحة (سقوط داخل القطاع)، وB لمس الوجه الداخلي للحاجز مسموح، وD الخروج من النصف الخلفي بعد السقوط خروج قانوني', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q45', 'exam_eps_2023_crmef_lycee', 45, 'Physiologie', 'La source énergétique sollicitée lors de 10000 mètres', false, '[{"id": "A", "text": "La filière anaérobie alactique"}, {"id": "B", "text": "La filière anaérobie lactique"}, {"id": "C", "text": "La filière aérobie lactique"}, {"id": "D", "text": "La filière aérobie"}]'::jsonb, ARRAY['D']::text[], 'سباق 10,000 م تهيمن عليه الفيلير الهوائية بنسبة ~90–97٪ (F.A. Davis, Bioenergetics of Exercise) — الخيار D «la filière aérobie»', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q46', 'exam_eps_2023_crmef_lycee', 46, 'APS et apprentissage moteur', 'Le 5ème set en volley-ball (Tie-break) est joué en :', false, '[{"id": "A", "text": "15 points avec 1 point d''écart"}, {"id": "B", "text": "25 points avec 2 points d''écart"}, {"id": "C", "text": "25 points au moins 1 point d''écart"}, {"id": "D", "text": "15 points au moins 2 points d''écart"}]'::jsonb, ARRAY['D']::text[], 'FIVB Official Volleyball Rules, Règles 6.2/6.3: الشوط الخامس (الفاصل) يُلعب حتى 15 نقطة بفارق نقطتين على الأقل — الخيار D يطابقها حرفياً', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q47', 'exam_eps_2023_crmef_lycee', 47, 'Physiologie', 'Le muscle lisse présente des :', false, '[{"id": "A", "text": "Tubules transverses"}, {"id": "B", "text": "Triades avec un réticulum sarcoplasmique"}, {"id": "C", "text": "Des filaments d''actine et de myosine"}, {"id": "D", "text": "Fibres musculaires non striées"}]'::jsonb, ARRAY['D']::text[], 'العضلة الملساء تتميز بألياف غير مخططة (non striées) — التعريف الكلاسيكي المميِّز (LibreTexts 6.5, Smooth Muscle)؛ A وB خاطئتان (لا نبيبات مستعرضة ولا ثلاثيات في الملساء) ملاحظة: ⚠️ الخيار C («filaments d''actine et de myosine») صحيح واقعياً أيضاً لكل العضلات، فهو مشتِّت صحيح لكن غير مميِّز؛ D هو الجواب المقصود في الصياغة المدرسية («présente des fibres…») — لذلك «مرجّح» لا «مؤكد»', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q48', 'exam_eps_2023_crmef_lycee', 48, 'APS et apprentissage moteur', 'L''efficience motrice est la capacité acquise par apprentissage à atteindre des résultats à l''avance avec :', false, '[{"id": "A", "text": "Un maximum d''effort avec un maximum de temps, d''énergie ou les deux"}, {"id": "B", "text": "Un maximum d''effort avec un minimum de temps, d''attention ou les deux"}, {"id": "C", "text": "Un minimum d''effort avec un minimum de temps, d''énergie ou les deux"}, {"id": "D", "text": "Un maximum de réussite avec un maximum de temps, d''énergie ou les deux"}]'::jsonb, ARRAY['C']::text[], 'الكفاءة الحركية (efficience motrice) = بلوغ النتائج المحددة مسبقاً بأقل جهد ووقت وطاقة ممكنة — الخيار C يطابق التعريف حرفياً', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q49', 'exam_eps_2023_crmef_lycee', 49, 'Anatomie', 'Une des propriétés du muscle qui lui permet de remplir ses fonctions est:', false, '[{"id": "A", "text": "L''élasticité"}, {"id": "B", "text": "La lenteur"}, {"id": "C", "text": "L''automatisme"}, {"id": "D", "text": "La résistance"}]'::jsonb, ARRAY['A']::text[], 'الخصائص الأربع الكلاسيكية للعضلة: الاستثارة، الانقباضية، التمددية، المرونة (élasticité) — A وحدها من بين الخيارات خاصية عضلية؛ B وC وD ليست كذلك (LibreTexts/OpenStax, Muscle Tissue)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q50', 'exam_eps_2023_crmef_lycee', 50, 'APS et apprentissage moteur', 'Les schèmes d''action sollicités dans un équilibre sur les mains (ATR) à partir d''un équilibre sur la tête (AFR) jambes fléchies sont :', false, '[{"id": "A", "text": "L''ouverture antépulsion"}, {"id": "B", "text": "La Fermeture rétropulsion"}, {"id": "C", "text": "La Fermeture répulsion"}, {"id": "D", "text": "L''ouverture répulsion"}]'::jsonb, ARRAY['D']::text[], 'من AFR (توازن على الرأس، رجلان مثنيتان) إلى ATR: فتح الجسم (ouverture — فعل حزام الحوض) + دفع الذراعين (répulsion = pompe — فعل حزام الكتف)؛ A أنتيبولسيون (اتجاه معاكس)، وB وC إغلاق (fermeture) عكس المطلوب (Wikiteka, Biomécanique des éléments acrobatiques؛ STAPS Techno Gym: «répulsion (= pompe)», «ouverture» action pelvienne) ملاحظة: الحرف D حُسم أصلاً (Whisper + استماع بطيء لإطارات الفيديو)؛ التحقق هنا مستقل عنه', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=mYPh-HsNRw8', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q51', 'exam_eps_2023_crmef_lycee', 51, 'Physiologie', 'Le surpoids est défini comme une accumulation anormale ou excessive de graisse qui nuit à la santé lorsque l''indice de masse corporelle (IMC) est compris entre :', false, '[{"id": "A", "text": "De 18,5 kg/m² à 25 kg/m²"}, {"id": "B", "text": "De 30 kg/m² à 40 kg/m²"}, {"id": "C", "text": "De 25 kg/m² à 30 kg/m²"}, {"id": "D", "text": "De 40 kg/m² et plus"}]'::jsonb, ARRAY['C']::text[], 'تصنيف OMS للـ IMC: الوزن الزائد (surpoids) 25,0–29,9؛ السمنة ≥ 30 — الخيار C «De 25 à 30»', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q52', 'exam_eps_2023_crmef_lycee', 52, 'APS et apprentissage moteur', 'Le nombre de haies sur un 110 m haies est :', false, '[{"id": "A", "text": "Huit obstacles"}, {"id": "B", "text": "Dix obstacles"}, {"id": "C", "text": "Douze obstacles"}, {"id": "D", "text": "Neuf obstacles"}]'::jsonb, ARRAY['B']::text[], 'سباق 110 م حواجز يضم 10 حواجز (World Athletics, «110 Metres Hurdles»؛ Britannica) — الخيار B «Dix obstacles»', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q53', 'exam_eps_2023_crmef_lycee', 53, 'Anatomie', 'Le triceps sural est un muscle situé au niveau :', false, '[{"id": "A", "text": "De la ceinture pelvienne"}, {"id": "B", "text": "De la ceinture scapulaire"}, {"id": "C", "text": "Au niveau de l''épaule et du bras"}, {"id": "D", "text": "Au niveau du mollet"}]'::jsonb, ARRAY['D']::text[], 'التريسيبس السورال = gastrocnémien (رأسان) + soléaire، في الجهة الخلفية للساق (mollet)، ينتهي بوتر أخيل (StatPearls, «Gastrocnemius Muscle») — الخيار D', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q54', 'exam_eps_2023_crmef_lycee', 54, 'Accidents et secourisme', 'Lors d''une fracture au niveau de la diaphyse de l''humérus :', false, '[{"id": "A", "text": "Une dislocation de la tête humérale"}, {"id": "B", "text": "Ecchymose au niveau du muscle se l''humérus"}, {"id": "C", "text": "Une impotence fonctionnelle partielle ou totale de l''humérus"}, {"id": "D", "text": "Meurtrissure de la partie supérieure de l''humérus"}]'::jsonb, ARRAY['C']::text[], 'كسر جدل عظم العضد يسبب عجزاً وظيفياً جزئياً أو كلياً للذراع؛ A إصابة مختلفة (خلع رأس العضد)، وB وD علامات موضعية ثانوية لا تصف نتيجة الكسر ملاحظة: ⚠️ الجذع مبتور («Lors d''une fracture […] :») فلا يمكن الجزم بالمطلوب بدقة؛ C هو الخيار الوحيد الذي يصف نتيجة سريرية حقيقية للكسر — لذلك «مرجّح»', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q55', 'exam_eps_2023_crmef_lycee', 55, 'Sport scolaire', 'La cotisation annuelle de chaque élève pour l''association sportive scolaire est de :', false, '[{"id": "A", "text": "20 dh à 30 dh"}, {"id": "B", "text": "10 dh à 25 dh"}, {"id": "C", "text": "20 dh et plus"}, {"id": "D", "text": "10 dh et plus"}]'::jsonb, ARRAY['D']::text[], 'المذكرة الوزارية 074X21 بتاريخ 30 يونيو 2021 (§6): انخراط التلميذ 10 دراهم كحد أدنى **بلا سقف** — الخيار D «10 dh et plus» يطابقها حرفياً؛ B (10–25) لم يكن صحيحاً تحت أي نص (ملف فبراير 2024، Q3 — نفس الجذع ونفس الخيارات الأربعة، جوابه D) ملاحظة: ⚠️ **خطأ من صاحب الفيديو (الجزء الثاني — لا فخّ معلَن فيه):** قال B. تنبيه: بطاقة تحضير Prof. Aimad تقول «10 دراهم حد أدنى، 30 حد أقصى» — مصدر ثانوي متعارض؛ نص المذكرة الأصلي نفسه لم يُسترجع في هذا التحقق، لكن مرجع فبراير 2024 (نفس السؤال، استشهاد مباشر بالمذكرة + تاريخ ما قبل 2021: 10 حد أدنى / 20 حد أقصى) هو أفضل دليل متاح ويرجّح D بقوة', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, 'تصحيح مؤكد — المنطوق B خطأ من صاحب الفيديو (الجزء الثاني بلا فخّ معلَن)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q56', 'exam_eps_2023_crmef_lycee', 56, 'APS et apprentissage moteur', 'les dimensions du terrain du football sont :', false, '[{"id": "A", "text": "80 et 90 mètres de longueur et de 45 et 90 mètres de largeur"}, {"id": "B", "text": "90 et 100 mètres de longueur et de 55 et 85 mètres de largeur"}, {"id": "C", "text": "90 mètres à 120 mètres de longueur et de 45 et 90 mètres de largeur"}, {"id": "D", "text": "90 mètres à 120 mètres de longueur et de 75 et 100 mètres de largeur"}]'::jsonb, ARRAY['C']::text[], 'IFAB Laws of the Game, Loi 1: الملعب 90–120 م طولاً × 45–90 م عرضاً (دولي 100–110 × 64–75؛ FIFA توصي 105 × 68) — الخيار C يطابق النطاق العام حرفياً', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q57', 'exam_eps_2023_crmef_lycee', 57, 'Biomécanique', 'En saut en hauteur le rapprochement des segments libres s''effectue pour :', false, '[{"id": "A", "text": "Faciliter une rotation longitudinale"}, {"id": "B", "text": "Alléger le pied d''appel"}, {"id": "C", "text": "Faciliter une rotation transversale"}, {"id": "D", "text": "Équilibrer le franchissement"}]'::jsonb, ARRAY['C']::text[], 'في الوثب العالي (Fosbury): الدوران المستعرض (rotation transversale) هو الذي يميل الساقط إلى الخلف فوق العارضة، وتقريب المقاطع الحرة من محور الدوران يقلل عزم القصور فيُسهّل هذا الدوران (Blacon, Revue EPS 1997، عبر academia.edu: «Une transversale qui fait basculer le sauteur en arrière»)؛ B هو دور المقاطع الحرة عند النداء (تخفيف عمل رجل النداء) لا دور تقريبها ملاحظة: ثقة متوسطة-عالية: الرابط «تقريب ← تسهيل الدوران المستعرض» هو النقطة التعليمية القياسية في STAPS/EPS، والدوران الطولي (A) يأتي من الحوض والرجل الحرة لا من التقريب', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q58', 'exam_eps_2023_crmef_lycee', 58, 'Anatomie', 'Le ligament rond sert à renforcer l''articulation du:', false, '[{"id": "A", "text": "Poignet"}, {"id": "B", "text": "L''épaule"}, {"id": "C", "text": "La hanche"}, {"id": "D", "text": "Genou"}]'::jsonb, ARRAY['C']::text[], 'الرباط المستدير (ligament rond / ligamentum teres، رباط رأس الفخذ) يثبّت مفصل الورك (hanche) — الخيار C (Kenhub/StatPearls, ligament of head of femur)', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q59', 'exam_eps_2023_crmef_lycee', 59, 'Accidents et secourisme', 'Les initiales RCP signifient une:', false, '[{"id": "A", "text": "Réanimation-Cardiaque-Précoce"}, {"id": "B", "text": "Réanimation-Cardio-Pulmonaire"}, {"id": "C", "text": "Réanimation-Cardiaque-Précipitée"}, {"id": "D", "text": "Réanimation-Cardiaque-Pratique"}]'::jsonb, ARRAY['B']::text[], 'RCP = réanimation cardio-pulmonaire (الإنعاش القلبي الرئوي) — الاختصار القياسي في الإسعافات الأولية (Wikipedia/Merck Manual) — الخيار B', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q60', 'exam_eps_2023_crmef_lycee', 60, 'APS et apprentissage moteur', 'Dans un championnat de hand-ball, en cas de score nul après le coup de sifflet final il y a :', false, '[{"id": "A", "text": "5 minutes de jeu, celui qui marque le premier est gagnant"}, {"id": "B", "text": "Série de tirs au but (jets francs)"}, {"id": "C", "text": "2 X 5 minutes de prolongation"}, {"id": "D", "text": "Le score nul est validé"}]'::jsonb, ARRAY['D']::text[], 'IHF Rules of the Game, Règle 2:2: الأشواط الإضافية (2×5 دقائق) تُلعب فقط عندما يجب تحديد فائز (مباريات الإقصاء)؛ في «championnat» (دوري) التعادل بعد الوقت النظامي يُحتسب ويُصادَق عليه — الخيار D «Le score nul est validé» ملاحظة: الجذع نفسه («Dans un championnat») هو مفتاح السؤال؛ C هو جواب مباراة الإقصاء لا الدوري', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q61', 'exam_eps_2023_crmef_lycee', 61, 'Physiologie', 'La course de 400 m haies est une épreuve qui sollicite :', false, '[{"id": "A", "text": "La capacité aérobie"}, {"id": "B", "text": "La puissance aérobie"}, {"id": "C", "text": "La puissance anaérobie lactique"}, {"id": "D", "text": "La capacité anaérobie alactique"}]'::jsonb, ARRAY['C']::text[], 'سباق 400 م (حواجز) جهد شديد 43–60 ثانية يهيمن عليه الفيلير اللاهوائي اللبني (glycolyse anaérobie) بعد استنفاد ATP-PCr — Royal Society of Chemistry، «400m»؛ الخيار C نصّه «La puissance anaérobie lactique».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q62', 'exam_eps_2023_crmef_lycee', 62, 'APS et apprentissage moteur', 'La claquette en basket Ball est le fait de :', false, '[{"id": "A", "text": "Remettre le ballon dans le panier sur un rebond"}, {"id": "B", "text": "Tirer à l''arrêt au panier au-delà de la ligne des six mètres"}, {"id": "C", "text": "Pivoter sur le pied arrière après réception du ballon"}, {"id": "D", "text": "Marquer en projetant le ballon dans le cerceau métallique"}]'::jsonb, ARRAY['A']::text[], 'الكلاكيت (tip-in) = لمس الكرة نحو السلة لإدخالها بعد ارتدادها دون إمساكها — FIBA Statisticians'' Manual؛ الخيار A نصّه «Remettre le ballon dans le panier sur un rebond».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q63', 'exam_eps_2023_crmef_lycee', 63, 'Physiologie', 'La sérotonine secrétée par l''exercice physique permet :', false, '[{"id": "A", "text": "L''amélioration de la santé mentale"}, {"id": "B", "text": "L''élasticité musculaire"}, {"id": "C", "text": "La tonicité musculaire"}, {"id": "D", "text": "La plasticité musculaire"}]'::jsonb, ARRAY['A']::text[], 'التمرين يرفع تركيب السérotonine (عبر التربتوفان) ويحسّن المزاج ويخفّض القلق والاكتئاب — Matta Mello Portugal et al. 2013؛ Ann. Méd.-Psychol. 2008؛ الخيارات B/C/D (مرونة/توتر/لدونة عضلية) لا علاقة لها بالسérotonine.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q64', 'exam_eps_2023_crmef_lycee', 64, 'Sport scolaire', 'L''école qui ne dispose pas d''une association sportive scolaire :', false, '[{"id": "A", "text": "N''a droit de participer qu''à des compétitions au niveau provincial"}, {"id": "B", "text": "N''a droit de participer qu''à des compétitions provinciales et régionales"}, {"id": "C", "text": "N''a pas le droit de participer à des compétitions sportives scolaires"}, {"id": "D", "text": "A le droit de participer à toutes les compétitions sportives scolaires"}]'::jsonb, ARRAY['C']::text[], 'مسابقات الجامعة الملكية المغربية للرياضة المدرسية محصورة في الجمعيات المدرسية المنخرطة؛ بلا جمعية لا مشاركة — جذع مطابق في ملف فبراير 2024 (Q46، جوابه D هناك لاختلاف ترتيب الخيارات)؛ الخيار C نصّه «N''a pas le droit de participer à des compétitions sportives scolaires».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q65', 'exam_eps_2023_crmef_lycee', 65, 'Physiologie', 'La contraction musculaire nécessite la commande nerveuse :', false, '[{"id": "A", "text": "Cervicale"}, {"id": "B", "text": "Corticale"}, {"id": "C", "text": "Motrice"}, {"id": "D", "text": "Veineuse"}]'::jsonb, ARRAY['C']::text[], 'الانقباض العضلي الهيكلي يبدأ بإشارة العصبون الحركي الذي يحرّر الأستيل كولين في الوصلة العصبية العضلية — LibreTexts، «Muscle Contraction» (15.4)؛ الخيار C «Motrice»؛ A «Cervicale» لا معنى لها هنا. ملاحظة: **خطأ من صاحب الفيديو (creator error)** — الجزء الثاني بلا فخّ معلن؛ الحرف A مؤكد من مصدري النص.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, 'تصحيح مؤكد — المنطوق A خطأ من صاحب الفيديو (الجزء الثاني بلا فخّ معلَن)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q66', 'exam_eps_2023_crmef_lycee', 66, 'Physiologie', 'La contraction musculaire isométrique est définie par la longueur du muscle qui:', false, '[{"id": "A", "text": "Ne change pas, alors que la force développée augmente"}, {"id": "B", "text": "Change, alors que la force développée augmente"}, {"id": "C", "text": "Ne change pas, alors que la force n''augmente pas"}, {"id": "D", "text": "Ne change pas et sans développement de la force"}]'::jsonb, ARRAY['A']::text[], 'الانقباض الإيزومتري: طول العضلة ثابت بينما يزداد التوتر/القوة — LibreTexts 10.3؛ الخيار A نصّه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q67', 'exam_eps_2023_crmef_lycee', 67, 'APS et apprentissage moteur', 'La sanction d''un défenseur qui empêche illégalement le ballon d''atteindre le panier lors du dernier ou unique lancer franc est :', false, '[{"id": "A", "text": "Un point est accordé à l''équipe attaquante et l''arbitre doit avertir le défenseur ayant commis l''infraction."}, {"id": "B", "text": "Un point est accordé à l''équipe attaquante et disqualification pour le défenseur ayant commis l''infraction"}, {"id": "C", "text": "Un point est accordé à l''équipe attaquante suivi par la sanction de faute technique contre le défenseur et la remise en jeu se fait de la ligne de fond"}, {"id": "D", "text": "Un point est accordé à l''équipe attaquante suivi par une sanction de faute technique contre le défenseur et la remise en jeu se fait de la ligne médiane"}]'::jsonb, ARRAY['D']::text[], 'FIBA، المادة 31.3.3: تدخّل المدافع على آخر (أو وحيد) رمية حرة = نقطة للفريق المهاجم + خطأ تقني من الفئة 2 على المدافع، وعقوبة الخطأ التقني (المادة 36.3.2) رمية حرة + رمية إدخال من خط الوسط الممدود — أي الخيار D حرفياً؛ B (الإقصاء) وA (الإنذار) وC (الإدخال من خط النهاية) كلها مخالفة للمادة. ملاحظة: **نزاع محسوم:** قراءة الإطارات سمعت B (غير مؤكد — استماعان B مقابل استماع واحد D)؛ حرف الملف D مؤكد من مصدري النص (النص الفرنسي + Whisper) وتؤيده المادة 31.3.3؛ B مرفوض بالقاعدة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q68', 'exam_eps_2023_crmef_lycee', 68, 'APS et apprentissage moteur', 'Lors de la lune sur la table de saut, le gymnaste sollicite les schèmes d''action suivants :', false, '[{"id": "A", "text": "Impulsion jambes alternatives-ouverture- répulsion- impulsion bras simultanés-fermeture-rétropulsion"}, {"id": "B", "text": "Impulsion jambes alternatives-fermeture-rénulsion-impulsion bras simultanés-ouverture-antépulsion"}, {"id": "C", "text": "Impulsion jambes-simultanées-fermeture-répulsion-impulsion bras simultanés-ouverture-antépulsion"}, {"id": "D", "text": "Impulsion jambes alternatives-fermeture-impulsion bras simultanés-ouverture-antépulsion"}]'::jsonb, ARRAY['C']::text[], 'قفزة اللون (renversement avant) على طاولة القفز: الدفع بالرجلين معاً (jambes simultanées) على الترامبولين — الخيار C وحده يحمل «simultanées» (A وB وD «alternatives» خاطئة)؛ وتسلسل Carrasco: fermeture → répulsion → impulsion bras simultanés → ouverture → antépulsion؛ ويؤيده ترتيب المراحل في ملف فبراير 2024 (Q62: جري + دفع الرجلين + طيران أول + دفع الذراعين + طيران ثانٍ + استقبال).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q69', 'exam_eps_2023_crmef_lycee', 69, 'Anatomie', 'La myologie est la partie de l''anatomie qui traite les différents :', false, '[{"id": "A", "text": "Ligaments"}, {"id": "B", "text": "Muscles"}, {"id": "C", "text": "Tendons"}, {"id": "D", "text": "Organes"}]'::jsonb, ARRAY['B']::text[], 'الميولوجيا (myologie) فرع التشريح الذي يدرس العضلات — Wikipedia / Biology Online، «Myology»؛ الخيار B «Muscles».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q70', 'exam_eps_2023_crmef_lycee', 70, 'Accidents et secourisme', 'Lors d''une crampe au niveau du mollet il faut étirer :', false, '[{"id": "A", "text": "Le psoas-iliaque et le grand oblique"}, {"id": "B", "text": "Le couturier et le droit antérieur"}, {"id": "C", "text": "Le muscle soléaire et les deux jumeaux"}, {"id": "D", "text": "Le long palmaire et le petit palmaire"}]'::jsonb, ARRAY['C']::text[], 'تشنج الساق (crampe du mollet): التمديد اللطيف للعضلة المتشنجة + التدليك — NHS، «Leg cramps»؛ الخيار C «Le muscle soléaire et les deux jumeaux» (عضلات الساق نفسها).', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q71', 'exam_eps_2023_crmef_lycee', 71, 'Sport scolaire', 'La quote-part de l''association sportive scolaire des cotisations d''adhésion annuelle est :', false, '[{"id": "A", "text": "15%"}, {"id": "B", "text": "10%"}, {"id": "C", "text": "65%"}, {"id": "D", "text": "20%"}]'::jsonb, ARRAY['C']::text[], 'المذكرة الوزارية 074X21 (30 يونيو 2021)، §6: 65% للجمعية المدرسية / 10% للفرع الإقليمي / 5% للفرع الجهوي / 15% للجامعة / 5% لصندوق الدعم — موثقة في ملف فبراير 2024 (Q43)؛ الخيار C «65%».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q72', 'exam_eps_2023_crmef_lycee', 72, 'Physiologie', 'La contraction excentrique se caractérise par un :', false, '[{"id": "A", "text": "Allongement du muscle et résiste à une charge en éloignant ses insertions"}, {"id": "B", "text": "Allongement du muscle et résiste à une charge en rapprochant ses insertions"}, {"id": "C", "text": "Contraction du muscle et résiste à une charge en éloignant ses insertions"}, {"id": "D", "text": "Contraction du muscle et résiste à une charge en rapprochant ses insertions"}]'::jsonb, ARRAY['A']::text[], 'الانقباض اللامركزي: العضلة تطول وهي تنتج توتراً مقاوِمةً حملاً، فتتباعد نقاط ارتكازها — LibreTexts 10.3 / Kenhub؛ الخيار A نصّه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q73', 'exam_eps_2023_crmef_lycee', 73, 'APS et apprentissage moteur', 'En basket-ball de 3X3, il est toléré de :', false, '[{"id": "A", "text": "Garder le ballon vingt-quatre secondes avant le tir"}, {"id": "B", "text": "Faire un aiguillage"}, {"id": "C", "text": "Obtenir trois points suite à un tir de [illisible]e de 6m"}, {"id": "D", "text": "Respecter la règle de 8 secondes"}]'::jsonb, ARRAY['B']::text[], 'بالإقصاء من قواعد FIBA 3x3 (2024): ساعة التصويب 12 ثانية لا 24 (A خاطئ)، والتسديد من وراء القوس (6.75 م) = نقطتان لا 3 (C خاطئ)، ولا توجد قاعدة الـ8 ثوانٍ في 3x3 (D خاطئ)؛ فيبقى B «Faire un aiguillage» (التبديل الدفاعي/switch، مباح) الخيار الوحيد المتسق مع القواعد. ملاحظة: «aiguillage» نفسه لم يُعثر له على تعريف رسمي في نص 3x3؛ الحكم بالإقصاء لا بالنص المباشر.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q74', 'exam_eps_2023_crmef_lycee', 74, 'Anatomie', 'Les ménisques sont des cartilages plats, placés entre :', false, '[{"id": "A", "text": "L''humérus et l''acromion"}, {"id": "B", "text": "Le fémur et le tibia"}, {"id": "C", "text": "Le radius et le cubitus"}, {"id": "D", "text": "Le radius et les carpes"}]'::jsonb, ARRAY['B']::text[], 'الهلالات (ménisques): غضاريف ليفية هلالية بين الفخذ (fémur) والساق (tibia) في الركبة — StatPearls (NCBI)، «Medial Meniscus»؛ الخيار B نصّه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q75', 'exam_eps_2023_crmef_lycee', 75, 'Physiologie', 'L''âge compris entre 6 à 12 ans est le plus favorable pour développer :', false, '[{"id": "A", "text": "Les qualités physiques"}, {"id": "B", "text": "les récepteurs proprioceptifs"}, {"id": "C", "text": "Les composantes de la force"}, {"id": "D", "text": "les habiletés motrices"}]'::jsonb, ARRAY['D']::text[], 'الفترة 6–12 سنة (7–12 حسب Hirtz/Weineck) هي الفترة الحساسة لتعلم الحركة والتنسيق/القدرات التنسيقية — «âge d''or de l''apprentissage moteur» (Šimonek 2014؛ Hirtz & Starosta، J. Hum. Kinet.)؛ وأقرب خيار لها D «les habiletés motrices» (المهارات الحركية المتعلمة)، لا A «les qualités physiques» (مظلة عامة تشمل القوة والتحمل اللاهوائي اللذين تتأخر فترتاهما الحساسة إلى ما بعد البلوغ)، ولا C (مكونات القوة — البلوغ). ملاحظة: **خطأ مرجّح من صاحب الفيديو (creator error)** — «للتحقق — إجابة مرجّحة»: التحفظ أن بعض المصادر المدرسية تضع «habiletés motrices» الأساسية في 3–6 سنوات والتنسيق في 6–12، ولا يوجد خيار «coordination» في الورقة؛ وصياغة Q11 الفضفاضة («6–12 للصفات البدنية») تترك باباً ضيقاً لـA.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q76', 'exam_eps_2023_crmef_lycee', 76, 'Physiologie', 'Les fibres rapides glycoliques sont :', false, '[{"id": "A", "text": "Les fibres I b"}, {"id": "B", "text": "Les fibres II b"}, {"id": "C", "text": "Les Fibres mixtes"}, {"id": "D", "text": "Les Fibres lisses"}]'::jsonb, ARRAY['B']::text[], 'الألياف السريعة الغليكوليتية = النوع IIb/IIx: انقباض سريع، ATP بالغليكوليز اللاهوائي، سريعة التعب، للجهود المتفجرة — OpenStax / Basic Human Physiology؛ الخيار B «Les fibres II b».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q77', 'exam_eps_2023_crmef_lycee', 77, 'Sport scolaire', 'La séance d''association sportive scolaire est obligatoire pour tout établissement :', false, '[{"id": "A", "text": "D''enseignement scolaire public ou [illisible]"}, {"id": "B", "text": "De formation professionnelle public[illisible]privée"}, {"id": "C", "text": "D''enseignement scolaire public, privé ou de formation professionnelle publique ou privée"}, {"id": "D", "text": "D''enseignement scolaire public ou de formation professionnelle publique"}]'::jsonb, ARRAY['C']::text[], 'القانون 30.09 (المادة 3) يوجب إحداث جمعية رياضية في كل مؤسسة للتربية والتعليم العمومي أو الخصوصي، والنظام الأساسي النموذجي (2025) يغطي مؤسسات التعليم المدرسي الخصوصي والتكوين المهني العمومي أو الخصوصي — أي النطاق الشامل في الخيار C «public, privé ou de formation professionnelle publique ou privée».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q78', 'exam_eps_2023_crmef_lycee', 78, 'Anatomie', 'Le muscle fléchisseur du coude puissant supinateur et abducteur de l''épaule est :', false, '[{"id": "A", "text": "Le triceps brachial"}, {"id": "B", "text": "Le biceps brachial"}, {"id": "C", "text": "le deltoïde (antérieur, moyen, postérieur)"}, {"id": "D", "text": "le trapèze"}]'::jsonb, ARRAY['B']::text[], 'الوصف يطابق العضد ذات الرأسين (biceps brachial): مثنية قوية للكوع، مباعدة (supinateur) قوية للساعد، ومباعدة للكتف — Kenhub، «Arm muscles»؛ الخيار B نصّه.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q79', 'exam_eps_2023_crmef_lycee', 79, 'APS et apprentissage moteur', 'La règle commune à l''ensemble des sauts est de :', false, '[{"id": "A", "text": "Réaliser tous les essais sinon le sauteur sera éliminé"}, {"id": "B", "text": "Changer l''ordre du passage"}, {"id": "C", "text": "Arrêter la prise d''élan et recommencer sans dépasser le temps autorisé"}, {"id": "D", "text": "Sauter deux fois sans dépasser le temps autorisé"}]'::jsonb, ARRAY['C']::text[], 'بالإقصاء: A خاطئ (يجوز تخطّي محاولة/ارتفاع دون إقصاء)، وB خاطئ (ترتيب المرور ثابت ولا يُغيَّر)، وD بلا معنى قواعدياً؛ وC «إيقاف أخذ الاندفاع وإعادته دون تجاوز الوقت المسموح» هو القاعدة المشتركة للوثب (كل محاولة يجب أن تبدأ ضمن الوقت المسموح، وعادة دقيقة واحدة، مع رفع العلم الأصفر في آخر 15 ثانية — World Athletics، Technical Rules). ملاحظة: «للتحقق — إجابة مرجّحة»: لم يُعثر على نص حرفي من World Athletics يصرّح بإيقاف الاندفاع وإعادته؛ الحكم بالإقصاء + قاعدة المهلة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q80', 'exam_eps_2023_crmef_lycee', 80, 'Biomécanique', 'Un levier est considéré comme iner-résistant lorsque la force de résistance :', false, '[{"id": "A", "text": "Est placée entre la force d''action et la charge"}, {"id": "B", "text": "Est placée entre l''appui et la force d''action"}, {"id": "C", "text": "Est placée entre la charge et la pesanteur"}, {"id": "D", "text": "Est placée entre l''appui et la force de résistance"}]'::jsonb, ARRAY['B']::text[], 'الرافعة inter-résistante (من الدرجة الثانية): المقاومة بين نقطة الارتكاز والقوة (مثال: الوقوف على أطراف الأصابع) — OCR A-Level PE / Pressbooks، «Levers»؛ الخيار B «placée entre l''appui et la force d''action».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q81', 'exam_eps_2023_crmef_lycee', 81, 'Anatomie', 'L''axe vertical est situé à l''intersection du plan:', false, '[{"id": "A", "text": "Frontal et sagittal"}, {"id": "B", "text": "Sagittal et transversal"}, {"id": "C", "text": "Frontal et transversal"}, {"id": "D", "text": "Vertical et longitudinal"}]'::jsonb, ARRAY['A']::text[], 'المحور العمودي (vertical) هو تقاطع المستوى السهمي والمستوى الجبهي — fiches-anatomie.com / CliffsNotes (anatomical planes & axes)؛ الخيار A ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q82', 'exam_eps_2023_crmef_lycee', 82, 'APS et apprentissage moteur', 'Le « passe et va » en basket-ball signifie de :', false, '[{"id": "A", "text": "Faire l''écran et recevoir le ballon"}, {"id": "B", "text": "Combiner la phase offensive entre deux joueurs"}, {"id": "C", "text": "Bloquer un adversaire et passer le ballon"}, {"id": "D", "text": "Faire un aiguillage et passer le ballon"}]'::jsonb, ARRAY['B']::text[], '«Passe et va» = تمريرة ثم قطع نحو السلة لاستلام تمريرة عائدة (give-and-go / pass-and-cut — Wikipedia, «Give-and-go»؛ levelupbasket.com)؛ الخيار B وحده يصف تركيبة هجومية بين لاعبَين، أما A فهو حاجز (pick) وC حجب خصم. ملاحظة: نص الخيار B عام («combiner la phase offensive entre deux joueurs») ولا يذكر القطع/العودة صراحة، فالحكم «مرجّح» لا مؤكد.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q83', 'exam_eps_2023_crmef_lycee', 83, 'Sport scolaire', 'Les parcours sport-études dans les établissements scolaires sont accessibles:', false, '[{"id": "A", "text": "À tous les élèves sans exception sauf les littéraires"}, {"id": "B", "text": "Aux élèves sélectionnés selon leurs relevés de notes et présentant leurs certificats d''adhésions dans des clubs, ligues, ou fédérations"}, {"id": "C", "text": "Aux élèves pratiquants et affiliés dans des clubs, ligues, ou fédérations sportives"}, {"id": "D", "text": "Aux élèves ayant obtenus au moins 12/20 de moyenne au niveau scolaire précédant"}]'::jsonb, ARRAY['B']::text[], 'الوصول إلى مسارات رياضة-دراسة يشترط معاً: معدل ≥ 12/20 والانخراط في نادٍ/عصبة/جامعة — Le Matin (sport scolaire) عن Lycée des sportifs d''Aïn Sbaa: «12/20 : c''est la moyenne minimum… en plus d''être affilié à un club, une Ligue nationale ou une Fédération sportive»؛ الخيار B وحده يجمع الشرطين (انتقاء حسب كشوف النقاط + شهادات الانخراط)، بينما C يهمل المعدل وD يهمل الانخراط. ملاحظة: تنبيه: اقتراح «textbook C» في التكليف مرفوض بالدليل — C ناقص لأنه يغفل شرط المعدل.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q84', 'exam_eps_2023_crmef_lycee', 84, 'Physiologie', 'Le cycle du citrate est :', false, '[{"id": "A", "text": "Une voie strictement anaérobie alactique et mitochondriale"}, {"id": "B", "text": "Une voie strictement anaérobie lactique et mitochondriale"}, {"id": "C", "text": "Une voie strictement aérobie et mitochondriale"}, {"id": "D", "text": "Une voie strictement anaérobie alactique"}]'::jsonb, ARRAY['C']::text[], 'دورة السيترات/كريبس (cycle du citrate) مسار هوائي حصراً في الميتوكوندريا يؤكسد الأسيتيل-CoA إلى CO2 — LibreTexts Chemistry 8.5 / Wikipedia FR «Cycle de Krebs»؛ الخيار C ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q85', 'exam_eps_2023_crmef_lycee', 85, 'Sport scolaire', 'Les élèves participants dans les championnats du sport scolaires devront être accompagnés en premier lieu par :', false, '[{"id": "A", "text": "Un personnel administratif"}, {"id": "B", "text": "Un entraineur du club"}, {"id": "C", "text": "Un enseignant d''EPS"}, {"id": "D", "text": "Un membre parental"}]'::jsonb, ARRAY['C']::text[], 'فرق المؤسسة في بطولات الرياضة المدرسية يؤطرها ويرافقها أساتذة التربية البدنية (تأطير أنشطة الجمعية الرياضية المدرسية من اختصاص أساتذة التربية البدنية — موثّق في ملف فبراير 2024؛ وتسجيل المشاركين في بطولات FRMSS يتم عبر أستاذ التربية البدنية)؛ الخيار C هو الوحيد المطابق، والبدائل (إداري/مدرب نادٍ/ولي) لا ترافق الفريق المدرسي «في المقام الأول». ملاحظة: لم يُسترجع نص وزاري/FRMSS حرفي بعبارة «en premier lieu»، فالحكم «مرجّح».', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', false, 'للتحقق — إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q86', 'exam_eps_2023_crmef_lycee', 86, 'APS et apprentissage moteur', 'la défense 3-2 en basket-ball permet à l''équipe de:', false, '[{"id": "A", "text": "Être forte en tête de raquette pour empêcher le tir"}, {"id": "B", "text": "Assurer le rebond pour relancer l''attaque"}, {"id": "C", "text": "Bien défendre pour bien contre-attaquer"}, {"id": "D", "text": "Assurer une bonne communication pour la continuité du jeu"}]'::jsonb, ARRAY['A']::text[], 'الدفاع 3-2: ثلاثة لاعبين في الأعلى يعترضون التسديدات عند رأس المنطقة (tête de raquette) ولاعبان في الأسفل يحميان السلة — entrainement-basket.fr («les trois joueurs du haut couvrent la ligne à 3 points… les deux joueurs du bas assurent la protection de la raquette»)؛ الخيار A وحده يتحدث عن منع التسديد، أما B (الارتداد) فهو نقطة ضعف معروفة للـ3-2 وC/D عامّتان. ملاحظة: دقة: قوة الـ3-2 الأساسية هي تغطية المحيط/التسديدات البعيدة لا «الداخل» — لكن A يصف رأس المنطقة لا الداخل، فهو مقبول.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q87', 'exam_eps_2023_crmef_lycee', 87, 'Accidents et secourisme', 'L''entorse de la cheville est une pathologie qui concerne principalement :', false, '[{"id": "A", "text": "Les tendons de l''articulation de la cheville"}, {"id": "B", "text": "Les tendons et les os de l''articulation de la cheville"}, {"id": "C", "text": "Les ligaments de l''articulation de la cheville"}, {"id": "D", "text": "Les os de l''articulation de la cheville"}]'::jsonb, ARRAY['C']::text[], 'التواء الكاحل (entorse) إصابة أربطة المفصل، غالباً الأربطة الجانبية الخارجية — HAS (has-sante.fr) / StatPearls «Acute Ankle Sprain»؛ الخيار C ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q88', 'exam_eps_2023_crmef_lycee', 88, 'APS et apprentissage moteur', 'La notion de trapèze est constituée par les postes suivants :', false, '[{"id": "A", "text": "2 ailiers et 2 arrières"}, {"id": "B", "text": "2 ailiers et le demi-centre"}, {"id": "C", "text": "2 arrières et le pivot"}, {"id": "D", "text": "Demi-centre et le pivot"}]'::jsonb, ARRAY['A']::text[], 'تشكيلة «trapèze» في الكرة الطائرة: استقبال بأربعة لاعبين فقط (جناحان + ظهيران) دون الموزّع واللاعب الأوسط — Prezi «Volleyball formations» (Trapeze) / VolleyballXL (4-receiver systems)؛ الخيار A ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q89', 'exam_eps_2023_crmef_lycee', 89, 'Physiologie', 'La filière énergétique mobilisée lors d''un lancer de poids est :', false, '[{"id": "A", "text": "L''anaérobie lactique"}, {"id": "B", "text": "L''anaérobie alactique et Aérobie"}, {"id": "C", "text": "L''anaérobie alactique"}, {"id": "D", "text": "L''aérobie"}]'::jsonb, ARRAY['C']::text[], 'رمي الجلة جهد متفجر لبضع ثوانٍ يعتمد نظام الفوسفاجين ATP-PCr (الفيلير اللاهوائي اللالبني، 1–15 ثانية) — ScienceDirect (high-energy phosphate system)؛ الخيار C ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q90', 'exam_eps_2023_crmef_lycee', 90, 'Accidents et secourisme', 'La première intervention pour un diabétique qui souffre d''un malaise hypoglycémique est de :', false, '[{"id": "A", "text": "L''aider à faire remonter le taux de sucre dans son sang"}, {"id": "B", "text": "L''aider à faire diminuer le taux de sucre dans son sang"}, {"id": "C", "text": "L''aider à boire beaucoup d''eau et évacuer ses voies respiratoires"}, {"id": "D", "text": "L''aider à marcher, à respirer et à boire beaucoup d''eau"}]'::jsonb, ARRAY['A']::text[], 'الإسعاف الأولي لانخفاض السكر لدى شخص واعٍ هو إعادة التسكير الفوري (resucrage: 15 غ سكر سريع، قاعدة الـ15) — Fédération Française des Diabétiques؛ الخيار A («faire remonter le taux de sucre») ينصّ عليه حرفياً. ملاحظة: حرف الفيديو A مؤكد أيضاً بقراءة الإطارات + Whisper ضد C في النص الفرنسي المولّد آلياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q91', 'exam_eps_2023_crmef_lycee', 91, 'Biomécanique', 'Pendant la phase d''appel en saut en longueur, la poussée s''effectue lorsque le centre de gravité :', false, '[{"id": "A", "text": "Se situe en arrière de la verticale d''appui"}, {"id": "B", "text": "Est à la verticale de l''appui"}, {"id": "C", "text": "Dépasse la verticale du point d''appui"}, {"id": "D", "text": "Ne de passe pas la verticale du point d''appui"}]'::jsonb, ARRAY['C']::text[], 'في الوثب الطويل، أثناء مرحلة الدفع (poussée) في الاحتذاء يمرّ مركز الثقل فوق/أمام عمود نقطة الارتكاز — Hubich & Pradet (1993), «Principes généraux des sauts» (مسار مركز الثقل أثناء الاحتذاء)؛ الخيار C («dépasse la verticale du point d''appui») هو الصياغة المعيارية في مقررات STAPS. ملاحظة: ملف فبراير 2024 (Q81: الفoulée الأخيرة قصيرة ومتفجرة ومركز الثقل منخفض) يؤيد ميكانيكا الاحتذاء نفسها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q92', 'exam_eps_2023_crmef_lycee', 92, 'Physiologie', 'La réaction qui transforme le glucose en gaz carbonique et en eau en présence d''oxygène est:', false, '[{"id": "A", "text": "La neutralisation"}, {"id": "B", "text": "L''oxydation."}, {"id": "C", "text": "La glycosylation"}, {"id": "D", "text": "La fermentation"}]'::jsonb, ARRAY['B']::text[], 'تحويل الغلوكوز إلى CO2 وماء بوجود الأكسجين هو التنفس الخلوي/الأكسدة الهوائية الكاملة: C6H12O6 + 6O2 → 6CO2 + 6H2O + ATP — LibreTexts / Orka.ma SVT؛ الخيار B («L''oxydation») ينصّ عليه.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q93', 'exam_eps_2023_crmef_lycee', 93, 'Sport scolaire', 'La quote-part du bureau de la succursale régionale de la fédération royale marocaine du sport scolaire des cotisations d''adhésion annuelle est :', false, '[{"id": "A", "text": "15%"}, {"id": "B", "text": "10%"}, {"id": "C", "text": "65%"}, {"id": "D", "text": "5%"}]'::jsonb, ARRAY['D']::text[], 'توزيع انخراط الجمعية الرياضية المدرسية حسب المذكرة الوزارية 074X21 (§6): 65٪ الجمعية / 10٪ الفرع الإقليمي / **5٪ الفرع الجهوي** / 15٪ FRMSS / 5٪ صندوق الدعم — موثّق في ملف فبراير 2024 (Q43)؛ الخيار D (5٪) ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q94', 'exam_eps_2023_crmef_lycee', 94, 'Anatomie', 'Le psoas-iliaque est un muscle pair et symétrique qui s''étend de chaque côté:', false, '[{"id": "A", "text": "Des vertèbres lombaires jusqu''au petit trochanter du fémur"}, {"id": "B", "text": "De l''os iliaque jusqu''au petit trochanter du fémur"}, {"id": "C", "text": "Des vertèbres lombaires jusqu''à la diaphyse fémorale"}, {"id": "D", "text": "De l''os iliaque jusqu''à la fossette du ligament rond"}]'::jsonb, ARRAY['A']::text[], 'العضلة الحرقفية القطنية (iliopsoas): القطنية الكبيرة من الفقرات القطنية + الحرقفية من عظم الحرقفة، والاشتراك في المدور الصغير للفخذ — Kenhub (iliopsoas) / Wikipedia FR «Muscle ilio-psoas»؛ الخيار A («des vertèbres lombaires jusqu''au petit trochanter») هو الوصف الصحيح للعضلة المزدوجة، أما B فيصف الحرقفية وحدها.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q95', 'exam_eps_2023_crmef_lycee', 95, 'APS et apprentissage moteur', 'Le « pick & roll » est un enchaînement très populaire en basket-ball qui sert à :', false, '[{"id": "A", "text": "Obliger l''adversaire de défendre loin du panier"}, {"id": "B", "text": "Faire un écran entre le porteur de balle et le défenseur"}, {"id": "C", "text": "Faire un aiguillage pour déstabiliser le défenseur"}, {"id": "D", "text": "Se placer en demi-cercle sur la ligne des trois points"}]'::jsonb, ARRAY['B']::text[], 'الـ pick & roll = حاجز (écran) يضعه زميل بين حامل الكرة ومدافعه ثم التفاف نحو السلة — basketballforcoaches.com / basketballgem.com؛ الخيار B ينصّ على عنصر الحاجز حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q96', 'exam_eps_2023_crmef_lycee', 96, 'Physiologie', 'Le débit cardiaque est :', false, '[{"id": "A", "text": "La quantité d''O2 inspiré par unité de temps pendant un effort"}, {"id": "B", "text": "La quantité de CO2 dégagé et libéré par unité de temps pendant un effort"}, {"id": "C", "text": "La quantité de sang expulsée par une unité de temps"}, {"id": "D", "text": "La quantité de sang qui irrigue les tissus"}]'::jsonb, ARRAY['C']::text[], 'النتاج القلبي (débit cardiaque) = كمية الدم المقذوفة في وحدة الزمن، DC = FC × VES (~5 ل/دقيقة في الراحة) — OpenStax 19.4 / LibreTexts (CO = HR × SV)؛ الخيار C ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q97', 'exam_eps_2023_crmef_lycee', 97, 'Accidents et secourisme', 'La disjonction acromiale est :', false, '[{"id": "A", "text": "Fréquente chez les jeunes sportifs"}, {"id": "B", "text": "Très rare chez les jeunes sportifs"}, {"id": "C", "text": "Fréquente chez les enfants sédentaires"}, {"id": "D", "text": "Fréquente chez adolescents sédentaires"}]'::jsonb, ARRAY['A']::text[], 'الخلع الأخرمي الترقوي «يحدث عادة لدى شباب رياضيين» (Cairn.info, Annales françaises de médecine d''urgence 2020: «Elles surviennent habituellement chez des sujets jeunes sportifs»)، ويمثل >10٪ من إصابات حزام الكتف — الخيار A («fréquente chez les jeunes sportifs») ينصّ عليه حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q98', 'exam_eps_2023_crmef_lycee', 98, 'APS et apprentissage moteur', 'La faute de position en volley-ball est sanctionnée par :', false, '[{"id": "A", "text": "L''équipe adverse gagne un point et le service, plus un avertissement à l''équipe fautive"}, {"id": "B", "text": "L''équipe adverse gagne un point et le service et les positions des joueurs de l''équipe fautive ne sont pas rectifiées"}, {"id": "C", "text": "L''équipe fautive perd le service et reçoit un avertissement"}, {"id": "D", "text": "L''équipe fautive rectifie les positions des joueurs et l''équipe adverse gagne un point et le service"}]'::jsonb, ARRAY['D']::text[], 'خطأ التموضع في الكرة الطائرة (FIVB، القاعدة 7.5.4): الفريق المخطئ يخسر النقطة والإرسال للخصم وتُصحَّح التموضعات — الخيار D ينصّ على العنصرين معاً حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q99', 'exam_eps_2023_crmef_lycee', 99, 'APS et apprentissage moteur', 'La triple menace en Basket permet de :', false, '[{"id": "A", "text": "Stopper, contre attaquer et marquer"}, {"id": "B", "text": "Dunker, rebondir et Cross over"}, {"id": "C", "text": "Passer, dribbler et tirer"}, {"id": "D", "text": "Faire un écran, bloquer et aiguiller"}]'::jsonb, ARRAY['C']::text[], 'وضعية التهديد الثلاثي (triple menace): التسديد أو التمرير أو المراوغة — USA Basketball / basketballforcoaches.com؛ الخيار C («passer, dribbler et tirer») ينصّ عليها حرفياً.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة ولوج CRMEF 2023) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2023_crmef_lycee_q100', 'exam_eps_2023_crmef_lycee', 100, 'Biomécanique', 'La vitesse de contraction désigne :', false, '[{"id": "A", "text": "La vitesse de transformation de l''énergie en une force produite par le muscle"}, {"id": "B", "text": "La vitesse des fibres rapides par rapport aux fibres lentes"}, {"id": "C", "text": "La vitesse de glissement entre les filaments d''actines et de myosines"}, {"id": "D", "text": "La vitesse de raccourcissement du muscle par rapport à la force qui lui est exercée"}]'::jsonb, ARRAY['D']::text[], 'سرعة الانقباض هي سرعة تقصّر العضلة كدالة في الحمل (علاقة القوة-السرعة لـ Hill 1938: كلما زاد الحمل قلّت سرعة التقصّر) — PMC 2018, «Physiological Significance of the Force-Velocity Relation» («Muscle contraction can be characterized by the velocity of shortening… the relation between force and velocity of shortening»)؛ الخيار D («vitesse de raccourcissement du muscle par rapport à la force qui lui est exercée») ينصّ على ذلك حرفياً. ملاحظة: **خطأ صاحب الفيديو (creator error)** — لا فخّ معلَن في الجزء الثاني. الخيار A (تحويل الطاقة إلى قوة) يصف إنتاج القوة لا سرعة الانقباض، والخيار C (انزلاق خيوط الأكتين/الميوزين) هو الآلية المجهرية لا تعريف السرعة.', 'qcm', 'third_party', 'https://www.youtube.com/watch?v=4n6UZvNqM4E', true, 'تصحيح مؤكد — المنطوق A خطأ من صاحب الفيديو (الجزء الثاني بلا فخّ معلَن)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
