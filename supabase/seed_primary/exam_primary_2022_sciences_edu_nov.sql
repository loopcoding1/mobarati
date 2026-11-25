-- ====================================================================
-- مباراتي — امتحان علوم التربية، دورة نونبر 2022 (التعليم الابتدائي)
-- ====================================================================
-- المصدر: ملف الحل solved/2022/علوم التربية - 2022.md
--   (سجل الامتحانات رقم 72؛ الحل: تصحيح منشور على mesconcours.ma — حل من إعداد
--    الموقع ("résolues et expliquées par nos soins")، وليس تصحيحا رسميا.)
--   رابط صفحة التصحيح: https://mesconcours.ma/concours/enseignement/2022-1011/
--   ملف الامتحان: exams-ibtida2i/2022/علوم التربية.pdf (12 صفحة، ممسوح ضوئيا،
--   علامة www.educaprof.com؛ يبدأ من الصفحة 5/7 من كراسة العربية — لا غلاف في الملف).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة، 12/12):
--   * نص كل سؤال من Q1 إلى Q60 وجذعه وخياراته الأربعة (A-D) مطابق حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة والتعليلات منقولة حرفياً من ملف الحل (ومنه من صفحة mesconcours.ma،
--     التي رُوجعت أيضاً مباشرة فطابقت ملف الحل في الأسئلة والاختيارات والأجوبة).
--   * ترقيم الملف 1–60 يقابل ترقيم الامتحان الأصلي على النحو التالي (مُتحقق منه صفحة بصفحة):
--       أسئلة الملف 1–15 = أسئلة الامتحان Q16–Q30 (كراسة اللغة العربية، صفحات 5–7/7)
--       أسئلة الملف 16–30 = أسئلة الامتحان Q46–Q60 (كراسة اللغة الفرنسية، صفحات 7–9/9)
--       أسئلة الملف 31–45 = أسئلة الامتحان Q76–Q90 (كراسة الرياضيات، صفحات 6–8/8)
--       أسئلة الملف 46–60 = أسئلة الامتحان Q106–Q120 (كراسة العلوم، صفحات 7–9/9)
--     وكل سؤال يحمل ترقيمه الأصلي في verification_note.
--   * الدورة «نونبر 2022» من ترويسة كل صفحة من صفحات الامتحان الاثنتي عشرة ومن صفحة
--     mesconcours.ma (عنوان الصفحة: «علوم التربية (نونبر 2022)»).
--
-- المدة والمعامل: لا مدة واحدة لهذا المكوّن المجمّع — كل كراسة من الكراسات الأربع مدتها
--   ساعة واحدة (ديداكتيك + علوم التربية معاً) حسب صفحة mesconcours.ma وملف الحل؛
--   لذلك duration_minutes = 60 (مدة الكراسة كاملة — ديداكتيك + علوم التربية معاً؛ لا مدة خاصة بالمكوّن وحده). المعامل غير مذكور في ورقة الامتحان
--   ولا في صفحة التصحيح، فلم يُسجَّل. الباريم: نقطة واحدة لكل جواب صحيح و0 للخاطئ.
--
-- الأسئلة الموسومة (تحفظ الموقع ⚠ على 9 أجوبة، حسب ملف الحل): Q15، Q26، Q28، Q30،
--   Q38، Q40، Q47، Q52، Q54 — سُجل التحفظ في verification_note لكل سؤال منها، وبقي
--   الجواب المعتمد هو جواب mesconcours.ma المنتظر.
--   لا يوجد مصدر ثانٍ منشور لهذا المكوّن (مناصب يغطي مكونات الديداكتيك فقط)،
--   فلا تعارضات بين المصادر لتسجيلها.
--
-- أسئلة متخطاة: لا شيء — جميع الأسئلة الـ60 لها جواب معتمد وأُدرجت كلها.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2022_sciences_edu_nov
--   <exam_id>_q<n>  للأسئلة.  subject: sciences_edu
--   session: nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_sciences_edu_nov', 'specialty_primary', 2022, 'sciences_edu', 'علوم التربية', 'امتحان علوم التربية (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 60)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (60 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q1', 'exam_primary_2022_sciences_edu_nov', 1, 'نظريات التعلم', 'حسب "فيكوتسكي" يُعتبر النمو:', false, '[{"id": "A", "text": "لاحقا على التعلم"}, {"id": "B", "text": "سابقا على التعلم"}, {"id": "C", "text": "متزامنا مع التعلم"}, {"id": "D", "text": "منفصلا عن التعلم"}]'::jsonb, ARRAY['A']::text[], 'يرى فيكوتسكي أن التعلم الجيد هو الذي يسبق النمو ويقوده: ما ينجزه الطفل اليوم بمساعدة الراشد في منطقة النمو القريبة ينجزه غدا بمفرده. فالنمو لاحق على التعلم، عكس بياجيه الذي يجعل النمو شرطا سابقا للتعلم.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q16 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q2', 'exam_primary_2022_sciences_edu_nov', 2, 'الكفاية والقدرة', 'نشاط ذهني أو جسدي قابل للتطبيق في مجالات متعددة:', false, '[{"id": "A", "text": "الكفاية"}, {"id": "B", "text": "التعلم"}, {"id": "C", "text": "القدرة"}, {"id": "D", "text": "الاكتساب"}]'::jsonb, ARRAY['C']::text[], 'القدرة استعداد ذهني أو حركي عام (الملاحظة، التحليل، التركيب...) يمارس في مواد ووضعيات كثيرة، فهي عرضانية. أما الكفاية فترتبط بفئة محددة من الوضعيات وتدمج قدرات ومعارف ومهارات.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q17 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q3', 'exam_primary_2022_sciences_edu_nov', 3, 'نظريات التعلم', 'يميز "سكينر" بين ثلاثة أنواع من المثيرات العقابية:', false, '[{"id": "A", "text": "مادية وثقافية وسلوكية"}, {"id": "B", "text": "مادية ونفسية واجتماعية"}, {"id": "C", "text": "مادية واجتماعية ورمزية"}, {"id": "D", "text": "جسدية ولفظية ورمزية"}]'::jsonb, ARRAY['C']::text[], 'في الإشراط الإجرائي تصنف المعززات والعقوبات بحسب طبيعتها إلى مادية (شيء ملموس يمنح أو يسحب) واجتماعية (استحسان أو استهجان من الآخرين) ورمزية (نقط، علامات، ميداليات). فالتصنيف المعتمد هو: مادية واجتماعية ورمزية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q18 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q4', 'exam_primary_2022_sciences_edu_nov', 4, 'المنهاج', 'يقصد بالمنهاج الصوري:', false, '[{"id": "A", "text": "الأهداف والبرامج"}, {"id": "B", "text": "التصور القبلي لأهداف التدريس"}, {"id": "C", "text": "منهاج غير قابل للتطبيق"}, {"id": "D", "text": "المنهاج القابل لأن يطبق على محتويات مختلفة"}]'::jsonb, ARRAY['D']::text[], 'المنهاج الصوري منهاج يحدد البنية والطرائق والكفايات دون أن يرتبط بمحتوى بعينه، أي صورة أو قالب يمكن ملؤه بمحتويات مختلفة. لذلك يوصف بأنه قابل للتطبيق على محتويات متعددة، وليس مجرد أهداف وبرامج أو تصور قبلي.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q19 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q5', 'exam_primary_2022_sciences_edu_nov', 5, 'نظريات التعلم', 'يحدث التعلم في نظر "بياجيه" نتيجة الصراع بين:', false, '[{"id": "A", "text": "الذات والسياق الاجتماعي"}, {"id": "B", "text": "ذوات المتعلمين حول موضوع ما"}, {"id": "C", "text": "ذات المتعلم وذات المعلم"}, {"id": "D", "text": "الذات وموضوع التعلم"}]'::jsonb, ARRAY['D']::text[], 'عند بياجيه يتعلم الفرد حين يختل توازنه أمام موضوع لا تستوعبه بنياته الحالية، فيعيد التوازن بالاستيعاب والملاءمة. الصراع إذن معرفي بين الذات والموضوع. أما الصراع بين الذوات (الصراع السوسيومعرفي) فهو إضافة البنائية الاجتماعية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q20 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q6', 'exam_primary_2022_sciences_edu_nov', 6, 'التقييمات الدولية', 'نسبة المتعلمين الذين يتوفرون على الحد الأدنى من الكفايات في القراءة، حسب تقييم "PISA 2018"، هي:', false, '[{"id": "A", "text": "27 في المائة"}, {"id": "B", "text": "34 في المائة"}, {"id": "C", "text": "47 في المائة"}, {"id": "D", "text": "74 في المائة"}]'::jsonb, ARRAY['A']::text[], 'في تقييم PISA 2018 بلغ 27 في المائة فقط من التلاميذ المغاربة البالغين 15 سنة المستوى 2 في القراءة، وهو الحد الأدنى من الكفاية حسب المنظمة. وتقابلها نسبة 73 في المائة دون هذا المستوى، وهي النسبة التي استند إليها النموذج التنموي الجديد.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q21 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q7', 'exam_primary_2022_sciences_edu_nov', 7, 'التربية الدامجة', 'يستفيد الأطفال في وضعية إعاقة عميقة من:', false, '[{"id": "A", "text": "تربية خاصة"}, {"id": "B", "text": "تربية دامجة"}, {"id": "C", "text": "تربية إدماجية"}, {"id": "D", "text": "تربية نظامية"}]'::jsonb, ARRAY['A']::text[], 'التربية الدامجة تستقبل الأطفال في وضعية إعاقة داخل الأقسام العادية حين تسمح حالتهم بذلك. أما الإعاقة العميقة فتتطلب تكفلا متخصصا في مؤسسات أو أقسام للتربية الخاصة، بأطر ووسائل ملائمة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q22 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q8', 'exam_primary_2022_sciences_edu_nov', 8, 'الديداكتيك', 'يُقصد بالممارسات الاجتماعية المرجعية في مجال الديداكتيك:', false, '[{"id": "A", "text": "السلوكات المقبولة اجتماعيا"}, {"id": "B", "text": "الأنشطة خارج المدرسة التي تصلح محتوى دراسيا"}, {"id": "C", "text": "الممارسات التي يستقيها المتعلم من جماعته الخاصة"}, {"id": "D", "text": "الممارسات التي تصدر عن أفراد يحظون بتقدير الجماعة"}]'::jsonb, ARRAY['B']::text[], 'المفهوم لمارتينان: إلى جانب المعرفة العالمة، يمكن أن تستمد المحتويات المدرسية من أنشطة اجتماعية حقيقية خارج المدرسة (البحث، الصناعة، المهن، الحياة المنزلية). هذه الممارسات تصبح مرجعا لبناء المحتوى الدراسي، ولا علاقة لها بالسلوك المقبول أو بتقدير الجماعة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q23 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q9', 'exam_primary_2022_sciences_edu_nov', 9, 'دينامية الجماعة', 'يهدف الرائز السوسيومتري إلى قياس:', false, '[{"id": "A", "text": "التفاعلات بين الأفراد داخل الجماعة"}, {"id": "B", "text": "الصراعات بين الأفراد داخل الجماعة"}, {"id": "C", "text": "مستوى الفوارق الاجتماعية بين أفراد الجماعة"}, {"id": "D", "text": "فروق التحصيل بين المتعلمين تبعا لوضعياتهم الاجتماعية"}]'::jsonb, ARRAY['A']::text[], 'الرائز السوسيومتري (مورينو) يسأل كل فرد عمن يختار أو يرفض من زملائه، ثم ترسم شبكة العلاقات (السوسيوغرام). فهو يقيس التفاعلات الوجدانية بين الأفراد: الجاذبية والنفور والقيادة والعزلة، وليس الصراعات وحدها ولا الفوارق الاجتماعية أو التحصيلية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q24 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q10', 'exam_primary_2022_sciences_edu_nov', 10, 'نظريات التعلم', 'من المظاهر الدالة على تكيف المتعلم مع المحيط الاجتماعي حسب البنائيين:', false, '[{"id": "A", "text": "الانتقال من الاستقلال إلى التبعية"}, {"id": "B", "text": "الانتقال من الاحترام المتبادل إلى الاحترام المطلق"}, {"id": "C", "text": "الانتقال من الخضوع للأشخاص إلى الخضوع للقواعد"}, {"id": "D", "text": "الانتقال من الإرادة إلى الطاقة"}]'::jsonb, ARRAY['C']::text[], 'يصف بياجيه النمو الأخلاقي بانتقال الطفل من أخلاق التبعية، حيث يخضع لسلطة الراشد، إلى أخلاق الاستقلال، حيث يحترم قواعد متفقا عليها مع الأقران. فالانتقال يكون من الخضوع للأشخاص إلى الخضوع للقواعد، ومن الاحترام الأحادي إلى الاحترام المتبادل، لا العكس كما في A وB.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q25 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q11', 'exam_primary_2022_sciences_edu_nov', 11, 'التربية الدامجة', 'من مبادئ التربية الدامجة:', false, '[{"id": "A", "text": "تكييف مضامين التعلم مع الخصوصيات المجالية"}, {"id": "B", "text": "تكييف التعليم لا تكييف المتعلم"}, {"id": "C", "text": "تكييف المتعلمين مع الوسط المدرسي"}, {"id": "D", "text": "تكييف المضامين الدراسية مع احتياجات جميع المتعلمين"}]'::jsonb, ARRAY['B']::text[], 'المبدأ المؤسس للتربية الدامجة أن المدرسة هي التي تتكيف مع الطفل، لا أن يطلب من الطفل في وضعية إعاقة أن يتكيف مع مدرسة لم تصمم له. الاقتراح C يعبر عن منطق الإدماج القديم، والاقتراح D وسيلة من وسائل تطبيق المبدأ لا المبدأ نفسه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q26 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q12', 'exam_primary_2022_sciences_edu_nov', 12, 'تدبير المؤسسة', 'يكون المدرس بالضرورة عضوا في:', false, '[{"id": "A", "text": "مجلس القسم"}, {"id": "B", "text": "مكتب جمعية دعم مدرسة النجاح"}, {"id": "C", "text": "مجلس التدبير"}, {"id": "D", "text": "أحد الأندية التربوية"}]'::jsonb, ARRAY['A']::text[], 'حسب النظام الأساسي لمؤسسات التربية والتعليم، يتكون مجلس القسم من مدير المؤسسة وجميع مدرسي القسم وممثل أولياء التلاميذ، فكل مدرس عضو فيه بحكم القانون. أما مجلس التدبير ومكتب الجمعية والأندية فالعضوية فيها بالانتخاب أو بالتطوع.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q27 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q13', 'exam_primary_2022_sciences_edu_nov', 13, 'نظريات التعلم', 'يعتبر التعلم في النظرية السوسيوبنائية تفاعلا بين:', false, '[{"id": "A", "text": "ذات المتعلم وموضوع المعرفة"}, {"id": "B", "text": "ذات المتعلم وبنياته المعرفية السابقة"}, {"id": "C", "text": "ذات المتعلم والمضامين التعليمية المقررة"}, {"id": "D", "text": "ذات المتعلم وذوات أخرى"}]'::jsonb, ARRAY['D']::text[], 'تضيف السوسيوبنائية (فيكوتسكي، دواز، بيريه كليرمون) إلى بنائية بياجيه البعد الاجتماعي: المعرفة تبنى في التفاعل مع الآخرين، أقرانا ومدرسا، عبر الصراع السوسيومعرفي. أما التفاعل بين الذات والموضوع فهو تعريف البنائية عند بياجيه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q28 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q14', 'exam_primary_2022_sciences_edu_nov', 14, 'أنماط التربية', 'يشمل برنامج التربية غير النظامية فئة:', false, '[{"id": "A", "text": "اليافعين غير المتمدرسين أو المنقطعين عن الدراسة"}, {"id": "B", "text": "تلامذة مدارس التعليم الأصيل"}, {"id": "C", "text": "المستفيدين من محاربة الأمية"}, {"id": "D", "text": "الأحداث الجانحين"}]'::jsonb, ARRAY['A']::text[], 'التربية غير النظامية (مدرسة الفرصة الثانية) موجهة للأطفال واليافعين غير المتمدرسين أو المنقطعين عن الدراسة لإعادة إدماجهم في التعليم أو التكوين. محاربة الأمية برنامج مستقل يخص الكبار، والتعليم الأصيل جزء من التعليم النظامي.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q29 من كراسة اللغة العربية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q15', 'exam_primary_2022_sciences_edu_nov', 15, 'البيداغوجيات', 'تقوم مقاربة "ماريا مونتيسوري" البيداغوجية على:', false, '[{"id": "A", "text": "الاكتفاء بملاحظة الطفل أثناء نموه الطبيعي والنفسي"}, {"id": "B", "text": "توفير أدوات تمكن الطفل من التعلم والاكتشاف بمفرده دون تدخل الراشد"}, {"id": "C", "text": "توجيه الطفل في استعمال الأدوات الكفيلة بتنمية قدراته الجسدية والنفسية"}, {"id": "D", "text": "تقييد الطفل بحجرة الدراسة"}]'::jsonb, ARRAY['B']::text[], '⚠ تقوم بيداغوجيا مونتيسوري على بيئة معدة وأدوات حسية ذاتية التصحيح يتعلم بها الطفل ويكتشف بنفسه، وشعارها "ساعدني لأفعلها وحدي". الجواب المنتظر هو B. لكن عبارة "دون تدخل الراشد" مبالغة، لأن المربي يقدم الأداة ويعرض طريقة استعمالها ثم ينسحب، وهذا ما يجعل الاقتراح C قريبا أيضا.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q30 من كراسة اللغة العربية. تحفظ الموقع (⚠): عبارة «دون تدخل الراشد» في الخيار B مبالغة؛ المربي يقدم الأداة ويعرض طريقة استعمالها ثم ينسحب، فيبقى الخيار C قريبا أيضا')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q16', 'exam_primary_2022_sciences_edu_nov', 16, 'دينامية الجماعة', 'تعتبر جماعة القسم بالنسبة إلى المتعلم:', false, '[{"id": "A", "text": "جماعة أولية"}, {"id": "B", "text": "جماعة ثانوية"}, {"id": "C", "text": "جماعة منغلقة"}, {"id": "D", "text": "جماعة متوسطة"}]'::jsonb, ARRAY['B']::text[], 'الجماعة الأولية (الأسرة، الأصدقاء) صغيرة تقوم على علاقات عاطفية مباشرة وتلقائية. أما جماعة القسم فمنظمة مؤسسيا، لم يخترها الفرد، وتحكمها قواعد وأهداف محددة (التعلم)، فهي جماعة ثانوية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q46 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q17', 'exam_primary_2022_sciences_edu_nov', 17, 'نظريات التعلم', 'المقصود بالوسيط السيميوتيكي حسب "فيكوتسكي":', false, '[{"id": "A", "text": "الوسائل المادية التي تضمن التواصل بين البشر"}, {"id": "B", "text": "المدرس أو المرشد الذي يدير التفاعلات بين المتعلمين"}, {"id": "C", "text": "النصوص والأسناد الحاملة للمضامين المعرفية"}, {"id": "D", "text": "كل الوسائل الناقلة للمعرفة خارج المدرسة"}]'::jsonb, ARRAY['C']::text[], 'يميز فيكوتسكي بين الأدوات المادية التي تؤثر في الأشياء والأدوات السيميوتيكية (العلامات: اللغة، الرموز، الكتابة، الخطاطات) التي تؤثر في التفكير. فالوسيط السيميوتيكي هو النصوص والأسناد والرموز الحاملة للمعرفة. المدرس وسيط اجتماعي لا سيميوتيكي، والوسائل المادية ليست علامات.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q47 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q18', 'exam_primary_2022_sciences_edu_nov', 18, 'الكفاية والقدرة', 'يعتبر التعرف على الذات والقدرة على التعبير عنها كفاية:', false, '[{"id": "A", "text": "تواصلية"}, {"id": "B", "text": "منهجية"}, {"id": "C", "text": "استراتيجية"}, {"id": "D", "text": "ثقافية"}]'::jsonb, ARRAY['C']::text[], 'يحدد الكتاب الأبيض خمسة أصناف من الكفايات، وتشمل الكفايات الاستراتيجية التعرف على الذات والتعبير عنها، والتموقع في الزمان والمكان، والتموقع بالنسبة للآخر وللمؤسسات، وتعديل المنتظرات والاتجاهات. لذلك فالتعرف على الذات كفاية استراتيجية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q48 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q19', 'exam_primary_2022_sciences_edu_nov', 19, 'التخطيط البيداغوجي', 'من العناصر التي تتضمنها جذاذة الدرس:', false, '[{"id": "A", "text": "التوزيع السنوي"}, {"id": "B", "text": "الكفاية المستهدفة"}, {"id": "C", "text": "الأنشطة الموازية"}, {"id": "D", "text": "التخطيط المجالي"}]'::jsonb, ARRAY['B']::text[], 'الجذاذة وثيقة تخطيط لحصة واحدة، تذكر الكفاية أو الهدف المستهدف والموضوع والوسائل والمراحل والأنشطة والتقويم. التوزيع السنوي والتخطيط المجالي وثائق تخطيط لمدى أطول، والأنشطة الموازية خارج الحصة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q49 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q20', 'exam_primary_2022_sciences_edu_nov', 20, 'التقويم', 'من أهداف التقويم الإشهادي:', false, '[{"id": "A", "text": "تخطيط التعلمات في المراحل المقبلة من التعليم والتعلم"}, {"id": "B", "text": "الحكم على إنتاجات المتعلمين ومنحها تقديرات عددية"}, {"id": "C", "text": "بناء خطة للدعم وتجاوز التعثرات المرصودة"}, {"id": "D", "text": "تعرف مكامن القوة والضعف في مكتسبات المتعلمين"}]'::jsonb, ARRAY['B']::text[], 'التقويم الإشهادي يأتي في نهاية مرحلة ليصدر حكما على المكتسبات بنقطة تفضي إلى قرار (نجاح، انتقال، شهادة). أما تعرف مكامن القوة والضعف فوظيفة التقويم التشخيصي، وبناء خطة الدعم وظيفة التقويم التكويني.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q50 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q21', 'exam_primary_2022_sciences_edu_nov', 21, 'الأهداف التربوية', 'تعتمد صنافة "بلوم" في تصنيف:', false, '[{"id": "A", "text": "الكفايات"}, {"id": "B", "text": "القدرات"}, {"id": "C", "text": "الأهداف"}, {"id": "D", "text": "المهارات"}]'::jsonb, ARRAY['C']::text[], 'صنافة بلوم (1956) أداة لتصنيف الأهداف التربوية في المجال المعرفي وترتيبها تصاعديا: المعرفة، الفهم، التطبيق، التحليل، التركيب، التقويم. وهي من أدوات بيداغوجيا الأهداف قبل ظهور المقاربة بالكفايات.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q51 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q22', 'exam_primary_2022_sciences_edu_nov', 22, 'سوسيولوجيا التربية', 'ترتبط إعادة الإنتاج عند "بيير بورديو" ب:', false, '[{"id": "A", "text": "نقل القيم الثقافية من جيل إلى آخر"}, {"id": "B", "text": "انتقال ممارسات اجتماعية داخل أسرة من السلف إلى الخلف"}, {"id": "C", "text": "التدوير الثقافي والرمزي للمنتوج الاقتصادي"}, {"id": "D", "text": "تبني الطبقة المهيمن عليها لأفكار الطبقة المهيمنة"}]'::jsonb, ARRAY['D']::text[], 'عند بورديو تعيد المدرسة إنتاج البنية الاجتماعية حين تفرض ثقافة الطبقة المهيمنة على أنها الثقافة المشروعة (العنف الرمزي)، فيتبناها المهيمن عليهم ويقبلون نتائجها. أما نقل القيم من جيل إلى جيل فهو التنشئة الاجتماعية عند دوركايم.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q52 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q23', 'exam_primary_2022_sciences_edu_nov', 23, 'علم نفس النمو', 'يوافق المرحلة الفمية عند "فرويد" في مراحل النمو عند "بياجيه":', false, '[{"id": "A", "text": "مرحلة ما قبل العمليات"}, {"id": "B", "text": "مرحلة العمليات المشخصة"}, {"id": "C", "text": "مرحلة العمليات المجردة"}, {"id": "D", "text": "المرحلة الحسية الحركية"}]'::jsonb, ARRAY['D']::text[], 'المرحلة الفمية عند فرويد تمتد من الولادة إلى حوالي السنة الأولى والنصف، وتقابلها عند بياجيه المرحلة الحسية الحركية (من الولادة إلى سنتين). مرحلة ما قبل العمليات تبدأ بعد سنتين وتقابل تقريبا المرحلتين الشرجية والقضيبية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q53 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q24', 'exam_primary_2022_sciences_edu_nov', 24, 'المنهاج', 'يتيح التدريس بالمجزوءة للمدرس إمكانية:', false, '[{"id": "A", "text": "إعادة تنظيم وترتيب المضامين بما يناسب قدرات المتعلمين"}, {"id": "B", "text": "تعديل المضامين المقررة والكفايات المستهدفة وفق ما يراه مناسبا"}, {"id": "C", "text": "إضافة عناصر جديدة وحذف أخرى وفق ما يناسب قدرات المتعلمين"}, {"id": "D", "text": "إعادة ترتيب المجزوءات داخل المقرر الدراسي وفق ما يراه مناسبا"}]'::jsonb, ARRAY['A']::text[], 'المجزوءة وحدة مستقلة نسبيا تتمحور حول كفاية، وتمنح المدرس مرونة في تنظيم مضامينها وترتيبها حسب مستوى متعلميه. لكنها لا تبيح له تعديل الكفايات المقررة أو حذف مضامين رسمية، ولا إعادة ترتيب المجزوءات حسب هواه لأن المنهاج يحدد تسلسلها.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q54 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q25', 'exam_primary_2022_sciences_edu_nov', 25, 'تدبير المنظومة', 'تهدف منظومة التدبير المعلوماتي مسار إلى:', false, '[{"id": "A", "text": "مراقبة أداء أطر هيئة التدريس"}, {"id": "B", "text": "تقديم الدعم البيداغوجي والدروس الرقمية"}, {"id": "C", "text": "تحقيق الحكامة في المنظومة التربوية"}, {"id": "D", "text": "تيسير التحول من التعليم الحضوري إلى التعليم عن بعد"}]'::jsonb, ARRAY['C']::text[], 'منظومة مسار (2014) نظام معلوماتي لتدبير التمدرس: التسجيل، النقط، الغياب، النتائج، التوجيه. هدفها تحديث التدبير وتحقيق الحكامة والشفافية في المنظومة، وليست منصة للدروس الرقمية ولا أداة لمراقبة المدرسين.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q55 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q26', 'exam_primary_2022_sciences_edu_nov', 26, 'نظريات التعلم', 'حسب نظرية "فيكوتسكي" ينبغي أن يسعى الوسيط البيداغوجي في عملية التعلم إلى:', false, '[{"id": "A", "text": "تقليص مساحة المنطقة المحادية للنمو"}, {"id": "B", "text": "توسيع مساحة المنطقة المحادية للنمو"}, {"id": "C", "text": "الحفاظ على ثبات مساحة المنطقة المحادية للنمو"}, {"id": "D", "text": "نقل التعلم خارج المنطقة المحادية للنمو"}]'::jsonb, ARRAY['A']::text[], '⚠ المنطقة القريبة للنمو هي المسافة بين ما ينجزه الطفل وحده وما ينجزه بمساعدة. دور الوسيط أن يشتغل داخلها ليصير الممكن فعليا، فتتقلص المسافة بين المستويين، وهذا هو الجواب المنتظر. ننبه إلى أن بعض الكتابات تعبر عن الفكرة نفسها بـ"توسيع" مجال ما يستطيع الطفل إنجازه، فالصياغة ملتبسة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q56 من كراسة اللغة الفرنسية. تحفظ الموقع (⚠): الصياغة ملتبسة؛ بعض الكتابات تعبر عن الفكرة نفسها بـ«توسيع» مجال ما يستطيع الطفل إنجازه')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q27', 'exam_primary_2022_sciences_edu_nov', 27, 'منهجية البحث', 'تقوم منهجية "دراسة حالة" على:', false, '[{"id": "A", "text": "دراسة كمية تعنى بالظواهر المستجدة"}, {"id": "B", "text": "دراسة كيفية تقتصر على تتبع الأفراد"}, {"id": "C", "text": "دراسة كيفية تعتمد على تتبع الأفراد أو الظواهر كحالات فردية"}, {"id": "D", "text": "دراسة كمية للحالات الفردية والظواهر المعزولة"}]'::jsonb, ARRAY['C']::text[], 'دراسة الحالة منهج كيفي يتعمق في حالة واحدة أو عدد قليل من الحالات، قد تكون فردا أو جماعة أو مؤسسة أو ظاهرة. فهي ليست كمية، ولا تقتصر على الأفراد كما في B.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q57 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q28', 'exam_primary_2022_sciences_edu_nov', 28, 'القدرات', 'يعتبر الإصغاء والتواصل قدرة:', false, '[{"id": "A", "text": "حس-حركية"}, {"id": "B", "text": "وجدانية"}, {"id": "C", "text": "معرفية"}, {"id": "D", "text": "منهجية"}]'::jsonb, ARRAY['B']::text[], '⚠ في صنافة كراتوول للمجال الوجداني، أول مستوى هو التقبل أو الاستقبال، ومن أمثلته الإصغاء باهتمام، ثم الاستجابة والمشاركة في التواصل. لذلك نعد الإصغاء والتواصل قدرة وجدانية (سوسيووجدانية). قد يصنفها مرجع آخر ضمن القدرات المنهجية أو التواصلية، فالسؤال يحتمل الخلاف.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q58 من كراسة اللغة الفرنسية. تحفظ الموقع (⚠): قد يصنفها مرجع آخر ضمن القدرات المنهجية أو التواصلية؛ السؤال يحتمل الخلاف')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q29', 'exam_primary_2022_sciences_edu_nov', 29, 'الديداكتيك', 'الهدف-العائق مفهوم ذو بعدين:', false, '[{"id": "A", "text": "تربوي وإبستيمولوجي"}, {"id": "B", "text": "نفسي ومعرفي"}, {"id": "C", "text": "تربوي وإجرائي"}, {"id": "D", "text": "ذهني ومعرفي"}]'::jsonb, ARRAY['A']::text[], 'صاغ مارتينان مفهوم الهدف-العائق انطلاقا من العائق الإبستيمولوجي عند باشلار: عائق في بناء المعرفة العلمية نفسها، يتحول إلى هدف تربوي يبني المدرس حوله وضعية لتجاوزه. فالمفهوم يجمع البعد الإبستيمولوجي والبعد التربوي.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q59 من كراسة اللغة الفرنسية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q30', 'exam_primary_2022_sciences_edu_nov', 30, 'سوسيولوجيا التربية', 'يرى "دوركايم" أن المبدأ الأساس في التربية الأخلاقية هو:', false, '[{"id": "A", "text": "تكييف الفعل الفردي مع أفعال الجماعة"}, {"id": "B", "text": "المحاكاة والتقليد"}, {"id": "C", "text": "الخضوع للإكراه الاجتماعي"}, {"id": "D", "text": "الاستقلالية"}]'::jsonb, ARRAY['C']::text[], '⚠ عند دوركايم الأخلاق نسق من القواعد يفرضه المجتمع على الفرد من خارجه، وأول عناصر التربية الأخلاقية روح الانضباط، أي الخضوع لسلطة القاعدة الاجتماعية (الإكراه الاجتماعي). يضيف إليها التعلق بالجماعة والاستقلالية، لكن الخضوع هو الأساس. قد يقرأ الاقتراح A أيضا تعبيرا عن التعلق بالجماعة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q60 من كراسة اللغة الفرنسية. تحفظ الموقع (⚠): قد يقرأ الاقتراح A أيضا تعبيرا عن التعلق بالجماعة')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q31', 'exam_primary_2022_sciences_edu_nov', 31, 'البيداغوجيات', 'تستخدم بيداغوجيا حل المشكلات في:', false, '[{"id": "A", "text": "مواد العلوم والرياضيات"}, {"id": "B", "text": "كافة المواد والتخصصات ومختلف الوضعيات"}, {"id": "C", "text": "الأنشطة التطبيقية"}, {"id": "D", "text": "وضعيات الانطلاق"}]'::jsonb, ARRAY['B']::text[], 'بيداغوجيا حل المشكلات مقاربة عامة تجعل المتعلم يبني معارفه بمواجهة وضعية مشكلة، وتصلح للغات والمواد الاجتماعية كما للعلوم، وفي مراحل الدرس كلها. حصرها في مواد أو أنشطة أو لحظة معينة تضييق لها.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q76 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q32', 'exam_primary_2022_sciences_edu_nov', 32, 'التقويم', 'تعتبر المراقبة المستمرة تقويما:', false, '[{"id": "A", "text": "تكوينيا تشخيصيا"}, {"id": "B", "text": "تشخيصيا جزائيا"}, {"id": "C", "text": "تكوينيا إشهاديا"}, {"id": "D", "text": "تكوينيا غير جزائي"}]'::jsonb, ARRAY['C']::text[], 'المراقبة المستمرة تتم طوال السنة فتؤدي وظيفة تكوينية (تتبع التعلمات وتعديلها)، ونقطها تحتسب في المعدل وفي قرارات الانتقال والامتحانات الإشهادية، فلها أيضا وظيفة إشهادية. لذلك فهي تقويم تكويني إشهادي، لا غير جزائي.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q77 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q33', 'exam_primary_2022_sciences_edu_nov', 33, 'التواصل البيداغوجي', 'التواصل البيداغوجي هو:', false, '[{"id": "A", "text": "التواصل بين مختلف المدرسين لتحقيق تكامل بين المضامين المدرسة"}, {"id": "B", "text": "الرسائل المتبادلة بين أفراد جماعة القسم حول موضوع ما"}, {"id": "C", "text": "التواصل البناء بين المدرس والمحيط الاجتماعي للمتعلم"}, {"id": "D", "text": "مختلف مستويات التواصل بين مكونات المدرسة"}]'::jsonb, ARRAY['B']::text[], 'التواصل البيداغوجي هو تبادل الرسائل داخل الفصل بين المدرس والمتعلمين والمتعلمين فيما بينهم حول موضوع التعلم. التواصل بين المدرسين أو مع المحيط أو بين مكونات المدرسة تواصل مؤسسي أو تربوي أعم.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q78 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q34', 'exam_primary_2022_sciences_edu_nov', 34, 'دينامية الجماعة', 'من العوامل السلبية في دينامية الجماعة:', false, '[{"id": "A", "text": "بروز عدة قيادات"}, {"id": "B", "text": "التنافس بين أعضاء الجماعة"}, {"id": "C", "text": "تنوع أساليب التواصل"}, {"id": "D", "text": "وحدة الغاية"}]'::jsonb, ARRAY['A']::text[], 'تعدد القيادات داخل جماعة واحدة يولد صراعا على النفوذ ويقسمها إلى تكتلات، فيضعف تماسكها. أما وحدة الغاية وتنوع أساليب التواصل فعوامل إيجابية، والتنافس المنظم قد يكون محفزا.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q79 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q35', 'exam_primary_2022_sciences_edu_nov', 35, 'علم نفس النمو', 'يتجلى عدم وضوح الوضع الاعتباري للمراهق في تأرجحه بين:', false, '[{"id": "A", "text": "الاندفاع والخوف"}, {"id": "B", "text": "قيم الأسرة وقيم جماعة الأصدقاء"}, {"id": "C", "text": "الأم والأب"}, {"id": "D", "text": "الطفولة وسن الرشد"}]'::jsonb, ARRAY['D']::text[], 'المراهق لم يعد طفلا ولم يصبح راشدا بعد: يطالب باستقلالية الكبار ويعامل أحيانا معاملة الصغار. هذا التأرجح بين وضعين هو ما يجعل مكانته الاجتماعية (وضعه الاعتباري) غير واضحة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q80 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q36', 'exam_primary_2022_sciences_edu_nov', 36, 'التربية الدامجة', 'تستهدف التربية الدامجة الأطفال:', false, '[{"id": "A", "text": "الوافدين على المغرب من بلدان أخرى"}, {"id": "B", "text": "في وضعية اجتماعية هشة"}, {"id": "C", "text": "المنقطعين عن الدراسة"}, {"id": "D", "text": "في وضعية إعاقة"}]'::jsonb, ARRAY['D']::text[], 'البرنامج الوطني للتربية الدامجة (2019) موجه للأطفال في وضعية إعاقة، لتمكينهم من التمدرس في المدارس العادية مع التكييفات اللازمة. الأطفال المنقطعون عن الدراسة يستهدفهم برنامج التربية غير النظامية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q81 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q37', 'exam_primary_2022_sciences_edu_nov', 37, 'الديداكتيك', 'من أهداف التعاقد الديداكتيكي:', false, '[{"id": "A", "text": "تحديد المتوقع من المتعلم"}, {"id": "B", "text": "إشراك المتعلم في تحديد أهداف الدرس"}, {"id": "C", "text": "تحديد الغلاف الزمني للتعلمات"}, {"id": "D", "text": "اختيار أدوات التقويم المناسبة"}]'::jsonb, ARRAY['A']::text[], 'يعرف بروسو التعاقد الديداكتيكي بأنه مجموع الانتظارات المتبادلة، الصريحة والضمنية، بين المدرس والمتعلم: ما ينتظره كل طرف من الآخر أمام المعرفة. فوظيفته تحديد ما هو متوقع من المتعلم ومن المدرس، لا تحديد الزمن أو أدوات التقويم.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q82 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q38', 'exam_primary_2022_sciences_edu_nov', 38, 'الكفاية والقدرة', 'من خصائص الكفاية أنها:', false, '[{"id": "A", "text": "تتكون من مستويات متدرجة"}, {"id": "B", "text": "ظاهرية ويمكن قياسها بدقة"}, {"id": "C", "text": "قابلة للتعلم"}, {"id": "D", "text": "تتعارض مع المهارات"}]'::jsonb, ARRAY['C']::text[], '⚠ الكفاية مكتسبة: تبنى بالتعلم والتدريب في وضعيات، وهذا ما يقصده الاقتراح C. وهي ليست ظاهرية بل افتراضية، لا تقاس مباشرة بل يستدل عليها من الإنجاز، ولا تتعارض مع المهارات بل تدمجها. الاقتراح A ليس خاطئا تماما لأن الكفاية تنمو بالتدريج، لكنه وصف لتنميتها لا لطبيعتها.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q83 من كراسة الرياضيات. تحفظ الموقع (⚠): الاقتراح A ليس خاطئا تماما لأن الكفاية تنمو بالتدريج، لكنه وصف لتنميتها لا لطبيعتها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q39', 'exam_primary_2022_sciences_edu_nov', 39, 'نظريات التعلم', 'من مبادئ نظرية "برونر" في التعلم:', false, '[{"id": "A", "text": "المظاهر المعرفية والثقافية أهم من التفاعلات السوسيو-وجدانية"}, {"id": "B", "text": "النشاطات الذهنية لا تتم بشكل فردي منعزل"}, {"id": "C", "text": "الانفصال بين الثقافة الجمعية والتفكير الفردي"}, {"id": "D", "text": "استبعاد الاختلافات وتوحيد الأفكار بين المتعلمين لتحقيق تعلم موحد"}]'::jsonb, ARRAY['B']::text[], 'يؤكد برونر، متأثرا بفيكوتسكي، أن التعلم نشاط ثقافي واجتماعي يتم بالتفاعل ودعم الآخر (مفهوم السقالة أو التدعيم)، لا نشاطا ذهنيا منعزلا. لذلك يربط التفكير الفردي بالثقافة الجمعية بدل الفصل بينهما.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q84 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q40', 'exam_primary_2022_sciences_edu_nov', 40, 'الكفاية والقدرة', 'المقصود بفئة الوضعيات:', false, '[{"id": "A", "text": "وضعيات تخص محتوى دراسيا واحدا"}, {"id": "B", "text": "وضعيات تستهدف فئة خاصة من المتعلمين"}, {"id": "C", "text": "وضعيات تعبأ فيها نفس الموارد"}, {"id": "D", "text": "وضعيات تنمي كفاية واحدة"}]'::jsonb, ARRAY['C']::text[], '⚠ عند روجيرس فئة الوضعيات مجموعة وضعيات متكافئة في التعقيد، تحل بتعبئة الموارد نفسها، بحيث تعد كل واحدة منها تجسيدا للكفاية. هذا هو الجواب المنتظر. ويرتبط المفهوم بكفاية واحدة كما في D، لأن كل كفاية تعرف بفئة وضعياتها، فالاقتراحان متقاربان.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q85 من كراسة الرياضيات. تحفظ الموقع (⚠): الاقتراحان C وD متقاربان؛ فئة الوضعيات ترتبط بكفاية واحدة كما في D')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q41', 'exam_primary_2022_sciences_edu_nov', 41, 'الديداكتيك', 'يشير الانزلاق الديداكتيكي "أثر توباز" إلى:', false, '[{"id": "A", "text": "تقديم المساعدة للمتعلم بدل تركه يواجه المشكل بنفسه"}, {"id": "B", "text": "تفادي النقاش مع المتعلم"}, {"id": "C", "text": "ترك الأساسي والاهتمام بالهامشي"}, {"id": "D", "text": "التركيز على عدد محدود من المتعلمين"}]'::jsonb, ARRAY['A']::text[], 'في مسرحية بانيول يملي توباز على تلميذه الجواب حرفا حرفا حتى ينطقه. يصف بروسو بهذا الاسم ما يحدث حين يخفض المدرس صعوبة المهمة ويقدم الجواب ضمنيا بدل أن يترك المتعلم يواجه المشكلة، فتضيع المعرفة المستهدفة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q86 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q42', 'exam_primary_2022_sciences_edu_nov', 42, 'علم نفس النمو', 'الدوافع الليبيدية هي:', false, '[{"id": "A", "text": "الدوافع التي لا يمكنها أن تجد إشباعا"}, {"id": "B", "text": "الدوافع الجنسية بمعناها الواسع"}, {"id": "C", "text": "الدوافع الجنسية العدوانية"}, {"id": "D", "text": "الدوافع المتعارضة مع الواقع"}]'::jsonb, ARRAY['B']::text[], 'الليبيدو عند فرويد طاقة دوافع الحياة، وهي جنسية بالمعنى الواسع: كل بحث عن اللذة والإشباع منذ الطفولة (الرضاعة، اللعب...). أما الدوافع العدوانية فتنسب إلى دوافع الموت.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q87 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q43', 'exam_primary_2022_sciences_edu_nov', 43, 'أنماط التدريس', 'التدريس بالتناوب في ظل الأزمة هو:', false, '[{"id": "A", "text": "اعتماد التدريس بالفصل المعكوس"}, {"id": "B", "text": "اعتماد الأقسام الافتراضية في التدريس"}, {"id": "C", "text": "متابعة الدراسة بين مؤسستين (تعليمية/مهنية)"}, {"id": "D", "text": "اعتماد أكثر من نمط في التدريس (حضوري/عن بعد)"}]'::jsonb, ARRAY['D']::text[], 'خلال جائحة كوفيد 19 اعتمدت الوزارة "التعليم بالتناوب": تقسيم القسم إلى أفواج تتناوب بين التعلم الحضوري في المؤسسة والتعلم الذاتي أو عن بعد. أما التناوب بين مؤسسة تعليمية ومهنية فهو التكوين بالتناوب، وهو سياق آخر.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q88 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q44', 'exam_primary_2022_sciences_edu_nov', 44, 'علم النفس', 'علم النفس الذي يهتم بدراسة عمليات نقل المدخلات الحسية ومعالجتها واستعمالها هو:', false, '[{"id": "A", "text": "علم النفس الفارقي"}, {"id": "B", "text": "علم النفس التكويني"}, {"id": "C", "text": "علم نفس النمو"}, {"id": "D", "text": "علم النفس المعرفي"}]'::jsonb, ARRAY['D']::text[], 'علم النفس المعرفي يدرس معالجة المعلومات: الإدراك والانتباه والذاكرة والتفكير، أي كيف تستقبل المعلومات الحسية وتحول وتخزن وتستعمل. علم النفس الفارقي يدرس الفروق بين الأفراد، والتكويني وعلم نفس النمو يدرسان تطور القدرات مع السن.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q89 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q45', 'exam_primary_2022_sciences_edu_nov', 45, 'سوسيولوجيا التربية', 'يقصد "بورديو" بالحقل الاجتماعي جزءا من الفضاء الاجتماعي:', false, '[{"id": "A", "text": "يقتطع وتعين حدوده قصد دراستها وتحليلها"}, {"id": "B", "text": "تحكمه قوانين بعضها مشترك مع المجتمع وبعضها منفصل عنه"}, {"id": "C", "text": "ينفلت من قوانين إعادة الإنتاج العامة"}, {"id": "D", "text": "تطغى فيه العلاقات الاجتماعية على غيرها من العلاقات"}]'::jsonb, ARRAY['B']::text[], 'الحقل عند بورديو (الحقل الديني، العلمي، الفني، التربوي...) فضاء مستقل نسبيا: له رهاناته وقوانينه الخاصة، ويخضع في الوقت نفسه للقوانين العامة للمجتمع كالصراع على الرأسمال. فهو لا ينفلت منها، وليس مجرد اقتطاع منهجي يقوم به الباحث.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q90 من كراسة الرياضيات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q46', 'exam_primary_2022_sciences_edu_nov', 46, 'نظريات التعلم', 'يحدث التعلم حسب النظرية البنائية تغيرا في:', false, '[{"id": "A", "text": "سلوك المتعلم"}, {"id": "B", "text": "وتيرة النمو"}, {"id": "C", "text": "البنيات الذهنية للمتعلم"}, {"id": "D", "text": "العلاقة بالذوات الأخرى"}]'::jsonb, ARRAY['C']::text[], 'عند البنائيين يتعلم الفرد حين يعيد تنظيم بنياته المعرفية بالاستيعاب والملاءمة. تغيير السلوك القابل للملاحظة هو تعريف التعلم عند السلوكيين، والعلاقة بالآخرين محور السوسيوبنائية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q106 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q47', 'exam_primary_2022_sciences_edu_nov', 47, 'المشاريع البيداغوجية', 'يروم اعتماد مشروع القسم تحقيق غاية أساس هي:', false, '[{"id": "A", "text": "تكييف أهداف التدريس العامة مع حاجات التلاميذ"}, {"id": "B", "text": "تنمية استقلالية المتعلم وتطوير قدراته الخاصة"}, {"id": "C", "text": "تطوير العلاقة بين المدرسة ومحيطها الاجتماعي"}, {"id": "D", "text": "تجاوز طرق التقويم الإشهادية التقليدية"}]'::jsonb, ARRAY['B']::text[], '⚠ مشروع القسم يجعل المتعلمين يخططون وينجزون ويقومون عملا جماعيا، فغايته الأساس تنمية استقلاليتهم ومسؤوليتهم وقدراتهم، وهو الجواب المنتظر. أما تطوير العلاقة بالمحيط فمن غايات مشروع المؤسسة. وقد يقرأ الاقتراح A أيضا وصفا لمشروع القسم حين يفهم بمعنى تخطيط المدرس لقسمه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q107 من كراسة العلوم. تحفظ الموقع (⚠): قد يقرأ الاقتراح A أيضا وصفا لمشروع القسم حين يفهم بمعنى تخطيط المدرس لقسمه')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q48', 'exam_primary_2022_sciences_edu_nov', 48, 'الديداكتيك', 'مجموعة معارف وأفكار مجردة قد يؤدي تجاوزها إلى تحقيق التعلم:', false, '[{"id": "A", "text": "الخبرات السابقة"}, {"id": "B", "text": "التصورات المجردة"}, {"id": "C", "text": "التعلمات القبلية"}, {"id": "D", "text": "التمثلات"}]'::jsonb, ARRAY['D']::text[], 'التمثلات أفكار وتصورات يحملها المتعلم عن الظواهر قبل التعلم، وكثيرا ما تكون خاطئة أو ناقصة، فتصير عائقا. يتحقق التعلم حين يزعزعها المدرس ويعين المتعلم على تجاوزها وبناء تصور علمي مكانها.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q108 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q49', 'exam_primary_2022_sciences_edu_nov', 49, 'اللغات والتناوب اللغوي', 'المقصود بالتناوب اللغوي:', false, '[{"id": "A", "text": "اعتماد التناوب بين اللغتين الرسميتين للبلاد"}, {"id": "B", "text": "تنويع لغات التدريس"}, {"id": "C", "text": "تدريس أكثر من لغة في المستوى الواحد"}, {"id": "D", "text": "تدريس أكثر من لغة أجنبية"}]'::jsonb, ARRAY['B']::text[], 'يعرف القانون الإطار 51.17 التناوب اللغوي بأنه مقاربة بيداغوجية تعتمد تنويع لغات التدريس، بتدريس بعض المواد أو بعض المجزوءات بلغة أو لغات أجنبية. فهو يخص لغة تدريس المواد، لا عدد اللغات المدرسة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q109 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q50', 'exam_primary_2022_sciences_edu_nov', 50, 'برامج الدعم', 'لفظ "تارل" (TARL) هو اختصار ل:', false, '[{"id": "A", "text": "التدريس بالمستوى المتوقع"}, {"id": "B", "text": "التدريس بالمشاريع"}, {"id": "C", "text": "التدريس بالمستوى المناسب"}, {"id": "D", "text": "التدريس باللعب"}]'::jsonb, ARRAY['C']::text[], 'TaRL اختصار لـ Teaching at the Right Level، أي التدريس وفق المستوى المناسب: يجمع المتعلمون حسب مستواهم الفعلي في القراءة والحساب لا حسب قسمهم، ويشتغل كل فوج على ما يحتاجه. اعتمده المغرب منذ 2022 في المدارس الرائدة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q110 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q51', 'exam_primary_2022_sciences_edu_nov', 51, 'علم نفس النمو', 'يبدأ اكتساب الوظائف الرمزية حسب "بياجيه" انطلاقا من المرحلة العمرية:', false, '[{"id": "A", "text": "من الميلاد إلى سنتين"}, {"id": "B", "text": "من سنتين إلى 7 سنوات"}, {"id": "C", "text": "من 7 سنوات إلى 12 سنة"}, {"id": "D", "text": "ابتداء من 12 سنة"}]'::jsonb, ARRAY['B']::text[], 'تظهر الوظيفة الرمزية في بداية مرحلة ما قبل العمليات، نحو السنة الثانية: اللغة، اللعب الرمزي، المحاكاة المؤجلة، الرسم. فيصبح الطفل قادرا على تمثيل شيء غائب برمز، وهو ما يميز هذه المرحلة (2 إلى 7 سنوات) عن المرحلة الحسية الحركية.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q111 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q52', 'exam_primary_2022_sciences_edu_nov', 52, 'الحياة المدرسية', 'حدد الحيز الزمني المخصص لأنشطة الحياة المدرسية في جداول حصص المتعلمين في:', false, '[{"id": "A", "text": "ساعتين"}, {"id": "B", "text": "ثلاث ساعات"}, {"id": "C", "text": "أربع ساعات"}, {"id": "D", "text": "خمس ساعات"}]'::jsonb, ARRAY['A']::text[], '⚠ تنص المذكرات المنظمة للحياة المدرسية على تخصيص ساعتين أسبوعيا لأنشطتها في جداول حصص المتعلمين، وهو الجواب الذي اعتمدناه. لم نعثر على نص رسمي حديث يحسم الرقم للتعليم الابتدائي بعد المنهاج المنقح، فهذه الإجابة أقل يقينا من غيرها.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q112 من كراسة العلوم. تحفظ الموقع (⚠): لم يعثر على نص رسمي حديث يحسم الرقم للتعليم الابتدائي بعد المنهاج المنقح؛ هذه الإجابة أقل يقينا من غيرها')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q53', 'exam_primary_2022_sciences_edu_nov', 53, 'الديداكتيك', 'المقصود بالزمن الديداكتيكي:', false, '[{"id": "A", "text": "التخطيط الزمني للتعلمات"}, {"id": "B", "text": "مجمل الأفعال الديداكتيكية التي تمكن من نقل المعارف داخل الفصل"}, {"id": "C", "text": "مجموع الأحداث والأفعال الفصلية"}, {"id": "D", "text": "متوسط المدة التي تستغرقها العمليات التعليمية داخل الفصل"}]'::jsonb, ARRAY['B']::text[], 'الزمن الديداكتيكي (شوفالار) هو زمن تقدم المعرفة داخل الفصل: تسلسل الأفعال الديداكتيكية التي تجعل المعرفة تنتقل من معرفة مدرسة إلى معرفة مكتسبة. لا يقاس بالساعات ولا يختلط بالتخطيط الزمني أو بكل ما يحدث في الفصل.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q113 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q54', 'exam_primary_2022_sciences_edu_nov', 54, 'علم نفس النمو', 'توافق المراهقة عند "فرويد" مرحلة:', false, '[{"id": "A", "text": "النرجسية والسعي إلى تحقيق الذات"}, {"id": "B", "text": "العمليات الصورية المجردة"}, {"id": "C", "text": "الميول الأوديبية"}, {"id": "D", "text": "التصالح مع الواقع"}]'::jsonb, ARRAY['C']::text[], '⚠ المراهقة عند فرويد هي المرحلة التناسلية، وفيها يعود الصراع الأوديبي الكامن إلى الظهور مع البلوغ، ثم يحله المراهق باختيار موضوع حب خارج الأسرة. لذلك اعتمدنا C. العمليات الصورية مفهوم بياجيه، والنرجسية تخص الطفولة الأولى عند فرويد.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q114 من كراسة العلوم. تحفظ الموقع (⚠): العمليات الصورية مفهوم بياجيه، والنرجسية تخص الطفولة الأولى عند فرويد')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q55', 'exam_primary_2022_sciences_edu_nov', 55, 'سوسيولوجيا التربية', 'حسب "دوركايم" تسعى المجتمعات من خلال التربية إلى:', false, '[{"id": "A", "text": "تشجيع الناشئة على تجاوز النموذج التربوي العام"}, {"id": "B", "text": "إنتاج أجيال لاحقة تختلف عن الأجيال السابقة"}, {"id": "C", "text": "تجاوز إكراهات الحاضر في المستقبل"}, {"id": "D", "text": "الحفاظ على وجودها وضمان استمرارها"}]'::jsonb, ARRAY['D']::text[], 'يعرف دوركايم التربية بأنها التنشئة الاجتماعية المنهجية للجيل الناشئ من طرف الجيل الراشد. بها ينقل المجتمع قيمه ومعاييره، فيضمن تجانسه واستمراره، وهو ما يجعلها وظيفة محافظة على المجتمع لا أداة لتجاوزه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q115 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q56', 'exam_primary_2022_sciences_edu_nov', 56, 'نظريات التعلم', 'يرى "ثورندايك" أن التعلم يحدث نتيجة:', false, '[{"id": "A", "text": "التعزيز الإيجابي"}, {"id": "B", "text": "تغير في البنيات الذهنية"}, {"id": "C", "text": "المحاولة والخطأ"}, {"id": "D", "text": "الإدراك الكلي للموضوع"}]'::jsonb, ARRAY['C']::text[], 'في تجارب القطة داخل القفص لاحظ ثورندايك أن الحيوان يجرب حركات كثيرة ويحتفظ تدريجيا بالحركة الناجحة: إنه التعلم بالمحاولة والخطأ وقانون الأثر. التعزيز الإيجابي مفهوم سكينر، والإدراك الكلي الجشطالت، وتغير البنيات بياجيه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q116 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q57', 'exam_primary_2022_sciences_edu_nov', 57, 'التوجيه', 'يهدف "المشروع الشخصي للمتعلم" في مجال التوجيه إلى:', false, '[{"id": "A", "text": "تحديد هدف مهني يطمح إليه"}, {"id": "B", "text": "التجسير بين مختلف المواد الدراسية"}, {"id": "C", "text": "تطبيق الكفايات المعرفية المكتسبة"}, {"id": "D", "text": "المشاركة في أنشطة الحياة المدرسية"}]'::jsonb, ARRAY['A']::text[], 'المشروع الشخصي للمتعلم مقاربة في التوجيه التربوي يحدد فيها المتعلم هدفا دراسيا ومهنيا يطمح إليه، ويخطط للمسار الذي يوصله إليه انطلاقا من معرفته بذاته وبالمحيط. الاقتراحات الأخرى لا علاقة لها بالتوجيه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q117 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q58', 'exam_primary_2022_sciences_edu_nov', 58, 'علم نفس النمو', 'تتميز مرحلة الكمون حسب "فرويد" ب:', false, '[{"id": "A", "text": "توافق تام بين متطلبات الأنا والهو والأنا الأعلى"}, {"id": "B", "text": "انصراف عن الاهتمام بالمسائل الجنسية"}, {"id": "C", "text": "إشباع الدوافع الليبيدية"}, {"id": "D", "text": "طغيان الشعور على اللاشعور"}]'::jsonb, ARRAY['B']::text[], 'مرحلة الكمون (من 6 سنوات تقريبا إلى البلوغ) تهدأ فيها الدوافع الجنسية بعد حل العقدة الأوديبية، وتتحول طاقة الطفل إلى التعلم والأنشطة الاجتماعية. فهي انصراف مؤقت عن الاهتمام الجنسي، لا إشباع له.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q118 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q59', 'exam_primary_2022_sciences_edu_nov', 59, 'الهدر المدرسي', 'يقصد بالهدر المدرسي:', false, '[{"id": "A", "text": "الغياب المتكرر للتلاميذ، وهدر ساعات الدراسة"}, {"id": "B", "text": "الاختلال في توزيع الموارد البشرية في القطاع المدرسي"}, {"id": "C", "text": "غياب الحكامة في تدبير موارد القطاع المالية"}, {"id": "D", "text": "الانقطاع عن الدراسة في مرحلة ما من مراحل التعليم"}]'::jsonb, ARRAY['D']::text[], 'الهدر المدرسي هو مغادرة التلميذ المدرسة قبل إتمام مرحلته الدراسية أو الحصول على شهادتها، ويشمل في معناه الواسع التكرار أيضا. الغياب المتكرر من مؤشراته وأسبابه، وليس تعريفه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q119 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: علوم التربية (دورة نونبر 2022) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_sciences_edu_nov_q60', 'exam_primary_2022_sciences_edu_nov', 60, 'البيداغوجيات', 'تقوم البيداغوجيا الفارقية على تفييئ المتعلمين بحسب:', false, '[{"id": "A", "text": "المرحلة العمرية"}, {"id": "B", "text": "القدرات المعرفية"}, {"id": "C", "text": "الوضعية الاجتماعية"}, {"id": "D", "text": "النوع الاجتماعي"}]'::jsonb, ARRAY['B']::text[], 'البيداغوجيا الفارقية تنوع الطرائق والأنشطة لتلائم الفروق بين المتعلمين في القسم نفسه، وتكون المجموعات أساسا حسب المستوى والقدرات والحاجات التعلمية. التفييئ حسب السن أو الوضع الاجتماعي أو الجنس لا يخدم التعلم بل قد يكرس التمييز.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1011/', true, 'السؤال الأصلي Q120 من كراسة العلوم.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
