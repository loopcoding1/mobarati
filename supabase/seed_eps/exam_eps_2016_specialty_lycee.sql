-- ====================================================================
-- مباراتي — امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016)
-- ====================================================================
-- المصدر: ملف الحل solved/2016/التربية البدنية - دورة نونبر 2016.md
--   صفحة المصدر: https://mesconcours.ma/ar/concours/enseignement/2016-544/
--   الموضوع 2 (ألعاب القوى، س4–س8) من عناصر الإجابة الرسمية للمركز الوطني للتقويم والامتحانات، مُتحقق منها حرفياً من صفحة المسح رقم 10؛ الموضوعان 1 (الجمباز) و3 (كرة القدم) بلا مفتاح رسمي في المسح، وحلّهما من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours). الترقيم ترقيم الورقة (الموضوع 1: س1–س3؛ الموضوع 2: س1–س5؛ الموضوع 3: س1–س3) — يقابل Q1–Q11 في ترقيم mesconcours المتسلسل.
--   عدد الأسئلة: 11 (0 QCM + 11 مفتوحة)؛ موثّقة verified=true: 5؛ موسومة بملاحظة تحقق: 6.
--   المفتاح الرسمي 2019/2020 ملف Drive PDF بلا رابط عام — يُستعمل رابط mesconcours أعلاه.
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_2016_specialty_lycee', 'eps_lycee', 2016, 'eps_specialty', 'مادة التخصص', 'امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016)', 'دورة نونبر 2016', 300, 11, 'الموضوع 2 (ألعاب القوى) من عناصر الإجابة الرسمية ومُتحقق حرفياً من المسح؛ الموضوعان 1 و3 من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours) بلا مفتاح رسمي')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (11 سؤالاً)

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q1', 'exam_eps_2016_specialty_lycee', 1, 'الجمباز', 'La gymnastique est une APS acrobatique. La LUNE est un élément gymnique parmi d''autres.

Faites une analyse descriptive de cet élément gymnique en mentionnant ses sept composantes. (07 points)', false, '[]'::jsonb, ARRAY[]::text[], 'القفزة «la lune» هي انقلاب أمامي (renversement avant) مع نداء بالقدمين على الترامبولين، واستناد يدوي وجيز، واستقبال واقفاً. تتفكك إلى سبعة مكوّنات متتالية، هي الأزمنة السبعة لكل قفزة بهلوانية مع استناد يدوي:

1. **الانطلاق (course d''élan):** جري متسارع تدريجياً، جذع مستقيم، نظر نحو الترامبولين؛ هدفه إنتاج السرعة الأفقية التي ستتحول عند النداء. ينتهي بمعايرة ثابتة (عدد ثابت من الخطوات من محاولة إلى أخرى).
2. **الربط بين الانطلاق والترامبولين، أو القفزة الصغيرة قبل النداء (liaison course-tremplin / sursaut، pré-appel):** آخر خطوة منخفضة وقصيرة قليلاً، خفض مضبوط لمركز الثقل، تهيئ وضع القدمين معاً على اللوحة دون فقدان السرعة. (مناصب تصفها كقفزة صغيرة من قدم إلى القدمين؛ انظر الملاحظة 4.)
3. **النداء، أو دفع الرجلين (appel / impulsion):** وضع القدمين معاً على الترامبولين، مدّ متفجر للكاحلين والركبتين والوركين، ذراعان تُقذفان نحو الأعلى والأمام. هنا تولد السرعة العمودية والدوران الأمامي. زمن التماس وجيز، والجسم مشدود (gainé).
4. **الطيران الأول (premier envol):** طور جوي بين الترامبولين ووضع اليدين: الجسم يصعد ويدور نحو الأمام، مشدوداً، الذراعان ممدودتان في امتداد الجذع، النظر نحو نقطة وضع اليدين.
5. **الاستناد اليدوي ودفع الذراعين (appui manuel et répulsion):** وضع اليدين معاً بعيداً أماماً، ذراعان ممدودتان، كتفان مفتوحتان، مرور وجيز بالاستناد المقلوب الممدود ثم دفع قوي بالذراعين والكتفين يعيد إطلاق الجسم نحو الأعلى.
6. **الطيران الثاني (second envol):** طور جوي بعد الدفع: فتح زاوية الذراعين–الجذع، مدّ الجسم، استمرار الدوران الأمامي حتى التوجّه نحو وضعية الاستقبال. الجسم ممدود أو مقوّس قليلاً.
7. **الاستقبال (réception):** وصول على القدمين معاً، يُمتص بانثناء مضبوط للكاحلين والركبتين والوركين، ذراعان في الأعلى للتوازن، ثم استقامة وتثبيت دون تنقّل.

