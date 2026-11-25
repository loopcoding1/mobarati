-- ====================================================================
-- مباراتي — ديداكتيك الرياضيات، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك الرياضيات - دورة يناير 2025.md
--   (سجل الامتحانات رقم 48؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك الرياضيات.pdf (7 صفحات — تبدأ من الصفحة 2/8).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q51 إلى Q75 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل (مع توحيد المسافات البيضاء في سطر واحد).
--
-- ملاحظات عن ملف الامتحان:
--   * المسح يبدأ من الصفحة 2/8 — صفحة الغلاف (1/8) مفقودة من الملف؛ المدة (45 دقيقة)
--     والمعامل (3) أُخذا من الإعلان الرسمي للوزارة عن مباراة يناير 2025 (التخصص المزدوج:
--     ديداكتيك الرياضيات 45 دقيقة، المعامل 3)، وتطابقا قوائم mesconcours.ma لنفس المادة.
--   * الوضعيات 1–3 مدمجة في نصوص أسئلتها (Q59–Q61، Q62، Q66–Q67) لأن نص السؤال وحده
--     لا يكفي دون سياق الوضعية؛ رسم البالونات (9 بالونات) والمبيانات بالأعمدة غير مرفقة
--     في قاعدة البيانات (نص السؤال والتعليل يصفانها).
--   * Q73: الاختياران A و C متطابقان حرفياً في ورقة الامتحان نفسها؛ والجواب الصحيح B.
--   * ورقة الامتحان تحمل علامات قلم وطامس (Blanco) من مرشح سابق — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_maths_jan', 'specialty_primary', 2025, 'didactics_maths', 'ديداكتيك الرياضيات', 'امتحان ديداكتيك الرياضيات (دورة يناير 2025)', 'دورة يناير 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q51', 'exam_primary_2025_didactics_maths_jan', 51, 'تكنولوجيا الإعلام والاتصال', 'حدد(ي) مما يلي، كيفية توظيف تقنيات تكنولوجيا الإعلام والاتصال في درس الرياضيات.', false, '[{"id": "A", "text": "بشكل مخطط له بعد الانتهاء من عملية التدريس."}, {"id": "B", "text": "عند التخطيط لأنشطة التعليم عن بعد."}, {"id": "C", "text": "بشكل مدروس يخدم الأهداف التعليمية."}, {"id": "D", "text": "بشكل دائم في جميع الأهداف التعليمية والتعلمية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يُوظَّف إدماج تكنولوجيا الإعلام والاتصال (TICE) في تدريس الرياضيات بشكل هادف ومدروس عندما يحقق قيمة مضافة ويخدم الأهداف التعلمية المحددة، ولا يُشترط استعمالها بشكل دائم في كل الأنشطة، كما لا يقتصر دورها على التعليم عن بعد أو ما بعد عملية التدريس.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q52', 'exam_primary_2025_didactics_maths_jan', 52, 'النقل الديدكتيكي', 'حدد(ي)، مما يلي، الترتيب الذي يأخذه مسار النقل الديدكتيكي.', false, '[{"id": "A", "text": "المعرفة العالمة ← المعرفة المُكتسبة ← المعرفة المدرسية ← المعرفة المُدرَّسة."}, {"id": "B", "text": "المعرفة العالمة ← المعرفة المُدرَّسة ← المعرفة المدرسية ← المعرفة المكتسبة."}, {"id": "C", "text": "المعرفة العالمة ← المعرفة المدرسية ← المعرفة المكتسبة ← المعرفة المُدرَّسة."}, {"id": "D", "text": "المعرفة العالمة ← المعرفة المُكتسبة ← المعرفة المُدرَّسة ← المعرفة المدرسية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'المسار الصحيح للنقل الديدكتيكي (عند إيف شوفالار) يأخذ الترتيب الآتي: المعرفة العالمة ← المعرفة المدرسية (المُعدّة للتدريس) ← المعرفة المُدرَّسة ← المعرفة المكتسبة (المُتعلَّمة). وبما أن هذا الترتيب الصحيح غير وارد في أيٍّ من الاختيارات (A، B، C، D)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q53', 'exam_primary_2025_didactics_maths_jan', 53, 'التعاقد الديدكتيكي', 'إلى أي حد يمكن أن يؤثر الوضع السوسيوثقافي للمتعلم(ة) على طبيعة التعاقد الديدكتيكي؟', false, '[{"id": "A", "text": "ليس هناك أي تأثير، فالعقد التعليمي عالمي."}, {"id": "B", "text": "له تأثير على التوقعات الضمنية للمدرس(ة) والمتعلم(ة)."}, {"id": "C", "text": "له تأثير على تحفيز المتعلمين، وليس على التفاعلات الصفية."}, {"id": "D", "text": "له تأثير فقط في أنظمة التعليم والتعلم غير العادلة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يقوم التعاقد الديدكتيكي في جزء كبير منه على قواعد وتوقعات ضمنية متبادلة بين المدرس(ة) والمتعلم(ة) إزاء المعرفة. والوضع السوسيوثقافي للمتعلم(ة) يؤثر مباشرة على تمثلاته وتأويله لهذه التوقعات الضمنية، كما يؤثر على توقعات المدرس(ة) وطريقة تدبير التفاعلات الصفية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q54', 'exam_primary_2025_didactics_maths_jan', 54, 'النهج الرياضياتي', 'حدد(ي)، مما يلي، المقصود بالنهج الرياضياتي.', false, '[{"id": "A", "text": "حل وضعيات رياضياتية وتطبيق التعلمات المكتسبة."}, {"id": "B", "text": "طريقة منظمة للتفكير في حل وضعيات رياضياتية."}, {"id": "C", "text": "حفظ القواعد وإعادة استثمارها في حل وضعيات رياضياتية."}, {"id": "D", "text": "تطبيق الخوارزميات وفق نهج رياضياتي مظبوط."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'النهج الرياضياتي ليس مجرد حفظ للقواعد أو تطبيق آلي للخوارزميات، بل هو طريقة منظمة للتفكير والبحث والنمذجة والاستدلال في حل وضعيات رياضياتية، تتيح للمتعلم(ة) بناء المعرفة وتنظيم خطواته الذهنية والمنهجية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q55', 'exam_primary_2025_didactics_maths_jan', 55, 'الوضعية المشكلة', 'حدد(ي)، مما يلي، الخاصية التي تميز بشكل أساسي الوضعية المشكلة عن تمرين حسابي في مادة الرياضيات.', false, '[{"id": "A", "text": "وجود العديد من العمليات الحسابية."}, {"id": "B", "text": "الحاجة إلى تعبئة الموارد النظرية المتنوعة."}, {"id": "C", "text": "عدم وجود حلول معلومة مسبقا."}, {"id": "D", "text": "وجود أعداد مركبة ومعقدة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'الفارق الجوهري بين الوضعية المشكلة والتمرين الحسابي هو أن الوضعية المشكلة تطرح تحدياً معرفياً لا يمتلك المتعلم(ة) حلاً جاهزاً أو إجراءً معلوماً مسبقاً له، مما يضطره للبحث والتقصي وابتكار استراتيجية للحل، على عكس التمرين الذي يكتفي بتطبيق مباشر لقاعدة معروفة سلفاً. (أما الاختيار B فقاصر لأنه يحصر الموارد في "النظرية" فقط).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q56', 'exam_primary_2025_didactics_maths_jan', 56, 'صعوبات التعلم', 'حدد(ي)، مما يلي، الصعوبة الأساسية التي يمكن أن يواجهها المتعلم(ة) عند حل وضعية مشكلة في مادة الرياضيات.', false, '[{"id": "A", "text": "استيعاب المصطلحات الرياضياتية المستعملة."}, {"id": "B", "text": "إنجاز العمليات الحسابية المرتبطة بالوضعية المشكلة."}, {"id": "C", "text": "عدم جاذبية سياق الوضعية المشكلة."}, {"id": "D", "text": "الربط بين مختلف عناصر الوضعية المشكلة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تُعد صعوبة الربط بين مختلف عناصر الوضعية المشكلة (فهم العلاقات القائمة بين المعطيات والمطلوب، وترجمتها رياضياً لاختيار النموذج أو العملية المناسبة) هي الصعوبة الديدكتيكية الأساسية التي تعيق المتعلمين في حل المسائل، أكثر من مجرد إنجاز العمليات الحسابية الآلية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q57', 'exam_primary_2025_didactics_maths_jan', 57, 'مراحل النهج الرياضياتي', 'حدد(ي)، مما يلي، مراحل النهج الرياضياتي المعتمد بالمدرسة الابتدائية.', false, '[{"id": "A", "text": "التعاقد- الفعل- الصياغة – المأسسة – التجريب."}, {"id": "B", "text": "الملاحظة - الفعل- الصياغة – المأسسة – التداول."}, {"id": "C", "text": "التعاقد- الفعل- البرهنة – التداول – الصياغة."}, {"id": "D", "text": "التعاقد- الفعل- المأسسة – التداول – التطبيق."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'وفق المنهاج الدراسي للتعليم الابتدائي (2021)، تتسلسل مراحل النهج الرياضياتي (الوضعية الديدكتيكية عند غي بروسو) بالترتيب التالي: التعاقد الديدكتيكي ← الفعل ← الصياغة ← التداول (المصادقة) ← المأسسة. وبما أن جميع الاختيارات من A إلى D تتضمن أخطاء في الترتيب أو تقحم مراحل غير واردة (مثل التجريب، الملاحظة، البرهنة، التطبيق)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q58', 'exam_primary_2025_didactics_maths_jan', 58, 'طرائق الحساب', '"Le Procédé la Martinière" من الطرائق الفعالة المعتمدة في الحساب، وهي ترتكز على استعمال:', false, '[{"id": "A", "text": "الألواح."}, {"id": "B", "text": "النرد."}, {"id": "C", "text": "القبعات الست."}, {"id": "D", "text": "بطاقات الأعداد."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'طريقة "لامارتينيير" (Le Procédé La Martinière) تقنية بيداغوجية معروفة في تدبير الحساب الذهني والتقويم السريع، ترتكز أساساً على استعمال الألواح؛ حيث يكتب جميع المتعلمين إجاباتهم في وقت واحد ويرفعون الألواح عند الإشارة، مما يضمن مشاركة الجميع وتصحيحاً فورياً. الوضعية 1 (مرتبطة بالأسئلة Q59، Q60، Q61): قدمت الأستاذة حسناء النشاط الآتي لمتعلميها...، بعد ذلك، وفي إطار مجموعات، شرع المتعلمون في مناقشة مختلف الاستراتيجيات التي ستساعدهم للوصول إلى الحل. ألاحظ الرسم أدناه وأجيب عن السؤال. (رسم لمجموعة من 9 بالونات) ما العدد الذي سيتبقى من البالونات بعد تفجير أربعة منها؟', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q59', 'exam_primary_2025_didactics_maths_jan', 59, 'النماذج الديدكتيكية', 'الوضعية 1: قدمت الأستاذة حسناء النشاط الآتي لمتعلميها...، بعد ذلك، وفي إطار مجموعات، شرع المتعلمون في مناقشة مختلف الاستراتيجيات التي ستساعدهم للوصول إلى الحل. ألاحظ الرسم أدناه وأجيب عن السؤال. (رسم لمجموعة من 9 بالونات) ما العدد الذي سيتبقى من البالونات بعد تفجير أربعة منها؟ حدد(ي)، مما يلي، النموذج الديدكتيكي المعتمد من طرف الأستاذة في تدبير الحصة.', false, '[{"id": "A", "text": "النموذج الصريح."}, {"id": "B", "text": "النموذج البنائي."}, {"id": "C", "text": "النموذج السوسيوبنائي."}, {"id": "D", "text": "النموذج الإلقائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يبرز من نص الوضعية أن المتعلمين اشتغلوا «في إطار مجموعات» و«شرعوا في مناقشة مختلف الاستراتيجيات» للوصول إلى الحل، وهو ما يرتكز على التفاعل الاجتماعي والصراع السوسيومعرفي بين الأقران، وهما المرتكزان الأساسيان لـالنموذج السوسيوبنائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 1 (رسم 9 بالونات؛ الباقي بعد تفجير 4 منها هو 5)؛ نص الوضعية مدمج في نص السؤال أعلاه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q60', 'exam_primary_2025_didactics_maths_jan', 60, 'أنواع الوضعيات', 'الوضعية 1: قدمت الأستاذة حسناء النشاط الآتي لمتعلميها...، بعد ذلك، وفي إطار مجموعات، شرع المتعلمون في مناقشة مختلف الاستراتيجيات التي ستساعدهم للوصول إلى الحل. ألاحظ الرسم أدناه وأجيب عن السؤال. (رسم لمجموعة من 9 بالونات) ما العدد الذي سيتبقى من البالونات بعد تفجير أربعة منها؟ حدد(ي)، مما يلي، نوع الوضعية 1 التي اقترحتها الأستاذة على متعلميها.', false, '[{"id": "A", "text": "وضعية ديدكتيكية."}, {"id": "B", "text": "وضعية تمرن وتطبيق."}, {"id": "C", "text": "وضعية مشكلة تقويمية."}, {"id": "D", "text": "وضعية مسألة تشخيصية."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تسعى الأستاذة من خلال هذه الوضعية إلى بناء مفهوم رياضياتي جديد عبر دفع المتعلمين في مجموعات إلى البحث ومناقشة استراتيجيات الحل (كما يؤكد ذلك منطوق السؤال الموالي Q61: "المفهوم الذي تروم الأستاذة بناءه من خلال الوضعية 1")، وهذا هو التعريف الدقيق لـالوضعية الديدكتيكية (وضعية البناء).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 1؛ نص الوضعية مدمج في نص السؤال أعلاه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q61', 'exam_primary_2025_didactics_maths_jan', 61, 'بناء المفاهيم', 'الوضعية 1: قدمت الأستاذة حسناء النشاط الآتي لمتعلميها...، بعد ذلك، وفي إطار مجموعات، شرع المتعلمون في مناقشة مختلف الاستراتيجيات التي ستساعدهم للوصول إلى الحل. ألاحظ الرسم أدناه وأجيب عن السؤال. (رسم لمجموعة من 9 بالونات) ما العدد الذي سيتبقى من البالونات بعد تفجير أربعة منها؟ حدد(ي)، مما يلي، المفهوم الذي تروم الأستاذة بناءه من خلال الوضعية 1.', false, '[{"id": "A", "text": "طرح عددين كسريين."}, {"id": "B", "text": "تصنيف العناصر."}, {"id": "C", "text": "طرح عددين صحيحين."}, {"id": "D", "text": "العدد الكسري."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'تنطلق الوضعية من مجموعة محددة من البالونات (عدد صحيح طبيعي وهو 9) وتطلب تحديد الباقي بعد إزالة/تفجير 4 بالونات (9 − 4)، وهو ما يمثل بناءً ملموساً لمفهوم طرح عددين صحيحين. الوضعية 2 (مرتبطة بالسؤال Q62): يقدم المفهوم في مادة الرياضيات وفق تدرج يوافق مراحل النمو المعرفي للمتعلم ويتطور من مستوى دراسي معين إلى مستوى دراسي أعلى. لنعتبر المضامين الآتية: ① - الضرب في نطاق الأعداد من 0 إلى 999. ② - الضرب في نطاق الأعداد من 0 إلى 9999. ③ - الضرب في نطاق الأعداد من 0 إلى 999999. ④ - ضرب عدد عشري في 10 وفي 100، وفي 1000.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 1 (9 بالونات، تفجير 4، أي 9 − 4)؛ نص الوضعية مدمج في نص السؤال أعلاه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q62', 'exam_primary_2025_didactics_maths_jan', 62, 'تدرج المضامين', 'الوضعية 2: يقدم المفهوم في مادة الرياضيات وفق تدرج يوافق مراحل النمو المعرفي للمتعلم ويتطور من مستوى دراسي معين إلى مستوى دراسي أعلى. لنعتبر المضامين الآتية: ① - الضرب في نطاق الأعداد من 0 إلى 999. ② - الضرب في نطاق الأعداد من 0 إلى 9999. ③ - الضرب في نطاق الأعداد من 0 إلى 999999. ④ - ضرب عدد عشري في 10 وفي 100، وفي 1000. حدد(ي)، مما يلي، التدرج الصحيح المعتمد في تقديم هذه المضامين.', false, '[{"id": "A", "text": "④ ← ① ← ② ← ③"}, {"id": "B", "text": "① ← ④ ← ② ← ③"}, {"id": "C", "text": "① ← ② ← ④ ← ③"}, {"id": "D", "text": "① ← ② ← ③ ← ④"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وفق مصفوفة المدى والتتابع في المنهاج الدراسي للتعليم الابتدائي (2021): ① الضرب في نطاق الأعداد من 0 إلى 999: يُقدم في المستوى الثاني. ② الضرب في نطاق الأعداد من 0 إلى 9999: يُقدم في المستوى الثالث. ③ الضرب في نطاق الأعداد من 0 إلى 999999: يُقدم في المستوى الرابع. ④ ضرب عدد عشري في 10 و100 و1000: يُقدم في المستوى الخامس (بعد تقديم الأعداد العشرية في المستوى الرابع).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 2 (المضامين ①–④)؛ نص الوضعية مدمج في نص السؤال أعلاه.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q63', 'exam_primary_2025_didactics_maths_jan', 63, 'تدرج المضامين', 'يتم تقديم جمع الأعداد الكسرية ابتداء من المستوى:', false, '[{"id": "A", "text": "الثالث من التعليم الابتدائي."}, {"id": "B", "text": "الرابع من التعليم الابتدائي."}, {"id": "C", "text": "الخامس من التعليم الابتدائي."}, {"id": "D", "text": "السادس من التعليم الابتدائي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب المنهاج الدراسي (2021)، يُشرع في تقديم الأعداد الكسرية (تقديم، قراءة وكتابة، مقارنة وترتيب، وجمع وطرح الأعداد الكسرية التي لها نفس المقام) ابتداءً من المستوى الثالث من التعليم الابتدائي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q64', 'exam_primary_2025_didactics_maths_jan', 64, 'النقل الديدكتيكي', 'حدد(ي)، مما يلي، العنصر الذي يبين بوضوح النقل الديدكتيكي في الرياضيات.', false, '[{"id": "A", "text": "أستاذ(ة) الرياضيات يستعمل برنام تكنولوجي لتدريس الهندسة."}, {"id": "B", "text": "متعلم(ة) يحل وضعية مشكلة في الرياضيات باستخدام طريقة اكتشفها بنفسه."}, {"id": "C", "text": "كتاب مدرسي يعرض مفهوم الكسور باستخدام كعكة."}, {"id": "D", "text": "مقال في مجلة علمية حول ديدكتيك الرياضيات."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'النقل الديدكتيكي هو تحويل المعرفة العالمة المجردة إلى معرفة مدرسية مبسطة وقابلة للتدريس تلائم مستوى المتعلمين. وتقديم مفهوم مجرد كالأعداد الكسرية في كتاب مدرسي عبر تمثيل ملموس (تقسيم كعكة) يُعد نموذجاً واضحاً للنقل الديدكتيكي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q65', 'exam_primary_2025_didactics_maths_jan', 65, 'بناء المفاهيم', 'حدد، مما يلي، المفهوم الذي يتم بناؤه من خلال النظمة المترية.', false, '[{"id": "A", "text": "الأعداد الستينية."}, {"id": "B", "text": "العدد الكسري."}, {"id": "C", "text": "الأعداد المتناسبة."}, {"id": "D", "text": "العدد العشري."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تُعتبر النظمة المترية (وحدات قياس الأطوال والكتل والسعات المبنية على الأساس العشري: أجزاء ومضاعفات 10، 100، 1000) من المداخل الأساسية والمجال التطبيقي الأبرز لبناء مفهوم العدد العشري وإكسابه معنىً ملموساً لدى المتعلمين (للتعبير عن قياسات دقيقة تفوق ما توفره الأعداد الصحيحة الطبيعية، مثل: 1 m 25 cm = 1,25 m). الوضعية 3 (مرتبطة بالسؤالين Q66 و Q67): خلال الحصة الثالثة من درس الرياضيات قدم الأستاذ الوضعية التالية لتلامذته: (رسم يبين مجموع الأشكال الهندسية التي اختار التلاميذ رسمها: مثلثات، مربعات، أقراص، ويُطلب تحديد التمثيل المبياني بالأعمدة الذي يبين هذه المعلومات).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q66', 'exam_primary_2025_didactics_maths_jan', 66, 'حصص الدرس', 'الوضعية 3: خلال الحصة الثالثة من درس الرياضيات قدم الأستاذ الوضعية التالية لتلامذته: الرسم التالي يبين مجموع الأشكال الهندسية التي اختار التلاميذ رسمها. ما التمثيل المبياني الذي يبين المعلومات الواردة بالرسم أعلاه. (الأشكال في الرسم: 3 مثلثات، 3 مربعات، 4 أقراص؛ وأربعة تمثيلات مبيانية بالأعمدة مقترحة في الورقة.) حدد(ي)، مما يلي، الحصة التي قدم فيها المدرس الوضعية 3 أعلاه.', false, '[{"id": "A", "text": "بناء المفهوم."}, {"id": "B", "text": "أنشطة ترييضية."}, {"id": "C", "text": "أنشطة تقويمية."}, {"id": "D", "text": "أنشطة الدعم والمعالجة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وفق التوزيع المنهجي لحصص درس الرياضيات بالمدرسة الابتدائية (5 حصص لدرس واحد في الأسبوع)، تُخصص الحصة الأولى لبناء المفهوم، والحصتان الثانية والثالثة للأنشطة الترييضية، والرابعة للتقويم، والخامسة للدعم والمعالجة. وبما أن النص يذكر صراحة «خلال الحصة الثالثة»، فهي حصة أنشطة ترييضية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 3 (الحصة الثالثة)؛ نص الوضعية مدمج في نص السؤال أعلاه. الجواب لا يتطلب قراءة المبيانات بالأعمدة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q67', 'exam_primary_2025_didactics_maths_jan', 67, 'مجالات الرياضيات', 'الوضعية 3: خلال الحصة الثالثة من درس الرياضيات قدم الأستاذ الوضعية التالية لتلامذته: الرسم التالي يبين مجموع الأشكال الهندسية التي اختار التلاميذ رسمها. ما التمثيل المبياني الذي يبين المعلومات الواردة بالرسم أعلاه. (الأشكال في الرسم: 3 مثلثات، 3 مربعات، 4 أقراص؛ وأربعة تمثيلات مبيانية بالأعمدة مقترحة في الورقة.) حدد(ي)، مما يلي، المجال الرياضياتي الذي تندرج ضمنه الوضعية 3.', false, '[{"id": "A", "text": "الأعداد والحساب."}, {"id": "B", "text": "الهندسة."}, {"id": "C", "text": "القياس."}, {"id": "D", "text": "حل المسائل."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'تتعلق الوضعية بجرد معطيات وتمثيلها مبيانياً بالأعمدة، وهو ما يندرج ضمن مجال «تنظيم ومعالجة البيانات» (المجال الرابع في منهاج الرياضيات إلى جانب الأعداد والحساب، الهندسة، والقياس). وبما أن هذا المجال غير مذكور ضمن الاختيارات من A إلى D، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'السؤال مرتبط بالوضعية 3 (جرد الأشكال الهندسية وتمثيلها مبيانياً: 3 مثلثات، 3 مربعات، 4 أقراص)؛ نص الوضعية مدمج في نص السؤال أعلاه. المجال هو «تنظيم ومعالجة البيانات» غير الوارد في الاختيارات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q68', 'exam_primary_2025_didactics_maths_jan', 68, 'المعينات الديدكتيكية', 'حدد(ي) مما يلي، متى يجب استخدام المعينات الديدكتيكية.', false, '[{"id": "A", "text": "خلال أنشطة المناولات والإنتاج."}, {"id": "B", "text": "في بداية الحصة وعند تقديم الوضعية."}, {"id": "C", "text": "في مرحلة المأسسة وفي نهاية الدرس."}, {"id": "D", "text": "عند الحاجة وحسب الهدف التعليمي."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'لا يرتبط استعمال المعينات الديدكتيكية بلحظة زمنية وحيدة ومحددة في الدرس، بل يخضع لمبدأ الوظيفية البيداغوجية؛ أي تُستعمل عند الحاجة وحسب الهدف التعليمي (قد تُستعمل للانطلاق، أو المناولة والبناء، أو التحقق والتقويم، أو الدعم والمعالجة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q69', 'exam_primary_2025_didactics_maths_jan', 69, 'دور المتعلم', 'حدد(ي)، مما يلي، دور المتعلم في بناء المفهوم الرياضياتي.', false, '[{"id": "A", "text": "متلقي منتبه."}, {"id": "B", "text": "مشارك نشط."}, {"id": "C", "text": "مستمع منتبه."}, {"id": "D", "text": "مطبق للمفهوم."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وفق المقاربة بالكفايات والمنهاج الدراسي، يُعتبر المتعلم(ة) مركز العملية التعليمية التعلمية ومشاركاً نشطاً يبني المفاهيم بنفسه من خلال الملاحظة والتجريب والمناولة والتفاعل داخل الجماعة، وليس متلقياً أو مستمعاً سلبياً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q70', 'exam_primary_2025_didactics_maths_jan', 70, 'مبادئ تدريس الرياضيات', 'حدد(ي)، مما يلي، المبدأ الأساسي في تدريس الرياضيات بالتعليم الابتدائي.', false, '[{"id": "A", "text": "التركيز على حفظ وتطبيق قواعد الرياضيات."}, {"id": "B", "text": "الانطلاق من المحسوس إلى المجرد."}, {"id": "C", "text": "البدء بالمجرد مع الأمثلة والتطبيقات."}, {"id": "D", "text": "الاعتماد على استثمار القواعد في التمارين."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'مراعاةً لمراحل النمو المعرفي للطفل في المرحلة الابتدائية (مرحلة العمليات الملموسة)، ينص المنهاج الدراسي صراحة على مبدأ الانطلاق من المحسوس (الأشياء الملموسة والمناولة) مروراً بشبه المحسوس وصولاً إلى المجرد (الرموز والقواعد الرياضياتية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q71', 'exam_primary_2025_didactics_maths_jan', 71, 'القياس', 'حدد(ي)، مما يلي، أهمية تدريس القياس في المرحلة الابتدائية.', false, '[{"id": "A", "text": "ربط الرياضيات بالحياة اليومية."}, {"id": "B", "text": "اكتساب آليات الحساب الذهني في مجال القياس."}, {"id": "C", "text": "تعلم قياس الأشكال الهندسية."}, {"id": "D", "text": "فهم الأعداد ووظيفتها في مجال القياس."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تكمن الأهمية الأساسية والأشمل لتدريس القياس (الأطوال، الكتل، السعات، الزمن، النقود، المساحات...) في ربط الرياضيات بالحياة اليومية للمتعلم(ة) ومحيطه العملي، مما يمنح التعلمات الرياضياتية معنىً واقعياً ووظيفياً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q72', 'exam_primary_2025_didactics_maths_jan', 72, 'الوسائل الديدكتيكية', 'حدد(ي)، مما يلي، الوسائل الديدكتيكية الأنسب لتمكين المتعلمين من بناء تصور ذهني متين لمفهوم حجم المكعب؟', false, '[{"id": "A", "text": "برنام إلكتروني للهندسة."}, {"id": "B", "text": "نموذج مكعب خشبي كبير."}, {"id": "C", "text": "مكعبات بلاستيكية ملونة."}, {"id": "D", "text": "رسومات لمكعبات على ورقة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'لبناء تصور ذهني متين لمفهوم الحجم (باعتباره مقدار الحيز الداخلي الذي يشغله المجسم مقاساً بوحدات مكعبة)، تُعد المكعبات البلاستيكية الملونة هي الأنسب لأنها تتيح للمتعلمين المناولة والتركيب والتفكيك وعدّ وحدات المكعبات المكونة للحجم، وهو ما لا يوفره مكعب خشبي واحد مصمت أو رسم ثنائي الأبعاد على الورقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q73', 'exam_primary_2025_didactics_maths_jan', 73, 'تقديم الأعداد', 'يتم تقديم الأعداد من 0 إلى 9 في المدرسة الابتدائية عبر مستويات ديدكتيكية متنوعة. حدد(ي)، مما يلي، الترتيب الصحيح لهذه المستويات.', false, '[{"id": "A", "text": "القراءة ← التمثيل ← المقارنة والترتيب ← التوظيف"}, {"id": "B", "text": "التمثيل ← القراءة والكتابة ← المقارنة والترتيب ← التوظيف"}, {"id": "C", "text": "القراءة ← التمثيل ← المقارنة والترتيب ← التوظيف"}, {"id": "D", "text": "التوظيف ← التمثيل ← القراءة والكتابة ← المقارنة والترتيب"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ينطلق التدرج الديدكتيكي لتقديم الأعداد من 0 إلى 9 من الملموس إلى المجرد ثم الاستعمال: أولاً التمثيل (تمثيل الكميات بمجموعات من الأشياء الملموسة)، ثم القراءة والكتابة (تسمية العدد وربطه برمزه الرقمي)، تليهما المقارنة والترتيب (إدراك العلاقات بين الأعداد)، وأخيراً التوظيف في وضعيات ومسائل. (ملاحظة: الاختياران A و C متطابقان حرفياً في نص الإجابة كما أنتجه النموذج.)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, 'الاختياران A و C متطابقان حرفياً في ورقة الامتحان نفسها («القراءة ← التمثيل ← المقارنة والترتيب ← التوظيف»)؛ والجواب الصحيح B غير متأثر بذلك.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q74', 'exam_primary_2025_didactics_maths_jan', 74, 'الوسائل الديدكتيكية', 'حدد(ي)، مما يلي، الوسائل المناسبة التي ينبغي اعتمادها خلال حصة بناء الأعداد من 0 إلى 9.', false, '[{"id": "A", "text": "حصى وأكياس وصناديق."}, {"id": "B", "text": "بطاقات الأعداد وأوراق الحساب."}, {"id": "C", "text": "عارض ضوئي Vidéo-projecteur."}, {"id": "D", "text": "كراسة المتعلم والمتعلمة."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'خلال حصة بناء الأعداد من 0 إلى 9 (المستوى الأول)، يجب الانطلاق من المحسوس والمناولات المباشرة (التصنيف، تكوين المجموعات، التقابل حدّاً بحدّ)، ولذلك تُعد الوسائل الملموسة مثل الحصى والأكياس والصناديق هي الأنسب لبناء المفهوم قبل الانتقال إلى البطاقات المجردة أو الكراسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: ديداكتيك الرياضيات (دورة يناير 2025) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_maths_jan_q75', 'exam_primary_2025_didactics_maths_jan', 75, 'تقنيات الحساب', 'حدد(ي)، مما يلي، التقنيات التي تستخدم في حساب الفرق.', false, '[{"id": "A", "text": "الجمع بالإكمال – المستقيم العددي – الفروق المتساوية."}, {"id": "B", "text": "الجمع المتكرر – الطرح المتكرر – المستقيم العددي."}, {"id": "C", "text": "الجمع المتكرر – المستقيم العددي- الفروق المتساوية."}, {"id": "D", "text": "المستقيم العددي- الطرح المتكرر- الجمع بالإكمال."}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'لحساب الفرق (عملية الطرح) تُستعمل عدة تقنيات ديدكتيكية منها: الجمع بالإكمال (البحث عن المكمل: b + ⋯ = a)، والمستقيم العددي (التراجع أو التقدم)، والفروق المتساوية (خاصية الاحتفاظ بالفرق عند إضافة نفس العدد لحدي الطرح: a − b = (a + c) − (b + c)). في المقابل، يُستعمل "الجمع المتكرر" في الضرب و"الطرح المتكرر" في القسمة، مما يُقصي الاختيارات B وC وD.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1o7N9gxR4JcK5H3W9fY6j0nS2k6Qsrjx6', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
