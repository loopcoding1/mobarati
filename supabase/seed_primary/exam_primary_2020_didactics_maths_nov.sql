-- ====================================================================
-- مباراتي — ديداكتيك الرياضيات، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة).
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- الجزء الأول: وثيقة مستجدات المنهاج (مديرية المناهج، يوليوز 2020، ص192) — الأسئلة أ، ب، ج
--   مرقمة 1–3 هنا. الجزء الثاني: الوثيقة 1 (السنة الرابعة، الدرس 19: القسمة (2))
--   والوثيقة 2 (السنة الخامسة، الدرس 25: القسمة الإقليدية) — الأسئلة (1)–(10) مرقمة 4–13 هنا.
-- كل الأسئلة مفتوحة (options فارغة، correct_answers فارغة)؛ الأجوبة عناصر من المفتاح الرسمي.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_didactics_maths_nov', 'specialty_primary', 2020, 'didactics_maths', 'ديداكتيك الرياضيات', 'امتحان ديداكتيك الرياضيات (دورة نونبر 2020)', 'دورة نونبر 2020', 240, 13)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (13 سؤالاً)

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q1', 'exam_primary_2020_didactics_maths_nov', 1, 'ديداكتيك الرياضيات', 'الجزء الأول — أ. اشرح العبارة «اكتساب أدوات مفاهيمية وإجرائية تنمي لديه ثقافة رياضياتية مناسبة تساعده على تعزيز ثقته في نفسه». (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'يبين المترشح فهمه للعبارة من خلال شرح مفرداتها وتقديم أمثلة (الأدوات المفاهيمية: المفاهيم والقواعد؛ الأدوات الإجرائية: المهارات والطرائق؛ الثقافة الرياضياتية: القدرة على استعمال الرياضيات في مواقف الحياة؛ تعزيز الثقة بالنفس: النجاح في حل المسائل يمنح المتعلم ثقة بقدراته). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q2', 'exam_primary_2020_didactics_maths_nov', 2, 'ديداكتيك الرياضيات', 'الجزء الأول — ب. من خلال الوثيقة أعلاه، اذكر الأبعاد التي تستهدفها مادة الرياضيات في تطوير شخصية المتعلم. (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'الأبعاد المعرفية والوجدانية والحس-حركية (أو ما يدل على ذلك). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q3', 'exam_primary_2020_didactics_maths_nov', 3, 'ديداكتيك الرياضيات', 'الجزء الأول — ج. إن تنمية مهارات التفكير الرياضياتي تمر عبر ربط التعلمات بالحياة اليومية للمتعلم(ة)، اذكر مثالاً لربط مفهوم رياضياتي بالحياة اليومية للمتعلم. (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'أي مثال صحيح يربط مفهوماً رياضياتياً (العدد، الجمع، القياس، النقود...) بمواقف الحياة اليومية للمتعلم (التسوق، تقاسم الحلوى، قياس الطول...). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q4', 'exam_primary_2020_didactics_maths_nov', 4, 'ديداكتيك الرياضيات', 'الجزء الثاني — (1) ضمن أي مجال دراسي يندرج مفهوم القسمة؟ (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'مجال الأعداد والحساب. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q5', 'exam_primary_2020_didactics_maths_nov', 5, 'ديداكتيك الرياضيات', 'الجزء الثاني — (2) حدد طبيعة كل نشاط من الأنشطة الثلاثة الواردة في الوثيقة 1 باستعمال بعض من المفردات التالية: بناء، تقويم جزئي، ترييض، دعم. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'النشاط الأول للبناء، النشاطان الآخران للترييض. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q6', 'exam_primary_2020_didactics_maths_nov', 6, 'ديداكتيك الرياضيات', 'الجزء الثاني — (3) حدد بعض المكتسبات القبلية لإنجاز النشاط الأول من الوثيقة 1. (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'الجمع، الطرح، الضرب، التأطير... (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q7', 'exam_primary_2020_didactics_maths_nov', 7, 'ديداكتيك الرياضيات', 'الجزء الثاني — (4) وردت في الوثيقة 1 عملية للحساب الذهني، اذكر فائدتين للحساب الذهني وأبرز كيف يمكن أجرأته داخل الفصل. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'الفائدتان: التحكم في الحساب، استثارة حافزية المتعلمين، تجاوز تعثرات الحساب...؛ والإجراء: يحدد المترشح فترة وصيغة للإجراء داخل الفصل (مثال: حصة قصيرة منتظمة في بداية الدرس، باستعمال الألواح أو الشفهي). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q8', 'exam_primary_2020_didactics_maths_nov', 8, 'ديداكتيك الرياضيات', 'الجزء الثاني — (5) خلال أسبوع التقويم والدعم والتثبيت، اقترح أستاذ داخل الفصل إنجاز قسمة عدد معين على العدد 14. أثناء مراقبة إنجازات تلامذته، لاحظ جواب أحدهم: الخارج هو 25 والباقي 19، فأشار عليه بمراجعة إنجازه. اعط نص الخاصية الرياضياتية التي اعتمدها الأستاذ لكي يتعرف على خطأ المتعلم. (0,25)', false, '[]'::jsonb, ARRAY[]::text[], 'لكل عددين صحيحين a و b (b ≠ 0) يوجد عددان q و r بحيث a = bq + r و 0 ≤ r < b — أي أن الباقي يجب أن يكون أصغر من المقسوم عليه؛ والباقي 19 ≥ 14 مستحيل. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q9', 'exam_primary_2020_didactics_maths_nov', 9, 'ديداكتيك الرياضيات', 'الجزء الثاني — (6) اقترح نشاطاً تقويمياً يتضمن وضعية مسألة يتم حلها من خلال توظيف القسمة الإقليدية بخارج مضبوط. أبرز مراحل تدبيره داخل الفصل محدداً دور الأستاذ ودور المتعلم ومشيراً للمعينات الديداكتيكية الملائمة والغلاف الزمني المرصود للنشاط وكذا لكيفية تدبير الفوارق الفردية. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'أي نشاط تقويمي صحيح يستوفي العناصر المطلوبة: وضعية مسألة تُحل بالقسمة الإقليدية بخارج مضبوط (باقي 0)، مع مراحل التدبير (التقديم، الإنجاز الفردي/الثنائي، التصحيح الجماعي، التقويم)، ودور الأستاذ (التوجيه والمرافقة) ودور المتعلم (الإنجاز والمناقشة)، والمعينات (السبورة، الألواح، الكتاب المدرسي...)، والغلاف الزمني، وتدبير الفوارق (أنشطة دعم للمتعثرين وإغناء للمتفوقين). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q10', 'exam_primary_2020_didactics_maths_nov', 10, 'ديداكتيك الرياضيات', 'الجزء الثاني — (7) تتضمن الوثيقة 2 مقطعاً من كتاب مدرسي للسنة الخامسة من التعليم الابتدائي. أبرز من خلال الوثيقتين (الوثيقة 1 و الوثيقة 2) تطور تدريس وتعلم مفهوم القسمة بين السنتين الرابعة والخامسة ابتدائي. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'تمييز الأهداف الواردة في الوثيقتين، والمتغيرات الديداكتيكية — عدد أرقام المقسوم عليه، نوع العدد المقسوم... — وصيغ كتابة العمليات... (في الرابعة: القسمة على عدد من رقم واحد مع التأطير وحصر المقسوم؛ وفي الخامسة: القسمة الإقليدية على عدد من رقمين مع تحديد عدد أرقام الخارج وتوظيف المراحل المنهجية). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q11', 'exam_primary_2020_didactics_maths_nov', 11, 'ديداكتيك الرياضيات', 'الجزء الثاني — (8) حدد اعتماداً على الوثيقتين المفردات التي تعكس الأهمية التي يوليها المنهاج المغربي للتناوب اللغوي. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'شرح المفردات الواردة بالفرنسية في الوثيقتين (مثال: La division، Les nombres entiers naturels: La division euclidienne، المصطلحات الفرنسية المرافقة للعناوين والتعليمات) — حضور الفرنسية إلى جانب العربية في الكتاب المدرسي يعكس التناوب اللغوي. (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q12', 'exam_primary_2020_didactics_maths_nov', 12, 'ديداكتيك الرياضيات', 'الجزء الثاني — (9) كيف يمكن توجيه المتعلم لاستثمار المحسية في سياق التعلم الذاتي لتجاوز الصعوبات التي يطرحها مفهوم القسمة في التعليم الابتدائي؟ (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'على الأقل توجيهان: التصحيح الذاتي، إنجاز عمليات متعددة في بيئات مختلفة، تنويع درجة صعوبة العملية، مقارنة النتائج... (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك الرياضيات (دورة نونبر 2020) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_didactics_maths_nov_q13', 'exam_primary_2020_didactics_maths_nov', 13, 'ديداكتيك الرياضيات', 'الجزء الثاني — (10) اعتباراً لنمط التعليم القائم على التناوب وفي سياق تقويم التعلمات ومعالجة الصعوبات، قدم أستاذ أنشطة من الكتاب المدرسي للمتعلم قصد إنجازها خارج الفصل. اذكر بعض الإرشادات التي يمكن تقديمها للمتعلمين. (0,5)', false, '[]'::jsonb, ARRAY[]::text[], 'تفعيل المذكرة 39X20، التمييز بين أنواع الأنشطة، صيغ مناسبة للتعليم الابتدائي للعمل خارج الفصل (أنشطة قصيرة واضحة، بتعليمات مبسطة، مع إشراك الأسرة عند الحاجة، وتحديد موعد للتصحيح الجماعي). (المفتاح الرسمي.)', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
