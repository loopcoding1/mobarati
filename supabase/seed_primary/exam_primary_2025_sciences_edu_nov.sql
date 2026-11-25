-- ====================================================================
-- مباراتي — امتحان علوم التربية (دورة نونبر 2025)
-- ====================================================================
-- المصدر: ملف الحل solved/2025/علوم التربية - دورة نونبر 2025.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/علوم التربية - دورة نونبر 2025.pdf.
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q101 إلى Q125 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان،
--     باستثناء الأسئلة المتخطاة أدناه.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل، بما فيها علامات المراجع [1]-[28] حيث وردت؛
--     التفاف الأسطر في ملف الحل جُمع بفواصل (مسافة واحدة) دون تغيير الكلمات.
--   * علامات قلم مرشح سابق (✓) على ورقة الامتحان أُهملت تماماً — ليست مفتاح تصحيح.
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (60 دقيقة) والمعامل (8) مأخوذان من غلاف ورقة الامتحان نفسها.
--     (لا يوجد عمود للمعامل في جدول exams، فسُجل هنا وفي ملف التقدم فقط.)
--   * الامتحان كامل: 25 سؤالاً، لا صفحات مفقودة ولا أسئلة متخطاة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_sciences_edu_nov', 'specialty_primary', 2025, 'sciences_edu', 'علوم التربية', 'امتحان علوم التربية (دورة نونبر 2025)', 'دورة نونبر 2025', 60, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q101', 'exam_primary_2025_sciences_edu_nov', 101, 'علوم التربية', 'ما هي النظرية التي تعتبر أن المعرفة بناء تقوم به الذات انطلاقا من تفاعلها مع الطبيعي والاجتماعي؟', false, '[{"id": "A", "text": "النظرية السوسيوبنائية"}, {"id": "B", "text": "النظرية الجشطلتية"}, {"id": "C", "text": "النظرية البنائية"}, {"id": "D", "text": "النظرية المعرفية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'بخلاف النظرية البنائية (عند بياجي) التي تركز أساساً على التفاعل الفردي للذات مع المحيط المادي/الطبيعي، فإن النظرية السوسيوبنائية (فيكوتسكي، برونر، ومدرسة جنيف في علم النفس الاجتماعي) تؤكد أن بناء المعرفة يتم في إطار تفاعل مزدوج للذات مع المحيط الطبيعي والاجتماعي (من خلال التفاعل مع الأقران والراشدين والصراع السوسيومعرفي)[1].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q102', 'exam_primary_2025_sciences_edu_nov', 102, 'علوم التربية', 'يعتبر التواصل التربوي بين المدرس وجماعة المتعلمين تواصلا', false, '[{"id": "A", "text": "مؤقتا"}, {"id": "B", "text": "تكوينيا"}, {"id": "C", "text": "إخباريا"}, {"id": "D", "text": "إقناعيا"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'التواصل التربوي داخل الفصل الدراسي ليس مجرد نقل أحادي للمعلومات (إخبارياً) ولا خطاباً دعائياً (إقناعياً)، بل هو تواصل تكويني هادف ومقصود يرمي إلى بناء شخصية المتعلم وتنمية معارفه ومهاراته وقيمه وكفاياته[2].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q103', 'exam_primary_2025_sciences_edu_nov', 103, 'علوم التربية', 'ما هما الحاجتان الأساسيتان عند الطفل حسب كارل روجرز؟', false, '[{"id": "A", "text": "التقدير الإيجابي الذاتي ومن الغير"}, {"id": "B", "text": "الغذاء والأمن النفسي"}, {"id": "C", "text": "التعلم والتقدير الذاتي"}, {"id": "D", "text": "الأمن والتواصل الانفعالي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يرى كارل روجرز (رائد النظرية الإنسانية) أنه مع تطور الوعي بالذات لدى الطفل تنشأ لديه حاجتان نفسيتان أساسيتان: الحاجة إلى التقدير الإيجابي من الغير (الحب والقبول غير المشروط من المحيطين به)، والحاجة إلى التقدير الإيجابي الذاتي (قبول الذات واحترامها)[2].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q104', 'exam_primary_2025_sciences_edu_nov', 104, 'علوم التربية', 'في إعداد السيناريو البيداغوجي، يتعين على المدرس أن يعتمد موارد رقمية من', false, '[{"id": "A", "text": "اختياره الخاص"}, {"id": "B", "text": "مصادر مفتوحة"}, {"id": "C", "text": "إنتاجه الخاص"}, {"id": "D", "text": "مصادر مصادق عليها"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'تنص التوجيهات التربوية الرسمية ومعايير إعداد السيناريو البيداغوجي لإدماج تكنولوجيا المعلومات والاتصالات في التدريس على ضرورة اعتماد المدرس موارد رقمية من مصادر مصادق عليها (مثل تلك المصادق عليها من طرف المختبر الوطني للموارد الرقمية أو المنصات الرسمية)، ضماناً لصحتها العلمية وملاءمتها للمنهاج[3][4].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q105', 'exam_primary_2025_sciences_edu_nov', 105, 'علوم التربية', 'من وجهة نظر دينامية الجماعات، الجماعة التي تتميز بأعلى قدر من التنظيم هي الجماعة', false, '[{"id": "A", "text": "الأولية"}, {"id": "B", "text": "المرجعية"}, {"id": "C", "text": "الثانوية"}, {"id": "D", "text": "الكبرى"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'في تصنيف الجماعات ضمن دينامية الجماعات، تتميز الجماعة الثانوية (أو المؤسساتية/التنظيمات) بأعلى درجات التنظيم الرسمي والهيكلة؛ إذ تحكمها قوانين وضوابط مكتوبة، وتوزيع رسمي للأدوار والمهام، وهرمية إدارية واضحة، بخلاف الجماعة الأولية (كالأصدقاء) القائمة على العلاقات العاطفية المباشرة[2][5].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q106', 'exam_primary_2025_sciences_edu_nov', 106, 'علوم التربية', 'يعتبر بيير بورديو أن ما يعطي الثقافة المهيمنة في النظام المدرسي قيمةً ويمنحها أنجع أدوات ترسيخها يتمثل في', false, '[{"id": "A", "text": "المسار المدرسي"}, {"id": "B", "text": "الرأسمال الثقافي"}, {"id": "C", "text": "الصراعات الثقافية"}, {"id": "D", "text": "الامتحانات المدرسية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'استُمد هذا السؤال حرفياً من كتاب "إعادة الإنتاج" (La Reproduction) لبيير بورديو وجان كلود باسرون، حيث يؤكدان أن الامتحان ليس مجرد أداة تقويم محايدة، بل يفرض تعريفاً اجتماعياً للمعرفة، و«يهب عملية تلقين الثقافة المهيمنة واكتسابها الشرعية بإضفاء طابع «الجدارة» عليها، ويُعتبر الأداة الأنجع لترسيخ الثقافة المهيمنة»[6][7].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q107', 'exam_primary_2025_sciences_edu_nov', 107, 'علوم التربية', 'تنقسم الوضعية المشكلة إلى ثلاثة أنواع', false, '[{"id": "A", "text": "بنائية ومُندمجة وتقويمية"}, {"id": "B", "text": "بنائية ودامجة وتقويمية"}, {"id": "C", "text": "بنائية وإدماجية وتقويمية"}, {"id": "D", "text": "بنائية ومُدمجة وتقويمية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'تُصنّف الوضعية المشكلة حسب وظيفتها البيداغوجية في المقاربة بالكفايات إلى ثلاثة أنواع أساسية: وضعية مشكلة بنائية/ديداكتيكية (تُستثمر لبناء تعلمات وإرساء موارد جديدة)، ووضعية مشكلة إدماجية (تهدف إلى توليف وإدماج الموارد المكتسبة)، ووضعية مشكلة تقويمية (لقياس مدى تملك الكفاية)[8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q108', 'exam_primary_2025_sciences_edu_nov', 108, 'علوم التربية', 'حسب جان بياجي، ما المرحلة التي يكون فيها الطفل قادرا على التفكير منطقيا؟', false, '[{"id": "A", "text": "المرحلة الحس حركية"}, {"id": "B", "text": "مرحلة ما قبل العمليات"}, {"id": "C", "text": "مرحلة العمليات الملموسة"}, {"id": "D", "text": "مرحلة العمليات المجردة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'وفق نظرية النمو المعرفي لجان بياجي، يبدأ الطفل في مرحلة العمليات الملموسة (أو المشخصة، من 7 إلى 11/12 سنة) بالانتقال من التفكير الحدسي المتمركز حول الذات إلى التفكير المنطقي المنظم (إدراك الاحتفاظ، التصنيف، التسلسل، والقابلية للعكس) ولكن في ارتباطه بالأشياء الملموسة[8]. أما مرحلة العمليات المجردة فتخص المراهق وتتميز بالتفكير الفرضي الاستنباطي المجرد[8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q109', 'exam_primary_2025_sciences_edu_nov', 109, 'علوم التربية', 'ما دور المتعلم في النظرية المعرفية؟', false, '[{"id": "A", "text": "استقبال وإدراك ومعالجة وتخزين المعلومات واسترجاعها عند الحاجة"}, {"id": "B", "text": "بناء تعلماته وتفسير المعلومات التي يستقبلها اعتمادا على بنياته الذهنية"}, {"id": "C", "text": "بناء تعلماته عن طريق التفاعل النشط بينه وبين محيطه السوسيوثقافي"}, {"id": "D", "text": "الاكتفاء بالاستجابة للتعليمات والتوجيهات الصادرة عن المدرسين"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تقوم النظرية المعرفية على نموذج معالجة المعلومات؛ حيث تنظر إلى المتعلم باعتباره ذاتاً نشيطة تعالج المعلومات ذهنياً (الاستقبال، الانتباه والإدراك، التشفير، التخزين في الذاكرة، والاسترجاع عند الحاجة)[8]. بينما يحيل الاختيار (B) على البنائية، و(C) على السوسيوبنائية، و(D) على السلوكية[8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q110', 'exam_primary_2025_sciences_edu_nov', 110, 'علوم التربية', 'تشكل بالنسبة للتلميذ مجموعة الأفعال التي يقوم بها لأداء مهام وتمارين معينة', false, '[{"id": "A", "text": "قدرة"}, {"id": "B", "text": "مهارة"}, {"id": "C", "text": "تجربة"}, {"id": "D", "text": "كفاية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في أدبيات ومعاجم علوم التربية، تُعرَّف المهارة بأنها مجموع الأفعال المنهجية والحركية التي يتقنها المدرس أو التلميذ؛ وهي بالنسبة للتلميذ تحديداً «مجموعة الأفعال التي يقوم بها لأداء مهام وتمارين معينة»[9][10].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q111', 'exam_primary_2025_sciences_edu_nov', 111, 'علوم التربية', 'من بين مراحل النمو النفسي الجنسي عند فرويد، ما المرحلة التي تقابل "الهوية مقابل غموض الدور" عند إريكسون؟', false, '[{"id": "A", "text": "المرحلة الفمية"}, {"id": "B", "text": "المرحلة الشرجية"}, {"id": "C", "text": "المرحلة القضيبية"}, {"id": "D", "text": "المرحلة التناسلية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'تقع أزمة "الهوية مقابل غموض الدور" عند إريك إريكسون في فترة المراهقة (المرحلة الخامسة، ما بين 12 و18 سنة تقريباً)، وهي الفترة العمرية نفسها التي تقابل المرحلة التناسلية (التي تبدأ مع البلوغ) في نظرية النمو النفسي الجنسي عند سيغموند فرويد[11].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q112', 'exam_primary_2025_sciences_edu_nov', 112, 'علوم التربية', 'ما التسمية التي تطلق على المبادرة التي تنظم في شهر مارس من كل موسم دراسي لمحاربة الهدر المدرسي؟', false, '[{"id": "A", "text": "من الطفل إلى الطفل"}, {"id": "B", "text": "من المدرس إلى الطفل"}, {"id": "C", "text": "من الأسرة إلى المدرسة"}, {"id": "D", "text": "من الشارع إلى المدرسة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تعتمد وزارة التربية الوطنية والتعليم الأولي والرياضة بالمغرب سنوياً، انطلاقاً من شهر مارس، عملية التعبئة المجتمعية "من الطفل إلى الطفل"، التي تهدف إلى إشراك التلاميذ والفاعلين التربويين في رصد الأطفال غير الممدرسين أو المنقطعين عن الدراسة وإعادتهم إلى المدرسة، وذلك في إطار محاربة الهدر المدرسي[12][13].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q113', 'exam_primary_2025_sciences_edu_nov', 113, 'علوم التربية', 'يعتبر إ. دوركهايم أن القاسم المشترك بين جماعة المتعلمين في المحيط المدرسي يتمثل في', false, '[{"id": "A", "text": "القرابة"}, {"id": "B", "text": "الثقافة"}, {"id": "C", "text": "اللغة"}, {"id": "D", "text": "السن"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'في كتابه "التربية الأخلاقية" (L''Éducation morale، الدرس الخامس عشر: "تأثير المحيط المدرسي")، يوضح إميل دوركهايم أن جماعة القسم في المدرسة لا تتحدد برابطة القرابة (كالأسرة) ولا بفعل الاختيار الحر (كجماعة الأصدقاء)، وإنما نتيجة تقارب حتمي بين أفراد يجمعهم تقارب في السن (والظروف الاجتماعية)، مما يجعل القسم مجتمعاً مصغراً يهيئ للاندماج في المجتمع السياسي الواسع[14][15].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q114', 'exam_primary_2025_sciences_edu_nov', 114, 'علوم التربية', 'ما هي البيداغوجيا التي تؤكد على ضرورة تعديل طرائق التدريس وتنويعها تبعاً لاختلاف خصائص المتعلمين؟', false, '[{"id": "A", "text": "بيداغوجيا اللعب"}, {"id": "B", "text": "البيداغوجيا الفارقية"}, {"id": "C", "text": "بيداغوجيا التعاقد"}, {"id": "D", "text": "بيداغوجيا الأهداف"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'تنطلق البيداغوجيا الفارقية من الاعتراف بالفروق الفردية بين المتعلمين (المعرفية، السوسيوثقافية، والسيكولوجية)، وتدعو إلى تنويع وتكييف طرائق التدريس والوسائل وإيقاع التعلم والأنشطة تبعاً لخصائص كل متعلم[11].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q115', 'exam_primary_2025_sciences_edu_nov', 115, 'علوم التربية', 'مقاربة تعتمد عناصر أساسية من بينها النمذجة والتفكير بصوت عالٍ', false, '[{"id": "A", "text": "التعليم الموجه"}, {"id": "B", "text": "التعليم المصغر"}, {"id": "C", "text": "التعليم الصريح"}, {"id": "D", "text": "التعليم المبرمج"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'يرتكز التعليم الصريح (المعتمد أيضاً في مشروع مؤسسات الريادة بالمغرب) على مراحل منهجية واضحة تبدأ بمرحلة النمذجة التي يشرح فيها المدرس المهارة أو الاستراتيجية عبر التفكير بصوت عالٍ أمام المتعلمين، تليها مرحلة الممارسة الموجهة ثم الممارسة المستقلة[16][17].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q116', 'exam_primary_2025_sciences_edu_nov', 116, 'علوم التربية', 'حسب مبادئ دينامية الجماعات، يُنظر إلى الصراع داخل جماعة القسم باعتباره عاملا مساهما في', false, '[{"id": "A", "text": "نمو الجماعة وتطورها"}, {"id": "B", "text": "تفكك الجماعة وانهيارها"}, {"id": "C", "text": "عرقلة تحقيق أهداف الجماعة"}, {"id": "D", "text": "ترسيخ قيم الجماعة ومعاييرها"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'في دينامية الجماعات، لا يُنظر إلى الصراع (الاختلاف المعرفي أو التفاعلي) نظرة سلبية مطلقة؛ بل يُعد – إذا تم تدبيره بشكل جيد – عاملاً إيجابياً يساهم في نمو الجماعة وتطورها وتعزيز تعلم أعضائها[17].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q117', 'exam_primary_2025_sciences_edu_nov', 117, 'علوم التربية', 'يرتبط زمن التعلم ببعدين أساسيين هما', false, '[{"id": "A", "text": "المضامين والطرائق"}, {"id": "B", "text": "المضامين والموارد"}, {"id": "C", "text": "المضامين والمتعلم"}, {"id": "D", "text": "المضامين والمدرس"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'في أدبيات تدبير الزمن التربوي، يُميَّز بين الزمن المدرسي وزمن التدريس وزمن التعلم (المنطقي والواقعي)[18][19]؛ فهذا الأخير يرتبط أساساً ببعدين محددين هما: طبيعة وحجم المضامين (المعرفة المراد اكتسابها ودرجة تعقيدها)، وخصوصيات المتعلم (قدراته العقلية، مستواه النمائي، وإيقاعه الفردي في الاستيعاب والانخراط)[17][20].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q118', 'exam_primary_2025_sciences_edu_nov', 118, 'علوم التربية', 'ما هو المفهوم الذي يعبر عن التحقيق الآلي [الآني] لمهمة معينة أو هدف معين؟', false, '[{"id": "A", "text": "التطبيق"}, {"id": "B", "text": "الأداء"}, {"id": "C", "text": "الممارسة"}, {"id": "D", "text": "التدرب"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'ورد هذا التعريف بنصه في المراجع التربوية المغربية (عن عبد الكريم غريب وبيرزيا)؛ حيث يُعرَّف الأداء أو الإنجاز (Performance) بأنه «التحقيق الآني لمهمة معينة أو هدف معين»، أي السلوك الملاحظ والقابل للقياس الذي يتحقق في لحظة معينة[21][22] (ملاحظة: وردت كلمة "الآلي" في ورقة الامتحان والمقصود بها في النص المرجعي "الآني").', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q119', 'exam_primary_2025_sciences_edu_nov', 119, 'علوم التربية', 'ما هي الخريطة التي تحدد مواقع أفراد الجماعات الأولية أو الصغيرة وعلاقاتهم السوسيو وجدانية؟', false, '[{"id": "A", "text": "السيكومترية"}, {"id": "B", "text": "السوسيومترية"}, {"id": "C", "text": "السوسيودرام"}, {"id": "D", "text": "السوسيوغرام"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'السوسيوغرام (Sociogramme) هو التمثيل البياني أو الخريطة التي تترجم نتائج القياس السوسيومتري (الذي ابتكره جاكوب مورينو)، فتحدد بوضوح مواقع أفراد الجماعة الصغيرة وعلاقاتهم السوسيووجدانية (الانجذاب، النفور، العزلة، ومركزية الأفراد)[23]. أما السوسيومترية فهي المنهج/العلم ذاته، والسوسيودرام تقنية للعب الأدوار[23].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q120', 'exam_primary_2025_sciences_edu_nov', 120, 'علوم التربية', 'صعوبة يواجهها المتعلم خلال سيرورة تعلمه، ولها مظهران إيجابي وسلبي', false, '[{"id": "A", "text": "عائق بيداغوجي"}, {"id": "B", "text": "عائق علمي"}, {"id": "C", "text": "عائق ابستمولوجي"}, {"id": "D", "text": "عائق معرفي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'هذا تعريف حرفي مأخوذ من معجم رينالد لوجوندر (R. Legendre – Dictionnaire actuel de l''éducation) والمعاجم التربوية المغربية، حيث يُعرَّف العائق البيداغوجي (Obstacle pédagogique) بأنه صعوبة يصادفها المتعلم خلال مساره التعلمي ولها مظهران: مظهر إيجابي (كتحدٍّ مثير ولا توازن بسيط يحفز المتعلم على البحث وبناء التعلم) ومظهر سلبي (كحاجز يُعيق وتيرة التعلم ويؤدي إلى التعثر أو اللامبالاة)[24][25].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q121
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q121', 'exam_primary_2025_sciences_edu_nov', 121, 'علوم التربية', 'كشفت الدراسة التي أنجزها المجلس الأعلى للتربية والتكوين والبحث العلمي (2022) أن أكثر أنواع العنف الممارس في الوسط المدرسي هو العنف', false, '[{"id": "A", "text": "الرمزي"}, {"id": "B", "text": "الجسدي"}, {"id": "C", "text": "السيبراني"}, {"id": "D", "text": "اللفظي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'خلص التقرير الموضوعاتي حول "العنف في الوسط المدرسي" الذي أنجزته الهيئة الوطنية للتقييم لدى المجلس الأعلى للتربية والتكوين والبحث العلمي (بشراكة مع اليونيسف)، إلى أن العنف اللفظي (كالسخرية، والشتائم، والنبز بالألقاب المهينة) هو أكثر أشكال العنف انتشاراً وأصبح ممارسة يومية اعتيادية في الوسط المدرسي[23][26].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q122
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q122', 'exam_primary_2025_sciences_edu_nov', 122, 'علوم التربية', 'ما هي الأهداف البيداغوجية التي يضاف إليها وصف للوضعية التي سيلاحظ فيها السلوك الختامي؟', false, '[{"id": "A", "text": "أهداف عامة"}, {"id": "B", "text": "أهداف الإدماج"}, {"id": "C", "text": "أهداف الإنجاز"}, {"id": "D", "text": "أهداف التحكم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'ورد هذا التعريف نصاً في معجم التقييم والبحث التربوي لجيلبير دولاندشير (G. De Landsheere, نقلاً عن لافالو)؛ إذ عرّفه بأنه: «هدف بيداغوجي يُضاف إليه وصف للوضعية التي سيُلاحظ فيها السلوك الختامي»، وهو تعريف هدف الإنجاز / الأداء (Objectif de performance)؛ إذ عرّفه بأنه[27].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q123
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q123', 'exam_primary_2025_sciences_edu_nov', 123, 'علوم التربية', 'يعتقد فرويد أن الدافع الجنسي في المراحل السابقة على المرحلة التناسلية يتميز بكونه', false, '[{"id": "A", "text": "نرجسيا"}, {"id": "B", "text": "واقعيا"}, {"id": "C", "text": "إراديا"}, {"id": "D", "text": "شعوريا"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يرى سيغموند فرويد أن الليبيدو (الدافع الجنسي) في المراحل قبل التناسلية (الفمية، الشرجية، القضيبية) يتميز بكونه نرجسياً وذاتي الإشباع (Auto-érotique)، حيث يجد الطفل اللذة في جسده وذاته، قبل أن يتجه في المرحلة التناسلية (البلوغ وما بعدها) نحو موضوع خارجي[28]. كما أن الدافع عند فرويد غريزي لاشعوري، مما يستبعد بقية الاختيارات[28].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q124
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q124', 'exam_primary_2025_sciences_edu_nov', 124, 'علوم التربية', 'ما هي الوظيفة الأساسية للمدرسة حسب إ. دوركهايم؟', false, '[{"id": "A", "text": "ضمان تنشئة اجتماعية أولية متوازنة للأطفال"}, {"id": "B", "text": "إعداد الأطفال لحياة اجتماعية أوسع نطاقا من الأسرة"}, {"id": "C", "text": "ضمان استمرارية التضامن الآلي بين أفراد المجتمع"}, {"id": "D", "text": "ترسيخ ثقافة الفئة الاجتماعية التي ينحدر منها المتعلم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'يرى إميل دوركهايم أن الأسرة تضطلع بالتنشئة الأولية الضيقة القائمة على العاطفة والقرابة (لذا يُستبعد A)، بينما تتمثل الوظيفة الأساسية للمدرسة في إعداد الأطفال وتنشئتهم اجتماعياً للاندماج في حياة اجتماعية أوسع نطاقاً من الأسرة، قوامها القواعد العامة والتضامن العضوي (لا الآلي، لذا يُستبعد C)[15][28]. أما الاختيار (D) فيرتبط بنقد بورديو لإعادة الإنتاج[28].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة نونبر 2025) — Q125
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_nov_q125', 'exam_primary_2025_sciences_edu_nov', 125, 'علوم التربية', 'من بين المستويات أدناه، أين يتموقع فعل "يُلخّص" حسب صُنافة بلوم؟', false, '[{"id": "A", "text": "الفهم"}, {"id": "B", "text": "التطبيق"}, {"id": "C", "text": "التحليل"}, {"id": "D", "text": "التركيب"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'في صنافة بلوم للأهداف المعرفية، يندرج فعل "يُلخّص" (Résumer) ضمن مستوى الفهم (المستوى الثاني بعد المعرفة/التذكر)، إلى جانب أفعال أخرى مثل: يشرح، يفسر، يعيد الصياغة، ويترجم، لأنه يتطلب إعادة صياغة المضمون وفهمه وليس مجرد حفظه[28].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/11f9J5mZ2OnREfMRdibrmt3D-UrZYWfQf', true, NULL)
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
