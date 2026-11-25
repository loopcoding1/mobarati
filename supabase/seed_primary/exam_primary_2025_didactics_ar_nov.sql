-- ====================================================================
-- مباراتي — ديداكتيك اللغة العربية، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/ديداكتيك اللغة العربية - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 35؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20؛
--    البرومبت المرسل كان البرومبت القديم — مختصي الاقتصاد والإدارة — لكن الموديل
--    نفسه صحح السياق في رده: الامتحان للتعليم الابتدائي، والحل مبني على وثيقة
--    المنهاج الدراسي للتعليم الابتدائي، الصيغة النهائية الكاملة، يوليوز 2021.)
--   ملف الامتحان: exams-ibtida2i/2025/ديداكتيك اللغة العربية - دورة نونبر 2025.pdf (7 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q25 وخياراته مطابقة لورقة الامتحان، ما عدا حالة واحدة
--     موثقة أدناه (Q11: الحرف F بدل E في الورقة نفسها).
--   * المدة (45 دقيقة) والمعامل (3): صفحة الغلاف (1/8) مفقودة من المسح الضوئي
--     (الملف يبدأ من الصفحة 2/8)، فأُخذا من مصدرين مستقلين: موقع Exammaroc لصفحة
--     هذا الامتحان بالذات (مدة الإنجاز 45 دقيقة، المعامل 3) —
--     https://www.exammaroc.com/exam/210-مباراة-ولوج-سلك-تأهيل-أطر-التدريس-التعليم-الابتدائي-دورة-نونبر-2025-اختبار-ديداكتيك
--     وجدول مواقيت الاختبارات الكتابية الرسمي (المركز الوطني للامتحانات المدرسية):
--     ديداكتيك اللغة العربية 45 دقيقة، المعامل 3.
--     (جدول exams في قاعدة البيانات لا يحمل عمود معامل؛ المعامل موثق هنا فقط).
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل المنهاج الدراسي (يوليوز 2021) كما
--     هو موثق في تعليلات ملف الحل مع مراجع الصفحات؛ لا يوجد مفتاح تصحيح رسمي
--     مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التي جوابها E بالإقصاء (Q8، Q12، Q24، Q25) موسومة في verification_note.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[38].
--   * لا توجد أسئلة متخطاة: جميع الأسئلة الخمسة والعشرين لها جواب موثق.
--
-- ملاحظات عن ملف الامتحان:
--   * Q11: ورقة الامتحان نفسها تُرقّم الخيار الأخير «جميع الاختيارات المقترحة خاطئة»
--     بالحرف F (تخطّت E بعد D) — خطأ مطبعي في الورقة الأصلية. أُدرج الخيار هنا
--     بالحرف F كما في الورقة (PDF يغلب)، والجواب الصحيح F، مع تنبيه في verification_note.
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات و✓ على خيارات Q1 وQ5
--     وQ8 وQ12 وQ19 وغيرها) — أُهملت تماماً؛ وهي ليست إجابات موثقة.
--   * تعليمات الورقة: ضع علامة (X) في خانة كل جواب صحيح في ما يأتي؛ ولكل سؤال
--     جواب صحيح واحد (حسب ملف الحل وmesconcours.ma).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_didactics_ar_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_didactics_ar_nov', 'specialty_primary', 2025, 'didactics_ar', 'ديداكتيك اللغة العربية', 'امتحان ديداكتيك اللغة العربية (دورة نونبر 2025)', 'دورة نونبر 2025', 45, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات؛ Q11 بخيارات A-D + F كما في الورقة)

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q1', 'exam_primary_2025_didactics_ar_nov', 1, 'مبادئ المنهاج — الوحدات والمجالات', 'يتضمن البرنامج الدراسي لكل سنة دراسية:', false, '[{"id": "A", "text": "ست وحدات تتناول خمسة مجالات؛"}, {"id": "B", "text": "ست وحدات تتناول ستة مجالات؛"}, {"id": "C", "text": "خمس وحدات تتناول ستة مجالات؛"}, {"id": "D", "text": "خمسة مجالات تتناول خمس وحدات؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'وفق مبدأ الوحدات في المنهاج الدراسي للتعليم الابتدائي (يوليوز 2021)، يتضمن البرنامج الدراسي لكل سنة دراسية ست وحدات، تتناول كل وحدة منها مجالاً واحداً، أي ستة مجالات دراسية في السنة، وتستغرق كل وحدة خمسة أسابيع[1][2].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q2', 'exam_primary_2025_didactics_ar_nov', 2, 'مبادئ المنهاج — الإضمار والتصريح', 'يقتضي مبدأ الإضمار والتصريح:', false, '[{"id": "A", "text": "الإضمار والتصريح بالظواهر الأسلوبية والتركيبية والصرفية والإملائية في السنوات الست للتعليم الابتدائي؛"}, {"id": "B", "text": "الإضمار والتصريح بالظواهر اللغوية في السنوات الثلاث العليا فقط؛"}, {"id": "C", "text": "التصريح بالظواهر الأسلوبية والتركيبية والإملائية والصرفية في السنوات الثلاث الدنيا وتمريرها ضمنياً في السنوات الثلاث العليا؛"}, {"id": "D", "text": "تمرير الظواهر الأسلوبية والتركيبية والصرفية والإملائية بطريقة ضمنية في السنوات الثلاث الدنيا والتصريح بها في السنوات الثلاث العليا؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'ينص المنهاج الدراسي على أن مبدأ الإضمار والتصريح يقتضي تمرير الظواهر الأسلوبية والصرفية والتركيبية والإملائية بطريقة ضمنية في السنوات الثلاث الأولى (1 و2 و3) دون الخوض في قواعدها أو تخصيص حصص مستقلة لها، ثم التصريح بها في السنوات الثلاث العليا (4 و5 و6)[3].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q3', 'exam_primary_2025_didactics_ar_nov', 3, 'مبادئ المنهاج — نسقية اللغة', 'يفيد مبدأ نسقية اللغة:', false, '[{"id": "A", "text": "اعتبار اللغة نسقاً تاماً ومنسجماً؛"}, {"id": "B", "text": "اكتساب اللغة بشكل نسقي ومندمج مع الفصل بين مستوياتها؛"}, {"id": "C", "text": "اكتساب اللغة عبر التصريح بظواهرها؛"}, {"id": "D", "text": "تحقيق الكفاية اللغوية اعتماداً على الضبط الجيد لقواعدها؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ينص المنهاج الدراسي في تعريفه لمبدأ نسقية اللغة على اعتبار اللغة العربية نسقاً تاماً ومنسجماً وليس مكونات لغوية مجزأة ومستقلة[2][4]. أما الاختيار B فخاطئ لأنه أضاف عبارة «مع الفصل بين مستوياتها»، في حين يؤكد المنهاج أن اكتساب اللغة يتم بشكل نسقي ومندمج لا يكون فيه الفصل بين مكوناتها[4].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q4', 'exam_primary_2025_didactics_ar_nov', 4, 'الإطار المنهجي — الاستماع والتحدث', 'من المداخل التي تم اعتمادها لتمكين المتعلم(ة) من استضمار البنية اللغوية والأسلوبية:', false, '[{"id": "A", "text": "إيلاء أهمية للقراءة المقطعية فقط؛"}, {"id": "B", "text": "إغناء الدعامات المرتبطة بالاستماع والتحدث وتنويعها؛"}, {"id": "C", "text": "إغناء الدعامات المرتبطة بمكون التعبير الكتابي؛"}, {"id": "D", "text": "تنويع الوضعيات التعلمية خلال بناء التعلمات وخلال اكتسابها أو تقويمها ودعمها؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'ورد حرفياً في محور «الإطار المنهجي لتعليم مهارتي الاستماع والتحدث» من المنهاج الدراسي: «اعتباراً لقيمة مهارتي الاستماع والتحدث... ولتمكين المتعلم(ة) من استضمار البنية اللغوية والأسلوبية وتطوير رصيده الوظيفي، تم اعتماد المداخل الآتية: إغناء الدعامات المرتبطة بالاستماع والتحدث وتنويعها...»[5][6].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q5', 'exam_primary_2025_didactics_ar_nov', 5, 'التعليم المبكر للقراءة — الفهم القرائي', 'المقصود بالفهم القرائي في التعليم المبكر للقراءة:', false, '[{"id": "A", "text": "تمكن المتعلم(ة) من اكتساب رصيد معجمي من المفردات واستعماله في فهم المسموع والمقروء؛"}, {"id": "B", "text": "تمكن المتعلم(ة) من مهارات فهم النصوص المقروءة، واستخراج معانيها الصريحة والضمنية؛"}, {"id": "C", "text": "تمكن المتعلم(ة) من مهارات فهم النصوص المقروءة، واستخراج معانيها الصريحة؛"}, {"id": "D", "text": "تمكن المتعلم(ة) من مهارات فهم النصوص المقروءة، واستخراج معانيها الضمنية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يعرّف المنهاج الدراسي مكون الفهم القرائي بأنه يتجلى في «تمكن المتعلم(ة) من مهارات فهم النصوص المقروءة، واستخراج معانيها الصريحة والضمنية»[7]. أما الاختيار A فيعرّف مكون «المفردات»[7]، والاختياران C وD ناقصان.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q6', 'exam_primary_2025_didactics_ar_nov', 6, 'تنمية المهارات الكتابية', 'تتطلب تنمية المهارات الكتابية:', false, '[{"id": "A", "text": "الاهتمام المبكر بالتعبير الكتابي، منذ السنة الأولى من التعليم الابتدائي؛"}, {"id": "B", "text": "الاهتمام المبكر بالتعبير الكتابي، منذ السنة الثانية من التعليم الابتدائي؛"}, {"id": "C", "text": "الاهتمام المبكر بالتعبير الكتابي، في السنوات الثلاث الأولى من التعليم الابتدائي؛"}, {"id": "D", "text": "الاهتمام المبكر بالتعبير الكتابي، ابتداءً من السنة الثالثة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ورد في فقرة «تنمية المهارات الكتابية» من المنهاج الدراسي (ص 64): «تتطلب تنمية المهارات الكتابية الاهتمام المبكر بالتعبير الكتابي، منذ السنة الأولى من التعليم الابتدائي، لتمكين المتعلم(ة) من إنتاج كلمات وجمل وفقرات قصيرة...»[7][8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q7', 'exam_primary_2025_didactics_ar_nov', 7, 'المهارات الكتابية', 'يهدف برنامج اللغة العربية إلى تدريب المتعلم(ة) بالتدريج على المهارات الكتابية المختلفة من خلال:', false, '[{"id": "A", "text": "الكتابة التصحيحية؛"}, {"id": "B", "text": "التعبير الكتابي؛"}, {"id": "C", "text": "الكتابة التصحيحية والتعبير الكتابي؛"}, {"id": "D", "text": "الكتابة التطبيقية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص المنهاج الدراسي على أن برنامج اللغة العربية يهدف إلى تدريب المتعلم(ة) بالتدريج على المهارات الكتابية المختلفة من خلال تمرينه على نوعين من الكتابة هما: الكتابة التصحيحية (النقل والخط والإملاء والتطبيقات الكتابية) والتعبير الكتابي[7].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q8', 'exam_primary_2025_didactics_ar_nov', 8, 'الخطابات', 'لضمان البعد الوظيفي لتعلم اللغة العربية، اعتُمدت أنواع مختلفة من الخطابات:', false, '[{"id": "A", "text": "الخطاب السردي، والخطاب الإخباري، والخطاب الوصفي، والخطاب الحجاجي؛"}, {"id": "B", "text": "الخطاب السردي، والخطاب الوصفي، والخطاب التوجيهي، والخطاب التفسيري؛"}, {"id": "C", "text": "الخطاب الإخباري، والخطاب الوصفي، والخطاب التفسيري، والخطاب الحجاجي؛"}, {"id": "D", "text": "الخطاب الوصفي، والخطاب التوجيهي، والخطاب التفسيري، والخطاب الإخباري؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'ينص المنهاج الدراسي (ص 65) على أنه لضمان البعد الوظيفي لتعلم اللغة العربية اعتُمدت ستة أنواع من الخطابات، وهي: السردي، والإخباري، والوصفي، والتوجيهي، والتفسيري، والحجاجي[9][10]. وبما أن جميع الاختيارات (A, B, C, D) ناقصة وتقتصر على أربعة أنواع فقط (ولا يطابق أيٌّ منها حتى أنواع الخطابات الأربعة المقررة في السنوات الثلاث الأولى وهي: السردي، الإخباري، الوصفي، التوجيهي)، فإن الجواب الصحيح هو E[11][12].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, 'جميع الخيارات ناقصة: المنهاج الدراسي يذكر ستة أنواع من الخطابات (السردي، الإخباري، الوصفي، التوجيهي، التفسيري، الحجاجي)، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q9', 'exam_primary_2025_didactics_ar_nov', 9, 'الكفاية التواصلية', 'يتطلع تعليم اللغة العربية وتعلمها بالتعليم الابتدائي إلى تنمية الكفاية التواصلية عبر:', false, '[{"id": "A", "text": "إنتاج خطاب شفهي أو مكتوب؛"}, {"id": "B", "text": "قراءة المكتوب وفهمه واستثماره على مستويات عدة؛"}, {"id": "C", "text": "فهم المكتوب والشفهي واستثمارهما على مستويات عدة؛"}, {"id": "D", "text": "تمييز أصناف الخطاب الأدبي والعلمي والاجتماعي...؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'حسب جدول «إسهام اللغة العربية في إنماء الكفايات في التعليم الابتدائي» في المنهاج الدراسي (ص 65)، يندرج إنتاج خطاب شفهي أو مكتوب ضمن الكفاية التواصلية[13]. أما الاختياران B («قراءة المكتوب وفهمه واستثماره على مستويات عدة») وD («تمييز أصناف الخطاب...») فيندرجان ضمن الكفاية المنهجية[14][15].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q10', 'exam_primary_2025_didactics_ar_nov', 10, 'الغلاف الزمني', 'الغلاف الزمني الأسبوعي المخصص للغة العربية في السنة الثالثة ابتدائي:', false, '[{"id": "A", "text": "سبع ساعات؛"}, {"id": "B", "text": "ثمان ساعات؛"}, {"id": "C", "text": "تسع ساعات؛"}, {"id": "D", "text": "ست ساعات؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يتوزع الغلاف الزمني الأسبوعي لمادة اللغة العربية بالتعليم الابتدائي كما يأتي: السنة الأولى (10 ساعات)، السنة الثانية (9 ساعات)، السنة الثالثة (8 ساعات = 480 دقيقة)، السنة الرابعة (6 ساعات ونصف)، السنتان الخامسة والسادسة (6 ساعات لكل منهما)[16][17].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q11', 'exam_primary_2025_didactics_ar_nov', 11, 'التقويم التشخيصي والدعم الاستدراكي', 'ينجز التقويم التشخيصي والدعم الاستدراكي:', false, '[{"id": "A", "text": "في نهاية كل حصة دراسية؛"}, {"id": "B", "text": "في نهاية كل وحدة دراسية؛"}, {"id": "C", "text": "في نهاية الأسبوع الأول من كل دورة دراسية؛"}, {"id": "D", "text": "في نهاية الأسبوع الأول من السنة الدراسية؛"}, {"id": "F", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['F']::text[], 'ينص المنهاج الدراسي في تنظيم السنة الدراسية على أنه يُخصص الأسبوع الأول كاملاً من السنة الدراسية (في بدايتها) للتقويم التشخيصي والدعم الاستدراكي[18][19]، وليس «في نهاية الأسبوع الأول من السنة الدراسية» كما ورد في الاختيار D (وهو فخ لفظي دقيق).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, 'تنبيه: ورقة الامتحان نفسها تُرقّم الخيار الأخير «F» (خطأ مطبعي في الورقة، تخطّت E)؛ أُدرج هنا بالحرف F كما في الورقة، والجواب الصحيح هو F.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q12', 'exam_primary_2025_didactics_ar_nov', 12, 'مكون الكتابة', 'يتشكل مكون الكتابة في السنة الثانية ابتدائي من:', false, '[{"id": "A", "text": "الخط - النقل - الإملاء - التعبير الكتابي؛"}, {"id": "B", "text": "التطبيقات الكتابية - الإملاء - التعبير الكتابي؛"}, {"id": "C", "text": "الخط - تمارين كتابية - التعبير الكتابي؛"}, {"id": "D", "text": "النقل - الإملاء - التعبير الكتابي؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'حسب بطاقة المكونات الدراسية في المنهاج (ص 72)، يتشكل مكون الكتابة في السنة الثانية ابتدائي من أربعة عناصر هي: الخط، الإملاء، تمارين كتابية، التعبير الكتابي[20][21].
الاختيار A يخص السنة الأولى (تتضمن النقل)[16]؛
الاختيار B يخص السنة الثالثة[22]؛
الاختيار C ناقص لأنه أغفل «الإملاء».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, 'الصحيح حسب المنهاج (الخط، الإملاء، تمارين كتابية، التعبير الكتابي) غير وارد ضمن الخيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q13', 'exam_primary_2025_didactics_ar_nov', 13, 'مكون القراءة', 'الغلاف الزمني الأسبوعي المخصص لمكون القراءة في السنة الأولى ابتدائي:', false, '[{"id": "A", "text": "خمس حصص، مدة كل حصة 40 دقيقة؛"}, {"id": "B", "text": "خمس حصص، مدة كل حصة 45 دقيقة؛"}, {"id": "C", "text": "ست حصص، مدة كل حصة 35 دقيقة؛"}, {"id": "D", "text": "ست حصص، مدة كل حصة 45 دقيقة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يُخصص لمكون القراءة في السنة الأولى ابتدائي خمس حصص أسبوعياً مدة كل حصة 45 دقيقة، أي بمجموع 225 دقيقة في الأسبوع[16][23].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q14', 'exam_primary_2025_didactics_ar_nov', 14, 'الظواهر اللغوية', 'يتشكل مكون الظواهر اللغوية للسنوات الثلاث العليا من سلك التعليم الابتدائي من:', false, '[{"id": "A", "text": "التراكيب - الإملاء - الشكل والتطبيقات الكتابية؛"}, {"id": "B", "text": "الصرف والتحويل - الشكل والتطبيقات الكتابية - الإملاء؛"}, {"id": "C", "text": "الشكل والتطبيقات الكتابية - الإملاء - التراكيب؛"}, {"id": "D", "text": "الصرف والتحويل - التراكيب - الإملاء؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'في السنوات الثلاث العليا (4 و5 و6)، يضم مكون الظواهر اللغوية ثلاثة عناصر هي: الصرف والتحويل، التراكيب، والإملاء[24][25]. أما «الشكل والتطبيقات الكتابية» فيندرج ضمن مكون الكتابة[25].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q15', 'exam_primary_2025_didactics_ar_nov', 15, 'مشروع الوحدة', 'المدة الزمنية المخصصة لحصة مكون مشروع الوحدة في السنة السادسة ابتدائي:', false, '[{"id": "A", "text": "45 دقيقة؛"}, {"id": "B", "text": "30 دقيقة؛"}, {"id": "C", "text": "40 دقيقة؛"}, {"id": "D", "text": "35 دقيقة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تُخصص لمكون مشروع الوحدة في المستويات التي يُدرَّس فيها (من السنة الثالثة إلى السنة السادسة) حصة واحدة أسبوعياً مدتها 30 دقيقة[26][27].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q16', 'exam_primary_2025_didactics_ar_nov', 16, 'موجهات مكون القراءة', 'من موجهات مكون القراءة في السنة الرابعة ابتدائي:', false, '[{"id": "A", "text": "تخصيص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص المسترسل؛"}, {"id": "B", "text": "تخصيص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص الشعري؛"}, {"id": "C", "text": "تخصيص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص السماعي؛"}, {"id": "D", "text": "تخصيص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص الوظيفي؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'في السنة الرابعة ابتدائي تدبر القراءة في 5 حصص أسبوعياً: 4 حصص للنص الوظيفي (الأسابيع 1 و2 و3) أو النص الشعري (الأسبوع 4)، وتُخصص الحصة الخامسة من كل أسبوع من الأسابيع الأربعة الأولى للنص المسترسل[25].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q17', 'exam_primary_2025_didactics_ar_nov', 17, 'النص الشعري', 'يستثمر نص شعري واحد في السنة الرابعة ابتدائي في:', false, '[{"id": "A", "text": "ثلاث حصص في الأسبوع الرابع من كل وحدة؛"}, {"id": "B", "text": "أربع حصص في الأسبوع الرابع من كل وحدة؛"}, {"id": "C", "text": "أربع حصص في الأسبوع الثالث من كل وحدة؛"}, {"id": "D", "text": "ثلاث حصص في الأسبوع الثالث من كل وحدة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'حسب موجهات مكون القراءة في السنة الرابعة ابتدائي (ص 118 من المنهاج): «يُستثمر نص شعري واحد في أربع حصص في الأسبوع الرابع من كل وحدة»[28] (بينما يُستثمر في 3 حصص في الأسبوع الرابع في السنتين الخامسة والسادسة[12]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q18', 'exam_primary_2025_didactics_ar_nov', 18, 'التعليم المبكر للقراءة — المفردات', 'المفردات مبدأ من مبادئ التعليم المبكر للقراءة، ويعني:', false, '[{"id": "A", "text": "تركيب المفردات في جمل وقراءتها قراءة مقطعية؛"}, {"id": "B", "text": "تشكيل المفردات انطلاقاً من حروف وقراءتها قراءة مقطعية؛"}, {"id": "C", "text": "قراءة المفردات قراءة مقطعية وإثراء الرصيد المعجمي؛"}, {"id": "D", "text": "التمكن من اكتساب رصيد معجمي واستعماله؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يعرّف المنهاج الدراسي مكون المفردات بأنه يتمثل في «تمكن المتعلم(ة) من اكتساب رصيد معجمي من المفردات واستعمالها في فهم المسموع والمقروء، وفي التعبير الشفهي والكتابي، كما تتمثل في اكتساب استراتيجيات يوظفها لفهم المفردات الجديدة»[7][29].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q19', 'exam_primary_2025_didactics_ar_nov', 19, 'استراتيجيات القراءة', 'تشمل استراتيجيات ما قبل القراءة الأنشطة الآتية، بالترتيب:', false, '[{"id": "A", "text": "التصفح الأولي - وضع توقعات قبلية - استثمار المعارف القبلية - تأمل العنوان؛"}, {"id": "B", "text": "صوغ فرضيات القراءة - تأمل العنوان والصورة المرفقة بالنص - التصفح الأولي للنص؛"}, {"id": "C", "text": "التصفح الأولي - تحديد الهدف من القراءة - وضع توقعات قبلية - استثمار المعرفة القبلية؛"}, {"id": "D", "text": "تأمل العنوان والصورة المرفقة بالنص - استثمار المعرفة القبلية - وضع توقعات قبلية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ترد استراتيجيات ما قبل القراءة في المنهاج الدراسي للتعليم الابتدائي بالترتيب الآتي: التصفح الأولي – تحديد الهدف من القراءة – وضع توقعات قبلية – استثمار المعرفة القبلية[30].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q20', 'exam_primary_2025_didactics_ar_nov', 20, 'استراتيجيات ما بعد القراءة', 'يندرج «فحص التوقعات القبلية» ضمن استراتيجيات القراءة، ويكون:', false, '[{"id": "A", "text": "بعد تحليل النص؛"}, {"id": "B", "text": "أثناء القراءة؛"}, {"id": "C", "text": "بعد القراءة؛"}, {"id": "D", "text": "بعد تلخيص النص؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'يندرج «فحص التوقعات القبلية» ضمن استراتيجيات ما بعد القراءة، والتي تشمل: فحص التوقعات القبلية، تلخيص النص، وتقويم المقروء[30][31].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q21', 'exam_primary_2025_didactics_ar_nov', 21, 'التعبير الكتابي', 'الغلاف الزمني المخصص لمكون التعبير الكتابي في السنة الثالثة ابتدائي:', false, '[{"id": "A", "text": "حصة واحدة في الأسبوع؛"}, {"id": "B", "text": "حصتان في الأسبوع؛"}, {"id": "C", "text": "حصة واحدة كل أسبوعين؛"}, {"id": "D", "text": "حصة واحدة في كل وحدة دراسية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'وفق جدول الغلاف الزمني للسنة الثالثة ابتدائي في المنهاج (ص 73)، تُخصص لمكون التعبير الكتابي حصة واحدة في الأسبوع مدتها 30 دقيقة[17][32].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q22', 'exam_primary_2025_didactics_ar_nov', 22, 'التدبير الضمني لقواعد اللغة', 'يتم التدبير الضمني لقواعد اللغة العربية من خلال:', false, '[{"id": "A", "text": "أنشطة الاستماع والتحدث وأنشطة القراءة؛"}, {"id": "B", "text": "أنشطة الاستماع والتحدث وأنشطة الكتابة؛"}, {"id": "C", "text": "أنشطة الاستماع والتحدث ودروس القراءة والكتابة؛"}, {"id": "D", "text": "أنشطة الاستماع والتحدث؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'ينص المنهاج الدراسي في السنوات الثلاث الأولى على أن الظواهر والقواعد اللغوية الضمنية لا تُخصَّص لها حصص مستقلة، بل تُروَّج وتُدبَّر ضمنياً عبر جميع مكونات المادة: أنشطة الاستماع والتحدث، ودروس القراءة والكتابة[33][34].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q23', 'exam_primary_2025_didactics_ar_nov', 23, 'معايير اختيار النصوص الشعرية', 'من معايير اختيار النص الشعري في السنة الثالثة ابتدائي، أن يتراوح عدد الأبيات:', false, '[{"id": "A", "text": "ما بين 6 أبيات و12 بيتاً شعرياً؛"}, {"id": "B", "text": "ما بين 8 أبيات و12 بيتاً شعرياً؛"}, {"id": "C", "text": "ما بين 8 أبيات و14 بيتاً شعرياً؛"}, {"id": "D", "text": "ما بين 6 و10 أبيات شعرية؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ينص المنهاج الدراسي (ص 96) ضمن «معايير اختيار النصوص الشعرية» على تراوح عدد أبيات النص الشعري في السنة الثالثة ما بين 6 و12 بيتاً، مع مراعاة تدرج الوحدات[12][35]. (بينما في الأول والثاني: 4 إلى 8 أبيات[35]، وفي الخامس والسادس: 8 إلى 14 بيتاً[36]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q24', 'exam_primary_2025_didactics_ar_nov', 24, 'معايير اختيار النصوص السماعية', 'من معايير اختيار النصوص السماعية في السنة الخامسة ابتدائي أن يتراوح عدد الكلمات فيها:', false, '[{"id": "A", "text": "بين 250 و300 كلمة؛"}, {"id": "B", "text": "بين 280 و300 كلمة؛"}, {"id": "C", "text": "بين 200 و250 كلمة؛"}, {"id": "D", "text": "بين 300 و350 كلمة؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'وفق معايير اختيار النصوص السماعية في المنهاج الدراسي، يتراوح عدد كلمات النص السماعي في السنة الخامسة ابتدائي بين 250 و280 كلمة[37] (وهو غير موجود ضمن الاختيارات الأربعة؛ إذ إن 200–250 خاص بالسنة الرابعة، و280–300 خاص بالسنة السادسة[37]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, 'الصحيح حسب المنهاج (بين 250 و280 كلمة) غير وارد ضمن الخيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان ديداكتيك اللغة العربية (دورة نونبر 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_didactics_ar_nov_q25', 'exam_primary_2025_didactics_ar_nov', 25, 'مشروع الوحدة', 'يُدبر مشروع الوحدة في السنوات الثلاث الأولى ابتدائي وفق ما يأتي:', false, '[{"id": "A", "text": "مشروعان في كل أسبوع؛"}, {"id": "B", "text": "مشروع واحد في كل أسبوعين؛"}, {"id": "C", "text": "مشروعان في كل وحدة دراسية؛"}, {"id": "D", "text": "مشروع واحد في كل وحدتين دراسيتين؛"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'لسببين أساسيين:
مكون «مشروع الوحدة» في مادة اللغة العربية غير مُدرج أصلاً في السنتين الأولى والثانية ابتدائي، وإنما يبدأ تدريسه ابتداءً من السنة الثالثة ابتدائي فقط[21].
يُدبر مشروع الوحدة بمعدل مشروع واحد في كل وحدة دراسية[38]، وهذا الاختيار غير وارد ضمن A أو B أو C أو D.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1OjNU_-THfWLD5bu9Nbsv9xcbJHFwlMaR', true, 'مكون «مشروع الوحدة» غير مدرج في السنتين الأولى والثانية، ويُدبَّر بمعدل مشروع واحد في كل وحدة دراسية — وهذا غير وارد ضمن الخيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
