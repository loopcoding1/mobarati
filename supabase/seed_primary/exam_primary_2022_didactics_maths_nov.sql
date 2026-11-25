-- ====================================================================
-- مباراتي — ديداكتيك الرياضيات، دورة نونبر 2022 (سجل الامتحانات رقم 65)
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك الرياضيات - 2022.md
--   (تاريخ الحل: 2026-11-25؛ بحث Google أولا حسب تعليمات المستخدم —
--    وُجد الحل كاملا على manasseb.com، فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2022/ديداكتيك الرياضيات.pdf (5 صفحات، 1/8 إلى 5/8).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q61 إلى Q75 وخياراته الأربعة (A-D) مطابقة حرفياً لورقة الامتحان.
--   * لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان؛ الأجوبة من تصحيح مقترح منشور
--     على manasseb.com (الموقع نفسه يحذر: «تصحيح مقترح ... وليس تصحيحًا رسميًا.
--     قد يتضمن أخطاء»)، ومكملة بتعليلات askfilo.com للأسئلة Q72–Q75.
--   * الأسئلة السبعة التي يضع عليها المصدر الأساسي تحفظ «إجابة مرجّحة»
--     (Q61، Q64، Q68، Q72، Q73، Q74، Q75) موسومة verified=false مع
--     verification_note؛ والأسئلة الثمانية الباقية verified=true.
--   * تعارض بين المصدرين في سؤالين: Q73 (manasseb: A — askfilo: D) وQ74
--     (manasseb: A — askfilo: B)؛ الجواب المعتمد هو جواب المصدر الأساسي،
--     والبديل مذكور مع تعليله في explanation وverification_note.
--   * نصا الوضعيتين 1 و2 منقولان حرفياً من ملف PDF ومُدمجان في حقل text
--     لأسئلة Q66–Q68 وQ69–Q71 حتى يكون كل سؤال قائماً بذاته؛ الأشكال الهندسية
--     للوضعية 1 موجودة في ورقة الامتحان فقط (صفحة 3).
--   * مصدر ثالث غير موثوق (منشور فيسبوك بخط اليد PROF daqouni) ذُكر في ملف الحل
--     للعلم فقط ولم تُعتمد حروفه.
--
-- ملاحظات عن ملف الامتحان:
--   * ورقة التعليمات (صفحة 1/8): الاختبار المشترك (ديداكتيك الرياضيات وعلوم
--     التربية) يتكون من 30 سؤالا Q61–Q90، جواب صحيح واحد لكل سؤال، نقطة واحدة
--     لكل جواب صحيح؛ مدة الإنجاز ساعة واحدة (60 دقيقة) والمعامل 2 — للاختبار
--     المشترك كاملا (وليس لمكون ديداكتيك الرياضيات وحده).
--   * هذا الملف يحتوي على أسئلة مكون ديداكتيك الرياضيات فقط (Q61–Q75)؛
--     أما Q76–Q90 (علوم التربية) ففي ملف مستقل (علوم التربية.pdf).
--   * لم يُعثر على صفحة تصحيح لهذا الامتحان على mesconcours.ma في عمليات البحث.
--   * المعامل 2 يخص الاختبار المشترك كاملا؛ أُثبت هنا في هذا التعليق فقط.
--
-- تسمية المعرفات:
--   exam_primary_2022_didactics_maths_nov
--   <exam_id>_q<n>  للأسئلة، وnumber هو الترقيم الأصلي في الورقة (61–75).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_didactics_maths_nov', 'specialty_primary', 2022, 'didactics_maths', 'ديداكتيك الرياضيات', 'امتحان ديداكتيك الرياضيات (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 15)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (15 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q61', 'exam_primary_2022_didactics_maths_nov', 61, 'كفايات مادة الرياضيات', 'أشار المنهاج الدراسي إلى أن مادة الرياضيات تمكن المتعلم، بعد إتمام الدراسة بالتعليم الابتدائي، من كفايات قابلة للتحويل في مختلف المجالات الحياتية؛ وتتمثل هذه الكفايات في:', false, '[{"id": "A", "text": "إنجاز العمليات الحسابية وإنشاء الأشكال الهندسية، والتعلم الذاتي."}, {"id": "B", "text": "البحث والنمذجة والاستدلال وحل المشكلات والتواصل والتعلم الذاتي."}, {"id": "C", "text": "التحليل والتواصل، إنجاز التمارين بدقة وحل المشكلات والتعلم الذاتي."}, {"id": "D", "text": "الاستدلال والتواصل، إنجاز التمارين بدقة وحل المشكلات والتعلم الذاتي."}]'::jsonb, ARRAY['D']::text[], 'المنهاج المنقح يحدد الكفايات القابلة للتحويل في: الاستدلال والتواصل، إنجاز التمارين بدقة، حل المشكلات والتعلم الذاتي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر الأساسي (manasseb.com): جواب مرجح يحتمل اختيارًا آخر حسب المرجع المعتمد؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q62', 'exam_primary_2022_didactics_maths_nov', 62, 'مجالات البرنامج الدراسي', 'يلتظم البرنامج الدراسي للرياضيات في التعليم الابتدائي ضمن المجالات التالية:', false, '[{"id": "A", "text": "مجال العدد والحساب، مجال الهندسة، مجال حل المسائل، ومجال تنظيم ومعالجة البيانات."}, {"id": "B", "text": "مجال القياس، مجال الهندسة، مجال الأعداد، مجال حل المسائل ومجال معالجة البيانات."}, {"id": "C", "text": "مجال تنظيم ومعالجة البيانات، مجال الأعداد والحساب، مجال القياس ومجال الهندسة."}, {"id": "D", "text": "مجال الأعداد، مجال تنظيم ومعالجة البيانات، مجال حل المسائل، مجال الهندسة والقياس."}]'::jsonb, ARRAY['C']::text[], 'المجالات الأربعة للمنهاج: الأعداد والحساب، الهندسة، القياس، تنظيم ومعالجة البيانات؛ «حل المسائل» ليس مجالا مستقلا بل مدخل منهجي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q63', 'exam_primary_2022_didactics_maths_nov', 63, 'الوضعية المشكلة', 'يعتبر حل المشكلات في مقدمة الأسس والمحددات المنهجية للنهج الرياضياتي، حيث تعد الوضعية المشكلة حافزا للتعلم ومنطلقا لبناء المعرفة الرياضياتية ومجالا لاستثمارها وإغنائها. لتقديم الوضعية المشكلة حدد المنهاج الدراسي لذلك مراحل منهجية هي:', false, '[{"id": "A", "text": "التعاقد الديدكتيكي، الفعل، الصياغة، التداول، المأسسة."}, {"id": "B", "text": "التعاقد الديدكتيكي، التمهيد، التريض، التعليق، التداول، المصادقة."}, {"id": "C", "text": "التقويم التشخيصي، التريض، التعاقد الديدكتيكي، التداول، المأسسة."}, {"id": "D", "text": "التمهيد، التعاقد الديدكتيكي، التطبيق، المأسسة، التقويم والدعم."}]'::jsonb, ARRAY['A']::text[], 'مراحل الوضعية المشكلة مستلهمة من نظرية الوضعيات (بروسو): التعاقد الديدكتيكي ثم الفعل ثم الصياغة ثم التداول (المصادقة) ثم المأسسة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q64', 'exam_primary_2022_didactics_maths_nov', 64, 'مبادئ منهاج الرياضيات', 'نص منهاج الرياضيات في أحد مبادئه على أن المفاهيم الرياضياتية، يتم إكسابها للمتعلم بشكل منهجي في سيرورة مستمرة، حيث أن إدراك المتعلم لهذه المفاهيم يأخذ بعدا أعمق من سنة إلى أخرى بصورة لولبية يجعلها تتوسع وتتطور أكثر فأكثر بشكل مستمر، الأمر يرتبط بمبدأ:', false, '[{"id": "A", "text": "التوسع والتطور."}, {"id": "B", "text": "التطور والتعميق."}, {"id": "C", "text": "التدرج والاستمرارية."}, {"id": "D", "text": "السيرورة والتطور."}]'::jsonb, ARRAY['C']::text[], 'البناء اللولبي للمفاهيم من سنة إلى أخرى يترجم مبدأ التدرج والاستمرارية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر الأساسي (manasseb.com): جواب مرجح يحتمل اختيارًا آخر حسب المرجع المعتمد؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q65', 'exam_primary_2022_didactics_maths_nov', 65, 'النقل الديدكتيكي', 'النقل الديدكتيكي هو:', false, '[{"id": "A", "text": "عملية يقوم بها المتعلم(ة) من أجل تطبيق خاصيات رياضياتية أو قواعد."}, {"id": "B", "text": "نقل المعرفة العالمة بأمانة ودون تكييف."}, {"id": "C", "text": "نقل المعرفة من فضائها العلمي الخالص إلى فضاء الممارسة التربوية."}, {"id": "D", "text": "عملية نقل المعرفة المُدَرَّسة إلى معرفة علمية أكاديمية خالصة."}]'::jsonb, ARRAY['C']::text[], 'النقل الديدكتيكي (شوفالار) هو تحويل المعرفة العالمة إلى معرفة قابلة للتدريس في فضاء الممارسة التربوية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q66', 'exam_primary_2022_didactics_maths_nov', 66, 'التماثل المحوري — هدف النشاط', 'قدم مدرس لتلاميذ وتلميذات المستوى الخامس ابتدائي النشاط التالي: أنشئ (ي)، على الشبكة، مماثل الشكل (F) بالنسبة لمحور التماثل (D). ونقدم أدناه إنجازات أربعة متعلمين ومتعلمات: أحمد، فريد، نجوى، مريم. (الأشكال موجودة في الملف فقط.)

الهدف من النشاط الذي قدمه المدرس في الوضعية أعلاه هو:', false, '[{"id": "A", "text": "تقييم قدرة المتعلم(ة) على إنشاء الأشكال الهندسية."}, {"id": "B", "text": "تطبيقات لاستعمال الأنسوخ في إنشاء أشكال هندسية متطابقة."}, {"id": "C", "text": "التمرن على إنشاءات هندسية على شبكة تربيعية."}, {"id": "D", "text": "تقييم قدرة المتعلم على إنشاء مماثل شكل هندسي بالنسبة لمحور تماثل."}]'::jsonb, ARRAY['D']::text[], 'النشاط يطلب صراحة إنشاء مماثل الشكل (F) بالنسبة للمحور (D)، فهو يقيس هذه القدرة تحديدا.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q67', 'exam_primary_2022_didactics_maths_nov', 67, 'التماثل المحوري — المكتسبات القبلية', 'قدم مدرس لتلاميذ وتلميذات المستوى الخامس ابتدائي النشاط التالي: أنشئ (ي)، على الشبكة، مماثل الشكل (F) بالنسبة لمحور التماثل (D). ونقدم أدناه إنجازات أربعة متعلمين ومتعلمات: أحمد، فريد، نجوى، مريم. (الأشكال موجودة في الملف فقط.)

لإنجاز هذا التمرين يوظف التلميذ مكتسباته القبلية المرتبطة بـ:', false, '[{"id": "A", "text": "إزاحة شكل هندسي."}, {"id": "B", "text": "الطي والتطابق في الشبكة التربيعية."}, {"id": "C", "text": "التنقل على الشبكة باستعمال القن."}, {"id": "D", "text": "انزلاق الأشكال الهندسية."}]'::jsonb, ARRAY['B']::text[], 'التماثل المحوري يبنى على المكتسبات المرتبطة بالطي والتطابق في الشبكة التربيعية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q68', 'exam_primary_2022_didactics_maths_nov', 68, 'التماثل المحوري — تقييم الإنجازات', 'قدم مدرس لتلاميذ وتلميذات المستوى الخامس ابتدائي النشاط التالي: أنشئ (ي)، على الشبكة، مماثل الشكل (F) بالنسبة لمحور التماثل (D). ونقدم أدناه إنجازات أربعة متعلمين ومتعلمات: أحمد، فريد، نجوى، مريم. (الأشكال موجودة في الملف فقط.)

حدد العبارة الصحيحة من بين العبارات التالية:', false, '[{"id": "A", "text": "إنجاز أحمد صحيح لأنه قام بإزاحة الشكل لإنشاء مماثله."}, {"id": "B", "text": "إنجاز فريد صحيح لأنه اعتمد الشبكة التربيعية لإنشاء مماثل كل رأس من الشكل."}, {"id": "C", "text": "إنجاز نجوى صحيح لأنه تطبيق لخاصيات التماثل المحوري."}, {"id": "D", "text": "إنجاز مريم صحيح لأن الشكلين قابلان للتطابق."}]'::jsonb, ARRAY['B']::text[], 'الإنجاز الصحيح هو الذي يعتمد إنشاء مماثل كل رأس بعدّ المربعات على الشبكة؛ الإزاحة (أحمد) أو مجرد قابلية التطابق (مريم) لا تكفي لتبرير التماثل.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر الأساسي؛ الإجابة تعتمد على الأشكال الهندسية في ورقة الامتحان (صفحة 3) ولا يمكن التحقق منها من النص وحده؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q69', 'exam_primary_2022_didactics_maths_nov', 69, 'بناء مفهوم العدد — نوع الحصة', 'قام أستاذ في حصة الرياضيات بالمستوى الأول ابتدائي، بتكوين 5 مجموعات من التلميذات والتلاميذ. قدم لكل مجموعة 9 حبات من بذور مختلفة و3 أكياس ثم طالب كل مجموعة بتوزيع البذور على الأكياس الثلاثة بشكل تلقائي.
أحضر الأستاذ ثلاث صناديق، وطلب من المجموعة 1 جلب الأكياس. حيث تبين أن هذه المجموعة وضعت في الكيس الأول 3 حبات، وفي الكيس الثاني 5 حبات، وفي الكيس الثالث حبة واحدة. وضع الأستاذ الكيس الذي به 3 حبات في الصندوق الأول، ووضع الكيس الذي به 5 حبات في الصندوق الثاني، والكيس الذي به حبة واحدة في الصندوق الثالث.
بعد ذلك طالب المدرس المجموعات الأخرى بوضع الأكياس وفق ما يلي:
- المجموعات التي لديها 3 حبات في أحد الأكياس بوضعه في الصندوق الأول؛
- المجموعات التي لديها 5 حبات في أحد الأكياس بوضعه في الصندوق الثاني؛
- المجموعات التي لديها حبة واحدة في أحد الأكياس بوضعه في الصندوق الثالث.
قام المدرس بإلصاق بطاقة كُتب عليها العدد 3 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 3 حبات؛ وألصق بطاقة كُتب عليها العدد 5 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 5 حبات؛ كما ألصق بطاقة كتب عليها العدد 1 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها حبة واحدة.
بعد التداول توصلت مجموعة القسم إلى أن:
- العدد 3 يمثل جميع المجموعات المتقادرة التي تتضمن 3 عناصر؛
- العدد 5 يمثل جميع المجموعات المتقادرة التي تتضمن 5 عناصر؛
- العدد 1 يمثل جميع المجموعات المتقادرة التي تتضمن عنصرا واحدا.

الحصة التي قدم فيها المدرس الوضعية أعلاه هي:', false, '[{"id": "A", "text": "حصة التريض."}, {"id": "B", "text": "حصة بناء المفهوم."}, {"id": "C", "text": "حصة التقويم."}, {"id": "D", "text": "حصة الدعم والتثبيت."}]'::jsonb, ARRAY['B']::text[], 'الوضعية تقود المتعلمين إلى اكتشاف معنى العدد انطلاقا من التداول، فهي حصة بناء المفهوم.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q70', 'exam_primary_2022_didactics_maths_nov', 70, 'بناء مفهوم العدد — المفهوم المقدم', 'قام أستاذ في حصة الرياضيات بالمستوى الأول ابتدائي، بتكوين 5 مجموعات من التلميذات والتلاميذ. قدم لكل مجموعة 9 حبات من بذور مختلفة و3 أكياس ثم طالب كل مجموعة بتوزيع البذور على الأكياس الثلاثة بشكل تلقائي.
أحضر الأستاذ ثلاث صناديق، وطلب من المجموعة 1 جلب الأكياس. حيث تبين أن هذه المجموعة وضعت في الكيس الأول 3 حبات، وفي الكيس الثاني 5 حبات، وفي الكيس الثالث حبة واحدة. وضع الأستاذ الكيس الذي به 3 حبات في الصندوق الأول، ووضع الكيس الذي به 5 حبات في الصندوق الثاني، والكيس الذي به حبة واحدة في الصندوق الثالث.
بعد ذلك طالب المدرس المجموعات الأخرى بوضع الأكياس وفق ما يلي:
- المجموعات التي لديها 3 حبات في أحد الأكياس بوضعه في الصندوق الأول؛
- المجموعات التي لديها 5 حبات في أحد الأكياس بوضعه في الصندوق الثاني؛
- المجموعات التي لديها حبة واحدة في أحد الأكياس بوضعه في الصندوق الثالث.
قام المدرس بإلصاق بطاقة كُتب عليها العدد 3 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 3 حبات؛ وألصق بطاقة كُتب عليها العدد 5 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 5 حبات؛ كما ألصق بطاقة كتب عليها العدد 1 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها حبة واحدة.
بعد التداول توصلت مجموعة القسم إلى أن:
- العدد 3 يمثل جميع المجموعات المتقادرة التي تتضمن 3 عناصر؛
- العدد 5 يمثل جميع المجموعات المتقادرة التي تتضمن 5 عناصر؛
- العدد 1 يمثل جميع المجموعات المتقادرة التي تتضمن عنصرا واحدا.

من خلال الوضعية أعلاه يسعى المدرس إلى تقديم مفهوم:', false, '[{"id": "A", "text": "القسمة."}, {"id": "B", "text": "مقارنة المجموعات."}, {"id": "C", "text": "العدد."}, {"id": "D", "text": "المجموعات المتشابهة."}]'::jsonb, ARRAY['C']::text[], 'الهدف هو مفهوم العدد بوصفه خاصية مشتركة بين المجموعات المتقادرة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q71', 'exam_primary_2022_didactics_maths_nov', 71, 'بناء مفهوم العدد — صنف التكافؤ', 'قام أستاذ في حصة الرياضيات بالمستوى الأول ابتدائي، بتكوين 5 مجموعات من التلميذات والتلاميذ. قدم لكل مجموعة 9 حبات من بذور مختلفة و3 أكياس ثم طالب كل مجموعة بتوزيع البذور على الأكياس الثلاثة بشكل تلقائي.
أحضر الأستاذ ثلاث صناديق، وطلب من المجموعة 1 جلب الأكياس. حيث تبين أن هذه المجموعة وضعت في الكيس الأول 3 حبات، وفي الكيس الثاني 5 حبات، وفي الكيس الثالث حبة واحدة. وضع الأستاذ الكيس الذي به 3 حبات في الصندوق الأول، ووضع الكيس الذي به 5 حبات في الصندوق الثاني، والكيس الذي به حبة واحدة في الصندوق الثالث.
بعد ذلك طالب المدرس المجموعات الأخرى بوضع الأكياس وفق ما يلي:
- المجموعات التي لديها 3 حبات في أحد الأكياس بوضعه في الصندوق الأول؛
- المجموعات التي لديها 5 حبات في أحد الأكياس بوضعه في الصندوق الثاني؛
- المجموعات التي لديها حبة واحدة في أحد الأكياس بوضعه في الصندوق الثالث.
قام المدرس بإلصاق بطاقة كُتب عليها العدد 3 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 3 حبات؛ وألصق بطاقة كُتب عليها العدد 5 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها 5 حبات؛ كما ألصق بطاقة كتب عليها العدد 1 على الصندوق الذي يحتوي على الأكياس التي يتضمن كل منها حبة واحدة.
بعد التداول توصلت مجموعة القسم إلى أن:
- العدد 3 يمثل جميع المجموعات المتقادرة التي تتضمن 3 عناصر؛
- العدد 5 يمثل جميع المجموعات المتقادرة التي تتضمن 5 عناصر؛
- العدد 1 يمثل جميع المجموعات المتقادرة التي تتضمن عنصرا واحدا.

في الوضعية أعلاه يمثل توظيف الصناديق والأكياس نمذجة ونقلا ديدكتيكيا لمفهوم:', false, '[{"id": "A", "text": "صنف تكافؤ."}, {"id": "B", "text": "القسمة."}, {"id": "C", "text": "المقارنة."}, {"id": "D", "text": "الترتيب."}]'::jsonb, ARRAY['A']::text[], 'كل صندوق يجمع المجموعات المتقادرة، أي يمثل صنف تكافؤ، والعدد هو اسم هذا الصنف.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q72', 'exam_primary_2022_didactics_maths_nov', 72, 'حصص درس الرياضيات', 'خلال الوحدات الدراسية الأربع الأولى، يُقدم درس الرياضيات عبر الحصص التالية:', false, '[{"id": "A", "text": "حصة التقويم التشخيصي، حصة بناء وتربيض المفهوم، حصة التقويم، حصة الدعم والمعالجة."}, {"id": "B", "text": "حصة التقديم، حصة بناء المفهوم، حصة التربيض، حصة التقويم، حصة الدعم والمعالجة."}, {"id": "C", "text": "حصة بناء المفهوم، حصة التربيض، حصة التربيض، حصة التقويم، حصة الدعم والمعالجة."}, {"id": "D", "text": "حصة بناء وتربيض المفهوم، حصة التقويم، حصة الدعم والمعالجة."}]'::jsonb, ARRAY['C']::text[], 'يقدم الدرس عبر حصص: بناء المفهوم، الترييض، التقويم، الدعم والمعالجة. وفق مستجدات المنهاج الدراسي للتعليم الابتدائي، يُقدَّم الدرس الواحد في مادة الرياضيات خلال الوحدات الأربع الأولى في أسبوع تربوي يتضمن خمس حصص دراسية، موزعة منهجياً على النحو التالي: 1. الحصة الأولى: بناء المفهوم (أنشطة البناء والفهم). 2. الحصة الثانية: أنشطة الترييض والاستثمار. 3. الحصة الثالثة: أنشطة الترييض والتعميق. 4. الحصة الرابعة: أنشطة التقويم. 5. الحصة الخامسة: أنشطة الدعم والمعالجة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر الأساسي (يوصي بالتحقق في دليل الأستاذ)؛ المصدران متفقان على C؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q73', 'exam_primary_2022_didactics_maths_nov', 73, 'تقديم الأعداد الكسرية والعشرية', 'اعتمد منهاج الرياضيات التدرج في تقديم الأعداد الكسرية والأعداد العشرية عبر مستويات السلك الابتدائي حيث يشرع في تقديم:', false, '[{"id": "A", "text": "الأعداد الكسرية في المستوى 4، والأعداد العشرية في المستوى 5."}, {"id": "B", "text": "الأعداد العشرية في المستوى 3، والأعداد الكسرية في المستوى 5."}, {"id": "C", "text": "الأعداد الكسرية في المستوى 4، والأعداد العشرية في المستوى 6."}, {"id": "D", "text": "الأعداد الكسرية في المستوى 3، والأعداد العشرية في المستوى 4."}]'::jsonb, ARRAY['A']::text[], 'يشرع في الأعداد الكسرية في المستوى الرابع ثم الأعداد العشرية في المستوى الخامس. تعارض — جواب بديل من askfilo.com: D. الأعداد الكسرية في المستوى 3، والأعداد العشرية في المستوى 4. تعليل البديل: يعتمد منهاج الرياضيات مبدأ التدرج والحلزونية في إرساء المفاهيم العددية: يتم الشروع في تقديم الأعداد الكسرية البسيطة بدءاً من المستوى الثالث من خلال تجزيء الوحدة واستكشاف مفهوم الكسر؛ ويتم الشروع في تقديم الأعداد العشرية ومفهوم الفاصلة وأجزاء العشرة والمئة بدءاً من المستوى الرابع.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'تعارض بين المصدرين: المصدر الأساسي (manasseb.com) يقول A، والمصدر الثاني (askfilo.com) يقول D؛ الجواب المعتمد هنا A؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q74', 'exam_primary_2022_didactics_maths_nov', 74, 'أنشطة الحساب الذهني', 'تتوخى أنشطة الحساب الذهني تمكين المتعلمين والمتعلمات من الطلاقة الحسابية وتتم أجرأتها في الحصص الدراسية عبر توظيف الوسائل التعليمية والمعينات الديدكتيكية الآتية:', false, '[{"id": "A", "text": "الألواح وأوراق الحساب الذهني."}, {"id": "B", "text": "بطائق الأعداد وأوراق الحساب الذهني."}, {"id": "C", "text": "جدول العد وأوراق الحساب الذهني."}, {"id": "D", "text": "المعداد ذو السيقان وبطائق الأعداد."}]'::jsonb, ARRAY['A']::text[], 'يُجرى الحساب الذهني عادة بالألواح وأوراق الحساب الذهني لتمكين كل المتعلمين من الإجابة السريعة. تعارض — جواب بديل من askfilo.com: B. بطائق الأعداد وأوراق الحساب الذهني. تعليل البديل: تُخصص الدقائق الخمس الأولى من كل حصة رياضيات لأنشطة الحساب الذهني بهدف تنمية الطلاقة الحسابية، وتُجرأ بالأساس عبر وسيلتين ديدكتيكيتين رئيستين: بطائق الأعداد — وتُستعمل في الأنشطة الشفهية السريعة والتفاعلية الجماعية؛ وأوراق الحساب الذهني — وتُستعمل لإنجاز الحساب الفردي السريع وتتبع تقدم المتعلمين.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'تعارض بين المصدرين: المصدر الأساسي (manasseb.com) يقول A، والمصدر الثاني (askfilo.com) يقول B؛ الجواب المعتمد هنا A؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2022) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_maths_nov_q75', 'exam_primary_2022_didactics_maths_nov', 75, 'المفهوم الرياضياتي', 'المفهوم الرياضياتي هو:', false, '[{"id": "A", "text": "السمة المميزة أو الصفة التي تميز جميع أمثلة الكائن الرياضياتي."}, {"id": "B", "text": "الصفة المشتركة بين بعض أمثلة الشيء الواحد."}, {"id": "C", "text": "تجريد ذهني لخصائص مشتركة لخبرات أو أشياء."}, {"id": "D", "text": "صفة تميز الأشياء المجردة بمختلف أنواعها."}]'::jsonb, ARRAY['C']::text[], 'المفهوم تجريد ذهني للخصائص المشتركة بين مجموعة من الأشياء أو الخبرات. يُعرَّف المفهوم الرياضياتي في الأدبيات التربوية وديدكتيك الرياضيات بأنه تجريد ذهني (Mental Abstraction)، وهو تمثيل عقلي يعزل السمات والخصائص الجوهرية المشتركة لمجموعة من الأشياء أو الخبرات أو العلاقات، ويُرمز له باسم أو رمز محدد (مثل مفهوم العدد، أو التوازي، أو المجسم).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41857-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر الأساسي؛ المصدران متفقان على C؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

