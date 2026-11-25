-- ====================================================================
-- مباراتي — امتحان علوم التربية (دورة يناير 2025)
-- ====================================================================
-- المصدر: ملف الحل solved/2025/علوم التربية - دورة يناير 2025.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20؛ سجل الامتحانات رقم 51)
--   ملف الامتحان: exams-ibtida2i/2025/علوم التربية.pdf (7 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q101 إلى Q125 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة
--     الامتحان، باستثناء التصحيحات الأربعة أدناه (نص الورقة هو الحكم).
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان،
--     وقُورنت مع تصحيح mesconcours.ma لنفس الدورة
--     (https://mesconcours.ma/ar/concours/enseignement/2025-481/)؛
--     التطابق كامل إلا في Q103 وQ105 وQ106 وQ112 وQ120 (انظر أدناه).
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل؛ التفاف الأسطر جُمع بفواصل (مسافة واحدة)
--     دون تغيير الكلمات.
--   * علامات قلم مرشح سابق (✓ وX ورسوم) على ورقة الامتحان أُهملت تماماً —
--     ليست مفتاح تصحيح.
--
-- تصحيحات نصوص الأسئلة مقابل ملف الحل (الورقة هي الحكم؛ ملف الحل كان قد
-- أعاد صياغة هذه النصوص مع إضافات بين قوسين معقوفين [...] من عنده):
--   * Q105: نص الورقة «...التي تمكن من تحقيق هدف عام، هو هدفٌ» (وليس
--     «...التي تمكن من [التصرف في وضعية معينة]»). وتبعاً لذلك صُحح الجواب
--     من C (خاص) إلى A (وسيط): «تحقيق هدف عام» هو تعريف الهدف الوسيط
--     حرفياً في بيداغوجيا الأهداف، ويوافق ذلك تصحيح mesconcours (A).
--   * Q109: نص الورقة «...لإيجاد حلول لمواقف أو لوضعية – مشكلة، هي»
--     (وليس «[لمشكلات مطروحة]»). الجواب C دون تغيير.
--   * Q120: نص الورقة «...وتجاربهم من أجل تمكينهم من حل مشكلة لم يسبق لهم
--     مواجهتها. ما طبيعة هذا الإجراء؟» (ملف الحل اختصرها). الجواب E دون تغيير.
--   * Q121: نص الورقة «...مع ما كان يُفترض الحصول عليه هو» (وليس
--     «[تحقيقه]»). الجواب B دون تغيير.
--
-- خلافات الأجوبة مع mesconcours (كلها بلا مفتاح رسمي؛ أُبقي على جواب ملف
-- الحل حيث كان مبرره أقوى، وسُجل الخلاف في verification_note لكل سؤال):
--   * Q103: ملف الحل B (المذهب العقلي التبسيطي)؛ mesconcours A ويعلّمه ⚠.
--   * Q106: ملف الحل E؛ mesconcours B ويعلّمه ⚠.
--   * Q112: ملف الحل C (مُيسِّر)؛ mesconcours A (ملاحظ) ويعلّمه ⚠.
--   * Q120: ملف الحل E (إدماج/تحويل)؛ mesconcours B (تقويم).
--
-- ملاحظات عن ملف الامتحان:
--   * الملف مسح ضوئي يجمع جزأين: صفحات 2–6/6 من دفتر علوم التربية (صفحة
--     الغلاف 1/6 مفقودة)، ثم صفحتان 2–3/7 من دفتر ديداكتيك اللغة العربية
--     (الأسئلة Q1–Q8، الجزء ينتهي عند Q8). هذا الملف يغطي علوم التربية
--     فقط (Q101–Q125)؛ الأسئلة Q1–Q8 من ديداكتيك العربية مغطاة أصلاً في
--     ملف exam_primary_2025_didactics_ar_jan.sql ولم تُكرر هنا.
--   * المدة (60 دقيقة) والمعامل (8) تحقق منهما لدورة يناير 2025 عبر
--     mesconcours.ma وعبر إعلان المباراة الرسمي (جدول الاختبارات: علوم
--     التربية 60 دقيقة، المعامل 8). (لا يوجد عمود للمعامل في جدول exams،
--     فسُجل هنا وفي ملف التقدم فقط.) التنقيط سالب: صحيحة +1، ملغاة 0،
--     خاطئة -1.
--   * الامتحان كامل: 25 سؤالاً، لا صفحات مفقودة ولا أسئلة متخطاة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_sciences_edu_jan', 'specialty_primary', 2025, 'sciences_edu', 'علوم التربية', 'امتحان علوم التربية (دورة يناير 2025)', 'دورة يناير 2025', 60, 25)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (25 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q101
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q101', 'exam_primary_2025_sciences_edu_jan', 101, 'علوم التربية', 'يعتبر إريك إريكسون أن مرحلة "الثقة مقابل الشك" لاحقة على مرحلة', false, '[{"id": "A", "text": "المبادرة مقابل الذنب"}, {"id": "B", "text": "المثابرة مقابل النقص"}, {"id": "C", "text": "الهوية مقابل عدم وضوح الدور"}, {"id": "D", "text": "الألفة مقابل العزلة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['E']::text[], 'في نظرية النمو النفسي الاجتماعي لإريك إريكسون، تُعد مرحلة "الثقة مقابل عدم الثقة/الشك" (من الولادة إلى حوالي 18 شهراً) هي المرحلة الأولى على الإطلاق، وبالتالي فهي لا تلي أي مرحلة سابقة؛ كما أن المراحل الواردة في الاختيارات (A، B، C، D) تأتي بعدها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q102
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q102', 'exam_primary_2025_sciences_edu_jan', 102, 'علوم التربية', 'يدل مفهوم "الخطاطة" حسب ج. بياجي على', false, '[{"id": "A", "text": "تصنيف المعلومات في فئات"}, {"id": "B", "text": "نموذج للتعلم القائم على التعزيز"}, {"id": "C", "text": "بنية معرفية تنظم المعلومات"}, {"id": "D", "text": "أسلوب معرفي للتعلم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'تُعرَّف الخطاطة الذهنية (Schème) في النظرية البنائية لجان بياجي بأنها بنية معرفية ذهنية منظِّمة للمعلومات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q103', 'exam_primary_2025_sciences_edu_jan', 103, 'علوم التربية', 'يرى إ. دوركهايم أن العقبة التي تحول دون نمو مشاعر التضامن لدى الطفل هي', false, '[{"id": "A", "text": "النزعة الأنانية الشكلية"}, {"id": "B", "text": "المذهب العقلي التبسيطي"}, {"id": "C", "text": "النزعة المركزية العرقية"}, {"id": "D", "text": "المذهب الذاتي المفرط"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في كتابه "التربية الأخلاقية" (L''Éducation morale، الدرسان 16 و17)، ينص إميل دوركهايم صراحة على أن العقبة هي "المذهب العقلي التبسيطي" (le rationalisme simpliste)، وهو نزعة ذهنية تختزل الواقع المعقد في عناصر بسيطة ومعزولة، فتحجب عن الطفل إدراك أن المجتمع كُلٌّ متكامل؛ ويرى أن تدريس العلوم الطبيعية هو السبيل لمحاربة هذه النزعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'خلاف بين المصدرين: ملف الحل يجيب B (المذهب العقلي التبسيطي، درسا دوركهايم 16 و17 في «التربية الأخلاقية»)، وmesconcours يجيب A (النزعة الأنانية الشكلية) ويعلّمه ⚠ (يحتاج تأكيداً من المرجع الرسمي). أُبقي على B.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q104', 'exam_primary_2025_sciences_edu_jan', 104, 'علوم التربية', 'يتميز اضطراب "متلازمة اسبرجر" (Asperger Syndrome) بكونه ذا أصل', false, '[{"id": "A", "text": "جيني"}, {"id": "B", "text": "ذهني"}, {"id": "C", "text": "اجتماعي"}, {"id": "D", "text": "انفعالي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تُصنَّف متلازمة أسبرجر ضمن اضطرابات طيف التوحد (اضطراب عصبي نمائي)، وتشير الدراسات العلمية والتربوية إلى أن لها أساساً جينياً/وراثياً قوياً، وهي ليست ذات أصل ذهني (إذ يتمتع المصاب بها بذكاء عادي أو مرتفع)، ولا ذات أصل اجتماعي أو انفعالي (فصعوبات التواصل الاجتماعي هي من الأعراض لا من الأسباب).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q105', 'exam_primary_2025_sciences_edu_jan', 105, 'علوم التربية', 'حسب بيداغوجيا الأهداف: الهدف الذي تكون الغاية منه تطوير المعارف والقدرات والمواقف التي تمكن من تحقيق هدف عام، هو هدفٌ', false, '[{"id": "A", "text": "وسيطٌ"}, {"id": "B", "text": "إجرائيٌّ"}, {"id": "C", "text": "خاصٌّ"}, {"id": "D", "text": "عرضانيٌّ"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'الهدف الوسيط حلقة بين الهدف العام والأهداف الخاصة/الإجرائية، وتعريفه هو تطوير المعارف والقدرات والمواقف التي تمكّن من تحقيق هدف عام. أما الهدف الخاص فيرتبط بمحتوى دراسي محدد، والهدف الإجرائي سلوك ملاحظ قابل للقياس في وضعية معينة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'صُحح الجواب من C (خاص) إلى A (وسيط) أثناء التحقق: نص الورقة «تمكن من تحقيق هدف عام» هو تعريف الهدف الوسيط حرفياً؛ ملف الحل كان قد أضاف عبارة [التصرف في وضعية معينة] من عنده. لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q106', 'exam_primary_2025_sciences_edu_jan', 106, 'علوم التربية', 'من العوائق الموضوعية في عملية التواصل التربوي', false, '[{"id": "A", "text": "ترابط الأفكار وانسجامها"}, {"id": "B", "text": "ضعف السمع لدى المتلقي"}, {"id": "C", "text": "شدة صوت المتحدث"}, {"id": "D", "text": "مدى وضوح الخطاب"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['E']::text[], 'وفق التصنيف المعتمد في أدبيات التواصل التربوي: • ترابط الأفكار وانسجامها (A) عنصر إيجابي يُيسر التواصل وليس عائقاً. • ضعف السمع لدى المتلقي (B) عائق فيزيولوجي/ذاتي مرتبط بالمتلقي. • شدة صوت المتحدث (C) ومدى وضوح الخطاب (D) يصنَّفان ضمن العوائق الذاتية المرتبطة بشخص المرسِل (الأستاذ). • أما العوائق الموضوعية فترتبط بالسياق والفضاء غير المريح، والتوقيت غير المناسب، والضجيج، وبعد الموضوع عن اهتمامات المتعلم وغيرها، ولم يُذكر أي منها في الاختيارات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'خلاف بين المصدرين: ملف الحل يجيب E (ضعف السمع عائق ذاتي/فيزيولوجي مرتبط بالمتلقي، والعوائق الموضوعية ترتبط بالسياق والفضاء والتوقيت)، وmesconcours يجيب B ويعلّمه ⚠ (تصنيف «موضوعي/ذاتي» يختلف بين المراجع). أُبقي على E.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q107', 'exam_primary_2025_sciences_edu_jan', 107, 'علوم التربية', 'يتمثل دور الذاكرة العاملة، وفق نموذج معالجة المعلومات، في', false, '[{"id": "A", "text": "انتقاء المثيرات الحسية"}, {"id": "B", "text": "إنشاء أنماط ذهنية جديدة"}, {"id": "C", "text": "احتفاظ مؤقت بالمعلومات ومعالجتها"}, {"id": "D", "text": "تخزين دائم للمعلومات"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'وفق نموذج معالجة المعلومات في علم النفس المعرفي، تقوم الذاكرة الحسية بالتقاط المثيرات الحسية، وتقوم الذاكرة العاملة (Working Memory) بالاحتفاظ المؤقت بالمعلومات ومعالجتها أثناء إنجاز المهام الذهنية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q108', 'exam_primary_2025_sciences_edu_jan', 108, 'علوم التربية', 'يعتبر ك. ليفين Lewin أن الجماعة', false, '[{"id": "A", "text": "أكبر من مجموع أعضائها"}, {"id": "B", "text": "تساوي مجموع أعضائها"}, {"id": "C", "text": "تعبر عن الأهداف المشتركة"}, {"id": "D", "text": "متماهية مع جميع أعضائها"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'انطلاقاً من الخلفية الجشطلتية، يرى كورت ليفين (مؤسس دينامية الجماعات) أن الجماعة كُلٌّ دينامي أكبر من مجموع أجزائها/أعضائها ومختلف عنه، نظراً لشبكة التفاعلات والعلاقات والقوى التي تنشأ بين أفرادها.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q109', 'exam_primary_2025_sciences_edu_jan', 109, 'علوم التربية', 'تقنية تقوم على إشراك المتعلمين في المناقشة بهدف إنتاج أفكار واقتراحها بشكل جماعي، لإيجاد حلول لمواقف أو لوضعية – مشكلة، هي', false, '[{"id": "A", "text": "حل المشكلات"}, {"id": "B", "text": "دراسة حالة"}, {"id": "C", "text": "الزوبعة الذهنية"}, {"id": "D", "text": "التعلم التشاركي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'الزوبعة الذهنية (أو العصف الذهني Brainstorming) هي تقنية تنشيط جماعي تقوم على إشراك المتعلمين في توليد وإنتاج أكبر قدر ممكن من الأفكار والاقتراحات بشكل جماعي لإيجاد حلول للمشكلات المطروحة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q110', 'exam_primary_2025_sciences_edu_jan', 110, 'علوم التربية', 'تعتبر المدرسة السلوكية أن التعلم هو عملية تكوين مجموعة من', false, '[{"id": "A", "text": "العادات"}, {"id": "B", "text": "الأفكار"}, {"id": "C", "text": "المفاهيم"}, {"id": "D", "text": "المواقف"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'ترى المدرسة السلوكية (واطسون، بافلوف، ثورندايك، سكينر) أن التعلم هو تغيّر في السلوك الظاهر ناتج عن تكوين العادات والارتباطات الشرطية بين المثيرات والاستجابات عن طريق التكرار والتعزيز، دون الاشتغال بالعمليات الذهنية الداخلية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q111', 'exam_primary_2025_sciences_edu_jan', 111, 'علوم التربية', 'يُعتبر ظهور حالات "التبول اللاإرادي الليلي" لدى الطفل، حسب فرويد، تعبيراً عن آلية دفاعية تسمى', false, '[{"id": "A", "text": "التثبيت"}, {"id": "B", "text": "الكبت"}, {"id": "C", "text": "النكوص"}, {"id": "D", "text": "التقمص"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'النكوص (Régression) هو آلية دفاعية لاشعورية يرتدّ فيها الفرد عند تعرضه للإحباط أو القلق (كولادة مولود جديد) إلى مرحلة نمائية سابقة، ومن مظاهره عودة التبول اللاإرادي الليلي لدى الطفل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q112', 'exam_primary_2025_sciences_edu_jan', 112, 'علوم التربية', 'ما طبيعة دور المدرس في بناء التعلمات في طريقة ماريا مونتيسوري؟', false, '[{"id": "A", "text": "ملاحظٌ"}, {"id": "B", "text": "محايدٌ"}, {"id": "C", "text": "مُيَسِّرٌ"}, {"id": "D", "text": "مؤثرٌ"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'في بيداغوجيا ماريا مونتيسوري، ينتقل المدرس من دور الملقن إلى دور المُيَسِّر والموجّه (Facilitateur) الذي يهيئ البيئة التعليمية الغنية بالوسائل الحسية ذاتية التصحيح، وييسر للطفل بناء تعلماته ذاتياً واكتشافها بنفسه. (ملحوظة: الملاحظة أداة أساسية يعتمدها المدرس عند مونتيسوري لتشخيص الفترات الحساسة، لكن طبيعة دوره في بناء التعلمات تظل دور الميسّر والمرشد).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'خلاف بين المصدرين: ملف الحل يجيب C (مُيسِّر؛ الملاحظة أداة يعتمدها المدرس عند مونتيسوري لا طبيعة دوره)، وmesconcours يجيب A (ملاحظ) ويعلّمه ⚠. أُبقي على C.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q113', 'exam_primary_2025_sciences_edu_jan', 113, 'علوم التربية', '"المنبوذ" في القياس السوسيومتري هو العضو الذي', false, '[{"id": "A", "text": "يخالف قيم الجماعة ومعتقداتها"}, {"id": "B", "text": "يحصل على أدنى تقييم في علاقاته مع بقية الأفراد"}, {"id": "C", "text": "يرفض معايير الجماعة التي ينتمي إليها"}, {"id": "D", "text": "يعمل على تحقيق أهدافه الشخصية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في القياس السوسيومتري (جاكوب مورينو)، يُقاس موقع الفرد داخل الجماعة بعدد الاختيارات الإيجابية والرفض التي يتلقاها؛ و"المنبوذ" هو العضو الذي يتلقى أكبر عدد من اختيارات الرفض وأدنى تقييم في علاقاته مع بقية أفراد الجماعة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q114', 'exam_primary_2025_sciences_edu_jan', 114, 'علوم التربية', 'بدأ "إدماج تكنولوجيا المعلومات والاتصالات في التعليم" في المدرسة المغربية مع', false, '[{"id": "A", "text": "الميثاق الوطني للتربية والتعليم"}, {"id": "B", "text": "المخطط الاستعجالي"}, {"id": "C", "text": "الرؤية الاستراتيجية 2015-2030"}, {"id": "D", "text": "خارطة طريق 2022-2026"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'انطلق التوجه الرسمي لإدماج تكنولوجيا المعلومات والاتصالات في المدرسة المغربية مع الميثاق الوطني للتربية والتعليم (1999) من خلال الدعامة العاشرة (استعمال التكنولوجيا الجديدة للإعلام والتواصل)، والتي تُرجمت عملياً ببرامج ومشاريع لإدماج التكنولوجيا في التعليم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q115', 'exam_primary_2025_sciences_edu_jan', 115, 'علوم التربية', 'تظهر عملية "التسامي"، حسب فرويد، في', false, '[{"id": "A", "text": "المرحلة القضيبية"}, {"id": "B", "text": "المرحلة الشرجية"}, {"id": "C", "text": "مرحلة الكمون"}, {"id": "D", "text": "المرحلة التناسلية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'في نظرية التحليل النفسي لسيغموند فرويد، تتميز مرحلة الكمون (من حوالي 6 إلى 12 سنة) بهدوء نسبي للدوافع الجنسية وتوجيه الطاقة الليبيدية عبر آلية التسامي/الإعلاء (Sublimation) نحو أنشطة مقبولة اجتماعياً كالتحصيل الدراسي، واللعب، والرياضة، والفنون، وبناء الصداقات.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q116', 'exam_primary_2025_sciences_edu_jan', 116, 'علوم التربية', 'تتم المصادقة على الموارد البيداغوجية الرقمية الرسمية من قبل', false, '[{"id": "A", "text": "المديرية العامة لتنظيم الحياة المدرسية"}, {"id": "B", "text": "مديرية الموارد البيداغوجية والرقمية"}, {"id": "C", "text": "المديرية العامة للتخطيط والموارد"}, {"id": "D", "text": "مديرية نُظُم المعلومات والتحول الرقمي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'بموجب الهيكلة التنظيمية الجديدة لقطاع التربية الوطنية والتعليم الأولي (المرسوم رقم 2.24.328 الصادر في 2 غشت 2024، المادة 12)، أُحدثت مديرية الموارد البيداغوجية والرقمية التابعة للمديرية العامة للعمل التربوي، وهي المكلفة بتحديد المعايير والمواصفات التقنية والبيداغوجية وتأطير وإنتاج واعتماد/المصادقة على الموارد البيداغوجية الرقمية (في حين تختص مديرية نظم المعلومات والتحول الرقمي بالبنية التحتية المعلوماتية والأنظمة الإدارية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'جواب مبني على المرسوم رقم 2.24.328 (2 غشت 2024، المادة 12)؛ mesconcours يعلّم هذا البند ⚠ (يحتاج تأكيداً من المرجع الرسمي). لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q117', 'exam_primary_2025_sciences_edu_jan', 117, 'علوم التربية', 'يحدث الوعي بالهوية الذاتية في نظر جوردن ألبورت (G. Allport)', false, '[{"id": "A", "text": "منذ الولادة إلى سنة ونصف"}, {"id": "B", "text": "ابتداء من عمر سنة ونصف"}, {"id": "C", "text": "ما بين سنتين وأربع سنوات"}, {"id": "D", "text": "مع بداية مرحلة المراهقة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في نظرية جوردن ألبورت حول نمو الذات (Proprium)، يتطور الإحساس بالذات الجسمية خلال الفترة الأولى (من الولادة إلى سنة ونصف)، ويظهر الوعي بالهوية الذاتية (Self-identity) ابتداءً من عمر سنة ونصف (حوالي 18 شهراً) حيث يبدأ الطفل عبر اللغة في إدراك اسمه وتمييز ذاته كشخص مستقل مستمر عبر الزمن، ثم يليه تقدير الذات (2–4 سنوات)، فالسعي الذاتي مع بداية المراهقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q118', 'exam_primary_2025_sciences_edu_jan', 118, 'علوم التربية', 'يختلف السيناريو البيداغوجي عن الجذاذة من حيث إنه', false, '[{"id": "A", "text": "يُلغي دور الكتاب المدرسي"}, {"id": "B", "text": "يقوم على تقنية لعب الأدوار"}, {"id": "C", "text": "يُدمج موارد رقمية"}, {"id": "D", "text": "يقتصر على الموارد الرقمية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'وفق الدليل البيداغوجي لإدماج تكنولوجيا المعلومات والاتصالات في التعليم، فإن السيناريو البيداغوجي هو تخطيط لوضعية تعليمية تعلمية يختلف أساساً عن الجذاذة التربوية التقليدية بكونه يدمج موارد رقمية وتقنيات تكنولوجية لخدمة الأهداف التعلمية، دون أن يُلغي الكتاب المدرسي أو يقتصر حصراً على الموارد الرقمية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q119', 'exam_primary_2025_sciences_edu_jan', 119, 'علوم التربية', 'يُسمي إ. إريكسون "عقدة أوديب" بـ', false, '[{"id": "A", "text": "العقدة الجيلية المبكرة"}, {"id": "B", "text": "العقدة الجيلية الثانوية"}, {"id": "C", "text": "العقدة الجيلية المتأخرة"}, {"id": "D", "text": "العقدة الجيلية البطيئة"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يفضّل إريك إريكسون تسمية "عقدة أوديب" بـ "العقدة الجيلية المبكرة" (Early generational complex)، لأنه ينظر إليها من منظور تطوري واجتماعي باعتبارها أول تجربة للطفل مع تعاقب الأجيال والنمو والاختلاف بين الأجيال.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q120', 'exam_primary_2025_sciences_edu_jan', 120, 'علوم التربية', 'عندما يبلور المدرس وضعية تعلّمية تستدعي من المتعلمين تعبئة معارفهم ومعلوماتهم ومهاراتهم وكفاياتهم وتجاربهم من أجل تمكينهم من حل مشكلة لم يسبق لهم مواجهتها. ما طبيعة هذا الإجراء؟', false, '[{"id": "A", "text": "تطبيقٌ"}, {"id": "B", "text": "تقويمٌ"}, {"id": "C", "text": "تدبيرٌ"}, {"id": "D", "text": "تعلّمٌ"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['E']::text[], 'الإجراء الموصوف — وهو بلورة وضعية تستدعي تعبئة الموارد (معارف، مهارات، كفايات، تجارب) لحل مشكلة جديدة — يسمى إدماجاً (Intégration) أو تحويلاً للتعلمات (Transfert)، كما أن فعل "بلورة الوضعية" من طرف المدرس يندرج ضمن التخطيط (Planification). وهو ليس مجرد تطبيق (الذي يتعلق بتمرين مألوف لقواعد مدروسة)، ولا تقويماً (لأن السؤال نص على أنها وضعية تعلمية للتمكين من الحل لا للحكم والقياس)، ولا تدبيراً، ولا تعلماً كإجراء يصدر عن المدرس. وبما أن "الإدماج / التحويل / التخطيط" غير واردة في الاختيارات، يكون الجواب الصحيح E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, 'خلاف بين المصدرين: ملف الحل يجيب E (الإجراء إدماج/تحويل للتعلمات، والوضعية «تعلّمية» لا تقويمية)، وmesconcours يجيب B (تقويم الكفاية بوضعية مركبة جديدة). أُبقي على E.')
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q121
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q121', 'exam_primary_2025_sciences_edu_jan', 121, 'علوم التربية', 'العنصر الذي يسمح بالتحقق من تنفيذ المهمة المقترحة وتوافق مُنتَج النشاط مع ما كان يُفترض الحصول عليه هو', false, '[{"id": "A", "text": "ملاحظةٌ"}, {"id": "B", "text": "معيارٌ"}, {"id": "C", "text": "مؤشّرٌ"}, {"id": "D", "text": "تنقيطٌ"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'هذا التعريف هو ترجمة حرفية لتعريف المعيار (Critère) لدى البيداغوجي فيليب ميريو (Philippe Meirieu, 1991): "هو العنصر الذي يسمح للذات بالتحقق من أنها أنجزت المهمة المقترحة على النحو المطلوب، ومن أن منتَج نشاطها متوافق مع ما كان يُفترض تحقيقه" (أما المؤشر فهو العلامة الملموسة الجزئية التي تُؤجرئ المعيار).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q122
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q122', 'exam_primary_2025_sciences_edu_jan', 122, 'علوم التربية', 'في علاج الاضطرابات النفسية يقترح كارل روجرز (K. Rogers) أسلوب', false, '[{"id": "A", "text": "العلاج الموجه"}, {"id": "B", "text": "المشاركة التفاعلية"}, {"id": "C", "text": "العلاج غير المُوجّه"}, {"id": "D", "text": "التداعي المنظم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'يُعد كارل روجرز (رائد المدرسة الإنسانية) مؤسس أسلوب العلاج غير المُوجَّه (Non-directive therapy) أو ما يُعرف بالعلاج المتمركز حول العميل/الشخص، حيث يثق المعالج في قدرة الفرد على النمو الذاتي وحل مشكلاته بنفسه.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q123
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q123', 'exam_primary_2025_sciences_edu_jan', 123, 'علوم التربية', 'من الخصائص الأساسية للنمو، حسب جيزيل (Gesell)، أنه يحدث ويتطور عبر', false, '[{"id": "A", "text": "تفاعل الفرد مع البيئة"}, {"id": "B", "text": "مراحل متقطعة"}, {"id": "C", "text": "تفاعلات جينية"}, {"id": "D", "text": "تتابع ثابت"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'وفق نظرية النضج لأرنولد جيزيل (Arnold Gesell)، فإن إحدى أبرز الخصائص الأساسية للنمو والنضج البيولوجي أنه يحدث ويتطور عبر تتابع ثابت ومنتظم لا يتغير ترتيبه لدى جميع الأطفال (مثل الجلوس قبل الوقوف، والوقوف قبل المشي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q124
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q124', 'exam_primary_2025_sciences_edu_jan', 124, 'علوم التربية', 'أسس ب. بورديو نظريته حول "إعادة الإنتاج" بالاعتماد أساسا على المنهج', false, '[{"id": "A", "text": "الفينومينولوجي"}, {"id": "B", "text": "الكيفي"}, {"id": "C", "text": "الإحصائي"}, {"id": "D", "text": "التاريخي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['C']::text[], 'استند بيير بورديو (رفقة جان كلود باسرون) في بناء نظريته حول "إعادة الإنتاج" (La Reproduction) و"الورثة" على المنهج الإحصائي الكمي (إحصاءات نسب النجاح والرسوب وولوج الجامعات حسب الانتماء الطبقي والمهني للآباء) لإثبات كيف تُعيد المدرسة إنتاج التفاوتات الاجتماعية.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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

-- أسئلة امتحان: امتحان علوم التربية (دورة يناير 2025) — Q125
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_edu_jan_q125', 'exam_primary_2025_sciences_edu_jan', 125, 'علوم التربية', 'في "صنافة بلوم" ما هو المستوى الذي تستخدم فيه المعارف في وضعيات ملموسة؟', false, '[{"id": "A", "text": "التقويم"}, {"id": "B", "text": "التطبيق"}, {"id": "C", "text": "التحليل"}, {"id": "D", "text": "التركيب"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'في صنافة بلوم للمجال المعرفي (المعرفة، الفهم، التطبيق، التحليل، التركيب، التقويم)، يُقصد بمستوى التطبيق (Application) قدرة المتعلم على استخدام المعارف والقواعد والمفاهيم والمبادئ المكتسبة في وضعيات جديدة وملموسة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/112y3HwVT_9Ky9V1iAU2et-GxvExAM3tC', true, NULL)
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
