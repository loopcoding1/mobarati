-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020)
-- ====================================================================
-- المصدر: ملف الحل solved/2020/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2020.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2020-1443/
--   لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 5 سؤالاً مفتوحاً؛ منها 1 verified=true (مصدر third_party)؛
--   2 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2020_lycee', 'eps_lycee', 2020, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020)', 'دورة دجنبر 2020', 180, 5, 'لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (5 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_lycee_q1', 'exam_eps_kf_2020_lycee', 1, 'تحليل مشاكل القسم واقتراح علاجات', 'السياق: قسم السنة الأولى باكالوريا، 45 تلميذاً (18 بنتاً: بنتان بدينتان + ولد مصاب بالربو)؛ ثلاث دورات: الجري بالتناوب، الكرة الطائرة، الجمباز الأرضي؛ المرجع: التوجيهات البيداغوجية 2007.
Question 1 (sur 4 points) : Analysez et traitez les problèmes auxquels l''enseignant est confronté face à cette classe et dites ce que vous proposez pour palier à ces problèmes.', false, '[]'::jsonb, ARRAY[]::text[], '1. العدد والسلامة: 45 تلميذاً لملعب واحد لكل نشاط، شبكة طائرة واحدة، 3 كرات قدم، 7 كرات يد، 6 كرات طائرة، 6 شهود لـ45 تلميذاً. الحل: فرق من 5 إلى 6، تناوب في ورشات (4 إلى 5 ورشات متزامنة)، تلميذ في كل ورشة كمراقب، عتاد مشترك، صناعة عتاد (شهود من عصي)، استعمال الألواح والمخاريط.
2. تلاميذ ذوو احتياجات خاصة (بنتان بدينتان، ولد مصاب بالربو): تكييف الأحمال والأدوار (حكم، مؤقِّت، مدرب)، مهام بشدة مخففة، شهادات طبية، إحماء تدريجي، إدماج في الفرق. سلم متمايز على التقدم.
3. الاختلاط والصراعات بين البنات والولد، التواصل: عقد القسم، أدوار مختلطة متناوبة، مجموعات مشروع غير متجانسة، قواعد اللعب النظيف، تقويم المواقف (الاحترام، التعاون)، وضعيات تعاون (تناوب مختلط، تسلسل جماعي).
4. ضعف معرفة القوانين: بطاقات قوانين لكل نشاط، تحكيم من التلاميذ، اختبار قصير في بداية الحصة، عرض، دور حكم متناوب.
5. نسبة التأخر المرتفعة: قواعد دخول واضحة (بداية الإحماء في الوقت)، دور للمتأخرين (الملاحظة والمساعدة)، زمن إحماء نافع (نشاط استئناف)، تواصل مع الحياة المدرسية والإدارة، تحفيز بتحديات في بداية الحصة.
6. التخطيط: الحصص العشر غير كافية لـ5 مستويات؛ فردنة: مشاريع متمايزة حسب المستوى، بطاقات تتبع.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1443/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_lycee_q2', 'exam_eps_kf_2020_lycee', 2, 'لماذا تحققت الأهداف في الجمباز فقط؟', 'Question 2 A (sur 9 points avec B) : À votre avis, pourquoi les objectifs ont été atteints seulement en gymnastique ? (justifiez la réponse en analysant la première partie des trois APS, voir tableau 1)', false, '[]'::jsonb, ARRAY[]::text[], '- الجمباز الأرضي: الأهداف تدريجية ومتماسكة (3 ثم 4 ثم 5 عناصر)، مصاغة بدقة وقابلة للقياس، مفردنة («حسب مشروعه الفردي»)، الصعوبة تتكيف مع كل مستوى، مجموعات الألفة من 5 تشجع التعاون والمساعدة والحماية والملاحظة المشتركة، والتسلسل يُقوَّم في نهاية كل حصة. العتاد (8 بساط sarneige، بساط سقوط) يكفي للورشات. الأهداف الثلاثة تعتمد على معيار واحد (عدد العناصر والعائلات) يتحكم فيه التلميذ وحده.
- الجري بالتناوب: الأهداف الثلاثة تقوم على نفس التقنية (التمرير من الأسفل إلى الأعلى) وتبقى أهداف تقنية تحليلية؛ لا رابط بين التقنية والسباق الحقيقي (أخذ العلامة، السرعة لحظة التمرير)؛ الأهداف لا تتضمن معايير نجاح قابلة للقياس (الزمن، مسافة منطقة التمرير)؛ 6 شهود لـ45 تلميذاً، منافسة في نهاية الحصة فقط؛ ثلاثة مستويات غير متجانسة (ذكور N3 وN2، إناث N1) في نفس مجموعات الألفة من 4.
- الكرة الطائرة: أهداف طموحة (الهجوم، الزوايا) بينما التلاميذ في 4 مستويات ولم يكتسبوا بعد الحفاظ على الكرة؛ ملعب واحد وشبكة واحدة لـ45 تلميذاً؛ مجموعات مختلطة من 6 تتلقى التعليمات من مسؤول يصحح أخطاء الزملاء (كفاءة تصحيح غير مكتسَبة)؛ الأهداف لا تراعي عدم تجانس المستويات؛ الهدف 1 (ثلاث لمسات) كان ينبغي أن تسبقه وضعيات تعلم للتموضع.

