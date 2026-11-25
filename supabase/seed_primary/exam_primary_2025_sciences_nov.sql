-- ====================================================================
-- مباراتي — امتحان العلوم — مادة التخصص (دورة نونبر 2025)
-- ====================================================================
-- المصدر: ملف الحل solved/2025/العلوم - مادة التخصص - دورة نونبر 2025.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/العلوم - مادة التخصص - دورة نونبر 2025.pdf.
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q91 إلى Q120 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان،
--     باستثناء الأسئلة المتخطاة أدناه.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل، بما فيها علامات المراجع [1]-[28] حيث وردت؛
--     التفاف الأسطر في ملف الحل جُمع بفواصل (مسافة واحدة) دون تغيير الكلمات.
--   * علامات قلم مرشح سابق (✓) على ورقة الامتحان أُهملت تماماً — ليست مفتاح تصحيح.
--
-- ملاحظات عن ملف الامتحان:
--   * المدة (60 دقيقة) والمعامل (2) مأخوذان من غلاف ورقة الامتحان نفسها.
--     (لا يوجد عمود للمعامل في جدول exams، فسُجل هنا وفي ملف التقدم فقط.)
--   * أسئلة متخطاة (4 من أصل 30 سؤالاً في الامتحان):
--       - Q99: السؤال غير موجود في ملف PDF — الصفحة 5 من 14 مفقودة من الملف الأصلي
--       - Q100: السؤال غير موجود في ملف PDF — الصفحة 5 من 14 مفقودة من الملف الأصلي
--       - Q101: لا يوجد جواب في ملف الحل — الوثيقة 3 (Document 3) في الصفحة 5 المفقودة من ملف PDF
--       - Q102: لا يوجد جواب في ملف الحل — الوثيقة 3 (Document 3) في الصفحة 5 المفقودة من ملف PDF
--     عدد الأسئلة المُدرجة في هذا الملف: 26 (questions_count = 26).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_sciences_nov', 'specialty_primary', 2025, 'sciences', 'مادة التخصص: العلوم', 'امتحان العلوم — مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 60, 26)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (26 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q91
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q91', 'exam_primary_2025_sciences_nov', 91, 'البيولوجيا', 'La cellule végétale se distingue de la cellule animale par la présence de :', false, '[{"id": "A", "text": "Membrane plasmique, des mitochondries et une petite vacuole."}, {"id": "B", "text": "Chloroplaste, paroi cellulosique et une petite vacuole."}, {"id": "C", "text": "Membrane plasmique, des centrioles et une grande vacuole."}, {"id": "D", "text": "Chloroplaste, paroi cellulosique et une grande vacuole."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'يشترك النوعان من الخلايا في وجود الغشاء السيتوبلازمي والميتوكوندريات والنواة، بينما تنفرد الخلية الحيوانية بالمريكزات (centrioles). أما الخلية النباتية فتتميز أساساً بوجود البلاستيدات الخضراء (Chloroplastes) المسؤولة عن التركيب الضوئي، وجدار هيكلي سليلوزي (Paroi cellulosique)، وفجوة كبيرة (Grande vacuole).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q92
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q92', 'exam_primary_2025_sciences_nov', 92, 'البيولوجيا', 'La glycolyse d''une molécule de glucose permet la formation de :', false, '[{"id": "A", "text": "L''acide lactique, l''ATP et le NADH, H+."}, {"id": "B", "text": "L''acide pyruvique, l''ATP et le NADH, H+."}, {"id": "C", "text": "L''acide lactique, le CO2 et l''ATP."}, {"id": "D", "text": "L''acide pyruvique, le CO2 et l''ATP."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'انحلال الكليكوز (La glycolyse) مرحلة تحدث في الجبلة الشفافة وتؤدي إلى هدم جزيئة واحدة من الكليكوز لإنتاج جزيئتين من حمض البيروفيك (Acide pyruvique)، وجزيئتين من ATP، وجزيئتين من النواقل المختزلة NADH, H+ (دون طرح CO2 أو إنتاج حمض لبني).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q93
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q93', 'exam_primary_2025_sciences_nov', 93, 'البيولوجيا', 'L''oxydation de NADH, H+ en NAD+ s''effectue au cours de :', false, '[{"id": "A", "text": "La réduction de l''acide pyruvique et des réactions de la chaîne respiratoire."}, {"id": "B", "text": "L''oxydation de l''acide pyruvique et des réactions de la chaîne respiratoire."}, {"id": "C", "text": "La réduction de l''acide pyruvique et des réactions du cycle de Krebs."}, {"id": "D", "text": "L''oxydation de l''acide pyruvique et des réactions du cycle de Krebs."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'تتم أكسدة NADH, H+ إلى NAD+ في حالتين: خلال تفاعلات السلسلة التنفسية (Chaîne respiratoire) على مستوى الغشاء الداخلي للميتوكوندري (التنفس الخلوي). خلال اختزال حمض البيروفيك (Réduction de l''acide pyruvique) إلى حمض لبني أو إيثانول (التخمر)، حيث تتأكسد النواقل NADH, H+ لتجديد NAD+. (أما خلال أكسدة حمض البيروفيك ودورة كريبس فيحدث العكس، أي اختزال NAD+ إلى NADH, H+).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q94
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q94', 'exam_primary_2025_sciences_nov', 94, 'البيولوجيا', 'Les éléments qui correspondent à la légende du document 1 sont :', false, '[{"id": "A", "text": "1-Trompe ; 2-Pavillon ; 3-Vessie ; 4-Utérus ; 5-Vulve ; 6-Ovaire ; 7-Urètre ; 8-col de l''utérus ; 9-Vagin."}, {"id": "B", "text": "1-Pavillon ; 2-Trompe ; 3-Vessie ; 4-Utérus ; 5-Vulve ; 6-Ovaire ; 7-Urètre ; 8-col de l''utérus ; 9-Vagin."}, {"id": "C", "text": "1-Trompe ; 2-Pavillon ; 3-Vessie ; 4-Urètre ; 5-Vulve ; 6-Ovaire ; 7-Utérus ; 8-Vagin ; 9-col de l''utérus."}, {"id": "D", "text": "1-Pavillon ; 2-Trompe ; 3-Vessie ; 4-Urètre ; 5-Vulve ; 6-Ovaire ; 7-Utérus ; 8-col de l''utérus ; 9-Vagin."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'بقراءة الأسهم في الوثيقة 1 (مقطع جانبي للجهاز التناسلي الأنثوي): 1 : الصيوان (Pavillon) ذو الأهداب المحيط بالمبيض. 2 : قناة فالوب/الخرطوم (Trompe). 3 : المثانة البولية (Vessie). 4 : الإحليل (Urètre) الممتد من المثانة إلى الخارج. 5 : الفرج (Vulve). 6 : المبيض (Ovaire). 7 : الرحم (Utérus). 8 : عنق الرحم (Col de l''utérus). 9 : المهبل (Vagin).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q95
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q95', 'exam_primary_2025_sciences_nov', 95, 'البيولوجيا', 'Le cycle ovarien est divisé en deux phases, la phase folliculaire et la phase lutéale :', false, '[{"id": "A", "text": "La phase folliculaire correspond à la période du 15ème au 28ème jours dans un cycle ovarien de 28 jours."}, {"id": "B", "text": "La phase folliculaire a lieu après les menstruations et se termine par l''ovulation."}, {"id": "C", "text": "La phase lutéale correspond à la période du 1er au 14ème jours dans un cycle ovarien de 28 jours."}, {"id": "D", "text": "La phase lutéale a lieu après les menstruations et se termine par l''ovulation."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'الاختياران A وC خاطئان تماماً لأنهما يعكسان الفترتين (المرحلة الجريبية تمتد من اليوم 1 إلى 14، والمرحلة الجسفرونية من اليوم 15 إلى 28)، والاختيار D خاطئ لأن المرحلة الجسفرونية تأتي بعد الإباضة. وبمقارنة بنية الاختيارين B وD يتبين أن الجواب المقصود في الامتحان هو B (المرحلة الجريبية تنتهي بالإباضة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, 'ملاحظة علمية دقيقة: علمياً تبدأ المرحلة الجريبية في المبيض منذ اليوم الأول للحيض (أثناء الحيض) وتستمر بعده إلى غاية الإباضة (اليوم 14)، بينما المرحلة التي تبدأ بعد الحيض هي المرحلة التكاثرية في الدورة الرحمية؛ غير أن كثيراً من المراجع المدرسية المبسطة تصيغ العبارة كما وردت في B.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q96
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q96', 'exam_primary_2025_sciences_nov', 96, 'البيولوجيا', 'Le placenta est un organe d''origine :', false, '[{"id": "A", "text": "Maternelle, il joue un rôle de filtre et sécrète les œstrogènes et la progestérone."}, {"id": "B", "text": "Fœtale, il joue un rôle de filtre et sécrète les œstrogènes et la progestérone."}, {"id": "C", "text": "Maternelle, il assure les échanges entre le fœtus et sa mère et sécrète les œstrogènes."}, {"id": "D", "text": "Fœtale, il assure les échanges entre le fœtus et sa mère et sécrète la progestérone."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'المشيمة (Le placenta) عضو مؤقت ذو أصل جنيني (Fœtale) يتشكل أساساً من الأرومة المغذية للجنين (trophoblaste) بتماس مع مخاطية الرحم، وتلعب دور مصفاة انتقائية (Rôle de filtre) لتبادل المواد بين دم الأم ودم الجنين، كما تعمل كغدة صماء تفرز هرموني الأستروجين والجسفرون (Œstrogènes et progestérone) للحفاظ على الحمل (بينما يقتصر الاختيار D على الجسفرون فقط).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q97
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q97', 'exam_primary_2025_sciences_nov', 97, 'البيولوجيا', 'Parmi les contraceptifs physiques qui permettent de limiter le risque de grossesse on trouve :', false, '[{"id": "A", "text": "Le préservatif, le diaphragme et le patch contraceptif."}, {"id": "B", "text": "Le diaphragme, la pilule et le patch contraceptif."}, {"id": "C", "text": "Le préservatif, le diaphragme et le stérilet."}, {"id": "D", "text": "Le diaphragme, le stérilet et la pilule."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'وسائل منع الحمل الفيزيائية/الميكانيكية هي: العازل الطبي (Préservatif)، والحجاب الواقي (Diaphragme)، واللولب (Stérilet). أما حبوب منع الحمل (La pilule) واللصاقة المانعة للحمل (Patch contraceptif) فهي وسائل كيميائية (هرمونية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q98
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q98', 'exam_primary_2025_sciences_nov', 98, 'البيولوجيا', 'Concernant les différentes modalités de la multiplication végétative : (Document 2 : 1-Le greffage, 2-Le bouturage, 3-Le marcottage, 4-Les tubercules)', false, '[{"id": "A", "text": "1 et 2 sont naturelles ; 3 et 4 sont artificielles."}, {"id": "B", "text": "1 et 3 sont artificielles ; 2 et 4 sont naturelles."}, {"id": "C", "text": "1 et 4 sont artificielles ; 2 et 3 sont naturelle."}, {"id": "D", "text": "2 et 3 sont artificielles ; 1 et 4 sont naturelles."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'بالاعتماد على الوثيقة 2: 1 (التطعيم / Le greffage)، 2 (الافتسال / Le bouturage باستخدام المقص)، و3 (الترقيد / Le marcottage باستخدام وتد وقطع) كلها طرق اصطناعية (Artificielles) تتدخل فيها يد الإنسان. 4 (الدرنات / Les tubercules عند البطاطس) هي الوحيدة الطبيعية (Naturelle). وبما أن الاختيارات A وB وC وD كلها خاطئة (A وD تعتبران التطعيم طبيعياً، وB تعتبر الافتسال طبيعياً، وC تعتبر الدرنات اصطناعية)، فإن الجواب الصحيح هو E. Q99 و Q100 : غير موجودين في الملف المرفق بسبب نقص الصفحة 5 من 14.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q103
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q103', 'exam_primary_2025_sciences_nov', 103, 'الجيولوجيا', 'Les noms qui correspondent aux étapes représentées dans le document 4 sont :', false, '[{"id": "A", "text": "1 : Érosion ; 2 : Transport ; 3 : Diagenèse ; 4 : Métamorphisme ; 5 : Cristallisation ; 6 : Fusion."}, {"id": "B", "text": "1 : Érosion ; 2 : Diagenèse ; 3 : Transport ; 4 : Métamorphisme ; 5 : Fusion ; 6 : Cristallisation."}, {"id": "C", "text": "1 : Érosion ; 2 : Transport ; 3 : Diagenèse ; 4 : Cristallisation ; 5 : Métamorphisme ; 6 : Fusion."}, {"id": "D", "text": "1 : Érosion ; 2 : Diagenèse ; 3 : Transport ; 4 : Cristallisation ; 5 : Fusion ; 6 : Métamorphisme."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بتتبع الأسهم في دورة الصخور (الوثيقة 4): 1 و2 : تفتيت الصخور ونقلها لتكوين الرواسب ← الحث (Érosion) ثم النقل (Transport). 3 : تحول الرواسب (Sédiments) إلى صخور رسوبية (Roches sédimentaires) ← التصخر (Diagenèse). 4 : تحول الصخور الرسوبية أو الصهارية إلى صخور متحولة ← التحول (Métamorphisme). 5 : سهم نازل من الصهارة (Magma) نحو الصخور الصهارية (Roches ignées) ← التبلور (Cristallisation). 6 : سهمان صاعد/داخل نحو الصهارة من الصخور المتحولة والصهارية ← الانصهار (Fusion).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q104
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q104', 'exam_primary_2025_sciences_nov', 104, 'الجيولوجيا', 'Selon leur origine :', false, '[{"id": "A", "text": "Le gypse et le phosphate sont des roches biochimiques, alors que le grès et l''argilite sont des roches détritiques."}, {"id": "B", "text": "Le sel gemme et l''anthracite sont des roches chimiques, alors que le grès et la craie sont des roches biochimiques."}, {"id": "C", "text": "Le pétrole et l''anthracite sont des roches biochimiques, alors que le grès et l''argilite sont des roches détritiques."}, {"id": "D", "text": "La craie et l''anthracite sont des roches détritiques alors que le grès et l''argilite sont des roches biochimiques."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'البترول (Pétrole) والأنتراسيت (Anthracite - نوع من الفحم) صخور رسوبية ذات أصل بيوكيميائي/عضوي (Biochimiques). الحجر الرملي (Grès) والطين الصخري (Argilite) صخور رسوبية حتاتية (Détritiques). (أما الجبس Le gypse والملح الصخري Le sel gemme فهما صخور كيميائية وليست بيوكيميائية، مما يبطل A وB).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q105
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q105', 'exam_primary_2025_sciences_nov', 105, 'الفلك الوصفي', 'Les planètes telluriques (Tell) et gazeuses (Gaz) sont constituées respectivement par :', false, '[{"id": "A", "text": "Tell : Jupiter, Mars, Mercure, Neptune ; Gaz : Saturne, Terre, Uranus et Vénus."}, {"id": "B", "text": "Tell : Mars, Mercure, Terre, Vénus ; Gaz : Jupiter, Neptune, Saturne, Uranus."}, {"id": "C", "text": "Tell : Jupiter, Mars, Mercure, Vénus ; Gaz : Neptune, Saturne, Terre, Uranus."}, {"id": "D", "text": "Tell : Mars, Mercure, Saturne, Uranus ; Gaz : Jupiter, Neptune, Terre, Vénus."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'من خلال الوثيقتين 5 و6، تنقسم كواكب المجموعة الشمسية إلى مجموعتين: الكواكب الصخرية (Telluriques): ذات كثافة عالية (4 إلى 5,5 g/cm³) وشعاع صغير، وهي: عطارد (Mercure)، الزهرة (Vénus)، الأرض (Terre)، المريخ (Mars). الكواكب الغازية/العملاقة (Gazeuses): ذات كثافة ضعيفة (0,7 إلى 1,7 g/cm³) وشعاع كبير، وهي: المشتري (Jupiter)، زحل (Saturne)، أورانوس (Uranus)، نبتون (Neptune).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q106
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q106', 'exam_primary_2025_sciences_nov', 106, 'الفلك الوصفي', 'De toutes les planètes, la terre est :', false, '[{"id": "A", "text": "La plus dense et la plus grosse."}, {"id": "B", "text": "La plus dense et la plus petite."}, {"id": "C", "text": "La moins dense et la plus grosse."}, {"id": "D", "text": "La moins dense et la plus petite."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'حسب الوثيقة 5: الأرض هي فعلاً الأكثر كثافة (حوالي 5,5 g/cm³). حسب الوثيقة 6: الأرض ليست الأكبر (الأكبر هو المشتري) وليست الأصغر (الأصغر هو عطارد). إذن لا يوجد أي اختيار صحيح من A إلى D، والجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q107
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q107', 'exam_primary_2025_sciences_nov', 107, 'تنظيم المادة', 'Dans la nature, le dihydrogène (H2) et le dioxygène (O2) se trouvent respectivement à :', false, '[{"id": "A", "text": "L''état gazeux et à l''état liquide."}, {"id": "B", "text": "L''état liquide et à l''état gazeux."}, {"id": "C", "text": "L''état solide et à l''état liquide."}, {"id": "D", "text": "L''état gazeux et à l''état solide."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'في الظروف الطبيعية العادية، يوجد كل من ثنائي الهيدروجين (H2) وثنائي الأوكسجين (O2) في الحالة الغازية معاً (à l''état gazeux et à l''état gazeux)، وهو ما لا يتضمنه أي من الاختيارات A وB وC وD.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q108
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q108', 'exam_primary_2025_sciences_nov', 108, 'تنظيم المادة', 'La formation de H2 et de O2 par électrolyse de H2O est une transformation :', false, '[{"id": "A", "text": "Physique qui s''accompagne d''un dégagement d''énergie."}, {"id": "B", "text": "Chimique qui s''accompagne d''un dégagement d''énergie."}, {"id": "C", "text": "Physique qui s''accompagne d''une absorption d''énergie."}, {"id": "D", "text": "Chimique qui s''accompagne d''une absorption d''énergie."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'التحليل الكهربائي للماء يؤدي إلى اختفاء مادة (H2O) وظهور مواد جديدة (H2 وO2) فهو تحول كيميائي. ولكي يحدث هذا التحول لا بد من تزويده بطاقة كهربائية من المولد (الوثيقة 7)، أي أنه يُصاحَب بامتصاص للطاقة (Absorption d''énergie).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q109
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q109', 'exam_primary_2025_sciences_nov', 109, 'تنظيم المادة', 'Les masses respectives obtenues de H2 et de O2 par l''électrolyse de 3,6 Kg d''eau sont :', false, '[{"id": "A", "text": "m(H2) = 0.4 Kg et m(O2) = 3.2 Kg."}, {"id": "B", "text": "m(H2) = 3.2 Kg et m(O2) = 0.4 Kg."}, {"id": "C", "text": "m(H2) = 1.4 Kg et m(O2) = 2.2 Kg."}, {"id": "D", "text": "m(H2) = 2.2 Kg et m(O2) = 1.4 Kg."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'وفق المعادلة H2O ⟶ H2 + 1/2 O2 والمعطيات (M(H2O) = 18, M(H2) = 2, M(O2) = 32 g/mol): كمية مادة الماء المتحلل: n(H2O) = m(H2O)/M(H2O) = 3600 g / 18 g/mol = 200 mol كتلة H2 المتكون: n(H2) = n(H2O) = 200 mol ⟹ m(H2) = 200 × 2 = 400 g = 0,4 kg كتلة O2 المتكون: n(O2) = 1/2 n(H2O) = 100 mol ⟹ m(O2) = 100 × 32 = 3200 g = 3,2 kg (نلاحظ تحقق قانون انحفاظ الكتلة: 0,4 + 3,2 = 3,6 kg).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q110
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q110', 'exam_primary_2025_sciences_nov', 110, 'الانتقال الحراري', 'Les modes de transfert thermique entre ces deux systèmes sont : (Deux systèmes éloignés l''un de l''autre)', false, '[{"id": "A", "text": "La conduction et la convection."}, {"id": "B", "text": "La conduction et le rayonnement."}, {"id": "C", "text": "La conduction, la convection et le rayonnement."}, {"id": "D", "text": "La convection et le rayonnement."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'بما أن المجموعتين متباعدتان عن بعضهما (éloignés l''un de l''autre) أي غير متلامستين مباشرة، فإن التوصيل الحراري (La conduction) مستبعد لأنه يتطلب تماساً مادياً مباشراً. ويبقى الانتقال الحراري عن بُعد ممكناً عبر الحمل الحراري (La convection) (بواسطة المائع الفاصل بينهما كالهواء) والإشعاع (Le rayonnement).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q111', 'exam_primary_2025_sciences_nov', 111, 'الكهرباء والمغناطيسية', 'Les objets suivants appartiennent à la même famille : (Document 9)', false, '[{"id": "A", "text": "Fil en cuivre, Baguette en verre, Mine de crayon à papier."}, {"id": "B", "text": "Mine de crayon, Feuille de papier, Bâton en plastique."}, {"id": "C", "text": "Fil en cuivre, Feuille de papier, Baguette en verre."}, {"id": "D", "text": "Feuille de papier, Bâton en plastique, Baguette en verre."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'حسب الوثيقة 9، تنقسم الأجسام المختبرة إلى عائلتين: الموصلات (المصباح مضاء): سلك النحاس (Fil en cuivre)، رصاص القلم/الغرافيت (Mine de crayon à papier). العوازل (المصباح منطفئ): ورقة (Feuille de papier)، قضيب بلاستيكي (Bâton en plastique)، قضيب زجاجي (Baguette en verre). إذن الأجسام الثلاثة في الاختيار D تنتمي جميعها لنفس العائلة (العوازل الكهربائية).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q112', 'exam_primary_2025_sciences_nov', 112, 'الكهرباء والمغناطيسية', 'Cette diode est un dipôle : (Document 10)', false, '[{"id": "A", "text": "Passif et linéaire."}, {"id": "B", "text": "Actif et linéaire."}, {"id": "C", "text": "Passif et non linéaire."}, {"id": "D", "text": "Actif et non linéaire."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'من الوثيقة 10: يمر المنحنى المميز للصمام الثنائي من أصل المعلم (0;0)، فهو ثنائي قطب خامل (Passif). المنحنى المميز ليس عبارة عن خط مستقيم، فهو غير خطي (Non linéaire).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q113', 'exam_primary_2025_sciences_nov', 113, 'الكهرباء والمغناطيسية', 'Dans le système international l''intensité du courant, la tension et la résistance s''expriment respectivement en :', false, '[{"id": "A", "text": "A, mV et mΩ."}, {"id": "B", "text": "mA, mV et Ω."}, {"id": "C", "text": "mA, V et mΩ."}, {"id": "D", "text": "A, mV et mΩ."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'في النظام العالمي للوحدات (SI)، يُعبَّر على التوالي عن شدة التيار بـ الأمبير (A)، والتوتر بـ الفولط (V)، والمقاومة بـ الأوم (Ω). وبما أن هذه الثلاثية (A, V, Ω) غير موجودة في أي اختيار من A إلى D، فالجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, 'الخياران A وD متطابقان في ورقة الامتحان (كلاهما «A, mV et mΩ»)؛ الثلاثية الصحيحة في النظام العالمي (A, V, Ω) غير واردة في أي اختيار.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q114', 'exam_primary_2025_sciences_nov', 114, 'الكهرباء والمغناطيسية', 'Au point M, l''intensité du courant électrique (IM) qui circule dans la diode, la tension (UM) entre ses bornes et sa résistance statique (RSM) sont :', false, '[{"id": "A", "text": "IM = 0.02 A ; UM = 680 mV et RSM = 34 Ω."}, {"id": "B", "text": "IM = 20.00 mA ; UM = 685 mV et RSM = 34 mΩ."}, {"id": "C", "text": "IM = 20.00 mA ; UM = 0.680 V et RSM = 43 mΩ."}, {"id": "D", "text": "IM = 0,02 A ; UM = 0.680 V et RSM = 430 Ω."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بقراءة إحداثيات النقطة M من الوثيقة 10 (حيث كل تدريجة صغيرة على محور التوتر تساوي 0,02 V): IM = 20 mA = 0,02 A UM = 0,68 V = 680 mV المقاومة الساكنة (Résistance statique) عند النقطة M: RSM = UM/IM = 0,68 V / 0,02 A = 34 Ω', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q115', 'exam_primary_2025_sciences_nov', 115, 'الكهرباء والمغناطيسية', 'Les bornes de chacun des dipôles D1 et D2 sont respectivement : (Document 11)', false, '[{"id": "A", "text": "Identiques et identiques."}, {"id": "B", "text": "Identiques et non identiques."}, {"id": "C", "text": "Non identiques et identiques."}, {"id": "D", "text": "Non identiques et non identiques."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'من خلال المنحنيين في الوثيقة 11: مميزة D1 مستقيم لا يمر من الأصل (0,0) وغير متماثل بالنسبة للأصل (ثنائي قطب نشيط/مولد ومستقطب) ← إذن مربطاه غير متماثلين (Non identiques) (قطب موجب وآخر سالب). مميزة D2 مستقيم يمر من الأصل (0,0) ومتماثل بالنسبة للأصل (موصل أومي خامل وغير مستقطب) ← إذن مربطاه متماثلان (Identiques).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q116
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q116', 'exam_primary_2025_sciences_nov', 116, 'الكهرباء والمغناطيسية', 'L''étude des propriétés magnétiques de ces roches montre que : (Hématite et Fluorite)', false, '[{"id": "A", "text": "La roche d''hématite n''attire pas le fer et la roche de fluorite attire le fer."}, {"id": "B", "text": "La roche d''hématite attire le fer et la roche de fluorite attire le fer."}, {"id": "C", "text": "La roche d''hématite n''attire pas le fer et la roche de fluorite attire le fer."}, {"id": "D", "text": "La roche d''hématite attire le fer et la roche de fluorite n''attire pas le fer."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'بالاستناد إلى المعطى الصريح في نص السؤال 14 (حيث عرّف المغناطيس بأنه جسم يجذب بعض الأجسام ومكوّن من عناصر فيرومغناطيسية كالحديد، ثم أوضح أن صخرة الهيماتيت معدن للحديد بينما صخرة الفلوريت خالية من العناصر الفيرومغناطيسية)، فإن الاستنتاج المقصود مباشرة من النص هو أن صخرة الهيماتيت تجذب الحديد وصخرة الفلوريت لا تجذب الحديد.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, 'الخياران A وC متطابقان في ورقة الامتحان (كلاهما: الهيماتيت لا تجذب الحديد والفلوريت تجذب الحديد). ملاحظة علمية: في علم المعادن الدقيق، المغنتيت Fe3O4 هو المغناطيس الطبيعي القوي بينما الهيماتيت الطبيعي Fe2O3 مغناطيسيته ضعيفة جداً ما لم يُمغنط، لكن صياغة نص السؤال وتكرار A وC يؤكدان أن الجواب المعتمد في التصحيح هو D.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q117
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q117', 'exam_primary_2025_sciences_nov', 117, 'البصريات والرؤية', 'La lecture des figures du document 12 montrent que :', false, '[{"id": "A", "text": "La lentille (L1) est divergente et la lentille (L2) est divergente."}, {"id": "B", "text": "La lentille (L1) est convergente et la lentille (L2) est divergente."}, {"id": "C", "text": "La lentille (L1) est divergente et la lentille (L2) est convergente."}, {"id": "D", "text": "La lentille (L1) est convergente et la lentille (L2) est convergente."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'من الوثيقة 12: في العدسة (L1): الشعاع الوارد الموازي للمحور البصري ينحرف مقترباً من المحور البصري ويقطعه في البؤرة الرئيسية الصورة الحقيقية (B) ← إذن (L1) عدسة مجمعة (Convergente). في العدسة (L2): الشعاع الوارد الموازي للمحور البصري ينحرف مبتعداً عن المحور البصري وامتداده الخلفي المتقطع يمر من النقطة (A) ← إذن (L2) عدسة مفرقة (Divergente).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q118
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q118', 'exam_primary_2025_sciences_nov', 118, 'البصريات والرؤية', 'On éclaire par une lumière monochromatique bleue deux corps C1 et C2 qui absorbent respectivement les couleurs rouges et jaune uniquement.', false, '[{"id": "A", "text": "C1 apparaît rouge et C2 apparaît bleu."}, {"id": "B", "text": "C1 apparaît bleu et C2 apparaît bleu."}, {"id": "C", "text": "C1 apparaît rouge et C2 apparaît jaune."}, {"id": "D", "text": "C1 apparaît bleu et C2 apparaît jaune."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'الجسم C1 يمتص اللون الأحمر فقط، إذن فهو لا يمتص اللون الأزرق؛ وعند إضاءته بضوء أحادي اللون أزرق فإنه يشتت اللون الأزرق ويظهر أزرق. الجسم C2 يمتص اللون الأصفر فقط، إذن فهو لا يمتص اللون الأزرق؛ وعند إضاءته بضوء أحادي اللون أزرق فإنه يشتت اللون الأزرق ويظهر كذلك أزرق.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q119
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q119', 'exam_primary_2025_sciences_nov', 119, 'مفاهيم في الصوتيات', 'Le son se déplace :', false, '[{"id": "A", "text": "Plus rapidement dans le liquide que dans l''eau glace."}, {"id": "B", "text": "Plus rapidement dans l''eau vapeur que dans l''eau glace."}, {"id": "C", "text": "Plus rapidement dans l''eau vapeur que dans l''eau liquide."}, {"id": "D", "text": "Plus rapidement dans l''eau glace que dans l''eau vapeur."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'كلما كانت انضغاطية الوسط أقل (أي أكثر صلابة وتقارباً بين الجزيئات) زادت سرعة انتشار الصوت، وبالتالي فإن ترتيب السرعات هو: v(صلب/جليد) > v(سائل/ماء سائل) > v(غاز/بخار الماء). إذن ينتقل الصوت في الجليد أسرع منه في بخار الماء.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان العلوم — مادة التخصص (دورة نونبر 2025) — Q120
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_sciences_nov_q120', 'exam_primary_2025_sciences_nov', 120, 'مفاهيم في الصوتيات', 'Les milieux M1, M2 et M3 sont respectivement : (Document 13 : M1 = 1500 m/s, M2 = 346 m/s, M3 = 4660 m/s)', false, '[{"id": "A", "text": "L''air, le cuivre et l''eau de mer."}, {"id": "B", "text": "Le cuivre, l''air et l''eau de mer."}, {"id": "C", "text": "L''eau de mer, le cuivre et l''air."}, {"id": "D", "text": "L''eau de mer, l''air et le cuivre."}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'اعتماداً على نفس القاعدة (v(غاز) < v(سائل) < v(صلب)) والقيم المرجعية عند 25°C: M1 = 1500 m/s ← وسط سائل: ماء البحر (L''eau de mer). M2 = 346 m/s ← وسط غازي: الهواء (L''air). M3 = 4660 m/s ← وسط صلب: النحاس (Le cuivre).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1K5iMajVHhidgEBabLhLU6Ml1SqNF1o1c', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