تتسلسل المكوّنات السبعة دون زمن ميت: جودة كل منها تشرط التي تليها، واستمرارية الإيماء هي ما يصنع قيمة العنصر.

المطلوب هو تقطيع العنصر إلى سبعة أزمنة محددة وموصوفة، لا قائمة بالصفات البدنية. التدرج انطلاق، نداء، طيران أول، استناد، طيران ثانٍ، استقبال هو شبكة القراءة المشتركة لكل القفزات البهلوانية.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'لا مفتاح رسمي في المسح لهذا الموضوع؛ الحل من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q2', 'exam_eps_2016_specialty_lycee', 2, 'الجمباز', 'Veuillez définir les facteurs suivants qui tiennent à la dynamique : (03 points) a. Apesanteur b. Energie cinétique c. Poussée excentrique', false, '[]'::jsonb, ARRAY[]::text[], '**أ. انعدام الوزن (Apesanteur):** حالة لا يعود فيها الجسم خاضعاً لأي قوة استناد: أثناء طور طيران القفزة، لا يعود اللاعب ملامساً للأرض ولا يخضع إلا لوزنه؛ مركز ثقله يصف قطعاً مكافئاً لا يمكنه تعديله بعد الآن. لا يستطيع حينها إلا التأثير على توزيع كتل جسمه، أي على سرعة دورانه (بالتكور أو الانبساط)، لا على مساره.

**ب. الطاقة الحركية (Énergie cinétique):** الطاقة التي يملكها جسم بسبب حركته، وتساوي نصف جداء كتلته في مربع سرعته: **Ec = ½ m v²**. في الجمباز، الطاقة الحركية المكتسبة أثناء الانطلاق تتحول جزئياً عند النداء إلى طاقة دوران وطاقة ارتفاع (كامنة): لهذا فإن انطلاقاً بطيئاً جداً يمنع طيراناً صحيحاً.

**ج. الدفع اللامركزي (Poussée excentrique):** دفع لا يمر خط عمله بمركز ثقل الجسم؛ فيولّد عزم قوة، أي دوراناً، إضافة إلى إزاحة مركز الثقل. عند نداء القفزة، يكون استناد القدمين خلف مركز الثقل الذي تقدّم أمامه: رد فعل الترامبولين لامركز فيولّد الدوران الأمامي المطلوب.

ثلاث تعريفات موجزة مطلوبة، كل منها مرتبط بالقفزة: انعدام الوزن يفسّر أن مسار مركز الثقل يتحدد عند النداء، والطاقة الحركية تبرر الانطلاق، والدفع اللامركزي يفسّر مصدر الدوران.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'لا مفتاح رسمي في المسح لهذا الموضوع؛ الحل من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q3', 'exam_eps_2016_specialty_lycee', 3, 'الجمباز', 'Faites une analyse biomécanique de la lune dans la phase d''appel. (10 points)', false, '[]'::jsonb, ARRAY[]::text[], '**1) ما يدخل في طور النداء:** يصل اللاعب إلى الترامبولين بسرعة أفقية Vh بُنيت أثناء الانطلاق، ومركز ثقل منخفض، متقدم قليلاً أمام الاستنادين. طور النداء وجيز، من مرتبة عُشر إلى عُشري ثانية: إنه اللحظة الوحيدة التي يستطيع فيها اللاعب بعد التأثير على مساره وعلى دورانه.

**2) القوى الحاضرة:**
- **الوزن**، عمودي نحو الأسفل، مطبق على مركز الثقل.
- **رد فعل الترامبولين R**، عمودي نحو الأعلى في المخطط، مجموع رد فعل الاستناد والاسترجاع المرن للوحة. شدته تتعلق بسرعة الوصول وجودة مدّ الطرفين السفليين.
- **قوة الذراعين Fb**، تُنتَج لاحقاً في الإيماء، لحظة الاستناد اليدوي: تعيد إطلاق الجسم وتنقل من الطيران الأول إلى الطيران الثاني.

