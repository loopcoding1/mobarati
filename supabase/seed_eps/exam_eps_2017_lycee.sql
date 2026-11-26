-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية (دورة يونيو 2017)
-- ====================================================================
-- المصدر: ملف الحل solved/2017/التربية البدنية - دورة يونيو 2017.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2017-542/
--   لا يوجد مفتاح رسمي منشور لهذه الدورة؛ التصحيح من mesconcours (طرف ثالث مدقَّق). 8 أسئلة موسومة ⚠ (Q12، Q13، Q30، Q33، Q40، Q53، Q58، Q59) — انظر verification_note عند كل سؤال. الأسئلة المفتوحة Q61–Q64 هي أسئلة الجزء الثاني الفرعية س1–س4 (كرة السلة — التقييم التكويني).
--   عدد الأسئلة: 64 (60 QCM + 4 مفتوحة)؛ موثّقة verified=true: 0؛ موسومة بملاحظة تحقق: 12.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2017_lycee', 'eps_lycee', 2017, 'eps_specialty', 'التربية البدنية والرياضية', 'امتحان التربية البدنية والرياضية (دورة يونيو 2017)', 'دورة يونيو 2017', 240, 64, 'لا يوجد مفتاح رسمي منشور؛ التصحيح من mesconcours (طرف ثالث مدقَّق)؛ صياغة الأسئلة قورنت مع الورقة')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (64 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q1', 'exam_eps_2017_lycee', 1, 'التربية البدنية والرياضية', 'Les nouvelles orientations pédagogiques 2009 (NOP 2009) concernent :', false, '[{"id": "A", "text": "Le primaire"}, {"id": "B", "text": "Le secondaire collégial"}, {"id": "C", "text": "Le secondaire qualifiant"}, {"id": "D", "text": "Les trois niveaux à la fois"}]'::jsonb, ARRAY['B']::text[], 'التوجيهات التربوية للتربية البدنية والرياضية لسنة 2009 تخص السلك الإعدادي؛ أما توجيهات 2007 فتخص التأهيلي. والموضوع نفسه يؤكد ذلك، لأن س53 يفصّل توجيهات 2009 في السنة الأولى والثانية والثالثة إعدادي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q2', 'exam_eps_2017_lycee', 2, 'التربية البدنية والرياضية', 'Une situation problème en EPS est :', false, '[{"id": "A", "text": "Une situation didactique dans laquelle on propose au sujet un ensemble d''exercices à répéter."}, {"id": "B", "text": "Une situation didactique dans laquelle le sujet apprend à partir d''une transmission directe."}, {"id": "C", "text": "Une situation didactique dans laquelle le sujet se base uniquement sur une activité cognitive de traitement de l''information."}, {"id": "D", "text": "Une situation didactique dans laquelle le sujet apprend dans l''interaction de l''action et de la réflexion."}]'::jsonb, ARRAY['D']::text[], 'وضعية المشكلة تضع التلميذ أمام عائق لا يستطيع تجاوزه بموارده الحالية وحدها: يتصرّف، فيلاحظ الفارق، ويفكّر ويعيد تنظيم سلوكه. البديل أ يعود إلى التكرار، وب إلى النموذج النقلي، وج يختزل التعلم في معالجة المعلومات وحدها دون انخراط حركي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q3', 'exam_eps_2017_lycee', 3, 'التربية البدنية والرياضية', 'Une Répétition Maximale (RM) s''est pouvoir :', false, '[{"id": "A", "text": "Développer une charge le plus de répétition possible"}, {"id": "B", "text": "Développer charge le plus rapidement possible pendant 20 répétitions"}, {"id": "C", "text": "Développer une charge moins de 2 répétitions au maximum"}, {"id": "D", "text": "Développer une charge le plus de serie possible de 10 repetitions"}]'::jsonb, ARRAY['C']::text[], 'التكرار الأقصى (1 RM) هو أثقل حمولة يستطيع الشخص تحريكها مرة واحدة، أي أقل من تكرارين. الصياغات الأخرى تصف حمولات دون القصوى تُستعمل لتقدير 1 RM، لا لتعريفه. (صياغة السؤال كما في الورقة، بما فيها «s''est».)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q4', 'exam_eps_2017_lycee', 4, 'التربية البدنية والرياضية', 'Pour dépasser la juxtaposition des APS en EPS, il est souhaitable de :', false, '[{"id": "A", "text": "Réfléchir sur les contenus spécifiques à chaque APS."}, {"id": "B", "text": "Chercher à développer le traitement didactique de chaque APS."}, {"id": "C", "text": "Chercher des principes d''invariance, structurant de manière transversale l''ensemble des disciplines sportives."}, {"id": "D", "text": "Chercher à élaborer des contenus d''enseignement-apprentissage en référence à une pratique sociale."}]'::jsonb, ARRAY['C']::text[], 'التجاور (juxtaposition) ناتج بالضبط عن معالجة كل نشاط بدني ورياضي لذاته. ويُتجاوَز باستخلاص ثوابت عابرة (التقاط المعلومات، التوازن، علاقة المواجهة، تدبير الجهد) تصنع تماسك المنهاج. أما أ وب فيعزّزان منطق التقوقع الذي يطلب السؤال تجاوزه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q5', 'exam_eps_2017_lycee', 5, 'التربية البدنية والرياضية', 'Lors d''une course d''élan en saut en hauteur :', false, '[{"id": "A", "text": "Les mouvements sont rapides et la fréquence des appuis diminue progressivement."}, {"id": "B", "text": "Les mouvements sont amples et la fréquence des appuis augmente progressivement."}, {"id": "C", "text": "Les mouvements sont lents et la fréquence des appuis est explosive."}, {"id": "D", "text": "Les mouvements sont alternés en rapides et lents et la fréquence des appuis est très faible."}]'::jsonb, ARRAY['B']::text[], 'جري الاقتراب في الوثب العالي جري متسارع: تبقى الخطوة واسعة ويزداد تواتر الارتكازات في الارتكازات الأخيرة، ما يسمح بخفض مركز الثقل ودفع فعال. تواتر متناقص (أ) يعني تباطؤاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q6', 'exam_eps_2017_lycee', 6, 'التربية البدنية والرياضية', 'L''échauffement permet de :', false, '[{"id": "A", "text": "Orienter la circulation sanguine vers les zones actives"}, {"id": "B", "text": "Accélérer la surcompensation énergétique"}, {"id": "C", "text": "Diminuer les échanges gazeux"}, {"id": "D", "text": "Solliciter uniquement les muscles concernes"}]'::jsonb, ARRAY['A']::text[], 'إعادة توزيع التدفق الدموي نحو العضلات النشطة من الآثار الثابتة للإحماء، مع ارتفاع الحرارة الموضعية. التعويض الزائد (ب) يخص الاستشفاء، والتبادلات الغازية تزداد لا تنقص (ج)، والإحماء العام يسبق دائماً الإحماء الخاص (د).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q7', 'exam_eps_2017_lycee', 7, 'التربية البدنية والرياضية', 'Deux muscles antagonistes :', false, '[{"id": "A", "text": "Se contractent en même temps"}, {"id": "B", "text": "Se relâchent en même temps"}, {"id": "C", "text": "Quand l''un se contracte l''autre s''étire"}, {"id": "D", "text": "S''étirent en même temps"}]'::jsonb, ARRAY['C']::text[], 'عضلتان متضادتان تعملان في اتجاهين معاكسين حول المفصل نفسه: انقباض العضلة الفاعلة يصاحبه تمدد واسترخاء العضلة المضادة (التعصيب التبادلي). الانقباض المتزامن موجود (التقلص المشترك) لكنه يخدم تثبيت المفصل ولا يعرّف العلاقة التضادية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q8', 'exam_eps_2017_lycee', 8, 'التربية البدنية والرياضية', 'Dans sa pratique pédagogique, l''enseignant d''EPS recherche de manière privilégiée :', false, '[{"id": "A", "text": "La production de performances mesurables"}, {"id": "B", "text": "L''acquisition systématique de procédures d''action"}, {"id": "C", "text": "La mise en relation de procédures d''action et de performances"}, {"id": "D", "text": "L''acquisition d''attitudes citoyennes"}]'::jsonb, ARRAY['C']::text[], 'التربية البدنية والرياضية ليست تدريباً على الأداء (أ) ولا فهرس إجراءات يُتعلَّم خارج السياق (ب): الأستاذ يجعل التلاميذ يبنون مهارات يقيسون فعاليتها على النتيجة. المواقف المواطِنة (د) مستهدَفة، لكن كغاية تربوية لا كموضوع مفضّل للممارسة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q9', 'exam_eps_2017_lycee', 9, 'التربية البدنية والرياضية', 'Les qualités athlétiques privilégiées chez un sportif sont :', false, '[{"id": "A", "text": "Endurance, force et dribble"}, {"id": "B", "text": "Vitesse, gainage et tir"}, {"id": "C", "text": "Vitesse, endurance et force"}, {"id": "D", "text": "Force, coordination et jonglage"}]'::jsonb, ARRAY['C']::text[], 'السرعة والتحمل والقوة هي الصفات البدنية الأساسية. المراوغة والتسديد والمناورة مهارات تقنية خاصة بنشاط معين، لا صفات رياضية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q10', 'exam_eps_2017_lycee', 10, 'التربية البدنية والرياضية', 'En EPS, quand certains élèves ne réussissent pas l''exécution d''une tâche d''apprentissage, il est recommandé à l''enseignant de :', false, '[{"id": "A", "text": "Passer, sans perdre le temps, à une autre tâche d''apprentissage plus facile"}, {"id": "B", "text": "Evoluer la tâche selon le rythme des élèves en réussite"}, {"id": "C", "text": "D''assurer les remédiations nécessaires et d''adapter la difficulté de la dite tâche selon le niveau des élèves"}, {"id": "D", "text": "S''intéresser exclusivement aux élèves en difficulté"}]'::jsonb, ARRAY['C']::text[], 'الفشل معلومة: يستدعي تنظيماً، أي معالجات وتعديل المتغيرات الديداكتيكية لإعادة المهمة إلى منطقة الصعوبة المثلى. تغيير المهمة (أ) أو اتباع التلاميذ الناجحين فقط (ب) يترك العائق قائماً؛ والاهتمام بالضعفاء وحدهم (د) يتخلى عن بقية المجموعة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q11', 'exam_eps_2017_lycee', 11, 'التربية البدنية والرياضية', 'L''énergie nécessaire aux fonctions organiques est fournie par :', false, '[{"id": "A", "text": "Les glucides."}, {"id": "B", "text": "Les protides."}, {"id": "C", "text": "Les lipides."}, {"id": "D", "text": "Les glucides, les protides, les lipides."}]'::jsonb, ARRAY['D']::text[], 'العائلات الثلاث من المغذيات الطاقية قابلة للتعبئة. السكريات والدهون توفران معظم الطاقة؛ والبروتينات تتدخل خاصة في الجهود الطويلة أو في حالة النقص، لكنها تدخل في الحصيلة الطاقية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q12', 'exam_eps_2017_lycee', 12, 'التربية البدنية والرياضية', 'L''évaluation des connaissances comportementales adoptée en sports collectifs dans Les Orientations pédagogiques 2007 :', false, '[{"id": "A", "text": "3 points en 1er année, 4 points en 2eme année et 5 points en 3eme année collégiale"}, {"id": "B", "text": "5 points en 1er année, 4 points en 2eme année et 3 points en 3eme année collégiale"}, {"id": "C", "text": "4 points en 1er année, 5 points en 2eme année et 3 points en 3eme année collégiale"}, {"id": "D", "text": "3 points en 1er année, 5 points en 2eme année et 4 points en 3eme année collégiale"}]'::jsonb, ARRAY['A']::text[], 'أ هو الجواب الأقوى دفاعاً، ويبقى للتأكد من الشبكة الرسمية للتوجيهات التربوية: حصة المعارف السلوكية تتزايد بانتظام مع المستوى الدراسي، كما حصة المعارف الإجرائية (انظر س53). لاحظ أن صياغة السؤال تربط توجيهات 2007 بسنوات إعدادية، مع أن توجيهات 2007 تخص التأهيلي وتوجيهات 2009 تخص الإعدادي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابة مرجّحة (الملاحظة 6)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q13', 'exam_eps_2017_lycee', 13, 'التربية البدنية والرياضية', 'En triple saut, un essai est considéré comme nul :', false, '[{"id": "A", "text": "Lorsque l''athlète touche le sol avec la jambe libre."}, {"id": "B", "text": "Lorsque l''athlète retombe sur le pied avec lequel il a pris son appel."}, {"id": "C", "text": "Lorsque l''athlète reprend avec l''autre pied à partir duquel il exécutera le 3e saut."}, {"id": "D", "text": "Lorsque l''athlète retombe dans la fosse avec les mains en arrière."}]'::jsonb, ARRAY['A']::text[], 'السؤال معيب: لا يوجد بديل يصف محاولة ملغاة. قاعدة IAAF رقم 186.2، المعمول بها في دورة يونيو 2017 والتي أصبحت القاعدة التقنية 31.2 في World Athletics، تنص على أن لمس الأرض بالرجل «النائمة» أثناء المحاولة ليس خطأ. أما ب وج فيصفان التسلسل الإلزامي للوثب الثلاثي (وثبة بالرجل نفسها، ثم خطوة بالرجل الأخرى، ثم قفزة)، ود ليست خطأ لأن القياس يبدأ من أقرب أثر (القاعدة التقنية 29.9). يُحتفَظ بأ كجواب متوقَّع من الموضوع، مع أنه يناقض القانون.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'سؤال معيب يخالف القانون (الملاحظة 7)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q14', 'exam_eps_2017_lycee', 14, 'التربية البدنية والرياضية', 'Le terme pédagogie est qualifié comme :', false, '[{"id": "A", "text": "Une pratique d''intervention cherchant à doter l''élève par un ensemble de connaissances."}, {"id": "B", "text": "Une pratique d''intervention cherchant à proposer des stratégies d''analyse aux élèves."}, {"id": "C", "text": "Une pratique d''intervention cherchant une influence près d''autrui dans une perspective de formation."}, {"id": "D", "text": "Une pratique d''intervention cherchant à développer le degré d''intelligence des élèves."}]'::jsonb, ARRAY['C']::text[], 'البيداغوجيا تُعرَّف بأنها ممارسة تدخّل تُمارس على الآخرين قصد التكوين. الصياغات الأخرى تختزل هذا الفعل في واحد من آثاره: نقل المعارف، أو تزويد التحليل بالأدوات، أو تطوير الذكاء.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q15', 'exam_eps_2017_lycee', 15, 'التربية البدنية والرياضية', 'Le test navette est spécifique à la qualité de :', false, '[{"id": "A", "text": "Vitesse"}, {"id": "B", "text": "Endurance"}, {"id": "C", "text": "Force"}, {"id": "D", "text": "Coordination"}]'::jsonb, ARRAY['B']::text[], 'اختبار الذهاب والإياب (Luc Léger) جري تصاعدي بمراحل يهدف إلى تقدير السرعة الهوائية القصوى (VMA) والاستهلاك الأقصى للأكسجين: إنه اختبار تحمل هوائي، حتى لو أن تغييرات الاتجاه تعطيه مظهر اختبار سرعة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q16', 'exam_eps_2017_lycee', 16, 'التربية البدنية والرياضية', 'En cas d''ex aequo au lancer de poids, le classement des athlètes sera effectué :', false, '[{"id": "A", "text": "En fonction du nombre d''essais effectués par chaque athlète."}, {"id": "B", "text": "En fonction de la 2e meilleure performance réalisée."}, {"id": "C", "text": "En fonction de la meilleure technique réalisée par chaque athlète."}, {"id": "D", "text": "En fonction du nombre d''essais valables pour chaque athlète."}]'::jsonb, ARRAY['B']::text[], 'في مسابقات الرمي والقفز الأفقي، يُفصَل التعادل على أساس ثاني أفضل أداء، ثم الثالث عند الحاجة. عدد المحاولات وجودة التقنية لا تدخلان في الترتيب.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q17', 'exam_eps_2017_lycee', 17, 'التربية البدنية والرياضية', 'Un ligament est la liaison entre :', false, '[{"id": "A", "text": "Deux tendons"}, {"id": "B", "text": "Deux muscles antagonistes"}, {"id": "C", "text": "Un muscle et une articulation"}, {"id": "D", "text": "Deux os"}]'::jsonb, ARRAY['D']::text[], 'الرباط يربط عظمين عند المفصل ويضمن ثباته السلبي. أما الوتر فهو الذي يربط العضلة بالعظم (انظر س31).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q18', 'exam_eps_2017_lycee', 18, 'التربية البدنية والرياضية', 'Lors de la saison sportive 2015-2016 de handball, les résultats du championnat et de la coupe du trône sont :', false, '[{"id": "A", "text": "Widad Smara a remporté le championnat et le Raja d''Agadir a remporté la coupe du trône"}, {"id": "B", "text": "Widad Smara a remporté le doublé"}, {"id": "C", "text": "Widad Smara a remporté la coupe du trône et le Raja d''Agadir a remporté le championnat"}, {"id": "D", "text": "Le Raja d''Agadir a remporté le doublé"}]'::jsonb, ARRAY['B']::text[], 'حقق وداد السمارة الثنائية في موسم 2015–2016: فاز بالبطولة الوطنية، وهي الثانية من ألقابه الثلاثة المتتالية بين 2015 و2017، وبكأس العرش في النهائي ضد الرجاء أكادير. هذا النوع من الأسئلة يتكرر في كل دورة: حصيلة الموسم الوطني المنصرم جزء من المراجعة. (معلومة واقعية منقولة من mesconcours — انظر الملاحظة 15.)', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q19', 'exam_eps_2017_lycee', 19, 'التربية البدنية والرياضية', 'L''Education Physique et Sportive est :', false, '[{"id": "A", "text": "Une pratique se basant sur la compétition et la performance sportive."}, {"id": "B", "text": "Une pratique d''intervention visant l''appropriation des fondements scientifiques du corps humain."}, {"id": "C", "text": "Une pratique d''intervention exerçant une influence sur les conduites motrices en fonction des normes éducatives."}, {"id": "D", "text": "Une pratique visant la détection des talents sportifs."}]'::jsonb, ARRAY['C']::text[], 'التربية البدنية والرياضية تؤثر في السلوكيات الحركية للتلميذ في ضوء غايات تربوية: وهذا ما يميزها عن رياضة المنافسة (أ)، وعن درس البيولوجيا (ب)، وعن كشف المواهب (د) الذي يخص الحركة الرياضية الفيدرالية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q20', 'exam_eps_2017_lycee', 20, 'التربية البدنية والرياضية', 'Les lipides constituent :', false, '[{"id": "A", "text": "Une petite réserve d''énergie potentielle de l''organisme."}, {"id": "B", "text": "Une réserve moyenne d''énergie potentielle de l''organisme."}, {"id": "C", "text": "Une grande réserve d''énergie potentielle de l''organisme."}, {"id": "D", "text": "Une réserve non limitée d''énergie potentielle de l''organisme."}]'::jsonb, ARRAY['C']::text[], 'الدهون هي أكبر خزان طاقي في الجسم، بفارق كبير عن الغليكوجين: عدة عشرات آلاف الكيلوكالوري عند شخص ذي بنية عادية. ومع ذلك يبقى الاحتياطي محدوداً، ما يستبعد د.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q21', 'exam_eps_2017_lycee', 21, 'التربية البدنية والرياضية', 'L''explosivité, concept lié à la notion de vitesse en volley Ball signifie le fait de :', false, '[{"id": "A", "text": "Maintenir le plus longtemps possible la vitesse maximale acquise"}, {"id": "B", "text": "Développer le maximum de force dans le temps le plus court"}, {"id": "C", "text": "Effectuer le maximum de sauts en cours de match"}, {"id": "D", "text": "Rester le plus de temps possible en l''aire lors d''un smatch"}]'::jsonb, ARRAY['B']::text[], 'الانفجارية هي القدرة على إنتاج أكبر قوة في أقصر وقت، وهذا بالضبط قيد الصد والضربة الساحقة (smash). أ يصف تحمل السرعة، وج كمية عمل، ود انطباعاً بصرياً بلا مضمون فيزيولوجي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q22', 'exam_eps_2017_lycee', 22, 'التربية البدنية والرياضية', 'L''échauffement doit :', false, '[{"id": "A", "text": "minimiser la sudation"}, {"id": "B", "text": "être en adéquation avec l''activité proposée"}, {"id": "C", "text": "Servir uniquement de mise en train"}, {"id": "D", "text": "Se placer dans la partie fondamentale de la séance"}]'::jsonb, ARRAY['B']::text[], 'بعد مرحلة عامة، يصبح الإحماء خاصاً: يستعيد حركات النشاط المقبل ومدياته وشداته. ويتموضع قبل الجزء الأساسي من الحصة، ما يستبعد د.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q23', 'exam_eps_2017_lycee', 23, 'التربية البدنية والرياضية', 'La pédagogie du contrat en EPS se base :', false, '[{"id": "A", "text": "Sur une stratégie d''enseignement visant la transmission des savoirs par l''enseignant et d''acquisition par l''élève."}, {"id": "B", "text": "Sur une stratégie d''enseignement dans laquelle l''enseignant propose des tâches permettant à l''élève de résoudre le problème."}, {"id": "C", "text": "Sur une stratégie sollicitant la négociation des objectifs et des contenus entre l''enseignant et l''élève."}, {"id": "D", "text": "Sur une stratégie de structuration cherchant la cohérence et l''adaptation des contenus au niveau des élèves."}]'::jsonb, ARRAY['C']::text[], 'العقد يقوم على التزام متفاوَض عليه: التلميذ يتبنى هدفاً ساهم في تحديده ومعايير نجاح يعرفها. أ يصف النموذج النقلي، وب بيداغوجيا وضعيات المشكلة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q24', 'exam_eps_2017_lycee', 24, 'التربية البدنية والرياضية', 'En basketball le fouetté sert à :', false, '[{"id": "A", "text": "tirer au panier en extension de manière puissante."}, {"id": "B", "text": "créer le mouvement du poignet qui donne au tir sa puissance et la rotation spécifique à la balle."}, {"id": "C", "text": "Passer la balle en lobe."}, {"id": "D", "text": "Feinter de passer à gauche puis donner à droite."}]'::jsonb, ARRAY['B']::text[], 'الضربة بالمعصم (fouetté) هي الفعل النهائي للمعصم والأصابع لحظة الإفلات: تضبط سرعة خروج الكرة وتطبع عليها الدوران الخلفي الذي يليّن ارتدادها على الحلقة. أما بقية التسديدة فتأتي من مدّ الساقين والجذع والذراع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q25', 'exam_eps_2017_lycee', 25, 'التربية البدنية والرياضية', 'Les facteurs dont dépendent les mécanismes de la force sont :', false, '[{"id": "A", "text": "Hormonaux, physiologiques dépendant des réserves énergétiques"}, {"id": "B", "text": "Morphologiques, héréditaires en relation avec l''âge"}, {"id": "C", "text": "Nerveux structuraux et en rapport avec l''étirement"}, {"id": "D", "text": "cardiovasculaire, physiologiques et climatiques"}]'::jsonb, ARRAY['C']::text[], 'القوة المنتَجة تعتمد على عوامل عصبية (تجنيد الوحدات الحركية، تواتر النبضات، التزامن)، وعوامل بنيوية (مساحة المقطع، نوع الألياف، ذراع الرافعة)، وحالة التمدد الأولية للعضلة، كما تصفها علاقة التوتر–الطول. أما الاحتياطات الطاقية (أ) فتحدّ مدة الجهد لا القوة القصوى لحركة قصيرة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q26', 'exam_eps_2017_lycee', 26, 'التربية البدنية والرياضية', 'L''entrainement technico-tactique en rugby est :', false, '[{"id": "A", "text": "De maitriser son évolution seul et/ou en groupe au cours d''un match"}, {"id": "B", "text": "D''exécuter seul des mouvements de grande amplitude avec le maximum d''aisance possible"}, {"id": "C", "text": "De réaliser un travail physique avec ballon"}, {"id": "D", "text": "D''exécuter un savoir faire technique en fonction d''une intention du joueur par rapport à un problème du jeu"}]'::jsonb, ARRAY['D']::text[], 'التدريب التقني-التكتيكي هو بالضبط ربط الاثنين: تقنية في خدمة نية لعب، في علاقة قوة معينة. ب يصف عملاً تقنياً على الفراغ، وج إعداداً بدنياً مدمجاً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q27', 'exam_eps_2017_lycee', 27, 'التربية البدنية والرياضية', 'Le rattrapé en lancer de javelot s''effectue :', false, '[{"id": "A", "text": "Lorsque l''athlète est en course d''élan."}, {"id": "B", "text": "Lorsque l''engin quitte la main de l''athlète."}, {"id": "C", "text": "Lorsque l''athlète effectue son double appui."}, {"id": "D", "text": "Lorsque l''athlète s''arrête complètement."}]'::jsonb, ARRAY['B']::text[], 'الاستدراك (rattrapé) هو فعل التوازن الذي يلي الإفلات مباشرة: تغيير القدم وخفض مركز الثقل لامتصاص السرعة المتبقية والبقاء داخل منطقة الرمي. فلا معنى له إلا بعد أن يغادر الجهاز اليد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q28', 'exam_eps_2017_lycee', 28, 'التربية البدنية والرياضية', 'Dans une attaque placée à 5 attaquants contre 4 défenseurs en handball, le principal indicateur d''une bonne exploitation du surnombre offensif se traduit dans la conclusion de l''attaque par :', false, '[{"id": "A", "text": "Un tir des 9 mètres par-dessus un défenseur"}, {"id": "B", "text": "Un tir en situation de 1 contre 0 à proximité des 6 m"}, {"id": "C", "text": "Un tir des 6 mètres après le débordement d''un défenseur"}, {"id": "D", "text": "Un tir systématique des ailes"}]'::jsonb, ARRAY['B']::text[], 'استغلال التفوق العددي يعني تمريره حتى الحصول على لاعب حر تماماً قرب منطقة التسجيل: فتُؤخَذ التسديدة دون معارضة، في وضعية 1 ضد 0. أما تسديدة 9م فوق مدافع (أ) أو تسديدة بعد مراوغة فردية (ج) فتعني أن التفوق الجماعي لم يُحوَّل إلى نتيجة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q29', 'exam_eps_2017_lycee', 29, 'التربية البدنية والرياضية', 'Parmi les facteurs de la coordination on peut relever les combinaisons suivantes :', false, '[{"id": "A", "text": "Orientation, différentiation, répétition, équilibre, relance"}, {"id": "B", "text": "Rythme, équilibre, orientation, réaction, détente"}, {"id": "C", "text": "Rythme, équilibre, différentiation, orientation, réaction"}, {"id": "D", "text": "Orientation, rotation, detente, rythme, endurance"}]'::jsonb, ARRAY['C']::text[], 'القدرات التنسيقية التي أحصاها Hirtz وBlume هي: التوجيه، التمييز، رد الفعل، الإيقاع والتوازن، ويُضاف إليها التكيف. أما الاسترخاء (détente) والتحمل والتكرار والدوران فليست عوامل تنسيق بل صفات بدنية أو أفعال.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q30', 'exam_eps_2017_lycee', 30, 'التربية البدنية والرياضية', 'La didactique est qualifiée comme :', false, '[{"id": "A", "text": "Une étude épistémologique des contenus d''enseignement-apprentissage."}, {"id": "B", "text": "Une étude des processus de transmission et d''acquisition."}, {"id": "C", "text": "Une démarche visant à proposer des finalités éducatives"}, {"id": "D", "text": "Une démarche permettant l''évaluation des contenus d''enseignement-apprentissage."}]'::jsonb, ARRAY['A']::text[], 'ما يميّز الديداكتيك عن البيداغوجيا (انظر س14) هو موضوعها: المحتوى، طبيعته، أصله العلمي أو الاجتماعي، وتحويله إلى موضوع قابل للتدريس. أما ب فيستعيد صياغة Chevallard الواسعة حول عمليات النقل والاكتساب ويبقى قابلاً للدفاع عنه؛ فالسؤال غير مميِّز.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'سؤال غير مميِّز (الملاحظة 8)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q31', 'exam_eps_2017_lycee', 31, 'التربية البدنية والرياضية', 'Un tendon est la liaison entre :', false, '[{"id": "A", "text": "Deux os"}, {"id": "B", "text": "Deux muscles"}, {"id": "C", "text": "Un os et un muscle"}, {"id": "D", "text": "Deux ligaments"}]'::jsonb, ARRAY['C']::text[], 'الوتر يطيل العضلة وينغرس في العظم: ينقل قوة الانقباض إلى الرافعة العظمية. أما الرباط بين عظم وعظم فيضمنه الرباط (انظر س17).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q32', 'exam_eps_2017_lycee', 32, 'التربية البدنية والرياضية', 'Dans un match scolaire de basketball, l''équipe en attaque mène de 3 points alors qu''il reste 24 secondes à jouer. L''enseignant doit donner à ses joueurs la consigne :', false, '[{"id": "A", "text": "Jouez le 1 contre 1 pour perdre le temps"}, {"id": "B", "text": "Provoquez une faute du défenseur"}, {"id": "C", "text": "Cherchez une situation de tir à distance"}, {"id": "D", "text": "Circulez la balle en jouant en mouvement"}]'::jsonb, ARRAY['D']::text[], 'الحفاظ على الكرة بتدويرها مع لاعبين في حركة هو التوجيه الوحيد الفعّال والتربوي في آن: يستهلك الوقت دون فقدان الكرة. اللعب الفردي لإضاعة الوقت واستفزاز الخطأ من قبيل اللعب غير الرياضي، والتسديد من بعيد يعيد الكرة إلى الخصم.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q33', 'exam_eps_2017_lycee', 33, 'التربية البدنية والرياضية', 'La lecture de la mesure d''un lancer de disque homologué se fait :', false, '[{"id": "A", "text": "Sur le centre de l''aire de lancer"}, {"id": "B", "text": "Sur le bord externe du butoir"}, {"id": "C", "text": "Sur le bord interne du butoir"}, {"id": "D", "text": "A l''endroit du premier impact du disque"}]'::jsonb, ARRAY['C']::text[], 'السؤال معيب: القرص لا «butoir» له؛ فلوح التوقف يوجد في منطقة رمي الثقل (القاعدة التقنية 33.2). أما القاعدة التقنية 32.20.1 في World Athletics، وكانت القاعدة 187.20 a) في IAAF سنة 2017، فتقيس الرمية من أقرب علامة يتركها القرص إلى الحافة الداخلية للدائرة، على خط يمر بالمركز. يبقى ج البديل الوحيد القابل للدفاع عنه إذا قُرئ «bord interne du butoir» بمعنى «bord interne du cercle». أما مركز المنطقة (أ) والحافة الخارجية (ب) فلا يُستعملان أبداً كمرجع.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'سؤال معيب في الصياغة (الملاحظة 9)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q34', 'exam_eps_2017_lycee', 34, 'التربية البدنية والرياضية', 'La relance en hand Ball signifie :', false, '[{"id": "A", "text": "L''action de l''arbitre de donner le coup d''envoi"}, {"id": "B", "text": "L''action du gardien de but consistant à transmettre la balle à ses partenaires suite à une récupération."}, {"id": "C", "text": "L''action du joueur qui rentre dans le terrain après une expulsion de deux minutes."}, {"id": "D", "text": "L''action d''un joueur faisant la remise en jeu d''une touche."}]'::jsonb, ARRAY['B']::text[], 'إعادة الانطلاق هي أول فعل في مرحلة الهجوم المعاكس: الحارس الذي أوقف الكرة أو استرجعها يمرّرها فوراً إلى زميل منطلق. البدائل الأخرى تصف ركلة البداية، والعودة بعد الإقصاء، ورمية التماس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q35', 'exam_eps_2017_lycee', 35, 'التربية البدنية والرياضية', 'La pédagogie de situations en EPS est :', false, '[{"id": "A", "text": "Une stratégie caractérisée par une approche techniciste permettant à l''élève d''améliorer sa performance."}, {"id": "B", "text": "Une stratégie caractérisée par l''utilisation des types de tâches enseignées qui permettent à l''élève d''élaborer des buts et des projets personnels."}, {"id": "C", "text": "Une stratégie caractérisée par des exercices visant le développement des qualités physiques, techniques et psychologiques de l''élève."}, {"id": "D", "text": "Une stratégie caractérisée par des séquences de pratiques d''intensités fortes et répétés."}]'::jsonb, ARRAY['B']::text[], 'بيداغوجيا الوضعيات تقترح أجهزة ذات معنى يبني فيها التلميذ هدفه ومشروع فعله الخاص. أ يصف المقاربة التقنية، وج ود نموذجين متمركزين على تطوير الصفات البدنية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q36', 'exam_eps_2017_lycee', 36, 'التربية البدنية والرياضية', 'L''écran en basketball consiste à :', false, '[{"id": "A", "text": "pousser l''adversaire pour le mettre en dehors de la raquette."}, {"id": "B", "text": "Se placer devant le défenseur du porteur de balle pour faciliter le tir."}, {"id": "C", "text": "stopper le tireur adverse pour l''empêcher de marquer."}, {"id": "D", "text": "contrer la pénétration du pivot adverse dans la raquette."}]'::jsonb, ARRAY['B']::text[], 'الحاجز (écran) فعل قانوني لمهاجم بلا كرة: يتموضع ساكناً في مسار المدافع لتحرير زميل. الدفع (أ) خطأ، وج ود يصفان فعلين دفاعيين.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q37', 'exam_eps_2017_lycee', 37, 'التربية البدنية والرياضية', 'La transposition didactique en EPS désigne :', false, '[{"id": "A", "text": "Une démarche qui renvoie à l''adaptation du contenu afin de le rendre accessible aux apprenants."}, {"id": "B", "text": "Une démarche qui renvoie à la mise en place des programmes finalisés pour chaque niveau."}, {"id": "C", "text": "Une démarche qui renvoie à l''élaboration des objectifs et des situations d''apprentissage pour tel ou tel niveau."}, {"id": "D", "text": "Une démarche qui renvoie à la mise en place des outils didactiques nécessaires pour une séquence d''apprentissage."}]'::jsonb, ARRAY['A']::text[], 'النقل الديداكتيكي هو انتقال المعرفة المرجعية، وهنا الممارسة الاجتماعية الرياضية، إلى المعرفة المدرَّسة فعلاً لتلاميذ معينين. البدائل الأخرى تصف عمليات تخطيط تنتج عنه، لكنها لا تعرّفه.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q38', 'exam_eps_2017_lycee', 38, 'التربية البدنية والرياضية', 'Un test de détente est spécifique à la qualité de :', false, '[{"id": "A", "text": "Souplesse"}, {"id": "B", "text": "Coordination"}, {"id": "C", "text": "Force"}, {"id": "D", "text": "Vitesse"}]'::jsonb, ARRAY['C']::text[], 'اختبار الارتداد (détente) يقيس الارتفاع المحقَّق أثناء الدفع: إنه اختبار قوة انفجارية للطرفين السفليين، فيُرتبط إذن بصفة القوة. والحركة تتطلب تنسيقاً بالطبع، لكن هذا ليس ما يقيسه الاختبار.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q39', 'exam_eps_2017_lycee', 39, 'التربية البدنية والرياضية', 'En hand Ball face à une défense de zone il faut privilégier :', false, '[{"id": "A", "text": "La contre-attaque rapide pour accéder à la zone de marque adverse."}, {"id": "B", "text": "Les tirs en extension pour surpasser l''adversaire."}, {"id": "C", "text": "La circulation rapide et large du ballon."}, {"id": "D", "text": "Les combinaisons à deux."}]'::jsonb, ARRAY['C']::text[], 'دفاع المنطقة يتحرك أبطأ من الكرة: جعله ينزلق من جهة إلى أخرى بتمريرات سريعة وواسعة يخلق الفوارق والفواصل. أما الهجوم المعاكس (أ) فيفترض أن الدفاع لم يتموضع بعد.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q40', 'exam_eps_2017_lycee', 40, 'التربية البدنية والرياضية', 'En volleyball, l''équipe a droit :', false, '[{"id": "A", "text": "A deux touches de balle"}, {"id": "B", "text": "A trois passes"}, {"id": "C", "text": "A deux passes"}, {"id": "D", "text": "A une touche de balle plus deux passes"}]'::jsonb, ARRAY['B']::text[], 'القواعد الرسمية للاتحاد الدولي للكرة الطائرة (FIVB، القاعدة 9.1) تمنح الفريق ثلاث لمسات كحد أقصى، إضافة إلى الصد، لإرجاع الكرة. السؤال سيئ البناء: القانون يتحدث عن لمسات وعن حد أقصى، والبديل ب (ثلاث تمريرات) والبديل د (لمسة + تمريرتان) يصفان كلاهما ثلاث لمسات، بحيث يمكن اعتبار د صحيحاً أيضاً. والصياغة السليمة للقاعدة نفسها ترد في س4 من دورة يناير 2018.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'بديلان يصفان الشيء نفسه (الملاحظة 10)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q41', 'exam_eps_2017_lycee', 41, 'التربية البدنية والرياضية', 'L''ATP est synthétisée (fabriquée) essentiellement grâce à :', false, '[{"id": "A", "text": "Six voies énergétiques"}, {"id": "B", "text": "Trois voies énergétiques"}, {"id": "C", "text": "Deux voies énergétiques"}, {"id": "D", "text": "Quatre voies énergétiques"}]'::jsonb, ARRAY['B']::text[], 'ثلاث مسالك تعيد تركيب ATP: اللاهوائي غير اللبني (الفوسفوكرياتين)، واللاهوائي اللبني (تحلل الغلوكوز)، والهوائي (الأكسدة في الميتوكوندريا). وهي لا تتعاقب بل تتداخل، ويغلب كل منها حسب شدة الجهد ومدته.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q42', 'exam_eps_2017_lycee', 42, 'التربية البدنية والرياضية', 'Le chemin de lancement en lancer de poids est :', false, '[{"id": "A", "text": "Le trajet décrit par l''engin au moment ou celui-ci quitte la main du lanceur"}, {"id": "B", "text": "Le trajet décrit par l''engin en phase d''élan."}, {"id": "C", "text": "L''atteinte de la forme parabolique au cours de l''envol."}, {"id": "D", "text": "L''orientation de l''engin et sa vitesse d''envol"}]'::jsonb, ARRAY['B']::text[], 'مسار الإطلاق هو المسافة التي يُسرَّع عليها الجهاز، من وضعية الانطلاق إلى الإفلات. وكلما كان أطول ومستقيماً، كانت سرعة الخروج أعلى. أما ج فيصف المسار بعد الإفلات، أي خارج فعل الرامي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q43', 'exam_eps_2017_lycee', 43, 'التربية البدنية والرياضية', 'Lors d''un sprint sur une distance de 40 mètres, l''énergie est fournie par :', false, '[{"id": "A", "text": "La voie glycolytique"}, {"id": "B", "text": "La voie oxydative"}, {"id": "C", "text": "La voie ATP-CP"}, {"id": "D", "text": "La voie anaérobie lactique"}]'::jsonb, ARRAY['C']::text[], 'عدو 40م يدوم نحو 5 إلى 6 ثوانٍ: يُعاد تكوين ATP بالفوسفوكرياتين، أي المسلك اللاهوائي غير اللبني. ويصبح تحلل الغلوكوز اللاهوائي غالباً بعد نحو خمس عشرة ثانية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q44', 'exam_eps_2017_lycee', 44, 'التربية البدنية والرياضية', 'L''approche par compétence en EPS vise surtout :', false, '[{"id": "A", "text": "La clarification et la simplification des contenus d''apprentissage."}, {"id": "B", "text": "La fixation de la part de l''enseignant d''objectifs clairs et atteignables par les élèves."}, {"id": "C", "text": "La mobilisation et l''intégration des ressources de l''élève."}, {"id": "D", "text": "L''utilisation de méthodes pédagogiques efficaces."}]'::jsonb, ARRAY['C']::text[], 'أن تكون كفؤاً يعني تعبئة مواردك ودمجها لمعالجة عائلة من الوضعيات. أما ب فيصف بيداغوجيا الأهداف، التي تتجاوزها المقاربة بالكفايات بالضبط برفضها تقسيم التعلم إلى أهداف دقيقة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q45', 'exam_eps_2017_lycee', 45, 'التربية البدنية والرياضية', 'La vitesse en saut en longueur est :', false, '[{"id": "A", "text": "Toujours maximale"}, {"id": "B", "text": "Toujours en amplitude"}, {"id": "C", "text": "Progressivement accélérée"}, {"id": "D", "text": "Toujours en fréquence"}]'::jsonb, ARRAY['C']::text[], 'جري الاقتراب متسارع تدريجياً للوصول إلى سرعة مضبوطة في الارتكازات الأخيرة: سرعة قصوى منذ البداية تمنع تهيئة الدفع وتكلّف أكثر مما تعطي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q46', 'exam_eps_2017_lycee', 46, 'التربية البدنية والرياضية', 'Une tâche d''apprentissage respecte la logique interne si et seulement si :', false, '[{"id": "A", "text": "Elle tient compte des caractéristiques pertinentes de l''APS"}, {"id": "B", "text": "Elle est d''une difficulté optimale"}, {"id": "C", "text": "Elle favorise la réussite des filles et des garçons"}, {"id": "D", "text": "Elle est source de plaisir et de motivation"}]'::jsonb, ARRAY['A']::text[], 'المنطق الداخلي لنشاط بدني ورياضي هو منظومة القيود التي تعرّفه: العلاقة بالفضاء والزمن والشركاء والخصوم واللايقين. والمهمة تحترمه عندما تحافظ على هذه القيود. أما الصعوبة المثلى والاختلاط والمتعة فمعايير جودة أخرى، لكنها لا تتعلق بالمنطق الداخلي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q47', 'exam_eps_2017_lycee', 47, 'التربية البدنية والرياضية', 'Dans le modèle pédagogique transmissif en EPS l''enseignant :', false, '[{"id": "A", "text": "Reconnait l''autonomie de l''élève."}, {"id": "B", "text": "Prend en charge la totalité des opérations à effectuer."}, {"id": "C", "text": "Reconnait la responsabilité des élèves dans leur propre éducation."}, {"id": "D", "text": "Délègue aux élèves le choix de l''organisation et la gestion des activités."}]'::jsonb, ARRAY['B']::text[], 'في النموذج النقلي، يقرر الأستاذ ويعرض وينظم ويصحح، والتلميذ ينفذ. أما أ وج ود فتصف نماذج تملّكية أو ذاتية التدبير، حيث يعود جزء من القرار إلى التلميذ.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q48', 'exam_eps_2017_lycee', 48, 'التربية البدنية والرياضية', 'En saut en hauteur et en cas d''égalité le classement prend en compte en premier :', false, '[{"id": "A", "text": "Le nombre de saut effectué"}, {"id": "B", "text": "La meilleure seconde performance"}, {"id": "C", "text": "Le nombre d''essais a la dernière hauteur"}, {"id": "D", "text": "Le nombre d''essais durant toute l''épreuve"}]'::jsonb, ARRAY['C']::text[], 'أول معيار للفصل هو عدد المحاولات الفاشلة في الارتفاع الذي حدث فيه التعادل؛ وبعد ذلك فقط يُحصى مجموع الإخفاقات في المسابقة كلها (د). أما ثاني أفضل أداء (ب) فيفصل في الرمي والقفز الأفقي، لا في الوثب العالي.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q49', 'exam_eps_2017_lycee', 49, 'التربية البدنية والرياضية', 'Le contournement en hand Ball signifie :', false, '[{"id": "A", "text": "Circuler la balle en rotation pour tromper l''adversaire."}, {"id": "B", "text": "Jouer dans un espace non protégé par le bloc défensif adverse."}, {"id": "C", "text": "Mettre en oeuvre une attaque rapide pour surprendre l''adversaire."}, {"id": "D", "text": "Juxtaposition des actions individuelles face à une défense étagée."}]'::jsonb, ARRAY['B']::text[], 'الالتفاف (contournement) هو الهجوم من خارج الجهاز الدفاعي، في الفضاءات التي لا تغطيها الكتلة، بدل محاولة اختراقها. أما ج فيصف الهجوم المعاكس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q50', 'exam_eps_2017_lycee', 50, 'التربية البدنية والرياضية', 'En course de haies l''attaque de la première haie se fait :', false, '[{"id": "A", "text": "A proximité de la haie."}, {"id": "B", "text": "Loin de la haie."}, {"id": "C", "text": "A 30cm de la haie."}, {"id": "D", "text": "Tout près de la haie."}]'::jsonb, ARRAY['B']::text[], 'يُهاجَم الحاجز من بعيد ليبقى مسار مركز الثقل مشدوداً ومنخفضاً: فيصبح العبور خطوة ممدودة لا قفزة. أما الهجوم القريب جداً فيفرض قفزاً عالياً ويكسر السرعة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q51', 'exam_eps_2017_lycee', 51, 'التربية البدنية والرياضية', 'L''extension de la hanche est essentiellement due à la mobilisation :', false, '[{"id": "A", "text": "Des quadriceps et mollets"}, {"id": "B", "text": "Des abdominaux"}, {"id": "C", "text": "Des ischio jambiers et le grand fessier"}, {"id": "D", "text": "Des pectoraux"}]'::jsonb, ARRAY['C']::text[], 'مدّ الورك تنتجه العضلة الألوية الكبرى والعضلات الخلفية للفخذ. أما العضلة رباعية الرؤوس فتمدّ الركبة لا الورك، باستثناء العضلة المستقيمة الفخذية التي هي بالعكس مثنية للورك.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q52', 'exam_eps_2017_lycee', 52, 'التربية البدنية والرياضية', 'L''appellation qui relève surtout de la terminologie du basketball est :', false, '[{"id": "A", "text": "le Kung Fu"}, {"id": "B", "text": "le trapèze"}, {"id": "C", "text": "l''aiguillage"}, {"id": "D", "text": "le lifté."}]'::jsonb, ARRAY['C']::text[], 'التوجيه (aiguillage) هو تبديل الخصم بين مدافعين بعد حاجز. أما الكونغ فو فهو استرجاع الكرة في الكرة الطائرة، والترابيز (trapèze) جهاز جمباز، والـ«lifté» تأثير يُعطى للكرة في التنس.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q53', 'exam_eps_2017_lycee', 53, 'التربية البدنية والرياضية', 'L''évaluation des connaissances procédurales adoptée en sports collectifs dans Les Orientations pédagogiques 2009 attribue :', false, '[{"id": "A", "text": "12 points en 1er année, 13 points en 2eme année et 14 points en 3eme année collégiale"}, {"id": "B", "text": "13 points en 1er année, 12 points en 2eme année et 14 points en 3eme année collégiale"}, {"id": "C", "text": "14 points en 1er année, 13 points en 2eme année et 12 points en 3eme année collégiale"}, {"id": "D", "text": "14pts en 1er, 12pts en 2eme et 13pts en 3eme année collégiale"}]'::jsonb, ARRAY['A']::text[], 'أ هو الجواب الأقوى دفاعاً، ويبقى للتأكد من الشبكة الرسمية: حصة المعارف الإجرائية تتزايد مع المستوى، من السنة الأولى إلى الثالثة إعدادي، بينما تتناقص حصة القدرات والمهارات الحركية بنفس القدر (8 ثم 7 ثم 6 نقاط).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابة مرجّحة (الملاحظة 11)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q54', 'exam_eps_2017_lycee', 54, 'التربية البدنية والرياضية', 'Dans l''épreuve du 1500m on se retrouve dans :', false, '[{"id": "A", "text": "La filière énergétique anaérobie alactique."}, {"id": "B", "text": "La filière énergétique anaérobie lactique."}, {"id": "C", "text": "La filière énergétique aérobie."}, {"id": "D", "text": "La filière énergétique aérobie lactique."}]'::jsonb, ARRAY['C']::text[], 'سباق 1500م يُجرى في ثلاث إلى خمس دقائق: المساهمة الهوائية فيه غالبة بوضوح، نحو 80٪، بشدة قريبة من القدرة الهوائية القصوى. وتبقى الحصة اللبنية مهمة لكنها أقلية، وعبارة «aérobie lactique» (د) لا تقابل أي مسلك.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q55', 'exam_eps_2017_lycee', 55, 'التربية البدنية والرياضية', 'La méthode active en EPS repose sur :', false, '[{"id": "A", "text": "La reproduction active d''un model exposé."}, {"id": "B", "text": "L''apprentissage actif des gestes techniques suivant la méthode analytique."}, {"id": "C", "text": "La construction des réponses par essais et erreurs."}, {"id": "D", "text": "L''utilisation de stimuli externes."}]'::jsonb, ARRAY['C']::text[], 'الطريقة النشطة تضع التلميذ في وضعية بحث: يجرّب ويلاحظ ويعدّل ويبني هو نفسه الجواب. أما أ فيعود إلى بيداغوجيا النموذج، وب إلى الطريقة التحليلية، ود إلى التكييف (conditionnement).', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q56', 'exam_eps_2017_lycee', 56, 'التربية البدنية والرياضية', 'Les ischio jambiers se composent de :', false, '[{"id": "A", "text": "Un seul muscle"}, {"id": "B", "text": "Quatre muscles"}, {"id": "C", "text": "Trois muscles"}, {"id": "D", "text": "Deux muscles"}]'::jsonb, ARRAY['C']::text[], 'مجموعة العضلات الخلفية للفخذ تضم العضلة ذات الرأسين الفخذية والعضلة نصف الوترية والعضلة نصف الغشائية، أي ثلاث عضلات. والعضلة ذات الرأسين لها رأسان، ما يفسر أن بعض الكتب تحصي أربعة أجسام عضلية.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q57', 'exam_eps_2017_lycee', 57, 'التربية البدنية والرياضية', 'La tâche d''apprentissage assure un engagement moteur favorable à l''apprentissage :', false, '[{"id": "A", "text": "Si l''intensité de l''effort est supra maximale"}, {"id": "B", "text": "Si la quantité de travail permet le développement des différentes qualités physiques"}, {"id": "C", "text": "Si tous les élèves de la classe ont l''occasion de se mouvoir sans distinction de niveau"}, {"id": "D", "text": "Si les répétitions réalisées sont à la fois suffisantes et répondent à l''objectif visé"}]'::jsonb, ARRAY['D']::text[], 'الانخراط الحركي لا يفيد إلا إذا كان موجَّهاً: يلزم عدد كافٍ من التكرارات، وتكرارات ملائمة للهدف. أما التحرك العام (ج) أو مجرد حجم العمل (ب) فلا ينتجان تعلماً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q58', 'exam_eps_2017_lycee', 58, 'التربية البدنية والرياضية', 'La pédagogie traditionnelle décrit :', false, '[{"id": "A", "text": "Un ensemble de pratiques pédagogiques se basant sur le travail et l''effort de l''élève."}, {"id": "B", "text": "Un ensemble de pratiques pédagogiques caractérisées par une centration sur l''élève."}, {"id": "C", "text": "Un ensemble de pratiques pédagogiques basées sur l''instruction contraignante et raisonnée de l''élève."}, {"id": "D", "text": "Un ensemble de pratiques d''apprentissage sous la supervision du maitre."}]'::jsonb, ARRAY['D']::text[], 'البيداغوجيا التقليدية متمركزة حول المعلم: المعلم يملك المعرفة ويحدد النموذج ويقود التعلم. أما ب فيصف عكس ذلك تماماً (التربية الجديدة). ويبقى ج، الذي يشدد على التعليم القسري، وصفاً مقبولاً للتيار نفسه: فالسؤال غير مميِّز تماماً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'سؤال غير مميِّز تماماً (الملاحظة 12)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q59', 'exam_eps_2017_lycee', 59, 'التربية البدنية والرياضية', 'En hand Ball face à une défense homme à homme il faut privilégier :', false, '[{"id": "A", "text": "Une montée offensive rapide"}, {"id": "B", "text": "Des débordements de tous les côtés."}, {"id": "C", "text": "Une circulation des joueurs."}, {"id": "D", "text": "La création du surnombre pour surprendre l''adversaire."}]'::jsonb, ARRAY['C']::text[], 'أمام دفاع فردي، يجب أن يتحرك اللاعبون: التقاطعات والحواجز والتبديلات تسحب المدافعين خارج مناطقهم وتخلق الفواصل. وهذا نظير س39، حيث تُحارَب دفاع المنطقة بتدوير الكرة. أما المراوغة الفردية (ب) فتبقى جواباً ممكناً لكن ظرفياً.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابة مرجّحة (الملاحظة 13)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q60', 'exam_eps_2017_lycee', 60, 'التربية البدنية والرياضية', 'Le psoas iliaque est un muscle fléchisseur :', false, '[{"id": "A", "text": "De la hanche"}, {"id": "B", "text": "De l''épaule"}, {"id": "C", "text": "Du coude"}, {"id": "D", "text": "Du genou"}]'::jsonb, ARRAY['A']::text[], 'العضلة القطنية الحرقفية، الممتدة من العمود القطني والحفرة الحرقفية إلى المدور الصغير، هي المثنية الرئيسية للورك. وهي أيضاً العضلة الأكثر استدعاءً في رفع الركبة في العدو والقفز.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q61', 'exam_eps_2017_lycee', 61, 'كرة السلة — التقييم التكويني والتعلم', 'هل جلسة التقييم التكويني هذه ضرورية؟