خلاصة: الجمباز ينجح لأن أهدافه تدريجية ومفردنة ومتاحة، بينما يعاني التناوب والكرة الطائرة من أهداف قريبة جداً من التقنية المعزولة، وغياب النقل إلى الوضعية الحقيقية، وتنظيم غير ملائم للعدد والعتاد.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1443/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_lycee_q3', 'exam_eps_kf_2020_lycee', 3, 'وضعية مرجعية + وضعية تعلم (الجري بالتناوب)', 'Question 2 B : Après avoir choisi une APS seulement : 1- Proposez une situation de référence permettant une évaluation formative des élèves en prenant en considération les trois objectifs précédents (voir tableau 1). 2- Proposez une situation d''apprentissage pour remédier à l''un des problèmes qui persistent encore (voir tableau 2, écriture en gras). NB : dans l''élaboration des deux situations, présentez le module, la compétence visée, l''objectif de la leçon, but de la situation, les conditions de réalisation (groupe - organisation), les variables, les consignes, les critères de réalisation et les critères de réussite.', false, '[]'::jsonb, ARRAY[]::text[], '1. وضعية مرجعية (تقويم تكويني للأهداف 1 و2 و3):

- Module : Athlétisme, groupement « Effort physique et performance sportive ».
- Compétence visée : réaliser en équipe une performance de vitesse en relais en transmettant efficacement le témoin.
- Objectif de la leçon : transmettre le témoin du bas vers le haut, enchaîner les transmissions, conserver la vitesse.
- But de la situation : courir un relais 4 x 50 m en équipes de 4 et réaliser le meilleur temps en transmettant correctement.
- Conditions : 8 équipes de 5 à 6 (45 élèves) ; deux couloirs, deux courses simultanées ; chaque équipe a un témoin ; un chronométreur et deux observateurs par course (co-évaluation) ; zones de transmission de 20 m balisées par des plots.
- Variables : position des relayeurs (par niveau de vitesse, garçons et filles dans une même équipe), longueur du relais (4 x 30 m pour N1).
- Consignes : « Transmettez le témoin dans la zone sans ralentir ; le receveur démarre sur la marque ; le témoin se prend du bas vers le haut. »
- Critères de réalisation : le receveur regarde devant, tend la main basse en arrière, le témoin est reçu bas, le donneur reste dans sa couloir ; la transmission est dans la zone ; le receveur démarre à la marque.
- Critères de réussite : transmission réussie à 3 sur 3 ; perte de vitesse moindre que le temps de référence ; pas de chute du témoin ; temps de l''équipe inférieur à son temps de départ.

2. وضعية تعلم للمعالجة (المشكل: أخذ العلامة وسقوط السرعة عند التمرير):

