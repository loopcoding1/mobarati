-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية (دورة نونبر 2019)
-- ====================================================================
-- المصدر: ملف الحل solved/2019/التربية البدنية - دورة نونبر 2019.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2019-617/
--   حروف الأجوبة الستين من المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات، مطابقة تماماً مع mesconcours 60/60. المفتاح الرسمي هو الحكم عند أي تعارض (اقتراح مناصب يخالفه في 12 سؤالاً). عناصر إجابة السؤال المفتوح Q61 مقطوعة: الصفحة 5 مفقودة، وتنتهي عند فقرة «البيلان».
--   عدد الأسئلة: 61 (60 QCM + 1 مفتوحة)؛ موثّقة verified=true: 61؛ موسومة بملاحظة تحقق: 3.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2019_college', 'eps_college', 2019, 'eps_specialty', 'التربية البدنية والرياضية', 'امتحان التربية البدنية والرياضية (دورة نونبر 2019)', 'دورة نونبر 2019', 180, 61, 'الأجوبة من المفتاح الرسمي (عناصر الإجابة)؛ تطابق تام مع mesconcours 60/60؛ عناصر إجابة السؤال المفتوح مقطوعة (الصفحة 5 مفقودة)')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (61 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q1', 'exam_eps_2019_college', 1, 'التربية البدنية والرياضية', 'En EPS moduler la difficulté d''une tâche est le fait de :', false, '[{"id": "A", "text": "Fixer des niveaux de difficultés adéquats."}, {"id": "B", "text": "Rendre La tâche plus facile."}, {"id": "C", "text": "Rendre La tâche plus difficile."}, {"id": "D", "text": "Proposer une tâche avec des obstacles."}]'::jsonb, ARRAY['A']::text[], 'تعديل الصعوبة هو ضبط المهمة على مستوى كل تلميذ، في الاتجاهين معاً، لتبقى في متناوله دون أن تصبح تافهة. جعلها أسهل فقط (ب) أو أصعب فقط (ج) يأخذ اتجاهاً واحداً من الضبط. إضافة العوائق (د) وسيلة من وسائل تنويع المهمة لا غير. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q2', 'exam_eps_2019_college', 2, 'التربية البدنية والرياضية', 'Au niveau des alvéoles pulmonaires, les échanges gazeux air-sang sont possibles car :', false, '[{"id": "A", "text": "La différence de pression entre l''air de l''alvéole et le sang favorise la diffusion des gaz."}, {"id": "B", "text": "le sang pompe activement le dioxygène."}, {"id": "C", "text": "l''air de l''alvéole est injecté dans le sang."}, {"id": "D", "text": "le dioxyde de carbone aspire le dioxygène."}]'::jsonb, ARRAY['A']::text[], 'تعبر الغازات الغشاء السنخي الشعيري بالانتشار السلبي، من الوسط الذي يكون فيه ضغطها الجزئي أعلى نحو الوسط الذي يكون فيه أدنى (أ). لا يوجد نقل نشط (ب)، والهواء لا يُحقن كما هو في الدم (ج)، وثاني أكسيد الكربون لا يجذب الأكسجين (د): كل غاز يتبع تدرّجه الخاص. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q3', 'exam_eps_2019_college', 3, 'التربية البدنية والرياضية', 'Selon les orientations pédagogiques 2007 une faute grossière en Gymnastique est pénalisée par :', false, '[{"id": "A", "text": "Une déduction de 0.2 points."}, {"id": "B", "text": "Une déduction de 0.3 points."}, {"id": "C", "text": "Une déduction de 0.4 points"}, {"id": "D", "text": "Une déduction de 0.5 points"}]'::jsonb, ARRAY['B']::text[], 'سلّم التوجيهات البيداغوجية المدرسي يدرّج أخطاء التنفيذ حسب خطورتها، والمفتاح الرسمي يحدد الخطأ الجسيم في 0,3 نقطة (ب). القيم الأخرى لا تطابق هذا السلّم المدرسي، وهو أخف من سلّم المنافسات الفيدرالية. تنبيه: اقتراح مناصب يعطي D (0,5) وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q4', 'exam_eps_2019_college', 4, 'التربية البدنية والرياضية', 'En EPS, donner des feedbacks positifs se manifeste :', false, '[{"id": "A", "text": "Lorsque le professeur donne aux élèves la possibilité de jouer collectivement."}, {"id": "B", "text": "Lorsque le professeur réagit aux différentes prestations des élèves."}, {"id": "C", "text": "Lorsque le professeur crée une ambiance au sein du groupe."}, {"id": "D", "text": "Lorsque le professeur favorise l''échange interindividuel entre les membres du groupe."}]'::jsonb, ARRAY['B']::text[], 'التغذية الراجعة (feedback) معلومة يردّها الأستاذ إلى التلميذ عن أدائه، فهي تفترض رد فعل على ما قام به التلميذ للتو (ب). اللعب الجماعي (أ) وخلق الأجواء (ج) وتشجيع التبادل بين التلاميذ (د) أمور تتعلق بمناخ القسم والتنظيم، لا بالعودة على أداء. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q5', 'exam_eps_2019_college', 5, 'التربية البدنية والرياضية', 'En test de demi-Cooper, la filière énergétique dominante est :', false, '[{"id": "A", "text": "L''aérobie."}, {"id": "B", "text": "L''anaérobie alactique."}, {"id": "C", "text": "L''anaérobie lactique."}, {"id": "D", "text": "Les trois filières sont sollicitées de la même manière."}]'::jsonb, ARRAY['C']::text[], 'ديمي-كوبر سباق 6 دقائق بأقصى شدة، يتراكم خلاله اللاكتات بكثرة؛ وهذا ما يثبته المفتاح (ج). المسلك اللالاكتيكي (ب) لا يغطي إلا الثواني الأولى، والمسالك الثلاثة لا تسهم بحصص متساوية (د). تحفّظ: فيزيولوجياً يُنسب الجزء الأكبر من الطاقة في جهد أقصى مدته ست دقائق إلى المسلك الهوائي، ما يجعل (أ) قابلاً للدفاع عنه — انظر الملاحظة 3. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, 'تحفّظ على المفتاح: فيزيولوجياً يُنسب الجزء الأكبر من الطاقة في جهد أقصى مدته 6 دقائق إلى المسلك الهوائي (الملاحظة 3)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q6', 'exam_eps_2019_college', 6, 'التربية البدنية والرياضية', 'En anatomie, l''angulaire est :', false, '[{"id": "A", "text": "Un stabilisateur de l''omoplate."}, {"id": "B", "text": "Un élévateur de l''omoplate."}, {"id": "C", "text": "Un rotateur interne de l''omoplate."}, {"id": "D", "text": "Un rotateur externe de l''omoplate."}]'::jsonb, ARRAY['B']::text[], 'العضلة الزاويّة للكتف (angulaire de l''omoplate)، الممتدة من الفقرات العنقية إلى الزاوية العليا للكتف، وظيفتها الرئيسة رفع الكتف، ومن هنا اسمها الآخر: رافعة الكتف (ب). دورها في التثبيت (أ) أو مشاركتها في قلب الكتف (ج، د) ثانوي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q7', 'exam_eps_2019_college', 7, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009 La structure de la tâche d''apprentissage contient :', false, '[{"id": "A", "text": "-But - déroulement - consignes - critères de réussite - critères de réalisation."}, {"id": "B", "text": "-But - aménagement - consignes - critères de réussite - critères de réalisation."}, {"id": "C", "text": "-But - conditions de réalisation - consignes - critères de réussite - critères de réalisation - variables."}, {"id": "D", "text": "-objectif - variables - consignes - critères de réussite - critères de réalisation."}]'::jsonb, ARRAY['C']::text[], 'التوجيهات البيداغوجية تصف المهمة بستة عناصر: الهدف، وشروط الإنجاز، والتعليمات، ومعايير النجاح، ومعايير الإنجاز، والمتغيرات (ج). البديلان أ وب يغفلان المتغيرات التي تتيح تطوير المهمة. البديل د يستبدل الهدف بالمقصد، وهو يخص الحصة لا المهمة، ويحذف شروط الإنجاز. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q8', 'exam_eps_2019_college', 8, 'التربية البدنية والرياضية', 'Le ligament croisé antérieur s''oppose :', false, '[{"id": "A", "text": "A la translation antérieure du tibia par rapport au fémur."}, {"id": "B", "text": "Au glissement du tibia vers le coté latérale gauche."}, {"id": "C", "text": "A la torsion du genou."}, {"id": "D", "text": "Au déboitement de l''articulation du genou."}]'::jsonb, ARRAY['A']::text[], 'الرباط الصليبي الأمامي، المثبَّت أماماً على الهضبة الظنبوبية، يمنع الظنبوب من الانزلاق إلى الأمام تحت الفخذ؛ وهذا مبدأ اختبار الدرج الأمامي (أ). الانزلاقات الجانبية (ب) تكبحها أساساً الأربطة الجانبية. الالتواء (ج) والخلع (د) يشتركان فيهما عدة بنيات معاً. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q9', 'exam_eps_2019_college', 9, 'التربية البدنية والرياضية', 'Il est toujours souhaitable de faire commencer les apprentissages par :', false, '[{"id": "A", "text": "Des activités liées à la phase d''acquisition."}, {"id": "B", "text": "Des activités liées à la phase d''entrainement."}, {"id": "C", "text": "Des activités liées à la phase de transfert."}, {"id": "D", "text": "Des activités liées à la phase d''exploration."}]'::jsonb, ARRAY['D']::text[], 'يبدأ التعلم بمرحلة الاستكشاف، حيث يكتشف التلميذ النشاط ومشكلاته، وحيث يرصد الأستاذ مستواه (د). الاكتساب (أ) والتدريب (ب) والنقل (ج) تأتي بعد ذلك، بهذا الترتيب، كما يذكّر به أيضاً السؤال 14. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q10', 'exam_eps_2019_college', 10, 'التربية البدنية والرياضية', 'L''habileté est généralement définit par :', false, '[{"id": "A", "text": "La capacité d''obtenir de bons résultats en utilisant le minimum de ressources."}, {"id": "B", "text": "La capacité d''atteindre un résultat avec un maximum de certitude et un minimum de temps et d''énergie."}, {"id": "C", "text": "La capacité de produire le maximum de résultats avec le minimum d''effort et de dépense d''énergie"}, {"id": "D", "text": "La capacité qui rend apte à accomplir un acte ou une action donnée."}]'::jsonb, ARRAY['B']::text[], 'البديل ب يستعيد التعريف الكلاسيكي لكناب (Knapp): المهارة هي القدرة المكتسبة على بلوغ هدف بأقصى قدر من اليقين وأدنى قدر من الوقت والطاقة أو منهما معاً. البديلان أ وج يتحدثان عن المردود دون مفهوم يقين النتيجة. البديل د عام جداً ويصف أي استعداد. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q11', 'exam_eps_2019_college', 11, 'التربية البدنية والرياضية', 'Les pédagogies actives visent à :', false, '[{"id": "A", "text": "Activer le potentiel intellectuel de l''élève."}, {"id": "B", "text": "Impliquer l''élève dans la tâche d''enseignement apprentissage."}, {"id": "C", "text": "Transmettre des contenues aux élèves."}, {"id": "D", "text": "Rendre la tâche facile aux élèves."}]'::jsonb, ARRAY['B']::text[], 'البيداغوجيات النشطة تضع التلميذ في المركز وتجعله يشارك في بناء تعلماته (ب). نقل المحتويات (ج) هو منطق البيداغوجية الناقلة التي تنتقدها. البديل أ يحتفظ بالبعد الفكري فقط، والبديل د يخلط بين النشاط والسهولة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q12', 'exam_eps_2019_college', 12, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, les entrées des processus enseignement-apprentissage sont :', false, '[{"id": "A", "text": "L''entrée par compétences."}, {"id": "B", "text": "L''entrée par valeurs."}, {"id": "C", "text": "L''entrée par choix."}, {"id": "D", "text": "L''entrée par compétences, par valeurs et par choix."}]'::jsonb, ARRAY['D']::text[], 'التوجيهات البيداغوجية المغربية تعتمد ثلاث مداخل متكاملة: الكفاءات والقيم والاختيارات (د). البدائل أ وب وج تعطي كل منها مدخلاً واحداً فقط، وهو ناقص. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q13', 'exam_eps_2019_college', 13, 'التربية البدنية والرياضية', 'Suite à des fautes personnelles en basketball, quel est le nombre minimal de joueurs sur terrain induisant l''arrêt définitif du match :', false, '[{"id": "A", "text": "4."}, {"id": "B", "text": "2."}, {"id": "C", "text": "1."}, {"id": "D", "text": "3."}]'::jsonb, ARRAY['C']::text[], 'يمكن للفريق أن يواصل اللعب بلاعبين اثنين؛ ويتوقف المباراة ويخسرها الفريق بنقص اللاعبين عندما لا يبقى له إلا لاعب واحد على أرض الملعب (ج). بأربعة أو ثلاثة أو لاعبين (أ، د، ب) تستمر المباراة. المفتاح الرسمي يكتب الجواب «1.» فقط — انظر الملاحظة 8. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q14', 'exam_eps_2019_college', 14, 'التربية البدنية والرياضية', 'Dans un processus général d''acquisition d''une compétence retenue, cinq grandes phases mènent à l''acquisition d''une compétence qui sont en ordre :', false, '[{"id": "A", "text": "Exploration - Enrichissement - Intégration entrainement - Transfert - Apprentissage de base."}, {"id": "B", "text": "Exploration - Apprentissage de base - Enrichissement - Intégration entrainement - Transfert"}, {"id": "C", "text": "Exploration - Apprentissage de base - Intégration entrainement - Enrichissement - Transfert."}, {"id": "D", "text": "Exploration - Apprentissage de base - Intégration entrainement - Transfert - Enrichissement."}]'::jsonb, ARRAY['D']::text[], 'المفتاح يثبت الترتيب: استكشاف، تعلم أساسي، إدماج وتدريب، نقل، ثم إثراء (د): التلميذ يعيد استثمار مكتسباته في وضعيات أخرى قبل أن يوسّعها. البديل أ يضع التعلم الأساسي في الآخر، وهذا بلا معنى. البديلان ب وج يضعان الإثراء قبل النقل. تنبيه: اقتراح مناصب يعطي B وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q15', 'exam_eps_2019_college', 15, 'التربية البدنية والرياضية', 'En anatomie le coraco brachial est :', false, '[{"id": "A", "text": "Un balanceur avant du bras."}, {"id": "B", "text": "Un rotateur interne du bras."}, {"id": "C", "text": "Un rotateur externe du bras."}, {"id": "D", "text": "Un balanceur arrière du bras."}]'::jsonb, ARRAY['D']::text[], 'العضلة الغرابية العضدية تمتد من الناتئ الغرابي للكتف إلى الوجه الداخلي للعضد وتعمل على مفصل الكتف في المستوى السهمي، ما يستبعد الدوران (ب، ج). المفتاح الرسمي يثبت (د). تحفّظ: كتب التشريح تصفها مع ذلك عاطفةً (fléchisseur / antépulseur) ومقرِّبة للذراع، أي ما يقابل البديل أ (balanceur avant) — انظر الملاحظة 4. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, 'تحفّظ على المفتاح: كتب التشريح تصف العضلة الغرابية العضدية عاطفةً ومقرِّبة للذراع عادةً (الملاحظة 4)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q16', 'exam_eps_2019_college', 16, 'التربية البدنية والرياضية', 'En gymnastique, le mouvement de translation signifie que :', false, '[{"id": "A", "text": "Le corps se déplace à une vitesse plus supérieure pour vaincre la force de la pesanteur."}, {"id": "B", "text": "Le corps se déplace à la même vitesse et dans la même direction."}, {"id": "C", "text": "Le corps se déplace autour d''un axe donné et selon un plan bien précis."}, {"id": "D", "text": "Le corps se déplace en horizontal à une vitesse plus inférieure"}]'::jsonb, ARRAY['B']::text[], 'في الانتقال (translation) تتحرك كل نقاط الجسم بالسرعة نفسها وفي الاتجاه نفسه (ب). أما الدوران حول محور (ج) فيعرّف الدوران. البديلان أ ود يضيفان شرطي سرعة لا يدخلان في التعريف. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q17', 'exam_eps_2019_college', 17, 'التربية البدنية والرياضية', 'La notion de « contenus d''enseignement-apprentissage » en EPS renvoie :', false, '[{"id": "A", "text": "Aux savoirs enseignés et aux connaissances que constituent les élèves au fil du temps."}, {"id": "B", "text": "Aux savoirs, aux savoir-faire les plus immédiatement identifiables."}, {"id": "C", "text": "Aux savoirs, aux savoir-faire, aux comportements et attitudes attendus par les élèves."}, {"id": "D", "text": "Aux connaissances déclaratives se basant sur des faits et des informations."}]'::jsonb, ARRAY['C']::text[], 'محتويات التعليم تغطي كل ما يجب أن يكتسبه التلميذ: معارف ومهارات، وأيضاً سلوكات ومواقف (ج). البديل ب يتوقف عند المهارات الظاهرة، والبديل د عند المعارف التصريحية فقط. البديل أ يصف ما يبنيه التلميذ مع مرور الوقت، لا ما يستهدفه الأستاذ. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q18', 'exam_eps_2019_college', 18, 'التربية البدنية والرياضية', 'La ressource dominante sollicitée par le volley ball :', false, '[{"id": "A", "text": "Bioénergétique."}, {"id": "B", "text": "Bio affectif."}, {"id": "C", "text": "Bio informationnelle."}, {"id": "D", "text": "Bio mécanique."}]'::jsonb, ARRAY['C']::text[], 'الكرة الطائرة تتطلب قبل كل شيء قراءة المسارات والتوقع واتخاذ القرار بسرعة في التموضع: إنها المورد البيومعلوماتي (ج). الجهود فيها قصيرة تتخللها فترات توقف، فالمورد البيوطاقي (أ) ليس العامل المحدِّد. البعدان الوجداني (ب) والميكانيكي (د) يتدخلان بدرجة أقل. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q19', 'exam_eps_2019_college', 19, 'التربية البدنية والرياضية', 'Les muscles de l''aine sont :', false, '[{"id": "A", "text": "Muscles adducteurs qui amènent la jambe vers l''axe central du corps."}, {"id": "B", "text": "Muscles qui stabilisent l''articulation de la hanche quand un seul pied est en contact avec le sol."}, {"id": "C", "text": "Muscles fléchisseurs de la hanche."}, {"id": "D", "text": "Muscles qui réagissent contre la cambrure du rachis lors de la flexion de la hanche."}]'::jsonb, ARRAY['A']::text[], 'عضلات المغبن (aine) هي مقرِّبات الفخذ (المقرِّب الطويل والقصير والكبير، والعضلة المشطية، والعضلة الرشيقة) التي تقرّب الطرف السفلي من محور الجسم (أ). التثبيت في الدعم على قدم واحدة (ب) يعود أساساً إلى العضلتين الألويتين الوسطى والصغرى، وثني الورك (ج) يعود أولاً إلى العضلة القطنية الحرقفية. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q20', 'exam_eps_2019_college', 20, 'التربية البدنية والرياضية', 'Lors d''un saut de mains, il faut :', false, '[{"id": "A", "text": "Réaliser une poussée excentrique au moment de l''impulsion."}, {"id": "B", "text": "Chercher une grande tonicité générale avec un alignement des segments et aller poser loin les mains sans temps de suspension."}, {"id": "C", "text": "Créer une énergie potentielle en élevant le centre de gravité (G) par une prise d''élan à l''appui abdominal."}, {"id": "D", "text": "Acquérir une vitesse horizontale avant l''impulsion des jambes transformée en énergie de rotation."}]'::jsonb, ARRAY['B']::text[], 'لنجاح قفزة اليدين يجب أن يبقى الجسم مشدوداً ومستقيماً، وأن توضع اليدان بعيداً إلى الأمام دون مرحلة طيران قبل الدعم (ب). الدفع يتم بانقباض مركزي لا لا مركزي (أ). الدعم البطني (ج) لا يخص هذا العنصر. تنبيه: اقتراح مناصب يعطي D وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q21', 'exam_eps_2019_college', 21, 'التربية البدنية والرياضية', 'En anatomie l''anconé est :', false, '[{"id": "A", "text": "Un extenseur du coude."}, {"id": "B", "text": "Un extenseur des doigts."}, {"id": "C", "text": "Un fléchisseur du coude"}, {"id": "D", "text": "Un supinateur de l''avant-bras."}]'::jsonb, ARRAY['A']::text[], 'العضلة المرفقية (anconé)، وهي عضلة صغيرة ممتدة من اللقيمة الوحشية إلى الزج، تكمل العضلة ثلاثية الرؤوس وتمد المرفق (أ). مد الأصابع (ب) يعود إلى باسطة الأصابع، وثني المرفق (ج) إلى العضلة ذات الرأسين والعضدية، والاستلقاء (د) إلى العضلة المستلقية القصيرة وذات الرأسين. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q22', 'exam_eps_2019_college', 22, 'التربية البدنية والرياضية', 'En biomécanique gymnique, le moment cinétique est :', false, '[{"id": "A", "text": "La durée convenable pour un balancement du corps."}, {"id": "B", "text": "Le temps exécuté pour réaliser un élément gymnique."}, {"id": "C", "text": "La quantité du mouvement de rotation que possède un corps."}, {"id": "D", "text": "La durée du temps pour réaliser une évolution du corps dans une trajectoire."}]'::jsonb, ARRAY['C']::text[], 'الزخم الزاوي (moment cinétique) يقيس كمية حركة الدوران التي يملكها الجسم: حاصل ضرب عزم قصوره الذاتي في سرعته الزاوية (ج). البدائل الثلاثة الأخرى تتحدث عن المدة، بينما الأمر لا يتعلق بزمن. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q23', 'exam_eps_2019_college', 23, 'التربية البدنية والرياضية', 'En rugby à 15, la première ligne est composée :', false, '[{"id": "A", "text": "De 3 joueurs et un talonneur."}, {"id": "B", "text": "D''un ½ de mêlée et 2 trois quart."}, {"id": "C", "text": "De 2 joueurs et un talonneur."}, {"id": "D", "text": "D''un ½ mêlée et ½ d''ouverture."}]'::jsonb, ARRAY['C']::text[], 'الخط الأول في التشكيلة يجمع الركيزتين والخطّاف (talonneur) الموضوع بينهما، أي ثلاثة لاعبين (ج). البديل أ يحسب لاعباً زائداً. نصف التشكيلة ونصف الافتتاح (ب، د) يشكلان المفصلة وليسا من المهاجمين. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q24', 'exam_eps_2019_college', 24, 'التربية البدنية والرياضية', 'En EPS, une modélisation didactique renvoie à :', false, '[{"id": "A", "text": "Une proposition d''un cadre de référence par la mise en œuvre des principes didactiques."}, {"id": "B", "text": "Un processus d''analyse des invariants didactiques."}, {"id": "C", "text": "Un traitement des objets disciplinaires à enseigner."}, {"id": "D", "text": "Une dimension réflexive de la didactique sur ses propres processus."}]'::jsonb, ARRAY['D']::text[], 'المفتاح يعرّف النمذجة الديداكتيكية بأنها النظرة التي تلقيها الديداكتيك على مساراتها الخاصة، لبناء تمثيل لها ومساءلتها (د). معالجة المواضيع المراد تدريسها (ج) تخص النقل الديداكتيكي. البديلان أ وب يصفان مرحلتي عمل لا طبيعة النمذجة. تنبيه: اقتراح مناصب يعطي A وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q25', 'exam_eps_2019_college', 25, 'التربية البدنية والرياضية', 'En volley-ball, si un joueur effectue le service à la place du joueur concerné, l''arbitre ordonne :', false, '[{"id": "A", "text": "De refaire le service et que tous les joueurs doivent occuper leur position initiale."}, {"id": "B", "text": "Tous les points marqués lors de ce mauvais placement sont nuls tout en cédant le service à l''équipe adverse."}, {"id": "C", "text": "Que le joueur fautif doit être exclu immédiatement."}, {"id": "D", "text": "Que le joueur fautif recevra un avertissement."}]'::jsonb, ARRAY['B']::text[], 'الإرسال مكان اللاعب المعني خطأ في التناوب: الفريق يفقد الإرسال لصالح الخصم وتلغى النقاط المسجلة أثناء الخطأ (ب). لا يعاد الإرسال (أ)، وهذا الخطأ في اللعب لا يستدعي الإقصاء (ج) ولا الإنذار (د) اللذين يعاقبان السلوك. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q26', 'exam_eps_2019_college', 26, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, la modalité d''évaluation des connaissances procédurales en sports collectifs est :', false, '[{"id": "A", "text": "Le résultat de l''activité motrice mesurable."}, {"id": "B", "text": "Le résultat de l''activité motrice observable."}, {"id": "C", "text": "Le comportement moteur et la performance sportive."}, {"id": "D", "text": "La mise en action sur l''aspect collectif de l''apprentissage lors de la notation."}]'::jsonb, ARRAY['B']::text[], 'في الرياضات الجماعية يُقيَّم أداء التلميذ بملاحظة ما ينجزه في اللعب، عبر شبكات ومؤشرات (ب). النتيجة القابلة للقياس (أ) تناسب الأنشطة المرقّمة كألعاب القوى. البديل ج يخلط بين السلوك والأداء، والبديل د لا يصف كيفية للتقييم. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q27', 'exam_eps_2019_college', 27, 'التربية البدنية والرياضية', 'En EPS, les pratiques sociales de références signifient :', false, '[{"id": "A", "text": "L''ensemble des liens entre les buts et les contenus d''enseignement."}, {"id": "B", "text": "L''ensemble des activités permettant à l''élève de vivre des situations variées."}, {"id": "C", "text": "L''ensemble des savoirs élaborés et pratiquées dans des institutions jouissant d''une reconnaissance sociale."}, {"id": "D", "text": "L''ensemble des liens entre les tâches proposées et les rôles sociaux."}]'::jsonb, ARRAY['C']::text[], 'بحسب مارتينان (Martinand)، الممارسات الاجتماعية المرجعية هي الأنشطة والمعارف المُعدّة خارج المدرسة، في مؤسسات معترف بها اجتماعياً (أندية، اتحادات)، وتُتخذ مرجعاً للتعليم (ج). البديلان أ ود يصفان علاقات داخلية في الدرس، والبديل ب ما يعيشه التلميذ في القسم. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q28', 'exam_eps_2019_college', 28, 'التربية البدنية والرياضية', 'En anatomie, le pectiné est :', false, '[{"id": "A", "text": "Extenseur partiel du genou."}, {"id": "B", "text": "Fléchisseur dorsale et stabilisateur du genou."}, {"id": "C", "text": "Extenseur et abducteur de la hanche."}, {"id": "D", "text": "Un adducteur, fléchisseur, rotateur externe de la hanche."}]'::jsonb, ARRAY['D']::text[], 'العضلة المشطية (pectiné)، الممتدة من العانة إلى الفخذ، لا تعبر إلا الورك: فهي مقرِّبة وعاطفة ومدوِّرة خارجية للورك (د). ولأنها لا تعبر الركبة، يستبعد البديلان أ وب. البديل ج ينسب إليها الحركتين العكسيتين: المد والتبعيد. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q29', 'exam_eps_2019_college', 29, 'التربية البدنية والرياضية', 'Dans une course en durée la phase d''amortissement est :', false, '[{"id": "A", "text": "Semblable à celle de la course en vitesse."}, {"id": "B", "text": "Différente de la course de vitesse."}, {"id": "C", "text": "Totalement différente."}, {"id": "D", "text": "Plus ou moins identique."}]'::jsonb, ARRAY['C']::text[], 'في سباق التحمل توضع القدم أكثر انبساطاً ويكون الامتصاص أطول وأكثر ليونة؛ وفي السرعة يكون الدعم على مقدمة القدم بامتصاص قصير جداً وتفاعلي. المفتاح يثبت أن المرحلتين مختلفتان تماماً (ج)، ما يستبعد أ ود. البديل ب في الاتجاه نفسه لكن بصياغة أقل حدة — انظر الملاحظة 5. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q30', 'exam_eps_2019_college', 30, 'التربية البدنية والرياضية', 'En réalisant la planche faciale, les mouvements de l''articulation de la hanche s''effectuent selon :', false, '[{"id": "A", "text": "Plan sagittal, plan frontal, plan transversal."}, {"id": "B", "text": "Plan sagittal, plan transversal."}, {"id": "C", "text": "Plan frontal"}, {"id": "D", "text": "Plan frontal, plan sagittal."}]'::jsonb, ARRAY['A']::text[], 'الورك مفصل بثلاث درجات حرية. في الوقوف على اليدين بوضعية اللوح (planche faciale) ترتفع الساق الحرة في المد (المستوى السهمي) بينما يتحكم اللاعب في تبعيد الفخذ (المستوى الجبهي) ودوران الحوض (المستوى المستعرض) (أ). البدائل ب وج ود تغفل مستوى واحداً على الأقل. صياغة السؤال قورنت حرفياً مع الورقة. تنبيه: اقتراح مناصب يعطي B وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q31', 'exam_eps_2019_college', 31, 'التربية البدنية والرياضية', 'En EPS, le système didactique se compose :', false, '[{"id": "A", "text": "D''un sujet apprenant, l''école et la société."}, {"id": "B", "text": "Des savoirs, savoir-faire et savoir être."}, {"id": "C", "text": "D''un contenu, un enseignant et un apprenant."}, {"id": "D", "text": "D''un objet d''étude, un programme et un contexte."}]'::jsonb, ARRAY['C']::text[], 'النظام الديداكتيكي هو المثلث الذي يربط المعرفة (المحتوى) والأستاذ والمتعلم (ج). البديل ب لا يذكر إلا أنواع المعارف، والبديلان أ ود يخلطان عناصر من السياق المؤسساتي الخارج عن هذا النظام. صياغة السؤال قورنت حرفياً مع الورقة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q32', 'exam_eps_2019_college', 32, 'التربية البدنية والرياضية', 'Le seuil anaérobie représente :', false, '[{"id": "A", "text": "L''intensité du travail où la consommation d''O2 pour lesquelles le métabolisme anaérobie commence à intervenir."}, {"id": "B", "text": "La durée du travail où la consommation d''O2 pour lesquelles le métabolisme anaérobie commence à intervenir."}, {"id": "C", "text": "L''intensité du travail où la consommation d''O2 pour lesquelles le métabolisme anaérobie finit d''intervenir."}, {"id": "D", "text": "La durée du travail où la consommation d''O2 pour lesquelles le métabolisme anaérobie finit d''intervenir."}]'::jsonb, ARRAY['A']::text[], 'العتبة اللاهوائية شدة جهد، أو استهلاك الأكسجين المقابل لها، يبدأ عندها الأيض اللاهوائي بالتدخل بشكل واضح ويتراكم اللاكتات (أ). ليست مدة (ب، د)، وما بعد العتبة تزداد الحصة اللاهوائية بدل أن تتوقف (ج). صياغة السؤال قورنت حرفياً مع الورقة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q33', 'exam_eps_2019_college', 33, 'التربية البدنية والرياضية', 'Lors d''un service flottant en volley Ball, il s''agit :', false, '[{"id": "A", "text": "De rabattre fortement la main au moment de la frappe."}, {"id": "B", "text": "De smasher la balle pour lui imprimer de la vitesse."}, {"id": "C", "text": "De stopper le geste au moment précis de l''impact."}, {"id": "D", "text": "De frapper la balle violemment pour prendre de vitesse l''adversaire."}]'::jsonb, ARRAY['C']::text[], 'الإرسال العائم يقوم على ضرب الكرة في مركزها ثم إيقاف الذراع لحظة الاصطدام، لئلا تُعطى أي دوران: فتصبح مسارها غير منتظم (ج). خفض اليد (أ) يعطي الكرة أثراً، وهذا مبدأ الإرسال المُسحَّق أو المقطوع. البديلان ب ود يبحثان عن السرعة لا عن الطفو. صياغة السؤال قورنت حرفياً مع الورقة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q34', 'exam_eps_2019_college', 34, 'التربية البدنية والرياضية', 'La catégorie « individuelle » au niveau international en Gymnastique Rythmique a comme exigences :', false, '[{"id": "A", "text": "Présentation de 2 engins sur les 5 possibles."}, {"id": "B", "text": "Présentation de 4 engins sur les 5 possibles."}, {"id": "C", "text": "Présentation de 3 engins sur les 5 possibles."}, {"id": "D", "text": "Présentation de 5 engins sur les 5 possibles."}]'::jsonb, ARRAY['B']::text[], 'في الجمباز الإيقاعي تقدم لاعبة الفردي على المستوى الدولي تمريناً بأربعة من الأجهزة الخمسة (الحبل، الطوق، الكرة، الصولجانان، الشريط)، ويتغير الجهاز المستبعد حسب الدورة التي يحددها الاتحاد الدولي (ب). الأعداد المقترحة في أ وج ود لا تطابق هذه القاعدة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q35', 'exam_eps_2019_college', 35, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, la classification des APS se fait comme suit :', false, '[{"id": "A", "text": "Habileté motrice ouverte et habileté motrice fermée."}, {"id": "B", "text": "Sport individuel et sport collectif."}, {"id": "C", "text": "Socio motrice et psychomotrice."}, {"id": "D", "text": "Sport de démarquage - sport de renvoie - gymnastique au sol - athlétisme."}]'::jsonb, ARRAY['D']::text[], 'التوجيهات البيداغوجية تجمّع الأنشطة البدنية والرياضية المدرَّسة في رياضات التمييز (démarquage) ورياضات الإرجاع (renvoi) والجمباز الأرضي وألعاب القوى (د). المهارات المفتوحة والمغلقة (أ) من بولتون (Poulton)، والتقابل الاجتماعي-الحركي والنفسي-الحركي (ج) من بارلبا (Parlebas): تصنيفان نظريان لا تصنيف البرنامج. البديل ب تمييز شائع لكنه موجز جداً. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q36', 'exam_eps_2019_college', 36, 'التربية البدنية والرياضية', 'La respiration cellulaire se déroule selon la succession des étapes suivantes :', false, '[{"id": "A", "text": "La glycolyse - cycle de Krebs - formation du pyruvate - oxydation phosphorylante."}, {"id": "B", "text": "La glycolyse - formation du pyruvate - cycle de Krebs - oxydation phosphorylante."}, {"id": "C", "text": "La glycolyse - cycle de Krebs - oxydation phosphorylante - formation du pyruvate."}, {"id": "D", "text": "La glycolyse - formation du pyruvate - oxydation phosphorylante - cycle de Krebs."}]'::jsonb, ARRAY['B']::text[], 'التحلل السكري ينتهي بالبيروفات الذي يدخل الميتوكوندريا ويغذي دورة كريبس؛ ثم تعاد أكسدة الإنزيمات المساعدة المختزلة الناتجة عن الدورة عبر السلسلة التنفسية، أي الفسفرة التأكسدية (ب). البديلان أ وج يضعان البيروفات بعد دورة كريبس بينما هو نقطة انطلاقها، والبديل د يعكس المرحلتين الأخيرتين. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q37', 'exam_eps_2019_college', 37, 'التربية البدنية والرياضية', 'L''approche didactique en EPS est :', false, '[{"id": "A", "text": "Un cadre théorique proposant le programme d''enseignement en EPS."}, {"id": "B", "text": "Un outil pour la construction des séquences didactiques."}, {"id": "C", "text": "Une opération pour la prise en compte des conditions du travail."}, {"id": "D", "text": "Un canevas cherchant à faciliter la tâche des enseignants."}]'::jsonb, ARRAY['B']::text[], 'المفتاح يقدّم المقاربة الديداكتيكية أداة في خدمة الأستاذ لبناء متتالياته: تحليل النشاط واختيار المحتويات وتنظيمها (ب). هي لا تحدد البرنامج (أ)، فذلك من شأن المؤسسة. البديلان ج ود يختزلانها في قيد مادي أو في مجرد تسهيل. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q38', 'exam_eps_2019_college', 38, 'التربية البدنية والرياضية', 'Dans le cadre d''une habileté motrice fermée le facteur fondamental de réussite est :', false, '[{"id": "A", "text": "La nature du mouvement dépend d''un schéma moteur pré-établi."}, {"id": "B", "text": "Le degré de stabilité et le caractère prévisible de l''environnement tout le long de l''exécution."}, {"id": "C", "text": "La qualité du mouvement lui-même alors que la perception et la décision qui s''ensuit sur le choix de ce mouvement sont absents."}, {"id": "D", "text": "L''enchainement sériel des actions pour former une action nouvelle plus compliquée."}]'::jsonb, ARRAY['A']::text[], 'في المهارة المغلقة لا يتغير المحيط: النجاح يكمن في إعادة إنتاج مخطط حركي محدد مسبقاً بأمانة (أ). البديل ب يصف الشرط الذي يعرّف المهارة المغلقة لا عامل النجاح. البديل ج يذهب بعيداً، فالإدراك لا يغيب تماماً أبداً، والبديل د يصف مهارة متسلسلة. تنبيه: اقتراح مناصب يعطي C وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q39', 'exam_eps_2019_college', 39, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, le module d''enseignement en EPS est :', false, '[{"id": "A", "text": "Une unité de temps."}, {"id": "B", "text": "Une unité d''apprentissage et une unité de temps."}, {"id": "C", "text": "Une durée qui varie selon les conditions de chaque activité physique et sportive."}, {"id": "D", "text": "Une durée déterminée sous forme d''un certains nombres de séquences."}]'::jsonb, ARRAY['B']::text[], 'في التوجيهات البيداغوجية، الوحدة (module) هي في آن واحد وحدة تعلم، منظمة حول كفاءة، ووحدة زمن (ب). البديلان أ ود يحتفظان بالبعد الزمني فقط. البديل ج يجعل مدتها تتغير حسب النشاط، وهو ما لا ينص عليه النص. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q40', 'exam_eps_2019_college', 40, 'التربية البدنية والرياضية', 'En cas d''accident scolaire pendant le cours d''EPS, l''enseignant doit :', false, '[{"id": "A", "text": "Ne pas intervenir et attendre les secours."}, {"id": "B", "text": "Ecrire un rapport détaillé de l''accident, faire les premiers secours, prévenir l''administration."}, {"id": "C", "text": "Faire les premiers secours, prévenir l''administration, écrire un rapport détaillé de l''accident."}, {"id": "D", "text": "Faire les premiers secours, écrire un rapport détaillé de l''accident, prévenir l''administration."}]'::jsonb, ARRAY['C']::text[], 'الأولوية للتلميذ المصاب: الإسعافات الأولية أولاً، ثم يُبلَّغ الإدارة لتنظيم التكفل وإخبار الأسرة، ويأتي التقرير المفصل في الآخر (ج). عدم التدخل (أ) خطأ. البديلان ب ود يقدّمان التقرير على إبلاغ الإدارة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q41', 'exam_eps_2019_college', 41, 'التربية البدنية والرياضية', 'L''inclinaison ou la déviation radiale de la main désigne :', false, '[{"id": "A", "text": "L''inclinaison de la main vers l''intérieur."}, {"id": "B", "text": "L''inclinaison de la main vers l''extérieur."}, {"id": "C", "text": "L''inclinaison de la main vers le bas."}, {"id": "D", "text": "L''inclinaison de la main vers le haut"}]'::jsonb, ARRAY['B']::text[], 'في الوضعية التشريحية، الكعبرة (radius) على الحافة الخارجية للساعد، جهة الإبهام: فالانحراف الكعبري يميل اليد إذن نحو الخارج (ب). الميل نحو الداخل (أ) هو الانحراف الزندي. الحركتان نحو الأعلى والأسفل (ج، د) هما بسط وثني الرسغ. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q42', 'exam_eps_2019_college', 42, 'التربية البدنية والرياضية', 'A l''appel dans les sauts en athlétisme, l''abaissement du centre de gravité sur l''avant dernier appui est plus accentué au :', false, '[{"id": "A", "text": "Saut à la perche."}, {"id": "B", "text": "Saut en hauteur."}, {"id": "C", "text": "Saut en longueur."}, {"id": "D", "text": "Triple saut."}]'::jsonb, ARRAY['B']::text[], 'القفز العالي يتطلب تحويل جزء كبير من السرعة الأفقية إلى سرعة عمودية: خفض مركز الثقل على الدعم قبل الأخير فيه هو الأبرز (ب). في الطول والوثبة الثلاثية (ج، د) يحافظ القافز على مسار أكثر انخفاضاً للحفاظ على سرعته. وفي الزانة (أ) العصا هي التي تؤمن معظم الارتفاع. تنبيه: اقتراح مناصب يعطي C (longueur) وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q43', 'exam_eps_2019_college', 43, 'التربية البدنية والرياضية', 'L''organisation de la motricité volontaire prend sa source :', false, '[{"id": "A", "text": "Dans les corps cellulaires situés dans les différentes zones du SNC."}, {"id": "B", "text": "Dans les aires motrices cérébrales situées en avant du sillon central."}, {"id": "C", "text": "Dans les neurones afférents transportant l''information venue des récepteurs périphériques."}, {"id": "D", "text": "Dans les fibres qui lient le SNC et les cellules effectrices."}]'::jsonb, ARRAY['B']::text[], 'الحركة الإرادية تُبرمج في القشرة الحركية للفص الجبهي، أمام الثلم المركزي (المنطقة الحركية الأولية والمنطقتان قبل الحركية والحركية التكميلية) (ب). العصبونات الواردة (ج) تحمل المعلومة الحسية، والألياف الصادرة (د) لا تنقل إلا الأمر. البديل أ غامض جداً. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q44', 'exam_eps_2019_college', 44, 'التربية البدنية والرياضية', 'Qu''est-ce que la vasomotricité ?', false, '[{"id": "A", "text": "C''est la régulation de la circulation du sang."}, {"id": "B", "text": "C''est la coordination des mouvements."}, {"id": "C", "text": "C''est une maladie touchant les muscles posturaux."}, {"id": "D", "text": "C''est le ressenti dans une position inhabituelle."}]'::jsonb, ARRAY['A']::text[], 'الحركة الوعائية (vasomotricité) تعني تغيرات قطر الأوعية الدموية (تضيق وتوسع)، التي ينظم بها الجسم الدورة الدموية ويوزع التدفق، نحو العضلات النشطة أثناء الجهد مثلاً (أ). البدائل ب وج ود لا علاقة لها بالأوعية. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q45', 'exam_eps_2019_college', 45, 'التربية البدنية والرياضية', 'Selon les OP 2007/2009, la notation en gymnastique au sol se fait sur la base :', false, '[{"id": "A", "text": "De la composition : trois familles plus une série acrobatique ou chorégraphique."}, {"id": "B", "text": "Du cumul des déductions dans l''appréciation analytique dans la note maximale de l''exécution."}, {"id": "C", "text": "De la difficulté supérieure ne peut pas remplacer la difficulté inferieure."}, {"id": "D", "text": "De la difficulté manquante peut être partiellement remplacée par la difficulté inferieure."}]'::jsonb, ARRAY['D']::text[], 'المفتاح يثبت قاعدة السلّم المدرسي التي تقضي بأن الصعوبة الناقصة يمكن تعويضها جزئياً بعنصر من صعوبة أدنى (د). البديل ج يعلن عكس الممارسة: عنصر أصعب يمكن بالعكس أن يحل محل عنصر أسهل. البديلان أ وب يصفان جزأين من السلّم لا القاعدة المثبتة. تنبيه: اقتراح مناصب يعطي A وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q46', 'exam_eps_2019_college', 46, 'التربية البدنية والرياضية', 'Pour résoudre le problème des éléments perturbateurs en classe l''enseignant adopte :', false, '[{"id": "A", "text": "Un style d''enseignement autoritaire."}, {"id": "B", "text": "Un style d''enseignement transmissif."}, {"id": "C", "text": "Un style d''enseignement participatif."}, {"id": "D", "text": "Un style d''enseignement permissif."}]'::jsonb, ARRAY['C']::text[], 'المفتاح يثبت الأسلوب التشاركي (ج): إسناد أدوار ومسؤوليات إلى التلاميذ المزعجين يشركهم في الحصة بدل إبعادهم. الأسلوب السلطوي (أ) يُسكت الفوضى دون معالجة سببها. الأسلوب المتساهل (د) يفاقمها، والأسلوب الناقل (ب) لا يهتم بها. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q47', 'exam_eps_2019_college', 47, 'التربية البدنية والرياضية', 'En gymnastique au sol, le flic-flac est réalisé à partir :', false, '[{"id": "A", "text": "Ouverture - impulsion jambes - impulsion bras - fermeture."}, {"id": "B", "text": "Fermeture - impulsion jambe - ouverture - impulsion bras."}, {"id": "C", "text": "Impulsion jambe - ouverture - impulsion bras - fermeture."}, {"id": "D", "text": "Impulsion bras - fermeture - impulsion jambe - ouverture."}]'::jsonb, ARRAY['A']::text[], 'المفتاح يصف الفليك-فلاك بأنه فتح الجسم نحو الخلف، ثم دفع بالساقين، ثم دفع بالذراعين، ثم إغلاق يعيد القدمين إلى الأرض (أ). البديل ب يبدأ بالإغلاق والبديل د بالذراعين، ما يعكس منطق الانقلاب الخلفي. البديل ج يضع دفع الساقين قبل الفتح. تنبيه: اقتراح مناصب يعطي C وهو مخالف للمفتاح الرسمي. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q48', 'exam_eps_2019_college', 48, 'التربية البدنية والرياضية', 'Le concept qui relève spécifiquement de la terminologie de défense en foot ball est :', false, '[{"id": "A", "text": "La défense en ligne."}, {"id": "B", "text": "La défense homme à homme."}, {"id": "C", "text": "La défense mixte."}, {"id": "D", "text": "La défense de zone."}]'::jsonb, ARRAY['A']::text[], 'الدفاع في خط، حيث يصطف المدافعون للعب التسلل، خاص بكرة القدم (أ). أما الدفاع رجل لرجل ودفاع المنطقة والدفاع المختلط (ب، د، ج) فتوجد أيضاً في كرة السلة وكرة اليد: ليست خاصة بكرة القدم. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q49', 'exam_eps_2019_college', 49, 'التربية البدنية والرياضية', 'En football, l''arbitre ordonnera un coup franc direct lors :', false, '[{"id": "A", "text": "D''une obstruction sans intention de jouer le ballon."}, {"id": "B", "text": "D''un croche pied à l''adversaire."}, {"id": "C", "text": "D''une bousculade du gardien dans sa surface."}, {"id": "D", "text": "D''un dégagement défectueux du gardien de but."}]'::jsonb, ARRAY['B']::text[], 'عرقلة الخصم (croche-pied) من الأخطاء التي تعاقبها قوانين اللعبة بركلة حرة مباشرة (ب). العرقلة دون احتكاك (أ) تعطي ركلة حرة غير مباشرة. أما التخليص المعيب من الحارس (د) فليس خطأ ضد خصم. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q50', 'exam_eps_2019_college', 50, 'التربية البدنية والرياضية', 'Dans les principes de l''entrainement au milieu scolaire, un programme doit :', false, '[{"id": "A", "text": "Développer la puissance avant la capacité"}, {"id": "B", "text": "Développer la capacité avant la puissance."}, {"id": "C", "text": "Développer la capacité et la puissance en même temps."}, {"id": "D", "text": "Développer la puissance et la force avant la capacité."}]'::jsonb, ARRAY['B']::text[], 'مبدأ التدرج يقضي ببناء القدرة أولاً (الحجم ومدة الجهد) قبل القوة (الشدة) (ب). البدء بالقوة (أ، د) يعرّض التلميذ لأحمال لا يستطيع تحملها بعد، والعمل على كل شيء في آن واحد (ج) يلغي هذا التدرج. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q51', 'exam_eps_2019_college', 51, 'التربية البدنية والرياضية', 'Dans le système du contrôle nerveux et hormonal, le cervelet :', false, '[{"id": "A", "text": "Reçoit et intègre des informations provenant de nombreuses voies afférentes."}, {"id": "B", "text": "Accroit l''activité des motoneurones des muscles."}, {"id": "C", "text": "Participe à la transformation des informations afférentes fondamentales en usage conceptuelles significatives."}, {"id": "D", "text": "Aide à maintenir l''équilibre et à assurer des mouvements précis."}]'::jsonb, ARRAY['D']::text[], 'المخيخ ينظم التوازن والتوتر والتنسيق: يضبط الحركة الجارية لتكون دقيقة (د). هو يستقبل بالفعل كثيراً من الواردات (أ)، لكن ذلك وسيلة لا وظيفة. تحويل المعلومات إلى مفاهيم (ج) من شأن القشرة الترابطية، والبديل ب ليس دوره الخاص. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q52', 'exam_eps_2019_college', 52, 'التربية البدنية والرياضية', 'Selon les orientations pédagogiques de 2009, les exigences de difficulté en gymnastique pour la 2ème année collège sont :', false, '[{"id": "A", "text": "3A 1B 1C."}, {"id": "B", "text": "3A 3B 1C."}, {"id": "C", "text": "3B 2C 1D."}, {"id": "D", "text": "3A 2B 1C."}]'::jsonb, ARRAY['D']::text[], 'المفتاح الرسمي يثبت المتطلب الذي حددته التوجيهات البيداغوجية للسنة الثانية إعدادي: ثلاثة عناصر من الصعوبة A واثنان B وواحد C (د). التركيبات الأخرى المقترحة لا تطابق هذا المستوى في الوثيقة المرجعية. تنبيه: اقتراح مناصب لا يقدم أي جواب لهذا السؤال («ارجع إلى المرجع»). الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q53', 'exam_eps_2019_college', 53, 'التربية البدنية والرياضية', 'L''entrainement en anaérobie alactique peut engendrer :', false, '[{"id": "A", "text": "Une augmentation du stockage du glycogène et les acides gras."}, {"id": "B", "text": "Une élévation du taux de la créatine phosphate intramusculaire."}, {"id": "C", "text": "Une amélioration du stockage et du taux de glycogène intramusculaire."}, {"id": "D", "text": "Une diminution du tonus et de la force musculaire."}]'::jsonb, ARRAY['B']::text[], 'المسلك اللاهوائي اللالاكتيكي يستمد طاقته من فوسفات الكرياتين؛ والتدريب عليه بجهود قصيرة جداً وشديدة جداً يزيد مخزون العضلات من هذا الركيزة (ب). تكيفات الغليكوجين والأحماض الدهنية (أ، ج) تخص المسلكين اللبني والهوائي. البديل د عكس الأثر المطلوب. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q54', 'exam_eps_2019_college', 54, 'التربية البدنية والرياضية', 'En rugby, un Drop Gool est :', false, '[{"id": "A", "text": "Une pénalité tirée ballon au sol."}, {"id": "B", "text": "Un tir rebondissant au sol et passant les poteaux."}, {"id": "C", "text": "Tir au pied dépassant la ligne de l''embut."}, {"id": "D", "text": "Une action d''aplatir le ballon au-delà de la ligne de l''embut."}]'::jsonb, ARRAY['B']::text[], 'الضربة الساقطة (drop goal — والورقة تكتب «Drop Gool») هي ركلة بالقدم بعد الارتداد: يترك اللاعب الكرة، يضربها مباشرة بعد ارتدادها ويمررها بين القائمين فوق العارضة (ب). ركلة الجزاء تُسدد والكرة موضوعة على الأرض (أ)، وتسطيح الكرة خلف خط المرمى (د) هو محاولة (essai). الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q55', 'exam_eps_2019_college', 55, 'التربية البدنية والرياضية', 'Le système nerveux central dispose de :', false, '[{"id": "A", "text": "Deux voies efférentes."}, {"id": "B", "text": "cinq voies efférentes."}, {"id": "C", "text": "sept voies efférentes."}, {"id": "D", "text": "trois voies efférentes."}]'::jsonb, ARRAY['A']::text[], 'أوامر الجهاز العصبي المركزي تنطلق عبر مسلكين صادرين: المسلك الجسدي نحو العضلات الهيكلية، والمسلك المستقل (الخضري) نحو الأحشاء والأوعية والغدد (أ). الأعداد المقترحة في ب وج ود لا تطابق أي تصنيف. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q56', 'exam_eps_2019_college', 56, 'التربية البدنية والرياضية', 'En Basketball, on parle du coté faible pour designer :', false, '[{"id": "A", "text": "Les zones favorables de tir ou de distribution du ballon."}, {"id": "B", "text": "Le couloir de jeu direct."}, {"id": "C", "text": "Le couloir de jeu indirect."}, {"id": "D", "text": "Coté opposé du ballon favorable à une réception orientée du ballon face à la cible."}]'::jsonb, ARRAY['D']::text[], 'الجانب الضعيف هو نصف الملعب المقابل للجانب الذي توجد فيه الكرة؛ وهو أقل دفاعاً، فيتيح للمهاجم استقبال الكرة مواجهاً للسلة (د). جانب الكرة هو الجانب القوي. البدائل أ وب وج تصف مناطق أو ممرات لعب لا هذا التقابل. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q57', 'exam_eps_2019_college', 57, 'التربية البدنية والرياضية', 'Le risque préférentiel en EPS est :', false, '[{"id": "A", "text": "Le niveau subjectif de risque où l''élève estime que le rapport entre bénéfices et couts liés au comportement est maximal."}, {"id": "B", "text": "Renvoie à la dangerosité actuelle du risque et son degré de gravité."}, {"id": "C", "text": "En situation de risque, l''élève est incapable d''envisager les moyens mobilisables."}, {"id": "D", "text": "L''élève est confronté à une situation de risque hors du champ de ses expériences préalables."}]'::jsonb, ARRAY['A']::text[], 'عند دولينيير (Delignières)، الخطر المفضَّل هو مستوى الخطر الذي يختاره التلميذ عندما يقدّر أن نسبة الفوائد إلى التكاليف المرتبطة بسلوكه هي الأفضل (أ). الخطورة الحقيقية (ب) تقابل الخطر الموضوعي. البديلان ج ود يصفان وضعيات يتجاوز فيها الخطر التلميذ، لا مستوى خطر يفضّله. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q58', 'exam_eps_2019_college', 58, 'التربية البدنية والرياضية', 'Le temps d''engagement moteur est l''équivalent du :', false, '[{"id": "A", "text": "Temps passé effectivement en action motrice."}, {"id": "B", "text": "Temps passé effectivement dans l''apprentissage moteur y compris le temps de récupération"}, {"id": "C", "text": "Temps passé effectivement dans l''apprentissage global au cours de la séance"}, {"id": "D", "text": "Temps passé effectivement dans l''apprentissage des habiletés motrices."}]'::jsonb, ARRAY['A']::text[], 'زمن الانخراط الحركي هو الوقت الذي يكون فيه التلميذ فعلياً في نشاط حركي (أ). وهو يستثني أوقات الاستشفاء (ب) والانتظار والشرح. الزمن الإجمالي للحصة (ج) أطول بكثير. البديل د يقيّد المفهوم بالمهارات قيد التعلم فقط. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q59', 'exam_eps_2019_college', 59, 'التربية البدنية والرياضية', 'Les phases d''exécution d''un saut de table sont :', false, '[{"id": "A", "text": "Phase d''élan, impulsion, réception, phase d''appui."}, {"id": "B", "text": "Phase d''appui, élan, impulsion, réception."}, {"id": "C", "text": "Phase d''élan, impulsion, phase d''appui, réception."}, {"id": "D", "text": "Phase d''élan, phase d''appui, impulsion, réception."}]'::jsonb, ARRAY['C']::text[], 'قفزة الطاولة تتسلسل هكذا: سباق الاقتراب، ثم الدفع على الترامبولين، ثم دعم اليدين على الطاولة، ثم الهبوط على الأرض (ج). البديل أ يضع الاستقبال قبل الدعم، والبديل ب يبدأ بالدعم، والبديل د يضع الدعم على الطاولة قبل الدفع على الترامبولين. صياغة السؤال قورنت حرفياً مع الورقة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q60', 'exam_eps_2019_college', 60, 'التربية البدنية والرياضية', 'En gymnastique, le mouvement d''inertie signifie : (1ن) ## الجزء الثاني — سؤال مفتوح ### Q61 (40ن) Au regard des faibles performances décevantes enregistrées par les athlètes marocains lors du dernier mondial d''athlétisme de DOHA 2019, montrer comment le sport scolaire peut-il être un support de développement du sport civil ? N.B : - le traitement du sujet doit être uniquement en langue française. - rédiger le sujet dans les pages suivantes. صياغة السؤال قورنت حرفياً مع الورقة. **الجواب النموذجي: عناصر الإجابة الرسمية (من المفتاح الرسمي، ص. 3–4 — قُرئت حرفياً من الصور).** هي عناصر تقييم وليست نصاً نموذجياً كاملاً؛ يُنتظر من المرشح تحرير مقال بالفرنسية يغطيها: 1. **تحليل صياغة الموضوع.** على المرشح أولاً توضيح المفاهيم والعبارات المستعملة في عنوان الموضوع. 2. **التعليق على نتائج الدوحة 2019.** على المرشح أن يعلّق على ضعف أداء الرياضيين المغاربة ليُظهر اهتمامه بالمنافسات الرياضية الدولية التي يشارك فيها المغرب: على المرشح أن يذكر أن المغرب أشرك 17 رياضياً ولم تُحرز إلا ميدالية برونزية واحدة، مقترباً بشدة من حصيلة صفر ميدالية، ما منحه المرتبة 34 عالمياً، وهي مرتبة مخيبة جداً مقارنة بالمرتبة التي كان يحتلها من قبل، وهي الثانية إفريقياً والسابعة عالمياً. 3. **تعريفا الرياضة المدرسية والرياضة المدنية.** الرياضة المدرسية هي مجموع الأنشطة الرياضية الممارَسة داخل المؤسسات التعليمية في إطار الجمعية الرياضية المدرسية (ASS)، بتأطير من أساتذة التربية البدنية والرياضية، وتتوَّج بمنافسات محلية وجهوية ووطنية ودولية يبرز فيها التلاميذ مواهبهم وكفاءاتهم. أما الرياضة المدنية فهي ممارسة فيدرالية تنافسية مرخَّصة، أي منخرطة في مؤسسة تحدد قواعد اللعب وتحدد الأخلاق التي يجب أن تقوم عليها. على المرشح أن يميّز بين المفهومين ثم يبحث عن الجسور بينهما. 4. **الإشكالية.** مثلاً: بأي وجه يمكن للرياضة المدرسية أن تعزز الرياضة المدنية؟ أو: بأي شروط يمكن أن تكون مساعدة الرياضة المدرسية للرياضة المدنية أكثر إثماراً؟ ويمكن قبول إشكاليات أخرى مرتبطة بالموضوع. 5. **الحجج الأولى.** المدرسة المغربية تفتح الممارسة الرياضية أمام أكثر من ستة ملايين تلميذ: هذه الكتلة فرصة حقيقية للرياضة المدرسية ومادة أولية لا يُستهان بها لبناء رياضة جماهيرية ورياضة نخبة داخل المؤسسة التعليمية. صناع القرار واعون بهذه المعطيات ويؤكدون أن النهوض بالرياضة الوطنية يعتمد إلى حد كبير على استراتيجية حقيقية للنهوض بالرياضة المدرسية؛ ومثال يُذكر: إحداث مسلك رياضة-دراسة بمناسبة الدخول المدرسي 2018/2019. 6. **الموقف المُحاجج.** على المرشح أن يتخذ موقفاً من السؤال المركزي حول علاقة التأثير بين الرياضة المدرسية كداعم والرياضة المدنية، وأن يوضح أطروحته ويحاجج عنها؛ ثلاث أطروحات ممكنة: 1. نعم، النهوض بالرياضة المدرسية يمكن أن يشكل دعماً حقيقياً لتطوير الرياضة الوطنية. 2. لا (مع الحجاج). 3. نعم، لكن إذا استُوفي عدد من الشروط. 7. **التنويع (nuance).** إن جودة العرض البيداغوجي في الرياضة المدرسية هي التي يمكن أن تعطي دفعة حقيقية للرياضة المدنية. وعلى المرشح أيضاً أن يذكر حدود الممارسة في الرياضة المدرسية من حيث البنيات التحتية والمعدات والحجم الساعي. 8. **الشروط: فتح ورش إعادة هيكلة الرياضة المدرسية وحكامتها الرشيدة**، عبر المعايير التالية: تكثيف رزنامة المنافسات؛ تكثيف التدريبات بزيادة حجمها الساعي؛ تحسين المنشآت الرياضية ومعدات العمل؛ التأطير التربوي للرياضيين المدرسيين لضمان نجاحهم الدراسي؛ تحسين الكفاءات التقنية الاختيارية للأساتذة الذين يتولون تأطير الرياضيين المدرسيين؛ تهيئة شروط التحفيز، للمؤطرين وللرياضيين المدرسيين، من أجل مردود أفضل؛ إبرام اتفاقيات شراكة وتعاون مع الاتحادات الرياضية؛ الانفتاح على البلدان الأخرى ومنافستها. 9. **مؤشرات رياضة مدرسية تدعم فعلاً الرياضة المدنية:** ارتفاع عدد المرخَّصين في مختلف الاتحادات الرياضية؛ تحسن المستوى التقني للممارسين بجميع الفئات؛ نتائج أفضل في الترتيبات والميداليات. 10. **حدّ منهجي.** للخروج من التقديرات الذاتية حول أثر الرياضة المدرسية على الرياضة المدنية، لا بد من إجراء بحوث منهجية حول أعداد الرياضيين المدرسيين الذين انتقلوا بنجاح إلى الرياضة المدنية وحققوا أفضل النتائج وطنياً ودولياً؛ وبدونها لن نقدّم إلا تأويلات شخصية لا أساس لها. 11. **البيلان.** باستثناء بعض الأنشطة البدنية والرياضية التي يتألق فيها الرياضيون المدرسيون، كالجري نصف الطويل وسباق الضاحية (cross-country)، يبدو من الصعب بل من المستحيل الحديث عن أي أثر على الرياضة المدنية، أو على الأقل عن تحقيق نتائج رياضية مدرسية أفضل على الصعيدين العربي والدولي. ومن ثم يطرح سؤال يبدو حاسماً: إذا كانت الرياضة المدرسية تجد صعوبة كبيرة في فرض مكانتها على الصعيد العربي والدولي، فكيف يمكن أن تشكل دعماً لا يُستهان به للنهوض بالرياضة المدنية في بلادنا؟ وعلى المرشح أن يؤكد أن الحاجة ملحة إلى سياسة حقيقية للنهوض بالرياضة المدرسية تفرض نفسها على صناع القرار، لترتقي بها إلى مصاف الدول الكبرى ويكون لها الأثر المنشود على الرياضة المدنية. **⚠️ نهاية عناصر الإجابة الرسمية مقطوعة:** ملف المفتاح مرقَّم إلى الصفحة 5/5 لكنه يحتوي 4 صفحات فقط؛ الصفحة 5 مفقودة، وتنتهي العناصر الرسمية عند فقرة «البيلان» أعلاه. ما قد يكون في الصفحة 5 (خاتمة أو شبكة تنقيط) غير متاح في أي مصدر. **مخطط مقترح من مناصب (طرف ثالث — ليس عناصر رسمية):** - الإشكالية: بعد نتائج الدوحة 2019 المخيبة، كيف يمكن للرياضة المدرسية (التربية البدنية والجمعية الرياضية) أن تغذي الرياضة المدنية (الأندية والاتحادات والمستوى العالي) وتعززها؟ - المقدمة: حصيلة الدوحة 2019 (ميداليات مغربية قليلة، باستثناء 3000م موانع)؛ التمييز بين الرياضة المدرسية (FRMSS والجمعية الرياضية) والرياضة المدنية (الأندية والاتحادات)؛ الرهان: جعل المدرسة خزاناً للمواهب. - أولاً: الرياضة المدرسية قاعدة الهرم الرياضي — التعميم (كل الشباب يمرون بالمدرسة؛ التربية البدنية تعطي ثقافة حركية أساسية: الجري والقفز والرمي)؛ اكتشاف المواهب (اختبارات وتقييمات في التربية البدنية، ومنافسات مدرسية محلية وجهوية ووطنية)؛ تكوين القيم وذوق الجهد والوفاء للممارسة. - ثانياً: حدود هذا الارتباط حالياً — حجم ساعي مخفَّض، ونقص في البنيات التحتية (المضامير والقاعات) والمعدات؛ ضعف التنسيق بين FRMSS والاتحادات والأندية، وغياب تتبع التلاميذ المكتشفين؛ صعوبة التوفيق بين الدراسة والتدريب (غياب أقسام رياضة-دراسة في كثير من الجهات). - ثالثاً: مسارات لجعل الرياضة المدرسية رافعة — تعميم أقسام رياضة-دراسة ومراكز التكوين الجهوية بشراكة مع FRMA؛ اتفاقيات مدرسة-نادٍ: جسور وتقاسم المنشآت وتأطير مختلط؛ تكوين أساتذة التربية البدنية في الاكتشاف وتدريب الشباب وتثمين تنشيط الجمعية الرياضية؛ رزنامة منافسات مدرسية نوعية وتتبع المواهب (قاعدة بيانات وحصائل طبية-رياضية). - الخاتمة: الرياضة المدرسية لا تحل محل النادي بل تغذيه؛ ويلزم سياسة مندمجة (التربية الوطنية ووزارة الرياضة والاتحادات)، في ارتباط برؤية 2030 للرياضة (إجابة مرجّحة: يُرجى التحقق من التسمية الدقيقة للاستراتيجية السارية).', false, '[{"id": "A", "text": "Le fait de déterminer un ou plusieurs axes de rotation."}, {"id": "B", "text": "Le fait de mesurer la direction et la grandeur d''un corps en mouvement."}, {"id": "C", "text": "Le fait d''exprimer une quantité de mouvement que possède un corps."}, {"id": "D", "text": "Le fait de conserver l''élan d''un corps en mouvement."}]'::jsonb, ARRAY['D']::text[], 'القصور الذاتي هو ميل الجسم إلى الحفاظ على حالة حركته: في الجمباز، الزخم المكتسب يُحفَظ ما لم تعدّله قوة (د). الورقة تتحدث عن «حركة القصور الذاتي»؛ والمفتاح يقرؤها بمعنى مبدأ القصور لا عزم القصور. كمية الحركة (ج) ومتجه السرعة (ب) مقداران آخران، ومحاور الدوران (أ) لا تدخل فيه. صياغة السؤال قورنت حرفياً مع الورقة. الجواب من المفتاح الرسمي.', 'qcm', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية (دورة نونبر 2019) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2019_college_q61', 'exam_eps_2019_college', 61, 'الرياضة المدرسية والرياضة المدنية', 'Au regard des faibles performances décevantes enregistrées par les athlètes marocains lors du dernier mondial d''athlétisme de DOHA 2019, montrer comment le sport scolaire peut-il être un support de développement du sport civil ? N.B : - le traitement du sujet doit être uniquement en langue française. - rédiger le sujet dans les pages suivantes. صياغة السؤال قورنت حرفياً مع الورقة.', false, '[]'::jsonb, ARRAY[]::text[], 'هي عناصر تقييم وليست نصاً نموذجياً كاملاً؛ يُنتظر من المرشح تحرير مقال بالفرنسية يغطيها:

1. **تحليل صياغة الموضوع.** على المرشح أولاً توضيح المفاهيم والعبارات المستعملة في عنوان الموضوع.
2. **التعليق على نتائج الدوحة 2019.** على المرشح أن يعلّق على ضعف أداء الرياضيين المغاربة ليُظهر اهتمامه بالمنافسات الرياضية الدولية التي يشارك فيها المغرب: على المرشح أن يذكر أن المغرب أشرك 17 رياضياً ولم تُحرز إلا ميدالية برونزية واحدة، مقترباً بشدة من حصيلة صفر ميدالية، ما منحه المرتبة 34 عالمياً، وهي مرتبة مخيبة جداً مقارنة بالمرتبة التي كان يحتلها من قبل، وهي الثانية إفريقياً والسابعة عالمياً.
3. **تعريفا الرياضة المدرسية والرياضة المدنية.** الرياضة المدرسية هي مجموع الأنشطة الرياضية الممارَسة داخل المؤسسات التعليمية في إطار الجمعية الرياضية المدرسية (ASS)، بتأطير من أساتذة التربية البدنية والرياضية، وتتوَّج بمنافسات محلية وجهوية ووطنية ودولية يبرز فيها التلاميذ مواهبهم وكفاءاتهم. أما الرياضة المدنية فهي ممارسة فيدرالية تنافسية مرخَّصة، أي منخرطة في مؤسسة تحدد قواعد اللعب وتحدد الأخلاق التي يجب أن تقوم عليها. على المرشح أن يميّز بين المفهومين ثم يبحث عن الجسور بينهما.
4. **الإشكالية.** مثلاً: بأي وجه يمكن للرياضة المدرسية أن تعزز الرياضة المدنية؟ أو: بأي شروط يمكن أن تكون مساعدة الرياضة المدرسية للرياضة المدنية أكثر إثماراً؟ ويمكن قبول إشكاليات أخرى مرتبطة بالموضوع.
5. **الحجج الأولى.** المدرسة المغربية تفتح الممارسة الرياضية أمام أكثر من ستة ملايين تلميذ: هذه الكتلة فرصة حقيقية للرياضة المدرسية ومادة أولية لا يُستهان بها لبناء رياضة جماهيرية ورياضة نخبة داخل المؤسسة التعليمية. صناع القرار واعون بهذه المعطيات ويؤكدون أن النهوض بالرياضة الوطنية يعتمد إلى حد كبير على استراتيجية حقيقية للنهوض بالرياضة المدرسية؛ ومثال يُذكر: إحداث مسلك رياضة-دراسة بمناسبة الدخول المدرسي 2018/2019.
6. **الموقف المُحاجج.** على المرشح أن يتخذ موقفاً من السؤال المركزي حول علاقة التأثير بين الرياضة المدرسية كداعم والرياضة المدنية، وأن يوضح أطروحته ويحاجج عنها؛ ثلاث أطروحات ممكنة: 1. نعم، النهوض بالرياضة المدرسية يمكن أن يشكل دعماً حقيقياً لتطوير الرياضة الوطنية. 2. لا (مع الحجاج). 3. نعم، لكن إذا استُوفي عدد من الشروط.
7. **التنويع (nuance).** إن جودة العرض البيداغوجي في الرياضة المدرسية هي التي يمكن أن تعطي دفعة حقيقية للرياضة المدنية. وعلى المرشح أيضاً أن يذكر حدود الممارسة في الرياضة المدرسية من حيث البنيات التحتية والمعدات والحجم الساعي.
8. **الشروط: فتح ورش إعادة هيكلة الرياضة المدرسية وحكامتها الرشيدة**، عبر المعايير التالية: تكثيف رزنامة المنافسات؛ تكثيف التدريبات بزيادة حجمها الساعي؛ تحسين المنشآت الرياضية ومعدات العمل؛ التأطير التربوي للرياضيين المدرسيين لضمان نجاحهم الدراسي؛ تحسين الكفاءات التقنية الاختيارية للأساتذة الذين يتولون تأطير الرياضيين المدرسيين؛ تهيئة شروط التحفيز، للمؤطرين وللرياضيين المدرسيين، من أجل مردود أفضل؛ إبرام اتفاقيات شراكة وتعاون مع الاتحادات الرياضية؛ الانفتاح على البلدان الأخرى ومنافستها.
9. **مؤشرات رياضة مدرسية تدعم فعلاً الرياضة المدنية:** ارتفاع عدد المرخَّصين في مختلف الاتحادات الرياضية؛ تحسن المستوى التقني للممارسين بجميع الفئات؛ نتائج أفضل في الترتيبات والميداليات.
10. **حدّ منهجي.** للخروج من التقديرات الذاتية حول أثر الرياضة المدرسية على الرياضة المدنية، لا بد من إجراء بحوث منهجية حول أعداد الرياضيين المدرسيين الذين انتقلوا بنجاح إلى الرياضة المدنية وحققوا أفضل النتائج وطنياً ودولياً؛ وبدونها لن نقدّم إلا تأويلات شخصية لا أساس لها.
11. **البيلان.** باستثناء بعض الأنشطة البدنية والرياضية التي يتألق فيها الرياضيون المدرسيون، كالجري نصف الطويل وسباق الضاحية (cross-country)، يبدو من الصعب بل من المستحيل الحديث عن أي أثر على الرياضة المدنية، أو على الأقل عن تحقيق نتائج رياضية مدرسية أفضل على الصعيدين العربي والدولي. ومن ثم يطرح سؤال يبدو حاسماً: إذا كانت الرياضة المدرسية تجد صعوبة كبيرة في فرض مكانتها على الصعيد العربي والدولي، فكيف يمكن أن تشكل دعماً لا يُستهان به للنهوض بالرياضة المدنية في بلادنا؟ وعلى المرشح أن يؤكد أن الحاجة ملحة إلى سياسة حقيقية للنهوض بالرياضة المدرسية تفرض نفسها على صناع القرار، لترتقي بها إلى مصاف الدول الكبرى ويكون لها الأثر المنشود على الرياضة المدنية.