الوضعية: بعد إنجاز التسلسلة الأولى من دورة كرة السلة، أجرى أستاذ تقييماً تكوينياً، أسفر عن الملاحظات التالية بخصوص أداء تلاميذ قسم موزعين على أربعة فرق (انظر جدول البيانات أعلاه): - الفريق أ (5 ذكور): مؤشر التقدم 8 على 10 (80٪)؛ مؤشر الفعالية 4 على 8 (50٪). - الفريق ب (5 ذكور): مؤشر التقدم 7 على 10 (70٪)؛ مؤشر الفعالية 4 على 7 (57٪). - الفريق ج (ذكران و3 إناث): مؤشر التقدم 4 على 10 (40٪)؛ مؤشر الفعالية 1 على 4 (25٪). - الفريق د (5 إناث): مؤشر التقدم 3 على 10 (30٪)؛ مؤشر الفعالية 1 على 3 (33٪). ### س1 — هل جلسة التقييم التكويني هذه ضرورية؟ (6 نقاط) **الجواب النموذجي المقترح: نعم، ضرورية، لثلاثة أسباب مرتبطة بوظيفتها نفسها.** 1. **التقييم التكويني داخلي في سيرورة التعليم والتعلّم:** يتدخل أثناء الدورة لا في نهايتها، وهدفه ليس التنقيط بل الإخبار. وبدونه، لكان الأستاذ سيقود التسلسلة الثانية على تخطيط وُضع مسبقاً، دون أن يعرف ما بناه التلاميذ فعلاً أثناء الأولى. 2. **ينتج مؤشرات موضوعية قابلة للاستغلال.** وهنا مؤشران مقيسان على اللعب الحقيقي: مؤشر التقدم (تسديدات مُحاوَلة على كرات ملعوبة) الذي يخبر عن قدرة الفريق على إيصال الكرة إلى وضعية تسديد، ومؤشر الفعالية (تسديدات ناجحة على تسديدات مُحاوَلة) الذي يخبر عن ملاءمة اختيار التسديد وعن التحكم التقني. وتقاطع المؤشرين يسمح بتحديد موقع كل فريق واستنتاج العائق الغالب. 3. **هو شرط التنظيم والتمايز.** يسمح بتكوين مجموعات الحاجة، وترتيب أهداف التسلسلة التالية، واختيار محتويات تعليمية ملائمة لكل مستوى، وإعطاء التلاميذ تغذية راجعة عن تقدمهم، ما يدعم دافعيتهم ويجعلهم فاعلين في تعلمهم. فهي إذن ليست وقتاً مأخوذاً من التعلم: بل هي ما يجعل بقية الدورة ملائمة. **ما يُنتظَر في الجواب:** تبرير الوظيفة التنظيمية للتقييم التكويني، مع الاستناد صراحة إلى مؤشري الجدول، لا إلى تعريف عام. ### س2 — ما تفسيراتكم لبيانات الملاحظة هذه؟ (10 نقاط) **الجواب النموذجي المقترح — قراءة متقاطعة للمؤشرين، فريقاً فريقاً:** - **الفريقان أ وب:** تقدم مرتفع (80٪ و70٪) وفعالية مقبولة (50٪ و57٪). هذان الفريقان يعرفان الحفاظ على الكرة وإيصالها والوصول إلى منطقة التسجيل؛ ويخلقان وضعيات تسديد. فالعائق لم يعد الوصول إلى الهدف بل اختيار التسديد وجودته: ما يقرب من نصف التسديدات المُحاوَلة يفشل، ما يشير إلى تسديدات مأخوذة في ظروف سيئة، في اختلال توازن، أو تحت ضغط، أو من مسافة مفرطة. - **الفريق ج:** تقدم ضعيف (40٪) وفعالية ضعيفة جداً (25٪). الكرة نادراً ما تصل إلى وضعية تسديد، وعندما تصل يفشل الإنهاء دائماً تقريباً. المشكلة مزدوجة، وتتعلق أولاً بالحفاظ على الكرة وتقدمها، أي بالتموضع دون كرة وجودة التمريرات. - **الفريق د:** أضعف تقدم (30٪) لكن فعالية (33٪) أعلى من فعالية الفريق ج. فالتسديدات القليلة المُحاوَلة تُؤخَذ إذن في ظروف أنسب: هؤلاء التلميذات لا يسددن إلا عندما يكنّ متأكدات، ما يترجم موقفاً حذراً، لكنه يدل قبل كل شيء على عجز عن إيصال الكرة إلى الهدف. **التفسير الديداكتيكي.** القسم يضم مستويين متميزين بوضوح: مجموعة أ وب، متمكنة، مشكلتها الإنهاء؛ ومجموعة ج ود، مبتدئة، مشكلتها الحفاظ على الكرة والتقدم الجماعي بها. والملاحظة الثانية تتعلق بالاختلاط: الفريقان الأقل أداءً هما اللذان يضمان إناثاً، ما يدعو إلى التساؤل عن تركيبة الفرق وعن زمن اللعب الفعلي الممنوح لكل تلميذة، بدل الاستنتاج بوجود فرق في الموارد. وأخيراً، مؤشر تقدم مرتفع مصحوب بفعالية متوسطة يبين أن كثرة التسديدات لا تعني علاقة جيدة بالتسديد: فتقاطع المؤشرين، لا كل منهما على حدة، هو ما يصنع التشخيص. **ما يُنتظَر في الجواب:** تفسير متقاطع للمؤشرين، فريقاً فريقاً، ينتهي إلى تحديد مجموعتي حاجة وإلى فرضية حول الاختلاط. ### س3 — بالنظر إلى مجموعات المستوى الملاحَظة في هذا القسم، ما أهداف التعلّم ومحتويات التعليم التي يجب على الأستاذ التشديد عليها أثناء التسلسلة الثانية من الدورة؟ حدّدوا هذه المحتويات بالنسبة لحامل الكرة وغير حامل الكرة والفريق. (16 نقطة) **الجواب النموذجي المقترح:** **أهداف التسلسلة الثانية:** - **للمجموعة المبتدئة (الفريقان ج ود):** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف للوصول إلى وضعية تسديد ملائمة. - **للمجموعة المتمكنة (الفريقان أ وب):** اختيار التسديد وإنجاحه، أي أخذ التسديدة في ظروف ملائمة بدل زيادة عدد التسديدات. **محتويات التعليم بالنسبة لحامل الكرة:** - **المستوى المبتدئ:** إيقاف الكرة ورفع الرأس قبل القرار؛ توجيه الارتكازات والنظر نحو الهدف؛ الاختيار بين التمرير والمراوغة والتسديد حسب الفضاء الحر أمامه؛ تنفيذ تمريرة مشدودة إلى زميل متموضع دون كرة، على مستوى الصدر وأمام جريه؛ استعمال مراوغة التقدم فقط عندما يكون الفضاء أمامه حراً. - **المستوى المتمكن:** تمييز وضعية التسديد الملائمة (المسافة، التوازن، غياب الاعتراض)؛ ربط الاستقبال والتوجيه والتسديد دون وقت ميت؛ إتقان التسديد في الجري والتسديد بعد التوقف؛ تثبيت مدافع قبل التمرير إلى الزميل الحر. **محتويات التعليم بالنسبة لغير حامل الكرة:** - **المستوى المبتدئ:** الابتعاد عن حامل الكرة لخلق فضاء حر؛ الظهور بمظهر مرئي ومتاح، في مجال رؤية حامل الكرة؛ التحرك نحو فضاء حر بدل التحرك نحو الكرة؛ شغل عرض الملعب لتجنب التجمع. - **المستوى المتمكن:** التموضع دون كرة في العمق لاستقبال الكرة في وضعية تسديد؛ القطع نحو السلة بعد تثبيت المدافع؛ التموضع للمتابعة الهجومية؛ ضمان التوازن الدفاعي أثناء سير الهجوم. **محتويات التعليم بالنسبة للفريق:** - **المستوى المبتدئ:** شغل الملعب عرضاً وعمقاً؛ الحفاظ على الكرة بعدد أدنى من التمريرات قبل الإنهاء؛ التقدم نحو الهدف بدل التحرك جانبياً. - **المستوى المتمكن:** تنظيم صعود الكرة السريع والهجوم المتموضع؛ خلق التفوق العددي واستغلاله؛ التناوب بين اللعب المباشر ولعب القلب للحصول على تسديدة غير معترَضة. وتُترجَم هذه المحتويات إلى وضعيات تعلّم متمايزة، لكل منها معيار إنجاز (ما يجب على التلميذ فعله) ومعيار نجاح قابل للملاحظة، مثل نسبة التمريرات الناجحة أو التسديدات المأخوذة في وضعية ملائمة. **ما يُنتظَر في الجواب:** تمايز حسب مجموعة الحاجة، ثم تفصيل المحتويات حسب الأدوار الثلاثة المطلوبة، على أن يُصاغ كل محتوى بما يجب على التلميذ فعله. ### س4 — اقترحوا وضعية بيداغوجية (وليس حصة) لقسم يقدّم خصائص مشابهة لمستوى الفريق ج. يجب أن تحدد الوضعية البيداغوجية هدفاً، ومخططاً للتنظيم البشري والمادي، وتعليمات تنفيذ، ومعايير نجاح. (8 نقاط) **شروط التدريس المحددة في الموضوع:** 30 تلميذاً؛ ملعب كرة سلة واحد + نصف ملعب بلوحة؛ 10 كرات؛ صدور بألوان مختلفة؛ مخاريط (plots)؛ وأي مادة ديداكتيكية أخرى قابلة للاستغلال لأغراض التعلم. **الجواب النموذجي المقترح — الوضعية: «إيصال الكرة بأربع تمريرات».** - **الهدف.** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف، بالتموضع دون كرة في فضاء حر، للوصول إلى وضعية تسديد ملائمة. والهدف يجيب مباشرة عن ملاحظة الفريق ج، الذي لا يتجاوز مؤشر تقدمه 40٪. - **التنظيم البشري والمادي.** على نصف الملعب ذي اللوحة: 4 مهاجمين ضد مدافعين اثنين، أي تفوق هجومي واضح لجعل الحفاظ ممكناً. ويُوزَّع التلاميذ الثلاثون على 5 ورشات من 6، ورشتان على نصف الملعب وثلاث على الملعب الكامل المقسَّم إلى ممرات محددة بالمخاريط. كرة واحدة لكل ورشة، وصدور بألوان مختلفة لتمييز المهاجمين عن المدافعين. ويتولى تلميذان في كل ورشة دور الملاحظ فيحصيان التمريرات الناجحة والتسديدات المأخوذة: وهذا يشغل التلاميذ المنتظرين ويرسّخ الملاحظة المشتركة. - **تعليمات التنفيذ.** تنطلق الكرة من خط القاعدة. ويجب على الفريق المهاجم إنجاز أربع تمريرات على الأقل قبل التسديد. ولا يجوز لحامل الكرة أن يراوغ أكثر من مرتين: عليه أن يتوقف ويرفع رأسه ويبحث عن زميل. ويجب على غير حاملي الكرة أن يتموضعوا على بعد أكثر من ثلاثة أمتار من حامل الكرة وفي مجال رؤيته. ولا يُسمح بالتسديد إلا داخل المنطقة المحددة بالمخاريط، قرب السلة. ولا يجوز للمدافعين الاعتراض إلا بالتموضع على المسار، دون تماس. وتُدوَّر الأدوار كل ثلاث دقائق. - **معايير الإنجاز.** بالنسبة لحامل الكرة: التوقف، رفع الرأس، توجيه الارتكازات نحو الأمام، تمرير مشدود أمام الزميل المتحرك. بالنسبة لغير حامل الكرة: الابتعاد عن حامل الكرة نحو فضاء حر، وإظهار الهدف باليدين، والانطلاق من جديد إذا لم تأتِ التمريرة. - **معايير النجاح.** إنجاح إيصال الكرة بأربع تمريرات متتالية في 5 محاولات من 8، والإنهاء بتسديدة داخل المنطقة المسموح بها في نصف عمليات الإيصال الناجحة على الأقل. - **متغيرات التطور.** تقليص التفوق من 4 ضد 2 إلى 4 ضد 3 ثم إلى التعادل؛ توسيع منطقة التسديد أو تضييقها؛ إلغاء قيد عدد التمريرات بعد بلوغ معيار النجاح؛ السماح بالدفاع بالتماس. **ما يُنتظَر في الجواب:** الموضوع يطلب وضعية بيداغوجية لا حصة: جهاز واحد، بهدف وتنظيم وتعليمات ومعايير. ويجب استعمال شروط التدريس المفروضة فعلاً (30 تلميذاً، ملعب ونصف، 10 كرات).', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب النموذجي المقترح: نعم، ضرورية، لثلاثة أسباب مرتبطة بوظيفتها نفسها.

