-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية (دورة يناير 2018)
-- ====================================================================
-- المصدر: ملف الحل solved/2018/التربية البدنية - دورة يناير 2018.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2018-543/
--   لا يوجد مفتاح رسمي منشور؛ الحل من mesconcours (حل مُتحقَّق منه). Q40=A وQ53=C صُحّحتا ضد شبكتي التنقيط الرسميتين OP 2009 وOP 2007 (كانتا B في mesconcours)؛ وQ35 وQ41 مؤكدتان بالشبكتين الرسميتين. الأسئلة المفتوحة Q61–Q62 هما السؤالان المفتوحان في الجزء الثاني.
--   عدد الأسئلة: 62 (60 QCM + 2 مفتوحة)؛ موثّقة verified=true: 4؛ موسومة بملاحظة تحقق: 12.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2018_college', 'eps_college', 2018, 'eps_specialty', 'التربية البدنية والرياضية', 'امتحان التربية البدنية والرياضية (دورة يناير 2018)', 'دورة يناير 2018', 240, 62, 'لا يوجد مفتاح رسمي منشور؛ الحل من mesconcours (حل مُتحقَّق منه)؛ Q35 وQ40 وQ41 وQ53 مؤكدة/مصحَّحة بشبكتي التنقيط الرسميتين OP 2007 وOP 2009')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (62 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q1', 'exam_eps_2018_college', 1, 'التربية البدنية والرياضية', 'L''autorité de l''arbitre lors d''une rencontre en foot Ball commence :', false, '[{"id": "A", "text": "Avec le coup d''envoi du match."}, {"id": "B", "text": "Avec l''entrée des joueurs sur le terrain."}, {"id": "C", "text": "avec l''établissement de la feuille du match."}, {"id": "D", "text": "Au coup de sifflet premier pour que les joueurs sortent des vestiaires."}]'::jsonb, ARRAY['B']::text[], '⚠ سؤال معيب — حسب القانون 5.3 من قوانين IFAB (طبعة 2016/17)، يمارس الحكم سلطته التأديبية منذ دخوله الملعب للفحص قبل المباراة حتى مغادرته بعد المباراة، ولا يوجد خيار يسمّي هذه اللحظة. ب (دخول اللاعبين إلى الملعب) هو الأقرب إلى المقصود؛ فصافرة البداية (أ) تأتي متأخرة: فقبل المباراة أصلاً يمكن للحكم أن يمنع من اللعب لاعباً ارتكب خطأ يستوجب الطرد. (انظر الملاحظة 6.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'سؤال معيب، انظر الملاحظة 6')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q2', 'exam_eps_2018_college', 2, 'التربية البدنية والرياضية', 'Le test de Cooper est spécifique à la qualité de :', false, '[{"id": "A", "text": "Vitesse."}, {"id": "B", "text": "Endurance."}, {"id": "C", "text": "Force."}, {"id": "D", "text": "Coordination."}]'::jsonb, ARRAY['B']::text[], 'اختبار كوبر هو قطع أكبر مسافة ممكنة في 12 دقيقة: إنه اختبار للتحمل الهوائي، ويُستعمل لتقدير الاستهلاك الأقصى للأكسجين (VO2max).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q3', 'exam_eps_2018_college', 3, 'التربية البدنية والرياضية', 'Un coureur de 100 m vitesse peut atteindre sa vitesse maximale :', false, '[{"id": "A", "text": "Entre 5 et 10 m."}, {"id": "B", "text": "Entre 10 et 20 m."}, {"id": "C", "text": "Entre 30 et 40 m."}, {"id": "D", "text": "Entre 15 et 25 m."}]'::jsonb, ARRAY['C']::text[], 'مرحلة الانطلاق تمتد نحو ثلاثين متراً: فبين 30 و40م تبلغ السرعة ذروتها عند العدّاء المدرسي، قبل مرحلة الحفاظ ثم التباطؤ. أما عدّاؤو المستوى العالي فيؤخرون هذه النقطة إلى نحو 50 أو 60م.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q4', 'exam_eps_2018_college', 4, 'التربية البدنية والرياضية', 'En volley Ball, pour renvoyer le ballon vers le camp adverse, une équipe a droit à :', false, '[{"id": "A", "text": "3 touches de balle au maximum y compris le contre."}, {"id": "B", "text": "3 touches de balle au maximum sans comptabiliser le contre."}, {"id": "C", "text": "3 touches de balle obligatoire y compris le contre."}, {"id": "D", "text": "3 touches de balle obligatoire sans comptabiliser le contre."}]'::jsonb, ARRAY['B']::text[], 'دقيقتان: ثلاث لمسات كحد أقصى (يمكن للفريق أن يردّ بلمسة أو لمستين)، والصدّ لا يُحتسب لمسةً من لمسات الفريق. ج ود خاطئتان بكلمة «obligatoire»، وأ خاطئة باحتساب الصد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q5', 'exam_eps_2018_college', 5, 'التربية البدنية والرياضية', 'En athlétisme, la vélocité met en évidence :', false, '[{"id": "A", "text": "La faculté de répéter le plus grand nombre d''exercices variés."}, {"id": "B", "text": "la faculté de répéter le plus grand nombre d''essais dans une séance d''entrainement."}, {"id": "C", "text": "la faculté de proposer le plus grand nombre de situations d''apprentissage."}, {"id": "D", "text": "la faculté de répéter le plus grand nombre de cycles gestuels identiques pendant une seule unité de temps."}]'::jsonb, ARRAY['D']::text[], 'السرعة الحركية (vélocité) هي التردد الحركي: عدد الدورات الحركية المتماثلة المنجزة في وحدة زمنية. في الجري هي تردد الخطوات، الذي إذا ضُرب في سعتها أعطى سرعة التنقل.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q6', 'exam_eps_2018_college', 6, 'التربية البدنية والرياضية', 'Lors du processus d''apprentissage en EPS, le feed-back est considéré comme :', false, '[{"id": "A", "text": "Toute solution que l''élève répète pour réussir une tâche."}, {"id": "B", "text": "Toute consigne qui détermine le processus de réalisation d''une tâche."}, {"id": "C", "text": "Toute information qu''un élève reçoit sur son résultat."}, {"id": "D", "text": "Toute variable essentielle pour le contrôle du comportement de l''élève."}]'::jsonb, ARRAY['C']::text[], 'التغذية الراجعة (feed-back) هي عودة معلومة عن الفعل المنجَز: إما ذاتية يدركها التلميذ بنفسه، وإما خارجية يقدمها الأستاذ أو جهاز ما. ب تصف التعليمات، التي تسبق الفعل بدل أن تليه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q7', 'exam_eps_2018_college', 7, 'التربية البدنية والرياضية', 'Un test de squat mouvement jump est spécifique à la qualité de :', false, '[{"id": "A", "text": "Souplesse."}, {"id": "B", "text": "Coordination."}, {"id": "C", "text": "Force."}, {"id": "D", "text": "Vitesse."}]'::jsonb, ARRAY['C']::text[], 'قفزة القرفصاء (squat jump) تقيس الارتفاع انطلاقاً من وضعية مثنية ثابتة، دون حركة مضادة: فهي تقيّم القوة الانفجارية المركزية للطرفين السفليين، دون الجزء المرن الذي يضيفه القفز بحركة مضادة (counter movement jump). (صياغة الورقة «squat mouvement jump» نُقلت كما هي.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q8', 'exam_eps_2018_college', 8, 'التربية البدنية والرياضية', 'Une programmation cyclique en EPS est :', false, '[{"id": "A", "text": "Une programmation de modules d''apprentissage par semestre."}, {"id": "B", "text": "Une répartition des contenus d''enseignement sur les niveaux de scolarité"}, {"id": "C", "text": "Une répartition des installations sportives par enseignant pour une période donnée."}, {"id": "D", "text": "Plusieurs activités ayant un même objectif pour un niveau scolaire."}]'::jsonb, ARRAY['A']::text[], '⚠ البرمجة الدورية تقسّم السنة إلى دورات أو وحدات تعلم موزعة على فترات السنة الدراسية، وكل دورة تجمع عدداً كافياً من الحصص ليتوطّن التعلم. ب تصف البرمجة العمودية على المسار الدراسي، وج مجرد تخطيط للمنشآت. الجواب يبقى مرهوناً بالمصطلح المعتمد في التوجيهات التربوية. (انظر الملاحظة 9.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'تحفظ مصطلحي، انظر الملاحظة 9')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q9', 'exam_eps_2018_college', 9, 'التربية البدنية والرياضية', 'En gymnastique, lors d''un saut de mains, le corps effectue :', false, '[{"id": "A", "text": "Une rotation à 90°."}, {"id": "B", "text": "Une rotation à 180°."}, {"id": "C", "text": "Une rotation à 260°."}, {"id": "D", "text": "Une rotation à 360°."}]'::jsonb, ARRAY['D']::text[], 'قفزة اليدين (saut de mains) انقلاب أمامي كامل: يدور الجسم دورة كاملة حول المحور العرضي، من القدمين على الأرض إلى عودة القدمين إلى الأرض، مروراً بالدعم المشدود المقلوب (ATR).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q10', 'exam_eps_2018_college', 10, 'التربية البدنية والرياضية', 'En football, un attaquant n''est pas considéré comme hors-jeu lorsque :', false, '[{"id": "A", "text": "Deux défenseurs au moins sont plus près que lui de leur propre ligne de but au moment du déclenchement de la passe."}, {"id": "B", "text": "Un seul défenseur est plus près que lui de sa propre ligne de but au moment du déclenchement de la passe."}, {"id": "C", "text": "Il franchit la ligne médiane seul en l''absence d''adversaires avant le déclenchement de la passe."}, {"id": "D", "text": "Il est sur la même ligne que le dernier défenseur."}]'::jsonb, ARRAY['A']::text[], '⚠ سؤال معيب — الصياغة الكلاسيكية للقاعدة: لا وضعية تسلل ما دام مدافعان على الأقل، الحارس ضمناً، أقرب من المهاجم إلى خط مرماهما. لكن القانون 11.1 من IFAB يتحدث عن «الخصوم» لا «المدافعين»: فاللاعب في وضعية تسلل إذا كان أقرب إلى خط مرمى الخصم من الكرة ومن آخر خصم ثانٍ (avant-dernier adversaire)، ولا يكون في تسلل إذا كان على نفس خطه. فالبديل د صحيح أيضاً إذا قُرئ «dernier défenseur» بمعنى آخر لاعب ميداني (وهو عادةً آخر خصم ثانٍ). الجواب المسجَّل (أ) هو المتوقَّع من واضع الامتحان. (انظر الملاحظة 7.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'سؤال معيب، انظر الملاحظة 7')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q11', 'exam_eps_2018_college', 11, 'التربية البدنية والرياضية', 'Une filière énergétique se caractérise par un délai d''intervention, une puissance et une capacité :', false, '[{"id": "A", "text": "Toujours vrai."}, {"id": "B", "text": "Complètement faux."}, {"id": "C", "text": "Valable seulement pour les filières énergétiques anaérobies."}, {"id": "D", "text": "Valable uniquement pour la filière aérobie."}]'::jsonb, ARRAY['A']::text[], 'المسالك الثلاثة كلها توصف بالمعايير نفسها: زمن التدخل، القدرة القصوى، السعة الإجمالية، ويُضاف إليها زمن الاستعادة. وهذا التطابق في المعايير هو ما يتيح المقارنة بينها.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q12', 'exam_eps_2018_college', 12, 'التربية البدنية والرياضية', 'Les prérequis en apprentissage moteur sont :', false, '[{"id": "A", "text": "Les réactions de l''élève face aux différentes situations d''apprentissage."}, {"id": "B", "text": "Les mécanismes qu''un élève doit suivre pour accomplir une tâche."}, {"id": "C", "text": "Les ressources nécessaires pour entreprendre un nouvel apprentissage."}, {"id": "D", "text": "Les conditions d''apprentissage préalable à mettre en œuvre."}]'::jsonb, ARRAY['C']::text[], 'المتطلبات القبلية (prérequis) هي ما يجب أن يمتلكه التلميذ أصلاً — موارد حركية ومعرفية ووجدانية — ليتناول تعلماً جديداً بفائدة. د تخلط بين المتطلبات القبلية والشروط المادية للوضعية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q13', 'exam_eps_2018_college', 13, 'التربية البدنية والرياضية', 'L''acide lactique :', false, '[{"id": "A", "text": "Est toujours un frein pour la continuité de l''exercice physique."}, {"id": "B", "text": "Peut-être un substrat énergétique."}, {"id": "C", "text": "Provoque essentiellement des crampes entre 0,7 et 1,7 mmol/l."}, {"id": "D", "text": "Limite obligatoirement la contraction musculaire."}]'::jsonb, ARRAY['B']::text[], 'اللاكتات ليس مجرد فضلة: يُنقل إلى الألياف التأكسدية والقلب والكبد حيث يُعاد استعماله وقوداً أو يُحوَّل إلى غلوكوز. أ ود تجعلان منه سبباً تلقائياً للتوقف، وقيم ج تتوافق مع لاكتات الدم في الراحة أو الجهد الخفيف.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q14', 'exam_eps_2018_college', 14, 'التربية البدنية والرياضية', 'En foot Ball la frappe de la balle sur le plan médian donne à celle-ci :', false, '[{"id": "A", "text": "Une trajectoire tendue."}, {"id": "B", "text": "Une trajectoire ascendante."}, {"id": "C", "text": "Une trajectoire flottante."}, {"id": "D", "text": "Une trajectoire descendante."}]'::jsonb, ARRAY['A']::text[], 'ضرب الكرة في مركزها، على مستواها الأوسط، ينقل القوة على خط يمر بمركز الثقل: فتنطلق الكرة دون دوران مفروض ويبقى مسارها مشدوداً. الضرب أسفل الكرة يرفعها، والضرب فوقها يسحقها.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q15', 'exam_eps_2018_college', 15, 'التربية البدنية والرياضية', 'La lecture de la mesure d''un lancer de poids homologué se fait :', false, '[{"id": "A", "text": "Sur le centre de l''aire de lancer."}, {"id": "B", "text": "Sur le bord externe du butoir."}, {"id": "C", "text": "Sur le bord interne du butoir."}, {"id": "D", "text": "A l''endroit du premier impact de l''engin (poids)."}]'::jsonb, ARRAY['C']::text[], 'القياس يمتد من أقرب علامة تركها الثقل إلى الحافة الداخلية للدائرة، على خط يمر بالمركز. فقراءة الشريط تكون عند الحافة الداخلية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q16', 'exam_eps_2018_college', 16, 'التربية البدنية والرياضية', 'L''enjeu de formation dans une APS donnée désigne :', false, '[{"id": "A", "text": "Ce que l''on peut proposer comme contenu aux élèves, dans une APS."}, {"id": "B", "text": "Ce que l''on peut jouer comme rôle socio moteur dans une APS."}, {"id": "C", "text": "Ce que l''on peut gagner à moyen ou/et à long terme à pratiquer une APS."}, {"id": "D", "text": "Ce que l''on peut développer au niveau technico tactique dans une APS."}]'::jsonb, ARRAY['C']::text[], 'رهان التكوين هو الفائدة التربوية الدائمة التي يجنيها التلميذ من ممارسة نشاط ما، بما يتجاوز المكتسبات التقنية للوحدة. أ ود يسمّيان المحتويات، وهي وسائل بلوغ هذا الرهان.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q17', 'exam_eps_2018_college', 17, 'التربية البدنية والرياضية', 'En gymnastique, une rondade est une prise d''élan permettant :', false, '[{"id": "A", "text": "D''effectuer particulièrement des acrobaties en rotation longitudinale."}, {"id": "B", "text": "D''effectuer particulièrement des acrobaties en rotation horizontale."}, {"id": "C", "text": "D''effectuer particulièrement des acrobaties en rotation transversale arrière."}, {"id": "D", "text": "D''effectuer particulièrement des acrobaties en rotation transversale avant."}]'::jsonb, ARRAY['C']::text[], 'الرُّونداد (rondade) يحوّل جرياً أمامياً إلى دوران خلفي: فهي تصلح رابطاً نحو الفليك-فلاك والقفزة الخلفية (salto arrière). وهذه وظيفتها كلها في تسلسل بهلواني.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q18', 'exam_eps_2018_college', 18, 'التربية البدنية والرياضية', 'Un tendon et un ligament, possédant chacun deux extrémités, sont obligatoirement en liaison par l''une d''elles avec :', false, '[{"id": "A", "text": "Un os."}, {"id": "B", "text": "Un muscle."}, {"id": "C", "text": "Un tendon."}, {"id": "D", "text": "Un ligament."}]'::jsonb, ARRAY['A']::text[], 'الوتر يربط عضلةً بعظم، والرباط يربط عظمين. فالعنصر المشترك بينهما هو العظم، الذي يستقبل طرفاً واحداً على الأقل في الحالتين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q19', 'exam_eps_2018_college', 19, 'التربية البدنية والرياضية', 'L''hors-jeu en Rugby est signalé :', false, '[{"id": "A", "text": "Lorsque le joueur se trouve devant le ballon tout en étant en situation fixe."}, {"id": "B", "text": "Lorsque le joueur se trouve devant le ballon tout en poursuivant ce dernier."}, {"id": "C", "text": "Lorsque le joueur attaquant dépasse la ligne d''avantage."}, {"id": "D", "text": "Lorsque le joueur attaquant se trouve au-delà de la ligne médiane"}]'::jsonb, ARRAY['B']::text[], 'الوجود أمام الكرة يضع اللاعب في وضعية تسلل، لكن المخالفة لا تُعاقَب إلا إذا شارك في اللعب: إذا تقدّم نحو الكرة أو لعبها أو أعاق خصماً. أما البقاء ساكناً دون تدخل فهو التسلل السلبي، الذي يصفه البديل أ.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q20', 'exam_eps_2018_college', 20, 'التربية البدنية والرياضية', 'La structure des muscles striés est composée de :', false, '[{"id": "A", "text": "Fibres musculaires réunies en faisceau + tendons + fibres nerveuses + vaisseaux sanguins."}, {"id": "B", "text": "ligaments + tendons + fibres nerveuses + vaisseaux sanguins."}, {"id": "C", "text": "Fibres musculaires réunies en faisceau + ligaments + fibres nerveuses + vaisseaux sanguins."}, {"id": "D", "text": "Fibres musculaires réunies en faisceau + tendons + ligaments + articulations."}]'::jsonb, ARRAY['A']::text[], 'العضلة المخططة الهيكلية تجمع أليافاً مرتبة في حزم، والأوتار التي تثبّتها بالعظم، وتغذيتها العصبية الحركية والحسية، وأوعيتها الدموية. أما الأربطة فتنتمي إلى المفصل لا إلى العضلة، وهذا ما يستبعد ب وج ود.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q21', 'exam_eps_2018_college', 21, 'التربية البدنية والرياضية', 'Dans les intervalles en course de 100 m haies dames, il s''agit de faire :', false, '[{"id": "A", "text": "Cinq appuis, quatre foulées."}, {"id": "B", "text": "Trois foulées, trois appuis."}, {"id": "C", "text": "Quatre foulées, quatre appuis."}, {"id": "D", "text": "Trois foulées, quatre appuis."}]'::jsonb, ARRAY['D']::text[], 'الإيقاع المرجعي بين حاجزين هو ثلاث خطوات، أي أربعة ارتكازات على الأرض: الاستئناف بعد الحاجز، وارتكازان وسيطان، والنداء على الحاجز التالي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q22', 'exam_eps_2018_college', 22, 'التربية البدنية والرياضية', 'La flexion de la hanche est essentiellement due à la mobilisation :', false, '[{"id": "A", "text": "Du Psoas iliaque, droit antérieur, couturier et le tenseur fascia lata."}, {"id": "B", "text": "Des abdominaux, Psoas iliaque, droit antérieur et des jambiers."}, {"id": "C", "text": "Des Ischio jambiers, droit antérieur, couturier et le tenseur fascia lata."}, {"id": "D", "text": "Des pectoraux, droit antérieur, ischio jambiers et le tenseur fascia lata."}]'::jsonb, ARRAY['A']::text[], 'مثنّيات الورك هي القطنية الحرقفية (psoas-iliaque)، وهي الرئيسة، والمستقيمة الأمامية للفخذ (droit antérieur)، والخياطة (couturier)، وموترة اللفافة العريضة (tenseur du fascia lata). أما أوتار الركبة (ischio-jambiers) فهي على العكس باسطات للورك، وهذا ما يستبعد ج ود.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q23', 'exam_eps_2018_college', 23, 'التربية البدنية والرياضية', 'En gymnastique au sol, les chêmes d''action en saut de mains sont :', false, '[{"id": "A", "text": "Impulsion bras, fermeture, impulsion jambes."}, {"id": "B", "text": "Impulsion jambes, ouverture, impulsion bras."}, {"id": "C", "text": "Ouverture, impulsion bras, impulsion jambes."}, {"id": "D", "text": "Fermeture, impulsion bras, ouverture."}]'::jsonb, ARRAY['B']::text[], '⚠ الترتيب الزمني لقفزة اليدين: الرجل الحرة ورجل النداء تطلقان الجسم نحو الانقلاب، ثم تنفتح زاوية الذراعين-الجذع عند المرور بالدعم المشدود المقلوب، ثم تدفع اليدان الأرض لإنتاج الطيران الثاني. وثائق أخرى في دورة مختلفة تضع «الفتح» في المقدمة، علامة على أن المصطلح يختلف من وثيقة إلى أخرى. (كلمة «chêmes» في الورقة نُقلت كما هي.) (انظر الملاحظة 10.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'تحفظ مصطلحي، انظر الملاحظة 10')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q24', 'exam_eps_2018_college', 24, 'التربية البدنية والرياضية', 'L''extension du genou est essentiellement mobilisée par les muscles suivants :', false, '[{"id": "A", "text": "Le quadriceps."}, {"id": "B", "text": "Les ischio jambiers."}, {"id": "C", "text": "Les abdominaux."}, {"id": "D", "text": "Les jambiers et les muscles du mollet."}]'::jsonb, ARRAY['A']::text[], 'العضلة رباعية الرؤوس (quadriceps)، برؤوسها الأربعة ووتر الرضفة، هي الباسطة الوحيدة للركبة. أما أوتار الركبة (ischio-jambiers) فهي مثنّياتها.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q25', 'exam_eps_2018_college', 25, 'التربية البدنية والرياضية', 'En athlétisme, l''efficacité d''un entrainement aérobie est assurée :', false, '[{"id": "A", "text": "A l''aide d''exercices sollicitant la force maximale."}, {"id": "B", "text": "Lorsqu''on cherche à développer en parallèle la puissance et la capacité."}, {"id": "C", "text": "Lorsqu''on cherche à développer la puissance au détriment de la capacité."}, {"id": "D", "text": "Lorsqu''on cherche à développer la capacité au détriment de la puissance."}]'::jsonb, ARRAY['B']::text[], 'القدرة والقدرة الهوائيتان تُبنيان معاً: السعة بجهد معتدل الشدة وبحجم كبير، والقدرة بعمل متقطع قريب من السرعة الهوائية القصوى (VMA). وتفضيل إحداهما على حساب الأخرى يحدّ من الأداء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q26', 'exam_eps_2018_college', 26, 'التربية البدنية والرياضية', 'En volley Ball, une équipe a droit à :', false, '[{"id": "A", "text": "4 changements et 3 temps morts par match."}, {"id": "B", "text": "Des changements libres et 2 temps morts par set."}, {"id": "C", "text": "5 changements et 1 temps mort par set."}, {"id": "D", "text": "6 changements et 2 temps morts par set."}]'::jsonb, ARRAY['D']::text[], 'القانون الدولي يمنح ستة تبديلات ووقتين مستقطعين في كل شوط (القاعدة 15.1). وفي 2018 أضافت قواعد FIVB 2017–2020، في منافسات FIVB، وقتين مستقطعين تقنيين من 60 ثانية، وقد اختفيا مع قواعد 2021–2024. التبديلات ليست حرة، وهذا ما يستبعد ب: فكل لاعب مستبدَل لا يعود إلا إلى مكانه الأصلي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q27', 'exam_eps_2018_college', 27, 'التربية البدنية والرياضية', 'On parle de déficit d''oxygène lorsque :', false, '[{"id": "A", "text": "La demande énergétique est inférieure à celle qui peut être fournie par les voies oxydatives."}, {"id": "B", "text": "Lorsque le seuil aérobie dépasse largement le seuil anaérobie."}, {"id": "C", "text": "La demande énergétique est supérieure à celle qui peut être fournie par les voies oxydatives."}, {"id": "D", "text": "L''intensité de l''effort et le débit ventilatoire restent constants."}]'::jsonb, ARRAY['C']::text[], 'في بداية الجهد، يحتاج استهلاك الأكسجين من دقيقة إلى ثلاث ليبلغ الطلب: والنقص يُعوَّض بالمسالك اللاهوائية، وهذا هو عجز الأكسجين (déficit d''oxygène)، الذي يُسدَّد أثناء الاستشفاء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q28', 'exam_eps_2018_college', 28, 'التربية البدنية والرياضية', 'Le transfert en apprentissage moteur renvoie à :', false, '[{"id": "A", "text": "L''influence d''une habileté motrice spécifique sur un apprentissage général."}, {"id": "B", "text": "L''influence d''un apprentissage antérieur sur l''acquisition d''une nouvelle habileté."}, {"id": "C", "text": "L''influence d''une procédure utilisée sur le résultat de l''élève."}, {"id": "D", "text": "L''influence de la démonstration de l''enseignant sur l''apprentissage de l''élève."}]'::jsonb, ARRAY['B']::text[], 'النقل (transfert) هو أثر مكتسَب سابق في تعلم جديد. يكون إيجابياً حين ييسّر، وسلبياً حين يعيق، كما حين تُفسد حركة كرة الريشة حركة التنس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q29', 'exam_eps_2018_college', 29, 'التربية البدنية والرياضية', 'En course de vitesse 100m haies, les segments libres contribuent principalement à :', false, '[{"id": "A", "text": "Favoriser la force de déplacement du coureur."}, {"id": "B", "text": "Favoriser un renforcement musculaire lors de la course."}, {"id": "C", "text": "Maintenir 4 appuis entre les haies."}, {"id": "D", "text": "Favoriser l''équilibre dynamique général du corps."}]'::jsonb, ARRAY['D']::text[], 'الذراعان والرجل الحرة تعوّضان الدورانات الناتجة عن تجاوز الحاجز وعن الجري: فتؤمّنان استقامة الجسم واستقراره، شرطاً لاستئناف ارتكاز فعّال خلف الحاجز.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q30', 'exam_eps_2018_college', 30, 'التربية البدنية والرياضية', 'En foot Ball, si le joueur qui donne le coup d''envoi joue le ballon deux fois de suite sans que celui-ci ne soit touché par un coéquipier, l''arbitre ordonne :', false, '[{"id": "A", "text": "Un entre deux."}, {"id": "B", "text": "Un coup franc direct."}, {"id": "C", "text": "Remet la balle à l''équipe adverse."}, {"id": "D", "text": "Un coup franc indirect."}]'::jsonb, ARRAY['D']::text[], 'لمس الكرة مرتين في ضربة البداية أو ركلة حرة أو ركلة مرمى أو ركلة ركنية، قبل أن يلمسها لاعب آخر، يُعاقَب بركلة حرة غير مباشرة للخصم، في مكان اللمسة الثانية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q31', 'exam_eps_2018_college', 31, 'التربية البدنية والرياضية', 'Les facteurs de la coordination sont :', false, '[{"id": "A", "text": "Orientation, différentiation, répétition, équilibre, relance."}, {"id": "B", "text": "Rythme, équilibre, orientation, réaction, détente."}, {"id": "C", "text": "Rythme, équilibre, différentiation, orientation, réaction."}, {"id": "D", "text": "Orientation, rotation, detente, rythme, endurance."}]'::jsonb, ARRAY['C']::text[], 'القدرات التنسيقية المعتمدة هي التوجيه والتمييز ورد الفعل والإيقاع والتوازن. أما الاسترخاء (détente) والتحمل والتكرار والدوران فهي صفات بدنية أو أفعال، لا عوامل تنسيق.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q32', 'exam_eps_2018_college', 32, 'التربية البدنية والرياضية', 'Pour développer la capacité anaérobie alactique, on doit :', false, '[{"id": "A", "text": "Effectuer des exercices d''intensité maximale d''une durée comprise entre 5 et 7 secondes."}, {"id": "B", "text": "Effectuer des exercices d''intensité maximale d''une durée comprise entre 7 et 15 secondes."}, {"id": "C", "text": "Effectuer des exercices d''intensité maximale d''une durée comprise entre 1 et 3 minutes."}, {"id": "D", "text": "Effectuer des exercices d''intensité maximale d''une durée comprise entre 3 et 5 minutes."}]'::jsonb, ARRAY['B']::text[], 'القدرة اللالاكتية تُدرَّب في 5 إلى 7 ثوانٍ؛ أما السعة، أي استنفاد مخزون الفوسفوكرياتين، فتتطلب الوصول إلى 7–15 ثانية. وبعد ذلك يتولى التحلل الغليكوليتي اللاهوائي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q33', 'exam_eps_2018_college', 33, 'التربية البدنية والرياضية', 'Les orientations pédagogiques en EPS visent à :', false, '[{"id": "A", "text": "Proposer aux enseignants d''EPS, des contenus d''enseignement."}, {"id": "B", "text": "Harmoniser les démarches didactiques et pédagogiques en EPS."}, {"id": "C", "text": "Expliquer les concepts pédagogiques aux enseignants d''EPS."}, {"id": "D", "text": "Décrire aux enseignants, l''évolution historique des approches pédagogiques en EPS."}]'::jsonb, ARRAY['B']::text[], 'التوجيهات التربوية إطار وطني: فهي تثبّت الغايات والكفايات المستهدفة وكيفيات التقييم، فتوحّد بذلك الممارسات من مؤسسة إلى أخرى. وهي لا تحل محل الأستاذ في اختيار محتويات الحصة (أ).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q34', 'exam_eps_2018_college', 34, 'التربية البدنية والرياضية', 'Les principaux muscles moteurs de l''antépulsion de l''épaule sont :', false, '[{"id": "A", "text": "Le grand dorsale, le triceps brachial et le deltoïde."}, {"id": "B", "text": "Le deltoïde, le coraco brachial et le grand pectoral."}, {"id": "C", "text": "Le grand dentelé, le sus épineux et le trapèze."}, {"id": "D", "text": "Le grand pectoral, le grand rond le petit pectoral."}]'::jsonb, ARRAY['B']::text[], 'التقدم الأمامي للكتف (antépulsion / flexion de l''épaule) تنتجه الحزمة الأمامية للدالية (deltoïde)، والعضلة الغرابية العضدية (coraco-brachial)، والحزمة الترقوية للصدرية الكبرى (grand pectoral). أما العريضة الظهرية (grand dorsal) والمدورة الكبرى (grand rond) فهما على العكس دافعتان إلى الخلف.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q35', 'exam_eps_2018_college', 35, 'التربية البدنية والرياضية', 'Dans les Orientations pédagogiques 2009, l''évaluation des capacités sportives et des habiletés motrices collectives adoptée en sports collectifs est :', false, '[{"id": "A", "text": "7 points en 1ère année, 6 points en 2eme année et 8 points en 3eme année."}, {"id": "B", "text": "6 points en 1ère année, 7 points en 2eme année et 8 points en 3eme année."}, {"id": "C", "text": "8 pts en 1ère année, 7 points en 2eme année et 6 points en 3eme année."}, {"id": "D", "text": "8 pts en 1ère, 6 pts en 2ème et 7 pts en 3eme année."}]'::jsonb, ARRAY['C']::text[], 'مؤكد بالشبكة الرسمية — شبكة التنقيط في OP 2009 (صفحة 14، البند 7) تعطي في الرياضات الجماعية: القدرات الفردية 06/06/06 والقدرات الجماعية 08/07/06 (أولى/ثانية/ثالثة إعدادي)، فتكمل كل سنة مع المعارف النظرية (3) والسلوك (3/4/5) المجموع 20. يتفق مع mesconcours (ج). (انظر الملاحظة 4.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', true, 'مؤكد بالشبكة الرسمية OP 2009')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q36', 'exam_eps_2018_college', 36, 'التربية البدنية والرياضية', 'Le salto avant en gymnastique est :', false, '[{"id": "A", "text": "Une figure acrobatique en rotation libre transversale avant complète."}, {"id": "B", "text": "Une figure acrobatique en rotation libre longitudinale complète."}, {"id": "C", "text": "Une figure acrobatique en rotation libre latérale complète."}, {"id": "D", "text": "Une figure acrobatique en rotation libre verticale complète."}]'::jsonb, ARRAY['A']::text[], 'القفزة الأمامية (salto avant) دوران كامل حول المحور العرضي، يُنفَّذ دون دعم أثناء المرحلة الهوائية، ومن هنا وصف «الدوران الحر». المحور الطولي يعطي اللولبات (vrilles)، والمحور السهمي يعطي العجلة والرونداد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q37', 'exam_eps_2018_college', 37, 'التربية البدنية والرياضية', 'En Rugby à 15, une mêlée est :', false, '[{"id": "A", "text": "Un groupement spontané à 6."}, {"id": "B", "text": "Un groupement spontané à 8."}, {"id": "C", "text": "Un groupement ordonné à 8."}, {"id": "D", "text": "Un groupement ordonné à 6."}]'::jsonb, ARRAY['C']::text[], 'الصراع (mêlée) يأمر به الحكم، خلافاً للمول (maul) والراك (ruck) العفويين، ويجمع المهاجمين الثمانية لكل فريق في ثلاثة صفوف: ثلاثة ثم أربعة ثم واحد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q38', 'exam_eps_2018_college', 38, 'التربية البدنية والرياضية', 'Le processus anaérobie alactique cherche à développer :', false, '[{"id": "A", "text": "La faculté d''exprimer un effort de grande force avec la plus grande vitesse."}, {"id": "B", "text": "La faculté de maintenir un effort le plus longtemps possible."}, {"id": "C", "text": "La faculté de courir la plus grande distance en intensité modérée."}, {"id": "D", "text": "La faculté de travailler de façon prolongée avec différentes charges."}]'::jsonb, ARRAY['A']::text[], 'المسلك اللالاكتي يغذي الجهود القصيرة جداً والشديدة جداً: الانطلاقات والقفزات والرميات والعدوات القصيرة. فهو إذن يطوّر القدرة (puissance)، أي اقتران قوة كبيرة بسرعة كبيرة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q39', 'exam_eps_2018_college', 39, 'التربية البدنية والرياضية', 'En Football, un système de jeu est :', false, '[{"id": "A", "text": "Une stratégie générale de jeu."}, {"id": "B", "text": "Une disposition de base de joueurs sur l''espace de jeu."}, {"id": "C", "text": "Une sorte d''organisation des attaques."}, {"id": "D", "text": "Une tactique globale."}]'::jsonb, ARRAY['B']::text[], 'النظام (4-4-2، 4-3-3…) هو التوزيع الأولي للاعبين على الملعب وتحديد مراكزهم. أما الاستراتيجية والتكتيك فهما النوايا والتكيفات التي تُبنى على هذا الإطار.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q40', 'exam_eps_2018_college', 40, 'التربية البدنية والرياضية', 'Dans Les OP 2009, l''évaluation des connaissances procédurales adoptée en athlétisme est :', false, '[{"id": "A", "text": "14 points en 1ère année, 13 points en 2eme année et 12 points en 3eme année."}, {"id": "B", "text": "12 points en 1ère année, 13 points en 2eme année et 14 points en 3eme année."}, {"id": "C", "text": "12 points en 1ère année, 14 points en 2eme année et 13 points en 3eme année."}, {"id": "D", "text": "14 points en 1ère année, 12 points en 2eme année et 13 points en 3eme année."}]'::jsonb, ARRAY['A']::text[], '⚠ **تصحيح من الشبكة الرسمية — mesconcours يعطي ب، وهو خطأ.** شبكة التنقيط الرسمية في OP 2009 (صفحة 14، البند 7) تعطي في ألعاب القوى: القدرة الرياضية 06/06/06 + السلوك الحركي (مستوى طريقة الإنجاز) 08/07/06، أي أن المعارف الإجرائية (مجموع البعدين الحركيين) = 14/13/12 (أولى/ثانية/ثالثة إعدادي). ويؤكده الملحق 4 للجمباز: «Note finale (connaissances procédurales) = 14 (1ère A.C) / 13 (2ème) / 12 (3ème)». ففي OP 2009 تنقص المعارف الإجرائية مع تقدّم المستوى بينما يزداد السلوك (3/4/5) — عكس افتراض mesconcours (تزايد منتظم 12/13/14). الجواب المسجَّل هو جواب الشبكة الرسمية (أ). (انظر الملاحظة 2.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', true, 'تصحيح من الشبكة الرسمية OP 2009، انظر الملاحظة 2')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q41', 'exam_eps_2018_college', 41, 'التربية البدنية والرياضية', 'L''évaluation des connaissances procédurales adoptée en athlétisme dans Les Orientations pédagogiques 2007 :', false, '[{"id": "A", "text": "14 points en tronc commun, 13 points en 1ère année et 12 points en 2eme année bac"}, {"id": "B", "text": "12 points en tronc commun, 13 points en 1ère année, 14 points en 2eme année bac"}, {"id": "C", "text": "12 points en tronc commun 14 points en 1ère année et 13 points en 2eme année bac"}, {"id": "D", "text": "14 points en tronc commun, 12 points en 1ère année et 13 points en 2eme année bac"}]'::jsonb, ARRAY['B']::text[], 'مؤكد بالشبكة الرسمية — شبكة التنقيط في OP 2007 (صفحة 16، البند 5) تعطي في ألعاب القوى: القدرة الرياضية 06/07/07 + السلوك الحركي 06/06/07، أي أن المعارف الإجرائية = 12/13/14 (جذع مشترك/أولى باك/ثانية باك). ويؤكده مفتاح «80 QCM Didactique» المنشور (ب). يتفق مع mesconcours (ب). (انظر الملاحظة 5.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', true, 'مؤكد بالشبكة الرسمية OP 2007')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q42', 'exam_eps_2018_college', 42, 'التربية البدنية والرياضية', 'En athlétisme, le départ accroupi est obligatoire :', false, '[{"id": "A", "text": "Uniquement dans les courses allant jusqu''au 200 m inclus."}, {"id": "B", "text": "Pour toutes les courses allant jusqu''au 800 m inclus."}, {"id": "C", "text": "Pour toutes les courses allant jusqu''au 400 m inclus."}, {"id": "D", "text": "Uniquement dans les courses allant jusqu''au 100 m inclus."}]'::jsonb, ARRAY['C']::text[], 'الانطلاق المنحني مع كتل الانطلاق (starting-blocks) إجباري حتى 400م ضمناً، وكذلك للمتناوب الأول في التتابعات القصيرة. وابتداءً من 800م يكون الانطلاق واقفاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q43', 'exam_eps_2018_college', 43, 'التربية البدنية والرياضية', 'En EPS, mobiliser de manière intégrée ses ressources et résoudre des situations problèmes complexes relève principalement de :', false, '[{"id": "A", "text": "La pédagogie par objectif."}, {"id": "B", "text": "La pédagogie du contrat."}, {"id": "C", "text": "L''approche par imitation de modèle."}, {"id": "D", "text": "L''approche par compétence."}]'::jsonb, ARRAY['D']::text[], 'هذا هو تعريف الكفاية نفسه: تعبئة الموارد وتركيبها لمعالجة عائلة من الوضعيات المعقدة بنجاح. أما بيداغوجيا الأهداف فتسير عكس ذلك، بتقطيع التعلم إلى عناصر بسيطة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q44', 'exam_eps_2018_college', 44, 'التربية البدنية والرياضية', 'La course qui se donne à 2 commandements est :', false, '[{"id": "A", "text": "Le 400m plat."}, {"id": "B", "text": "Le 800m."}, {"id": "C", "text": "Le 200m plat."}, {"id": "D", "text": "Le 400m haies."}]'::jsonb, ARRAY['B']::text[], '⚠ سؤال معيب — حسب القاعدة 162.2 للـIAAF (2018)، ثم القاعدة التقنية 16.2 لـWorld Athletics: السباقات حتى 400م ضمناً تنطلق بأمرين («À vos marques» ثم «Prêts») يليهما طلقة المسدس، والسباقات فوق 400م بأمر واحد («À vos marques»). فبمعنى القاعدة، 400م (أ) و200م (ج) و400م حواجز (د) كلها تُعطى بأمرين، و800م بأمر واحد. والجواب المسجَّل (ب) هو المتوقَّع من واضع الامتحان، ولا يصح إلا إذا عُدّت طلقة المسدس «أمراً» ثانياً (800م: «À vos marques» + الطلقة). (انظر الملاحظة 8.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'سؤال معيب، انظر الملاحظة 8')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q45', 'exam_eps_2018_college', 45, 'التربية البدنية والرياضية', 'En gymnastique, un saut de mains est :', false, '[{"id": "A", "text": "Un saut par renversement en rotation latérale, passant par une impulsion mains simultanées."}, {"id": "B", "text": "Un saut par renversement en rotation avant totale, passant par l''ATR."}, {"id": "C", "text": "Un saut par renversement en rotation arrière totale, passant par l''ATR."}, {"id": "D", "text": "Un saut par renversement en rotation latérale, passant par une impulsion mains alternatives."}]'::jsonb, ARRAY['B']::text[], 'قفزة اليدين انقلاب أمامي كامل مع المرور بالدعم المشدود المقلوب (ATR) ووضع اليدين معاً. أما الانقلاب الخلفي عبر ATR فهو الفليك-فلاك (ج)، والدوران الجانبي مع وضع اليدين بالتناوب فهو العجلة (د).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q46', 'exam_eps_2018_college', 46, 'التربية البدنية والرياضية', 'Une évaluation normative en EPS vise à :', false, '[{"id": "A", "text": "Juger les résultats de l''élève par rapport à des critères bien déterminés."}, {"id": "B", "text": "Répartir les élèves en groupes de niveaux."}, {"id": "C", "text": "Comparer le résultat d''un élève par rapport aux résultats des autres."}, {"id": "D", "text": "Préciser les conditions de réalisation des actions des élèves."}]'::jsonb, ARRAY['C']::text[], 'التقييم المعياري (normative) يحدّد موقع التلميذ بالنسبة إلى معيار المجموعة: منطق الترتيب والسلّم. أما أ فيصف التقييم المعياري-المرجعي (critériée)، الذي يقيس الفارق عن معيار محدد مسبقاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q47', 'exam_eps_2018_college', 47, 'التربية البدنية والرياضية', 'En course de vitesse, le temps de latence de la réaction motrice est :', false, '[{"id": "A", "text": "Le temps compris entre la réaction motrice et l''atteinte de la vitesse maximale."}, {"id": "B", "text": "Le temps compris entre le signal et la réaction motrice."}, {"id": "C", "text": "Le temps compris entre le 1er et le 2eme commandement."}, {"id": "D", "text": "Le temps compris entre l''atteinte de la vitesse maximale et la ligne d''arrivée."}]'::jsonb, ARRAY['B']::text[], 'زمن الكمون يفصل بين المنبه، هنا طلقة المسدس، وبداية الاستجابة الحركية: ويشمل كشف الإشارة ومعالجتها والأمر الحركي، أي نحو 0,10 إلى 0,15 ثانية عند عدّاء مدرَّب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q48', 'exam_eps_2018_college', 48, 'التربية البدنية والرياضية', 'Les courses de durée nécessitent principalement le développement :', false, '[{"id": "A", "text": "De la capacité et de la puissance aérobies."}, {"id": "B", "text": "De la puissance aérobie uniquement."}, {"id": "C", "text": "De la capacité aérobie uniquement."}, {"id": "D", "text": "De la capacité anaérobie uniquement."}]'::jsonb, ARRAY['A']::text[], 'سباق المدة يتطلب الصمود طويلاً، وهذا من السعة الهوائية، وبإيقاع مرتفع، وهذا من القدرة الهوائية. والاثنتان تُدرَّبان معاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q49', 'exam_eps_2018_college', 49, 'التربية البدنية والرياضية', 'L''ATP est synthétisée en anaérobie grâce à :', false, '[{"id": "A", "text": "Six voies énergétiques."}, {"id": "B", "text": "Trois voies énergétiques."}, {"id": "C", "text": "Deux voies énergétiques."}, {"id": "D", "text": "Quatre voies énergétiques."}]'::jsonb, ARRAY['C']::text[], 'في غياب الأكسجين، مسلكان فقط يعيدان تركيب ATP: المسلك اللالاكتي، من الفوسفوكرياتين، والمسلك اللاكتي، عبر التحلل الغليكوليتي اللاهوائي. أما المسلك الثالث، الهوائي، فيتطلب الأكسجين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q50', 'exam_eps_2018_college', 50, 'التربية البدنية والرياضية', 'En didactique des APS, les règles d''action sont considérées comme :', false, '[{"id": "A", "text": "Un cadre de référence général pour réaliser une action donnée."}, {"id": "B", "text": "Les conditions à respecter et les éléments à prendre en compte pour qu''une action soit efficace."}, {"id": "C", "text": "Une construction théorique qui oriente un certain nombre d''action."}, {"id": "D", "text": "L''ensemble des savoirs globaux nécessaires pour réaliser une action."}]'::jsonb, ARRAY['B']::text[], 'قاعدة الفعل (règle d''action) تبيّن ما يجب فعله للنجاح: فهي تربط شروطاً قابلة للملاحظة بأثر متوقَّع، على نحو «لتنفيذ كرة عالية، اضرب أسفل الكرة». إنها محتوى تعليمي قابل للصياغة والتحقق، لا إطاراً نظرياً عاماً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q51', 'exam_eps_2018_college', 51, 'التربية البدنية والرياضية', 'Lors d''un sprint sur une distance de 250 mètres, l''ATP est synthétisée par :', false, '[{"id": "A", "text": "La voie glycolytique."}, {"id": "B", "text": "La voie oxydative."}, {"id": "C", "text": "La voie ATP-CP."}, {"id": "D", "text": "La voie alactique."}]'::jsonb, ARRAY['A']::text[], 'عدو طويل 250م يستغرق نحو ثلاثين ثانية: وبعد خمس عشرة ثانية تقريباً ينفد الفوسفوكرياتين، ويصبح التحلل الغليكوليتي اللاهوائي، مع إنتاج اللاكتات، هو المزوّد الرئيسي بالطاقة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q52', 'exam_eps_2018_college', 52, 'التربية البدنية والرياضية', 'Le flic-flac en gymnastique est :', false, '[{"id": "A", "text": "Une rotation avec une roulade arrière, jambes écartées."}, {"id": "B", "text": "Une rotation avec une roulade avant, jambes jointes."}, {"id": "C", "text": "Une rotation arrière complète avec passage à l''ATR, précédé et suivi d''un temps de suspension."}, {"id": "D", "text": "Une rotation avant complète avec passage à l''ATR, précédé et suivi d''un temps de suspension."}]'::jsonb, ARRAY['C']::text[], 'الفليك-فلاك انقلاب خلفي: دفع الرجلين إلى الخلف، ومرحلة هوائية، ووضع اليدين مع المرور بالدعم المشدود المقلوب (ATR)، ودفع الذراعين وطيران ثانٍ حتى الاستقبال على القدمين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q53', 'exam_eps_2018_college', 53, 'التربية البدنية والرياضية', 'Dans les Orientations pédagogiques de 2007, l''évaluation des capacités sportives et des habiletés motrices collectives adoptée en sports collectifs est :', false, '[{"id": "A", "text": "7 points en T.C, 6 points en 1ère année et 8 points en 2eme année bac."}, {"id": "B", "text": "6 points en T.C, 7 points en 1ère année et 8 points en 2eme année bac."}, {"id": "C", "text": "6 points en T.C, 7 points en 1ère année et 7 points en 2eme année bac."}, {"id": "D", "text": "8 points en T.C, 6 points en 1ère année et 7 points en 2eme année bac."}]'::jsonb, ARRAY['C']::text[], '⚠ **تصحيح من الشبكة الرسمية — mesconcours يعطي ب، وهو خطأ.** شبكة التنقيط الرسمية في OP 2007 (صفحة 16، البند 5 «شبكة التنقيط») تعطي في الرياضات الجماعية: القدرات الفردية 06/06/07 والقدرات الجماعية 06/07/07 (جذع مشترك/أولى باك/ثانية باك). ومفتاح «80 QCM Didactique» المنشور يعطي هو الآخر ج (6، 7، 7) لهذا السؤال. الجواب المسجَّل هو جواب الشبكة الرسمية (ج). (انظر الملاحظة 3.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', true, 'تصحيح من الشبكة الرسمية OP 2007، انظر الملاحظة 3')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q54', 'exam_eps_2018_college', 54, 'التربية البدنية والرياضية', 'La colonne vertébrale est constituée de :', false, '[{"id": "A", "text": "5 Vertèbres cervicales, 7 vertèbres dorsales, 12 vertèbres lombaires."}, {"id": "B", "text": "7 Vertèbres cervicales, 12 vertèbres dorsales, 5 vertèbres lombaires."}, {"id": "C", "text": "7 Vertèbres cervicales, 5 vertèbres dorsales, 12 vertèbres lombaires."}, {"id": "D", "text": "5 Vertèbres cervicales, 12 vertèbres dorsales, 7 vertèbres lombaires."}]'::jsonb, ARRAY['B']::text[], 'سبع فقرات عنقية، واثنتا عشرة ظهرية تحمل كل منها زوجاً من الأضلاع، وخمس قطنية، ويُضاف إليها العجز والعصعص. عدد الفقرات الظهرية يُحفَظ بعدد أزواج الأضلاع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q55', 'exam_eps_2018_college', 55, 'التربية البدنية والرياضية', 'En course de vitesse il s''agit de :', false, '[{"id": "A", "text": "Raccourcir la phase de la poussée à l''impulsion."}, {"id": "B", "text": "De prolonger la phase aérienne."}, {"id": "C", "text": "De prolonger la poussée et de réduire la phase aérienne."}, {"id": "D", "text": "De minimiser la force pour ne pas se désaxer."}]'::jsonb, ARRAY['C']::text[], 'السرعة لا تُصنع إلا على الأرض: فأثناء الارتكاز تُمارَس القوة الدافعة. والمرحلة الهوائية الطويلة وقت ضائع، بينما الدفع الكامل — الورك ثم الركبة ثم الكاحل — ينتج التسارع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q56', 'exam_eps_2018_college', 56, 'التربية البدنية والرياضية', 'Les facteurs énergétiques principaux dont dépend la performance sportive sont :', false, '[{"id": "A", "text": "La coordination, le gainage, l''exposivité."}, {"id": "B", "text": "La force, la puissance, la souplesse."}, {"id": "C", "text": "L''endurance, la vitesse."}, {"id": "D", "text": "La vitesse de réaction et l''équilibre dynamique."}]'::jsonb, ARRAY['C']::text[], 'العوامل المسماة «طاقية» تحيل إلى إنتاج الطاقة واستعمالها: التحمل والسرعة. أما التنسيق والتوازن فعوامل معلوماتية، والمرونة عامل بنيوي. (كلمة «l''exposivité» في البديل أ نُقلت كما هي في الورقة؛ المقصود l''explosivité.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q57', 'exam_eps_2018_college', 57, 'التربية البدنية والرياضية', 'En course de vitesse, la haute performance est principalement déterminée par l''abondance :', false, '[{"id": "A", "text": "Des stocks disponibles d''ATP-CP."}, {"id": "B", "text": "Des fibres rouges."}, {"id": "C", "text": "Des globules rouges."}, {"id": "D", "text": "Des fibres blanches."}]'::jsonb, ARRAY['D']::text[], 'الألياف البيضاء، المسماة السريعة أو من النوع II، تنقبض بسرعة وتطوّر توتراً مرتفعاً: ونسبتها، المحددة وراثياً إلى حد كبير، هي التي تشترط المستوى في العدو. أما الألياف الحمراء والكريات الحمراء فتخدم جهود التحمل.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q58', 'exam_eps_2018_college', 58, 'التربية البدنية والرياضية', 'L''évaluation formative sert essentiellement à :', false, '[{"id": "A", "text": "Classer les élèves par rapport à leur production."}, {"id": "B", "text": "Donner des notes pour le contrôle continue."}, {"id": "C", "text": "Vérifier la progression au cours des apprentissages."}, {"id": "D", "text": "Donner une nouvelle chance aux élèves en difficulté."}]'::jsonb, ARRAY['C']::text[], 'التقييم التكويني (formative) يقع أثناء التعلم ويخدم الضبط: فيُعلم التلميذ والأستاذ بالتقدم والعقبات. أما التصنيف والتنقيط فيعودان إلى التقييم الإجمالي (sommative).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q59', 'exam_eps_2018_college', 59, 'التربية البدنية والرياضية', 'En physiologie, la voie métabolique correspond à :', false, '[{"id": "A", "text": "La puissance maximale de sollicitation aérobie."}, {"id": "B", "text": "Un système biochimique de dégradation des substrats énergétiques assurant la synthèse de l''ATP."}, {"id": "C", "text": "La quantité maximale d''énergie fournie pour prolonger un effort."}, {"id": "D", "text": "L''intensité de l''exercice physique cherchant à développer la capacité à supporter l''acide lactique."}]'::jsonb, ARRAY['B']::text[], 'المسلك الأيضي سلسلة تفاعلات إنزيمية تفكّك ركيزة — فوسفوكرياتين أو غلوكوز أو أحماض دهنية — لإعادة تركيب ATP. أما أ وج فتسمّيان القدرة والسعة، وهما خاصيتان للمسلك لا المسلك نفسه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q60', 'exam_eps_2018_college', 60, 'التربية البدنية والرياضية', 'Pour améliorer la puissance musculaire maximale, il faut principalement : ## الجزء الثاني — الأسئلة المفتوحة ### السؤال الأول (20ن) A quelles conditions la tâche d''apprentissage peut-elle favoriser l''optimisation des acquisitions en EPS ? الجواب الصحيح (إجابة نموذجية — ليست عناصر إجابة رسمية، انظر الملاحظة 12): **مقدمة.** مهمة التعلم هي الوحدة الأساسية لتدريس التربية البدنية والرياضية: إنها الجهاز، مرفقاً بهدفه وتعليماته، الذي يتصرف فيه التلميذ. وهي ليست حاملة للتعلم تلقائياً: فقيمتها تتوقف على شروط تتعلق بتصميمها وتنظيمها وطريقة تدبير الأستاذ لها. **1) شروط تتعلق بملاءمة المهمة.** يجب أن تُبنى انطلاقاً من المنطق الداخلي للنشاط البدني والرياضي، أي أن تحافظ على العلاقة بالفضاء والزمن والخصم وعدم اليقين التي تميّز النشاط؛ فالمهمة التي تشوّه النشاط تجعل التلميذ يتعلم شيئاً آخر غير المقصود. ويجب أن تجيب عن عائق مشخص فعلاً بالتقييم التشخيصي، لا عن محتوى مختار قبلياً. ويجب أخيراً أن تستهدف هدفاً واحداً مصاغاً بوضوح: فالمهمة التي تسعى إلى ثلاثة أهداف دفعة واحدة لا تحقق أياً منها. **2) شروط تتعلق بالصعوبة.** يجب أن تقع المهمة في منطقة الصعوبة المثلى: صعبة بما يكفي لإجبار التلميذ على إعادة تنظيم سلوكه، ومتاحة بما يكفي لينجح مرات كافية. وهذا يفترض متغيرات ديداكتيكية قابلة للتحكم — المسافة، عدد اللاعبين، الزمن، المساحة، الارتفاع، عدد التكرارات — تتيح تمييز المهمة حسب مجموعات المستوى دون تغيير الجهاز. **3) شروط تتعلق بالانخراط الحركي.** يجب أن يكون زمن الانخراط الحركي الحقيقي في أقصاه: التنظيم في ورشات، وعتاد بعدد كافٍ، وطوابير انتظار قصيرة، وأدوار اجتماعية تُسند إلى التلاميذ الذين لا يمارسون (ملاحظ، حكم، مؤقت، حارس). ويجب أن تكون التكرارات كثيرة، والأهم أن تكون موجَّهة: فالتكرار الموجَّه بالهدف هو الذي يُحرز التقدم، لا مجرد النشاط. **4) شروط تتعلق بالمعلومة المقدمة للتلميذ.** يجب أن يكون هدف المهمة مفهوماً ومقبولاً من التلميذ: أن يعرف ما الذي يسعى إلى فعله. وتخبره معايير الإنجاز كيف يتصرف، وتتيح له معايير النجاح القابلة للملاحظة أن يعرف بنفسه إن كان قد نجح. وتكمل هذه المعلومة تغذية راجعة دقيقة، تُقدَّم في الوقت المناسب، ومتكررة في بداية التعلم ثم متباعدة. **5) شروط تتعلق بالمعنى والأمان.** يجب أن يكون للمهمة معنى عند التلميذ، عبر التحدي الذي تقترحه، والتقدم الذي تجعله مرئياً، والارتباط بالممارسة الاجتماعية المرجعية. ويجب أن تحترم الأمان النشط والسلبي، شرط الانخراط، وأن تتيح النجاح للبنات كما للأولاد. **خاتمة.** تحسّن المهمة المكتسبات حين تكون ملائمةً لمنطق النشاط والعائق، ومضبوطة الصعوبة، ومولّدة لانخراط حركي كبير، وحاملة لمعلومة واضحة ومضبوطة أثناء الممارسة. وهذه الشروط ليست مستقلة: فتماسكها هو ما يصنع جودة المهمة. ### السؤال الثاني (20ن) Montrez que les critères de réussite et les critères de réalisation jouent des rôles complémentaires dans la régulation des apprentissages en EPS ? Vous illustrerez vos propos par des exemples dans une activité physique et sportive de votre choix. الجواب الصحيح (إجابة نموذجية — ليست عناصر إجابة رسمية، انظر الملاحظة 12): **1) مفهومان متميزان.** معيار النجاح يخص **النتيجة**: فهو قابل للملاحظة، وغالباً قابل للقياس، ويجيب عن سؤال «هل نجحت؟». أما معيار الإنجاز فيخص **الكيفية**: فهو يصف الأفعال الواجب إنتاجها للنجاح، ويجيب عن سؤال «كيف أفعل؟». الأول يثبت، والثاني يفسّر. **2) لماذا لا يكفي أحدهما دون الآخر.** معيار نجاح وحده يقول للتلميذ إنه أخفق، دون أن يقول له لماذا: فقد يكرر الخطأ نفسه طويلاً، أو ينجح بحل غير فعال سيحجبه في المستوى التالي. ومعيار إنجاز وحده يجعل التلميذ ينفذ شكلاً حركياً دون أن يختبر فعاليته: فتصبح التعليمات شكلية، ولا يملك التلميذ أي وسيلة ليعرف إن كان يتقدم. وتقاطعهما هو ما ينتج الضبط: معيار النجاح يطلق التحليل، ومعيار الإنجاز يوجّه التصحيح. **3) مثال في كرة السلة — الرمي في الجري.** - معيار النجاح: تسجيل 6 سلال على الأقل من 10 رميات في الجري انطلاقاً من الجهة اليمنى، دون مشي بالكرة. - معايير الإنجاز: أخذ الكرة بيدين اثنتين لحظة الارتكاز الأيمن؛ تسلسل الارتكاز الأيمن ثم الأيسر ثم الدفع؛ رفع الركبة اليمنى والكرة معاً؛ وضع الكرة على اللوحة، في الزاوية العليا للمربع، في قمة القفزة. - الضبط: التلميذ الذي يفشل في معيار النجاح يرجع إلى قائمة معايير الإنجاز، وحده أو مع ملاحظ، ويحدد أيها لم يُحترم. أما الأستاذ فيعرف أين يتدخل: فالفشل نفسه قد يأتي من إيقاع الارتكازات، أو من أخذ الكرة متأخراً، أو من مسار شديد الاستقامة. **4) مثال مكمل في سباق الحواجز.** - معيار النجاح: تجاوز ثلاثة حواجز بثلاث خطوات بين كل حاجز وآخر، دون تباطؤ، وبزمن أقل من الزمن المرجعي. - معايير الإنجاز: مهاجمة الحاجز من بعيد، والرجل المهاجمة ممدودة، والجذع مائل إلى الأمام، والذراع المعاكسة إلى الأمام، واستئناف ارتكاز نشط قرب الحاجز. **5) ما الذي تضيفه هذه التكاملية.** إنها تجعل التلميذ قادراً على تقييم نفسه وتصحيحها، وتتيح الملاحظة المتبادلة بين الأقران، وتعطي الأستاذ نقاط تدخل دقيقة، وتؤسس تقييماً تكوينياً مقروءاً، وتضمن التماسك بين ما يُدرَّس وما يُقيَّم. **خاتمة.** معيار النجاح ومعيار الإنجاز ثنائي: الأول يفتح حلقة الضبط بالإشارة إلى الفارق، والثاني يغلقها بالإشارة إلى الفعل الواجب تعديله. وفصلهما يحرم التلميذ إما من المعلومة عن نتيجته، وإما من وسائل تحسينها.', false, '[{"id": "A", "text": "Utiliser des exercices rapides avec des charges additionnelles lourdes."}, {"id": "B", "text": "Utiliser des exercices lents avec des charges additionnelles légères."}, {"id": "C", "text": "Utiliser des exercices lents avec des charges additionnelles lourdes."}, {"id": "D", "text": "Alterner des exercices lents avec des charges additionnelles lourdes et des exercices rapides avec charges additionnelles légères."}]'::jsonb, ARRAY['D']::text[], 'المتوقَّع تعريف واضح للمفهومين، وبيان تكاملهما في حلقة الضبط، ثم مثال ملموس في نشاط بدني ورياضي مختار، بمعايير مصاغة فعلاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'انظر الملاحظة 11')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q61', 'exam_eps_2018_college', 61, 'مهمة التعلم', 'A quelles conditions la tâche d''apprentissage peut-elle favoriser l''optimisation des acquisitions en EPS ?', false, '[]'::jsonb, ARRAY[]::text[], '**مقدمة.** مهمة التعلم هي الوحدة الأساسية لتدريس التربية البدنية والرياضية: إنها الجهاز، مرفقاً بهدفه وتعليماته، الذي يتصرف فيه التلميذ. وهي ليست حاملة للتعلم تلقائياً: فقيمتها تتوقف على شروط تتعلق بتصميمها وتنظيمها وطريقة تدبير الأستاذ لها.

**1) شروط تتعلق بملاءمة المهمة.** يجب أن تُبنى انطلاقاً من المنطق الداخلي للنشاط البدني والرياضي، أي أن تحافظ على العلاقة بالفضاء والزمن والخصم وعدم اليقين التي تميّز النشاط؛ فالمهمة التي تشوّه النشاط تجعل التلميذ يتعلم شيئاً آخر غير المقصود. ويجب أن تجيب عن عائق مشخص فعلاً بالتقييم التشخيصي، لا عن محتوى مختار قبلياً. ويجب أخيراً أن تستهدف هدفاً واحداً مصاغاً بوضوح: فالمهمة التي تسعى إلى ثلاثة أهداف دفعة واحدة لا تحقق أياً منها.