- Compétence et objectif : maîtriser la prise de marque et conserver la vitesse au moment de la transmission.
- But : réussir 4 transmissions sur 5 sans perte de vitesse en partant d''une marque individualisée.
- Conditions : ateliers par trois (donneur, receveur, observateur) sur 20 m ; une marque au sol (distance fixée par essais, environ 6 à 8 pieds) ; rotation des rôles ; observateur avec fiche.
- Variables : distance de la marque (réglage par le groupe), vitesse du donneur (progressive), couloir.
- Consignes : « Le receveur démarre quand le donneur franchit la marque, sans se retourner ; le donneur annonce « hop » ; si le témoin tombe, ajuster la marque de 1 pied. »
- Critères de réalisation : démarrage explosif à la marque, regard devant, bras tendu, signal vocal.
- Critères de réussite : 4 transmissions sur 5 dans la zone à vitesse maximale ; temps de 20 m lancés avec témoin proche du temps de 20 m lancés sans témoin (perte de temps dans la zone de transmission faible, par exemple moins de 0,3 s).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1443/', false, 'ملاحظة في الجواب النموذجي نفسه: لا يُقارَن زمن التناوب بمجموع الأزمنة الفردية — تناوب منطلق أسرع دائماً من أربعة سباقات 50 م من انطلاق متوقف.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_lycee_q4', 'exam_eps_kf_2020_lycee', 4, 'تبرير الاختيارات الديداكتيكية-البيداغوجية', 'Question 3 (sur 4 points) : Justifiez vos choix didactico-pédagogiques en proposant une démarche d''enseignement adéquate pour gérer cette classe.', false, '[]'::jsonb, ARRAY[]::text[], '1. التشخيص: test d''observation في بداية الدورة يصنف التلاميذ في مستويات (N1 إلى N5). التبرير: القسم غير متجانس جداً (ذكور وإناث، تلاميذ ذوو احتياجات) ونفس الهدف لا يناسب الجميع.
2. مجموعات مستوى ومجموعات ألفة تتناوب مع مجموعات غير متجانسة: مجموعات المستوى للتقدم، وغير المتجانسة ليُعين الأقوى ويساعدوا وليتعاون البنات والولد (الصراعات).
3. ورشات متناوبة: 45 تلميذاً، عتاد قليل: 5 ورشات من 9 تلاميذ، تناوب كل 8 دقائق؛ لكل واحد دور (ممارس، مراقب، حكم). التبرير: أقصى زمن ممارسة وسلامة.
4. عقد ديداكتيكي: قواعد القسم، وقوانين النشاط، والاحترام؛ تحكيم متناوب؛ المتأخرون مدمجون بدور.
5. تقويم تكويني مستمر مع بطاقة تتبع وتقويم مشترك؛ معالجة مدمجة.
6. فردنة في الجمباز (مشروع فردي)، منافسة وتعاون في التناوب، تحميل مسؤولية في الطائرة (دور مدرب).

هذه المقاربة تجيب عن التوجيهات البيداغوجية 2007: التمركز على التلميذ، العلاقات بين الأقران، التعلم النشط.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1443/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة دجنبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2020_lycee_q5', 'exam_eps_kf_2020_lycee', 5, 'شبكة تقويم ثلاثية المداخل', 'Question 4 (sur 3 points) : Proposez pour la situation de référence une grille d''évaluation à triple entrée tenant compte des composantes suivantes : les connaissances procédurales, comportementales et conceptuelles.', false, '[]'::jsonb, ARRAY[]::text[], 'الأعمدة: المكوّن | المعيار القابل للملاحظة | المؤشرات | المستوى (0 غير مكتسب، 1 قيد الاكتساب، 2 مكتسب، 3 متقَن) | النقط

1. المعارف الإجرائية (12 نقطة في الجذع المشترك، 13 في الأولى باك):
- أخذ الشاهد من الأسفل إلى الأعلى، ذراع ممدودة إلى الخلف، نظر إلى الأمام (4 نقط)؛
- أخذ العلامة والانطلاق في الوقت المناسب (4 نقط)؛
- التمرير في المنطقة دون فقدان السرعة (4 أو 5 نقط).
2. المعارف المفاهيمية (3 نقط):
- شرح مبدأ التمرير (لماذا من الأسفل إلى الأعلى؛ دور المنطقة) (2 نقط)؛
- معرفة القانون (المنطقة، سقوط الشاهد، الممر) (1 نقطة).
3. المعارف السلوكية (5 نقط في الجذع المشترك، 4 في الأولى باك):
- التعاون والتواصل مع الفريق، احترام مختلط (2 نقط)؛
- اللعب النظيف والسلامة، احترام التعليمات (2 نقط)؛
- المواظبة والالتزام بالوقت (1 نقطة).

السلم والنتيجة: التوزيع 12 (أو 13) / 3 / 5 (أو 4) هو توزيع شبكة تنقيط OP 2007؛ النقط المفصلة أعلاه تُضبط على هذا المجموع. الورقة لا تحدد عتبة اكتساب: العتبة التي يختارها المدرس اختيار يجب تبريره. كل تلميذ يُقوَّم في مرور واحد، ومراقب يملأ الشبكة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2020-1443/', true, 'السلم غير محدد في الورقة: الورقة لا تحدد عتبة الاكتساب؛ العتبة اختيار للمدرس يجب تبريره. شبكة التنقيط مطابقة لشبكة OP 2007 في ألعاب القوى (إجرائية 12ن في الجذع المشترك و13ن في الأولى باك، مفاهيمية 3ن، سلوكية 5ن/4ن — المجموع 20).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