**3) تحويل السرعة الأفقية:** النداء يحوّل جزءاً من Vh إلى سرعة عمودية. الكبح اللحظي للاستنادين يبطئ أسفل الجسم بينما يواصل أعلاه التقدم: هذا التفاضل هو ما ينتج الارتفاع والدوران معاً. نداء بعيد جداً أمام مركز الثقل يدمر السرعة الأفقية، ونداء بعيد جداً خلفه لا ينتج أي ارتفاع.

**4) أصل الدوران:** رد فعل الترامبولين لامركز: خط عمله يمر **خلف مركز الثقل** الذي تقدّم أمامه. فينتج عزم قوة، أي كمية حركة زاوية نحو الأمام. وما إن يصبح اللاعب في الهواء حتى يُحفَظ هذا الزخم الحركي: لا يمكن زيادته بعد، بل فقط إعادة توزيعه بتعديل تباعد الكتل عن المحور — متكوراً ليدور بسرعة، ممدوداً ليدور ببطء.

**5) دور المقاطع الحرة:** قذف الذراعين نحو الأعلى والأمام، متزامناً مع مدّ الرجلين، يزيد القوة المطبقة على الترامبولين بنقل كمية الحركة، ويوجّه الجسم نحو نقطة وضع اليدين. شدّ الجذع (gainage) يضمن نقل القوى من أسفل الجسم إلى أعلاه: جذع مرتخٍ يبدّد الدفع.

**6) النتائج البيداغوجية:** مسار مركز الثقل يتحدد كلياً بنهاية النداء. لذلك يجب أن يتركّز كل عمل تصحيحي على الربط بين الانطلاق والنداء، وعلى توجيه الاستنادين، وعلى تزامن الرجلين–الذراعين، لا على الطور الجوي الذي لم يعد للتلميذ عليه أي تحكم.

المطلوب تحليل بمصطلحات القوى وتحويل السرعة والعزم الحركي، مستنداً إلى المتجهات الثلاثة في المخطط، لا وصف زمني للإيماء.
**ملاحظة التعارض (مناصب):** في اقتراح مناصب، الجملة «Les pieds sont placés en avant du centre de gravité : la réaction passe derrière le centre de gravité» متناقضة هندسياً (انظر الملاحظة 3 أعلاه): قدمان أمام مركز الثقل تعنيان خط عمل يمر **أمام** مركز الثقل، فيولّد دوراناً خلفياً. الصياغة المعتمدة أعلاه (قدمان خلف مركز الثقل المتقدم) هي الصياغة الصحيحة فيزيائياً والمتسقة مع بقية تحليل مناصب نفسه («effet de blocage des pieds»).', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'تعارض في مناصب: جملة «Les pieds sont placés en avant du centre de gravité» متناقضة هندسياً؛ اعتُمدت صياغة mesconcours')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q4', 'exam_eps_2016_specialty_lycee', 4, 'ألعاب القوى — الجري المطوّل', 'Expliquez l''utilité de l''échauffement et ses différents types. (04 points)', false, '[]'::jsonb, ARRAY[]::text[], '**فائدة الإحماء (2ن):** الإحماء مجموعة تمارين منظمة ومبنية، هدفها إعداد الفرد بدنياً ونفسياً لممارسة نشاط بدني ورياضي. يهيئ الظروف المثلى بالنظر إلى الجهد الذي سيليه، للمساهمة في تحسين الأداء الرياضي والوقاية من الإصابات.

إنه طور انتقالي بين الراحة والجهد: يهيئ تدريجياً الجسم — المفاصل، العضلات، الجهاز القلبي–التنفسي — وكذلك النفسية. ومن آثاره الرئيسة رفع درجة حرارة الجسم والعضلات التي ستُستعمل أثناء النشاط الذي سيليه.

**أنواع الإحماء (2ن):**