1. **التقييم التكويني داخلي في سيرورة التعليم والتعلّم:** يتدخل أثناء الدورة لا في نهايتها، وهدفه ليس التنقيط بل الإخبار. وبدونه، لكان الأستاذ سيقود التسلسلة الثانية على تخطيط وُضع مسبقاً، دون أن يعرف ما بناه التلاميذ فعلاً أثناء الأولى.
2. **ينتج مؤشرات موضوعية قابلة للاستغلال.** وهنا مؤشران مقيسان على اللعب الحقيقي: مؤشر التقدم (تسديدات مُحاوَلة على كرات ملعوبة) الذي يخبر عن قدرة الفريق على إيصال الكرة إلى وضعية تسديد، ومؤشر الفعالية (تسديدات ناجحة على تسديدات مُحاوَلة) الذي يخبر عن ملاءمة اختيار التسديد وعن التحكم التقني. وتقاطع المؤشرين يسمح بتحديد موقع كل فريق واستنتاج العائق الغالب.
3. **هو شرط التنظيم والتمايز.** يسمح بتكوين مجموعات الحاجة، وترتيب أهداف التسلسلة التالية، واختيار محتويات تعليمية ملائمة لكل مستوى، وإعطاء التلاميذ تغذية راجعة عن تقدمهم، ما يدعم دافعيتهم ويجعلهم فاعلين في تعلمهم.

