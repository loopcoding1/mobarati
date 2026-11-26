-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية (دورة نونبر 2020)
-- ====================================================================
-- المصدر: ملف الحل solved/2020/التربية البدنية - دورة 2020.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2020-131/
--   حروف الأجوبة الستين من المفتاح الرسمي (عناصر الإجابة)، مطابقة مع mesconcours 60/60 على مستوى الحرف (مع تصحيح 4 أخطاء نسخ في نص البدائل عند mesconcours حسب الورقة والمفتاح). السؤال المفتوح Q61 من عناصر الإجابة الرسمية + شبكة التقييم.
--   عدد الأسئلة: 61 (60 QCM + 1 مفتوحة)؛ موثّقة verified=true: 61؛ موسومة بملاحظة تحقق: 2.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2020_lycee', 'eps_lycee', 2020, 'eps_specialty', 'التربية البدنية والرياضية', 'امتحان التربية البدنية والرياضية (دورة نونبر 2020)', 'دورة نونبر 2020', 180, 61, 'الأجوبة من المفتاح الرسمي (عناصر الإجابة)؛ مطابقة مع mesconcours 60/60 على مستوى الحرف')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (61 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q1', 'exam_eps_2020_lycee', 1, 'التربية البدنية والرياضية', 'En coup de pied de réparation en foot Ball, les joueurs doivent se tenir à distance de la balle de :', false, '[{"id": "A", "text": "11m 15."}, {"id": "B", "text": "13m 50."}, {"id": "C", "text": "10m 50."}, {"id": "D", "text": "9m 15."}]'::jsonb, ARRAY['D']::text[], 'في ركلة الجزاء يقف اللاعبون الآخرون على مسافة 9,15 م على الأقل من نقطة الجزاء (وخارج منطقة الجزاء). (تحقَّق مباشرة من ورقة الامتحان، ص. 1، ومن جدول المفتاح الرسمي.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q2', 'exam_eps_2020_lycee', 2, 'التربية البدنية والرياضية', 'Les sensations proprioceptives sont prédominantes en :', false, '[{"id": "A", "text": "Hand ball."}, {"id": "B", "text": "Judo."}, {"id": "C", "text": "Patinage Artistique."}, {"id": "D", "text": "Gymnastique."}]'::jsonb, ARRAY['D']::text[], 'الجمباز يستدعي الحس العميق (proprioception) بكثافة: تموضع الأعضاء، التوازن، والمعالم الجسدية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q3', 'exam_eps_2020_lycee', 3, 'التربية البدنية والرياضية', 'Choisis une des questions que devra se poser l''enseignant didacticien :', false, '[{"id": "A", "text": "Quelle stratégie d''enseignement à mettre en place ?"}, {"id": "B", "text": "Quelle organisation mettre en place ?"}, {"id": "C", "text": "Quelle structuration du groupe classe ?"}, {"id": "D", "text": "Quels sont les savoirs à faire passer ?"}]'::jsonb, ARRAY['D']::text[], 'السؤال الديداكتيكي بامتياز يتعلق بالمعارف المراد تدريسها؛ أما الاستراتيجية والتنظيم وهيكلة القسم فتتعلق بالتدبير البيداغوجي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q4', 'exam_eps_2020_lycee', 4, 'التربية البدنية والرياضية', 'Le droit antérieur est un muscle :', false, '[{"id": "A", "text": "Bi-articulaire."}, {"id": "B", "text": "Mono articulaire."}, {"id": "C", "text": "Tri-articulaire."}, {"id": "D", "text": "Neutre."}]'::jsonb, ARRAY['A']::text[], 'العضلة المستقيمة الأمامية (أحد رؤوس العضلة رباعية الرؤوس) تعبر مفصلي الورك والركبة، فهي عضلة ثنائية المفصل.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q5', 'exam_eps_2020_lycee', 5, 'التربية البدنية والرياضية', 'Ce qui rend le muscle plus efficace dans sa contraction est :', false, '[{"id": "A", "text": "Sa puissance, sa souplesse, sa résistance."}, {"id": "B", "text": "Sa force, son amplitude, sa contractilité."}, {"id": "C", "text": "Son élasticité, son agilité."}, {"id": "D", "text": "Sa contractilité, son élasticité, son excitabilité."}]'::jsonb, ARRAY['D']::text[], 'فعالية التقلص العضلي تقوم على الخصائص الأساسية للعضلة: التقلصية والمرونة والإثارة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q6', 'exam_eps_2020_lycee', 6, 'التربية البدنية والرياضية', 'Le changement de statut en sport de marquage/démarquage s''opère :', false, '[{"id": "A", "text": "Lorsque le joueur reçoit la balle en course face au gardien de but."}, {"id": "B", "text": "Lorsque l''équipe qui défend récupère la balle est devient attaquante."}, {"id": "C", "text": "Lorsqu''on se lance dans les couloirs pour fixer les adversaires."}, {"id": "D", "text": "Lorsque l''équipe s''oppose à la progression de l''équipe adverse."}]'::jsonb, ARRAY['B']::text[], 'تغيّر الوضعية (statut) هو انقلاب الهجوم/الدفاع: الفريق الذي يسترجع الكرة يصبح مهاجماً. (صياغة الورقة نفسها فيها «est devient» كما هي.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q7', 'exam_eps_2020_lycee', 7, 'التربية البدنية والرياضية', 'La phase de l''impulsion en foulée de course commence lorsque :', false, '[{"id": "A", "text": "le genou de la jambe libre monte en appui."}, {"id": "B", "text": "Le bassin passe en avant de l''appui."}, {"id": "C", "text": "Lorsque la cheville est en extension complète."}, {"id": "D", "text": "Lorsque le plat du pied est en contact complet avec le sol."}]'::jsonb, ARRAY['B']::text[], 'الدفع (impulsion) يبدأ حين يتجاوز الحوض (مركز الثقل) إلى الأمام نقطة الارتكاز على الأرض.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q8', 'exam_eps_2020_lycee', 8, 'التربية البدنية والرياضية', 'Le VO2 Max est :', false, '[{"id": "A", "text": "La quantité d''oxygène dépensée quelle que soit la durée de l''effort."}, {"id": "B", "text": "La quantité maximale d''oxygène utilisable par l''organisme lors d''un effort long et intense."}, {"id": "C", "text": "La quantité d''oxygène dépensée pour les efforts supra-maximal répétitifs avec récupération incomplète."}, {"id": "D", "text": "La quantité d''oxygène dépensée pour les efforts infra maximal mais d''une durée longue."}]'::jsonb, ARRAY['B']::text[], 'الـVO2max هو أقصى تدفق للأكسجين يمكن للجسم استهلاكه/استعماله أثناء جهد شديد ومطوّل.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q9', 'exam_eps_2020_lycee', 9, 'التربية البدنية والرياضية', 'Une séance d''entraînement d''athlétisme en ASS doit se construire autour des paramètres suivant :', false, '[{"id": "A", "text": "Le temps pluvieux des entraînements ou sec, en salle ou en plein air."}, {"id": "B", "text": "Les séries, le nombre de répétitions par séries, la puissance et le volume total du travail."}, {"id": "C", "text": "L''intensité, la récupération, la distance ou temps, distance total ou temps total."}, {"id": "D", "text": "La périodisation dans le cadre du planning annuel scolaire des entraînements."}]'::jsonb, ARRAY['C']::text[], 'معايير حمل حصة تدريبية هي: الشدة، الاستشفاء، مسافة/زمن العمل، والحجم الإجمالي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q10', 'exam_eps_2020_lycee', 10, 'التربية البدنية والرياضية', 'Dans sa pratique pédagogique, l''enseignant d''EPS cherche de manière privilégiée :', false, '[{"id": "A", "text": "La production de performances mesurables pour motiver ses élèves."}, {"id": "B", "text": "L''acquisition systématique de procédures d''action."}, {"id": "C", "text": "La mise en relation de procédures d''action et de performances."}, {"id": "D", "text": "L''acquisition des attitudes, des conduites motrices et des valeurs citoyennes."}]'::jsonb, ARRAY['C']::text[], 'الغاية المفضلة هي ربط إجراءات الفعل بالأداءات (إعطاء معنى للفعل الحركي).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q11', 'exam_eps_2020_lycee', 11, 'التربية البدنية والرياضية', 'La distinction des ressources bioénergétiques et bio-informationnelles relève :', false, '[{"id": "A", "text": "D''un chevauchement."}, {"id": "B", "text": "D''un continuum."}, {"id": "C", "text": "D''une dichotomie."}, {"id": "D", "text": "D''une complémentarité."}]'::jsonb, ARRAY['C']::text[], 'هذا التمييز التحليلي بين الموارد الطاقية والمعلوماتية يُقدَّم كثنائية (dichotomie).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q12', 'exam_eps_2020_lycee', 12, 'التربية البدنية والرياضية', 'Les capacités en EPS attestent :', false, '[{"id": "A", "text": "Le pouvoir d''agir dans une situation particulière."}, {"id": "B", "text": "Le pouvoir d''agir dans une classe de situations."}, {"id": "C", "text": "Le pouvoir d''avoir un apport psychologique vis-à-vis d''une situation."}, {"id": "D", "text": "Le pouvoir d''avoir un état d''esprit à l''égard d''une situation."}]'::jsonb, ARRAY['A']::text[], 'القدرة (capacité) تشهد على القدرة على الفعل في وضعية معينة؛ أما الكفاية (compétence) فتخصّ فئة من الوضعيات.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q13', 'exam_eps_2020_lycee', 13, 'التربية البدنية والرياضية', 'En EPS, la pédagogie orientée vers les compétences cherche à déterminer :', false, '[{"id": "A", "text": "Les contenus et les savoirs que l''élève doit acquérir dans une APS donnée."}, {"id": "B", "text": "Les actions que l''élève devra être capable d''effectuer après apprentissage."}, {"id": "C", "text": "Les connaissances que l''élève doit assimiler au cours de l''apprentissage."}, {"id": "D", "text": "Les tâches que l''élève doit réaliser lors d''une situation donnée."}]'::jsonb, ARRAY['B']::text[], 'المقاربة بالكفايات تتمحور حول ما سيكون التلميذ قادراً على فعله (أفعال قابلة للملاحظة) في نهاية التعلم.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q14', 'exam_eps_2020_lycee', 14, 'التربية البدنية والرياضية', 'Pour déclencher un balancer avant en suspension, les schèmes d''actions sollicités sont :', false, '[{"id": "A", "text": "Une ouverture + une antépulsion."}, {"id": "B", "text": "Une ouverture + une rétropulsion."}, {"id": "C", "text": "Une fermeture + une rétropulsion."}, {"id": "D", "text": "Une fermeture + une antépulsion."}]'::jsonb, ARRAY['D']::text[], 'التأرجح الأمامي في التعليق يجمع بين انغلاق الجسم والدفع الأمامي للذراعين/الكتفين. (انظر الملاحظة 1: بدائل mesconcours ج/د معكوسة؛ الصياغة هنا من الورقة، ص. 4.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q15', 'exam_eps_2020_lycee', 15, 'التربية البدنية والرياضية', 'En course de relais, le transfert du témoin est jugé selon :', false, '[{"id": "A", "text": "la position des coureurs par rapport aux limites des zones d''échange."}, {"id": "B", "text": "la position du témoin par rapport aux limites des zones d''échange."}, {"id": "C", "text": "la position des coureurs par rapport à toute la distance de la course."}, {"id": "D", "text": "la position du témoin par rapport à toute la distance de la course."}]'::jsonb, ARRAY['B']::text[], 'صلاحية التسليم تُقدَّر حسب موضع الشاهد (وليس العدّائين) بالنسبة إلى حدود منطقة التبادل.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q16', 'exam_eps_2020_lycee', 16, 'التربية البدنية والرياضية', 'Le genou est une articulation qui permet de joindre la jambe à la cuisse par la mise en jeu de :', false, '[{"id": "A", "text": "Une seule articulation."}, {"id": "B", "text": "Deux articulations."}, {"id": "C", "text": "Trois articulations."}, {"id": "D", "text": "Quatre articulations."}]'::jsonb, ARRAY['C']::text[], 'الركبة مركّب مفصلي يجمع ثلاث مفاصل (الفخذية–الظنبوبية الداخلية والخارجية، والفخذية–الرضفية).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q17', 'exam_eps_2020_lycee', 17, 'التربية البدنية والرياضية', 'Les facteurs organiques de la condition physique générale sont :', false, '[{"id": "A", "text": "Le système cardiovasculaire, nerveux, circulatoire, endocrinien."}, {"id": "B", "text": "Le système cardiovasculaire, nerveux, digestif."}, {"id": "C", "text": "Le système cardiovasculaire, circulatoire, perceptif, endocrinien."}, {"id": "D", "text": "Le système cardiovasculaire, nerveux, circulatoire, digestif, endocrinien."}]'::jsonb, ARRAY['D']::text[], 'العوامل العضوية تستدعي الأجهزة الكبرى: القلبية الوعائية، العصبية، الدورانية، الهضمية والغدد الصماء. (انظر الملاحظة 1: نص البديل أ هنا من الورقة، ص. 5، لا من mesconcours.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q18', 'exam_eps_2020_lycee', 18, 'التربية البدنية والرياضية', 'Les devoirs écrits ou oraux en EPS sont comptabilisés de :', false, '[{"id": "A", "text": "15% pour tous les niveaux."}, {"id": "B", "text": "20% pour tous les niveaux."}, {"id": "C", "text": "25% pour tous les niveaux."}, {"id": "D", "text": "30% pour tous les niveaux."}]'::jsonb, ARRAY['A']::text[], 'الفروض (كتابية/شفوية) تمثل 15% من النقطة، أياً كان المستوى. (manasseb يترك هذا السؤال بلا جواب؛ المفتاح الرسمي يغطيه.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q19', 'exam_eps_2020_lycee', 19, 'التربية البدنية والرياضية', 'En rugby, un joueur recevant un carton jaune doit quitter le terrain pendant :', false, '[{"id": "A", "text": "10 minutes sans être remplacé."}, {"id": "B", "text": "10 minutes avec remplacement."}, {"id": "C", "text": "5 minutes sans être remplacé."}, {"id": "D", "text": "5 minutes avec remplacement."}]'::jsonb, ARRAY['A']::text[], 'البطاقة الصفراء تعني إقصاءً مؤقتاً 10 دقائق (sin bin) دون تعويض اللاعب.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q20', 'exam_eps_2020_lycee', 20, 'التربية البدنية والرياضية', 'Au volley ball, on appelle une touche assistée quand :', false, '[{"id": "A", "text": "2 ou 3 coéquipiers touchent le ballon simultanément."}, {"id": "B", "text": "Une touche simultanée est lieu entre 2 adversaires au dessus du filet et que le ballon reste en jeu."}, {"id": "C", "text": "Un joueur prend appui sur un partenaire ou sur toute structure/objet pour toucher le ballon."}, {"id": "D", "text": "Une touche de balle simultanée est lieu entre 2 adversaires au dessus du filet entraînant un contact prolongé."}]'::jsonb, ARRAY['C']::text[], 'تكون اللمسة المعانة (خطأ) حين يستند لاعب على زميل أو على أي بنية/شيء للوصول إلى الكرة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q21', 'exam_eps_2020_lycee', 21, 'التربية البدنية والرياضية', 'Le conflit instrumental en EPS est :', false, '[{"id": "A", "text": "Un désaccord sur les moyens pour atteindre un objectif."}, {"id": "B", "text": "Une contradiction de vision, de conception ou d''idée."}, {"id": "C", "text": "Une divergence entre les idéologies des élèves ou élève-enseignant."}, {"id": "D", "text": "Une mise en situation par l''enseignant pour la construction des savoirs Sociocognitifs."}]'::jsonb, ARRAY['A']::text[], 'النزاع الأداتي يتعلق بالوسائل/الإجراءات اللازمة لبلوغ هدف (وليس بالأفكار أو التصورات).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q22', 'exam_eps_2020_lycee', 22, 'التربية البدنية والرياضية', 'En Basket ball, si un joueur reçoit des soins ou qu''on lui porte assistance :', false, '[{"id": "A", "text": "Peut continuer à jouer sans être remplacé."}, {"id": "B", "text": "Doit être remplacé sauf si son équipe est réduite à moins de 5 joueurs sur le terrain."}, {"id": "C", "text": "Peut continuer à jouer s''il récupère pendant un temps-mort pris par l''une des équipes après le signal de remplacement par le chronométreur."}, {"id": "D", "text": "Peut continuer à jouer s''il reçoit des soins entre les lancers-francs."}]'::jsonb, ARRAY['B']::text[], 'اللاعب الذي يتلقى العلاج يجب تعويضه، إلا إذا أصبح فريقه حينها أقل من 5 لاعبين على أرض الملعب.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q23', 'exam_eps_2020_lycee', 23, 'التربية البدنية والرياضية', 'Le style d''enseignement incitatif est :', false, '[{"id": "A", "text": "Centré d''avantage sur la matière et les méthodes."}, {"id": "B", "text": "Centré d''avantage sur les apprenants et la démarche didactique."}, {"id": "C", "text": "Centré à la fois sur la matière et sur les apprenants."}, {"id": "D", "text": "Très peu centré tant sur les apprenants que sur la matière."}]'::jsonb, ARRAY['C']::text[], 'الأسلوب التحفيزي يوازن بين التمركز على المادة وعلى المتعلمين (المعلم يحرّك التلميذ ويوجهه).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q24', 'exam_eps_2020_lycee', 24, 'التربية البدنية والرياضية', 'Un critère de réalisation est un :', false, '[{"id": "A", "text": "Critère qui précise ce qu''il faut faire pendant la phase d''apprentissage avant qu''on sache le faire."}, {"id": "B", "text": "Principe, élément de référence qui permet de juger, d''estimer, de définir quelque chose."}, {"id": "C", "text": "Indicateur de performance permettant la comparaison entre le comportement obtenu et le comportement attendu."}, {"id": "D", "text": "Élément permettant de simplifier ou de complexifier la tâche pendant le déroulement de la séance."}]'::jsonb, ARRAY['A']::text[], 'معيار الإنجاز يحدّد الأفعال الواجب القيام بها لإنجاح المهمة («كيف نفعل») أثناء التعلم. (ب هو تعريف المعيار عموماً، وج هو مؤشر الأداء.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q25', 'exam_eps_2020_lycee', 25, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, les outils d''évaluation en sport collectif sont d''ordre :', false, '[{"id": "A", "text": "Mesurable."}, {"id": "B", "text": "Chiffrable."}, {"id": "C", "text": "Observable."}, {"id": "D", "text": "Mesurable et chiffrable."}]'::jsonb, ARRAY['C']::text[], 'في الرياضات الجماعية يقوم التقييم على أدوات ذات طابع قابل للملاحظة (سلوكيات وتصرفات اللعب).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q26', 'exam_eps_2020_lycee', 26, 'التربية البدنية والرياضية', 'En Hand ball, quand est-ce qu''un joueur est disqualifié par un carton rouge et bleu par les arbitres ?', false, '[{"id": "A", "text": "En cas de faute qui menace la santé de l''adversaire."}, {"id": "B", "text": "En cas de faute d''une défense en zone."}, {"id": "C", "text": "En cas de comportement antisportif répété sur le terrain."}, {"id": "D", "text": "En cas de changement irrégulier pendant les dernières 5 minutes."}]'::jsonb, ARRAY['A']::text[], 'البطاقة الحمراء المرفقة بتقرير مكتوب (البطاقة الزرقاء) تعاقب الأخطاء الجسيمة التي تهدد صحة الخصم.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q27', 'exam_eps_2020_lycee', 27, 'التربية البدنية والرياضية', 'Les caractéristiques d''une compétence spécifique :', false, '[{"id": "A", "text": "Réinvestissable / non finalisée / caractère non disciplinaire."}, {"id": "B", "text": "Réinvestissable / finalisée / caractère non disciplinaire."}, {"id": "C", "text": "Réinvestissable / finalisée / caractère disciplinaire."}, {"id": "D", "text": "Non réinvestissable / finalisée / caractère disciplinaire."}]'::jsonb, ARRAY['C']::text[], 'الكفاية الخاصة قابلة لإعادة الاستثمار، ومحددة الهدف (finalisée)، وذات طابع تخصصي (مرتبطة بنشاط بدني رياضي/تخصص).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q28', 'exam_eps_2020_lycee', 28, 'التربية البدنية والرياضية', 'L''apprentissage moteur peut entraîner de grandes modifications au niveau :', false, '[{"id": "A", "text": "du cortex cérébral sensoriel."}, {"id": "B", "text": "Musculaire."}, {"id": "C", "text": "du cortex cérébral moteur."}, {"id": "D", "text": "du ganglion rachidien."}]'::jsonb, ARRAY['C']::text[], 'التعلم الحركي يصاحبه إعادة تنظيم (لدونة) على مستوى القشرة الدماغية الحركية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q29', 'exam_eps_2020_lycee', 29, 'التربية البدنية والرياضية', 'En lancer de poids, la phase du double appui chez un droitier :', false, '[{"id": "A", "text": "Débute lorsque le lanceur porte le poids de son corps sur son dernier appui gauche et se termine quand l''engin quitte la main du lanceur."}, {"id": "B", "text": "Débute lorsque le lanceur reprend contact avec son dernier appui droit et se termine lorsqu''il transfert le poids de son corps sur son dernier appui."}, {"id": "C", "text": "Débute lorsque le lanceur exerce une plus grande force sur l''engin et se termine lorsque la trajectoire de l''engin prend fin."}, {"id": "D", "text": "Débute lorsque le lanceur place l''engin dans la main et se termine lorsqu''il pose son dernier appui droit sur le sol."}]'::jsonb, ARRAY['B']::text[], 'الدعم المزدوج يبدأ عند استعادة تماس القدم اليمنى (لدى الأيمن) وينتهي عند نقل وزن الجسم إلى الارتكاز الأمامي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q30', 'exam_eps_2020_lycee', 30, 'التربية البدنية والرياضية', 'En entraînement le fartlek est une course avec :', false, '[{"id": "A", "text": "Un rythme constant."}, {"id": "B", "text": "Un rythme constant en terrain accidenté."}, {"id": "C", "text": "Un rythme varié."}, {"id": "D", "text": "Un rythme modéré."}]'::jsonb, ARRAY['C']::text[], 'الفارتلك («لعب الإيقاعات») جري بإيقاع متنوع يتناوب بين التسارعات ومراحل الاستشفاء.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q31', 'exam_eps_2020_lycee', 31, 'التربية البدنية والرياضية', 'En didactique de l''EPS, l''observation est dite objective si :', false, '[{"id": "A", "text": "Le degré de précision avec lequel le test utilisé mesure vraiment ce qu''il est censé mesurer."}, {"id": "B", "text": "Le degré de concordance entre les observateurs d''un même groupe est élevé."}, {"id": "C", "text": "La mesure d''une variable donnée d''un instrument est constante."}, {"id": "D", "text": "Le protocole de faire passer le test deux fois à un groupe donné."}]'::jsonb, ARRAY['B']::text[], 'الموضوعية تعني التوافق بين الملاحظين (اتفاق بين المحكّمين)؛ أما الصلاحية (أ) والثبات (ج) فهما خاصيتان أخريان.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q32', 'exam_eps_2020_lycee', 32, 'التربية البدنية والرياضية', 'Les crampes comme lésion musculaire signifient que le muscle est :', false, '[{"id": "A", "text": "Lésé au niveau des fibres musculaires."}, {"id": "B", "text": "Contracté constamment."}, {"id": "C", "text": "Atteint d''une contusion."}, {"id": "D", "text": "Souffrant d''un début de déchirure musculaire."}]'::jsonb, ARRAY['B']::text[], 'التشنج تقلص لا إرادي شديد وطويل (مستمر) للعضلة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q33', 'exam_eps_2020_lycee', 33, 'التربية البدنية والرياضية', 'Selon le code de pointage scolaire des O.P 2007, la difficulté est exprimée comme suit :', false, '[{"id": "A", "text": "A = 0.25 ; B = 0.5 ; C = 1."}, {"id": "B", "text": "A = 0.25 ; B = 0.5 ; C = 0.75."}, {"id": "C", "text": "A = 1 ; B = 1.5 ; C = 2."}, {"id": "D", "text": "A = 0.5 ; B = 1 ; C = 1.5."}]'::jsonb, ARRAY['D']::text[], 'حسب سلم التنقيط المدرسي هذا، تُقيَّم الصعوبات: أ = 0,5 ؛ ب = 1 ؛ ج = 1,5. (manasseb يترك هذا السؤال بلا جواب؛ المفتاح الرسمي يغطيه.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q34', 'exam_eps_2020_lycee', 34, 'التربية البدنية والرياضية', 'On parle d''une situation de résolution de problème quand :', false, '[{"id": "A", "text": "Elle comporte deux types d''activités cognitives : le traitement d''information et l''alternance décisionnelle."}, {"id": "B", "text": "Un sujet mobilise une ou des capacités qu''il fait entrer en interaction avec ses compétences."}, {"id": "C", "text": "Elle indique ce qui est à faire par la mise en place d''un dispositif concret qui organise les interactions sujet-milieu."}, {"id": "D", "text": "Elle définit les conditions à respecter et les éléments à prendre en compte pour que l''action de l''élève soit efficace."}]'::jsonb, ARRAY['A']::text[], 'وضعية-المشكلة تستدعي نشاطين معرفيين: معالجة المعلومة واتخاذ القرار (التناوب القراري).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q35', 'exam_eps_2020_lycee', 35, 'التربية البدنية والرياضية', 'En Hand ball, comment doit-on sanctionner le jeu passif répété ?', false, '[{"id": "A", "text": "Jet franc et avertissement."}, {"id": "B", "text": "Jet franc et exclusion de 2 minutes."}, {"id": "C", "text": "Jet franc."}, {"id": "D", "text": "Jet franc 9m."}]'::jsonb, ARRAY['C']::text[], 'اللعب السلبي يعاقَب برمية حرة لصالح الفريق الخصم (في موضع الكرة).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q36', 'exam_eps_2020_lycee', 36, 'التربية البدنية والرياضية', 'En gymnastique, une Roue s''exécute :', false, '[{"id": "A", "text": "Dans un plan frontal par rapport à un axe de rotation sagittal."}, {"id": "B", "text": "Dans un plan transversal par rapport à un axe longitudinal."}, {"id": "C", "text": "Dans un plan sagittal par rapport à un axe de rotation transversal."}, {"id": "D", "text": "Dans un plan sagittal par rapport à un axe longitudinal."}]'::jsonb, ARRAY['A']::text[], 'العجلة (Roue) دوران جانبي للجسم في المستوى الجبهي، حول محور سهمي (أمامي–خلفي).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q37', 'exam_eps_2020_lycee', 37, 'التربية البدنية والرياضية', 'En physiologie de l''effort, on parle d''une dette d''oxygène lorsque :', false, '[{"id": "A", "text": "La dégradation des substrats énergétiques assurent la synthèse de l''ATP."}, {"id": "B", "text": "La demande énergétique est inférieure à celle qui peut être fournie par les voies oxydatives."}, {"id": "C", "text": "Apres un exercice la consommation d''oxygène reste supérieure à sa valeur de repos alors que le travail mécanique est nul."}, {"id": "D", "text": "Au cours d''un exercice, la dépense énergétique est supérieure à celle qui peut être fournie par les voies oxydatives."}]'::jsonb, ARRAY['C']::text[], 'دين الأكسجين (EPOC) هو فرط استهلاك الأكسجين الذي يستمر بعد الجهد، مع أن العمل الميكانيكي قد توقف.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q38', 'exam_eps_2020_lycee', 38, 'التربية البدنية والرياضية', 'L''évaluation sommative permet :', false, '[{"id": "A", "text": "D''attester les apprentissages réalisés par l''apprenant et la réussite des cours."}, {"id": "B", "text": "D''ajuster les stratégies pédagogiques en fonction des difficultés des étudiants."}, {"id": "C", "text": "De présenter différents aspects à considérer lors d''un dispositif d''évaluation des apprentissages des étudiants."}, {"id": "D", "text": "De favoriser la progression des apprentissages et de se renseigner sur les acquis et les éléments à améliorer."}]'::jsonb, ARRAY['A']::text[], 'التقييم الإجمالي (sommative) يشهد، في نهاية التسلسل، على التعلمات المحققة (حصيلة/شهادة)؛ أما د فيصف التقييم التكويني.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q39', 'exam_eps_2020_lycee', 39, 'التربية البدنية والرياضية', 'Selon la note 142-12, l''évaluation des activités comportementales intégrées est comptabilisée selon les pourcentages suivants :', false, '[{"id": "A", "text": "15% tronc-commun, 25% 1ère année bac, 20% 2ème année bac."}, {"id": "B", "text": "25% tronc-commun, 20% 1ère année bac, 15% 2ème année bac."}, {"id": "C", "text": "25% tronc-commun, 15% 1ère année bac, 20% 2ème année bac."}, {"id": "D", "text": "15% tronc-commun, 20% 1ère année bac, 25% 2ème année bac."}]'::jsonb, ARRAY['B']::text[], 'وهو بالضبط سلم التوجيهات البيداغوجية للتربية البدنية والرياضية للسلك التأهيلي (2007، ص. 16): المعارف السلوكية 5/20 في الجذع المشترك، 4/20 في الأولى باك، 3/20 في الثانية باك — أي 25% و20% و15%. (انظر الملاحظة 1: لا تعارض هنا؛ mesconcours نسخ البديل ب خطأً.) (manasseb يترك هذا السؤال بلا جواب؛ المفتاح الرسمي يغطيه.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q40', 'exam_eps_2020_lycee', 40, 'التربية البدنية والرياضية', 'En Basket ball, pour considérer 2 fautes comme double fautes, il faut que :', false, '[{"id": "A", "text": "Les 2 fautes sont des fautes de joueurs."}, {"id": "B", "text": "Les 2 fautes impliquent un contact physique."}, {"id": "C", "text": "Les 2 fautes sont soit 2 fautes personnelles soit toute combinaison de fautes antisportives ou disqualifiantes."}, {"id": "D", "text": "Les 3 à la fois."}]'::jsonb, ARRAY['D']::text[], 'حسب قواعد FIBA 2020 السارية وقت الدورة، الخطأ المزدوج يجمع الشروط الثلاثة المذكورة (خطأا لاعبين، مع تماس جسدي، وكلاهما شخصي أو أي مزيج من الأخطاء غير الرياضية أو الإقصائية). انظر الملاحظة 4 بخصوص التغيير اللاحق في قواعد 2026.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, 'الجواب حسب قواعد FIBA 2020 السارية وقت الدورة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q41', 'exam_eps_2020_lycee', 41, 'التربية البدنية والرياضية', 'La matrice disciplinaire pour l''EPS se base essentiellement sur les :', false, '[{"id": "A", "text": "Buts poursuivis, pratique sociale de référence, contenus à enseigner, principes d''action, logique interne."}, {"id": "B", "text": "Buts poursuivis, pratique sociale de référence, contenus à enseigner, méthodes, modalités d''évaluation."}, {"id": "C", "text": "Buts poursuivis, contenus à enseigner, méthodes, principes d''action, logique interne, problèmes fondamentaux."}, {"id": "D", "text": "Buts poursuivis, contenus à enseigner, méthodes, principes d''action, logique interne, modalités d''évaluation."}]'::jsonb, ARRAY['B']::text[], 'المصفوفة التخصصية تربط بين الأهداف المنشودة، الممارسة الاجتماعية المرجعية، المحتويات المراد تدريسها، الطرائق، وكيفيات التقييم.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q42', 'exam_eps_2020_lycee', 42, 'التربية البدنية والرياضية', 'L''approche fonctionnelle en anatomie cherche à :', false, '[{"id": "A", "text": "Analyser la constitution des organes et du rôle joué par tel ou tel processus."}, {"id": "B", "text": "Situer les unités d''un système et décrire les relations les liants."}, {"id": "C", "text": "Décrire les différentes structures en ostéologie et en arthrologie."}, {"id": "D", "text": "Étudier les connexions ou les rapports des structures anatomiques."}]'::jsonb, ARRAY['A']::text[], 'المقاربة الوظيفية تحلل بنية الأعضاء من زاوية الوظيفة/الدور الذي تؤديه.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q43', 'exam_eps_2020_lycee', 43, 'التربية البدنية والرياضية', 'En course à pied lorsqu''on attaque le sol par le talon le bassin du coureur est :', false, '[{"id": "A", "text": "En rétroversion."}, {"id": "B", "text": "En basculement vers l''axe du corps."}, {"id": "C", "text": "En antéversion."}, {"id": "D", "text": "En gainage tonique."}]'::jsonb, ARRAY['C']::text[], 'الهبوط على الكعب يصاحبه ميل أمامي للحوض (antéversion).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q44', 'exam_eps_2020_lycee', 44, 'التربية البدنية والرياضية', 'La finalité de l''étude biomécanique en activité physique permet de :', false, '[{"id": "A", "text": "Diminuer les risques lésionnels."}, {"id": "B", "text": "Optimiser la performance."}, {"id": "C", "text": "Lutter contre les déséquilibres corporels."}, {"id": "D", "text": "Agir sur l''utilisation efficace de la force musculaire."}]'::jsonb, ARRAY['B']::text[], 'البيوميكانيك يهدف قبل كل شيء إلى تحسين الأداء (فعالية الحركة ومردوديتها).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q45', 'exam_eps_2020_lycee', 45, 'التربية البدنية والرياضية', 'Le 400 m haies est une épreuve qui sollicite :', false, '[{"id": "A", "text": "La capacité anaérobie alactique."}, {"id": "B", "text": "La puissance aérobie."}, {"id": "C", "text": "La puissance anaérobie lactique."}, {"id": "D", "text": "La capacité anaérobie lactique."}]'::jsonb, ARRAY['C']::text[], 'سباق 400 م حواجز (جهد شديد يدوم نحو 50–60 ثانية) يستدعي أساساً القدرة اللاهوائية اللبنية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q46', 'exam_eps_2020_lycee', 46, 'التربية البدنية والرياضية', 'Les coureurs du 800m en athlétisme se rabattent après avoir couru :', false, '[{"id": "A", "text": "200m."}, {"id": "B", "text": "250m."}, {"id": "C", "text": "110m."}, {"id": "D", "text": "150m."}]'::jsonb, ARRAY['C']::text[], 'في 800 م يجري العداؤون في الممرات خلال أول 110 أمتار ثم ينحرفون نحو الحبل الداخلي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q47', 'exam_eps_2020_lycee', 47, 'التربية البدنية والرياضية', 'Dans un enchaînement gymnique au secondaire qualifiant, l''élève doit choisir 4 familles différentes parmi les 8 familles figurantes aux O.P, chaque famille présentée par l''élève obtient :', false, '[{"id": "A", "text": "0.2 pts."}, {"id": "B", "text": "0.3 pts."}, {"id": "C", "text": "0.4 pts."}, {"id": "D", "text": "0.5 pts."}]'::jsonb, ARRAY['C']::text[], 'كل عائلة جمبازية مقدَّمة بشكل صحيح تنال 0,4 نقطة (أي 1,6 نقطة للعائلات الأربع المطلوبة). (manasseb يترك هذا السؤال بلا جواب؛ المفتاح الرسمي يغطيه.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q48', 'exam_eps_2020_lycee', 48, 'التربية البدنية والرياضية', 'Schwenker est un geste technique en Hand ball qui consiste à :', false, '[{"id": "A", "text": "Tromper la défense en feintant un tir en suspension, lâcher un dribble, placer un appui et déclencher un tir."}, {"id": "B", "text": "Bloquer le tir adverse à deux mains et non pas le dévier ou le repousser par le gardien de but."}, {"id": "C", "text": "Déclencher un tir au niveau de la hanche où la balle part à mi-hauteur donnant une trajectoire de tir surprenant."}, {"id": "D", "text": "lancer la balle pour un coéquipier qui la prend en extension et déclenche son tir avant de reposer ses pieds."}]'::jsonb, ARRAY['A']::text[], 'الـ«Schwenker» رمية-خدعة: تمويه بالرمية في التعليق، استئناف المراوغة، وضع ارتكاز، ثم إطلاق الرمية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q49', 'exam_eps_2020_lycee', 49, 'التربية البدنية والرياضية', 'En biomécanique, la cinématique s''intéresse à décrie le mouvement par :', false, '[{"id": "A", "text": "Force, vitesse, accélération."}, {"id": "B", "text": "Déplacement, force, vitesse."}, {"id": "C", "text": "Déplacement, vitesse, accélération."}, {"id": "D", "text": "Force, vitesse, déplacement, accélération."}]'::jsonb, ARRAY['C']::text[], 'الكينماتيك تصف الحركة بمقادير الموضع/الإزاحة والسرعة والتسارع فقط، دون القوة التي تخص الديناميك. (انظر الملاحظة 1: صياغة البديل ج هنا من الورقة، ص. 11، والمفتاح؛ لا عيب في السؤال.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q50', 'exam_eps_2020_lycee', 50, 'التربية البدنية والرياضية', 'La course d''élan en fosbury-flop est :', false, '[{"id": "A", "text": "Une Course rectiligne dont l''objectif est l''acquisition d''une vitesse linéaire."}, {"id": "B", "text": "Une Course rectiligne dont l''objectif est l''acquisition d''une vitesse verticale."}, {"id": "C", "text": "Une course curviligne dont l''objectif est de franchir la hauteur voulue en étant face à l''aire de chute."}, {"id": "D", "text": "Une course curviligne dont l''objectif est l''acquisition d''une vitesse verticale."}]'::jsonb, ARRAY['D']::text[], 'انطلاقة فوسبوري منحنية (في قوس)، وهدفها تحويل السرعة الأفقية إلى سرعة عمودية للانطلاق.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q51', 'exam_eps_2020_lycee', 51, 'التربية البدنية والرياضية', 'Dans les recherches constructivistes en éducation, l''évaluation formative est présentée comme :', false, '[{"id": "A", "text": "L''analyse du degré de compréhension et du contrôle du processus d''apprentissage par les élèves."}, {"id": "B", "text": "L''analyse des grilles fixant les normes du produit attendu."}, {"id": "C", "text": "La vérification des objectifs attendus par rapport aux objectifs réalisés."}, {"id": "D", "text": "L''analyse de la manière avec laquelle l''élève organise son apprentissage au fur et à mesure qu''il progresse."}]'::jsonb, ARRAY['D']::text[], 'في المنظور البنائي، التقييم التكويني يحلل الكيفية التي ينظّم بها التلميذ تعلمه بنفسه أثناء تقدمه.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q52', 'exam_eps_2020_lycee', 52, 'التربية البدنية والرياضية', 'La didactique des APS procède à :', false, '[{"id": "A", "text": "Une réflexion centrée sur les contenus spécifiques d''une activité sportive donnée."}, {"id": "B", "text": "Une réflexion spécifique traitant les différentes approches d''enseignement liées à la discipline EPS."}, {"id": "C", "text": "Une démarche cherchant l''unité et l''homogénéité des traitements des différentes APS."}, {"id": "D", "text": "L''élaboration d''un cadre théorique et conceptuel commun entre les APS."}]'::jsonb, ARRAY['A']::text[], 'ديداكتيك الأنشطة البدنية والرياضية تقود تأملاً متمركزاً على المحتويات الخاصة بكل نشاط (بخلاف ديداكتيك التربية البدنية، الأعم).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q53', 'exam_eps_2020_lycee', 53, 'التربية البدنية والرياضية', 'Le double appui en lancer de javelot permet :', false, '[{"id": "A", "text": "D''assurer l''équilibre général du corps au cours du lancer."}, {"id": "B", "text": "D''adapter la course d''élan à la spécificité de l''épreuve."}, {"id": "C", "text": "De transférer la vitesse de la course d''élan au javelot."}, {"id": "D", "text": "De dynamiser le jet final du javelot."}]'::jsonb, ARRAY['C']::text[], 'الدعم المزدوج (وضعية القوة) يسمح بنقل السرعة المكتسبة أثناء الانطلاقة إلى الأداة عند الرمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q54', 'exam_eps_2020_lycee', 54, 'التربية البدنية والرياضية', 'L''extension forcée de la hanche permet l''étirement du :', false, '[{"id": "A", "text": "demi membraneux et du long biceps."}, {"id": "B", "text": "demi tendineux et droit interne."}, {"id": "C", "text": "Quadriceps et du psoas iliaque."}, {"id": "D", "text": "grand adducteur et du pectiné."}]'::jsonb, ARRAY['C']::text[], 'البسط القسري للورك يمدّد عضلات ثني الورك: العضلة رباعية الرؤوس (المستقيمة الأمامية) والعضلة القطنية الحرقفية.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q55', 'exam_eps_2020_lycee', 55, 'التربية البدنية والرياضية', 'L''articulation du genou possède :', false, '[{"id": "A", "text": "1 degré de liberté en extension et 1 degré de liberté en flexion."}, {"id": "B", "text": "2 degré de liberté en extension et 1 degré de liberté en flexion."}, {"id": "C", "text": "2 degré de liberté en extension et 2 degré de liberté en flexion."}, {"id": "D", "text": "1 degré de liberté en extension et 2 degré de liberté en flexion."}]'::jsonb, ARRAY['D']::text[], 'الركبة ممدودة: درجة حرية واحدة فقط (الثني/البسط)؛ والركبة مثنية: درجتان (تضاف إليهما دوران الظنبوب).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q56', 'exam_eps_2020_lycee', 56, 'التربية البدنية والرياضية', 'En EPS, les pratiques sociales de référence servent :', false, '[{"id": "A", "text": "De référence à la construction d''un objet comportemental précis."}, {"id": "B", "text": "De référence à la construction d''une culture somatique."}, {"id": "C", "text": "De référence à la construction d''un objet d''enseignement-apprentissage."}, {"id": "D", "text": "De référence à la construction d''un mode de fonctionnement moteur adéquat."}]'::jsonb, ARRAY['C']::text[], 'الممارسات الاجتماعية المرجعية تخدم بناء/تحويل موضوع التعليم–التعلم المدرسي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q57', 'exam_eps_2020_lycee', 57, 'التربية البدنية والرياضية', 'Dans le domaine de l''enseignement-apprentissage, la notion de conscience disciplinaire renvoi :', false, '[{"id": "A", "text": "Aux différentes manières utilisées par les élèves lors de l''apprentissage d''une discipline."}, {"id": "B", "text": "Aux représentations des élèves quant aux savoirs disciplinaires et à l''image de la discipline."}, {"id": "C", "text": "A la prise en compte des contenus spécifiques d''une discipline par rapport aux autres disciplines."}, {"id": "D", "text": "Aux enjeux visés à travers la programmation d''une discipline donnée."}]'::jsonb, ARRAY['B']::text[], 'الوعي التخصصي يعني تمثلات التلاميذ للمعارف التخصصية ولصورة التخصص.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q58', 'exam_eps_2020_lycee', 58, 'التربية البدنية والرياضية', 'Le but de l''entraînement sportif est :', false, '[{"id": "A", "text": "De permettre l''augmentation du volume maximal d''oxygène."}, {"id": "B", "text": "De permettre à des individus différents d''obtenir les mêmes résultats sportifs."}, {"id": "C", "text": "De permettre la possession des capacités sportives identiques même en ayant des modes de vie différents."}, {"id": "D", "text": "De permettre d''éliminer toutes traces des toxines nuisibles à l''organisme."}]'::jsonb, ARRAY['A']::text[], 'التدريب يهدف إلى تطوير القدرات الفسيولوجية، ولا سيما رفع الحجم الأقصى للأكسجين (VO2max). (manasseb يترك هذا السؤال بلا جواب؛ المفتاح الرسمي يغطيه.)', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q59', 'exam_eps_2020_lycee', 59, 'التربية البدنية والرياضية', 'Le contrôle orienté en football est :', false, '[{"id": "A", "text": "Synonyme de maîtrise de la balle."}, {"id": "B", "text": "Synonyme de dribble."}, {"id": "C", "text": "Synonyme de relance rapide du jeu."}, {"id": "D", "text": "Synonyme de renversement du jeu."}]'::jsonb, ARRAY['B']::text[], 'السيطرة الموجهة، التي تُطلق الفعل التالي بحذف زمن لعب/خصم، تُعدّ مراوغة.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q60', 'exam_eps_2020_lycee', 60, 'التربية البدنية والرياضية', 'En psychologie, le courant behavioriste tend à : ## الجزء الثاني — السؤال المفتوح (40 نقطة) ### Q61 (40ن) — مشروع دورة في الكرة الطائرة **نص السؤال (من الورقة، ص. 15 — المعالجة بالفرنسية فقط):** > L''élaboration d''un projet de cycle s''avère une démarche didactique très importante dans tout processus enseignement-apprentissage. > > Partant d''un projet d''EPS, montrez la place et l''importance de cette démarche dans le processus enseignement-apprentissage et analysez les différentes étapes indispensables à l''élaboration d''un projet de cycle. > > Justifiez vos propos par un exemple de projet prévisionnel (Une séquence avec quatre objectifs) dans l''activité Volley-ball pour une classe de première année collégiale au premier semestre tout en ayant dressé les comportements des élèves de ce niveau face à l''activité volley ball. > > **Module :** L''exploitation de l''espace dans toutes ses dimensions. > **Compétence Visée :** Employer les techniques de base des activités physiques et sportives. > **OTC :** Rechercher le gain de la rencontre par un déplacement et un placement adéquats pour défendre son camp et renvoyer la balle vers le camp adverse. > **Niveau des élèves :** pas de vécu antérieur vis-à-vis de l''APS Volley-ball. > > N.B : le traitement du sujet doit être uniquement en langue française. **عناصر الإجابة الرسمية (من المفتاح، ص. 4–5) — ما يجب أن يقترحه المترشح حتماً:** **أ. المقدمة (SUR 8 POINTS):** - تعريف بمفهوم المشروع البيداغوجي للتربية البدنية ومشروع الدورة، مع إبراز الرابط بين المفهومين؛ - شرح مكانة مشروع الدورة وأهميته وفائدته في تدريس التربية البدنية؛ - إظهار أن المعلم يبني تدريسه انطلاقاً من مختلف المعطيات المتوفرة لديه: المؤسساتية، والخاصة بمؤسسته، والخاصة بالأنشطة البدنية والرياضية، وأخيراً الخاصة بقسمه؛ - السنة الدراسية مقسّمة إلى عدة «دورات» (3 دورات لكل وحدة)؛ مجموع الدورات يسهم في متابعة الأهداف المنشودة ويجب أن يكون مؤشراً على الاستمرارية والاتساق العمودي، ضامناً وحدة تخصص «التربية البدنية والرياضية». **ب. مراحل إعداد مشروع الدورة (SUR 20 POINTS) — ثماني مراحل، مع شرح كل مرحلة بوضوح وإعطاء أمثلة:** 1. Observation «évaluation diagnostique» (الملاحظة / التقييم التشخيصي)؛ 2. Recueil de données (جمع المعطيات)؛ 3. Modélisation (النمذجة)؛ 4. Analyse et interprétation (التحليل والتأويل)؛ 5. Acquisitions attendues (Connaissances) et prise de décision (المكتسبات المنتظرة والمعارف واتخاذ القرار)؛ 6. Objectifs «fixation des objectifs : séquences et séances» (الأهداف: تحديد الأهداف — تسلسلات وحصص)؛ 7. Situations (الوضعيات)؛ 8. évaluation (التقييم). وعلى المترشح أن يجيب عن سلسلة أسئلة موجّهة: - **1- Où suis-je ? (وضعية الانطلاق):** سؤال مرتبط بالتوجيهات البيداغوجية والبرنامج الوطني المنظِّم لتدريس التربية البدنية مع أخذ مشروع التربية البدنية بعين الاعتبار. ما أعرفه عن النشاط الداعم: الكفاية المستهدفة، الدخول إلى النشاط الذي أقترحه، التجهيزات وظروف عملي والخصوصيات المكانية والزمنية للعمل… وصياغة تصور لاختبار الملاحظة الذي سيوجّه المعلم. - **2- Avec qui je pars ? ما سلوكيات التلاميذ (التقييم التشخيصي):** التقييم التشخيصي هدفه الرئيسي تمكين المعلمين من ملاحظة الكفايات وتقدير النجاحات، وكذا الصعوبات المحتملة للمتعلمين في بداية دورة نشاط بدني رياضي. وهو يوفّر معالم بيداغوجية تسمح باتخاذ خيارات لتنظيم بقية التعلمات. هذا التقييم التشخيصي، بواسطة أداة ملاحظة (شبكة على المستويين الفردي والجماعي)، يسمح بجمع معطيات تُستثمر في النمذجة والتحليل والتأويل، قصد اتخاذ قرار بتخطيط التعلمات. - **3- Où je vais ? (تحديد المكتسبات المنتظرة من حيث المعارف، والتسلسلات والأهداف المرتبطة ارتباطاً وثيقاً بالوحدة والكفاية المستهدفة والهدف النهائي للدورة OTC):** لا يمكن تدريس كل شيء في دورة واحدة؛ يجب الاختيار والاحتفاظ بالأولويات. هذه الخيارات تنبع من تحليل السياق ونتائج التقييم التشخيصي والهدف النهائي للدورة. الأمر يتعلق بتحديد واضح إلى أين أريد أن أصل بتلاميذي، ووضع أولويات تستهدف التحولات المنشودة المعبَّر عنها في صيغة مكتسبات منتظرة (المعارف التصورية والسلوكية والإجرائية)؛ أي اختيار هدف دورة ملائم للوضعية المكتشَفة. ويجب أن يولّد الهدف التحولات المنشودة. - **4- Comment je fais pour transformer ? (محتويات التدريس واستراتيجيات التدخل):** محتويات التدريس التي يقترحها المعلم هي في قلب هذه المرحلة من إعداد المشروع التوقعي، الذي سيستهدف تسلسلين أو ثلاثة، بأربعة أو خمسة أهداف للحصص في كل تسلسل. «Les contenus d''enseignement sont les conditions que les élèves doivent intégrer pour transformer leurs actions» — J. Marsenach, INRP 1991، «EPS : Quel enseignement ?». وعلى المترشح أن يتطرق إلى اختيار الاستراتيجيات وأساليب التدريس الواجب اعتمادها، وتدبير القسم والتنظيم البشري والمكاني والزمني (الوضعيات، التمارين…)، وهي أمور حاسمة في هذه المرحلة. - **وأخيراً مرحلة التقييم:** كيف يخطط المعلم للتقييم؟ (تتبع التحولات والتحقق منها)؛ اختيار وضعية مرجعية؛ أزمنة التقييم؛ أشكال التقييم؛ أدوات التقييم. **ج. الخاتمة (SUR 4 POINTS):** على المترشح أن يختم تحليله بالتذكير بأهمية مفهوم المشروع في التربية البدنية وفائدته، وبالتحديد المشروع التوقعي للدورة، ثم ينهي بفتح الإشكالية المعالَجة. **د. التمثيل (SUR 8 POINTS):** أخيراً على المترشح أن يمثّل بمثال من جزء من مشروع توقعي (تسلسل بأربعة أهداف)، مع مراعاة الوحدة والكفاية والهدف النهائي للدورة للسنة الأولى، ونتائج اختبار الملاحظة. وعليه أن يرسم مستوى مهارة التلاميذ المعنيين مبرزاً العناصر التالية: - الإرسال الانفجاري (le renvoi explosif)؛ سوء تقدير مسار الكرة؛ تموضع وتنقل عشوائيان؛ لعب فردي؛ التفرج غالباً (souvent spectateur)؛ تجنّب الكرة (عند الفتيات)… **مبادئ أهداف التسلسل والأهداف الوسيطة (من المفتاح):** يجب أن تدور حول المبدأين التاليين: - التنظيم الفردي و/أو الجماعي داخل فضاء؛ - التموضع والتنقل لمنع الكرة من السقوط (الفضاء الأمامي والخلفي والجانبي، والفضاء المصغَّر أو المقيَّد) بإدخال تقنيات أساسية بسيطة: الإمساك ثم الإرسال (attraper lancer)، الإمساك ثم اللمس (attraper toucher)، الإمساك ثم الإرجاع (attraper renvoyer)… **شبكة تقييم السؤال المفتوح (من المفتاح، ص. 6):** | المعيار (Critère) | المؤشرات (Indicateurs) | |---|---| | Informations et connaissances | Relation avec le sujet · Référence et/ou auteurs · Définitions | | Problématique | Originalité · Faisabilité · Directrice du sujet | | Idées et Analyse | Pertinence des idées · Argumentation · Raisonnement et illustration | | Cohérence | Concordance entre les axes de traitement | | Maîtrise de la langue | Style · Orthographe · Grammaire et conjugaison | **مثال تسلسل بأربعة أهداف (صياغة استرشادية — ليست نصاً من المفتاح؛ مبنية على مبادئ التمثيل الرسمية أعلاه وعلى عناصر mesconcours):** *السلوكيات النمطية للمتعلمين المبتدئين (سنة أولى إعدادي، بلا تجربة سابقة في الكرة الطائرة):* خوف/تراجع أمام الكرة؛ ضربات غير دقيقة وغير متحكَّم فيها؛ نظرة مركَّزة على الكرة (لا على الفضاء ولا على الزملاء)؛ احتلال فوضوي للملعب (تكتل)؛ غياب التنقل نحو منطقة سقوط الكرة؛ لعب فردي بلا استمرارية ولا إرجاع منظم. *الأهداف الأربعة (متسقة مع الوحدة «استغلال الفضاء» والهدف النهائي OTC):* - **الهدف 1:** التنقل والتموضع بسرعة تحت مسار الكرة لإرجاعها نحو ملعب الخصم. - **الهدف 2:** إتقان التقنيات الأساسية للإرجاع (المنشطة «manchette» والتمريرة بأصابع اليدين «passe à dix doigts») لضمان استمرارية اللعب. - **الهدف 3:** استغلال فضاء اللعب (العمق والعرض) بوضع الكرة في الفضاءات الحرة من ملعب الخصم. - **الهدف 4:** الدفاع عن ملعبه بإعادة تموضع وفك ارتباط ملائمين (احتلال عقلاني للملعب في الاستقبال/الدفاع). كل هدف يُفصَّل في وضعيات تعلم متدرجة، مع معايير إنجاز ونجاح، ويخضع لتقييم تكويني.', false, '[{"id": "A", "text": "Étudier la conduite humaine individuelle dans différentes conditions."}, {"id": "B", "text": "Étudier le comportement humain et les relations qui existent entre les stimulations et les réponses de l''organisme."}, {"id": "C", "text": "Étudier le psychisme dans sa formation et ses transformations."}, {"id": "D", "text": "Identifier les différences individuelles stables et les grands traits de personnalité."}]'::jsonb, ARRAY['B']::text[], 'السلوكية تدرس السلوك القابل للملاحظة عبر علاقات المثير–الاستجابة (S–R).', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2020) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2020_lycee_q61', 'exam_eps_2020_lycee', 61, 'مشروع الدورة — الكرة الطائرة', 'L''élaboration d''un projet de cycle s''avère une démarche didactique très importante dans tout processus enseignement-apprentissage. Partant d''un projet d''EPS, montrez la place et l''importance de cette démarche dans le processus enseignement-apprentissage et analysez les différentes étapes indispensables à l''élaboration d''un projet de cycle. Justifiez vos propos par un exemple de projet prévisionnel (Une séquence avec quatre objectifs) dans l''activité Volley-ball pour une classe de première année collégiale au premier semestre tout en ayant dressé les comportements des élèves de ce niveau face à l''activité volley ball. **Module :** L''exploitation de l''espace dans toutes ses dimensions. **Compétence Visée :** Employer les techniques de base des activités physiques et sportives. **OTC :** Rechercher le gain de la rencontre par un déplacement et un placement adéquats pour défendre son camp et renvoyer la balle vers le camp adverse. **Niveau des élèves :** pas de vécu antérieur vis-à-vis de l''APS Volley-ball. N.B : le traitement du sujet doit être uniquement en langue française.', false, '[]'::jsonb, ARRAY[]::text[], '**أ. المقدمة (SUR 8 POINTS):**
- تعريف بمفهوم المشروع البيداغوجي للتربية البدنية ومشروع الدورة، مع إبراز الرابط بين المفهومين؛
- شرح مكانة مشروع الدورة وأهميته وفائدته في تدريس التربية البدنية؛
- إظهار أن المعلم يبني تدريسه انطلاقاً من مختلف المعطيات المتوفرة لديه: المؤسساتية، والخاصة بمؤسسته، والخاصة بالأنشطة البدنية والرياضية، وأخيراً الخاصة بقسمه؛
- السنة الدراسية مقسّمة إلى عدة «دورات» (3 دورات لكل وحدة)؛ مجموع الدورات يسهم في متابعة الأهداف المنشودة ويجب أن يكون مؤشراً على الاستمرارية والاتساق العمودي، ضامناً وحدة تخصص «التربية البدنية والرياضية».

**ب. مراحل إعداد مشروع الدورة (SUR 20 POINTS) — ثماني مراحل، مع شرح كل مرحلة بوضوح وإعطاء أمثلة:**
1. Observation «évaluation diagnostique» (الملاحظة / التقييم التشخيصي)؛
2. Recueil de données (جمع المعطيات)؛
3. Modélisation (النمذجة)؛
4. Analyse et interprétation (التحليل والتأويل)؛
5. Acquisitions attendues (Connaissances) et prise de décision (المكتسبات المنتظرة والمعارف واتخاذ القرار)؛
6. Objectifs «fixation des objectifs : séquences et séances» (الأهداف: تحديد الأهداف — تسلسلات وحصص)؛
7. Situations (الوضعيات)؛
8. évaluation (التقييم).

وعلى المترشح أن يجيب عن سلسلة أسئلة موجّهة:
- **1- Où suis-je ? (وضعية الانطلاق):** سؤال مرتبط بالتوجيهات البيداغوجية والبرنامج الوطني المنظِّم لتدريس التربية البدنية مع أخذ مشروع التربية البدنية بعين الاعتبار. ما أعرفه عن النشاط الداعم: الكفاية المستهدفة، الدخول إلى النشاط الذي أقترحه، التجهيزات وظروف عملي والخصوصيات المكانية والزمنية للعمل… وصياغة تصور لاختبار الملاحظة الذي سيوجّه المعلم.
- **2- Avec qui je pars ? ما سلوكيات التلاميذ (التقييم التشخيصي):** التقييم التشخيصي هدفه الرئيسي تمكين المعلمين من ملاحظة الكفايات وتقدير النجاحات، وكذا الصعوبات المحتملة للمتعلمين في بداية دورة نشاط بدني رياضي. وهو يوفّر معالم بيداغوجية تسمح باتخاذ خيارات لتنظيم بقية التعلمات. هذا التقييم التشخيصي، بواسطة أداة ملاحظة (شبكة على المستويين الفردي والجماعي)، يسمح بجمع معطيات تُستثمر في النمذجة والتحليل والتأويل، قصد اتخاذ قرار بتخطيط التعلمات.
- **3- Où je vais ? (تحديد المكتسبات المنتظرة من حيث المعارف، والتسلسلات والأهداف المرتبطة ارتباطاً وثيقاً بالوحدة والكفاية المستهدفة والهدف النهائي للدورة OTC):** لا يمكن تدريس كل شيء في دورة واحدة؛ يجب الاختيار والاحتفاظ بالأولويات. هذه الخيارات تنبع من تحليل السياق ونتائج التقييم التشخيصي والهدف النهائي للدورة. الأمر يتعلق بتحديد واضح إلى أين أريد أن أصل بتلاميذي، ووضع أولويات تستهدف التحولات المنشودة المعبَّر عنها في صيغة مكتسبات منتظرة (المعارف التصورية والسلوكية والإجرائية)؛ أي اختيار هدف دورة ملائم للوضعية المكتشَفة. ويجب أن يولّد الهدف التحولات المنشودة.
- **4- Comment je fais pour transformer ? (محتويات التدريس واستراتيجيات التدخل):** محتويات التدريس التي يقترحها المعلم هي في قلب هذه المرحلة من إعداد المشروع التوقعي، الذي سيستهدف تسلسلين أو ثلاثة، بأربعة أو خمسة أهداف للحصص في كل تسلسل. «Les contenus d''enseignement sont les conditions que les élèves doivent intégrer pour transformer leurs actions» — J. Marsenach, INRP 1991، «EPS : Quel enseignement ?». وعلى المترشح أن يتطرق إلى اختيار الاستراتيجيات وأساليب التدريس الواجب اعتمادها، وتدبير القسم والتنظيم البشري والمكاني والزمني (الوضعيات، التمارين…)، وهي أمور حاسمة في هذه المرحلة.
- **وأخيراً مرحلة التقييم:** كيف يخطط المعلم للتقييم؟ (تتبع التحولات والتحقق منها)؛ اختيار وضعية مرجعية؛ أزمنة التقييم؛ أشكال التقييم؛ أدوات التقييم.

**ج. الخاتمة (SUR 4 POINTS):** على المترشح أن يختم تحليله بالتذكير بأهمية مفهوم المشروع في التربية البدنية وفائدته، وبالتحديد المشروع التوقعي للدورة، ثم ينهي بفتح الإشكالية المعالَجة.

**د. التمثيل (SUR 8 POINTS):** أخيراً على المترشح أن يمثّل بمثال من جزء من مشروع توقعي (تسلسل بأربعة أهداف)، مع مراعاة الوحدة والكفاية والهدف النهائي للدورة للسنة الأولى، ونتائج اختبار الملاحظة. وعليه أن يرسم مستوى مهارة التلاميذ المعنيين مبرزاً العناصر التالية:
- الإرسال الانفجاري (le renvoi explosif)؛ سوء تقدير مسار الكرة؛ تموضع وتنقل عشوائيان؛ لعب فردي؛ التفرج غالباً (souvent spectateur)؛ تجنّب الكرة (عند الفتيات)…

**مبادئ أهداف التسلسل والأهداف الوسيطة (من المفتاح):** يجب أن تدور حول المبدأين التاليين:
- التنظيم الفردي و/أو الجماعي داخل فضاء؛
- التموضع والتنقل لمنع الكرة من السقوط (الفضاء الأمامي والخلفي والجانبي، والفضاء المصغَّر أو المقيَّد) بإدخال تقنيات أساسية بسيطة: الإمساك ثم الإرسال (attraper lancer)، الإمساك ثم اللمس (attraper toucher)، الإمساك ثم الإرجاع (attraper renvoyer)…

**شبكة تقييم السؤال المفتوح (من المفتاح، ص. 6):**

| المعيار (Critère) | المؤشرات (Indicateurs) |
|---|---|
| Informations et connaissances | Relation avec le sujet · Référence et/ou auteurs · Définitions |
| Problématique | Originalité · Faisabilité · Directrice du sujet |
| Idées et Analyse | Pertinence des idées · Argumentation · Raisonnement et illustration |
| Cohérence | Concordance entre les axes de traitement |
| Maîtrise de la langue | Style · Orthographe · Grammaire et conjugaison |

**مثال تسلسل بأربعة أهداف (صياغة استرشادية — ليست نصاً من المفتاح؛ مبنية على مبادئ التمثيل الرسمية أعلاه وعلى عناصر mesconcours):**

*السلوكيات النمطية للمتعلمين المبتدئين (سنة أولى إعدادي، بلا تجربة سابقة في الكرة الطائرة):* خوف/تراجع أمام الكرة؛ ضربات غير دقيقة وغير متحكَّم فيها؛ نظرة مركَّزة على الكرة (لا على الفضاء ولا على الزملاء)؛ احتلال فوضوي للملعب (تكتل)؛ غياب التنقل نحو منطقة سقوط الكرة؛ لعب فردي بلا استمرارية ولا إرجاع منظم.

*الأهداف الأربعة (متسقة مع الوحدة «استغلال الفضاء» والهدف النهائي OTC):*
- **الهدف 1:** التنقل والتموضع بسرعة تحت مسار الكرة لإرجاعها نحو ملعب الخصم.
- **الهدف 2:** إتقان التقنيات الأساسية للإرجاع (المنشطة «manchette» والتمريرة بأصابع اليدين «passe à dix doigts») لضمان استمرارية اللعب.
- **الهدف 3:** استغلال فضاء اللعب (العمق والعرض) بوضع الكرة في الفضاءات الحرة من ملعب الخصم.
- **الهدف 4:** الدفاع عن ملعبه بإعادة تموضع وفك ارتباط ملائمين (احتلال عقلاني للملعب في الاستقبال/الدفاع).

كل هدف يُفصَّل في وضعيات تعلم متدرجة، مع معايير إنجاز ونجاح، ويخضع لتقييم تكويني.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2020-131/', true, 'التسلسل المقترح بأربعة أهداف صياغة استرشادية مبنية على مبادئ التمثيل الرسمية، ليست نصاً من المفتاح')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