- **الإحماء العام:** هدفه أولاً تنشيط الجهاز القلبي–الرئوي بزيادة التدفق الدموي لتحسين إمداد العضلات بالأوكسجين، الضروري للتقلص العضلي، وثانياً إنتاج الحرارة، أي رفع درجة الحرارة. يستدعي الجسم ككل بتمارين مناسبة يجب أن تحرّك أكثر من ثلثي عضلات الجسم. الشدة ضعيفة في البداية وتزداد تدريجياً حتى تقترب من شدة المنافسة. المدة متغيرة وتتعلق بالنشاط الرياضي ومستوى الرياضي والظروف المناخية: يمكن أن تتراوح بين 5 و45 دقيقة.
- **الإحماء الخاص:** هدفه أولاً إعداد أجزاء الجسم التي ستُستعمل تحديداً في النشاط الممارَس، وثانياً الإعداد الذهني للرياضي لبدء نشاطه (الإعداد النفسي). يتم بتكرار مهارات حركية يستعد المنفذ لها. يتضمن تعبئة مفصلية خاصة وإيماءات خاصة بالاختصاص. وهو غالباً مناسبة لممارسة تمارين تنقل أكثر أو أقل تعقيداً أو أفعال لعب أولية (مراوغات، تسديدات أثناء الجري، تمريرات) أو تسلسلات مهام جماعية مضبوطة نسبياً، مع حرص على الفعالية.

السلم الرسمي يقسّم النقط الأربع إلى نصفين: 2 للفائدة و2 للأنواع. جواب يكتفي بسرد «عام وخاص» دون ذكر الهدف الفيزيولوجي لكل منهما يفقد نصف النقاط. (مناصب تضيف تمييز الإحماء النشط/السلبي — غير وارد في المفتاح، انظر الملاحظة 7.)', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q5', 'exam_eps_2016_specialty_lycee', 5, 'ألعاب القوى — الجري المطوّل', 'Après avoir défini l''activité course de durée, expliquez et analysez les résultats du groupe classe. (04 points)', false, '[]'::jsonb, ARRAY[]::text[], '**تعريف نشاط الجري المطوّل (0,5ن):** تحقيق أكبر مسافة ممكنة في زمن يفوق 3 دقائق.

**شرح الجدول 1 (1,5ن):** الجدول 1 يمثل نتائج اختبار بدني للتحمل هدفه تقييم VMA التلاميذ (Vameval، Tub 2، Gacon، navette، Luc Léger، Brue…). يبرز السرعة القصوى الهوائية والتردد القلبي المقابل لها.

**تحليل النتائج (2ن):** نلاحظ عدم تجانس معين في النتائج، وتنوعاً في الترددات القلبية ليس بالضرورة مؤشراً على شدة الجهد، مما يناقض صيغة التردد القلبي الأقصى = 220 ناقص العمر. ونلاحظ وجود مجموعتين ممتلئتين في الوسط ومجموعتين تقابلان الطرفين، الأعلى والأدنى.

**أرقام داعمة (من تحليل مناصب، أُعيد حسابها وصحّت — انظر الملاحظة 5):** VMA من 13,6 إلى 17,6 كم/س (المدى 4 كم/س)، المعدل ≈ 16 كم/س؛ القسم غير متجانس: 9 تلاميذ عند 16,5 كم/س أو أكثر، و8 بين 15 و16,4 كم/س، و2 دون 15 كم/س (Oussama 14,3؛ Ayoub 13,6). الترددات القلبية القصوى (180 إلى 216 نبضة/دقيقة) تسمح بحساب مناطق شدة لكل تلميذ (مثلاً 70–85٪ من FC القصوى).

النقطة الجوهرية أن FC القصوى المقاسة تكذّب صيغة 220 − العمر، التي تُستعمل خطأً كمرجع في الغالب.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q6', 'exam_eps_2016_specialty_lycee', 6, 'ألعاب القوى — الجري المطوّل', 'Proposez avec argumentation une répartition de votre effectif permettant de mettre en place un projet d''apprentissage adapté. (02 points)', false, '[]'::jsonb, ARRAY[]::text[], 'مثال للتوزيع كما يرد في عناصر الإجابة الرسمية، حسب مناطق VMA متقاربة:

- **المجموعة 1، VMA تساوي 17,6 و17,5:** ISMAIL، ABDALLAH.
- **المجموعة 2، VMA من 16,3 إلى 16,8:** ABDERRAHMANE، MOURAD، HAMZA، ABDELHAKIM، HAMADA، ZAKARIA، MOHAMMED، MAHDI.
- **المجموعة 3، VMA من 15,1 إلى 15,8:** YASSINE، MOHAMMED 2، Salah، HATIM، SAMI، Aymane، ZIAD.
- **المجموعة 4، VMA من 13,6 إلى 14,3:** AYOUB، OUSSAMA.

**الحجة:** توزيع المجموعات يتم حسب VMA، أي حسب مناطق VMA متقاربة، لتقديم محتوى مناسب لجودة كل تلميذ وجميعهم. ويسمح بتوزيع التلاميذ في مجموعات مستوى متجانس حسب VMA.

التوزيع المنتظر مبني على معيار وحيد وموضوعي، VMA، لا على الجنس أو التردد القلبي الذي أظهر س2 تحديداً أنه ليس مؤشراً جيداً. (توزيع مناصب البديل في 3 مجموعات — ≥16,5 / 15–16,4 / <15 — معقول لكن الرسمي أكثر تفصيلاً وهو المرجع؛ انظر الملاحظة 5.)', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q7', 'exam_eps_2016_specialty_lycee', 7, 'ألعاب القوى — الجري المطوّل', 'Expliquez les processus énergétiques des différentes filières mises en oeuvre lors d''un effort de durée. (04 points)', false, '[]'::jsonb, ARRAY[]::text[], 'العملية الطاقية للمسارات المختلفة المستعملة أثناء جهد مطوّل تمر بتسارع أول، ثم دَين أوكسجين ليتمكن من الحفاظ على أفضل إيقاع ممكن قبل بلوغ حالة التوازن (steady state)، مرادف الطور الهوائي للجري المطوّل.

إذن، حتماً، نمر بالمسارات الطاقية الثلاثة: لاهوائي لا-لبني، لاهوائي لبني، ثم هوائي، مع هيمنة الطور الهوائي، وفي كل تغيير إيقاع أو تسارع نعيد العملية كلها من البداية.

علماً أن المصدر الوحيد والحصري للطاقة هو ATP، وتفككه يمدّ الطاقة الضرورية للتقلص العضلي. وبما أن احتياطيات ATP ضعيفة جداً، يجب تجديدها وإعادة تركيبها باستمرار.

العمليات أو المسارات الطاقية الثلاثة التي تعيد بناء ATP تتميز بقدرتها وقوتها القصوى ومهلة تدخلها. وهي توجد في الجري المطوّل ولا تتعاقب بل **تتداخل**، كل منها مهيمن بدوره حسب شدة الجهد ومدته.

النقطة التي يريد المفتاح الرسمي رؤيتها مذكورة هي أن المسارات لا تتعاقب بل تتداخل، وأن تغيير الإيقاع يعيد إطلاق العملية من البداية. (مناصب تعطي التفصيل الكلاسيكي نفسه: لاهوائي لا-لبني ATP–فوسفوكرياتين، ثوانٍ معدودة، عند الانطلاق والتسارعات؛ لاهوائي لبني، تحلل سكري دون أوكسجين وإنتاج لاكتات، مستعمل في بداية الجهد وفي العدو النهائي؛ هوائي، أكسدة الغلوكوز والدهون في الميتوكوندريات، مهيمن في الجري المطوّل، طاقة شبه غير محدودة لكن بتدفق أضعف.)', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q8', 'exam_eps_2016_specialty_lycee', 8, 'ألعاب القوى — الجري المطوّل', 'Dans le cadre de la course de durée, expliquez la différence entre la puissance et la capacité en précisant le temps de travail, son intensité, la source d''énergie, la récupération et sa nature. (06 points)', false, '[]'::jsonb, ARRAY[]::text[], '- **القدرة (Puissance):** هي أقصى تدفق، أي أقصى كمية طاقة منتَجة في وحدة الزمن. الوحدة هي الواط أو الجول في الثانية، 1 واط = 1 جول/ثانية. (1ن)
- **الطاقة/السعة (Capacité):** هي مجموع الطاقة المتاحة. الوحدة هي الجول أو السعرة، 1 سعرة = 4,18 جول. (1ن)
- **زمن العمل:** أكثر من 3 دقائق. ونظرياً يمكن أن يدوم إلى ما لا نهاية. (1ن)
- **شدته:** معتدلة، لكن يمكن أن تتراوح بين 60 و110٪ من VMA حسب مدة الجهد. (1ن)
- **مصدر الطاقة:** الغليكوجين، الأحماض الدهنية، وأحياناً البروتيدات. (1ن)
- **الاستشفاء وطبيعته:** يمكن أن يكون ناقصاً أو كاملاً، نشطاً أو سلبياً، ويتعلق بالمساهمة اللاهوائية وبالظروف خارج-الطاقية (حرارة، ضغط). لكن، عموماً، يتم أثناء الجهد بنشاط. (1ن)