مخطط مقترح من مناصب (طرف ثالث — ليس عناصر رسمية):
- الإشكالية: بعد نتائج الدوحة 2019 المخيبة، كيف يمكن للرياضة المدرسية (التربية البدنية والجمعية الرياضية) أن تغذي الرياضة المدنية (الأندية والاتحادات والمستوى العالي) وتعززها؟
- المقدمة: حصيلة الدوحة 2019 (ميداليات مغربية قليلة، باستثناء 3000م موانع)؛ التمييز بين الرياضة المدرسية (FRMSS والجمعية الرياضية) والرياضة المدنية (الأندية والاتحادات)؛ الرهان: جعل المدرسة خزاناً للمواهب.
- أولاً: الرياضة المدرسية قاعدة الهرم الرياضي — التعميم (كل الشباب يمرون بالمدرسة؛ التربية البدنية تعطي ثقافة حركية أساسية: الجري والقفز والرمي)؛ اكتشاف المواهب (اختبارات وتقييمات في التربية البدنية، ومنافسات مدرسية محلية وجهوية ووطنية)؛ تكوين القيم وذوق الجهد والوفاء للممارسة.
- ثانياً: حدود هذا الارتباط حالياً — حجم ساعي مخفَّض، ونقص في البنيات التحتية (المضامير والقاعات) والمعدات؛ ضعف التنسيق بين FRMSS والاتحادات والأندية، وغياب تتبع التلاميذ المكتشفين؛ صعوبة التوفيق بين الدراسة والتدريب (غياب أقسام رياضة-دراسة في كثير من الجهات).
- ثالثاً: مسارات لجعل الرياضة المدرسية رافعة — تعميم أقسام رياضة-دراسة ومراكز التكوين الجهوية بشراكة مع FRMA؛ اتفاقيات مدرسة-نادٍ: جسور وتقاسم المنشآت وتأطير مختلط؛ تكوين أساتذة التربية البدنية في الاكتشاف وتدريب الشباب وتثمين تنشيط الجمعية الرياضية؛ رزنامة منافسات مدرسية نوعية وتتبع المواهب (قاعدة بيانات وحصائل طبية-رياضية).
- الخاتمة: الرياضة المدرسية لا تحل محل النادي بل تغذيه؛ ويلزم سياسة مندمجة (التربية الوطنية ووزارة الرياضة والاتحادات)، في ارتباط برؤية 2030 للرياضة (إجابة مرجّحة: يُرجى التحقق من التسمية الدقيقة للاستراتيجية السارية).', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2019-617/', true, 'عناصر الإجابة الرسمية مقطوعة: الصفحة 5 مفقودة؛ تنتهي عند فقرة «البيلان»')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