**2) شروط تتعلق بالصعوبة.** يجب أن تقع المهمة في منطقة الصعوبة المثلى: صعبة بما يكفي لإجبار التلميذ على إعادة تنظيم سلوكه، ومتاحة بما يكفي لينجح مرات كافية. وهذا يفترض متغيرات ديداكتيكية قابلة للتحكم — المسافة، عدد اللاعبين، الزمن، المساحة، الارتفاع، عدد التكرارات — تتيح تمييز المهمة حسب مجموعات المستوى دون تغيير الجهاز.

**3) شروط تتعلق بالانخراط الحركي.** يجب أن يكون زمن الانخراط الحركي الحقيقي في أقصاه: التنظيم في ورشات، وعتاد بعدد كافٍ، وطوابير انتظار قصيرة، وأدوار اجتماعية تُسند إلى التلاميذ الذين لا يمارسون (ملاحظ، حكم، مؤقت، حارس). ويجب أن تكون التكرارات كثيرة، والأهم أن تكون موجَّهة: فالتكرار الموجَّه بالهدف هو الذي يُحرز التقدم، لا مجرد النشاط.

**4) شروط تتعلق بالمعلومة المقدمة للتلميذ.** يجب أن يكون هدف المهمة مفهوماً ومقبولاً من التلميذ: أن يعرف ما الذي يسعى إلى فعله. وتخبره معايير الإنجاز كيف يتصرف، وتتيح له معايير النجاح القابلة للملاحظة أن يعرف بنفسه إن كان قد نجح. وتكمل هذه المعلومة تغذية راجعة دقيقة، تُقدَّم في الوقت المناسب، ومتكررة في بداية التعلم ثم متباعدة.