فهي إذن ليست وقتاً مأخوذاً من التعلم: بل هي ما يجعل بقية الدورة ملائمة.

**ما يُنتظَر في الجواب:** تبرير الوظيفة التنظيمية للتقييم التكويني، مع الاستناد صراحة إلى مؤشري الجدول، لا إلى تعريف عام.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابات نموذجية مقترحة من mesconcours؛ لا توجد عناصر إجابة رسمية لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q62', 'exam_eps_2017_lycee', 62, 'كرة السلة — التقييم التكويني والتعلم', 'ما تفسيراتكم لبيانات الملاحظة هذه؟

الوضعية: بعد إنجاز التسلسلة الأولى من دورة كرة السلة، أجرى أستاذ تقييماً تكوينياً، أسفر عن الملاحظات التالية بخصوص أداء تلاميذ قسم موزعين على أربعة فرق (انظر جدول البيانات أعلاه): - الفريق أ (5 ذكور): مؤشر التقدم 8 على 10 (80٪)؛ مؤشر الفعالية 4 على 8 (50٪). - الفريق ب (5 ذكور): مؤشر التقدم 7 على 10 (70٪)؛ مؤشر الفعالية 4 على 7 (57٪). - الفريق ج (ذكران و3 إناث): مؤشر التقدم 4 على 10 (40٪)؛ مؤشر الفعالية 1 على 4 (25٪). - الفريق د (5 إناث): مؤشر التقدم 3 على 10 (30٪)؛ مؤشر الفعالية 1 على 3 (33٪). ### س1 — هل جلسة التقييم التكويني هذه ضرورية؟ (6 نقاط) **الجواب النموذجي المقترح: نعم، ضرورية، لثلاثة أسباب مرتبطة بوظيفتها نفسها.** 1. **التقييم التكويني داخلي في سيرورة التعليم والتعلّم:** يتدخل أثناء الدورة لا في نهايتها، وهدفه ليس التنقيط بل الإخبار. وبدونه، لكان الأستاذ سيقود التسلسلة الثانية على تخطيط وُضع مسبقاً، دون أن يعرف ما بناه التلاميذ فعلاً أثناء الأولى. 2. **ينتج مؤشرات موضوعية قابلة للاستغلال.** وهنا مؤشران مقيسان على اللعب الحقيقي: مؤشر التقدم (تسديدات مُحاوَلة على كرات ملعوبة) الذي يخبر عن قدرة الفريق على إيصال الكرة إلى وضعية تسديد، ومؤشر الفعالية (تسديدات ناجحة على تسديدات مُحاوَلة) الذي يخبر عن ملاءمة اختيار التسديد وعن التحكم التقني. وتقاطع المؤشرين يسمح بتحديد موقع كل فريق واستنتاج العائق الغالب. 3. **هو شرط التنظيم والتمايز.** يسمح بتكوين مجموعات الحاجة، وترتيب أهداف التسلسلة التالية، واختيار محتويات تعليمية ملائمة لكل مستوى، وإعطاء التلاميذ تغذية راجعة عن تقدمهم، ما يدعم دافعيتهم ويجعلهم فاعلين في تعلمهم. فهي إذن ليست وقتاً مأخوذاً من التعلم: بل هي ما يجعل بقية الدورة ملائمة. **ما يُنتظَر في الجواب:** تبرير الوظيفة التنظيمية للتقييم التكويني، مع الاستناد صراحة إلى مؤشري الجدول، لا إلى تعريف عام. ### س2 — ما تفسيراتكم لبيانات الملاحظة هذه؟ (10 نقاط) **الجواب النموذجي المقترح — قراءة متقاطعة للمؤشرين، فريقاً فريقاً:** - **الفريقان أ وب:** تقدم مرتفع (80٪ و70٪) وفعالية مقبولة (50٪ و57٪). هذان الفريقان يعرفان الحفاظ على الكرة وإيصالها والوصول إلى منطقة التسجيل؛ ويخلقان وضعيات تسديد. فالعائق لم يعد الوصول إلى الهدف بل اختيار التسديد وجودته: ما يقرب من نصف التسديدات المُحاوَلة يفشل، ما يشير إلى تسديدات مأخوذة في ظروف سيئة، في اختلال توازن، أو تحت ضغط، أو من مسافة مفرطة. - **الفريق ج:** تقدم ضعيف (40٪) وفعالية ضعيفة جداً (25٪). الكرة نادراً ما تصل إلى وضعية تسديد، وعندما تصل يفشل الإنهاء دائماً تقريباً. المشكلة مزدوجة، وتتعلق أولاً بالحفاظ على الكرة وتقدمها، أي بالتموضع دون كرة وجودة التمريرات. - **الفريق د:** أضعف تقدم (30٪) لكن فعالية (33٪) أعلى من فعالية الفريق ج. فالتسديدات القليلة المُحاوَلة تُؤخَذ إذن في ظروف أنسب: هؤلاء التلميذات لا يسددن إلا عندما يكنّ متأكدات، ما يترجم موقفاً حذراً، لكنه يدل قبل كل شيء على عجز عن إيصال الكرة إلى الهدف. **التفسير الديداكتيكي.** القسم يضم مستويين متميزين بوضوح: مجموعة أ وب، متمكنة، مشكلتها الإنهاء؛ ومجموعة ج ود، مبتدئة، مشكلتها الحفاظ على الكرة والتقدم الجماعي بها. والملاحظة الثانية تتعلق بالاختلاط: الفريقان الأقل أداءً هما اللذان يضمان إناثاً، ما يدعو إلى التساؤل عن تركيبة الفرق وعن زمن اللعب الفعلي الممنوح لكل تلميذة، بدل الاستنتاج بوجود فرق في الموارد. وأخيراً، مؤشر تقدم مرتفع مصحوب بفعالية متوسطة يبين أن كثرة التسديدات لا تعني علاقة جيدة بالتسديد: فتقاطع المؤشرين، لا كل منهما على حدة، هو ما يصنع التشخيص. **ما يُنتظَر في الجواب:** تفسير متقاطع للمؤشرين، فريقاً فريقاً، ينتهي إلى تحديد مجموعتي حاجة وإلى فرضية حول الاختلاط. ### س3 — بالنظر إلى مجموعات المستوى الملاحَظة في هذا القسم، ما أهداف التعلّم ومحتويات التعليم التي يجب على الأستاذ التشديد عليها أثناء التسلسلة الثانية من الدورة؟ حدّدوا هذه المحتويات بالنسبة لحامل الكرة وغير حامل الكرة والفريق. (16 نقطة) **الجواب النموذجي المقترح:** **أهداف التسلسلة الثانية:** - **للمجموعة المبتدئة (الفريقان ج ود):** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف للوصول إلى وضعية تسديد ملائمة. - **للمجموعة المتمكنة (الفريقان أ وب):** اختيار التسديد وإنجاحه، أي أخذ التسديدة في ظروف ملائمة بدل زيادة عدد التسديدات. **محتويات التعليم بالنسبة لحامل الكرة:** - **المستوى المبتدئ:** إيقاف الكرة ورفع الرأس قبل القرار؛ توجيه الارتكازات والنظر نحو الهدف؛ الاختيار بين التمرير والمراوغة والتسديد حسب الفضاء الحر أمامه؛ تنفيذ تمريرة مشدودة إلى زميل متموضع دون كرة، على مستوى الصدر وأمام جريه؛ استعمال مراوغة التقدم فقط عندما يكون الفضاء أمامه حراً. - **المستوى المتمكن:** تمييز وضعية التسديد الملائمة (المسافة، التوازن، غياب الاعتراض)؛ ربط الاستقبال والتوجيه والتسديد دون وقت ميت؛ إتقان التسديد في الجري والتسديد بعد التوقف؛ تثبيت مدافع قبل التمرير إلى الزميل الحر. **محتويات التعليم بالنسبة لغير حامل الكرة:** - **المستوى المبتدئ:** الابتعاد عن حامل الكرة لخلق فضاء حر؛ الظهور بمظهر مرئي ومتاح، في مجال رؤية حامل الكرة؛ التحرك نحو فضاء حر بدل التحرك نحو الكرة؛ شغل عرض الملعب لتجنب التجمع. - **المستوى المتمكن:** التموضع دون كرة في العمق لاستقبال الكرة في وضعية تسديد؛ القطع نحو السلة بعد تثبيت المدافع؛ التموضع للمتابعة الهجومية؛ ضمان التوازن الدفاعي أثناء سير الهجوم. **محتويات التعليم بالنسبة للفريق:** - **المستوى المبتدئ:** شغل الملعب عرضاً وعمقاً؛ الحفاظ على الكرة بعدد أدنى من التمريرات قبل الإنهاء؛ التقدم نحو الهدف بدل التحرك جانبياً. - **المستوى المتمكن:** تنظيم صعود الكرة السريع والهجوم المتموضع؛ خلق التفوق العددي واستغلاله؛ التناوب بين اللعب المباشر ولعب القلب للحصول على تسديدة غير معترَضة. وتُترجَم هذه المحتويات إلى وضعيات تعلّم متمايزة، لكل منها معيار إنجاز (ما يجب على التلميذ فعله) ومعيار نجاح قابل للملاحظة، مثل نسبة التمريرات الناجحة أو التسديدات المأخوذة في وضعية ملائمة. **ما يُنتظَر في الجواب:** تمايز حسب مجموعة الحاجة، ثم تفصيل المحتويات حسب الأدوار الثلاثة المطلوبة، على أن يُصاغ كل محتوى بما يجب على التلميذ فعله. ### س4 — اقترحوا وضعية بيداغوجية (وليس حصة) لقسم يقدّم خصائص مشابهة لمستوى الفريق ج. يجب أن تحدد الوضعية البيداغوجية هدفاً، ومخططاً للتنظيم البشري والمادي، وتعليمات تنفيذ، ومعايير نجاح. (8 نقاط) **شروط التدريس المحددة في الموضوع:** 30 تلميذاً؛ ملعب كرة سلة واحد + نصف ملعب بلوحة؛ 10 كرات؛ صدور بألوان مختلفة؛ مخاريط (plots)؛ وأي مادة ديداكتيكية أخرى قابلة للاستغلال لأغراض التعلم. **الجواب النموذجي المقترح — الوضعية: «إيصال الكرة بأربع تمريرات».** - **الهدف.** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف، بالتموضع دون كرة في فضاء حر، للوصول إلى وضعية تسديد ملائمة. والهدف يجيب مباشرة عن ملاحظة الفريق ج، الذي لا يتجاوز مؤشر تقدمه 40٪. - **التنظيم البشري والمادي.** على نصف الملعب ذي اللوحة: 4 مهاجمين ضد مدافعين اثنين، أي تفوق هجومي واضح لجعل الحفاظ ممكناً. ويُوزَّع التلاميذ الثلاثون على 5 ورشات من 6، ورشتان على نصف الملعب وثلاث على الملعب الكامل المقسَّم إلى ممرات محددة بالمخاريط. كرة واحدة لكل ورشة، وصدور بألوان مختلفة لتمييز المهاجمين عن المدافعين. ويتولى تلميذان في كل ورشة دور الملاحظ فيحصيان التمريرات الناجحة والتسديدات المأخوذة: وهذا يشغل التلاميذ المنتظرين ويرسّخ الملاحظة المشتركة. - **تعليمات التنفيذ.** تنطلق الكرة من خط القاعدة. ويجب على الفريق المهاجم إنجاز أربع تمريرات على الأقل قبل التسديد. ولا يجوز لحامل الكرة أن يراوغ أكثر من مرتين: عليه أن يتوقف ويرفع رأسه ويبحث عن زميل. ويجب على غير حاملي الكرة أن يتموضعوا على بعد أكثر من ثلاثة أمتار من حامل الكرة وفي مجال رؤيته. ولا يُسمح بالتسديد إلا داخل المنطقة المحددة بالمخاريط، قرب السلة. ولا يجوز للمدافعين الاعتراض إلا بالتموضع على المسار، دون تماس. وتُدوَّر الأدوار كل ثلاث دقائق. - **معايير الإنجاز.** بالنسبة لحامل الكرة: التوقف، رفع الرأس، توجيه الارتكازات نحو الأمام، تمرير مشدود أمام الزميل المتحرك. بالنسبة لغير حامل الكرة: الابتعاد عن حامل الكرة نحو فضاء حر، وإظهار الهدف باليدين، والانطلاق من جديد إذا لم تأتِ التمريرة. - **معايير النجاح.** إنجاح إيصال الكرة بأربع تمريرات متتالية في 5 محاولات من 8، والإنهاء بتسديدة داخل المنطقة المسموح بها في نصف عمليات الإيصال الناجحة على الأقل. - **متغيرات التطور.** تقليص التفوق من 4 ضد 2 إلى 4 ضد 3 ثم إلى التعادل؛ توسيع منطقة التسديد أو تضييقها؛ إلغاء قيد عدد التمريرات بعد بلوغ معيار النجاح؛ السماح بالدفاع بالتماس. **ما يُنتظَر في الجواب:** الموضوع يطلب وضعية بيداغوجية لا حصة: جهاز واحد، بهدف وتنظيم وتعليمات ومعايير. ويجب استعمال شروط التدريس المفروضة فعلاً (30 تلميذاً، ملعب ونصف، 10 كرات).', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب النموذجي المقترح — قراءة متقاطعة للمؤشرين، فريقاً فريقاً:

- **الفريقان أ وب:** تقدم مرتفع (80٪ و70٪) وفعالية مقبولة (50٪ و57٪). هذان الفريقان يعرفان الحفاظ على الكرة وإيصالها والوصول إلى منطقة التسجيل؛ ويخلقان وضعيات تسديد. فالعائق لم يعد الوصول إلى الهدف بل اختيار التسديد وجودته: ما يقرب من نصف التسديدات المُحاوَلة يفشل، ما يشير إلى تسديدات مأخوذة في ظروف سيئة، في اختلال توازن، أو تحت ضغط، أو من مسافة مفرطة.
- **الفريق ج:** تقدم ضعيف (40٪) وفعالية ضعيفة جداً (25٪). الكرة نادراً ما تصل إلى وضعية تسديد، وعندما تصل يفشل الإنهاء دائماً تقريباً. المشكلة مزدوجة، وتتعلق أولاً بالحفاظ على الكرة وتقدمها، أي بالتموضع دون كرة وجودة التمريرات.
- **الفريق د:** أضعف تقدم (30٪) لكن فعالية (33٪) أعلى من فعالية الفريق ج. فالتسديدات القليلة المُحاوَلة تُؤخَذ إذن في ظروف أنسب: هؤلاء التلميذات لا يسددن إلا عندما يكنّ متأكدات، ما يترجم موقفاً حذراً، لكنه يدل قبل كل شيء على عجز عن إيصال الكرة إلى الهدف.