**توضيح (مناصب، مكمّل وليس بديلاً — انظر الملاحظة 6):** القدرة الهوائية: شدة مرتفعة (90–105٪ من VMA)، زمن عمل قصير (30ث إلى 3–6 دقائق، مجزأ)، المصدر الغليكوجين بالطريق الهوائي (VO2 max)، استشفاء نشط أو سلبي قصير (غالباً يساوي زمن العمل). السعة الهوائية: شدة معتدلة (60–80٪ من VMA)، مدة طويلة (20 دقيقة وأكثر، متواصل أو فواصل طويلة)، المصدر الغلوكوز ثم الدهون، استشفاء قصير ونشط أو غائب. القدرة تهدف إلى رفع VMA، والسعة تهدف إلى التحمل (الحفاظ طويلاً على نسبة مرتفعة من VMA).

النقط الست تُمنح عنصراً عنصراً: السؤال سلم متنكر، وجواب يعالج القدرة والسعة دون الإجابة على النقاط الأربع الأخرى يفقد ثلثي النقطة.', 'open', 'official', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q9', 'exam_eps_2016_specialty_lycee', 9, 'كرة القدم', 'Dans le cadre du football en tant que sport collectif de démarquage :

Qu''est-ce qu''un appel de balle en profondeur et quels sont les facteurs à prendre en compte pour le réaliser efficacement ? (08 points)', false, '[]'::jsonb, ARRAY[]::text[], '**التعريف:** طلب الكرة في العمق هو تنقّل سريع وموجه للاعب بلا كرة نحو فضاء حر يقع خلف دفاع الخصم، بين الخط الدفاعي والمرمى، بهدف استقبال تمريرة والتقدم نحو الهدف. إنه فعل إبعاد عن الرقابة (démarquage): يكسر الرقابة الفردية ويخلق خللاً في جهاز الخصم.

**العوامل التي يجب أخذها بعين الاعتبار:**

1. **لحظة الانطلاق:** يجب إطلاق الطلب عندما يكون حامل الكرة قادراً على التمرير — رأس مرفوع، كرة مضبوطة — وقبل أن يعيد الدفاع تنظيم نفسه. الانطلاق المبكر جداً يعرّض للتسلل، والمتأخر جداً يترك الدفاع يتشكل من جديد.
2. **الموقع بالنسبة لخط آخر مدافع، أي قاعدة التسلل:** يجب أن يكون اللاعب في وضعية قانونية لحظة إطلاق التمريرة، مما يفرض غالباً انطلاقاً متراجعاً قليلاً، أو منزاحاً، أو طلباً في حركة معاكسة.
3. **اتجاه ومسار الجري:** جري في المحور أو قطرياً حسب الفضاء الحر، خلف المدافع لا أمامه، مع طلب معاكس إن أمكن — خطوة نحو الكرة لتثبيت المدافع قبل الانطلاق من جديد في العمق.
4. **السرعة وتغيير الإيقاع:** الطلب لا يكون فعالاً إلا إذا كان متفجراً ومسبوقاً بكسر في الإيقاع: التسارع المفاجئ، أكثر من السرعة القصوى، هو ما يصنع الفارق. (مناصب: إضافة الخدعة، طلب-ضد-طلب.)
5. **التواصل مع حامل الكرة:** إشارة بصرية أو صوتية، نظرة، يد مرفوعة، توجيه الجسم، لتنطلق التمريرة في اللحظة والمكان المناسبين.
6. **جودة التمريرة المنتظرة:** تمريرة مشدودة في الفضاء الحر، أمام الجري، موزونة بحيث لا يضطر المستقبل إلى التباطؤ أو العودة.
7. **قراءة ميزان القوى:** موقع الخط الدفاعي، وجود تغطية أو عدمها، موقع الحارس المتقدم، الفضاء المتاح فعلاً خلف الدفاع.
8. **الاحتلال العقلاني للفضاء من طرف الزملاء:** يجب أن يحافظوا على العرض ويحتلوا الممرات الأخرى حتى لا يتمكن الدفاع من الانغلاق على الطلب الوحيد.

