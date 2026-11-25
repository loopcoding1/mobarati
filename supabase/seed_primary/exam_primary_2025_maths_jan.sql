-- ====================================================================
-- مباراتي — الرياضيات، مادة التخصص، دورة يناير 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/الرياضيات - مادة التخصص - دورة يناير 2025.md
--   (سجل الامتحانات رقم 47؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/الرياضيات - مادة التخصص.pdf (10 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q61 إلى Q90 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد المادة ونص الامتحان ووثائقه؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * التعليلات منقولة من ملف الحل (مع توحيد المسافات البيضاء في سطر واحد).
--
-- ملاحظات عن ملف الامتحان:
--   * الغلاف (صفحة 1/10) في ملف PDF نفسه: المدة ساعة واحدة، المعامل 6،
--     30 سؤالاً من Q61 إلى Q90، تنقيط: +1 للجواب الصحيح، 0 للملغى، −1 للجواب الخاطئ.
--   * المدة والمعامل مؤكَّدان أيضاً بالإعلان الرسمي للوزارة عن مباراة يناير 2025
--     (التخصص المزدوج: الرياضيات 60 دقيقة، المعامل 6).
--   * Q62: نص السؤال في الورقة هو (√10/8)² وليس (10/8)² كما ورد في ملف الحل — صُحح أعلاه.
--   * Q66 ناقص الصياغة رياضياً (المقسوم عليه d غير وحيد)؛ الجواب الدقيق E، مع ملاحظة أن
--     واضع الامتحان رجّح أن يفترض d = 23 فيكون الجواب D (الباقي 1).
--   * الأسئلة المعتمدة على الأشكال (Q70، Q79–Q83، Q85–Q87، Q90) رُوجعت على رسوم الورقة
--     مباشرة؛ والأشكال نفسها غير مرفقة في قاعدة البيانات (نص السؤال والتعليل يصفانها).
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--
-- تسمية المعرفات (اتفاقية ثابتة للامتحانات الـ42 المتبقية):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_jan
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_maths_jan', 'specialty_primary', 2025, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة يناير 2025)', 'دورة يناير 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q61', 'exam_primary_2025_maths_jan', 61, 'Calcul numérique', 'On pose : G = (2 + 1/4) / (3 − 3/4) − 1/4 ; On a :', false, '[{"id": "A", "text": "G = 0"}, {"id": "B", "text": "G = 3/4"}, {"id": "C", "text": "G = 1/2"}, {"id": "D", "text": "G = 3/2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'نحسب البسط والمقام داخل الأقواس: 2 + 1/4 = (8 + 1)/4 = 9/4 3 − 3/4 = (12 − 3)/4 = 9/4 إذن: G = (9/4)/(9/4) − 1/4 = 1 − 1/4 = 3/4', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q62', 'exam_primary_2025_maths_jan', 62, 'Calcul numérique', 'On pose : H = (√10/8)² × (1 + 3²)⁻¹ − (√10 + 8⁻²) ; On a :', false, '[{"id": "A", "text": "H = 12,75"}, {"id": "B", "text": "H = −10"}, {"id": "C", "text": "H = −√10"}, {"id": "D", "text": "H = 10⁻¹"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'نبسط كل حد على حدة: (√10/8)² = 10/8² = 10 × 8⁻² (1 + 3²)⁻¹ = (1 + 9)⁻¹ = 10⁻¹ = 1/10 بضرب الحدين نجد: (10 × 8⁻²) × 1/10 = 8⁻² نعوض في العبارة H: H = 8⁻² − √10 − 8⁻² = −√10', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'نص السؤال في ورقة الامتحان هو (√10/8)² وليس (10/8)² كما ورد في ملف الحل؛ التعليل أعلاه صُحح تبعاً لذلك (√10/8)² = 10/8².')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q63', 'exam_primary_2025_maths_jan', 63, 'Encadrement et valeurs approchées', 'L''encadrement du nombre 10/3 au dixième près est :', false, '[{"id": "A", "text": "3,33 < 10/3 < 3,34"}, {"id": "B", "text": "3,30 < 10/3 < 3,40"}, {"id": "C", "text": "3,333 < 10/3 < 3,334"}, {"id": "D", "text": "3 < 10/3 < 4"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'لدينا 10/3 = 3,3333… التأطير إلى العُشر (au dixième près) يعني أن سعة التأطير تساوي 0,1 (أي 10⁻¹). نجد أن 3,30 = 3,3 و 3,40 = 3,4، وسعة التأطير هي 3,40 − 3,30 = 0,1، إذن 3,30 < 10/3 < 3,40.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q64', 'exam_primary_2025_maths_jan', 64, 'PGCD', 'Un boulanger dispose d''une plaque rectangulaire de chocolat de dimensions 108 cm et 84 cm. Il cherche à la découper en morceaux sous forme de carrés identiques. La plus grande mesure possible du côté de chaque carré est :', false, '[{"id": "A", "text": "42 cm"}, {"id": "B", "text": "36 cm"}, {"id": "C", "text": "12 cm"}, {"id": "D", "text": "6 cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'للحصول على أكبر طول ممكن لضلع كل مربع متطابق، نحسب القاسم المشترك الأكبر للعددين 108 و 84 باستخدام خوارزمية إقليدس: 108 = 84 × 1 + 24 84 = 24 × 3 + 12 24 = 12 × 2 + 0 ومنه PGCD(108; 84) = 12 cm.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q65', 'exam_primary_2025_maths_jan', 65, 'PPCM', 'Sur un panneau de publicité, il clignote deux ampoules. L''une renvoie un feu rouge toutes les 45 secondes et l''autre renvois un feu bleu toutes les 132 secondes. À 19:00:00, elles démarrent ensemble. À quelle heure s''allumeront-elles de nouveau ensemble ?', false, '[{"id": "A", "text": "19:33:00"}, {"id": "B", "text": "19:01:27"}, {"id": "C", "text": "19:02:12"}, {"id": "D", "text": "19:30:00"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'نحسب المضاعف المشترك الأصغر للعددين 45 و 132: 45 = 3² × 5 ; 132 = 2² × 3 × 11 PPCM(45; 132) = 2² × 3² × 5 × 11 = 1980 secondes نحول 1980 ثانية إلى دقائق: 1980/60 = 33 minutes إذن سيتوهج المصباحان معاً مجدداً على الساعة: 19:00:00 + 33 min = 19:33:00.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q66', 'exam_primary_2025_maths_jan', 66, 'Division euclidienne', 'Le nombre 144 divisé par un entier naturel donne un reste égal à 6. Quel est le reste de la division du nombre 2025 par ce même entier ?', false, '[{"id": "A", "text": "6"}, {"id": "B", "text": "9"}, {"id": "C", "text": "0"}, {"id": "D", "text": "1"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'ليكن d هو المقسوم عليه (عدد صحيح طبيعي). لدينا: 144 = d × q + 6 مع شرط القسمة الإقليدية d > 6 ومنه d قاسم للعدد 144 − 6 = 138. نفكك 138 إلى جداء عوامل أولية: 138 = 2 × 3 × 23. القواسم الممكنة للعدد 138 والأكبر قطعا من 6 هي: 23، 46، 69، 138. لنحسب باقي قسمة 2025 على كل حالة ممكنة لـ d: إذا كان d = 23: فإن 2025 = 23 × 88 + 1 (الباقي 1). إذا كان d = 46: فإن 2025 = 46 × 44 + 1 (الباقي 1). إذا كان d = 69: فإن 2025 = 69 × 29 + 24 (الباقي 24). إذا كان d = 138: فإن 2025 = 138 × 14 + 93 (الباقي 93). خلاصة: السؤال ناقص الصياغة رياضياً لأن المقسوم عليه d غير وحيد، وبالتالي الباقي يتغير حسب قيمة d (فقد يكون 1 أو 24 أو 93). لذا رياضياً بدقة لا يوجد جواب وحيد من بين الاختيارات A إلى D، فيكون الجواب الصحيح E (بينما يُرجّح أن واضع الامتحان افترض القاسم الأولي/الأصغر d = 23 فحصل على الجواب D أي 1).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'السؤال ناقص الصياغة رياضياً: المقسوم عليه d غير وحيد (23 أو 46 أو 69 أو 138) فيكون الباقي 1 أو 24 أو 93؛ لذا لا يوجد جواب وحيد من A إلى D والجواب الدقيق هو E. يُرجَّح أن واضع الامتحان افترض d = 23 فيكون الجواب D (الباقي 1).')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q67', 'exam_primary_2025_maths_jan', 67, 'Puissances', 'Sachant que 8ⁿ + 8ⁿ = 2²⁰²⁶, combien vaut n ?', false, '[{"id": "A", "text": "1013"}, {"id": "B", "text": "1012"}, {"id": "C", "text": "2023"}, {"id": "D", "text": "2024"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], '8ⁿ + 8ⁿ = 2 × 8ⁿ = 2¹ × (2³)ⁿ = 2³ⁿ⁺¹ ومنه: 2³ⁿ⁺¹ = 2²⁰²⁶ ⟹ 3n + 1 = 2026 ⟹ 3n = 2025 ⟹ n = 2025/3 = 675 العدد 675 غير موجود ضمن الاختيارات A، B، C، D، إذن الجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q68', 'exam_primary_2025_maths_jan', 68, 'Suites arithmétiques', 'Une personne loue une maison le 1er janvier 2014 au prix de 24000 Dh par an. Sachant que la location annuelle augmente de 600 Dh par an, déterminer la somme payée au 1er janvier 2024.', false, '[{"id": "A", "text": "24600 Dh"}, {"id": "B", "text": "30000 Dh"}, {"id": "C", "text": "30600 Dh"}, {"id": "D", "text": "24610 Dh"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'تُمثّل سومة الكراء السنوية متتالية حسابية حدها الأول u₀ = 24000 (في فاتح يناير 2014) وأساسها r = 600. بين فاتح يناير 2014 وفاتح يناير 2024 مرت 2024 − 2014 = 10 سنوات. إذن المبلغ المؤدى في فاتح يناير 2024 هو: u₁₀ = 24000 + 10 × 600 = 24000 + 6000 = 30000 Dh', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q69', 'exam_primary_2025_maths_jan', 69, 'Systèmes d''équations', 'Une usine de tissage a produit une commande de 100 articles sous forme de pantalons et chemises. Elle a vendu cette commande au prix de 9800 Dh. Sachant que le prix de vente d''une chemise est 90 Dh et celui d''un pantalon est 110 Dh, quel est le nombre de chemises vendues ?', false, '[{"id": "A", "text": "30 chemises"}, {"id": "B", "text": "40 chemises"}, {"id": "C", "text": "50 chemises"}, {"id": "D", "text": "60 chemises"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'ليكن x عدد القمصان (chemises) و y عدد السراويل (pantalons). نحل النظمة التالية: { x + y = 100 90x + 110y = 9800 من المعادلة الأولى نجد y = 100 − x. نعوض في المعادلة الثانية: 90x + 110(100 − x) = 9800 90x + 11000 − 110x = 9800 −20x = −1200 ⟹ x = 1200/20 = 60 إذن عدد القمصان المباعة هو 60 قميصاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q70', 'exam_primary_2025_maths_jan', 70, 'Fonctions — lecture graphique', 'La figure ci-contre montre la représentation graphique (C_f) d''une fonction f définie par : f(x) = ax² + bx. Combien vaut a et b ?', false, '[{"id": "A", "text": "a = −1 et b = 1/2"}, {"id": "B", "text": "a = −1 et b = 0"}, {"id": "C", "text": "a = −2 et b = 1"}, {"id": "D", "text": "a = −1 et b = 2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نلاحظ من التمثيل المبياني أن الشلجم (C_f) موجّه نحو الأعلى، وهذا يستلزم قطعا أن يكون a > 0، بينما جميع الاختيارات (A، B، C، D) تعطي قيماً سالبة لـ a (a < 0). وبالتدقيق في نقط المنحنى، نجد أنه يمر من النقط (0; 0) و (1/2; 0) و (1; 1): f(1) = a + b = 1 f(1/2) = (1/4)a + (1/2)b = 0 ⟹ a + 2b = 0 ⟹ a = −2b بالتعويض نجد −2b + b = 1 ⟹ b = −1 و a = 2، أي f(x) = 2x² − x. بما أن (a = 2; b = −1) غير موجود في الاختيارات، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على قراءة التمثيل المبياني في ورقة الامتحان: الشلجم (Cf) موجّه نحو الأعلى (a > 0) ويمر من النقط (0; 0) و(1/2; 0) و(1; 1)، أي f(x) = 2x² − x؛ فلا يوجد (a = 2; b = −1) في الاختيارات.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q71', 'exam_primary_2025_maths_jan', 71, 'Problèmes — durées', 'Quand Omar va à l''école en bus et revient à pied, il met 1h35 min. Quand il fait l''aller-retour en bus, il met 40 min. Le temps du trajet en bus est le même à l''aller qu''au retour, de même pour le trajet à pied. Combien de temps faut-il à Omar pour faire l''aller-retour à pied ?', false, '[{"id": "A", "text": "55 min"}, {"id": "B", "text": "1h15min"}, {"id": "C", "text": "2h30min"}, {"id": "D", "text": "1h50min"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'مدة الذهاب والإياب بالحافلة هي 40 min، إذن مدة الذهاب فقط بالحافلة هي: 40/2 = 20 min. مدة الذهاب بالحافلة والإياب مشياً هي 1 h 35 min = 95 min، إذن مدة المشي في اتجاه واحد هي: 95 − 20 = 75 min. مدة الذهاب والإياب مشياً هي: 2 × 75 min = 150 min = 2 h 30 min.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q72', 'exam_primary_2025_maths_jan', 72, 'Pourcentages', 'Maryam a acheté une robe durant la période de réduction au prix de 450 Dh. Sachant que le pourcentage de réduction est 25%, quel est le prix initial de la robe ?', false, '[{"id": "A", "text": "337,5 Dh"}, {"id": "B", "text": "475 Dh"}, {"id": "C", "text": "500 Dh"}, {"id": "D", "text": "600 Dh"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'ليكن P الثمن الأصلي للفستان. بعد تخفيض 25% يصبح الثمن المدفوع هو 75% من الثمن الأصلي: P × (1 − 0,25) = 450 ⟹ 0,75P = 450 ⟹ P = 450/0,75 = 450 × 4/3 = 600 Dh', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q73', 'exam_primary_2025_maths_jan', 73, 'Intérêts', 'Taha a placé un capital de 20000 Dh à sa banque le 1er janvier 2022. Au 1er janvier 2024, il a consulté son compte et constata que son capital est devenu 24200 Dh. Le taux d''intérêt annuel de cette banque est :', false, '[{"id": "A", "text": "42%"}, {"id": "B", "text": "21%"}, {"id": "C", "text": "15%"}, {"id": "D", "text": "11%"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'المدة الزمنية للوضع هي سنتان (من فاتح يناير 2022 إلى فاتح يناير 2024). بحساب الفائدة المركبة (المعتمدة في الأبناك): C₂ = C₀(1 + t)² ⟹ 24200 = 20000(1 + t)² (1 + t)² = 24200/20000 = 1,21 ⟹ 1 + t = √1,21 = 1,1 ⟹ t = 0,1 = 10% وحتى لو اعتمدنا الفائدة البسيطة: الفائدة في سنتين هي 4200 Dh، أي 2100 Dh في السنة، وبالتالي السعر هو 2100/20000 = 10,5%. في كلتا الحالتين (10% أو 10,5%) الجواب غير موجود في الاختيارات A، B، C، D، إذن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q74', 'exam_primary_2025_maths_jan', 74, 'Dénombrement', 'Une boîte contient sept cartes identiques, numérotées de 1 à 7. On tire au hasard et simultanément deux cartes de la boîte. Quel est le nombre de possibilités de tirer deux cartes portant des numéros dont la somme est un nombre pair ?', false, '[{"id": "A", "text": "21"}, {"id": "B", "text": "18"}, {"id": "C", "text": "6"}, {"id": "D", "text": "9"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'من 1 إلى 7 لدينا: 4 بطاقات تحمل أعداداً فردية: {1, 3, 5, 7}. 3 بطاقات تحمل أعداداً زوجية: {2, 4, 6}. بما أن السحب يتم تآنياً (simultanément) نستعمل التآلفات Cₙᵖ. لكي يكون مجموع العددين زوجياً يجب سحب بطاقتين فرديتين معاً أو بطاقتين زوجيتين معاً: C₄² + C₃² = (4×3)/2 + (3×2)/2 = 6 + 3 = 9', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q75', 'exam_primary_2025_maths_jan', 75, 'Équations', 'Amina fait de son âge une énigme : « Si je devais vivre jusqu''à 90 ans, alors mon âge d''aujourd''hui serait égal aux quatre tiers de la moitié de ce qu''il me reste à vivre ». Quel est l''âge d''Amina ?', false, '[{"id": "A", "text": "51 ans"}, {"id": "B", "text": "36 ans"}, {"id": "C", "text": "30 ans"}, {"id": "D", "text": "60 ans"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'ليكن x عمر أمينة الحالي. المدة المتبقية لها لتصل إلى 90 سنة هي 90 − x. نترجم المعطى إلى معادلة: x = (4/3) × ((90 − x)/2) x = (2/3)(90 − x) ⟹ 3x = 180 − 2x ⟹ 5x = 180 ⟹ x = 180/5 = 36 ans', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q76', 'exam_primary_2025_maths_jan', 76, 'Transformations du plan', 'Dans le plan rapporté à un repère orthonormé, on considère les points F(1; 1), G(−1; 4) et H(−5; 10) ; On a :', false, '[{"id": "A", "text": "H est l''image de G par la translation de vecteur FG"}, {"id": "B", "text": "H est l''image de G par l''homothétie de centre F et de rapport 3"}, {"id": "C", "text": "H est l''image de G par la rotation de centre F et d''angle 180°"}, {"id": "D", "text": "H est l''image de G par la symétrie centrale de centre F"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'نحسب إحداثيات المتجهتين FG و FH: FG = (−1 − 1; 4 − 1) = (−2; 3) FH = (−5 − 1; 10 − 1) = (−6; 9) نلاحظ أن (−6; 9) = 3(−2; 3)، أي: FH = 3 FG وهذا هو تعريف التحاكي (homothétie) الذي مركزه F ونسبته 3 والذي يحول G إلى H.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q77', 'exam_primary_2025_maths_jan', 77, 'Géométrie analytique', 'Dans un repère orthonormé, on considère les points M(1; 3) et N(−1; 2). L''équation réduite de la médiatrice du segment [MN] est :', false, '[{"id": "A", "text": "y = 2x + 1"}, {"id": "B", "text": "y = −2x + 2,5"}, {"id": "C", "text": "y = 0,5x + 2,5"}, {"id": "D", "text": "y = −2x + 5"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'واسط القطعة [MN] هو المستقيم العمودي على (MN) والمار من منتصفها I: منتصف القطعة [MN] هو: I((1 + (−1))/2; (3 + 2)/2) = (0; 2,5). ميل المستقيم (MN) هو: m_MN = (2 − 3)/(−1 − 1) = (−1)/(−2) = 1/2. بما أن الواسط عمودي على (MN) فإن ميله m يحقق m × 1/2 = −1 ⟹ m = −2. وبما أنه يمر من I(0; 2,5) فإن الأرتوب عند الأصل هو p = 2,5. إذن المعادلة المختصرة هي: y = −2x + 2,5.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q78', 'exam_primary_2025_maths_jan', 78, 'Losange — théorème de Pythagore', 'Le cric d''une voiture a la forme d''un losange de côté mesurant 20 cm. Lorsque la diagonale horizontale mesure 32 cm, la voiture se soulève à la hauteur :', false, '[{"id": "A", "text": "24 cm"}, {"id": "B", "text": "√1424 cm"}, {"id": "C", "text": "√624 cm"}, {"id": "D", "text": "42 cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'قطرا المعين متعامدان ويتقاطعان في منتصفيهما، مما يُكوّن أربعة مثلثات قائمة الزاوية وتر كل منها هو ضلع المعين (20 cm). نصف القطر الأفقي هو 32/2 = 16 cm. بتطبيق مبرهنة فيتاغورس لحساب نصف الارتفاع (نصف القطر العمودي h/2): (h/2)² + 16² = 20² ⟹ (h/2)² = 400 − 256 = 144 ⟹ h/2 = 12 cm إذن الارتفاع الكلي الذي ترتفع به السيارة هو: h = 2 × 12 = 24 cm.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q79', 'exam_primary_2025_maths_jan', 79, 'Théorème de Thalès — aires', 'Sachant que OM = 2,2 cm, LM = 3 cm et SL = 6 cm ; L''aire du triangle SNL est :', false, '[{"id": "A", "text": "6,6 cm²"}, {"id": "B", "text": "9 cm²"}, {"id": "C", "text": "13 cm²"}, {"id": "D", "text": "18 cm²"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'من الشكل، المستقيمان (OM) و (SN) عموديان على نفس المستقيم (MS)، إذن (OM) ∥ (SN). بتطبيق مبرهنة طاليس المباشرة (وضعية الفراشة): SN/OM = SL/LM ⟹ SN/2,2 = 6/3 = 2 ⟹ SN = 4,4 cm مساحة المثلث القائم الزاوية SNL هي: A(SNL) = (SL × SN)/2 = (6 × 4,4)/2 = 13,2 cm² بما أن القيمة الدقيقة 13,2 cm² غير موجودة ضمن الاختيارات (الاختيار C هو 13 cm² فقط)، فإن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على الشكل في ورقة الامتحان (OM = 2,2 cm، LM = 3 cm، SL = 6 cm)؛ بتطبيق مبرهنة طاليس SN = 4,4 cm فتكون المساحة 13,2 cm² غير الواردة في الاختيارات.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q80', 'exam_primary_2025_maths_jan', 80, 'Trigonométrie', 'Dans la figure ci-contre, LOMN est un trapèze rectangle, tel que : LN = 4 cm, OM = 5 cm et MN = √3 cm. La mesure de l''angle LOM est :', false, '[{"id": "A", "text": "30°"}, {"id": "B", "text": "45°"}, {"id": "C", "text": "60°"}, {"id": "D", "text": "80°"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'ليكن H المسقط العمودي للنقطة L على القاعدة الكبرى [OM]. بما أن LOMN شبه منحرف قائم الزاوية، فإن الرباعي LHMN مستطيل، ومنه: LH = MN = √3 cm HM = LN = 4 cm ⟹ OH = OM − HM = 5 − 4 = 1 cm. في المثلث LHO القائم الزاوية في H: tan(LOM) = LH/OH = √3/1 = √3 ⟹ LOM = 60°', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على شكل شبه المنحرف القائم الزاوية في ورقة الامتحان (LN = 4 cm، OM = 5 cm، MN = √3 cm).')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q81', 'exam_primary_2025_maths_jan', 81, 'Aires', 'Un carré d''aire 25 cm² a été divisé en cinq parts de même aire : quatre parts carrées et une en forme de « L », comme le montre la figure ci-contre. Quelle est la valeur de x ?', false, '[{"id": "A", "text": "√5 cm"}, {"id": "B", "text": "(5 − 2√5) cm"}, {"id": "C", "text": "(5 − √5) cm"}, {"id": "D", "text": "(5 + 2√5) cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'طول ضلع المربع الكبير هو √25 = 5 cm. قُسّم المربع إلى 5 أجزاء متساوية المساحة، إذن مساحة كل جزء هي 25/5 = 5 cm². إذن طول ضلع كل مربع صغير من المربعات الأربعة هو √5 cm. من الشكل، المربعات الأربعة تشكل مربعاً من 2×2 طول ضلعه 2√5 cm. إذن عرض الجزء « L » هو: x = 5 − 2√5 cm.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على شكل المربع المقسّم إلى 5 أجزاء متساوية في ورقة الامتحان.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q82', 'exam_primary_2025_maths_jan', 82, 'Périmètres — cercles', 'Le périmètre de la figure ci-contre est :', false, '[{"id": "A", "text": "(10π + 4) cm"}, {"id": "B", "text": "10π cm"}, {"id": "C", "text": "(5π + 2) cm"}, {"id": "D", "text": "5π cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'باستعمال السلم الموضح بجانب الشكل (حيث كل وحدة قياس أفقية وعمودية تساوي 2 cm)، يتكون محيط الشكل من: نصف دائرة كبيرة (الجزء السفلي): شعاعها يعادل 3 وحدات أي R = 6 cm (قطرها 12 cm)، طول قوسها: πR = 6π cm. نصف دائرة متوسطة (في الأعلى يساراً): قطرها يعادل نصف قطر الدائرة الكبيرة أي 3 وحدات (6 cm)، فشعاعها r₁ = 3 cm، طول قوسها: πr₁ = 3π cm. نصف دائرة صغيرة (في الوسط): قطرها يعادل وحدة واحدة (2 cm)، فشعاعها r₂ = 1 cm، طول قوسها: πr₂ = π cm. قطعة مستقيمة (في الأعلى يميناً): طولها يعادل وحدتين أي 4 cm (تحقق 6 + 2 + 4 = 12 cm). المحيط الكلي للشكل هو: P = 6π + 3π + π + 4 = (10π + 4) cm', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على شكل الأقواس (نصفا دائرة) والسلم (كل وحدة = 2 cm) في ورقة الامتحان.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q83', 'exam_primary_2025_maths_jan', 83, 'Angles — cercles', 'Dans la figure ci-contre les deux cercles sont tangents en I tels que KJM = 75° et MNK = 53°. On a :', false, '[{"id": "A", "text": "AOB = 75°"}, {"id": "B", "text": "AOB = 150°"}, {"id": "C", "text": "AOB = 128°"}, {"id": "D", "text": "AOB = 106°"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'في الدائرة (C₁)، الزاويتان المحيطيتان MNK و MIK تحصران نفس القوس، إذن هما متقايستان: MIK = MNK = 53° (ملاحظة: الزاوية KJM = 75° معطى تمويهي لأن J هي نقطة تقاطع الوترين وليست مركز الدائرة (C₁)). الزاويتان AIB و MIK متقابلتان بالرأس، إذن: AIB = MIK = 53° في الدائرة (C₂) التي مركزها O، الزاوية المركزية AOB والزاوية المحيطية AIB تحصران نفس القوس، إذن: AOB = 2 × AIB = 2 × 53° = 106°', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على شكل الدائرتين المتماستين في ورقة الامتحان (KJM = 75°، MNK = 53°).')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q84', 'exam_primary_2025_maths_jan', 84, 'Aires', 'Dans un carré de côté 2025, les carrés de côté 1 sur les diagonales sont coloriés (la figure montre la situation avec un carré de côté 7). Combien mesure la surface restée blanche ?', false, '[{"id": "A", "text": "2024²"}, {"id": "B", "text": "2023 × 2024"}, {"id": "C", "text": "2025²"}, {"id": "D", "text": "2025 × 2026"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'ليكن n = 2025 (عدد فردي). المساحة الكلية للمربع هي n². كل قطر يحتوي على n مربعاً صغيراً، وبما أن n فردي فإن القطرين يتقاطعان في مربع مركزي واحد مشترك؛ إذن عدد المربعات الملونة هو 2n − 1. المساحة المتبقية بيضاء هي: n² − (2n − 1) = n² − 2n + 1 = (n − 1)² = (2025 − 1)² = 2024²', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q85', 'exam_primary_2025_maths_jan', 85, 'Patrons — cube', 'Une face d''un cube a été coupée le long de ses diagonales. Parmi les formes suivantes, laquelle ne permet pas de construire ce cube par pliage ?', false, '[{"id": "A", "text": "1"}, {"id": "B", "text": "2"}, {"id": "C", "text": "3"}, {"id": "D", "text": "4"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'بتجريب طي كل نشر من النشور الأربعة: الشكل 1: المربعات الأربعة الأفقية تُشكّل الأوجه الجانبية، والمربع العلوي يُشكّل القاعدة العليا، والمثلثات الأربعة في الأسفل تُغلق القاعدة السفلى بانتظام (صالح). الشكل 2: المربع الأوسط هو القاعدة، والمربعات الأربعة المحيطة به تُشكّل الأوجه الجانبية، والمثلثات الأربعة في الأطراف تُغلق الوجه المقابل للقاعدة (صالح). الشكل 4: المربع الأوسط في العمود الأيمن يُشكّل القاعدة السفلى، والمربعات الثلاثة المتصلة به (فوق، تحت، يسار) تُشكّل 3 أوجه جانبية، والمربع أقصى اليسار يُشكّل القاعدة العليا، فتنطبق المثلثات الأربعة على الحواف الأربع للوجه الجانبي الأيمن المفتوح وتغلقه دون تداخل (صالح). الشكل 3: عند وضع المربع الموجود في تقاطع الصف والعمود كقاعدة سفلى، يُطوى المربع الأيسر الأقصى ليُشكّل الوجه العلوي، بينما المثلثان المثبتان في أعلى وأسفل العمود الأيمن يُطويان بدورهما نحو نفس الوجه العلوي فيتداخلان مع المربع الكامل، ويبقى الوجه الجانبي الأيمن مفتوحاً. إذن الشكل 3 لا يسمح بتكوين المكعب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على نشور المكعب الأربعة (1–4) في ورقة الامتحان.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q86', 'exam_primary_2025_maths_jan', 86, 'Volumes — cône', 'La figure ci-contre représente le patron d''un cône de révolution. Son volume est :', false, '[{"id": "A", "text": "V = 12π cm³"}, {"id": "B", "text": "V = 24π cm³"}, {"id": "C", "text": "V = 15π cm³"}, {"id": "D", "text": "V = 45π cm³"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'من نشر المخروط الدوراني لدينا: شعاع القاعدة الدائرية: r = 3 cm. طول العامد (génératrice): g = 5 cm. نحسب ارتفاع المخروط h بمبرهنة فيتاغورس: h = √(g² − r²) = √(5² − 3²) = √(25 − 9) = √16 = 4 cm حجم المخروط هو: V = (1/3)πr²h = (1/3)π × 3² × 4 = 12π cm³', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على نشر المخروط في ورقة الامتحان (شعاع القاعدة 3 cm، العامد 5 cm).')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q87', 'exam_primary_2025_maths_jan', 87, 'Volumes — pyramide', 'On remplit de jus un récipient en forme de pyramide à base triangulaire (figure ci-contre) au quatre cinquième de son volume. SFG et SGH sont des triangles rectangles en G. L''aire du triangle FGH vaut 300 cm² et SG = 100 cm. Quelle est la quantité de jus dans ce récipient ?', false, '[{"id": "A", "text": "240 cl"}, {"id": "B", "text": "20 cl"}, {"id": "C", "text": "8 cl"}, {"id": "D", "text": "80 cl"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'بما أن SFG و SGH مثلثان قائما الزاوية في G، فإن (SG) عمودي على القاعدة (FGH)، وبالتالي ارتفاع الهرم هو h = SG = 100 cm. الحجم الكلي للهرم: V = (1/3) × A(FGH) × SG = (1/3) × 300 × 100 = 10000 cm³ كمية العصير (4/5 من الحجم): V_jus = (4/5) × 10000 = 8000 cm³ بالتحويل إلى السنتيلتر (cl)، علماً أن 1000 cm³ = 1 L = 100 cl: 8000 cm³ = 8 L = 800 cl القيمة 800 cl غير موجودة ضمن الاختيارات A، B، C، D، إذن الجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على شكل الهرم في ورقة الامتحان (مساحة FGH ‏= 300 cm²، SG = 100 cm)؛ كمية العصير 8000 cm³ = 800 cl غير الواردة في الاختيارات.')
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q88', 'exam_primary_2025_maths_jan', 88, 'Statistiques — classe modale', 'Une société en informatique fait une étude sur la durée de connexion via un ordinateur. Pour cela elle réalise une enquête auprès d''un échantillon de 200 clients et obtient les résultats suivants : [200; 400[ : 20 | [400; 600[ : 34 | [600; 800[ : 35 | [800; 1000[ : 78 | [1000; 1200[ : 33 La classe modale de cette série statistique est :', false, '[{"id": "A", "text": "[400; 600["}, {"id": "B", "text": "[600; 800["}, {"id": "C", "text": "[800; 1000["}, {"id": "D", "text": "[1000; 1200["}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'بما أن لجميع الأصناف نفس السعة (200)، فإن الصنف المنوالي (classe modale) هو الصنف الموافق لأكبر حصيص، وهو الحصيص 78 الذي يوافق الصنف [800; 1000[.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q89', 'exam_primary_2025_maths_jan', 89, 'Statistiques — médiane', 'Le tableau suivant fourni les notes des élèves d''une classe lors d''un devoir de mathématiques : Notes : 2 | 4 | 5 | 7 | 8 | 9 | 10 Effectifs : 1 | 2 | 4 | 2 | 3 | 4 | 5 La médiane des notes obtenues est :', false, '[{"id": "A", "text": "5"}, {"id": "B", "text": "7"}, {"id": "C", "text": "10"}, {"id": "D", "text": "9"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نحسب الحصيص الإجمالي والحصيصات المتراكمة: الحصيص الإجمالي: N = 1 + 2 + 4 + 2 + 3 + 4 + 5 = 21. الحصيصات المتراكمة على التوالي: 1 (للنقطة 2) ← 3 (للنقطة 4) ← 7 (للنقطة 5) ← 9 (للنقطة 7) ← 12 (للنقطة 8) ← 16 ← 21. نصف الحصيص الإجمالي هو 21/2 = 10,5 (رتبة القيمة الوسطية هي (21 + 1)/2 = 11). أول حصيص متراكم أكبر من أو يساوي 10,5 هو 12، والموافق للنقطة 8. بما أن 8 غير موجود ضمن الاختيارات A، B، C، D، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, NULL)
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

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة يناير 2025) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_jan_q90', 'exam_primary_2025_maths_jan', 90, 'Statistiques — moyenne', 'Le graphe suivant représente les notes des élèves d''une classe lors d''un devoir de mathématiques. Quel est la moyenne de la classe à ce devoir ?', false, '[{"id": "A", "text": "7,45"}, {"id": "B", "text": "7,5"}, {"id": "C", "text": "7,55"}, {"id": "D", "text": "8"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'نقرأ الحصيصات مباشرة من المبيان بالأعمدة (انتبه: حصيص النقطة 5 في المبيان هو 3 وليس 4 كما في السؤال السابق): النقطة 2 : حصيصها 1 النقطة 4 : حصيصها 2 النقطة 5 : حصيصها 3 النقطة 7 : حصيصها 2 النقطة 8 : حصيصها 3 النقطة 9 : حصيصها 4 النقطة 10 : حصيصها 5 الحصيص الإجمالي هو: N = 1 + 2 + 3 + 2 + 3 + 4 + 5 = 20. نحسب المعدل الحسابي (la moyenne): x̄ = (2(1) + 4(2) + 5(3) + 7(2) + 8(3) + 9(4) + 10(5))/20 x̄ = (2 + 8 + 15 + 14 + 24 + 36 + 50)/20 = 149/20 = 7,45', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13sAmHY9cnDcnDJEgHvbaazQXYiT0xeVR', true, 'الجواب يعتمد على قراءة المبيان بالأعمدة في ورقة الامتحان (حصيصات النقط 2، 4، 5، 7، 8، 9، 10 هي 1، 2، 3، 2، 3، 4، 5)؛ انتبه: حصيص النقطة 5 في المبيان هو 3 وليس 4 كما في السؤال السابق.')
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