**التفسير الديداكتيكي.** القسم يضم مستويين متميزين بوضوح: مجموعة أ وب، متمكنة، مشكلتها الإنهاء؛ ومجموعة ج ود، مبتدئة، مشكلتها الحفاظ على الكرة والتقدم الجماعي بها. والملاحظة الثانية تتعلق بالاختلاط: الفريقان الأقل أداءً هما اللذان يضمان إناثاً، ما يدعو إلى التساؤل عن تركيبة الفرق وعن زمن اللعب الفعلي الممنوح لكل تلميذة، بدل الاستنتاج بوجود فرق في الموارد. وأخيراً، مؤشر تقدم مرتفع مصحوب بفعالية متوسطة يبين أن كثرة التسديدات لا تعني علاقة جيدة بالتسديد: فتقاطع المؤشرين، لا كل منهما على حدة، هو ما يصنع التشخيص.

**ما يُنتظَر في الجواب:** تفسير متقاطع للمؤشرين، فريقاً فريقاً، ينتهي إلى تحديد مجموعتي حاجة وإلى فرضية حول الاختلاط.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابات نموذجية مقترحة من mesconcours؛ لا توجد عناصر إجابة رسمية لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q63', 'exam_eps_2017_lycee', 63, 'كرة السلة — التقييم التكويني والتعلم', 'بالنظر إلى مجموعات المستوى الملاحَظة في هذا القسم، ما أهداف التعلّم ومحتويات التعليم التي يجب على الأستاذ التشديد عليها أثناء التسلسلة الثانية من الدورة؟ حدّدوا هذه المحتويات بالنسبة لحامل الكرة وغير حامل الكرة والفريق.