**5) شروط تتعلق بالمعنى والأمان.** يجب أن يكون للمهمة معنى عند التلميذ، عبر التحدي الذي تقترحه، والتقدم الذي تجعله مرئياً، والارتباط بالممارسة الاجتماعية المرجعية. ويجب أن تحترم الأمان النشط والسلبي، شرط الانخراط، وأن تتيح النجاح للبنات كما للأولاد.

**خاتمة.** تحسّن المهمة المكتسبات حين تكون ملائمةً لمنطق النشاط والعائق، ومضبوطة الصعوبة، ومولّدة لانخراط حركي كبير، وحاملة لمعلومة واضحة ومضبوطة أثناء الممارسة. وهذه الشروط ليست مستقلة: فتماسكها هو ما يصنع جودة المهمة.

ما يُنتظَر: المتوقَّع إجابة منظمة في شروط متميزة، كل منها مبرَّر، ومثّلة بأمثلة من أنشطة بدنية ورياضية متنوعة. فتعريف مهمة التعلم وحده لا يجيب عن السؤال المطروح.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'إجابة نموذجية من mesconcours؛ لا توجد عناصر إجابة رسمية منشورة لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يناير 2018) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2018_college_q62', 'exam_eps_2018_college', 62, 'معايير النجاح والإنجاز', 'Montrez que les critères de réussite et les critères de réalisation jouent des rôles complémentaires dans la régulation des apprentissages en EPS ? Vous illustrerez vos propos par des exemples dans une activité physique et sportive de votre choix.', false, '[]'::jsonb, ARRAY[]::text[], '**1) مفهومان متميزان.** معيار النجاح يخص **النتيجة**: فهو قابل للملاحظة، وغالباً قابل للقياس، ويجيب عن سؤال «هل نجحت؟». أما معيار الإنجاز فيخص **الكيفية**: فهو يصف الأفعال الواجب إنتاجها للنجاح، ويجيب عن سؤال «كيف أفعل؟». الأول يثبت، والثاني يفسّر.