تُمنح 8 نقاط: لجنة التصحيح تنتظر تعريفاً ثم قائمة منظمة من العوامل، كل منها مبرَّر. العوامل التنظيمية (التسلل) والعلائقية (التواصل مع الحامل) منتظرة مثل العوامل البدنية.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'لا مفتاح رسمي في المسح لهذا الموضوع؛ الحل من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q10', 'exam_eps_2016_specialty_lycee', 10, 'كرة القدم', 'Quels types de problèmes pourraient perturber la réalisation d''un appel de balle ? (06 points)', false, '[]'::jsonb, ARRAY[]::text[], '1. **مشاكل إدراكية ومعلوماتية:** أخذ معلومات غير كافٍ: اللاعب ينظر إلى الكرة لا إلى الفضاءات، لا يرى موقع الدفاع ولا موقع زملائه، وينطلق دون تحديد الفضاء الحر.
2. **مشاكل قرارية:** اختيار خاطئ للحظة أو الممر أو المسار؛ طلب يُطلق بينما حامل الكرة تحت الضغط ولا يستطيع التمرير؛ طلبات متزامنة لعدة لاعبين في الفضاء نفسه تلغي بعضها.
3. **مشاكل تقنية:** تمريرة سيئة التوزيع، قوية جداً أو قصيرة أو سيئة التوجيه؛ ضبط حامل الكرة طويل جداً فيترك للدفاع وقت إعادة التمركز؛ عجز المستقبل عن الضبط أثناء الجري.
4. **مشاكل تكتيكية وجماعية:** غياب تثبيت مسبق للمدافع؛ خلل في احتلال الفضاء، لاعبون متكتلون حول الكرة؛ غياب تزامن بين انطلاق الطلب وإطلاق التمريرة.
5. **مشاكل بدنية:** نقص السرعة، وخصوصاً التسارع؛ التعب في نهاية المباراة الذي يقلل عدد طلبات الكرة وجودتها؛ تنسيق غير كافٍ عند تغيير الاتجاه.
6. **مشاكل متعلقة بالخصم والقانون:** رقابة فردية لصيقة، تغطية دفاعية، خط دفاعي مرتفع يمارس التسلل؛ كتلة دفاعية متجمعة تلغي الفضاء خلفها.
7. **مشاكل عاطفية وعلائقية:** خوف من الفشل أو التسلل يكبح المبادرة؛ نقص الثقة بين الزملاء، فيتوقف اللاعب عن طلب الكرة إذا لم تُمرَّر إليه أبداً؛ فقدان حماس اللاعب بلا كرة الذي يبقى متفرجاً.

السؤال يستدعي تصنيفاً حسب أنواع المشاكل — إدراكية، قرارية، تقنية، تكتيكية، بدنية، عاطفية — لا قائمة أخطاء متجاورة: التصنيف نفسه هو ما يُنقَّط. (مناصب تسرد المضمون نفسه كقائمة: التسلل، توقيت سيئ، دفاع متجمع أو كتلة منخفضة بلا فضاء، رقابة لصيقة، قراءة سيئة للحامل، نقص السرعة أو اللياقة، تمريرة غير دقيقة، غياب التواصل، أرضية أو ظروف غير مواتية.)', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'لا مفتاح رسمي في المسح لهذا الموضوع؛ الحل من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان التربية البدنية والرياضية — مادة التخصص (دورة نونبر 2016) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_2016_specialty_lycee_q11', 'exam_eps_2016_specialty_lycee', 11, 'كرة القدم', 'Après un appel de balle dans l''axe central, un attaquant effectue un tir en course à 22 mètres du but adverse ; Procédez à une description des phases du tir et citez les muscles sollicités, tout en précisant leurs fonctions ? (06 points)', false, '[]'::jsonb, ARRAY[]::text[], 'بعد طلب كرة في المحور المركزي، يسدد مهاجم أثناء الجري على بعد 22 متراً من مرمى الخصم.