الوضعية: بعد إنجاز التسلسلة الأولى من دورة كرة السلة، أجرى أستاذ تقييماً تكوينياً، أسفر عن الملاحظات التالية بخصوص أداء تلاميذ قسم موزعين على أربعة فرق (انظر جدول البيانات أعلاه): - الفريق أ (5 ذكور): مؤشر التقدم 8 على 10 (80٪)؛ مؤشر الفعالية 4 على 8 (50٪). - الفريق ب (5 ذكور): مؤشر التقدم 7 على 10 (70٪)؛ مؤشر الفعالية 4 على 7 (57٪). - الفريق ج (ذكران و3 إناث): مؤشر التقدم 4 على 10 (40٪)؛ مؤشر الفعالية 1 على 4 (25٪). - الفريق د (5 إناث): مؤشر التقدم 3 على 10 (30٪)؛ مؤشر الفعالية 1 على 3 (33٪). ### س1 — هل جلسة التقييم التكويني هذه ضرورية؟ (6 نقاط) **الجواب النموذجي المقترح: نعم، ضرورية، لثلاثة أسباب مرتبطة بوظيفتها نفسها.** 1. **التقييم التكويني داخلي في سيرورة التعليم والتعلّم:** يتدخل أثناء الدورة لا في نهايتها، وهدفه ليس التنقيط بل الإخبار. وبدونه، لكان الأستاذ سيقود التسلسلة الثانية على تخطيط وُضع مسبقاً، دون أن يعرف ما بناه التلاميذ فعلاً أثناء الأولى. 2. **ينتج مؤشرات موضوعية قابلة للاستغلال.** وهنا مؤشران مقيسان على اللعب الحقيقي: مؤشر التقدم (تسديدات مُحاوَلة على كرات ملعوبة) الذي يخبر عن قدرة الفريق على إيصال الكرة إلى وضعية تسديد، ومؤشر الفعالية (تسديدات ناجحة على تسديدات مُحاوَلة) الذي يخبر عن ملاءمة اختيار التسديد وعن التحكم التقني. وتقاطع المؤشرين يسمح بتحديد موقع كل فريق واستنتاج العائق الغالب. 3. **هو شرط التنظيم والتمايز.** يسمح بتكوين مجموعات الحاجة، وترتيب أهداف التسلسلة التالية، واختيار محتويات تعليمية ملائمة لكل مستوى، وإعطاء التلاميذ تغذية راجعة عن تقدمهم، ما يدعم دافعيتهم ويجعلهم فاعلين في تعلمهم. فهي إذن ليست وقتاً مأخوذاً من التعلم: بل هي ما يجعل بقية الدورة ملائمة. **ما يُنتظَر في الجواب:** تبرير الوظيفة التنظيمية للتقييم التكويني، مع الاستناد صراحة إلى مؤشري الجدول، لا إلى تعريف عام. ### س2 — ما تفسيراتكم لبيانات الملاحظة هذه؟ (10 نقاط) **الجواب النموذجي المقترح — قراءة متقاطعة للمؤشرين، فريقاً فريقاً:** - **الفريقان أ وب:** تقدم مرتفع (80٪ و70٪) وفعالية مقبولة (50٪ و57٪). هذان الفريقان يعرفان الحفاظ على الكرة وإيصالها والوصول إلى منطقة التسجيل؛ ويخلقان وضعيات تسديد. فالعائق لم يعد الوصول إلى الهدف بل اختيار التسديد وجودته: ما يقرب من نصف التسديدات المُحاوَلة يفشل، ما يشير إلى تسديدات مأخوذة في ظروف سيئة، في اختلال توازن، أو تحت ضغط، أو من مسافة مفرطة. - **الفريق ج:** تقدم ضعيف (40٪) وفعالية ضعيفة جداً (25٪). الكرة نادراً ما تصل إلى وضعية تسديد، وعندما تصل يفشل الإنهاء دائماً تقريباً. المشكلة مزدوجة، وتتعلق أولاً بالحفاظ على الكرة وتقدمها، أي بالتموضع دون كرة وجودة التمريرات. - **الفريق د:** أضعف تقدم (30٪) لكن فعالية (33٪) أعلى من فعالية الفريق ج. فالتسديدات القليلة المُحاوَلة تُؤخَذ إذن في ظروف أنسب: هؤلاء التلميذات لا يسددن إلا عندما يكنّ متأكدات، ما يترجم موقفاً حذراً، لكنه يدل قبل كل شيء على عجز عن إيصال الكرة إلى الهدف. **التفسير الديداكتيكي.** القسم يضم مستويين متميزين بوضوح: مجموعة أ وب، متمكنة، مشكلتها الإنهاء؛ ومجموعة ج ود، مبتدئة، مشكلتها الحفاظ على الكرة والتقدم الجماعي بها. والملاحظة الثانية تتعلق بالاختلاط: الفريقان الأقل أداءً هما اللذان يضمان إناثاً، ما يدعو إلى التساؤل عن تركيبة الفرق وعن زمن اللعب الفعلي الممنوح لكل تلميذة، بدل الاستنتاج بوجود فرق في الموارد. وأخيراً، مؤشر تقدم مرتفع مصحوب بفعالية متوسطة يبين أن كثرة التسديدات لا تعني علاقة جيدة بالتسديد: فتقاطع المؤشرين، لا كل منهما على حدة، هو ما يصنع التشخيص. **ما يُنتظَر في الجواب:** تفسير متقاطع للمؤشرين، فريقاً فريقاً، ينتهي إلى تحديد مجموعتي حاجة وإلى فرضية حول الاختلاط. ### س3 — بالنظر إلى مجموعات المستوى الملاحَظة في هذا القسم، ما أهداف التعلّم ومحتويات التعليم التي يجب على الأستاذ التشديد عليها أثناء التسلسلة الثانية من الدورة؟ حدّدوا هذه المحتويات بالنسبة لحامل الكرة وغير حامل الكرة والفريق. (16 نقطة) **الجواب النموذجي المقترح:** **أهداف التسلسلة الثانية:** - **للمجموعة المبتدئة (الفريقان ج ود):** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف للوصول إلى وضعية تسديد ملائمة. - **للمجموعة المتمكنة (الفريقان أ وب):** اختيار التسديد وإنجاحه، أي أخذ التسديدة في ظروف ملائمة بدل زيادة عدد التسديدات. **محتويات التعليم بالنسبة لحامل الكرة:** - **المستوى المبتدئ:** إيقاف الكرة ورفع الرأس قبل القرار؛ توجيه الارتكازات والنظر نحو الهدف؛ الاختيار بين التمرير والمراوغة والتسديد حسب الفضاء الحر أمامه؛ تنفيذ تمريرة مشدودة إلى زميل متموضع دون كرة، على مستوى الصدر وأمام جريه؛ استعمال مراوغة التقدم فقط عندما يكون الفضاء أمامه حراً. - **المستوى المتمكن:** تمييز وضعية التسديد الملائمة (المسافة، التوازن، غياب الاعتراض)؛ ربط الاستقبال والتوجيه والتسديد دون وقت ميت؛ إتقان التسديد في الجري والتسديد بعد التوقف؛ تثبيت مدافع قبل التمرير إلى الزميل الحر. **محتويات التعليم بالنسبة لغير حامل الكرة:** - **المستوى المبتدئ:** الابتعاد عن حامل الكرة لخلق فضاء حر؛ الظهور بمظهر مرئي ومتاح، في مجال رؤية حامل الكرة؛ التحرك نحو فضاء حر بدل التحرك نحو الكرة؛ شغل عرض الملعب لتجنب التجمع. - **المستوى المتمكن:** التموضع دون كرة في العمق لاستقبال الكرة في وضعية تسديد؛ القطع نحو السلة بعد تثبيت المدافع؛ التموضع للمتابعة الهجومية؛ ضمان التوازن الدفاعي أثناء سير الهجوم. **محتويات التعليم بالنسبة للفريق:** - **المستوى المبتدئ:** شغل الملعب عرضاً وعمقاً؛ الحفاظ على الكرة بعدد أدنى من التمريرات قبل الإنهاء؛ التقدم نحو الهدف بدل التحرك جانبياً. - **المستوى المتمكن:** تنظيم صعود الكرة السريع والهجوم المتموضع؛ خلق التفوق العددي واستغلاله؛ التناوب بين اللعب المباشر ولعب القلب للحصول على تسديدة غير معترَضة. وتُترجَم هذه المحتويات إلى وضعيات تعلّم متمايزة، لكل منها معيار إنجاز (ما يجب على التلميذ فعله) ومعيار نجاح قابل للملاحظة، مثل نسبة التمريرات الناجحة أو التسديدات المأخوذة في وضعية ملائمة. **ما يُنتظَر في الجواب:** تمايز حسب مجموعة الحاجة، ثم تفصيل المحتويات حسب الأدوار الثلاثة المطلوبة، على أن يُصاغ كل محتوى بما يجب على التلميذ فعله. ### س4 — اقترحوا وضعية بيداغوجية (وليس حصة) لقسم يقدّم خصائص مشابهة لمستوى الفريق ج. يجب أن تحدد الوضعية البيداغوجية هدفاً، ومخططاً للتنظيم البشري والمادي، وتعليمات تنفيذ، ومعايير نجاح. (8 نقاط) **شروط التدريس المحددة في الموضوع:** 30 تلميذاً؛ ملعب كرة سلة واحد + نصف ملعب بلوحة؛ 10 كرات؛ صدور بألوان مختلفة؛ مخاريط (plots)؛ وأي مادة ديداكتيكية أخرى قابلة للاستغلال لأغراض التعلم. **الجواب النموذجي المقترح — الوضعية: «إيصال الكرة بأربع تمريرات».** - **الهدف.** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف، بالتموضع دون كرة في فضاء حر، للوصول إلى وضعية تسديد ملائمة. والهدف يجيب مباشرة عن ملاحظة الفريق ج، الذي لا يتجاوز مؤشر تقدمه 40٪. - **التنظيم البشري والمادي.** على نصف الملعب ذي اللوحة: 4 مهاجمين ضد مدافعين اثنين، أي تفوق هجومي واضح لجعل الحفاظ ممكناً. ويُوزَّع التلاميذ الثلاثون على 5 ورشات من 6، ورشتان على نصف الملعب وثلاث على الملعب الكامل المقسَّم إلى ممرات محددة بالمخاريط. كرة واحدة لكل ورشة، وصدور بألوان مختلفة لتمييز المهاجمين عن المدافعين. ويتولى تلميذان في كل ورشة دور الملاحظ فيحصيان التمريرات الناجحة والتسديدات المأخوذة: وهذا يشغل التلاميذ المنتظرين ويرسّخ الملاحظة المشتركة. - **تعليمات التنفيذ.** تنطلق الكرة من خط القاعدة. ويجب على الفريق المهاجم إنجاز أربع تمريرات على الأقل قبل التسديد. ولا يجوز لحامل الكرة أن يراوغ أكثر من مرتين: عليه أن يتوقف ويرفع رأسه ويبحث عن زميل. ويجب على غير حاملي الكرة أن يتموضعوا على بعد أكثر من ثلاثة أمتار من حامل الكرة وفي مجال رؤيته. ولا يُسمح بالتسديد إلا داخل المنطقة المحددة بالمخاريط، قرب السلة. ولا يجوز للمدافعين الاعتراض إلا بالتموضع على المسار، دون تماس. وتُدوَّر الأدوار كل ثلاث دقائق. - **معايير الإنجاز.** بالنسبة لحامل الكرة: التوقف، رفع الرأس، توجيه الارتكازات نحو الأمام، تمرير مشدود أمام الزميل المتحرك. بالنسبة لغير حامل الكرة: الابتعاد عن حامل الكرة نحو فضاء حر، وإظهار الهدف باليدين، والانطلاق من جديد إذا لم تأتِ التمريرة. - **معايير النجاح.** إنجاح إيصال الكرة بأربع تمريرات متتالية في 5 محاولات من 8، والإنهاء بتسديدة داخل المنطقة المسموح بها في نصف عمليات الإيصال الناجحة على الأقل. - **متغيرات التطور.** تقليص التفوق من 4 ضد 2 إلى 4 ضد 3 ثم إلى التعادل؛ توسيع منطقة التسديد أو تضييقها؛ إلغاء قيد عدد التمريرات بعد بلوغ معيار النجاح؛ السماح بالدفاع بالتماس. **ما يُنتظَر في الجواب:** الموضوع يطلب وضعية بيداغوجية لا حصة: جهاز واحد، بهدف وتنظيم وتعليمات ومعايير. ويجب استعمال شروط التدريس المفروضة فعلاً (30 تلميذاً، ملعب ونصف، 10 كرات).', false, '[]'::jsonb, ARRAY[]::text[], '**أهداف التسلسلة الثانية:**
- **للمجموعة المبتدئة (الفريقان ج ود):** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف للوصول إلى وضعية تسديد ملائمة.
- **للمجموعة المتمكنة (الفريقان أ وب):** اختيار التسديد وإنجاحه، أي أخذ التسديدة في ظروف ملائمة بدل زيادة عدد التسديدات.

**محتويات التعليم بالنسبة لحامل الكرة:**
- **المستوى المبتدئ:** إيقاف الكرة ورفع الرأس قبل القرار؛ توجيه الارتكازات والنظر نحو الهدف؛ الاختيار بين التمرير والمراوغة والتسديد حسب الفضاء الحر أمامه؛ تنفيذ تمريرة مشدودة إلى زميل متموضع دون كرة، على مستوى الصدر وأمام جريه؛ استعمال مراوغة التقدم فقط عندما يكون الفضاء أمامه حراً.
- **المستوى المتمكن:** تمييز وضعية التسديد الملائمة (المسافة، التوازن، غياب الاعتراض)؛ ربط الاستقبال والتوجيه والتسديد دون وقت ميت؛ إتقان التسديد في الجري والتسديد بعد التوقف؛ تثبيت مدافع قبل التمرير إلى الزميل الحر.

**محتويات التعليم بالنسبة لغير حامل الكرة:**
- **المستوى المبتدئ:** الابتعاد عن حامل الكرة لخلق فضاء حر؛ الظهور بمظهر مرئي ومتاح، في مجال رؤية حامل الكرة؛ التحرك نحو فضاء حر بدل التحرك نحو الكرة؛ شغل عرض الملعب لتجنب التجمع.
- **المستوى المتمكن:** التموضع دون كرة في العمق لاستقبال الكرة في وضعية تسديد؛ القطع نحو السلة بعد تثبيت المدافع؛ التموضع للمتابعة الهجومية؛ ضمان التوازن الدفاعي أثناء سير الهجوم.

**محتويات التعليم بالنسبة للفريق:**
- **المستوى المبتدئ:** شغل الملعب عرضاً وعمقاً؛ الحفاظ على الكرة بعدد أدنى من التمريرات قبل الإنهاء؛ التقدم نحو الهدف بدل التحرك جانبياً.
- **المستوى المتمكن:** تنظيم صعود الكرة السريع والهجوم المتموضع؛ خلق التفوق العددي واستغلاله؛ التناوب بين اللعب المباشر ولعب القلب للحصول على تسديدة غير معترَضة.

وتُترجَم هذه المحتويات إلى وضعيات تعلّم متمايزة، لكل منها معيار إنجاز (ما يجب على التلميذ فعله) ومعيار نجاح قابل للملاحظة، مثل نسبة التمريرات الناجحة أو التسديدات المأخوذة في وضعية ملائمة.

**ما يُنتظَر في الجواب:** تمايز حسب مجموعة الحاجة، ثم تفصيل المحتويات حسب الأدوار الثلاثة المطلوبة، على أن يُصاغ كل محتوى بما يجب على التلميذ فعله.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابات نموذجية مقترحة من mesconcours؛ لا توجد عناصر إجابة رسمية لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة يونيو 2017) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2017_lycee_q64', 'exam_eps_2017_lycee', 64, 'كرة السلة — التقييم التكويني والتعلم', 'اقترحوا وضعية بيداغوجية (وليس حصة) لقسم يقدّم خصائص مشابهة لمستوى الفريق ج. يجب أن تحدد الوضعية البيداغوجية هدفاً، ومخططاً للتنظيم البشري والمادي، وتعليمات تنفيذ، ومعايير نجاح.