**2) لماذا لا يكفي أحدهما دون الآخر.** معيار نجاح وحده يقول للتلميذ إنه أخفق، دون أن يقول له لماذا: فقد يكرر الخطأ نفسه طويلاً، أو ينجح بحل غير فعال سيحجبه في المستوى التالي. ومعيار إنجاز وحده يجعل التلميذ ينفذ شكلاً حركياً دون أن يختبر فعاليته: فتصبح التعليمات شكلية، ولا يملك التلميذ أي وسيلة ليعرف إن كان يتقدم. وتقاطعهما هو ما ينتج الضبط: معيار النجاح يطلق التحليل، ومعيار الإنجاز يوجّه التصحيح.

**3) مثال في كرة السلة — الرمي في الجري.**
- معيار النجاح: تسجيل 6 سلال على الأقل من 10 رميات في الجري انطلاقاً من الجهة اليمنى، دون مشي بالكرة.
- معايير الإنجاز: أخذ الكرة بيدين اثنتين لحظة الارتكاز الأيمن؛ تسلسل الارتكاز الأيمن ثم الأيسر ثم الدفع؛ رفع الركبة اليمنى والكرة معاً؛ وضع الكرة على اللوحة، في الزاوية العليا للمربع، في قمة القفزة.
- الضبط: التلميذ الذي يفشل في معيار النجاح يرجع إلى قائمة معايير الإنجاز، وحده أو مع ملاحظ، ويحدد أيها لم يُحترم. أما الأستاذ فيعرف أين يتدخل: فالفشل نفسه قد يأتي من إيقاع الارتكازات، أو من أخذ الكرة متأخراً، أو من مسار شديد الاستقامة.