**وصف مراحل التسديد أثناء الجري:**

1. **الطور التحضيري، أو جري الاقتراب:** اللاعب يدفع الكرة أمامه ويضبط استناداته؛ الخطوة الأخيرة أطول وأكثر انخفاضاً، مما يخفض مركز الثقل ويسمح بسعة تسليح أكبر.
2. **وضع قدم الارتكاز:** القدم غير الضاربة توضع بجانب الكرة، على بعد عشرين سنتيمتراً تقريباً، موجهة نحو الهدف. تصبح محور دوران الجسم، وتوجيهها يحدد إلى حد كبير اتجاه التسديد.
3. **التسليح (armé):** ثني ركبة الرجل الضاربة ومدّ الورك: الكعب يصعد نحو الألية، الحوض يذهب إلى الخلف، الجذع يميل قليلاً إلى الخلف، الذراع المقابلة تبتعد للتوازن. إنه طور الشدّ.
4. **الضربة، أو طور التماس:** سوط الطرف السفلي نحو الأمام، مدّ متفجر للركبة، القدم تضرب الكرة في مستواها الوسطي بمشط القدم لمسار مشدود. التماس وجيز، بضعة أجزاء من الألف من الثانية، وسرعة خروج الكرة تتعلق بسرعة القدم لحظة الصدمة. (الجذع فوق الكرة.)
5. **المتابعة وإعادة التوازن:** الطرف السفلي يواصل حركته نحو الهدف، الجسم يُدفع نحو الأمام، استقبال على الرجل الضاربة واستئناف الجري. المتابعة تمنع تباطؤ القدم المبكر، وبالتالي فقدان سرعة الكرة.

**العضلات المستعملة ووظائفها:**

- **العضلة رباعية الرؤوس الفخذية (quadriceps fémoral)، الرجل الضاربة:** باسطة الركبة، تنتج الجزء الأساسي من سرعة القدم أثناء السوط؛ ورأسها المستقيم الأمامي (droit fémoral) باسط للورك أيضاً.
- **العضلة القطنية الحرقفية (psoas iliaque):** مثنية للورك، تطلق الفخذ نحو الأمام في بداية السوط.
- **العضلات الخلفية للفخذ (ischio-jambiers)، الرجل الضاربة:** مثنية للركبة وباسطة للورك، تنتج التسليح ثم تكبح مدّ الركبة في نهاية الإيماء (تقلص لامركز يحمي المفصل).
- **العضلة الألوية الكبرى (grand fessier)، رجل الارتكاز:** باسطة للورك، تثبّت الحوض وتنقل دفع الأرض.
- **العضلة ثلاثية الرؤوس الساقية (triceps sural)، رجل الارتكاز:** باسطة للكاحل، تضمن الاستناد وتشارك في الدفع.
- **العضلات المقربة (adducteurs):** تعيد الفخذ نحو محور الجسم، مستعملة خصوصاً في الضربة بباطن القدم.
- **عضلات البطن والعمود الفقري (abdominaux et spinaux):** شدّ الجذع (gainage)، تنقل القوى من أسفل الجسم إلى أعلاه وتضبط ميل الجذع الذي ينظّم ارتفاع المسار.
- **العضلة الدالية وعضلات الحزام الكتفي (deltoïde):** الذراع المقابلة المبتعدة تعوّض دوران الحوض وتحافظ على التوازن الديناميكي.
- (مناصب تضيف: **العضلة الظنبوبية الأمامية (tibial antérieur)** — قفل الكاحل مع ثلاثية الرؤوس الساقية.)

النقط الست تتقاسم بين وصف المراحل والجرد العضلي. الدقة المنتظرة في العضلات هي **الوظيفة في هذا الإيماء بالضبط**، لا مجرد سرد قائمة تشريحية.', 'open', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2016-544/', false, 'لا مفتاح رسمي في المسح لهذا الموضوع؛ الحل من مصدرين منشورين مستقلين متطابقين (مناصب + mesconcours)')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
