-- ====================================================================
-- مباراتي — امتحان ديداكتيك العلوم (دورة نونبر 2025)
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك العلوم - دورة نونبر 2025.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك العلوم - دورة نونبر 2025.pdf.
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q76 إلى Q100 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان،
--     باستثناء الأسئلة المتخطاة أدناه.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل، بما فيها علامات المراجع [1]-[28] حيث وردت؛
--     التفاف الأسطر في ملف الحل جُمع بفواصل (مسافة واحدة) دون تغيير الكلمات.
--   * علامات قلم مرشح سابق (✓) على ورقة الامتحان أُهملت تماماً — ليست مفتاح تصحيح.
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (45 دقيقة) والمعامل (3) مأخوذان من غلاف ورقة الامتحان نفسها.
--     (لا يوجد عمود للمعامل في جدول exams، فسُجل هنا وفي ملف التقدم فقط.)
--   * الامتحان كامل: 25 سؤالاً، لا صفحات مفقودة ولا أسئلة متخطاة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_sciences_nov', 'specialty_primary', 2025, 'didactics_sciences', 'ديداكتيك العلوم', 'امتحان ديداكتيك العلوم (دورة نونبر 2025)', 'دورة نونبر 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q76', 'exam_primary_2025_didactics_sciences_nov', 76, 'المرتكزات والمفاهيم الأساس', 'يقصد بالتدرج الديدكتيكي الانطلاق من:', false, '[{"id": "A", "text": "مفاهيم مركبة إلى مفاهيم بسيطة ومن مفاهيم ملموسة إلى مفاهيم مجردة."}, {"id": "B", "text": "مفاهيم بسيطة إلى مفاهيم مركبة ومن مفاهيم مجردة إلى مفاهيم ملموسة."}, {"id": "C", "text": "مفاهيم بسيطة إلى مفاهيم مركبة ومن مفاهيم ملموسة إلى مفاهيم مجردة."}, {"id": "D", "text": "مفاهيم مركبة إلى مفاهيم بسيطة ومن مفاهيم مجردة إلى مفاهيم ملموسة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يقوم مبدأ التدرج الديدكتيكي في بناء المفاهيم العلمية (الذي يراعي النمو المعرفي للمتعلم حسب بياجي) على الانتقال التدريجي من البسيط إلى المركب، ومن الملموس/المحسوس إلى المجرد، ومن القريب المألوف إلى البعيد.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q77', 'exam_primary_2025_didactics_sciences_nov', 77, 'المرتكزات والمفاهيم الأساس', 'النهجان الصحيحان المطابقان للخطاطتين (أ) و(ب) هما:', false, '[{"id": "A", "text": "(أ)- نهج حل المشكلات ؛ (ب)- نهج تجريبي."}, {"id": "B", "text": "(أ)- نهج تجريبي ؛ (ب)- نهج التقصي."}, {"id": "C", "text": "(أ)- نهج تاريخي ؛ (ب)- نهج حل المشكلات."}, {"id": "D", "text": "(أ)- نهج التقصي ؛ (ب)- نهج تاريخي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الخطاطة (أ) تمثل النهج التجريبي لأنها تحصر التحقق من الفرضية في التجربة فقط («التحقق من الفرضية بواسطة التجربة» ثم «نتيجة التجربة وتأويلها»). الخطاطة (ب) تمثل نهج التقصي لأنه أوسع من النهج التجريبي، إذ يتيح التحقق من الفرضيات بوسائل متنوعة («ملاحظة مدققة، بحث في وثائق، نمذجة، تجريب...»).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q78', 'exam_primary_2025_didactics_sciences_nov', 78, 'المرتكزات والمفاهيم الأساس', 'ما يميز المقاربة النسقية هي أنها:', false, '[{"id": "A", "text": "تركز على تفكيك الظواهر إلى عناصر جزئية."}, {"id": "B", "text": "تقتصر على متغير واحد عند دراسة الظواهر."}, {"id": "C", "text": "تهتم بتدقيق التفاصيل المكونة للظواهر."}, {"id": "D", "text": "تَدْرُسُ مكونات الظواهر بشكل شمولي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تتميز المقاربة النسقية (L''approche systémique) بدراسة الظواهر دراسة شمولية تُركز على التفاعلات والعلاقات بين مكونات النسق ككل، على عكس المقاربة التحليلية (الموصوفة في A وB وC) التي تركز على تفكيك الظاهرة إلى أجزاء وعزل المتغيرات وتدقيق التفاصيل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q79', 'exam_primary_2025_didactics_sciences_nov', 79, 'المرتكزات والمفاهيم الأساس', 'التعريف الصحيح للتمثل أو التصور هو:', false, '[{"id": "A", "text": "نموذج تفسيري موضوعي وثابت للظواهر يرتبط بالبيئة الاجتماعية والثقافية والمستوى المعرفي لدى المتعلم(ة)."}, {"id": "B", "text": "نموذج تفسيري ذاتي للظواهر مستقل عن البيئة الاجتماعية والثقافية والمستوى المعرفي لدى المتعلم(ة)."}, {"id": "C", "text": "نموذج تفسيري ذاتي للظواهر قابل للتطوير ويرتبط بالبيئة الاجتماعية والثقافية والمستوى المعرفي لدى المتعلم(ة)."}, {"id": "D", "text": "نموذج تفسيري موضوعي للظواهر قابل للتطوير ويرتبط بالبيئة الاجتماعية والثقافية والمستوى المعرفي لدى المتعلم(ة)."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'التمثل أو التصور (Représentation / Conception) هو نموذج تفسيري ذاتي (وليس موضوعياً كالمعرفة العلمية، مما يستبعد A وD)، وهو قابل للتعديل والتطوير عبر الصراع المعرفي (وليس ثابتاً)، كما أنه يرتبط بالبيئة الاجتماعية والثقافية وبالمستوى المعرفي للمتعلم (مما يستبعد B).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q80', 'exam_primary_2025_didactics_sciences_nov', 80, 'المرتكزات والمفاهيم الأساس', 'يتم استخراج الهدف العائق انطلاقا من:', false, '[{"id": "A", "text": "تحليل قبلي للمادة الدراسية."}, {"id": "B", "text": "اضطرابات التعلم."}, {"id": "C", "text": "تمثلات أو تصورات المتعلمين(ات)."}, {"id": "D", "text": "الأهداف المسطرة في المنهاج الدراسي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب «مارتيناند» (J.-L. Martinand)، فإن جدة مفهوم الهدف العائق (Objectif-obstacle) تكمن في تجاوز تحديد الأهداف انطلاقاً من التحليل القبلي للمادة الدراسية أو المنهاج فقط، ليتم انتقاؤها واشتقاقها بناءً على تمثلات وتصورات المتعلمين التي تكشف عن العوائق الإبستمولوجية القابلة للتجاوز[1][2] (وهو ما تؤكده أيضاً الوضعية اللاحقة في السؤال Q82). المجال 2: مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q81', 'exam_primary_2025_didactics_sciences_nov', 81, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'التقنية التي اعتمدتها المُدرسة والتي حددها GIORDAN هي:', false, '[{"id": "A", "text": "الاستبيان."}, {"id": "B", "text": "الملاحظة."}, {"id": "C", "text": "المقابلة."}, {"id": "D", "text": "التركيب."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حصر الباحث «أندري جيوردان» (André Giordan) تقنيات الكشف عن التمثلات في ثلاث تقنيات رئيسية: المقابلة، الاستبيان، والملاحظة (مع التوصية باستعمالها بشكل تركيبي combinatoire، ومن هنا جاء المشتّت D)[3][4]. وقد أدرج جيوردان ضمن تقنية الاستبيان (Questionnaire) الاستبيانات الموجهة ذات الأسئلة المفتوحة (كتابة و/أو رسومات) والمدعمة بدعامة (avec support)[3]؛ وهنا وزعت المدرسة بشكل فردي دعامة عبارة عن «إطار فارغ لجسم الإنسان» وطلبت رسم الأعضاء ومسار الهواء داخله لتجميع رسوم تخطيطية فردية، وهو ما ينطبق على تقنية الاستبيان المدعم بالرسم (بينما المقابلة تقوم على الحوار المباشر، والملاحظة تعتمد على رصد سلوكات وإنتاجات القسم أثناء الممارسة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q82', 'exam_primary_2025_didactics_sciences_nov', 82, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'من خلال الرسم أعلاه، تم اشتقاق الهدف العائق الذي مفاده: «يتوصل المتعلم(ة) إلى أن الأعضاء المتواجدة في نفس المكان ليس لها حتماً نفس الوظيفة». التمثل الذي اعتمدته المُدرسة لصياغة الهدف العائق هو:', false, '[{"id": "A", "text": "القلب ينتمي إلى الجهاز التنفسي ويرتبط بالقصبة الهوائية."}, {"id": "B", "text": "الهواء داخل الجسم حرّ طليق ولا يتقيد بالمسار الذي يسير فيه."}, {"id": "C", "text": "خلال الحركات التنفسية تتأرجح الرئتان بين الصدر والبطن."}, {"id": "D", "text": "حركات القلب تتسبب في حركة الهواء والحركات التنفسية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يظهر في رسم المتعلم أنه ربط القلب بالقصبة الهوائية وبمسار الهواء إلى جانب الرئتين، مما يعكس تمثله الخاطئ بأن القلب ينتمي إلى الجهاز التنفسي لمجرد تواجده مع الرئتين في المكان نفسه (القفص الصدري)، ومن ثَمّ صيغ الهدف العائق لتجاوز هذا الخلط بين «التموضع المكاني للأعضاء» و«وظيفتها»[5][6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q83', 'exam_primary_2025_didactics_sciences_nov', 83, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'عدد الأخطاء التي تعمد المدرس(ة) تضمينها في الرسم هو:', false, '[{"id": "A", "text": "خطأ واحد."}, {"id": "B", "text": "3 أخطاء."}, {"id": "C", "text": "خطآن."}, {"id": "D", "text": "4 أخطاء."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يتضمن الرسم خطأين علميين واضحين متعلقين بتشكل الظل: اتجاه الظل: ظل الشخص/الحاجز مرسوم في نفس جهة الشمس (نحو اليسار)، بينما يجب أن يتشكل الظل دائماً في الجهة المعاكسة لمصدر الضوء (وهو ما يناقض أيضاً اتجاه إضاءة وظل التضاريس في الرسم نفسه)[6]. شكل وطول الظل: لا يتطابق شكل الظل وطوله المبالغ فيه مع هيئة الشخص وموضع الشمس المرتفع في السماء[6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q84', 'exam_primary_2025_didactics_sciences_nov', 84, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'الوسيلة الأنسب التي يمكن للمدرس(ة) ومتعلميه الاعتماد عليها في هذه الحالة هي:', false, '[{"id": "A", "text": "تجربة أو مناولة في الموضوع."}, {"id": "B", "text": "صور من الكتاب المدرسي."}, {"id": "C", "text": "شرح شفهي من طرف المدرس(ة)."}, {"id": "D", "text": "رسم توضيحي على السبورة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'بما أن اليوم ممطر وتعذّر الخروج إلى الساحة، وبما أن الهدف التعلمي هو «استنتاج أن المسافة بين مصدر الضوء والحاجز تتحكم في طول ظله»[7]، فإن الوسيلة الأنسب ديدكتيكياً وعلمياً داخل القسم هي إنجاز تجربة أو مناولة بسيطة (باستعمال مصباح جيبي وحاجز معتم وشاشة/حائط)؛ بل إن هذه المناولة أدق من ضوء الشمس لتحقيق هذا الهدف بالذات لأن أشعة الشمس شبه متوازية ولا يمكن تغيير المسافة بينها وبين الحاجز.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q85', 'exam_primary_2025_didactics_sciences_nov', 85, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'خلال هذه الحصة اعتمدت المُدرسة:', false, '[{"id": "A", "text": "طريقة إلقائية."}, {"id": "B", "text": "طريقة حل المشكلات."}, {"id": "C", "text": "طريقة نشطة."}, {"id": "D", "text": "طريقة حوارية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'رغم بدء الحصة بقراءة نص وأسئلة موجهة لاستخراج سؤال التقصي، فإن المدرسة سرعان ما تخلّت عن إشراك المتعلمين في اقتراح الفرضيات وبناء التعلم، وقامت بنفسها بشرح الوثيقة وتسجيل معطيات الشرح على السبورة ثم توجيه المتعلمين لمجرد نقل الأسماء وترقيم المراحل؛ وهذا يجسد جوهر الطريقة الإلقائية (التلقينية) التي يحتكر فيها المدرس تقديم المعرفة جاهزة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q86', 'exam_primary_2025_didactics_sciences_nov', 86, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'الخطوات المنهجية لبناء هذه الوضعية وفق نهج التقصي هي:', false, '[{"id": "A", "text": "وضعية الانطلاق، صياغة سؤال التقصي، تقديم الفرضيات، تحديد ميثاق العمل، اختبار الفرضيات، التقاسم والاستنتاج والتعميم."}, {"id": "B", "text": "وضعية الانطلاق، تقديم الفرضيات، صياغة سؤال التقصي، تحديد ميثاق العمل، اختبار الفرضيات، الاستنتاج والتقاسم والتعميم."}, {"id": "C", "text": "وضعية الانطلاق، تحديد ميثاق العمل، صياغة سؤال التقصي، تقديم الفرضيات، اختبار الفرضيات، الاستنتاج والتقاسم والتعميم."}, {"id": "D", "text": "وضعية الانطلاق، صياغة سؤال التقصي، تحديد ميثاق العمل، تقديم الفرضيات، اختبار الفرضيات، الاستنتاج والتقاسم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، يتبع نهج التقصي التسلسل المنطقي والمنهجي الآتي: وضعية الانطلاق ← تملك الوضعية وصياغة سؤال التقصي ← تقديم الفرضيات ← اقتراح وتحديد ميثاق العمل ← التقصي واختبار الفرضيات ← تقديم وتقاسم الإنتاجات والاستنتاج ← التعميم[8]. (الاختيار B قدّم الفرضيات على السؤال، والاختيار C قدّم ميثاق العمل على السؤال والفرضيات، والاختيار D قدّم ميثاق العمل على الفرضيات وأغفل التعميم). المجال 3: مبادئ ديدكتيكية', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q87', 'exam_primary_2025_didactics_sciences_nov', 87, 'مبادئ ديدكتيكية', 'الإجراء المعتمد للتحقق من صحة الفرضيات يتمثل في:', false, '[{"id": "A", "text": "التجربة."}, {"id": "B", "text": "المناولة."}, {"id": "C", "text": "التحقيق."}, {"id": "D", "text": "النمذجة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'ساعد المدرس المتعلمين على إنجاز واستعمال مجسم يحاكي حركة الذراع والمرفق لتمحيص الفرضيات؛ وبناء نموذج مادي مبسط لمحاكاة ظاهرة أو بنية بيولوجية يُعد إجراء النمذجة (Modélisation)[9].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q88', 'exam_primary_2025_didactics_sciences_nov', 88, 'مبادئ ديدكتيكية', 'الهدف من توظيف المجسم أعلاه هو:', false, '[{"id": "A", "text": "تحديد أهم العضلات المتدخلة في حدوث الحركات."}, {"id": "B", "text": "تحديد أهم مفاصل جسم الإنسان."}, {"id": "C", "text": "استنتاج أهمية المفاصل في حدوث مختلف الحركات."}, {"id": "D", "text": "استنتاج دور الرياضة في الحفاظ على صحة الإنسان."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'المجسم يمثل طرفاً به مفصل واحد فقط (المرفق) يتيح الثني والبسط دون تمثيل للعضلات أو لباقي مفاصل الجسم (مما يستبعد A وB وD)، والهدف منه – كما هو مسطر في برنامج المستوى الثاني ابتدائي – هو مساعدة المتعلم على تفسير القدرة على الحركة واستنتاج أهمية المفاصل في حدوث مختلف الحركات[10][11].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q89', 'exam_primary_2025_didactics_sciences_nov', 89, 'مبادئ ديدكتيكية', 'القدرة الأساسية التي يروم المدرس(ة) تنميتها لدى المتعلمين(ات) هي:', false, '[{"id": "A", "text": "صياغة أسئلة."}, {"id": "B", "text": "التصميم."}, {"id": "C", "text": "التقييم."}, {"id": "D", "text": "التركيب."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يحدد المنهاج الدراسي ضمن قدرات مجال الاستدلال قدرة التركيب بأنها: «الإجابة على المفردات التي تتطلب النظر في عدد من العوامل المختلفة أو المفاهيم ذات العلاقة»[12]. وتوظيف وثيقة الشبكة الغذائية ودورة المادة (منتجون، مستهلكون، محللون، أملاح معدنية، وعلاقات غذائية متشابكة) يستهدف بالأساس قدرة المتعلم على التركيب والربط بين هذه العوامل والمفاهيم المتعددة لفهم التوازن البيئي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q90', 'exam_primary_2025_didactics_sciences_nov', 90, 'مبادئ ديدكتيكية', 'الهدف الذي ينتمي لمجال القيم والمواقف والذي يمكن تحقيقه من خلال استثمار الوثيقة أعلاه هو:', false, '[{"id": "A", "text": "تعرف أثر الافتراس والتطفل على التوازن البيئي."}, {"id": "B", "text": "إبراز تأثير الأحداث الطبيعية والأنشطة البشرية على التوازن البيئي."}, {"id": "C", "text": "الوعي بأهمية الحفاظ على التوازن البيئي."}, {"id": "D", "text": "ملاحظة وتحليل الوثائق واستخراج المعطيات المتعلقة بالتوازن البيئي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'مكونات منهاج النشاط العلمي ثلاثة: المضامين الأساسية (المعرفية): مثل الاختيارين A وB (تعرف أثر... / إبراز تأثير...). الممارسات العلمية (المهارية): مثل الاختيار D (ملاحظة وتحليل الوثائق واستخراج المعطيات...). القيم والمواقف (الوجدانية والسلوكية): مثل الاختيار C (الوعي بأهمية الحفاظ على التوازن البيئي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q91', 'exam_primary_2025_didactics_sciences_nov', 91, 'مبادئ ديدكتيكية', 'الهدف التعلمي من مشروع المتعلم(ة) هو:', false, '[{"id": "A", "text": "صناعة نموذج لتدفق الدم في عرق دموي."}, {"id": "B", "text": "تعرف مراحل استعمال المحرار."}, {"id": "C", "text": "البرهنة على تمدد ماء ملون بفعل الحرارة."}, {"id": "D", "text": "صناعة نموذج محرار وتجربته."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يتعلق الأمر بمشروع تكنولوجي (صنع جهاز يتكون من كرة مملوءة بماء ملون وقشة شفافة مثبتة على ورقة بيضاء، ثم وضعه تباعاً في كؤوس بها ماء تختلف درجة حرارته لملاحظة صعود ونزول السائل)، والهدف التعلمي منه هو صناعة نموذج محرار وتجربته (فالتمدد الحراري هو المبدأ الفيزيائي الموظف، لكن الهدف من المشروع التكنولوجي هو الصنع والتجريب).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q92', 'exam_primary_2025_didactics_sciences_nov', 92, 'مبادئ ديدكتيكية', 'المرحلة التي تمثلها أشكال الوثيقة هي:', false, '[{"id": "A", "text": "مرحلة تصميم المشروع."}, {"id": "B", "text": "مرحلة اختيار المشروع."}, {"id": "C", "text": "مرحلة تطوير المشروع."}, {"id": "D", "text": "مرحلة إنشاء وتجريب المشروع."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يوضح الشكلان (أ) و(ب) خطوات تركيب وصنع الجهاز (الإنشاء/الإنجاز)، بينما يوضح الشكل (ج) اختباره في كؤوس ذات درجات حرارة مختلفة (التجريب)، وبالتالي تمثل الوثيقة مرحلة إنشاء وتجريب المشروع.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q93', 'exam_primary_2025_didactics_sciences_nov', 93, 'مبادئ ديدكتيكية', 'يتمثل دور كل من المدرس(ة) والمتعلم(ة) خلال هذه المرحلة في:', false, '[{"id": "A", "text": "المدرس(ة): التوجيه ؛ المتعلم(ة): التصميم."}, {"id": "B", "text": "المدرس(ة): الإنجاز ؛ المتعلم(ة): التنفيذ."}, {"id": "C", "text": "المدرس(ة): التوجيه ؛ المتعلم(ة): الإنجاز."}, {"id": "D", "text": "المدرس(ة): التصميم ؛ المتعلم(ة): الإنجاز."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'خلال مرحلة إنشاء وتجريب المشروع التكنولوجي، يتولى المتعلم(ة) عملية الإنجاز الفعلي للمنتوج وتجريبه، في حين يقتصر دور المدرس(ة) على التوجيه والتأطير والمواكبة وضمان شروط السلامة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q94', 'exam_primary_2025_didactics_sciences_nov', 94, 'مبادئ ديدكتيكية', 'النشاط الذي اقترحه المدرس(ة) على المتعلمين(ات) ينتمي إلى:', false, '[{"id": "A", "text": "أنشطة التطبيق والتقويم والدعم."}, {"id": "B", "text": "أنشطة موازية ومندمجة."}, {"id": "C", "text": "أنشطة الاستثمار والامتداد."}, {"id": "D", "text": "أنشطة بناء المفهوم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب المنهاج الدراسي ومصوغة تكوين النشاط العلمي، فإن التكليف ببحث منزلي أو تقصٍّ يُنجز في المنزل خارج وقت الحصة ليُستثمر كنقطة انطلاق أو توسيع في الحصة القادمة يندرج ضمن أنشطة الاستثمار والامتداد[13][14][15]. المجال 4: موارد ديدكتيكية', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q95', 'exam_primary_2025_didactics_sciences_nov', 95, 'موارد ديدكتيكية', 'الهدف المرتبط بالمجال الموضوعي هو:', false, '[{"id": "A", "text": "إدراك المتعلم(ة) أن جسمه يشهد تغيرات تساعده على التكيف والبحث عن التوازن."}, {"id": "B", "text": "وعي المتعلم(ة) بأنه يساهم في حدوث اختلالات في تركيبة ودينامية بيئته."}, {"id": "C", "text": "وعي المتعلم بجسمه ككائن حي له العديد من الوظائف الحيوية."}, {"id": "D", "text": "إدراك المتعلم أن جسمه يشهد اختلالات في وظائفه الحيوية تعرقل نموه."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'كما جاء في نص الوضعية، فإن المجال الذاتي يروم فهم المتعلم لذاته (وهذا ينطبق على A وC وD لأنها جميعاً تتعلق بجسم المتعلم)، أما المجال الموضوعي فيروم فهم المتعلم لمحيطه وتفاعله معه، وهو ما يوافق الاختيار B («وعي المتعلم(ة) بأنه يساهم في حدوث اختلالات في تركيبة ودينامية بيئته»).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q96', 'exam_primary_2025_didactics_sciences_nov', 96, 'موارد ديدكتيكية', 'الزمن الأسبوعي المخصص لحصص مادة النشاط العلمي هو:', false, '[{"id": "A", "text": "ساعة ونصف."}, {"id": "B", "text": "ساعتان."}, {"id": "C", "text": "ساعة واحدة."}, {"id": "D", "text": "ساعة إلا ربع."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يخصص المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021) غلافاً زمنياً أسبوعياً قدره ساعتان لمادة النشاط العلمي في جميع المستويات الابتدائية (حصتان في الأسبوع، مدة كل حصة 60 دقيقة: 55 دقيقة للتعلم + 5 دقائق للنشاط الترفيهي/الاستراحة)[16][17].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q97', 'exam_primary_2025_didactics_sciences_nov', 97, 'موارد ديدكتيكية', 'تشكل كراسة المتعلم(ة):', false, '[{"id": "A", "text": "دعامة أساسية للمدرس(ة) في العملية التعليمية."}, {"id": "B", "text": "مصدرا يضمن تحقق الأهداف التعلمية."}, {"id": "C", "text": "ركيزة أساسية للمتعلم(ة) لإنماء الكفايات."}, {"id": "D", "text": "وسيلة تعليمية مساعدة في بناء التعلمات."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يؤكد المنهاج الدراسي (وكذلك نص الوضعية نفسه) أن كراسة المتعلم ليست كتاباً مقدساً ولا الركيزة الوحيدة أو الضامنة لتحقق الأهداف، بل هي مجرد وسيلة تعليمية مساعدة في بناء التعلمات، يمكن للمدرس تكييف أنشطتها أو الاستغناء عن بعضها بحسب حاجات وخصوصيات متعلميه[18].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q98', 'exam_primary_2025_didactics_sciences_nov', 98, 'موارد ديدكتيكية', 'الهدف التعلمي من استثمار هذه الدعامة هو:', false, '[{"id": "A", "text": "الكشف عن مراحل تطور البيض لدى الضفدعة."}, {"id": "B", "text": "الكشف عن دور المني في عملية التوالد عند الضفادع."}, {"id": "C", "text": "الكشف عن مراحل تطور البويضات والحيوانات المنوية لدى الضفادع."}, {"id": "D", "text": "الكشف عن دور كل من البويضات والحيوانات المنوية في عملية التوالد."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تُظهر التجارب الثلاث أن البويضات وحدها تنحل (تجربة 1)، والحيوانات المنوية وحدها تنحل (تجربة 2)، بينما يؤدي اجتماعهما معاً إلى ظهور الشراغيف (تجربة 3)؛ مما يكشف ضرورة ودور كل من البويضات والحيوانات المنوية في عملية التوالد.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q99', 'exam_primary_2025_didactics_sciences_nov', 99, 'موارد ديدكتيكية', 'المهارة الأساسية المستهدفة من توظيف الدعامة أعلاه هي:', false, '[{"id": "A", "text": "المقارنة."}, {"id": "B", "text": "التخمين."}, {"id": "C", "text": "التصنيف."}, {"id": "D", "text": "التركيب."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'لاستخراج الاستنتاج من الدعامة، يُطالب المتعلم أساساً بالمقارنة بين شروط ونتائج التجارب الثلاث (تجربة 1 مقابل تجربة 2 مقابل تجربة 3) لرصد المتغير المسؤول عن ظهور الشراغيف. كما أن المقارنة من المهارات الأساسية السبع للتفكير العلمي المنصوص عليها صراحة في منهاج النشاط العلمي[8] (وليس التخمين لأن النتائج معروضة سلفاً، ولا التصنيف).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة نونبر 2025) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_nov_q100', 'exam_primary_2025_didactics_sciences_nov', 100, 'موارد ديدكتيكية', 'البديل الأنسب من بين البدائل المقترحة هو:', false, '[{"id": "A", "text": "نص علمي تاريخي لنفس التجارب."}, {"id": "B", "text": "صور فوتوغرافية لنفس التجارب."}, {"id": "C", "text": "شريط مصور لنفس التجارب."}, {"id": "D", "text": "صور رقمية لنفس التجارب."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عند تعذّر إجراء التجربة المباشرة في القسم، يكون الشريط المصور (الفيديو) هو البديل الديدكتيكي الأنسب والأقرب للواقع مقارنة بالنصوص والصور الثابتة، لأنه يسمح بملاحظة السيرورة الدينامية للتجربة (الخلط، حركة الحيوانات المنوية، التحولات المتعاقبة وظهور الشراغيف).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1MaKFKD6UnIgCO6U6VHo95mjmsbeX_yp9', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