الوضعية: بعد إنجاز التسلسلة الأولى من دورة كرة السلة، أجرى أستاذ تقييماً تكوينياً، أسفر عن الملاحظات التالية بخصوص أداء تلاميذ قسم موزعين على أربعة فرق (انظر جدول البيانات أعلاه): - الفريق أ (5 ذكور): مؤشر التقدم 8 على 10 (80٪)؛ مؤشر الفعالية 4 على 8 (50٪). - الفريق ب (5 ذكور): مؤشر التقدم 7 على 10 (70٪)؛ مؤشر الفعالية 4 على 7 (57٪). - الفريق ج (ذكران و3 إناث): مؤشر التقدم 4 على 10 (40٪)؛ مؤشر الفعالية 1 على 4 (25٪). - الفريق د (5 إناث): مؤشر التقدم 3 على 10 (30٪)؛ مؤشر الفعالية 1 على 3 (33٪). ### س1 — هل جلسة التقييم التكويني هذه ضرورية؟ (6 نقاط) **الجواب النموذجي المقترح: نعم، ضرورية، لثلاثة أسباب مرتبطة بوظيفتها نفسها.** 1. **التقييم التكويني داخلي في سيرورة التعليم والتعلّم:** يتدخل أثناء الدورة لا في نهايتها، وهدفه ليس التنقيط بل الإخبار. وبدونه، لكان الأستاذ سيقود التسلسلة الثانية على تخطيط وُضع مسبقاً، دون أن يعرف ما بناه التلاميذ فعلاً أثناء الأولى. 2. **ينتج مؤشرات موضوعية قابلة للاستغلال.** وهنا مؤشران مقيسان على اللعب الحقيقي: مؤشر التقدم (تسديدات مُحاوَلة على كرات ملعوبة) الذي يخبر عن قدرة الفريق على إيصال الكرة إلى وضعية تسديد، ومؤشر الفعالية (تسديدات ناجحة على تسديدات مُحاوَلة) الذي يخبر عن ملاءمة اختيار التسديد وعن التحكم التقني. وتقاطع المؤشرين يسمح بتحديد موقع كل فريق واستنتاج العائق الغالب. 3. **هو شرط التنظيم والتمايز.** يسمح بتكوين مجموعات الحاجة، وترتيب أهداف التسلسلة التالية، واختيار محتويات تعليمية ملائمة لكل مستوى، وإعطاء التلاميذ تغذية راجعة عن تقدمهم، ما يدعم دافعيتهم ويجعلهم فاعلين في تعلمهم. فهي إذن ليست وقتاً مأخوذاً من التعلم: بل هي ما يجعل بقية الدورة ملائمة. **ما يُنتظَر في الجواب:** تبرير الوظيفة التنظيمية للتقييم التكويني، مع الاستناد صراحة إلى مؤشري الجدول، لا إلى تعريف عام. ### س2 — ما تفسيراتكم لبيانات الملاحظة هذه؟ (10 نقاط) **الجواب النموذجي المقترح — قراءة متقاطعة للمؤشرين، فريقاً فريقاً:** - **الفريقان أ وب:** تقدم مرتفع (80٪ و70٪) وفعالية مقبولة (50٪ و57٪). هذان الفريقان يعرفان الحفاظ على الكرة وإيصالها والوصول إلى منطقة التسجيل؛ ويخلقان وضعيات تسديد. فالعائق لم يعد الوصول إلى الهدف بل اختيار التسديد وجودته: ما يقرب من نصف التسديدات المُحاوَلة يفشل، ما يشير إلى تسديدات مأخوذة في ظروف سيئة، في اختلال توازن، أو تحت ضغط، أو من مسافة مفرطة. - **الفريق ج:** تقدم ضعيف (40٪) وفعالية ضعيفة جداً (25٪). الكرة نادراً ما تصل إلى وضعية تسديد، وعندما تصل يفشل الإنهاء دائماً تقريباً. المشكلة مزدوجة، وتتعلق أولاً بالحفاظ على الكرة وتقدمها، أي بالتموضع دون كرة وجودة التمريرات. - **الفريق د:** أضعف تقدم (30٪) لكن فعالية (33٪) أعلى من فعالية الفريق ج. فالتسديدات القليلة المُحاوَلة تُؤخَذ إذن في ظروف أنسب: هؤلاء التلميذات لا يسددن إلا عندما يكنّ متأكدات، ما يترجم موقفاً حذراً، لكنه يدل قبل كل شيء على عجز عن إيصال الكرة إلى الهدف. **التفسير الديداكتيكي.** القسم يضم مستويين متميزين بوضوح: مجموعة أ وب، متمكنة، مشكلتها الإنهاء؛ ومجموعة ج ود، مبتدئة، مشكلتها الحفاظ على الكرة والتقدم الجماعي بها. والملاحظة الثانية تتعلق بالاختلاط: الفريقان الأقل أداءً هما اللذان يضمان إناثاً، ما يدعو إلى التساؤل عن تركيبة الفرق وعن زمن اللعب الفعلي الممنوح لكل تلميذة، بدل الاستنتاج بوجود فرق في الموارد. وأخيراً، مؤشر تقدم مرتفع مصحوب بفعالية متوسطة يبين أن كثرة التسديدات لا تعني علاقة جيدة بالتسديد: فتقاطع المؤشرين، لا كل منهما على حدة، هو ما يصنع التشخيص. **ما يُنتظَر في الجواب:** تفسير متقاطع للمؤشرين، فريقاً فريقاً، ينتهي إلى تحديد مجموعتي حاجة وإلى فرضية حول الاختلاط. ### س3 — بالنظر إلى مجموعات المستوى الملاحَظة في هذا القسم، ما أهداف التعلّم ومحتويات التعليم التي يجب على الأستاذ التشديد عليها أثناء التسلسلة الثانية من الدورة؟ حدّدوا هذه المحتويات بالنسبة لحامل الكرة وغير حامل الكرة والفريق. (16 نقطة) **الجواب النموذجي المقترح:** **أهداف التسلسلة الثانية:** - **للمجموعة المبتدئة (الفريقان ج ود):** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف للوصول إلى وضعية تسديد ملائمة. - **للمجموعة المتمكنة (الفريقان أ وب):** اختيار التسديد وإنجاحه، أي أخذ التسديدة في ظروف ملائمة بدل زيادة عدد التسديدات. **محتويات التعليم بالنسبة لحامل الكرة:** - **المستوى المبتدئ:** إيقاف الكرة ورفع الرأس قبل القرار؛ توجيه الارتكازات والنظر نحو الهدف؛ الاختيار بين التمرير والمراوغة والتسديد حسب الفضاء الحر أمامه؛ تنفيذ تمريرة مشدودة إلى زميل متموضع دون كرة، على مستوى الصدر وأمام جريه؛ استعمال مراوغة التقدم فقط عندما يكون الفضاء أمامه حراً. - **المستوى المتمكن:** تمييز وضعية التسديد الملائمة (المسافة، التوازن، غياب الاعتراض)؛ ربط الاستقبال والتوجيه والتسديد دون وقت ميت؛ إتقان التسديد في الجري والتسديد بعد التوقف؛ تثبيت مدافع قبل التمرير إلى الزميل الحر. **محتويات التعليم بالنسبة لغير حامل الكرة:** - **المستوى المبتدئ:** الابتعاد عن حامل الكرة لخلق فضاء حر؛ الظهور بمظهر مرئي ومتاح، في مجال رؤية حامل الكرة؛ التحرك نحو فضاء حر بدل التحرك نحو الكرة؛ شغل عرض الملعب لتجنب التجمع. - **المستوى المتمكن:** التموضع دون كرة في العمق لاستقبال الكرة في وضعية تسديد؛ القطع نحو السلة بعد تثبيت المدافع؛ التموضع للمتابعة الهجومية؛ ضمان التوازن الدفاعي أثناء سير الهجوم. **محتويات التعليم بالنسبة للفريق:** - **المستوى المبتدئ:** شغل الملعب عرضاً وعمقاً؛ الحفاظ على الكرة بعدد أدنى من التمريرات قبل الإنهاء؛ التقدم نحو الهدف بدل التحرك جانبياً. - **المستوى المتمكن:** تنظيم صعود الكرة السريع والهجوم المتموضع؛ خلق التفوق العددي واستغلاله؛ التناوب بين اللعب المباشر ولعب القلب للحصول على تسديدة غير معترَضة. وتُترجَم هذه المحتويات إلى وضعيات تعلّم متمايزة، لكل منها معيار إنجاز (ما يجب على التلميذ فعله) ومعيار نجاح قابل للملاحظة، مثل نسبة التمريرات الناجحة أو التسديدات المأخوذة في وضعية ملائمة. **ما يُنتظَر في الجواب:** تمايز حسب مجموعة الحاجة، ثم تفصيل المحتويات حسب الأدوار الثلاثة المطلوبة، على أن يُصاغ كل محتوى بما يجب على التلميذ فعله. ### س4 — اقترحوا وضعية بيداغوجية (وليس حصة) لقسم يقدّم خصائص مشابهة لمستوى الفريق ج. يجب أن تحدد الوضعية البيداغوجية هدفاً، ومخططاً للتنظيم البشري والمادي، وتعليمات تنفيذ، ومعايير نجاح. (8 نقاط) **شروط التدريس المحددة في الموضوع:** 30 تلميذاً؛ ملعب كرة سلة واحد + نصف ملعب بلوحة؛ 10 كرات؛ صدور بألوان مختلفة؛ مخاريط (plots)؛ وأي مادة ديداكتيكية أخرى قابلة للاستغلال لأغراض التعلم. **الجواب النموذجي المقترح — الوضعية: «إيصال الكرة بأربع تمريرات».** - **الهدف.** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف، بالتموضع دون كرة في فضاء حر، للوصول إلى وضعية تسديد ملائمة. والهدف يجيب مباشرة عن ملاحظة الفريق ج، الذي لا يتجاوز مؤشر تقدمه 40٪. - **التنظيم البشري والمادي.** على نصف الملعب ذي اللوحة: 4 مهاجمين ضد مدافعين اثنين، أي تفوق هجومي واضح لجعل الحفاظ ممكناً. ويُوزَّع التلاميذ الثلاثون على 5 ورشات من 6، ورشتان على نصف الملعب وثلاث على الملعب الكامل المقسَّم إلى ممرات محددة بالمخاريط. كرة واحدة لكل ورشة، وصدور بألوان مختلفة لتمييز المهاجمين عن المدافعين. ويتولى تلميذان في كل ورشة دور الملاحظ فيحصيان التمريرات الناجحة والتسديدات المأخوذة: وهذا يشغل التلاميذ المنتظرين ويرسّخ الملاحظة المشتركة. - **تعليمات التنفيذ.** تنطلق الكرة من خط القاعدة. ويجب على الفريق المهاجم إنجاز أربع تمريرات على الأقل قبل التسديد. ولا يجوز لحامل الكرة أن يراوغ أكثر من مرتين: عليه أن يتوقف ويرفع رأسه ويبحث عن زميل. ويجب على غير حاملي الكرة أن يتموضعوا على بعد أكثر من ثلاثة أمتار من حامل الكرة وفي مجال رؤيته. ولا يُسمح بالتسديد إلا داخل المنطقة المحددة بالمخاريط، قرب السلة. ولا يجوز للمدافعين الاعتراض إلا بالتموضع على المسار، دون تماس. وتُدوَّر الأدوار كل ثلاث دقائق. - **معايير الإنجاز.** بالنسبة لحامل الكرة: التوقف، رفع الرأس، توجيه الارتكازات نحو الأمام، تمرير مشدود أمام الزميل المتحرك. بالنسبة لغير حامل الكرة: الابتعاد عن حامل الكرة نحو فضاء حر، وإظهار الهدف باليدين، والانطلاق من جديد إذا لم تأتِ التمريرة. - **معايير النجاح.** إنجاح إيصال الكرة بأربع تمريرات متتالية في 5 محاولات من 8، والإنهاء بتسديدة داخل المنطقة المسموح بها في نصف عمليات الإيصال الناجحة على الأقل. - **متغيرات التطور.** تقليص التفوق من 4 ضد 2 إلى 4 ضد 3 ثم إلى التعادل؛ توسيع منطقة التسديد أو تضييقها؛ إلغاء قيد عدد التمريرات بعد بلوغ معيار النجاح؛ السماح بالدفاع بالتماس. **ما يُنتظَر في الجواب:** الموضوع يطلب وضعية بيداغوجية لا حصة: جهاز واحد، بهدف وتنظيم وتعليمات ومعايير. ويجب استعمال شروط التدريس المفروضة فعلاً (30 تلميذاً، ملعب ونصف، 10 كرات).

شروط التدريس: 30 تلميذاً؛ ملعب كرة سلة واحد + نصف ملعب بلوحة؛ 10 كرات؛ صدور بألوان مختلفة؛ مخاريط (plots)؛ وأي مادة ديداكتيكية أخرى قابلة للاستغلال لأغراض التعلم.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب النموذجي المقترح — الوضعية: «إيصال الكرة بأربع تمريرات».

- **الهدف.** الحفاظ على الكرة وإيصالها جماعياً نحو الهدف، بالتموضع دون كرة في فضاء حر، للوصول إلى وضعية تسديد ملائمة. والهدف يجيب مباشرة عن ملاحظة الفريق ج، الذي لا يتجاوز مؤشر تقدمه 40٪.
- **التنظيم البشري والمادي.** على نصف الملعب ذي اللوحة: 4 مهاجمين ضد مدافعين اثنين، أي تفوق هجومي واضح لجعل الحفاظ ممكناً. ويُوزَّع التلاميذ الثلاثون على 5 ورشات من 6، ورشتان على نصف الملعب وثلاث على الملعب الكامل المقسَّم إلى ممرات محددة بالمخاريط. كرة واحدة لكل ورشة، وصدور بألوان مختلفة لتمييز المهاجمين عن المدافعين. ويتولى تلميذان في كل ورشة دور الملاحظ فيحصيان التمريرات الناجحة والتسديدات المأخوذة: وهذا يشغل التلاميذ المنتظرين ويرسّخ الملاحظة المشتركة.
- **تعليمات التنفيذ.** تنطلق الكرة من خط القاعدة. ويجب على الفريق المهاجم إنجاز أربع تمريرات على الأقل قبل التسديد. ولا يجوز لحامل الكرة أن يراوغ أكثر من مرتين: عليه أن يتوقف ويرفع رأسه ويبحث عن زميل. ويجب على غير حاملي الكرة أن يتموضعوا على بعد أكثر من ثلاثة أمتار من حامل الكرة وفي مجال رؤيته. ولا يُسمح بالتسديد إلا داخل المنطقة المحددة بالمخاريط، قرب السلة. ولا يجوز للمدافعين الاعتراض إلا بالتموضع على المسار، دون تماس. وتُدوَّر الأدوار كل ثلاث دقائق.
- **معايير الإنجاز.** بالنسبة لحامل الكرة: التوقف، رفع الرأس، توجيه الارتكازات نحو الأمام، تمرير مشدود أمام الزميل المتحرك. بالنسبة لغير حامل الكرة: الابتعاد عن حامل الكرة نحو فضاء حر، وإظهار الهدف باليدين، والانطلاق من جديد إذا لم تأتِ التمريرة.
- **معايير النجاح.** إنجاح إيصال الكرة بأربع تمريرات متتالية في 5 محاولات من 8، والإنهاء بتسديدة داخل المنطقة المسموح بها في نصف عمليات الإيصال الناجحة على الأقل.
- **متغيرات التطور.** تقليص التفوق من 4 ضد 2 إلى 4 ضد 3 ثم إلى التعادل؛ توسيع منطقة التسديد أو تضييقها؛ إلغاء قيد عدد التمريرات بعد بلوغ معيار النجاح؛ السماح بالدفاع بالتماس.

**ما يُنتظَر في الجواب:** الموضوع يطلب وضعية بيداغوجية لا حصة: جهاز واحد، بهدف وتنظيم وتعليمات ومعايير. ويجب استعمال شروط التدريس المفروضة فعلاً (30 تلميذاً، ملعب ونصف، 10 كرات).', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2017-542/', false, 'إجابات نموذجية مقترحة من mesconcours؛ لا توجد عناصر إجابة رسمية لهذه الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