**4) مثال مكمل في سباق الحواجز.**
- معيار النجاح: تجاوز ثلاثة حواجز بثلاث خطوات بين كل حاجز وآخر، دون تباطؤ، وبزمن أقل من الزمن المرجعي.
- معايير الإنجاز: مهاجمة الحاجز من بعيد، والرجل المهاجمة ممدودة، والجذع مائل إلى الأمام، والذراع المعاكسة إلى الأمام، واستئناف ارتكاز نشط قرب الحاجز.

**5) ما الذي تضيفه هذه التكاملية.** إنها تجعل التلميذ قادراً على تقييم نفسه وتصحيحها، وتتيح الملاحظة المتبادلة بين الأقران، وتعطي الأستاذ نقاط تدخل دقيقة، وتؤسس تقييماً تكوينياً مقروءاً، وتضمن التماسك بين ما يُدرَّس وما يُقيَّم.

**خاتمة.** معيار النجاح ومعيار الإنجاز ثنائي: الأول يفتح حلقة الضبط بالإشارة إلى الفارق، والثاني يغلقها بالإشارة إلى الفعل الواجب تعديله. وفصلهما يحرم التلميذ إما من المعلومة عن نتيجته، وإما من وسائل تحسينها.

ما يُنتظَر: المتوقَّع تعريف واضح للمفهومين، وبيان تكاملهما في حلقة الضبط، ثم مثال ملموس في نشاط بدني ورياضي مختار، بمعايير مصاغة فعلاً.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2018-543/', false, 'إجابة نموذجية من mesconcours؛ لا توجد عناصر إجابة رسمية منشورة لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
