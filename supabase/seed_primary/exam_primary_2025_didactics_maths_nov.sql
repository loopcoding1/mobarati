-- ====================================================================
-- مباراتي — ديداكتيك الرياضيات، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك الرياضيات - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 39؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك الرياضيات - دورة نونبر 2025.pdf (8 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   رابط AI Studio: https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q51 إلى Q75 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * كل الأجوبة تحليلية ديداكتيكية (نظرية الوضعيات، المنهاج يوليوز 2021)؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--     كل سؤال موسوم بذلك في verification_note.
--   * نص كل وضعية (1–5) منقول حرفياً من ورقة الامتحان ومُدمج في حقل text
--     للأسئلة المرتبطة بها، حتى يكون كل سؤال قائماً بذاته: الوضعية 1 (Q51–Q58)،
--     الوضعية 2 (Q59–Q62)، الوضعية 3 (Q63–Q64)، الوضعية 4 (Q65–Q68)،
--     الوضعية 5 (Q69–Q72)؛ أما Q73–Q75 فأسئلة عامة بلا وضعية.
--   * التعليلات منقولة حرفياً من ملف الحل.
--
-- ملاحظات عن ملف الامتحان:
--   * غلاف الورقة: مدة الإنجاز 45 دقيقة، المعامل 3 — المعامل مذكور هنا فقط
--     لأن جدول exams لا يحوي عمود معامل.
--   * تصحيحان مقابل ملف الحل في Q68 (الورقة تحسم الترتيب): الخيار B يذكر
--     «3/4 و 2/3» (ملف الحل عكس الترتيب)، والخيار C يذكر «(0.66 + 0.75)»
--     (ملف الحل كتب «(0.75 + 0.66)») — صُححا حسب الورقة.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (X وعلامات ✓ على اختيارات
--     متفرقة، منها Q51 وQ54 وQ57 وQ63 وQ70 وQ72 وQ73) — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_didactics_maths_nov
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على ترقيم المصدر 51–75 (بلا إعادة ترقيم).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_maths_nov', 'specialty_primary', 2025, 'didactics_maths', 'ديداكتيك الرياضيات', 'امتحان ديداكتيك الرياضيات (دورة نونبر 2025)', 'دورة نونبر 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q51', 'exam_primary_2025_didactics_maths_nov', 51, 'النماذج الديداكتيكية', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، النموذج الديداكتيكي المعتمد من طرف الأستاذ في تدبير الحصة.', false, '[{"id": "A", "text": "النموذج التلقيني."}, {"id": "B", "text": "النموذج الاستقرائي."}, {"id": "C", "text": "النموذج الصريح."}, {"id": "D", "text": "النموذج البنائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وضع الأستاذ المتعلمين أمام وضعية-مشكلة وطلب منهم محاولة البحث عن الحل بشكل فردي، لينطلقوا من مكتسباتهم السابقة (الجمع المتكرر) نحو بناء المفهوم الجديد (الضرب) بأنفسهم عبر مراحل نظرية الوضعيات الديداكتيكية، وهذا هو جوهر النموذج البنائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q52', 'exam_primary_2025_didactics_maths_nov', 52, 'نظرية الوضعيات — مراحلها', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، المرحلة المعنية بإنجاز النشاط.', false, '[{"id": "A", "text": "مرحلة الفعل."}, {"id": "B", "text": "مرحلة الصياغة."}, {"id": "C", "text": "مرحلة التداول."}, {"id": "D", "text": "مرحلة المأسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق نظرية الوضعيات الديداكتيكية لـ "غي بروسو"، فإن محاولة المتعلمين البحث الفردي عن الحل بالتفاعل المباشر مع الوضعية ومعطياتها تمثل مرحلة الفعل (Situation d''action)، قبل الانتقال إلى الصياغة والتداول ثم المأسسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q53', 'exam_primary_2025_didactics_maths_nov', 53, 'المثلث الديداكتيكي', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي)، انطلاقا من المثلث الديداكتيكي، العلاقة الديداكتيكية التي يتم تفعيلها أكثر خلال البحث عن الحل في الوضعية 1.', false, '[{"id": "A", "text": "العلاقة بين المدرس(ة) والمتعلم(ة)."}, {"id": "B", "text": "العلاقة بين المتعلم(ة) والمحيط."}, {"id": "C", "text": "العلاقة بين المتعلم(ة) والمعرفة."}, {"id": "D", "text": "العلاقة بين المدرس(ة) والمعرفة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتكون المثلث الديداكتيكي من ثلاثة أقطاب: (المدرس، المتعلم، المعرفة) — ولذلك يُستبعد الاختيار B لأن "المحيط" ليس قطباً في المثلث الديداكتيكي — وخلال البحث الفردي عن الحل، يكون المتعلم في تفاعل مباشر مع موضوع التعلم (المعرفة)، وهي العلاقة السيكولوجية (قطب التمثلات والتعلم).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). «المحيط» ليس قطباً في المثلث الديداكتيكي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q54', 'exam_primary_2025_didactics_maths_nov', 54, 'نظرية الوضعيات — المأسسة', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حينما يوضح الأستاذ على السبورة أن "3 × 6" هي طريقة مختصرة لكتابة "3 + 3 + 3 + 3 + 3 + 3"، فإن هذه الممارسة تُعتبر محور:', false, '[{"id": "A", "text": "مرحلة الفعل."}, {"id": "B", "text": "مرحلة الصياغة."}, {"id": "C", "text": "مرحلة التداول."}, {"id": "D", "text": "مرحلة المأسسة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'في مرحلة المأسسة (Institutionnalisation) يتدخل الأستاذ لإضفاء الطابع العلمي والرسمي والرمزي المتداول على المعرفة التي تم بناؤها وتعميمها لتصبح قابلة للاستثمار لاحقاً، وهو ما فعله حين قدّم الكتابة الضربية المختصرة على السبورة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q55', 'exam_primary_2025_didactics_maths_nov', 55, 'بناء مفهوم الضرب', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، المفهوم الجديد المراد بناؤه من خلال الوضعية 1.', false, '[{"id": "A", "text": "الجمع والضرب."}, {"id": "B", "text": "تصنيف عناصر باعتماد الجمع والضرب."}, {"id": "C", "text": "تصنيف عناصر باعتماد الجمع المتكرر والضرب."}, {"id": "D", "text": "الضرب."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'متعلمو السنة الثانية ابتدائي يمتلكون مسبقاً مفهوم الجمع كمكتسب قبلي، ويتم توظيفه (كجمع متكرر لعدد نفسه) كمدخل لبناء المفهوم الجديد المستهدف من الوضعية وهو الضرب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q56', 'exam_primary_2025_didactics_maths_nov', 56, 'مجالات الرياضيات', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، المجال الرياضاتي الذي تندرج فيه الوضعية 1.', false, '[{"id": "A", "text": "حل المسائل."}, {"id": "B", "text": "الهندسة."}, {"id": "C", "text": "القياس."}, {"id": "D", "text": "تنظيم ومعالجة البيانات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'تندرج الوضعية ضمن مجال "الأعداد والحساب" وهو غير وارد ضمن الاختيارات (A-B-C-D). ووفق المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، فإن مجالات الرياضيات أربعة فقط (الأعداد والحساب، الهندسة، القياس، تنظيم ومعالجة البيانات)، أما "حل المسائل" فليس مجالاً مستقلاً بل هو مكون مستعرض يُدمج داخل المجالات الأربعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). مجالات الرياضيات في المنهاج (يوليوز 2021) أربعة فقط؛ «حل المسائل» مكون مستعرض لا مجال مستقل.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q57', 'exam_primary_2025_didactics_maths_nov', 57, 'المبادئ الديداكتيكية', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، المبدأ الديداكتيكي الذي تم اعتماده في تقديم المفهوم الجديد.', false, '[{"id": "A", "text": "الانتقال من المحسوس إلى المجرد."}, {"id": "B", "text": "الحساب الذهني."}, {"id": "C", "text": "التقويم التكويني."}, {"id": "D", "text": "التركيز على العمليات الحسابية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'انطلق النشاط من تمثيل محسوس/شبه محسوس (صورة علب وتفاحات واقعية) لينتقل المتعلم تدريجياً إلى التمثيل الرمزي المجرد (الكتابة الجمعية ثم الكتابة الضربية)، وهو أحد المبادئ الديداكتيكية الأساسية في تدريس الرياضيات بالابتدائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q58', 'exam_primary_2025_didactics_maths_nov', 58, 'العقد الديداكتيكي', 'الوضعية 1: قدم أستاذ النشاط الآتي لمتعلميه في السنة الثانية من التعليم الابتدائي؛ حيث طلب منهم محاولة البحث عن الحل بشكل فردي: «سارة لديها 6 علب. في كل علبة 3 تفاحات. ما مجموع عدد التفاحات؟ .... + .... + .... + .... + .... + .... = .... — .... × .... = ....» (مع صورة طفلة تحمل علب تفاح).
حدد(ي) مما يلي، ما يعبر بدقة عن "خرق للعقد الديداكتيكي".', false, '[{"id": "A", "text": "ينجز المتعلم(ة) تمرينا بنجاح دون مساعدة من الأستاذ(ة)."}, {"id": "B", "text": "يضيف الأستاذ(ة) قواعد عمل دون توضيحها للمتعلمين."}, {"id": "C", "text": "يطرح المتعلم(ة) أسئلة مرتبطة بالمستلزمات السابقة."}, {"id": "D", "text": "يضيف الأستاذ(ة) واجبات منزلية لتثبيت التعلمات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يقوم العقد الديداكتيكي على منظومة التوقعات والقواعد المتبادلة التي تحدد أدوار والتزامات كل من المدرس والمتعلم تجاه المعرفة. وإضافة الأستاذ قواعد عمل جديدة بشكل أحادي دون إخبار المتعلمين أو توضيحها يُخلّ بهذه التوقعات ويشكل خرقاً للعقد الديداكتيكي، بينما تعبر الاختيارات A وC وD عن ممارسات تعليمية عادية وإيجابية.

ثانياً: الأسئلة المرتبطة بالوضعية 2 (من Q59 إلى Q62)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q59', 'exam_primary_2025_didactics_maths_nov', 59, 'النماذج الديداكتيكية', 'الوضعية 2: خلال تقديم نشاط مرتبط بقياس محيط الأشكال الهندسية لتلاميذ السنة الرابعة من التعليم الابتدائي، اعتمدت الأستاذة الخطوات الآتية: أ. في البداية ذكّرت الأستاذة بقاعدة حساب قياس المحيط؛ حيث وضحت أن قياس محيط الشكل الهندسي هو مجموع قياسات أطوال الأضلاع التي يتكون منها الشكل الهندسي، وقدمت القاعدة: «لحساب قياس المحيط نجمع قياسات أطوال جميع الأضلاع». عرضت الأستاذة بعد ذلك مستطيلا على السبورة: الطول = 8 cm، العرض = 3 cm، وقامت بحساب قياس محيط المستطيل: 8 + 3 + 8 + 3 = 22 cm. ب. بعد ذلك، وزعت على المتعلمين أوراقا تتضمن مربعا، قياس ضلعه 4 سنتيمترات، وساعدتهم على حساب قياس محيطه، بالطريقة نفسها التي تم بها حساب قياس محيط المستطيل.
حدد(ي) مما يلي، النموذج الديداكتيكي المعتمد من طرف الأستاذة في تدبير الحصة.', false, '[{"id": "A", "text": "النموذج التلقيني."}, {"id": "B", "text": "النموذج السوسيوبنائي."}, {"id": "C", "text": "النموذج الصريح."}, {"id": "D", "text": "النموذج البنائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'اعتمدت الأستاذة المراحل المميزة للتدريس الصريح (النموذج الصريح)؛ ففي المرحلة (أ) ذكّرت بالقاعدة وقدّمتها بوضوح ثم قامت بـ النمذجة (Modelage) عبر حساب محيط المستطيل خطوة بخطوة على السبورة، وانتقلت في المرحلة (ب) إلى الممارسة الموجهة (Pratique guidée) حيث وزعت أوراق عمل حول المربع وساعدت المتعلمين على الإنجاز بالطريقة نفسها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q60', 'exam_primary_2025_didactics_maths_nov', 60, 'أدوار المتعلم', 'الوضعية 2: خلال تقديم نشاط مرتبط بقياس محيط الأشكال الهندسية لتلاميذ السنة الرابعة من التعليم الابتدائي، اعتمدت الأستاذة الخطوات الآتية: أ. في البداية ذكّرت الأستاذة بقاعدة حساب قياس المحيط؛ حيث وضحت أن قياس محيط الشكل الهندسي هو مجموع قياسات أطوال الأضلاع التي يتكون منها الشكل الهندسي، وقدمت القاعدة: «لحساب قياس المحيط نجمع قياسات أطوال جميع الأضلاع». عرضت الأستاذة بعد ذلك مستطيلا على السبورة: الطول = 8 cm، العرض = 3 cm، وقامت بحساب قياس محيط المستطيل: 8 + 3 + 8 + 3 = 22 cm. ب. بعد ذلك، وزعت على المتعلمين أوراقا تتضمن مربعا، قياس ضلعه 4 سنتيمترات، وساعدتهم على حساب قياس محيطه، بالطريقة نفسها التي تم بها حساب قياس محيط المستطيل.
حدد(ي) مما يلي، دور المتعلم(ة) خلال المرحلة (أ) من الحصة في الوضعية 2.', false, '[{"id": "A", "text": "متلقي(ة)."}, {"id": "B", "text": "مشارك(ة)."}, {"id": "C", "text": "متفاعل(ة)."}, {"id": "D", "text": "مطبق(ة) للمفهوم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'خلال المرحلة (أ) تحديداً (مرحلة التذكير بالقاعدة والنمذجة)، تتولى الأستاذة وحدها تقديم القاعدة وإنجاز المثال التوضيحي على السبورة، فيكون دور المتعلم في هذه اللحظة متلقياً ومنصتاً وملاحظاً للنموذج، على أن ينتقل إلى التطبيق في المرحلة (ب).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q61', 'exam_primary_2025_didactics_maths_nov', 61, 'أدوار المدرس', 'الوضعية 2: خلال تقديم نشاط مرتبط بقياس محيط الأشكال الهندسية لتلاميذ السنة الرابعة من التعليم الابتدائي، اعتمدت الأستاذة الخطوات الآتية: أ. في البداية ذكّرت الأستاذة بقاعدة حساب قياس المحيط؛ حيث وضحت أن قياس محيط الشكل الهندسي هو مجموع قياسات أطوال الأضلاع التي يتكون منها الشكل الهندسي، وقدمت القاعدة: «لحساب قياس المحيط نجمع قياسات أطوال جميع الأضلاع». عرضت الأستاذة بعد ذلك مستطيلا على السبورة: الطول = 8 cm، العرض = 3 cm، وقامت بحساب قياس محيط المستطيل: 8 + 3 + 8 + 3 = 22 cm. ب. بعد ذلك، وزعت على المتعلمين أوراقا تتضمن مربعا، قياس ضلعه 4 سنتيمترات، وساعدتهم على حساب قياس محيطه، بالطريقة نفسها التي تم بها حساب قياس محيط المستطيل.
حدد(ي) مما يلي، دور الأستاذة خلال المرحلة (أ) من الحصة في الوضعية 2.', false, '[{"id": "A", "text": "ملاحظة يقظة."}, {"id": "B", "text": "خبيرة تشرح."}, {"id": "C", "text": "ميسرة توجه."}, {"id": "D", "text": "منشطة تثير التساؤل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'في مرحلة النمذجة (المرحلة أ) ضمن النموذج الصريح، تضطلع الأستاذة بدور الخبيرة التي توضح القاعدة وتشرح خطوات إنجاز المهمة وتُنمذجها أمام المتعلمين، أما دور "الميسرة الموجهة" فيتجلى في المرحلة (ب) أو في النموذج البنائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q62', 'exam_primary_2025_didactics_maths_nov', 62, 'مجالات الرياضيات — القياس', 'الوضعية 2: خلال تقديم نشاط مرتبط بقياس محيط الأشكال الهندسية لتلاميذ السنة الرابعة من التعليم الابتدائي، اعتمدت الأستاذة الخطوات الآتية: أ. في البداية ذكّرت الأستاذة بقاعدة حساب قياس المحيط؛ حيث وضحت أن قياس محيط الشكل الهندسي هو مجموع قياسات أطوال الأضلاع التي يتكون منها الشكل الهندسي، وقدمت القاعدة: «لحساب قياس المحيط نجمع قياسات أطوال جميع الأضلاع». عرضت الأستاذة بعد ذلك مستطيلا على السبورة: الطول = 8 cm، العرض = 3 cm، وقامت بحساب قياس محيط المستطيل: 8 + 3 + 8 + 3 = 22 cm. ب. بعد ذلك، وزعت على المتعلمين أوراقا تتضمن مربعا، قياس ضلعه 4 سنتيمترات، وساعدتهم على حساب قياس محيطه، بالطريقة نفسها التي تم بها حساب قياس محيط المستطيل.
حدد(ي) مما يلي، المجال الرياضاتي الذي تندرج فيه الوضعية 2.', false, '[{"id": "A", "text": "الأعداد والحساب."}, {"id": "B", "text": "الهندسة."}, {"id": "C", "text": "القياس."}, {"id": "D", "text": "معالجة البيانات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'وفق المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، يندرج موضوع "حساب قياس محيط المربع والمستطيل والمثلث" في السنة الرابعة ضمن مجال القياس، كما ورد في نص الوضعية صراحة: «نشاط مرتبط بـ قياس محيط الأشكال الهندسية».

ثالثاً: الأسئلة المرتبطة بالوضعية 3 (Q63 و Q64)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q63', 'exam_primary_2025_didactics_maths_nov', 63, 'التعامد — الهدف الديداكتيكي', 'الوضعية 3: طلب أستاذ من متعلمي السنة الرابعة من التعليم الابتدائي، إنشاء مثلث قائم الزاوية، باستعمال مسطرة غير مدرجة، بالإضافة إلى أداة أخرى...
حدد(ي) مما يلي، الهدف الرئيس من هذا النشاط (الوضعية 3).', false, '[{"id": "A", "text": "التأكد من القدرة على قياس زاوية قائمة."}, {"id": "B", "text": "تقييم دقة استعمال الأدوات الهندسية."}, {"id": "C", "text": "معالجة مفهوم التعامد في وضعية تطبيقية."}, {"id": "D", "text": "اكتشاف خصائص المثلث قائم الزاوية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'اختيار "مسطرة غير مدرجة" كمتغير ديداكتيكي يُلغي البعد المرتبط بقياس الأطوال ويركّز على الخاصية الهندسية الجوهرية لإنشاء مثلث قائم الزاوية، وهي التعامد (رسم ضلعين متعامدين يشكلان زاوية قائمة)، مما يجعل النشاط معالجةً وتوظيفاً لمفهوم التعامد في وضعية إنشائية تطبيقية. ويُستبعد A لأن النشاط إنشاء وليس قياساً، وD لأن خصائص المثلث قائم الزاوية تُكتشف سابقاً في السنة الثالثة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q64', 'exam_primary_2025_didactics_maths_nov', 64, 'الأدوات الهندسية', 'الوضعية 3: طلب أستاذ من متعلمي السنة الرابعة من التعليم الابتدائي، إنشاء مثلث قائم الزاوية، باستعمال مسطرة غير مدرجة، بالإضافة إلى أداة أخرى...
حدد(ي) مما يلي، الأداة الأساسية لإنجاز هذا النشاط (الوضعية 3).', false, '[{"id": "A", "text": "المسطرة غير المدرجة."}, {"id": "B", "text": "الكوس."}, {"id": "C", "text": "المعداد النقطي."}, {"id": "D", "text": "الأنسوخ."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'المسطرة غير المدرجة لا تكفي وحدها لإنشاء زاوية قائمة بدقة، لذا فإن الأداة الهندسية الأساسية المكملة لها لرسم التعامد وإنشاء المثلث قائم الزاوية هي الكوس (المزواة).

رابعاً: الأسئلة المرتبطة بالوضعية 4 (من Q65 إلى Q68)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q65', 'exam_primary_2025_didactics_maths_nov', 65, 'تقديم الأعداد', 'الوضعية 4: خلال الحصة الرابعة من درس الرياضيات قدم الأستاذ الوضعية التالية لمتعلميه: «ثلاثة أصدقاء يتقاسمون كعكتين متماثلتين: هداية أكلت 1/2 كعكة، وحفصة أكلت منها 1/4، وياسين أكل 1/3 كعكة. مَن مِن الأصدقاء أكل أكبر قطعة؟» (مع صورة ثلاثة أطفال وكعكتين).
حدد(ي) مما يلي، الترتيب السليم لتقديم الأعداد في المدرسة الابتدائية.', false, '[{"id": "A", "text": "الأعداد الكسرية – الأعداد الصحيحة الطبيعية – الأعداد العشرية."}, {"id": "B", "text": "الأعداد الصحيحة الطبيعية – الأعداد الكسرية – الأعداد العشرية."}, {"id": "C", "text": "الأعداد الصحيحة الطبيعية – الأعداد العشرية – الأعداد الكسرية."}, {"id": "D", "text": "الأعداد الكسرية – الأعداد العشرية – الأعداد الصحيحة الطبيعية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب مصفوفة المدى والتتابع في المنهاج المغربي للتعليم الابتدائي: تُقدم الأعداد الصحيحة الطبيعية ابتداءً من السنة الأولى، ثم تُقدم الأعداد الكسرية ابتداءً من السنة الثالثة، ثم تُبنى الأعداد العشرية انطلاقاً من الكسور العشرية ابتداءً من السنة الرابعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). حسب مصفوفة المدى والتتابع في المنهاج: الطبيعية من السنة الأولى، الكسرية من الثالثة، العشرية من الرابعة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q66', 'exam_primary_2025_didactics_maths_nov', 66, 'الوسائل الديداكتيكية — الكسور', 'الوضعية 4: خلال الحصة الرابعة من درس الرياضيات قدم الأستاذ الوضعية التالية لمتعلميه: «ثلاثة أصدقاء يتقاسمون كعكتين متماثلتين: هداية أكلت 1/2 كعكة، وحفصة أكلت منها 1/4، وياسين أكل 1/3 كعكة. مَن مِن الأصدقاء أكل أكبر قطعة؟» (مع صورة ثلاثة أطفال وكعكتين).
حدد(ي) مما يلي، الوسيلة الأكثر فعالية لتمكين التلاميذ من مقارنة الأعداد 1/2 ؛ 1/3 ؛ 1/4 في هذه الوضعية.', false, '[{"id": "A", "text": "حاسوب مع رسوم بيانية لكعكات."}, {"id": "B", "text": "خريطة ذهنية تتضمن تعريفا للكسور."}, {"id": "C", "text": "سبورة ذكية تعرض تمارين تفاعلية."}, {"id": "D", "text": "أقراص كسرية شفافة قابلة للتطابق."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'لأنها وسيلة ديداكتيكية محسوسة تتيح المناولة المباشرة وتتلاءم مع سياق الوضعية (الكعكات الدائرية المتماثلة)، كما تسمح بفضل شفافيتها وقابليتها للتطابق بمقارنة الأجزاء بصرياً وملموساً لإدراك أن 1/2 > 1/3 > 1/4 وتجاوز العائق المعرفي الشائع (الاعتقاد بأن الأكبر مقاماً هو الأكبر قيمة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q67', 'exam_primary_2025_didactics_maths_nov', 67, 'التدرج الديداكتيكي — الكسور', 'الوضعية 4: خلال الحصة الرابعة من درس الرياضيات قدم الأستاذ الوضعية التالية لمتعلميه: «ثلاثة أصدقاء يتقاسمون كعكتين متماثلتين: هداية أكلت 1/2 كعكة، وحفصة أكلت منها 1/4، وياسين أكل 1/3 كعكة. مَن مِن الأصدقاء أكل أكبر قطعة؟» (مع صورة ثلاثة أطفال وكعكتين).
حدد(ي) مما يلي، التدرج الصحيح لتدريس الكسور.', false, '[{"id": "A", "text": "المقارنة والترتيب – التمثيل – العمليات الحسابية."}, {"id": "B", "text": "التمثيل – العمليات الحسابية – المقارنة والترتيب."}, {"id": "C", "text": "العمليات الحسابية – المقارنة والترتيب – التمثيل."}, {"id": "D", "text": "التمثيل – المقارنة والترتيب – العمليات الحسابية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يقتضي التدرج الديداكتيكي السليم تقديم المفهوم وبناءه أولاً عبر التمثيل (قراءة وكتابة وتمثيل أجزاء من وحدة)، ثم الانتقال إلى المقارنة والترتيب (والتكافؤ وتوحيد المقامات)، وأخيراً إنجاز العمليات الحسابية على الكسور.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). التدرج: التمثيل ثم المقارنة والترتيب ثم العمليات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q68', 'exam_primary_2025_didactics_maths_nov', 68, 'معالجة الأخطاء — الكسور', 'الوضعية 4: خلال الحصة الرابعة من درس الرياضيات قدم الأستاذ الوضعية التالية لمتعلميه: «ثلاثة أصدقاء يتقاسمون كعكتين متماثلتين: هداية أكلت 1/2 كعكة، وحفصة أكلت منها 1/4، وياسين أكل 1/3 كعكة. مَن مِن الأصدقاء أكل أكبر قطعة؟» (مع صورة ثلاثة أطفال وكعكتين).
طلب الأستاذ من متعلميه إنجاز العملية التالية: 3/4 + 2/3 = …، فكان جواب أحدهم: 3/4 + 2/3 = 5/7. حدد(ي) مما يلي، الطريقة الأفضل لمساعدة المتعلم على معالجة هذا التعثر:', false, '[{"id": "A", "text": "جعل المتعلم يمثل الكسور على دوائر مجزأة ومتقايسة."}, {"id": "B", "text": "استعمال قضبان الكسور البلاستيكية لتمثيل: 3/4 و 2/3"}, {"id": "C", "text": "حساب 3/4 + 2/3 بتحويلهما إلى أعداد عشرية (0.66 + 0.75)"}, {"id": "D", "text": "تقديم القاعدة التالية: a/b + c/d = (ad + bc)/bd"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وقع المتعلم في خطأ مفهومي شائع بجمع البسطين معاً والمقامين معاً. والمعالجة الديداكتيكية الأنجع تكون بالمناولة المحسوسة عبر قضبان الكسور البلاستيكية؛ لأن وضع القضيبين خطياً جنباً إلى جنب يُظهر مباشرة أن المجموع يفوق الوحدة 1 (مما يُفنّد النتيجة الخاطئة 5/7 < 1)، كما يسهّل مطابقتهما مع قضبان الأثناعشرات (1/12) لبناء معنى توحيد المقامات (9/12 + 8/12 = 17/12). وتُستبعد C لأن 2/3 ليس عدداً عشرياً مضبوطاً، وD لأنها قاعدة جبرية مجردة لا تعالج التمثل الخاطئ، وA لأن التمثيل الدائري أقل فعالية من النموذج الشريطي الخطي في الضم الجمعي وإيجاد المقام المشترك.

خامساً: الأسئلة المرتبطة بالوضعية 5 (من Q69 إلى Q72)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). المعالجة الأنجع بالمناولة المحسوسة (قضبان الكسور) لا بالقاعدة المجردة؛ ترتيب الكسرين في B وC صُحح حسب الورقة (3/4 قبل 2/3).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q69', 'exam_primary_2025_didactics_maths_nov', 69, 'بناء الأعداد العشرية', 'الوضعية 5: أثناء تقديم مفهوم جديد، وزعت الأستاذة على متعلميها شريطا ورقيا يمثل وحدة قياس، وطلبت منهم، في مرحلة أولى، قياس طول كتاب وقلم ملون باستخدام هذا الشريط دون طي أو تقسيمه. أثناء تنفيذ النشاط لاحظ المتعلمون أن معظم الأشياء لا يمكن قياسها بدقة بعدد صحيح من الوحدات. وعبر بعضهم قائلين: «القلم الملون أقصر بقليل من وحدة القياس»! «الكتاب أطول من وحدة واحدة، لكنه أقصر من وحدتين». في مرحلة ثانية، اتفقت الأستاذة ومتعلميها على طي الشريط بشكل منتظم ومتقايس، بحيث يقسم الشريط إلى 10 أجزاء متساوية، وطلبت منهم إعادة قياس الكتاب والقلم الملون...
حدد(ي) مما يلي، الهدف الديداكتيكي الأساس الذي استهدفته الأستاذة خلال المرحلة الأولى:', false, '[{"id": "A", "text": "توضيح أن الأعداد الصحيحة غير كافية للتعبير عن بعض القياسات بدقة."}, {"id": "B", "text": "تشجيع المتعلمين على العمل الجماعي واكتشاف وحدات قياس مختلفة."}, {"id": "C", "text": "تدريب المتعلمين على المقارنة بين طول الكتاب والقلم."}, {"id": "D", "text": "تقديم مفهوم قياس الأطوال بطريقة تطبيقية وعملية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'هدفت المرحلة الأولى إلى جعل المتعلمين يكتشفون بأنفسهم قصور الأعداد الصحيحة الطبيعية عن التعبير الدقيق عن قياس أشياء أطوالها غير تامة للوحدة (أقصر من وحدة، أو محصورة بين وحدة ووحدتين)، مما يخلق الحاجة المعرفية لبناء الأعداد العشرية عبر تجزيء الوحدة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q70', 'exam_primary_2025_didactics_maths_nov', 70, 'بناء الأعداد العشرية', 'الوضعية 5: أثناء تقديم مفهوم جديد، وزعت الأستاذة على متعلميها شريطا ورقيا يمثل وحدة قياس، وطلبت منهم، في مرحلة أولى، قياس طول كتاب وقلم ملون باستخدام هذا الشريط دون طي أو تقسيمه. أثناء تنفيذ النشاط لاحظ المتعلمون أن معظم الأشياء لا يمكن قياسها بدقة بعدد صحيح من الوحدات. وعبر بعضهم قائلين: «القلم الملون أقصر بقليل من وحدة القياس»! «الكتاب أطول من وحدة واحدة، لكنه أقصر من وحدتين». في مرحلة ثانية، اتفقت الأستاذة ومتعلميها على طي الشريط بشكل منتظم ومتقايس، بحيث يقسم الشريط إلى 10 أجزاء متساوية، وطلبت منهم إعادة قياس الكتاب والقلم الملون...
حدد(ي) مما يلي، الغرض الديداكتيكي من استعمال الشريط الورقي وحدةً للقياس:', false, '[{"id": "A", "text": "جعل الحصة ممتعة وتشغيل المتعلمين يدويا."}, {"id": "B", "text": "بناء مفهوم العدد العشري من خلال نشاط محسوس."}, {"id": "C", "text": "تطوير قدرة المتعلمين في الأعمال اليدوية (الطي والقياس)."}, {"id": "D", "text": "تدريب المتعلمين على استعمال وسيلة بسيطة بديلة عن المسطرة المدرجة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'استعمال الشريط الورقي كوحدة قياس قابلة للطي والتقسيم إلى 10 أجزاء متساوية (أعشار) ليس غاية يدوية في ذاته، بل هو وسيلة محسوسة لبناء مفهوم العدد العشري وإعطاء معنى للجزء العشري.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q71', 'exam_primary_2025_didactics_maths_nov', 71, 'النهج الرياضياتي — المهارات', 'الوضعية 5: أثناء تقديم مفهوم جديد، وزعت الأستاذة على متعلميها شريطا ورقيا يمثل وحدة قياس، وطلبت منهم، في مرحلة أولى، قياس طول كتاب وقلم ملون باستخدام هذا الشريط دون طي أو تقسيمه. أثناء تنفيذ النشاط لاحظ المتعلمون أن معظم الأشياء لا يمكن قياسها بدقة بعدد صحيح من الوحدات. وعبر بعضهم قائلين: «القلم الملون أقصر بقليل من وحدة القياس»! «الكتاب أطول من وحدة واحدة، لكنه أقصر من وحدتين». في مرحلة ثانية، اتفقت الأستاذة ومتعلميها على طي الشريط بشكل منتظم ومتقايس، بحيث يقسم الشريط إلى 10 أجزاء متساوية، وطلبت منهم إعادة قياس الكتاب والقلم الملون...
حدد(ي) مما يلي، مهارة أساسية من مهارات النهج الرياضياتي تم تفعيلها في المرحلة الثانية، حين اتفق المتعلمون وأستاذتهم على تقسيم الشريط إلى 10 أجزاء:', false, '[{"id": "A", "text": "الحساب."}, {"id": "B", "text": "التواصل."}, {"id": "C", "text": "النمذجة."}, {"id": "D", "text": "التفكير المنطقي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تقسيم الشريط الورقي إلى 10 أجزاء متقايسة لإعادة قياس أطوال واقعية (الكتاب والقلم) يفعّل مهارة النمذجة الرياضياتية، أي بناء نموذج رياضياتي (تقسيم عشري للوحدة) لتمثيل وضعية من الواقع الفعلي وحل مشكل القياس بدقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q72', 'exam_primary_2025_didactics_maths_nov', 72, 'النقل الديداكتيكي', 'الوضعية 5: أثناء تقديم مفهوم جديد، وزعت الأستاذة على متعلميها شريطا ورقيا يمثل وحدة قياس، وطلبت منهم، في مرحلة أولى، قياس طول كتاب وقلم ملون باستخدام هذا الشريط دون طي أو تقسيمه. أثناء تنفيذ النشاط لاحظ المتعلمون أن معظم الأشياء لا يمكن قياسها بدقة بعدد صحيح من الوحدات. وعبر بعضهم قائلين: «القلم الملون أقصر بقليل من وحدة القياس»! «الكتاب أطول من وحدة واحدة، لكنه أقصر من وحدتين». في مرحلة ثانية، اتفقت الأستاذة ومتعلميها على طي الشريط بشكل منتظم ومتقايس، بحيث يقسم الشريط إلى 10 أجزاء متساوية، وطلبت منهم إعادة قياس الكتاب والقلم الملون...
الانتقال من المعرفة العلمية إلى المعرفة المدرسية يعد مثالا على النقل الديداكتيكي. وظيفته الأساس هي:', false, '[{"id": "A", "text": "تعويض المفهوم المعقد بمفهوم أبسط حتى وإن كان غير دقيق رياضياتيا."}, {"id": "B", "text": "تحويل معرفة علمية نظرية مجردة إلى موضوع تعليمي قابل للفهم والتطبيق."}, {"id": "C", "text": "ترجمة البرامج الدراسية الرسمية إلى مجموعة من التمارين التطبيقية."}, {"id": "D", "text": "تحويل المعرفة العلمية إلى معرفة مكتسبة من طرف المتعلمين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب "إيف شوفالار"، يتمثل النقل الديداكتيكي في تحويل المعرفة العالمة (العلمية المجردة) إلى معرفة قابلة للتدريس وموضوع تعليمي يراعي خصائص المتعلمين مع الحفاظ على دقتها العلمية (لذا يُستبعد A لتنافيه مع اليقظة الديداكتيكية)، كما يختلف عن التعلم الذي يتعلق بتحويل المعرفة إلى معرفة مكتسبة (لذا يُستبعد D).

سادساً: أسئلة عامة في ديداكتيك الرياضيات (من Q73 إلى Q75)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). حسب «إيف شوفالار».')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q73', 'exam_primary_2025_didactics_maths_nov', 73, 'الوضعية-المشكلة', 'حدد(ي) مما يلي، الدور الأساسي الذي تلعبه الوضعية-المشكلة في تعلم الرياضيات بالابتدائي.', false, '[{"id": "A", "text": "خلق خلل معرفي يدفع المتعلم لبناء معارف جديدة."}, {"id": "B", "text": "تقديم تقويم إجمالي لحصيلة التعلمات."}, {"id": "C", "text": "تقديم مبرر للعمل في مجموعات داخل القسم."}, {"id": "D", "text": "تمكين المتعلم من تكرار الأوتوماتيزمات وحفظ الإجراءات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تقوم بيداغوجيا حل المشكلات والنموذج البنائي على وضع المتعلم أمام عائق يولّد لديه خللاً معرفياً (لا توازن معرفي) يكشف عدم كفاية مكتسباته السابقة، فيدفعه ذلك إلى البحث وبناء معارف واستراتيجيات جديدة لتجاوزه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q74', 'exam_primary_2025_didactics_maths_nov', 74, 'العقد الديداكتيكي', 'حدد(ي) مما يلي، المفهوم الذي لا يمكن فصله عن العقد الديداكتيكي حسب "بروسو":', false, '[{"id": "A", "text": "التعلم عن طريق المحاكاة."}, {"id": "B", "text": "التدريس الصريح."}, {"id": "C", "text": "النقل الديداكتيكي."}, {"id": "D", "text": "الوضعية-المشكلة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'في نظرية الوضعيات الديداكتيكية لـ "غي بروسو"، لا يشتغل العقد الديداكتيكي ولا يتجلى إلا في ارتباط وثيق بالوضعية الديداكتيكية / الوضعية-المشكلة؛ إذ يُعرّف بروسو الوضعية بمجموع العلاقات التي يحددها العقد الديداكتيكي بين المتعلم والوسط والمدرس حول المعرفة. (أما النقل الديداكتيكي فينسب أساساً لـ "شوفالار"، والمحاكاة والتدريس الصريح لا ينتميان لنظرية بروسو).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio). حسب نظرية الوضعيات الديداكتيكية لـ«غي بروسو».')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة نونبر 2025) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_nov_q75', 'exam_primary_2025_didactics_maths_nov', 75, 'الوضعية-المشكلة', 'حدد(ي) مما يلي، الاقتراح الذي يعد شرطا أساسيا لتصبح الوضعية "وضعية - مشكلة ديداكتيكية":', false, '[{"id": "A", "text": "يحتاج المتعلم إلى تعبئة الموارد النظرية لحلها."}, {"id": "B", "text": "تكون مستمدة من وضعية حقيقية."}, {"id": "C", "text": "لا يعرف المتعلم كيفية حلها مسبقا."}, {"id": "D", "text": "تتضمن معطيات غير ضرورية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الشرط الجوهري الذي يميّز الوضعية-المشكلة الديداكتيكية عن مجرد التمرين التطبيقي هو أن المتعلم لا يمتلك حلها أو طريقة حلها مسبقاً، بل يواجه فيها عائقاً يستدعي بناء معرفة أو إجراء جديد. أما السياق الواقعي (B) أو تضمين معطيات مشوشة غير ضرورية (D) فهي خصائص ممكنة وليست شروطاً أساسية (فقد تكون الوضعية داخل-رياضياتية صرفة وتظل وضعية-مشكلة ديداكتيكية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1YV8ZiN6ByM_qLVcT2xNlanW7oSEdmQva', true, 'إجابة تحليلية ديداكتيكية؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

