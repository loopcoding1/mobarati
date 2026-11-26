-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية (دورة دجنبر 2021)
-- ====================================================================
-- المصدر: ملف الحل solved/2021/التربية البدنية - دورة دجنبر 2021.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2021-618/
--   لا يوجد مفتاح رسمي منشور؛ ثلاثة تصحيحات مقترحة مستقلة (mesconcours وmanasseb وwadifa-info) قورنت سؤالاً سؤالاً. 6 أسئلة «للتحقق» (Q10، Q16، Q20، Q33، Q35، Q46) و14 «إجابة مرجّحة» — انظر verification_note عند كل سؤال. السؤال المفتوح Q61 جواب نموذجي من wadifa-info.
--   عدد الأسئلة: 61 (60 QCM + 1 مفتوحة)؛ موثّقة verified=true: 40؛ موسومة بملاحظة تحقق: 23.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2021_lycee', 'eps_lycee', 2021, 'eps_specialty', 'التربية البدنية والرياضية', 'امتحان التربية البدنية والرياضية (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 61, 'لا يوجد مفتاح رسمي منشور؛ ثلاثة تصحيحات مقترحة مستقلة (mesconcours وmanasseb وwadifa-info) قورنت سؤالاً سؤالاً')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (61 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q1', 'exam_eps_2021_lycee', 1, 'Physiologie de l''exercice', 'La libération du calcium dans le cytoplasme cellulaire est synonyme de :', false, '[{"id": "A", "text": "Relâchement musculaire."}, {"id": "B", "text": "Contraction musculaire."}, {"id": "C", "text": "Dégradation de l''ATP."}, {"id": "D", "text": "Décharge électrique."}]'::jsonb, ARRAY['B']::text[], 'جهد الفعل يحرّر الكالسيوم من الشبكة الساركوبلازمية؛ يثبت الكالسيوم على التروبونين، فيكشف مواقع الأكتين وينطلق التقلص. أما الاسترخاء (A) فيفترض إعادة ضخّ الكالسيوم. تحلّل ATP يمدّ دورة الجسور بالطاقة، وليس هو تحرير الكالسيوم. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 1.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q2', 'exam_eps_2021_lycee', 2, 'Compétences, objectifs et contenus en EPS', 'Un objet d''enseignement en EPS est :', false, '[{"id": "A", "text": "Une thématique modulaire de plusieurs cycles d''enseignements."}, {"id": "B", "text": "Une compétence plancher."}, {"id": "C", "text": "Un contenu de séquence."}, {"id": "D", "text": "Un savoir conçu comme une solution à des problèmes."}]'::jsonb, ARRAY['D']::text[], 'في ديداكتيك التربية البدنية، ما يُدرَّس هو معرفة تُجيب عن المشاكل التي تطرحها النشاطات على التلميذ: موضوع التعليم يُعرَّف بأنه حلّ لمشاكل. أما الموضوعية التي تجمع عدة دورات (A) فتعرّف وحدة التوجيهات البيداغوجية، والكفاءة الدنيا (B) مستوى أدنى منتظَر لا موضوعاً. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 1.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q3', 'exam_eps_2021_lycee', 3, 'Études des APS et apprentissage moteur', 'La dimension perceptivo-décisionnelle est surtout prédominante en :', false, '[{"id": "A", "text": "Basket Ball."}, {"id": "B", "text": "Rugby."}, {"id": "C", "text": "En sport de combat."}, {"id": "D", "text": "En volley Ball."}]'::jsonb, ARRAY['C']::text[], 'رياضة القتال تضع التلميذ في مواجهة مباشرة، بالتماس، مع عدم يقين قصوى ومهل قرار من أعشار الثانية: أخذ المعلومات والقرار يهيمنان على كل شيء. والبعد الإدراكي–القراري مركزي أيضاً في الرياضات الجماعية الثلاث المقترحة، وقد يتوقع مصحّح يفكر في قراءة اللعب الجماعي كرة السلة (A). (اتفاق المصادر الثلاثة؛ ⚠ في mesconcours.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q4', 'exam_eps_2021_lycee', 4, 'Anatomie descriptive et fonctionnelle', 'En course, à la fin de phase de poussée du cycle de jambe, les muscles propulseurs sont :', false, '[{"id": "A", "text": "Le quadriceps."}, {"id": "B", "text": "Les ischio jambiers."}, {"id": "C", "text": "Les triceps suraux."}, {"id": "D", "text": "Le long péronier."}]'::jsonb, ARRAY['C']::text[], 'نهاية الدفع توافق بسط الكاحل: الثالوث الساقي (التوأمان والعضلة الأخمصية) هو الذي يدفع الأرض بالثني الأخمصي. العضلة رباعية الرؤوس تبسط الركبة في وقت أبكر من الدعم، والعضلات خلف الفخذ تعمل خاصة في طور الخطف وعودة الساق. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q5', 'exam_eps_2021_lycee', 5, 'Physiologie de l''exercice', 'En entrainement, la surcompensation est synonyme :', false, '[{"id": "A", "text": "De l''intensité de la durée des exercices."}, {"id": "B", "text": "Du volume de travail effectué à l''entrainement."}, {"id": "C", "text": "De la reconstitution des réserves énergétiques."}, {"id": "D", "text": "De la déshydratation accompagnée de signes de fatigue."}]'::jsonb, ARRAY['C']::text[], 'بعد الحمل، الاستشفاء لا يعيد الاحتياطيات الطاقية إلى مستواها الأولي فحسب، بل يعيد تكوينها بما يتجاوزه — هذا هو التعويض الزائد. الشدة والحجم (A, B) عاملان في الحمل الذي يسبّبه، والجفاف (D) من مظاهر التعب. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q6', 'exam_eps_2021_lycee', 6, 'Physiologie de l''exercice', 'Parmi les avantages de l''entrainement en course on trouve :', false, '[{"id": "A", "text": "Une bonne transmission de l''influx nerveux vers les muscles locomoteurs."}, {"id": "B", "text": "Une adéquation biomécanique en course."}, {"id": "C", "text": "Une augmentation substantielle du nombre et de la densité des capillaires."}, {"id": "D", "text": "Une bonne régulation de la fréquence cardiaque."}]'::jsonb, ARRAY['C']::text[], 'التدريب على التحمل يزيد بوضوح شعيرات العضلات المستعملة، ما يحسّن إمداد الأكسجين والاستخلاص المحيطي. انخفاض نبض القلب في الراحة أثر حقيقي آخر، لكن «bonne régulation» (D) لا تصف أي تكيّف دقيق. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q7', 'exam_eps_2021_lycee', 7, 'Physiologie de l''exercice', 'La nage la plus économique en matière de dépense énergétique est :', false, '[{"id": "A", "text": "La nage libre."}, {"id": "B", "text": "La brasse papillon."}, {"id": "C", "text": "La nage sur le dos."}, {"id": "D", "text": "La brasse classique."}]'::jsonb, ARRAY['A']::text[], 'الزحف (crawl) في السباحة الحرة له أقل كلفة طاقية لكل متر: دفع متواصل، جسم ممدود، مقاومة قليلة. الظهر يأتي بعده، أما الصدر والفراشة، مع طورَي تباطؤ واضحين، فهما الأكثر كلفة. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q8', 'exam_eps_2021_lycee', 8, 'Physiologie de l''exercice', 'La puissance de la filière énergétique est :', false, '[{"id": "A", "text": "La faculté de réaliser un effort intense dans la durée pour augmenter la performance."}, {"id": "B", "text": "La faculté de résister lors des efforts intenses pour vaincre les adversaires."}, {"id": "C", "text": "La faculté de supporter une charge de travail intense."}, {"id": "D", "text": "La faculté de produire une très grande quantité d''énergie en un temps donné."}]'::jsonb, ARRAY['D']::text[], 'قدرة المسلك هي أقصى تدفق للطاقة الذي يقدّمه في وحدة الزمن. أما سعته فهي الكمية الإجمالية للطاقة المتاحة، التي تحدد مدة استمرار الجهد — وهو ما تصفه بالأحرى A وC. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q9', 'exam_eps_2021_lycee', 9, 'Évaluation des apprentissages en EPS', 'L''évaluation en EPS implique :', false, '[{"id": "A", "text": "La mesure des performances des élèves pour dresser un classement."}, {"id": "B", "text": "La confrontation des prestations des élèves entre eux pour identifier le meilleur."}, {"id": "C", "text": "La confrontation entre un référé et un référent."}, {"id": "D", "text": "L''appréciation des procédures d''actions des élèves."}]'::jsonb, ARRAY['C']::text[], 'التقييم، بمعنى باربييه وهادجي (Barbier, Hadji)، هو مواجهة مرجع (ما يُلاحَظ لدى التلميذ) بمرجع معياري (ما يُنتظَر منه) لإصدار حكم. ترتيب التلاميذ أو مقارنتهم بعضهم ببعض (A, B) منطق معياري انتقائي لا تعريف للتقييم. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q10', 'exam_eps_2021_lycee', 10, 'Études des APS et apprentissage moteur', 'La roucoulette est un tir :', false, '[{"id": "A", "text": "en extension."}, {"id": "B", "text": "à l''arrêt."}, {"id": "C", "text": "à rebond."}, {"id": "D", "text": "désaxé."}]'::jsonb, ARRAY['C']::text[], 'في كرة اليد، الـ«roucoulette» رمية بأثر: حركة المعصم تطبع على الكرة أثراً جانبياً، فترتدّ أمام الحارس وتغيّر اتجاهها (C). السؤال لا يسمّي الرياضة، وفي كرة السلة تدلّ الكلمة نفسها أحياناً على الـfinger roll المنفَّذ بذراع ممدودة، ومن هنا قراءة A. أما الرمية المنحرفة (D) فرمية أخرى في كرة اليد. (wadifa + mesconcours: C؛ manasseb وحده: D «Tir de handball avec rotation du poignet, souvent exécuté désaxé, depuis l''aile» — انظر الملاحظة 1. الصياغة مراجعة في الورقة، ص. 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (manasseb: D)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q11', 'exam_eps_2021_lycee', 11, 'Anatomie descriptive et fonctionnelle', 'Le ligament croisé postérieur s''oppose :', false, '[{"id": "A", "text": "Au déplacement du tibia vers l''arrière par rapport au fémur."}, {"id": "B", "text": "A la torsion du genou dans le côté latérale externe."}, {"id": "C", "text": "A la dislocation du genou."}, {"id": "D", "text": "Au glissement du tibia vers l''avant."}]'::jsonb, ARRAY['A']::text[], 'الرباط الصليبي الخلفي يمنع الساق من التراجع تحت الفخذ (الدرج الخلفي). انزلاق الساق إلى الأمام (D) يكبحه الرباط الصليبي الأمامي، والقيود الجانبية تكبحها الأربطة الجانبية. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q12', 'exam_eps_2021_lycee', 12, 'Physiologie de l''exercice', 'Sous l''effet de l''entrainement :', false, '[{"id": "A", "text": "La fréquence cardiaque subit des variations notables."}, {"id": "B", "text": "Le volume d''éjection systolique se stabilise."}, {"id": "C", "text": "La fréquence de repos baisse."}, {"id": "D", "text": "Le retour à la normale de la fréquence cardiaque se fait longuement."}]'::jsonb, ARRAY['C']::text[], 'تدريب التحمل يكبّر القلب ويقوّيه: حجم القذف الانقباضي يزداد، فيُحصَّل النتاج نفسه بنبض راحة أدنى. حجم القذف لا يستقر بل ينمو (B)، والاستشفاء القلبي يصبح أسرع لا أطول (D). (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q13', 'exam_eps_2021_lycee', 13, 'Physiologie de l''exercice', 'Les nerfs du système nerveux végétatif interviennent dans :', false, '[{"id": "A", "text": "La régulation des mouvements du train supérieur."}, {"id": "B", "text": "La régulation de la respiration et de la circulation."}, {"id": "C", "text": "Le maintien des attitudes de posture."}, {"id": "D", "text": "La régulation des mouvements du train inférieur."}]'::jsonb, ARRAY['B']::text[], 'الجهاز العصبي الخضري (الودي ونظير الودي) يتحكم في الوظائف اللاإرادية: إيقاع القلب، الحركة الوعائية، التهوية، الهضم. حركات الأطراف والوضعية تابعة للجهاز العصبي الجسدي الذي يتحكم في العضلات الهيكلية. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q14', 'exam_eps_2021_lycee', 14, 'Études des APS et apprentissage moteur', 'Pour ne pas s''écraser en réception après le franchissement en course de haies, il faut :', false, '[{"id": "A", "text": "Se réceptionner jambe semi fléchie puis tendue pour amortir le choc."}, {"id": "B", "text": "Se réceptionner Jambe fléchie."}, {"id": "C", "text": "Se réceptionner jambe tendue."}, {"id": "D", "text": "Se réceptionner jambe semi fléchie."}]'::jsonb, ARRAY['C']::text[], 'بعد الحاجز، يستعيد العدّاء الاتصال بمقدم القدم، وساق الهجوم ممدودة ومشدودة تحت مركز الثقل، ليواصل الخطوة فوراً. الساق المثنية أو الماصّة للصدمة (A, B, D) هي بالضبط ما يجعل العدّاء ينكسر: ينزل الحوض وتضيع السرعة. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q15', 'exam_eps_2021_lycee', 15, 'Anatomie descriptive et fonctionnelle', 'L''extension forcée de la hanche permet l''étirement du :', false, '[{"id": "A", "text": "demi membraneux et du long biceps."}, {"id": "B", "text": "demi tendineux et du droit interne."}, {"id": "C", "text": "Quadriceps et du psoas iliaque."}, {"id": "D", "text": "grand adducteur et du pectiné."}]'::jsonb, ARRAY['C']::text[], 'في البسط القسري، ينفتح الورك إلى الخلف ويمدّد مثنّياته: العضلة القطنية الحرقفية والعضلة المستقيمة الأمامية من رباعية الرؤوس. أما نصف الغشائية وذات الرأسين الطويلة ونصف الوترية (A, B) فهي باسطات للورك، تُمدَّد بالثني لا بالبسط. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q16', 'exam_eps_2021_lycee', 16, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'La stratégie adoptée pour amener l''élève à maintenir l''attention sélective est de :', false, '[{"id": "A", "text": "Décomposer les tâches complexes en plusieurs tâches simples."}, {"id": "B", "text": "Insister sur l''importance et l''utilité de la tâche."}, {"id": "C", "text": "Penser à la valorisation, et la récompense lors de l''exécution de la tâche."}, {"id": "D", "text": "Expliciter les étapes et les démarches d''une tâche et la fractionner."}]'::jsonb, ARRAY['A']::text[], 'الانتباه الانتقائي هو الاحتفاظ بالمعلومات النافعة فقط. تقليص كمية المعلومات بتفكيك مهمة معقدة إلى مهام بسيطة يساعد التلميذ على الحفاظ على هذا الانتقاء (A). أما D، التي تجزّئ المهمة أيضاً، فقريبة جداً وقد تكون منتظَرة. وC من الدافعية لا من الانتباه. (mesconcours + manasseb: A؛ wadifa وحدها: B، مع إشارة mesconcours إلى أن «حلاً مستقلاً ثانياً» يحتفظ بـB — انظر الملاحظة 2. الصياغة مراجعة في ورقة wadifa، ص. 4.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (wadifa: B)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q17', 'exam_eps_2021_lycee', 17, 'Physiologie de l''exercice', 'Les tensions musculaires ressenties 24 H à 48 H après l''effort sont la conséquence de :', false, '[{"id": "A", "text": "L''accumulation de l''acide lactique dans le muscle."}, {"id": "B", "text": "La charge de travail qui n''a pas été progressive."}, {"id": "C", "text": "La contraction involontaire pendant l''exercice."}, {"id": "D", "text": "La contusion musculaire due à l''état de la pelouse."}]'::jsonb, ARRAY['B']::text[], 'الأوجاع المتأخرة تأتي من تمزّقات مجهرية في الألياف، خاصة بعد جهد غير معتاد أو لا مركزي، أي من حمل لم يُزَد تدريجياً. حمض اللاكتيك (A) يُطرح في نحو ساعة ولا يفسّر ألماً بعد يومين. التقلص اللاإرادي (C) هو التشنّج. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q18', 'exam_eps_2021_lycee', 18, 'Études des APS et apprentissage moteur', 'Les objectifs qui déterminent les contenus des mésocycles et des microcycles dans une phase précompétitive s''affichent comme suite :', false, '[{"id": "A", "text": "Plus le volume est grand, plus l''intensité et la spécificité sont moins importantes."}, {"id": "B", "text": "Plus le volume est bas, plus l''intensité et la spécificité sont importantes."}, {"id": "C", "text": "Plus le volume est grand, plus l''intensité et la spécificité sont importantes."}, {"id": "D", "text": "Plus le volume est bas, plus l''intensité et la spécificité sont moins importantes."}]'::jsonb, ARRAY['B']::text[], 'مع اقتراب المنافسة، ينخفض حجم العمل بينما تزداد شدة التمارين وخصوصيتها. أما A فتصف فترة الإعداد العام، حيث الحجم مرتفع والعمل قليل الخصوصية. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q19', 'exam_eps_2021_lycee', 19, 'Études des APS et apprentissage moteur', 'Le trajet de lancement est :', false, '[{"id": "A", "text": "L''exploitation des différentes chaines de force musculaire."}, {"id": "B", "text": "Le tracé décrit par l''engin lors de la phase d''élan."}, {"id": "C", "text": "La trajectoire du jet correspondant à l''angle d''envol du poids."}, {"id": "D", "text": "Le tracé décrit par l''engin après le jet final."}]'::jsonb, ARRAY['B']::text[], 'مسار الإطلاق هو الطريق الذي يقطعه الأداة ما دام الرامي يؤثر فيها، أثناء الزخم وحتى الإفلات. وكلما كان أطول وأكثر تسارعاً، كانت سرعة الانطلاق أكبر. ما تصفه الأداة بعد الإفلات (C, D) هو مسارها، الذي لم يعد يتوقف على الرامي. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q20', 'exam_eps_2021_lycee', 20, 'Études des APS et apprentissage moteur', 'Pendant le franchissement en course de haies il s''agit de :', false, '[{"id": "A", "text": "Garder le buste droit pour ne pas se déséquilibrer."}, {"id": "B", "text": "Placer le bassin vers le haut et l''avant."}, {"id": "C", "text": "Ramener la jambe libre dans l''axe."}, {"id": "D", "text": "Maximiser l''inclinaison vers l''avant."}]'::jsonb, ARRAY['B']::text[], 'مبدأ الاجتياز هو عبور الحاجز بحوض مرتفع ومدفوع إلى الأمام، دون قفز، للحفاظ على السرعة (B). الجذع يميل إلى الأمام (فـA خاطئة) لكن دون إفراط (D). أما إعادة الساق الحرة في المحور (C) فتعليمة حقيقية أيضاً، إن فُهمت بها ساق التخطّي، لكنها تتدخّل بعد الاجتياز عند استئناف الدعم. (انظر الملاحظة 3. الصياغة مراجعة في الورقة، ص. 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (manasseb: C، wadifa: D)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q21', 'exam_eps_2021_lycee', 21, 'Physiologie de l''exercice', 'Les pompes sautées sollicitent une contraction :', false, '[{"id": "A", "text": "Isométrique."}, {"id": "B", "text": "Isotonique."}, {"id": "C", "text": "Pliométrique."}, {"id": "D", "text": "Concentrique."}]'::jsonb, ARRAY['C']::text[], 'في تمرين الضغط القافز، الذراعان تمتصّان الاستقبال بالكبح (طور لا مركزي) ثم تدفعان الأرض فوراً (طور مركزي): إنها دورة التمدد–التقصير في النظام البليومتري. أما «مركزي» (D) فيصف النصف الثاني من الحركة فقط. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q22', 'exam_eps_2021_lycee', 22, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Le contexte d''une situation d''enseignement apprentissage est constitué :', false, '[{"id": "A", "text": "De l''ensemble des éléments qui autorisent les actions des sujets."}, {"id": "B", "text": "De l''ensemble des éléments avec lesquels le sujet est en relation."}, {"id": "C", "text": "De l''ensemble des significations que le sujet attribue aux éléments de la situation."}, {"id": "D", "text": "De l''ensemble des objets institutionnels avec lesquels le sujet entretient des rapports stables."}]'::jsonb, ARRAY['B']::text[], 'الوضعية تجمع ذاتاً وسياقاً، والسياق هو مجموع العناصر (العتاد، الفضاء، الشركاء، التعليمات) التي يكون الذات في علاقة معها. أما الدلالات التي ينسبها الذات إليها (C) فمن تأويله للوضعية لا من السياق نفسه. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q23', 'exam_eps_2021_lycee', 23, 'Études des APS et apprentissage moteur', 'En athlétisme, la période de latence de réaction motrice est :', false, '[{"id": "A", "text": "La période qui traduit la faculté d''exprimer la force maximale en un temps minimal."}, {"id": "B", "text": "La période qui traduit la faculté d''effectuer le plus grand nombre de gestes identiques pendant une seule unité de temps."}, {"id": "C", "text": "La période de temps comprise entre le signal et la réaction motrice de l''athlète."}, {"id": "D", "text": "La période de temps comprise entre la phase d''accélération et la faculté à maintenir la vitesse maximale."}]'::jsonb, ARRAY['C']::text[], 'زمن الكمون، أو زمن رد الفعل، يفصل الإشارة (طلقة المسدس) عن بداية الاستجابة الحركية. أما A فتعرّف القوة الانفجارية، وB التكرار الحركي، وD تمزج التسارع وتحمل السرعة. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q24', 'exam_eps_2021_lycee', 24, 'Généralités sur la didactique et la pédagogie en EPS', 'L''objet des Neurosciences est :', false, '[{"id": "A", "text": "L''étude des différences individuelles notamment les grands continua de personnalité ou les styles cognitifs."}, {"id": "B", "text": "L''étude des relations entre les opérations mentales et les processus nerveux et leurs conséquences sur le comportement."}, {"id": "C", "text": "L''étude du psychisme dans sa formation et ses transformations."}, {"id": "D", "text": "L''étude des processus mentaux qui s''intercalent ente stimulus et réponse."}]'::jsonb, ARRAY['B']::text[], 'علوم الأعصاب تربط عمل الجهاز العصبي بالعمليات الذهنية والسلوك. أما A فتعرّف علم النفس الفارقي، وC علم نفس النمو، وD علم النفس المعرفي الذي يدرس الصندوق الأسود بين المثير والاستجابة دون المرور بالركيزة العصبية. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q25', 'exam_eps_2021_lycee', 25, 'Biomécanique', 'Lors de la marche ; La dépense énergétique diminue lorsque :', false, '[{"id": "A", "text": "Le rapport entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur est supérieur à 1."}, {"id": "B", "text": "Le rapport entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur est inférieur à 1."}, {"id": "C", "text": "Le rapport entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur est égal à 1."}, {"id": "D", "text": "Le rapport entre la durée du pas et la durée de la période d''oscillation propre du membre inferieur est égal à 0."}]'::jsonb, ARRAY['C']::text[], 'أثناء المشي، تتأرجح الساق كبندول. عندما تتطابق إيقاع الخطوة مع الفترة الخاصة لهذا البندول (نسبة = 1)، تتأرجح الساق شبه حرة والعضلات تبذل أقل عمل. المشي أسرع أو أبطأ من هذا الرنين يجبر العضلات على تسريع الساق أو كبحها. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q26', 'exam_eps_2021_lycee', 26, 'Compétences, objectifs et contenus en EPS', 'Les pré-requis en apprentissage sont :', false, '[{"id": "A", "text": "Les sous-habiletés, organisées hiérarchiquement et coordonnées en des blocs fonctionnels plus intégrées."}, {"id": "B", "text": "Les connaissances procédurales des instructions relatives à l''utilisation des données."}, {"id": "C", "text": "Les conditions préalables à remplir ou les comportements antérieurs pour entreprendre un apprentissage donné."}, {"id": "D", "text": "Les connaissances déclaratives qui s''actualisent ou s''expriment dans le langage naturel."}]'::jsonb, ARRAY['C']::text[], 'المتطلب السابق هو ما يجب أن يتقنه التلميذ قبل الشروع في تعلم جديد. أما A فتصف التنظيم الهرمي لمهارة، وB وD تعرّفان المعارف الإجرائية والتصريحية، التي قد تُستعمل كمتطلبات سابقة دون أن تكون تعريفها. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q27', 'exam_eps_2021_lycee', 27, 'Biomécanique', 'En gymnastique, la pirouette s''exécute bio mécaniquement dans :', false, '[{"id": "A", "text": "Un axe longitudinal et un plan transversal."}, {"id": "B", "text": "Un plan frontal par rapport à un axe latéral."}, {"id": "C", "text": "Un plan sagittal par rapport à l''axe de rotation transversal."}, {"id": "D", "text": "Un axe latéral et un plan sagittal."}]'::jsonb, ARRAY['A']::text[], 'الدوران (pirouette) دوران حول المحور الطولي للجسم (من الرأس إلى القدمين)، ويتمّ في المستوى المستعرض الأفقي. أما الدوران حول المحور المستعرض في المستوى السهمي (C, D) فهو الشقلبات والدحرجات. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q28', 'exam_eps_2021_lycee', 28, 'Études des APS et apprentissage moteur', 'La PPG a pour fonction de :', false, '[{"id": "A", "text": "Développer les qualités nécessaires à la spécificité et renforcer les points forts de l''athlète."}, {"id": "B", "text": "Développer l''ensemble des capacités fonctionnelles de l''athlète."}, {"id": "C", "text": "Développer les possibilités nerveuses et les capacités de récupération de l''athlète."}, {"id": "D", "text": "Développer les qualités psychologiques et d''adaptation chez l''athlète."}]'::jsonb, ARRAY['B']::text[], 'الإعداد البدني العام يطوّر بطريقة واسعة ومتوازنة مجموع قدرات الرياضي (التحمل، القوة، السرعة، المرونة، التنسيق). أما العمل على صفات التخصص (A) فموضوع الإعداد البدني الخاص. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q29', 'exam_eps_2021_lycee', 29, 'Physiologie de l''exercice', 'La créatine phosphate est :', false, '[{"id": "A", "text": "Un composé riche en phosphore en réserve intracellulaire."}, {"id": "B", "text": "Un composé riche en phosphore en réserve dans le sang."}, {"id": "C", "text": "Un composé riche en phosphore en réserve dans le foie."}, {"id": "D", "text": "Un composé riche en phosphore en réserve dans le muscle."}]'::jsonb, ARRAY['D']::text[], 'الفوسفوكرياتين مخزَّن أساساً (نحو 95٪) في العضلة الهيكلية، حيث يعيد تركيب ATP في الثواني الأولى من الجهد. وهذا المخزون داخل خلوي أيضاً، لأنه يوجد في الألياف العضلية، ما يجعل A قابلاً للدفاع. أما الدم والكبد (B, C) فلا يحويان احتياطياً يُذكر. (اتفاق المصادر الثلاثة؛ ⚠ في mesconcours.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, 'البديل A قابل للدفاع')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q30', 'exam_eps_2021_lycee', 30, 'Études des APS et apprentissage moteur', 'Les demandes de la tâche renvoient :', false, '[{"id": "A", "text": "Aux spécificités des modalités d''exécutions."}, {"id": "B", "text": "Aux contraintes à prendre en compte pour réussir."}, {"id": "C", "text": "Aux types et aux niveaux de ressources mobilisées."}, {"id": "D", "text": "Aux caractéristiques objectives et au processus mis en jeu par le sujet."}]'::jsonb, ARRAY['C']::text[], 'عند فاموز (Famose)، مطالب المهمة (أو متطلباتها) هي ما تتطلبه المهمة من الذات من موارد، من أي نوع وبأي مستوى. أما D فيمزج الوصف الموضوعي للمهمة وعمليات الذات، وبعض الدروس تعرّف المطالب بهذه العمليات، ومن هنا قراءة منافسة. أما B فيصف بالأحرى شروط الإنجاز. (اتفاق المصادر الثلاثة؛ ⚠ في mesconcours.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q31', 'exam_eps_2021_lycee', 31, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'La théorie de l''apprentissage social met l''accent sur :', false, '[{"id": "A", "text": "L''importance centrale des motifs et des conflits inconscients comme force déterminante du comportement."}, {"id": "B", "text": "L''importance des facteurs environnementaux dans la détermination du comportement et le façonnement de la personnalité."}, {"id": "C", "text": "L''importance de l''expérience subjective des situations par l''individu qui perçoit et interprète les événements de son existence."}, {"id": "D", "text": "L''importance aux traits de la personnalité et aux caractéristiques de la situation vécue."}]'::jsonb, ARRAY['B']::text[], 'نظرية التعلم الاجتماعي (باندورا، Bandura) تفسّر السلوك بالبيئة، وخاصة بملاحظة النماذج وعواقبها. أما A فتلخّص التحليل النفسي، وC المقاربة الظواهرية أو الإنسانية، وD المقاربة التفاعلية للسمات. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q32', 'exam_eps_2021_lycee', 32, 'Physiologie de l''exercice', 'En course à pied, l''intensité aérobie s''illustre par :', false, '[{"id": "A", "text": "La faculté du coureur à parcourir une distance identique dans des temps inégaux à intensité élevée."}, {"id": "B", "text": "L''allure critique à laquelle le coureur utilise la quantité totale d''oxygène nécessaire aux cellules musculaires."}, {"id": "C", "text": "La capacité de l''athlète à alterner des périodes courues à allure soutenue voire intense."}, {"id": "D", "text": "La faculté de changer l''allure avec des intensités variables et à des moments différents de la course."}]'::jsonb, ARRAY['B']::text[], 'الشدة الهوائية القصوى توافق السرعة التي يبلغ عندها العدّاء أقصى استهلاك للأكسجين (VMA): بعدها لا يكفي الأكسجين العضلات. أما A وD فيصفان تغييرات في الإيقاع، وC العمل المتقطع، لا شدة. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q33', 'exam_eps_2021_lycee', 33, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Le Gestaltisme est une théorie selon laquelle :', false, '[{"id": "A", "text": "On prétend réduire le complexe à l''association d''éléments simples."}, {"id": "B", "text": "On privilégie la structure au dépend des éléments."}, {"id": "C", "text": "L''élément n''a de signification que par rapport à l''ensemble."}, {"id": "D", "text": "L''élément est étudié isolément sans aucune relation avec les autres."}]'::jsonb, ARRAY['C']::text[], 'في علم نفس الشكل (الغشتالت)، الكلّ شيء آخر غير مجموع أجزائه، والعنصر لا يأخذ معناه إلا بالنسبة إلى المجموع (C). أما B («تغليب البنية على العناصر») فينبع من المبدأ نفسه ويمكن اعتباره صحيحاً؛ وهو أيضاً صيغة البنيوية. أما A وD فيصفان الارتباطية والمقاربة العنصرية التي يحاربها الغشتالت. (manasseb + wadifa: C؛ mesconcours وحدها: B مع إقرار بأن C «peut être tenu pour juste» — انظر الملاحظة 4.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (mesconcours: B)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q34', 'exam_eps_2021_lycee', 34, 'Physiologie de l''exercice', 'Un muscle est dit excitable si :', false, '[{"id": "A", "text": "Il se laisse déformer sous l''effet d''une force et reprend son état initial."}, {"id": "B", "text": "Il a la possibilité de se raccourcir et de s''allonger."}, {"id": "C", "text": "Il répond de façon spécifique à la stimulation."}, {"id": "D", "text": "Il exprime le rapport entre le travail exécuté et le temps."}]'::jsonb, ARRAY['C']::text[], 'الاستثارية هي خاصية العضلة في الاستجابة لمنبّه، عصبي أو كهربائي، باستجابة خاصة بها: التقلص. أما A فتعرّف المرونة، وB القدرة على التقلص والتمدد، وD القدرة. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q35', 'exam_eps_2021_lycee', 35, 'Études des APS et apprentissage moteur', 'La complexité de la tâche est déterminée par :', false, '[{"id": "A", "text": "Le niveau des exigences de la tâche sollicitant des ressources bio-informationnelles."}, {"id": "B", "text": "La quantité d''informations à traiter pour l''organisation et le déclenchement du mouvement."}, {"id": "C", "text": "L''ensemble des potentiels énergétiques susceptibles de moduler l''efficacité du processus de traitement de l''information."}, {"id": "D", "text": "Le niveau des exigences de la tâche sollicitant des ressources bioénergétiques."}]'::jsonb, ARRAY['B']::text[], 'عند فاموز، يميَّز بُعدان لصعوبة المهمة: تعقيدها، الذي يرجع إلى كمية المعلومات الواجب معالجتها لتنظيم الحركة وإطلاقها (B)، و«صعوبتها» (difficulté) التي ترجع إلى مستوى المطالب على الموارد البيومعلوماتية (A)، و«شدتها» (intensité) التي ترجع إلى الموارد البيوطاقية (D). قراءة mesconcours وحدها تجعل A تعريفاً للتعقيد. (manasseb + wadifa: B؛ mesconcours وحدها: A مع إقرار بأن B «définition voisine que certains cours retiennent» — انظر الملاحظة 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (mesconcours: A)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q36', 'exam_eps_2021_lycee', 36, 'Physiologie de l''exercice', 'L''organisation de la motricité volontaire prend sa source dans :', false, '[{"id": "A", "text": "Les axones du faisceau pyramidal qui se terminent dans la moelle épinière."}, {"id": "B", "text": "Les aires motrices cérébrales situées en avant du sillon central."}, {"id": "C", "text": "Les aires motrices cérébrales situées en arrière du sillon central."}, {"id": "D", "text": "Les diverses parties du système nerveux central."}]'::jsonb, ARRAY['B']::text[], 'الحركة الإرادية تنشأ في القشرة الحركية الأولية وما قبل الحركية والتكميلية، الواقعة أمام الثلم المركزي. وخلف الثلم (C) توجد القشرة الحسية الجسدية التي تستقبل الأحاسيس. أما الحزمة الهرمية (A) فتنقل الأمر فقط نحو النخاع. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q37', 'exam_eps_2021_lycee', 37, 'Études des APS et apprentissage moteur', 'La rondade est :', false, '[{"id": "A", "text": "Un élément acrobatique en rotation libre transversale avant complète."}, {"id": "B", "text": "Un élément acrobatique en rotation libre transversale arrière complète."}, {"id": "C", "text": "Un élément acrobatique constituant un trait d''union entre une course d''élan et un autre élément acrobatique."}, {"id": "D", "text": "Un élément acrobatique par renversement en rotation avant totale corps tendu."}]'::jsonb, ARRAY['C']::text[], 'الرونداد (rondade) تحوّل السرعة الأفقية لسباق الزخم إلى دوران خلفي: تعمل كعنصر رابط قبل الشقلبة الخلفية أو السالتو الخلفي. وهي تمرّ بدعم اليدين، فليست دوراناً حراً (A, B)، وتنتهي والظهر في اتجاه السباق لا بدوران أمامي (D). (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q38', 'exam_eps_2021_lycee', 38, 'Généralités sur la didactique et la pédagogie en EPS', 'En psychologie, l''affectivité renvoie à :', false, '[{"id": "A", "text": "L''ensemble des processus inconscients qui interprètent les événements et les conduites courantes."}, {"id": "B", "text": "L''ensemble des variables correspondant à l''investissement en ressources bioénergétiques ou bio-informationnelles."}, {"id": "C", "text": "L''ensemble des états d''esprits éprouvés par l''individu dans des situations variées."}, {"id": "D", "text": "L''ensemble des attitudes à réagir de façon défavorable ou favorable envers un objet donné."}]'::jsonb, ARRAY['C']::text[], 'الوجدانية تجمع الانفعالات والمشاعر والأمزجة التي يعيشها الفرد حسب الوضعيات. أما D فتعرّف الموقف، وB تقترب من الدافعية أو الجهد، وA ترجع إلى لاوعي التحليل النفسي. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q39', 'exam_eps_2021_lycee', 39, 'Physiologie de l''exercice', 'La filière anaérobie alactique recouvre :', false, '[{"id": "A", "text": "L''ensemble des réactions assurant la synthèse de l''ATP en présence d''oxygène et sans production d''acide lactique."}, {"id": "B", "text": "L''ensemble des réactions assurant la synthèse de l''ATP en absence d''oxygène et sans production d''acide lactique."}, {"id": "C", "text": "L''ensemble des réactions assurant la synthèse de l''ATP en absence d''oxygène et avec production d''acide lactique."}, {"id": "D", "text": "L''ensemble des réactions assurant la synthèse de l''ATP en présence d''oxygène et avec production d''acide lactique."}]'::jsonb, ARRAY['B']::text[], '«لاهوائي» يعني دون اللجوء إلى الأكسجين، و«لا لبني» دون إنتاج حمض اللاكتيك: المسلك يعيد تركيب ATP انطلاقاً من الفوسفوكرياتين. أما C فتصف المسلك اللاهوائي اللبني (تحلل السكر)، وA المسلك الهوائي. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q40', 'exam_eps_2021_lycee', 40, 'Biomécanique', 'En lancer de poids, la distance atteinte par l''engin dépond essentiellement de :', false, '[{"id": "A", "text": "La hauteur d''envol, la vitesse au moment du lâcher et l''équilibre de l''athlète."}, {"id": "B", "text": "La hauteur d''envol, la vitesse au moment du lâcher et de l''angle d''envol."}, {"id": "C", "text": "Du double appui, la vitesse au moment du lâcher et de l''angle d''envol."}, {"id": "D", "text": "De la vitesse au moment du lâcher, la hauteur d''envol et de la posture du lanceur."}]'::jsonb, ARRAY['B']::text[], 'بعد الإفلات، يتبع الثقل مساراً بالستياً مداه يتوقف على ثلاثة عوامل: سرعة الانطلاق، وزاوية الانطلاق، وارتفاع الإفلات. أما التوازن والدعم المزدوج والوضعية (A, C, D) فتؤثر في هذه العوامل دون أن تحلّ محلها. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q41', 'exam_eps_2021_lycee', 41, 'Études des APS et apprentissage moteur', 'Le classement en phase finale du lancer de poids est effectué selon :', false, '[{"id": "A", "text": "Le nombre d''essais réussis de chaque athlète."}, {"id": "B", "text": "La meilleure performance réalisée au cours de trois essais."}, {"id": "C", "text": "La meilleure performance réalisée au cours de six essais."}, {"id": "D", "text": "La meilleure performance réalisée dans les essais précédents."}]'::jsonb, ARRAY['C']::text[], 'في نهائي الرمي، لكل رياضي ثلاث محاولات، ثم يحصل الثمانية الأوائل على ثلاث أخرى، والترتيب يحتفظ بأفضل رمية من الست (C)، وفق قانون ألعاب القوى العالمي (World Athletics) الساري في 2021. أما عدد المحاولات الناجحة (A) فيُستعمل فقط لفكّ التعادلات لا للترتيب. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q42', 'exam_eps_2021_lycee', 42, 'Physiologie de l''exercice', 'La capacité des cellules musculaires à oxyder le glycogène après entrainement vise à :', false, '[{"id": "A", "text": "L''augmentation du nombre et de la taille des mitochondries, la concentration des enzymes et le développement du système de transport d''électrons."}, {"id": "B", "text": "L''amélioration de l''activité et la concentration des enzymes dans le cycle de Krebs et la diminution du nombre des mitochondries."}, {"id": "C", "text": "Le développement du système de transport d''électrons et la diminution de la taille des mitochondries."}, {"id": "D", "text": "Le développement du système de transport d''électrons et la stabilisation du nombre et de la taille des mitochondries."}]'::jsonb, ARRAY['A']::text[], 'التدريب الهوائي يزيد عدد الميتوكوندريا وحجمها، وتركيز الإنزيمات المؤكسدة ومكوّنات السلسلة التنفسية. وكل اقتراح يجعل الميتوكوندريا تنقص أو تركد (B, C, D) يناقض التكيف الرئيسي للتحمل. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q43', 'exam_eps_2021_lycee', 43, 'Études des APS et apprentissage moteur', 'Dans les théories du contrôle moteur, un programme moteur signifie :', false, '[{"id": "A", "text": "L''expérience motrice stockée et relative à une catégorie de mouvements caractérisés par une identité de structure."}, {"id": "B", "text": "Une série d''instructions destinées à sélectionner les groupes musculaires et régler l''intensité et le timing de leur contraction-relaxation."}, {"id": "C", "text": "Tous les détails de l''organisation spatio-temporelle d''une séquence motrice fonctionnellement signifiante."}, {"id": "D", "text": "L''existence d''une architecture de neurones aux interconnexions rigidement câblées."}]'::jsonb, ARRAY['B']::text[], 'بمعنى كيل (Keele) وشميدت (Schmidt)، البرنامج الحركي مجموعة أوامر مُعدّة قبل الحركة، تختار العضلات وتحدّد قوة انقباضاتها وتوقيتها. أما A فتصف البرنامج الحركي المعمَّم لشميدت، المشترك بين صنف من الحركات، وقد يتوقعه مصحّح يعتمد هذه النظرية. أما D فتستحضر مولّدات الإيقاع المركزية. (اتفاق المصادر الثلاثة؛ ⚠ في mesconcours.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q44', 'exam_eps_2021_lycee', 44, 'Méthodes et approches pédagogiques en EPS', 'L''intérêt de l''enseignement sportif basé sur la perception se construit au tour de :', false, '[{"id": "A", "text": "La partie visible du geste et de son organisation extérieure."}, {"id": "B", "text": "La composante motrice relative au modèle gestuel."}, {"id": "C", "text": "La sollicitation et l''activation des mécanismes mentaux."}, {"id": "D", "text": "L''aménagement d''un milieu stimulant."}]'::jsonb, ARRAY['C']::text[], 'التدريس المتمحور حول الإدراك يسعى إلى جعل التلميذ يلتقط المعلومات النافعة ويعالجها، أي إلى استدعاء آلياته الإدراكية واتخاذ القرار (C)، لا إلى إعادة إنتاج الشكل المرئي لحركة (A, B). وفي قراءة بيئية، يُشتغَل على الإدراك بتهيئة الوسط (D)، ما يجعله جواباً منافساً. (mesconcours + wadifa: C؛ manasseb امتنع — انظر الملاحظة 6.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة (manasseb: بلا جواب)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q45', 'exam_eps_2021_lycee', 45, 'Études des APS et apprentissage moteur', 'Selon les cognitivistes, l''amélioration de la performance face à une tâche à caractère d''anticipation-coïncidence est due à :', false, '[{"id": "A", "text": "Une fixation dans la difficulté de la précision requise à travers un mouvement simple."}, {"id": "B", "text": "Une gradation dans la difficulté de la précision requise à travers un mouvement complexe."}, {"id": "C", "text": "Une gestion dans la difficulté de la précision requise à travers un mouvement élaboré."}, {"id": "D", "text": "Une adaptation dans la difficulté de la précision requise à travers un mouvement composé."}]'::jsonb, ARRAY['B']::text[], 'الاقتراحات الأربعة لا تختلف إلا باسم وصفة، والسؤال لا يذكر مرجعاً دقيقاً. وفي منظور معرفي، يتقدّم الذات عندما تزداد الدقة الزمنية المطلوبة بالتدريج، على حركة تزداد تعقيداً (B). أما صعوبة ثابتة (A) فلا تُنتج تقدّماً؛ وC وD غامضتان بما لا يسمح بتمييزهما. (mesconcours + wadifa: B؛ manasseb امتنع — انظر الملاحظة 6.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة (manasseb: بلا جواب)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q46', 'exam_eps_2021_lycee', 46, 'Méthodes et approches pédagogiques en EPS', 'A travers une modélisation centré sur l''élève, l''enseignant se contente dans son statut de concepteur à :', false, '[{"id": "A", "text": "Décrire les comportements des élèves dans leur globalité et tenter d''ajuster son contenu d''enseignement."}, {"id": "B", "text": "Interpréter les comportements des élèves dans leurs spécificités et tenter d''ajuster les contenus d''enseignement."}, {"id": "C", "text": "Analyser les comportements des élèves dans leurs particularités et tenter d''ajuster son contenu d''enseignement."}, {"id": "D", "text": "Classer les comportements des élèves dans leurs diversités et tenter d''ajuster son contenu d''enseignement."}]'::jsonb, ARRAY['B']::text[], 'في نمذجة متمحورة حول التلميذ، ينطلق الأستاذ من السلوكيات الملاحَظة ويفسّرها، أي يبحث عن أسبابها الخاصة بكل تلميذ، ليعدّل المحتويات (B). والأفعال المقترحة متقاربة: تحليل الخصوصيات (C) قريب جداً، بينما الوصف (A) والتصنيف (D) يبقيان دون هذا التفسير. (mesconcours: B؛ wadifa: D مع إقرار بأن B وC «très proches et ne se distinguent pas nettement»؛ manasseb امتنع — انظر الملاحظة 7. الصياغة مراجعة في الورقة، ص. 12.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, '«للتحقق» (wadifa: D)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q47', 'exam_eps_2021_lycee', 47, 'Études des APS et apprentissage moteur', 'En se référant aux principes d''action retenus pour la course de vitesse, l''élève est appelé à :', false, '[{"id": "A", "text": "Stabiliser une maitrise gestuelle."}, {"id": "B", "text": "Maitriser le couple intensité/contrôle de l''action."}, {"id": "C", "text": "Connaitre ses possibilités pour utiliser le plus efficacement ses ressources."}, {"id": "D", "text": "Respecter son plan d''action pour développer sa motricité."}]'::jsonb, ARRAY['B']::text[], 'في العدو السريع، المشكلة هي إنتاج سرعة قصوى دون فقدان التحكم في الحركة: الجري بسرعة مع البقاء مسترخياً ومشدوداً وفي المحور. أما معرفة إمكاناته لتدبير موارده (C) فمبدأ سباق المدة، حيث يوزّع التلميذ جهده. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 12.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q48', 'exam_eps_2021_lycee', 48, 'Physiologie de l''exercice', 'Le cout énergétique est en relation très étroite avec :', false, '[{"id": "A", "text": "La vitesse de déplacement et varie selon l''intensité et la durée de travail."}, {"id": "B", "text": "La puissance de déplacement et varie selon le volume de travail."}, {"id": "C", "text": "Le mécanisme de déplacement et varie selon la nature de travail."}, {"id": "D", "text": "La capacité de déplacement et varie selon le type de travail."}]'::jsonb, ARRAY['A']::text[], 'الكلفة الطاقية هي الطاقة المبذولة لقطع مسافة معينة. وهي تعتمد أولاً على سرعة التنقل وتتغير مع شدة الجهد ومدته، لأن حصة المسالك والتعب تتطوران. الاقتراحات الأخرى تربط مصطلحات لا تعرّف هذه الكلفة. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 12.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q49', 'exam_eps_2021_lycee', 49, 'Biomécanique', 'Pour respecter le principe de conservation d''énergie lors d''un rebond sur un mini-trampoline :', false, '[{"id": "A", "text": "Le gymnaste maintien un bassin en antéversion au-dessus du point d''appui."}, {"id": "B", "text": "Le gymnaste maintien un bassin en rétroversion au-dessus du point d''appui."}, {"id": "C", "text": "Le gymnaste maintien un bassin aligné au-dessus du point d''appui."}, {"id": "D", "text": "Le gymnaste maintien un bassin en antéversion au-dessous du point d''appui."}]'::jsonb, ARRAY['C']::text[], 'لكي تعيد القماشة الطاقة المخزَّنة، يجب أن يبقى الجسم مشدوداً، والحوض مصطفاً عمودياً فوق نقطة الدعم (C). أما الميل الأمامي (A, D) فيقوّس الظهر: جزء من الطاقة يضيع في ثني الجذع ولا تعود دفعة القماشة موجَّهة إلى الأعلى. وقراءة ثانية تحتفظ بـB: في الجمباز، الـ«rétroversion» تعليمة كلاسيكية للتقوية، وهي التي تنتج هذا الاصطفاف. (اتفاق المصادر الثلاثة؛ ⚠ في mesconcours. الصياغة مراجعة في الورقة، ص. 12.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, 'البديل B قراءة ثانية')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q50', 'exam_eps_2021_lycee', 50, 'Études des APS et apprentissage moteur', 'La stratégie adoptée en défense lors d''un match de basket ball, avec des joueurs (de grandes tailles, peu mobiles et faibles en défense) est :', false, '[{"id": "A", "text": "Combinée."}, {"id": "B", "text": "Défense de zone."}, {"id": "C", "text": "Zone de presse."}, {"id": "D", "text": "Homme à homme."}]'::jsonb, ARRAY['B']::text[], 'لاعبون طوال لكن بطيئون وضعفاء في المواجهة الفردية يربحون بالدفاع عن منطقة قرب السلة، حيث طولهم يحمي المنطقة دون إلزامهم بتتبّع خصم سريع. أما رجل لرجل (D) والضغط المنطقي (C) فيتطلبان حركة وعدوانية. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q51', 'exam_eps_2021_lycee', 51, 'Méthodes et approches pédagogiques en EPS', 'La dévolution en apprentissage désigne :', false, '[{"id": "A", "text": "L''ensemble des responsabilités de l''enseignant pour gérer la conduite du groupe classe."}, {"id": "B", "text": "L''ensemble d''interactions réalisées par l''enseignant pour motiver le groupe classe."}, {"id": "C", "text": "L''ensemble des actions de l''enseignant visant à rendre l''élève responsable de la résolution d''un problème."}, {"id": "D", "text": "L''ensemble des paramètres aidant l''enseignant à élaborer des contenus d''enseignement-apprentissage."}]'::jsonb, ARRAY['C']::text[], 'عند بروسو (Brousseau)، التفويض (dévolution) هو الفعل الذي يجعل الأستاذ التلميذ يقبل مسؤولية مشكلة ليحلّها بنفسه. أما تدبير القسم (A) والتحفيز (B) فشرطان فقط. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q52', 'exam_eps_2021_lycee', 52, 'Mise en œuvre de l''enseignement et processus d''acquisition', 'Pour les écologistes, l''apprentissage moteur se définit comme étant :', false, '[{"id": "A", "text": "Un processus recherchant la stabilisation d''un programme Moteur efficace en fonction d''un traitement particulier de l''information"}, {"id": "B", "text": "Un processus recherchant l''adaptabilité du geste en couplant la variabilité de l''environnement avec la perception de l''individu en cours d''action"}, {"id": "C", "text": "Un processus recherchant l''adaptation des réponses motrices en fonction d''un stimulus provenant de l''environnement"}, {"id": "D", "text": "Un processus recherchant l''optimisation des processus perceptifs en fonction de la maturation du système nerveux"}]'::jsonb, ARRAY['B']::text[], 'المقاربة البيئية (غيبسون Gibson، ثم النظريات الدينامية) تصف التعلم بأنه اقتران أدق فأدق بين إدراك البيئة والفعل، يجعل الحركة قابلة للتكيف. أما A فالتصور المعرفي للبرنامج الحركي، وC التصور السلوكي مثير–استجابة، وD تصور نضجي. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q53', 'exam_eps_2021_lycee', 53, 'Méthodes et approches pédagogiques en EPS', 'L''apprenant est considéré selon les pédagogies actives comme :', false, '[{"id": "A", "text": "Un élément à intégrer dans une communauté du savoir."}, {"id": "B", "text": "Un participant actif dans le processus d''apprentissage."}, {"id": "C", "text": "Un sujet d''interaction avec autrui ainsi que l''environnement."}, {"id": "D", "text": "Un réceptionneur actif des savoirs transmis par les enseignants."}]'::jsonb, ARRAY['B']::text[], 'البيداغوجيات النشطة تضع التلميذ في المركز وتجعله يبني معارفه بالفعل. أما التفاعل مع الغير (C) فيميّز بالأحرى البنائية الاجتماعية، وأما متلقّي المعارف المنقولة (D) فيوافق البيداغوجيا التقليدية حتى وإن وُصف بالنشط. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q54', 'exam_eps_2021_lycee', 54, 'Études des APS et apprentissage moteur', 'la gestion du couple « risque - sécurité » est moins importante en :', false, '[{"id": "A", "text": "Volley ball."}, {"id": "B", "text": "Foot Ball."}, {"id": "C", "text": "Hand Ball."}, {"id": "D", "text": "Basket Ball."}]'::jsonb, ARRAY['A']::text[], 'في الكرة الطائرة، شبكة تفصل الفريقين ولا يوجد أي تماس مع الخصم: مخاطر الصدمات ضعيفة. أما كرة القدم وكرة اليد وكرة السلة فرياضات غزو بالتماس، حيث الصدمات والسقطات والشحنات تفرض تدبير السلامة باستمرار. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q55', 'exam_eps_2021_lycee', 55, 'Études des APS et apprentissage moteur', 'Le Step-back en basket ball consiste à :', false, '[{"id": "A", "text": "Neutraliser le porteur de balle pour gêner la passe."}, {"id": "B", "text": "Fixer le défenseur et créer la séparation en vue de tenter au panier."}, {"id": "C", "text": "Changer de direction pour s''écarter du défenseur afin d''occuper l''espace libre."}, {"id": "D", "text": "Harceler le porteur de balle en bloquant le couloir de passe."}]'::jsonb, ARRAY['B']::text[], 'الـ«step-back» حركة هجومية: المراوغ يهاجم، يثبّت مدافعه ثم يخطو خطوة إلى الخلف ليخلق الفضاء ويسدّد. أما A وD فحركتان دفاعيتان، وC تصف تغيير اتجاه جانبياً لا يهدف إلى التسديد. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q56', 'exam_eps_2021_lycee', 56, 'Études des APS et apprentissage moteur', 'Le réflexe d''accroche chez un jeune athlète perchiste se manifeste par :', false, '[{"id": "A", "text": "Une extension des bras au moment du décollage, une perche mobile dans l''espace arrière, un corps aligné."}, {"id": "B", "text": "Une flexion des bras au moment du décollage, une perche fixée dans l''espace avant, un corps groupé."}, {"id": "C", "text": "Une extension des bras au moment du décollage ; une perche peu mobile dans l''espace avant, corps semi-groupé."}, {"id": "D", "text": "Une flexion des bras au moment du décollage ; une perche mobile dans l''espace arrière, corps aligné."}]'::jsonb, ARRAY['B']::text[], 'المبتدئ الذي يخاف يتشبث بالعصا: يثني ذراعيه عند الإقلاع، ويتجمّع، وتبقى العصا محبوسة أمامه دون أن تميل. والسلوك المطلوب هو العكس: ذراعان ممدودتان عند الإقلاع وعصا تميل إلى الأمام؛ أما A وC فتمزجان عناصر من هذا الأداء الفعّال. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q57', 'exam_eps_2021_lycee', 57, 'Biomécanique', 'Au tennis, une balle aura tendance à retomber plus rapidement si :', false, '[{"id": "A", "text": "Elle est brossée, avec un effet lifté par le haut d''une manière à la faire tourner vers l''avant."}, {"id": "B", "text": "Elle est coupée, sans effet lifté par le bas d''une manière à la faire tourner vers le haut."}, {"id": "C", "text": "Elle est brossée, sans un effet lifté par le haut d''une manière à la faire tourner vers l''arrière."}, {"id": "D", "text": "Elle est coupée, avec effet lifté par le bas d''une manière à la faire tourner vers le bas."}]'::jsonb, ARRAY['A']::text[], 'الكرة المرفوعة (liftée) تدور إلى الأمام: بتأثير ماغنوس (Magnus)، يخلق فرق الضغط قوة موجَّهة إلى الأسفل فتغوص الكرة أسرع. أما الكرة المقطوعة، التي تدور إلى الخلف (B, D)، فتتلقى قوة إلى الأعلى تجعلها تطفو وتطيل مسارها. (اتفاق المصادر الثلاثة.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q58', 'exam_eps_2021_lycee', 58, 'Anatomie descriptive et fonctionnelle', 'Lors de l''épaulé-jeté les muscles stabilisateurs du tronc sont surtout :', false, '[{"id": "A", "text": "Les muscles obliques externes et internes et le muscle de l''abdomen."}, {"id": "B", "text": "Les trapèzes et les grands ronds."}, {"id": "C", "text": "Le deltoïde antérieur et les érecteurs du rachis."}, {"id": "D", "text": "Le grand pectoral et le muscle oblique interne."}]'::jsonb, ARRAY['A']::text[], 'تحت العارضة، يجب أن يبقى الجذع صلباً: هذا التقوية (gainage) يقوم على حزام البطن، المائلان الداخلي والخارجي مع المستقيم الكبير والمستعرض. وعضلات الظهر المُنتصبة تشارك أيضاً، لكن C تربطها بالدلتوية وهي عضلة كتف؛ أما شبه المنحرفة والمستديرة الكبيرة والصدرية الكبيرة فتُحرّك الطرف العلوي. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 15.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q59', 'exam_eps_2021_lycee', 59, 'Études des APS et apprentissage moteur', 'En athlétisme, courir au train signifie :', false, '[{"id": "A", "text": "Adopter un rythme modéré pour continuer la course dans le temps malgré la distance."}, {"id": "B", "text": "tenir la plus haute allure possible de façon constante dans le but de réaliser un bon résultat."}, {"id": "C", "text": "Courir à la tête du peloton en vue d''accélérer en fin de course."}, {"id": "D", "text": "Stratégie de course pour s''économiser dans la gestion de l''effort."}]'::jsonb, ARRAY['B']::text[], 'الجري «على الإيقاع» (au train) هو فرض إيقاع مرتفع ومنتظم من البداية إلى النهاية لتحقيق أداء. أما الجري الاقتصادي للانتهاء بالعدو (C, D) فهو التكتيك المعاكس، تكتيك العدّاء المنتظر. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 15.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'إجابة مرجّحة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q60', 'exam_eps_2021_lycee', 60, 'Sport scolaire et organisation des événements sportifs', 'En hand ball, le progrès des élèves en ASS est déterminé par :', false, '[{"id": "A", "text": "La prise en compte de la spécialisation précoce dans des postes de jeu."}, {"id": "B", "text": "La prise en compte des procédures rigoureuses de l''entrainement."}, {"id": "C", "text": "La prise en compte des indices pertinents et permanents lors du jeu."}, {"id": "D", "text": "La prise en compte du nombre de séances d''entrainement."}]'::jsonb, ARRAY['C']::text[], 'يتقدّم التلاميذ في كرة اليد عندما يتعلمون قراءة اللعب: رصد المؤشرات الملائمة والمستقرة (موضع الكرة، الشركاء، المدافعون، الفضاء الحر) ليقرّروا. أما التخصص المبكر في مركز (A) فغير مستحسَن في السن المدرسية، وعدد الحصص وحده (D) لا يضمن أي تقدم. (اتفاق المصادر الثلاثة؛ الصياغة مراجعة في الورقة، ص. 15.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة دجنبر 2021) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2021_lycee_q61', 'exam_eps_2021_lycee', 61, 'برنامج تدريب — الجمعية الرياضية المدرسية', 'Question ouverte notée sur 15 points. À partir de vos connaissances et de votre vécu sportif, montrez et expliquez sur quelles bases scientifiques et méthodologiques, un professeur d''EPS pourra s''appuyer pour élaborer et mettre en œuvre un programme d''entrainement destiné à la formation des élèves athlètes en ASS ? Justifiez vos propos par des exemples. N.B : Répondez dans les pages suivantes.', false, '[]'::jsonb, ARRAY[]::text[], '**المقدمة**
- **مدخل وتعريفات:** الجمعية الرياضية المدرسية (ASS) امتداد للتربية البدنية الإلزامية؛ تستقبل تلاميذ متطوعين لتدريب منتظم ومنافسة مدرسية. والتدريب عملية مخطَّطة تهدف إلى تحسين الأداء بأحمال منظَّمة.
- **الإشكالية:** كيف نبني برنامجاً يجعل التلميذ الرياضي يتقدم دون معاملته كبالغ من النخبة، أي باحترام نموّه ودراسته ومهمة الجمعية التربوية؟
- **إعلان الخطة:** جزآن — الأسس العلمية، ثم منهجية التخطيط والقيادة.

**أولاً — الأسس العلمية: معرفة الرياضي والنشاط**
- **فيزيولوجيا الجهد:** المسالك الطاقية الثلاثة (لاهوائي لا لبني، لاهوائي لبني، هوائي) مع قدرتها وسعتها ومهل استشفائها؛ ومبدأ التعويض الزائد. *مثال:* لاعبي كرة يد: جهود قصيرة وشديدة متكررة — عمل متقطع قصير (15 ثانية جهد / 15 ثانية استشفاء) بدل الجري الطويل.
- **النمو والنضج:** المراهق ليس بالغاً مصغَّراً. ذروة النمو، هشاشة الغضاريف، فترات مواتية لتطوير السرعة والتنسيق، وحذر من تقوية العضلات بالأحمال الثقيلة ومن العمل اللبني الشديد لدى الأصغر سناً. *مثال:* تقوية بوزن الجسم والتقوية (gainage) للصغار، مع مراعاة الفروق بين الذكور والإناث.
- **التشريح والبيوميكانيك:** تحليل الحركة الفعّالة (الروافع، السلاسل العضلية، مسار التسارع، زاوية الانطلاق) والوقاية من الإصابات. *مثال:* في رمي الثقل، إطالة مسار الإطلاق والعمل على سلسلة الساقين–الجذع–الذراعين.
- **التعلم والتحكم الحركي:** مراحل التعلم، دور التكرار المتنوّع والتغذية الراجعة وأخذ المعلومات واتخاذ القرار في الرياضات الجماعية. *مثال:* ألعاب مصغَّرة بعدد غير متساوٍ لتعلم قراءة اللعب، بدل حركات مكررة دون معارضة.
- **علم النفس وعلم الاجتماع:** الدافعية، تحديد الأهداف، تدبير ضغط المنافسة، تماسك المجموعة؛ ومعرفة وسط التلميذ وحمولته الدراسية.
- **نمط الحياة:** النوم، التغذية، الترطيب، الوقاية من الإفراط في التدريب والمنشطات.

**ثانياً — الأسس المنهجية: التخطيط والقيادة والتقييم**
- **التشخيص الأولي:** اختبارات ميدانية (السرعة الهوائية القصوى، سرعة 30 م، الوثب، المرونة)، تقييم تقني وتكتيكي، حصيلة طبية. يسمح بالتفريد وتحديد أهداف واقعية.
- **تحليل متطلبات النشاط البدني والرياضي** ورزنامة المنافسات المدرسية (المراحل المحلية والإقليمية والجهوية والوطنية)، التي تحدد موعد البرنامج.
- **مبادئ التدريب:** التدرّج، الاستمرارية، تناوب العمل والاستشفاء، الخصوصية، التفريد، التنويع، الحمل الزائد. *مثال:* زيادة الحجم أولاً ثم الشدة، أبداً الاثنين معاً.
- **الدورية (périodisation):** دورة كبرى سنوية مقسَّمة إلى فترة إعدادية (إعداد بدني عام، حجم مرتفع)، وفترة ما قبل المنافسة (الحجم ينخفض، الشدة والخصوصية ترتفعان)، وفترة تنافسية (صقل)، وفترة انتقالية؛ ودورات متوسطة من ثلاثة إلى أربعة أسابيع ودورات صغرى أسبوعية مكيَّفة مع حصص الجمعية (الأربعاء والجمعة بعد الظهر مثلاً).
- **بنية الحصة:** إحماء، جوهر الحصة (هدف أو هدفان)، عودة إلى الهدوء؛ وتدبير الحمل بالحجم والشدة والاستشفاء والتعقيد.
- **الطرق:** مستمرة، بالفترات، بالتكرارات، بالدارة، باللعب؛ وربط الإعداد البدني والتقني والتكتيكي والذهني.
- **المتابعة والتعديل:** دفتر تدريب، اختبارات متكررة في نهاية كل دورة متوسطة، ملاحظة في المنافسة؛ يُعدَّل البرنامج حسب النتائج والتعب وفترات الامتحانات.
- **البعد التربوي الخاص بالجمعية:** السلامة، احترام القانون والتحكيم، تحمّل المسؤوليات (حكم شاب، قائد، منظم)، والتوفيق مع الدراسة.

**مثال مسلسل ممكن**
فريق كرة يد للصغار في الجمعية، حصتان في الأسبوع، بطولة مدرسية في مارس. شتنبر: اختبارات (المكوك، 30 م، الوثب العمودي) وتقييم في المباراة. أكتوبر–دجنبر: فترة إعدادية — تطوير هوائي باللعب، تقوية عامة وتقوية الجذع، أساسيات فردية. يناير–فبراير: فترة ما قبل المنافسة — متقطع قصير، سرعة، أنظمة لعب، مباريات ودية. مارس: فترة تنافسية — حجم مخفَّض، حصص قصيرة وشديدة، إعداد تكتيكي لكل خصم. أبريل: انتقال وحصيلة مع التلاميذ.

**الخاتمة**
التدريب في الجمعية الرياضية المدرسية ليس نسخة مصغَّرة من تدريب النادي: يعتمد على العلوم نفسها ومبادئ التخطيط نفسها، لكنه يضعها في خدمة مراهق في طور التكوين. وأستاذ التربية البدنية فيه مدرب ومربٍّ معاً. انفتاح ممكن: الجمعية مكان للكشف عن المواهب وجسر نحو الأندية ومسالك الرياضة–الدراسة.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2021-618/', false, 'جواب نموذجي مقترح من wadifa-info؛ لا يوجد مفتاح رسمي منشور')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
