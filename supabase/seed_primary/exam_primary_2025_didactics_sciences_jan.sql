-- ====================================================================
-- مباراتي — امتحان ديداكتيك العلوم (دورة يناير 2025)
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك العلوم - دورة يناير 2025.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20؛ سجل الامتحانات رقم 50)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك العلوم.pdf (10 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q76 إلى Q100 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه،
--     وقُورنت مع تصحيح mesconcours.ma لنفس الدورة
--     (https://mesconcours.ma/ar/concours/enseignement/2025-480/)؛
--     التطابق كامل إلا في Q82 وQ99 (انظر أدناه). Q82 حُسم 2026-11-26:
--     الإجابة E صحيحة (المنهاج الرسمي 2021، ص. 392: (9) هدف للسنة السادسة).
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة حرفياً من ملف الحل؛ التفاف الأسطر جُمع بفواصل (مسافة واحدة)
--     دون تغيير الكلمات. نصوص الوضعيات المطولة (Q80، Q82، Q83، Q84) أُبقيت كما
--     وردت في ملف الحل (تلخيص أمين لنص الوضعية في الورقة)، لأن نص السؤال وحده
--     في صندوق السؤال لا يكفي لفهم السؤال دون وضعيته.
--   * علامات قلم مرشح سابق (✓ وX وحروف) على ورقة الامتحان أُهملت تماماً —
--     ليست مفتاح تصحيح.
--
-- السؤال Q82 — أُضيف 2026-11-26 (ملف exam_primary_2025_didactics_sciences_jan_q82.sql):
--   * الإجابة E: المكتسبات القبلية الضرورية هي (2) و(4) و(5) و(6) و(8)،
--     و(9) «تصنيف عينات من المعادن حسب اللون والمغناطيسية» هدف مقرر في السنة
--     السادسة (محور «الصخور والمعادن»، المنهاج الرسمي يوليوز 2021، ص. 392)
--     فلا يدخل في أي اقتراح، و(10) أيضاً هدف للسنة السادسة. أما mesconcours
--     فيجيب D خطأً: (2) و(4) و(5) و(9). حُسم الخلاف بالتحقق من البرامج السنوية
--     في المنهاج الرسمي (السنة الثانية ص. 374–375، الثالثة ص. 378، السادسة ص. 391–392).
--     القرار معلّق إلى حين توفر المصفوفة أو مفتاح رسمي.
--
-- ملاحظات عن ملف الامتحان:
--   * الملف مسح ضوئي لدفتر الديداكتيك (11 صفحة)؛ صفحة الغلاف (1/11) مفقودة
--     من الملف، والمسح يبدأ من الصفحة 2/11. المدة (45 دقيقة) والمعامل (3)
--     تحقق منهما لدورة يناير 2025 عبر mesconcours.ma وعبر إعلان المباراة
--     الرسمي (جدول الاختبارات: ديداكتيك العلوم 45 دقيقة، المعامل 3).
--     (لا يوجد عمود للمعامل في جدول exams، فسُجل هنا وفي ملف التقدم فقط.)
--     التنقيط سالب: إجابة صحيحة +1، ملغاة 0، خاطئة -1.
--   * الامتحان كامل عدا ما سبق: 24 سؤالاً مدرجة من أصل 25.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_sciences_jan', 'specialty_primary', 2025, 'didactics_sciences', 'ديداكتيك العلوم', 'امتحان ديداكتيك العلوم (دورة يناير 2025)', 'دورة يناير 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً؛ Q82 أُضيف 2026-11-26 بعد التحقق من المنهاج الرسمي — الإجابة E)

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q76', 'exam_primary_2025_didactics_sciences_jan', 76, 'المرتكزات والمفاهيم الأساس', 'الهدف الذي يرمي النشاط العلمي تحقيقه، في هذه الحالة، هو:', false, '[{"id": "A", "text": "نشر ثقافة السلام والازدهار العالميين."}, {"id": "B", "text": "الوعي بمشكل اضطراب المناخ وتدهور البيئة."}, {"id": "C", "text": "نشر ثقافة المساواة وتحقيق العدالة الاجتماعية."}, {"id": "D", "text": "الوعي بأهمية محاربة الفقر والتوزيع العادل للموارد البيئية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'نصّ المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021) في مرتكز «أهداف التنمية المستدامة» على أن مادة النشاط العلمي تساهم، اعتباراً لخصوصية موضوعاتها (الطاقة ومصادرها، التنوع البيولوجي، الاحتباس الحراري، التلوث البيئي، إعادة التدوير...)، في التصدي للتحديات المتمثلة في التدهور البيئي والانحسار السريع للتنوع البيولوجي وتغير/اضطراب المناخ. أما الاختيارات A وC وD فهي أهداف عامة للتنمية المستدامة ترتبط أكثر بمواد الاجتماعيات والتربية المدنية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q77', 'exam_primary_2025_didactics_sciences_jan', 77, 'المرتكزات والمفاهيم الأساس', 'الاقتراح الذي يعكس المقاربتين (المقاربة النسقية والمقاربة التحليلية) هو:', false, '[{"id": "A", "text": "تُركز المقاربة التحليلية على تفكيك الظاهرة العلمية، بينما تركز المقاربة النسقية على دراسة متغير واحد."}, {"id": "B", "text": "تُركز المقاربة التحليلية على تفكيك الظاهرة العلمية، بينما تركز المقاربة النسقية على الدراسة الشاملة لتلك الظاهرة."}, {"id": "C", "text": "تُركز المقاربة التحليلية على الدراسة الشاملة للظاهرة العلمية، بينما تركز المقاربة النسقية على تفكيكها."}, {"id": "D", "text": "تُركز المقاربة التحليلية على دراسة عدة متغيرات الظاهرة العلمية، بينما تركز المقاربة النسقية على متغير واحد."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تقوم المقاربة التحليلية (Approche analytique) على تجزيء وتفكيك الظاهرة العلمية إلى عناصرها المكونة لدراسة كل جزء أو متغير على حدة، في حين تعتمد المقاربة النسقية (Approche systémique) على النظرة الكلية والشاملة للظاهرة مع التركيز على التفاعلات والعلاقات القائمة بين مكوناتها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q78', 'exam_primary_2025_didactics_sciences_jan', 78, 'المرتكزات والمفاهيم الأساس', 'الهدف من الهندسة اللغوية هو تحقيق النجاح الدراسي من خلال تنمية قدرات المتعلم على التواصل:', false, '[{"id": "A", "text": "بلغات مختلفة، وانفتاحه على الثقافات المرتبطة بها."}, {"id": "B", "text": "بلغة أجنبية، وانفتاحه على الثقافة المرتبطة بها."}, {"id": "C", "text": "باللغة العربية، وانفتاحه على الثقافة المرتبطة بها."}, {"id": "D", "text": "باللغة الأمازيغية، وانفتاحه على الثقافة المرتبطة بها."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تنطلق الهندسة اللغوية المعتمدة في القانون الإطار 51.17 والمنهاج الدراسي (2021) من خيار التعددية اللغوية (العربية والأمازيغية واللغات الأجنبية)، بهدف تنمية قدرات المتعلم على التواصل بلغات مختلفة وانفتاحه على مختلف الثقافات المرتبطة بها، وتحقيق الأمن اللغوي والنجاح الدراسي. ولا تقتصر على لغة واحدة دون غيرها كما في B وC وD.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q79', 'exam_primary_2025_didactics_sciences_jan', 79, 'المرتكزات والمفاهيم الأساس', 'تتضمن الهندسة اللغوية أربعة إجراءات هي: التعددية اللغوية والتهيئة اللغوية والتناوب اللغوي والمزاوجة اللغوية. وأحد هذه الإجراءات يتطلب استحضار مبدأ التكامل بين المواد اللغوية وغير اللغوية. هذا الإجراء هو:', false, '[{"id": "A", "text": "التعددية اللغوية."}, {"id": "B", "text": "التهيئة اللغوية."}, {"id": "C", "text": "التناوب اللغوي."}, {"id": "D", "text": "المزاوجة اللغوية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يُعرَّف التناوب اللغوي بكونه مقاربة بيداغوجية تهدف إلى تدريس بعض المواد غير اللغوية (كالعلوم والرياضيات) أو بعض مضامينها بلغة أجنبية، مما يتطلب بالضرورة استحضار مبدأ التكامل بين المواد اللغوية وغير اللغوية لتأهيل المتعلمين للتملك الوظيفي للغات التدريس. أما التهيئة اللغوية فهي المرحلة التمهيدية التي تهيّئ المتعلم للتناوب اللغوي، والمزاوجة اللغوية هي إجراء ديداكتيكي يتمثل في تقديم المصطلحات والأنشطة باللغتين معاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, 'بند تحليلي يعلّمه mesconcours ⚠ (التمييز بين التناوب والمزاوجة اللغوية رهين بصياغة المنهاج الرسمي حرفياً)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q80', 'exam_primary_2025_didactics_sciences_jan', 80, 'المرتكزات والمفاهيم الأساس', 'التطابق الصحيح بين بعدي وشكلي التصور هما: (البعد أ: بعد بنيوي يرتبط بوجود بنية مستقرة مسؤولة عن التمظهرات السطحية للتصورات؛ البعد ب: بعد وظيفي يرتبط بمتغيرين محددين هما الوضعية والزمن؛ الشكل 1: تصورات مرتبطة بمعالم مختلفة كانتظارات المدرس وصورة ومكانة المتعلم أمام الأقران والأثر الرجعي للمجموعة؛ الشكل 2: وجود تمثلات أولية أو تصورات ثابتة من المدرسة إلى الجامعة.)', false, '[{"id": "A", "text": "البعد (أ) يطابق الشكل (1)؛ البعد (ب) يطابق الشكل (1)."}, {"id": "B", "text": "البعد (أ) يطابق الشكل (1)؛ البعد (ب) يطابق الشكل (2)."}, {"id": "C", "text": "البعد (أ) يطابق الشكل (2)؛ البعد (ب) يطابق الشكل (2)."}, {"id": "D", "text": "البعد (أ) يطابق الشكل (2)؛ البعد (ب) يطابق الشكل (1)."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'البعد (أ) البنيوي يرتبط بوجود بنية ذهنية مستقرة، وهذا يطابق تماماً الشكل (2) الذي يشير إلى تصورات ثابتة ومقاومة للتغيير تستمر من المدرسة إلى الجامعة. البعد (ب) الوظيفي يرتبط بمتغيري الوضعية والزمن (أي السياق التفاعلي)، وهذا يطابق الشكل (1) الذي يبرز ارتباط التصور المعبر عنه بانتظارات المدرس(ة) وصورة المتعلم أمام أقرانه وتفاعله داخل المجموعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q81', 'exam_primary_2025_didactics_sciences_jan', 81, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'موضوع السنة الخامسة المعني بتحقيق هذه الأهداف (التمييز بين قطبي المغناطيس، نشوء مجال مغناطيسي حول سلك يمر به تيار كهربائي، إنجاز مغناطيس كهربائي، توضيح كيفية اشتغال المنوّب) هو:', false, '[{"id": "A", "text": "الكهرومغناطيسية."}, {"id": "B", "text": "المغناطيس."}, {"id": "C", "text": "حركة الأجسام."}, {"id": "D", "text": "الكهرباء."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'في برنامج السنة الخامسة ابتدائي (مجال العلوم الفيزيائية – محور «أشكال وطرق نقل الطاقة»)، تندرج الأهداف المرتبطة بالمجال المغناطيسي للتيار الكهربائي والمغناطيس الكهربائي والمنوّب تحت موضوع الكهرومغناطيسية. (أما «المغناطيس» فيُدرس في السنة الثالثة، و«حركة الأجسام» ضمن محور القوى والحركة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q83', 'exam_primary_2025_didactics_sciences_jan', 83, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'يشمل مجال علوم الفيزياء ثلاث محاور هي: (المحاور المعطاة: (1) تصنيف المادة وخصائصها؛ (2) صحة الإنسان والتفاعل مع البيئة؛ (3) خصائص الكائنات الحية ووظائفها الحيوية وتفاعلاتها مع البيئة؛ (4) أشكال وطرق انتقال الطاقة؛ (5) كوكب الأرض في النظام الشمسي؛ (6) القوى والحركة؛ (7) طقس ومناخ كوكب الأرض.)', false, '[{"id": "A", "text": "(1) و(3) و(4)"}, {"id": "B", "text": "(1) و(4) و(6)"}, {"id": "C", "text": "(1) و(5) و(7)"}, {"id": "D", "text": "(2) و(4) و(6)"}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يضم مجال العلوم الفيزيائية في منهاج النشاط العلمي ثلاثة محاور أساسية بالضبط، هي: تصنيف المادة وخصائصها (1). أشكال وطرق انتقال الطاقة (4). القوى والحركة (6). (بينما المحوران 2 و3 ينتميان لعلوم الحياة، والمحوران 5 و7 ينتميان لعلوم الأرض والفضاء).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q84', 'exam_primary_2025_didactics_sciences_jan', 84, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'الترتيب الصحيح (لخطوات بناء المفهوم وفق نهج التقصي) هو: (1- تقديم الفرضيات؛ 2- التقصي لاختبار الفرضيات؛ 3- وضعية الانطلاق؛ 4- تقديم وتقاسم إنتاجات مجموعات العمل؛ 5- تملك الوضعية وصياغة سؤال التقصي؛ 6- اقتراح وتحديد ميثاق العمل؛ 7- التعميم.)', false, '[{"id": "A", "text": "(3)←(5)←(6)←(1)←(4)←(2)←(7)"}, {"id": "B", "text": "(3)←(1)←(5)←(6)←(4)←(2)←(7)"}, {"id": "C", "text": "(3)←(6)←(1)←(5)←(2)←(4)←(7)"}, {"id": "D", "text": "(3)←(5)←(1)←(4)←(2)←(6)←(7)"}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الترتيب المنهجي الصحيح لخطوات بناء المفهوم وفق المنهاج الدراسي للتعليم الابتدائي (2021) هو: وضعية الانطلاق (3) ← تملك الوضعية وصياغة سؤال التقصي (5) ← تقديم الفرضيات (1) ← اقتراح وتحديد ميثاق العمل (6) ← التقصي لاختبار الفرضيات (2) ← تقديم وتقاسم إنتاجات مجموعات العمل (4) ← التعميم (7). وبفحص جميع الاقتراحات (A, B, C, D) يتبين أنها جميعها مختلّة الترتيب ولا تطابق هذا التسلسل الصحيح، لذا فالجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, 'بند يعلّمه mesconcours ⚠ (الترتيب مرتبط بحرفية المنهاج)؛ الجواب E لأن التسلسل الصحيح 3←5←1←6←2←4←7 لا يطابقه أي اقتراح من A إلى D.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q85', 'exam_primary_2025_didactics_sciences_jan', 85, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'خلال إحدى الخطوات المنهجية الخاصة ببناء المفهوم، لأجل حل المشكل العلمي المطروح، يحدد المتعلمون(ات) المستلزمات والحاجات الضرورية وظروف ومراحل الإنجاز. تناسب هذه الخطوة مرحلة:', false, '[{"id": "A", "text": "التقصي لاختبار الفرضيات."}, {"id": "B", "text": "تملك الوضعية وصياغة سؤال التقصي."}, {"id": "C", "text": "اقتراح وتحديد ميثاق العمل."}, {"id": "D", "text": "تقديم وتقاسم إنتاجات مجموعات العمل."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'مرحلة اقتراح وتحديد ميثاق العمل هي المحطة التي يخطط فيها المتعلمون لطريقة تمحيص فرضياتهم، وذلك بتحديد الوسائل والمستلزمات الضرورية، وظروف ومراحل الإنجاز، وتوزيع الأدوار داخل المجموعات، قبل الشروع في مرحلة التقصي الفعلي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q86', 'exam_primary_2025_didactics_sciences_jan', 86, 'مفاهيم ديدكتيكية وبرامج مادة النشاط العلمي', 'خلال حصة للنشاط العلمي لمستوى السنة الثانية ابتدائي (حالات المادة – إدراك وجود الهواء)، اقترح مدرس(ة) فتح قارورة فارغة مغلقة مغمورة داخل حوض ممتلئ بالماء، فسجل المتعلمون صعود فقاعات واعتبرها بعضهم فقاعات ماء. عائق التعلم في هذه الإجابة هو:', false, '[{"id": "A", "text": "عائق ديدكتيكي."}, {"id": "B", "text": "عائق إبستمولوجي."}, {"id": "C", "text": "عائق اجتماعي."}, {"id": "D", "text": "عائق فيزيولوجي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يتعلق الأمر بعائق إبستمولوجي (Obstacle épistémologique) نابع من طبيعة المعرفة العلمية نفسها ومن عائق التجربة الحسية الأولى (حسب باشلار)؛ فالهواء جسم غازي غير مرئي، مما يجعل المتعلمين يعتقدون أن «ما لا يُرى غير موجود» وأن القارورة «فارغة» تماماً، وبالتالي يفسرون الفقاعات الصاعدة داخل الماء تفسيراً حسياً مباشراً باعتبارها «فقاعات ماء».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q87', 'exam_primary_2025_didactics_sciences_jan', 87, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'خلال حصة للنشاط العلمي بالسنة الثانية ابتدائي، وفي إطار دراسة محور «صحة الإنسان والتفاعل مع البيئة»، اقترح كتاب مدرسي صورة لرياضية جمباز تؤدي حركات رياضية. يمكن أن توظف هذه الوضعية لتدريس:', false, '[{"id": "A", "text": "الحركة ومفعول القوى."}, {"id": "B", "text": "الحركة والمفاصل."}, {"id": "C", "text": "التنقل والحركة."}, {"id": "D", "text": "التنقل ومفعول القوة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'في برنامج السنة الثانية ابتدائي، ضمن محور صحة الإنسان والتفاعل مع البيئة (مجال علوم الحياة)، يُدرَّس موضوع الحركة والمفاصل (تعرف مفاصل الجسم ودورها في إنجاز حركات الثني والبسط والدوران، وأهمية التمارين الرياضية في الحفاظ على صحة المفاصل). أما «مفعول القوة» فيندرج في مجال العلوم الفيزيائية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q88', 'exam_primary_2025_didactics_sciences_jan', 88, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'الهدف من هذه التجربة (تسخين ماء مالح وتكاثف بخار الماء على سطح مقلاة باردة ليسقط في كأس – السنة الخامسة، محور تصنيف المادة وخصائصها وتغيراتها) هو:', false, '[{"id": "A", "text": "فصل خليط متجانس."}, {"id": "B", "text": "فصل خليط غير متجانس."}, {"id": "C", "text": "تحلية ماء مالح."}, {"id": "D", "text": "تعرف مكونات بخار الماء."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'الماء المالح هو خليط متجانس لا يمكن التمييز بين مكوناته بالعين المجردة؛ وفي برنامج السنة الخامسة ابتدائي ضمن محور «تصنيف المادة وخصائصها وتغيراتها»، يُدرّس موضوع «الخلائط والذوبان» بهدف التمكن من تقنيات فصل الخلائط، حيث تُعتمد تجربة التبخر والتكاثف (التقطير البسيط) لتحقيق الهدف التعلمي: فصل خليط متجانس.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q89', 'exam_primary_2025_didactics_sciences_jan', 89, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'قام مدرس(ة) بإنجاز تجربة "تسخين ماء مالح" أمام المتعلمين وفق خطوات إنجاز مرفقة بالكتاب المدرسي. تُصنّف التجربة التي أنجزها المدرس(ة) حسب (Sabine Daro et al., 2009) ضمن:', false, '[{"id": "A", "text": "التجارب الحسية."}, {"id": "B", "text": "التجارب التدخلية."}, {"id": "C", "text": "تجارب التتبع."}, {"id": "D", "text": "تجارب التصميم."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'حسب التصنيف الوارد في نص الوضعية، فإن تجارب التتبع هي التجارب التي «تنجز أمام المتعلمين وفق بروتوكول مسبق». وفي هذه الوضعية، قام المدرس(ة) بإنجاز التجربة أمام التلاميذ (نظراً لخطورة استعمال الموقد والتسخين) مع اتباع خطوات البروتوكول التجريبي المقترح في الكتاب المدرسي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q90', 'exam_primary_2025_didactics_sciences_jan', 90, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'يمكن توظيف نفس التجربة من أجل تحديد:', false, '[{"id": "A", "text": "بعض نواتج عملية الاحتراق."}, {"id": "B", "text": "تغير الحالة الكيميائية للمادة."}, {"id": "C", "text": "بعض شروط عملية الاحتراق."}, {"id": "D", "text": "تغير الحالة الفيزيائية للمادة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'تُبرز تجربة تسخين الماء المالح وتكثيف بخاره على سطح المقلاة تحوّلين فيزيائيين للمادة (الماء): التبخر (تحول الماء من الحالة السائلة إلى الحالة الغازية بفعل التسخين) ثم التكاثف (تحول بخار الماء من الحالة الغازية إلى الحالة السائلة عند ملامسته لسطح المقلاة البارد)، وهو ما يمثل تغير الحالة الفيزيائية للمادة دون تغير طبيعتها الكيميائية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q91', 'exam_primary_2025_didactics_sciences_jan', 91, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'المرحلة التي يمثلها النشاط المقترح (تقديم المدرس للنتائج التجريبية في الوثيقة لاستخلاص الاستنتاج بعد طرح التساؤل وصياغة الفرضيات واقتراح السيناريو التجريبي) هي:', false, '[{"id": "A", "text": "تملك الوضعية وصياغة سؤال التقصي."}, {"id": "B", "text": "اقتراح وتحديد ميثاق العمل."}, {"id": "C", "text": "التقصي لاختبار الفرضيات."}, {"id": "D", "text": "مرحلة تقديم وتقاسم الإنتاجات."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يوضح نص الوضعية أن المتعلمين قد أنهوا سابقاً خطوات وضعية الانطلاق، وصياغة التساؤل، وتقديم الفرضيات، واقتراح السيناريو التجريبي (ميثاق العمل)؛ وبالتالي فإن استثمار الوثيقة التجريبية للتحقق من الفرضيات واستخلاص الاستنتاج يمثل مرحلة التقصي لاختبار الفرضيات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q92', 'exam_primary_2025_didactics_sciences_jan', 92, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'يتعلق الأمر في هذا النشاط بـ:', false, '[{"id": "A", "text": "إنجاز تجارب فعلية."}, {"id": "B", "text": "استثمار نتائج بحث ميداني."}, {"id": "C", "text": "إنجاز تجارب بالمحاكاة."}, {"id": "D", "text": "استثمار نتائج بحث توثيقي."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'لم يُنجز المتعلمون التجارب بشكل فعلي (A) نظراً لطول المدة الزمنية اللازمة لنضج الثمار، ولم يقوموا بخرجة ميدانية (B) ولا بمحاكاة رقمية (C)، بل اعتمد المدرس(ة) على تقديم معطيات ونتائج تجارب منجزة من طرف باحث واردة في وثيقة من الكتاب المدرسي، وهذا يندرج ضمن شكل التقصي القائم على استثمار نتائج بحث توثيقي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q93', 'exam_primary_2025_didactics_sciences_jan', 93, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'الخطأ المتضمن في الوثيقة هو رسم ستار ثوب خفيف لتمثيل الظروف الحقيقية لإنجاز:', false, '[{"id": "A", "text": "التجربة الشاهد."}, {"id": "B", "text": "التجربة الشاهد والتجربة الأولى."}, {"id": "C", "text": "التجربة الأولى."}, {"id": "D", "text": "التجربة الشاهد والتجربة الثانية."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'تُنجز التجربة الشاهد (Expérience témoin) في الظروف الطبيعية الحقيقية دون تدخل أو حواجز لتكون مرجعاً للمقارنة؛ لذلك فإن رسم ستار ثوب خفيف يمنع حبات اللقاح من الدخول حول زهرة التجربة الشاهد يُعد خطأً في تمثيل الظروف الطبيعية الحقيقية لهذه التجربة (لأنه يعزل الزهرة عن الأبر الطبيعي غير المباشر بواسطة الرياح والحشرات)، بينما يُعد وضع الستار ضرورياً في التجربة الثانية (لمنع وصول لقاح خارجي بعد بتر الأسدية) وفي التجربة الأولى (بعد رش حبات اللقاح المقصودة للتحكم في مصدر اللقاح). كما أن نص السؤال استعمل صيغة المفرد: «في الرسم التخطيطي الذي يمثل هذه التجربة».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q94', 'exam_primary_2025_didactics_sciences_jan', 94, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'مستوى التقصي (حسب Herron, 1971) الذي تمت أجرأته خلال هذه الحصة هو:', false, '[{"id": "A", "text": "تقصي التأكيد."}, {"id": "B", "text": "التقصي المنظم."}, {"id": "C", "text": "التقصي الموجه."}, {"id": "D", "text": "التقصي المفتوح."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'بمطابقة معطيات الحصة مع جدول Herron (1971): المشكل: حدده المدرس(ة) عبر تقديم وضعية للملاحظة موجهة نحو الهدف التعلمي (إبراز أهمية الأبر). الإجراءات: قام المتعلمون(ات) بصياغة الفرضيات واقتراح سيناريو تجريبي للتحقق منها (أي أنهم حددوا الإجراءات)، ولأن نتائج نضج الثمار تتطلب وقتاً طويلاً قدّم لهم المدرس(ة) النتائج التجريبية فقط. الحل (الاستنتاج): تُرك للمتعلمين(ات) تحديده (خانة الاستنتاج فارغة في الجدول). وبالتالي، فإن تحديد المشكل من طرف المدرس، وتحديد الإجراءات والحل من طرف المتعلم، يطابق تماماً التقصي الموجه (C) (وهو المستوى الأنسب لتلاميذ السنة الخامسة ابتدائي في هذا النوع من الوضعيات).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q95', 'exam_primary_2025_didactics_sciences_jan', 95, 'مبادئ ديدكتيكية عامة لبناء التعلمات', 'في حالة الحصول على نتائج مغايرة لما هو منتظر، يتوجب على المدرس(ة) القيام بـ:', false, '[{"id": "A", "text": "تجاهلها وتقديم النتائج التجريبية المنتظرة."}, {"id": "B", "text": "حث المتعلمين على تفسيرها ومقارنتها بالنتائج التجريبية المنتظرة."}, {"id": "C", "text": "اعتبارها غير ذات مصداقية وتقديم النتائج الافتراضية المنتظرة."}, {"id": "D", "text": "اعتماد وثائق من الكتاب المدرسي تقدم النتائج الافتراضية المنتظرة."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تقتضي الأمانة العلمية ومنهجية نهج التقصي وبيداغوجيا الخطأ عدم تجاهل النتائج التجريبية الفعلية أو استبعادها، بل استثمارها ديداكتيكياً عبر حث المتعلمين على مناقشتها وتفسير أسبابها (مثل خلل في شروط التجربة أو البروتوكول) ومقارنتها بالنتائج التجريبية المنتظرة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q96', 'exam_primary_2025_didactics_sciences_jan', 96, 'موارد ديدكتيكية', 'المهارتان اللتان يسمح هذا النشاط («أضع كل رقم في الخانة المناسبة لأتعرف مراحل نمو الفاصوليا» انطلاقاً من رسم لدورة الحياة وجدول به أوصاف المراحل) بتنميتهما هما:', false, '[{"id": "A", "text": "الملاحظة؛ الاستنتاج."}, {"id": "B", "text": "الملاحظة؛ التفسير."}, {"id": "C", "text": "الملاحظة؛ التخمين."}, {"id": "D", "text": "الملاحظة؛ القياس."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'يوظف المتعلم في هذا النشاط أولاً مهارة الملاحظة (ملاحظة تفاصيل كل مرحلة في الرسم التخطيطي واتجاه الأسهم: بذور، نبتة صغيرة، أوراق، زهور، ثمار)، ثم مهارة الاستنتاج (استنتاج الرقم المطابق لكل خانة فارغة واستخلاص تسلسل مراحل نمو الفاصوليا انطلاقاً من المعطيات الملاحَظة). ولا يتطلب النشاط تفسيراً سببياً (B)، ولا تخميناً (C)، ولا قياساً كمياً (D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, 'بند يعلّمه mesconcours ⚠ (تسمية المهارة رهينة بمعجم المنهاج الرسمي)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q97', 'exam_primary_2025_didactics_sciences_jan', 97, 'موارد ديدكتيكية', 'وفق نهج التقصي، النشاط البديل الأنسب لبناء مفهوم دورة حياة الفاصوليا هو:', false, '[{"id": "A", "text": "تقديم صور غير مرتبة لمراحل نمو نبات الفاصوليا."}, {"id": "B", "text": "تقديم صور مرتبة لمراحل نمو نبات الفاصوليا."}, {"id": "C", "text": "إنجاز المتعلمين(ات) مشروع إنبات بذور نبات الفاصوليا."}, {"id": "D", "text": "تقديم المدرس(ة) نتائج مشروع إنبات بذور نبات الفاصوليا."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يرتكز نهج التقصي في منهاج النشاط العلمي على التعلم بالممارسة والانطلاق من المحسوس والملاحظة المباشرة للظواهر الحقيقية؛ لذلك فإن إنجاز المتعلمين(ات) لمشروع إنبات بذور الفاصوليا وتتبع نموها عملياً حتى تشكل الأزهار والثمار والبذور الجديدة هو النشاط البديل الأنسب لبناء مفهوم «دورة حياة النبات» بشكل فعّال، عكس الاقتصار على صور جاهزة (A وB) أو تقديم النتائج جاهزة من طرف المدرس (D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q98', 'exam_primary_2025_didactics_sciences_jan', 98, 'موارد ديدكتيكية', 'بعد الانتهاء من تدريس مراحل دورة حياة نبتة الفاصوليا، طلب مدرس(ة) من المتعلمين إنجاز بحث وثائقي رقمي، بشكل فردي، باعتماد شبكة الأنترنت قصد اقتراح مشروع يتضمن المراحل والظروف الضرورية لإنبات بذرة الفاصوليا وتتبعها خلال دورة حياة كاملة. المجالان المناسبان لهذا الإنجاز هما:', false, '[{"id": "A", "text": "مجال الإنتاج والإبداع."}, {"id": "B", "text": "مجال اكتساب مفاهيم ومنهجيات."}, {"id": "C", "text": "مجال التواصل والتشارك."}, {"id": "D", "text": "مجال التنظيم والتخطيط."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'يطلب السؤال تحديد المجالَين المناسبَين (بصيغة المثنى) لهذا الإنجاز من بين المجالات الخمسة للاستعمال البيداغوجي للموارد الرقمية، وهما في الواقع: مجال البحث عن المعلومات: لإنجاز بحث وثائقي رقمي عبر شبكة الأنترنت. مجال الإنتاج والإبداع: لتوظيف المعارف والمهارات في اقتراح وبناء مشروع تربوي (مع حضور جزئي للتخطيط). ونظراً لأن كل اقتراح من الاقتراحات (A, B, C, D) يقتصر على مجال واحد فقط، فضلاً عن غياب «مجال البحث عن المعلومات» كلياً من الاختيارات الأربعة الأولى (علماً أن الاختبار يفرض اختيار إجابة واحدة صحيحة فقط)، فإن الجواب الصحيح هو E (جميع الاقتراحات السابقة خاطئة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, 'بند يعلّمه mesconcours ⚠ (مختل الصياغة: يطلب مجالين وكل اقتراح يسمي مجالاً واحداً، و«مجال البحث عن المعلومات» غائب من الاختيارات)؛ لا يوجد مفتاح تصحيح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q99
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q99', 'exam_primary_2025_didactics_sciences_jan', 99, 'موارد ديدكتيكية', 'بعد تقييم المدرس(ة) لإنتاجات المتعلمين(ات) الفردية المتعلقة بالمشروع المقترح، قام بانتقاء عملين خاصين بمتعلمين(تين) للمساهمة بهما في المسابقة العلمية على صعيد المؤسسة. الهدف الذي يتوخى المدرس(ة) تحقيقه من خلال هذه المساهمة هو:', false, '[{"id": "A", "text": "توجيه المتعلمين(ات) نحو التخصصات العلمية."}, {"id": "B", "text": "رفع مستوى المنافسة مع المؤسسات المجاورة."}, {"id": "C", "text": "تشجيع العمل الجماعي والتشاركي بين المتعلمين(ات)."}, {"id": "D", "text": "كسب إعجاب أمهات وآباء وأولياء المتعلمين(ات)."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'جميع الاقتراحات الأربعة الأولى غير دقيقة أو مناقضة لمعطيات الوضعية: A خاطئ: لأن التوجيه نحو التخصصات/الشعب العلمية ليس هدفاً لانتقاء عملين لتلميذين في السنة الثالثة ابتدائي للمشاركة في مسابقة مدرسية، بل يرتبط التوجيه بالتعليم الثانوي؛ والهدف التربوي الحقيقي هنا هو تثمين إنتاجات المتعلمين، وتحفيزهم، وتشجيع قيم النبوغ والتميز والإبداع والمنافسة الإيجابية. B خاطئ: لأن المسابقة أُقيمت «على صعيد المؤسسة» وليس مع المؤسسات المجاورة. C خاطئ: لأن الإنتاجات كانت «فردية» والانتقاء شمل «عملين خاصين بمتعلمين(تين)»، ولم يكن عملاً جماعياً تشاركياً. D خاطئ: لأنه غرض شكلي غير تربوي ولا يندرج ضمن الأهداف الديدكتيكية. لذلك يكون الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, 'بند تحليلي: mesconcours يجيب A (توجيه المتعلمين نحو التخصصات العلمية) ويعلّمه ⚠ (الاختيار بين النوايا اجتهادي)؛ أُبقي على E لأن التوجيه نحو الشعب العلمية ليس هدفاً في التعليم الابتدائي، والهدف الحقيقي (تثمين إنتاجات المتعلمين وتشجيع النبوغ والتميز) غير وارد في الاختيارات.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك العلوم (دورة يناير 2025) — Q100
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_sciences_jan_q100', 'exam_primary_2025_didactics_sciences_jan', 100, 'موارد ديدكتيكية', 'القدرات والمهارات الثلاث المميزة لمجال الاستدلال هي:', false, '[{"id": "A", "text": "الاستنتاج؛ التعليل؛ التركيب."}, {"id": "B", "text": "التذكر؛ الربط؛ التقييم."}, {"id": "C", "text": "الوصف؛ التعرف؛ التقييم."}, {"id": "D", "text": "الوصف؛ التذكر؛ التركيب."}, {"id": "E", "text": "جميع الاقتراحات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق تصنيف المجالات المعرفية للتقويم في منهاج النشاط العلمي للتعليم الابتدائي (يوليوز 2021): مجال المعرفة: يضم التذكر، التعرف، الوصف، وتقديم أمثلة. مجال التطبيق: يضم المقارنة، التصنيف، الربط، استخدام النماذج، وتفسير المعلومات. مجال الاستدلال: يضم التحليل، التركيب، صياغة الفرضيات، التنبؤ، التقييم، الاستنتاج، التعميم، والتعليل/التبرير. وبالتالي فإن الاقتراح A هو الوحيد الذي تنتمي قدراته الثلاث كلها إلى مجال الاستدلال.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1QqdygRRdeiee2zVAypMqF3d9KJINs2pI', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
