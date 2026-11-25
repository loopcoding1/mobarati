-- ====================================================================
-- مباراتي — امتحان ابتدائي: الرياضيات، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/الرياضيات - 2022.md
--   (سجل الامتحانات رقم 64؛ الحل 2026-11-25: بحث Google أولاً، وُجد الحل كاملاً
--    على mesconcours.ma وmanasseb.com، فلم يُستعمل AI Studio لهذا الامتحان)
--   ملف الامتحان: exams-ibtida2i/2022/الرياضيات - امتحان.pdf (11 صفحة، كاملة).
--   روابط صفحات التصحيح:
--     - https://mesconcours.ma/concours/enseignement/2022-1015/ (المصدر الأساسي)
--     - https://www.manasseb.com/sujet/sujet-41834-enseignant-2022/ (للمقارنة)
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * الغلاف (ص 1): مباراة توظيف أساتذة التعليم الابتدائي الأطر النظامية
--     للأكاديميات — التخصص المزدوج، دورة نونبر 2022؛ المدة: ساعة واحدة، المعامل 2؛
--     30 سؤالاً من Q61 إلى Q90، 4 اختيارات (A-D)، جواب صحيح واحد، نقطة واحدة لكل جواب صحيح.
--   * نص كل سؤال من Q61 إلى Q90 وخياراته الأربعة (A-D) مطابقة حرفياً لورقة الامتحان.
--   * لا يوجد تصحيح رسمي لهذا الامتحان؛ الأجوبة من تصحيح منشور على mesconcours.ma
--     (حل من إعداد الموقع) واقتراح تصحيح من مناصب — والمصدران متفقان على الأجوبة
--     الثلاثين كلها، بلا أي تعارض بينهما.
--   * الأسئلة الموسومة بعدم اليقين (Q70، Q79، Q86، Q88) موسومة في verification_note؛
--     وQ79 وحدها verified=false لأن المنطقة المظللة غير ظاهرة على نسخة المسح الضوئي.
--   * فروق لفظية بين ملف الحل والورقة، اعتُمد فيها نص الورقة:
--     - Q62: الورقة «avec a et b deux réels non nuls» (ملف الحل يوردها بالعربية).
--     - Q68: الورقة «le prix initial x de cet article» (ملف الحل يحذف x سهواً).
--     - Q71: الورقة «(2x−3)/(x−5) ≥ 1» (ملف الحل يكتبها بصيغة مكافئة «− 1 ≥ 0»).
--     - Q72: علامات ترقيم فقط («: ... ;» في الورقة بدل «. ... .» في ملف الحل).
--     - Q74: الورقة «Le maximum de m²n est» (ملف الحل يكتب m²(30−m)، وهو مكافئ).
--     - Q78: الورقة «f(2) = g(2) = 4 et f(3) = −g(3)» (ملف الحل يذكر القيم المستنتجة
--       f(3) = 6 وg(3) = −6 وg(2) = 4)؛ التعليل أُعيدت صياغته من المعطيات الأصلية.
--     - Q81: الورقة تذكر النقطة N أيضاً: «A, B, M et N sont des points de ce cercle».
--     - Q82: التحاكي مركزه A في الورقة (ملف الحل يقول O خطأً)؛ الجواب نفسه.
--     - Q83: الورقة «(u_n) n∈IN* ... u_1 = 2» (ملف الحل يختصر الصياغة).
--     - Q85: الورقة تسمي المربع W ورمزه (C₄,C₅,D₅,D₄)، والإزاحة بالمتجه D₅D₈،
--       والتماثل حول المحور (F₁F₁₁)؛ التعليل أُعيدت صياغته وفق نص الورقة.
--     - Q88: الورقة «La figure ci-contre représente un parallélépipède rectangle.»
--       دون تسمية الرؤوس في النص (ملف الحل يضيف ABCDEFGH وموضع I من الشكل).
--     - Q80: الورقة «(Figure ci-dessous)» دون جملة «Laquelle de ces affirmations
--       est vraie ؟» التي يضيفها ملف الحل.
--   * Q69: تحقق خاص بعدّ الأصفار في الصورة المكبّرة: B = 1/10000000 (عشرة ملايين)،
--     وC = 1/1000000 (مليون واحد) وهو الجواب الصحيح (30 / 30 000 000).
--   * لا توجد أسئلة متخطاة: أُدرجت الأسئلة الثلاثون كلها.
--
-- المعامل: 2 (من غلاف الامتحان، ص 1) — لا يوجد عمود للمعامل في جدول exams،
--   فيُذكر هنا في التعليق فقط.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_maths_nov', 'specialty_primary', 2022, 'maths', 'الرياضيات', 'امتحان الرياضيات (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q61', 'exam_primary_2022_maths_nov', 61, 'الحساب — الكسور', 'On pose : E = 2 + ((7/5 − 1) / (1/5 − 3))', false, '[{"id": "A", "text": "E = 15/7"}, {"id": "B", "text": "E = 13/7"}, {"id": "C", "text": "E = −22/25"}, {"id": "D", "text": "E = 30/5"}]'::jsonb, ARRAY['B']::text[], 'البسط: 7/5 − 1 = 2/5. المقام: 1/5 − 3 = −14/5. خارج القسمة = (2/5) / (−14/5) = −1/7، إذن E = 2 − 1/7 = 13/7.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q62', 'exam_primary_2022_maths_nov', 62, 'الحساب — القوى', 'On pose : F = ((a⁶)² × (b⁴)⁻¹) / (a¹⁰ × b⁻⁵) avec a et b deux réels non nuls.', false, '[{"id": "A", "text": "F = a²b⁻¹"}, {"id": "B", "text": "F = a⁻²b⁻¹"}, {"id": "C", "text": "F = a²b"}, {"id": "D", "text": "F = a⁻²b²"}]'::jsonb, ARRAY['C']::text[], '(a⁶)² = a¹² و(b⁴)⁻¹ = b⁻⁴، إذن F = a¹²·b⁻⁴ / (a¹⁰·b⁻⁵) = a²·b = a²b.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q63', 'exam_primary_2022_maths_nov', 63, 'الحساب — القاسم والمضاعف', 'On pose x = 2³ × 3² × 5 × 7 et y = 3 × 5² × 7 :', false, '[{"id": "A", "text": "pgcd(x, y) = 105"}, {"id": "B", "text": "pgcd(x, y) = 35"}, {"id": "C", "text": "ppcm(x, y) = 210"}, {"id": "D", "text": "ppcm(x, y) = 1050"}]'::jsonb, ARRAY['A']::text[], 'القاسم المشترك الأكبر يأخذ العوامل المشتركة بأصغر أس: 3 × 5 × 7 = 105. أما المضاعف المشترك الأصغر فيأخذ كل العوامل بأكبر أس: 2³·3²·5²·7 = 12 600، مما يستبعد C وD.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q64', 'exam_primary_2022_maths_nov', 64, 'الحساب — الأعداد الأولية', 'Parmi les nombres suivants, désigner le nombre premier.', false, '[{"id": "A", "text": "207"}, {"id": "B", "text": "443"}, {"id": "C", "text": "447"}, {"id": "D", "text": "117"}]'::jsonb, ARRAY['B']::text[], '207 = 9×23، و447 = 3×149، و117 = 9×13 (مجموع أرقامها قابل للقسمة على 3). أما 443 فيكفي اختبار الأعداد الأولية حتى √443 ≈ 21: 2، 3، 5، 7، 11، 13، 17، 19 لا تقسمه، إذن 443 أولي.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q65', 'exam_primary_2022_maths_nov', 65, 'الحساب — القسمة الإقليدية', 'On a : 2022 = 58 × 34 + 50. Le reste de la division euclidienne de 2022 par 34 est :', false, '[{"id": "A", "text": "58"}, {"id": "B", "text": "50"}, {"id": "C", "text": "34"}, {"id": "D", "text": "16"}]'::jsonb, ARRAY['D']::text[], 'المساواة المعطاة ليست قسمة إقليدية على 34 لأن الباقي يجب أن يكون أصغر قطعا من 34، و50 > 34. نكتب 2022 = 59 × 34 + 16، إذن الباقي هو 16.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q66', 'exam_primary_2022_maths_nov', 66, 'القياس — المدد الزمنية', 'Ali a quitté sa maison à 2 h 50 min 30 s. Il est arrivé à son bureau à 3 h 40 min 20 s. La durée du trajet parcouru est :', false, '[{"id": "A", "text": "1 h 10 min 10 s"}, {"id": "B", "text": "50 min 10 s"}, {"id": "C", "text": "1 h 50 min 10 s"}, {"id": "D", "text": "49 min 50 s"}]'::jsonb, ARRAY['D']::text[], 'من 2 h 50 min 30 s إلى 3 h 00 min 00 s هناك 9 min 30 s، ثم من 3 h إلى 3 h 40 min 20 s هناك 40 min 20 s. المجموع: 9 min 30 s + 40 min 20 s = 49 min 50 s.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q67', 'exam_primary_2022_maths_nov', 67, 'الإحصاء — المتوسط', 'La moyenne des salaires de trois ouvriers est égale à 4950 Dh. Le salaire du premier ouvrier est 5950 Dh et celui du deuxième est 3450 Dh. Le salaire du troisième ouvrier est :', false, '[{"id": "A", "text": "4700 Dh"}, {"id": "B", "text": "5400 Dh"}, {"id": "C", "text": "5450 Dh"}, {"id": "D", "text": "4450 Dh"}]'::jsonb, ARRAY['C']::text[], 'مجموع الرواتب الثلاثة = 3 × 4950 = 14 850 Dh. راتب العامل الثالث = 14 850 − 5950 − 3450 = 5450 Dh.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q68', 'exam_primary_2022_maths_nov', 68, 'النسب المئوية', 'Après une réduction de 20 %, le prix d''un article devient 80 Dh. La formule qui permet de calculer le prix initial x de cet article est :', false, '[{"id": "A", "text": "0,2x = 80 − x"}, {"id": "B", "text": "80 = x − 0,2x"}, {"id": "C", "text": "0,2x = 80 + x"}, {"id": "D", "text": "0,2x = 80"}]'::jsonb, ARRAY['B']::text[], 'السعر بعد التخفيض هو السعر الأصلي منقوصا منه 20 % منه: x − 0,2x = 80، أي 0,8x = 80 ومنه x = 100 Dh.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q69', 'exam_primary_2022_maths_nov', 69, 'التناسبية — المقياس', 'La distance entre deux villes est 300 km. Sachant que la distance sur une carte entre ces deux villes est 30 cm, quelle est l''échelle de cette carte ?', false, '[{"id": "A", "text": "1/100"}, {"id": "B", "text": "1/10000000"}, {"id": "C", "text": "1/1000000"}, {"id": "D", "text": "1/3000000"}]'::jsonb, ARRAY['C']::text[], 'نحول إلى نفس الوحدة: 300 km = 30 000 000 cm. المقياس = 30 / 30 000 000 = 1 / 1 000 000.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q70', 'exam_primary_2022_maths_nov', 70, 'التناسبية — التمثيل المبياني', 'Le graphique représente une relation entre les quantités d''une marchandise par kilogramme (kg) et leurs prix en dirham (Dh). Le prix de 50 kg de cette marchandise est :', false, '[{"id": "A", "text": "300 Dh"}, {"id": "B", "text": "255 Dh"}, {"id": "C", "text": "445 Dh"}, {"id": "D", "text": "375 Dh"}]'::jsonb, ARRAY['D']::text[], 'المستقيم يمر من المبدأ: السعر متناسب مع الكتلة. نقرأ مثلا 30 Dh مقابل 4 kg و60 Dh مقابل 8 kg، أي 7,5 Dh للكيلوغرام الواحد. مقابل 50 kg: 50 × 7,5 = 375 Dh. تحفظ manasseb: «إجابة مرجّحة : à confirmer sur la lecture du graphique» — لكن قراءة mesconcours للرسم البياني نفسه (30 Dh مقابل 4 kg) تؤيد الجواب نفسه.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, 'إجابة مرجّحة عند manasseb (à confirmer sur la lecture du graphique)؛ قراءة mesconcours للرسم نفسه (30 Dh مقابل 4 kg) تؤيد الجواب نفسه.')
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q71', 'exam_primary_2022_maths_nov', 71, 'الجبر — المتراجحات', 'L''ensemble des solutions de l''inéquation : (2x − 3) / (x − 5) ≥ 1 est :', false, '[{"id": "A", "text": "]−∞; 5["}, {"id": "B", "text": "]−∞; −2[ ∪ [5; +∞["}, {"id": "C", "text": "[−2; +∞["}, {"id": "D", "text": "]−∞; −2] ∪ ]5; +∞["}]'::jsonb, ARRAY['D']::text[], 'بالنسبة إلى x ≠ 5: (2x−3)/(x−5) − 1 = (x+2)/(x−5). خارج القسمة موجب أو منعدم عندما x ≤ −2 أو x > 5 (5 مستبعد لأنه يعدم المقام).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q72', 'exam_primary_2022_maths_nov', 72, 'الجبر — المعادلات من الدرجة الثانية', 'a et b sont solutions de l''équation : x² + 10x + 5 = 0 ; Que vaut a⁴ + b⁴ ?', false, '[{"id": "A", "text": "8050"}, {"id": "B", "text": "10000"}, {"id": "C", "text": "2000"}, {"id": "D", "text": "8100"}]'::jsonb, ARRAY['A']::text[], 'مجموع جذري المعادلة وحاصل ضربهما: a+b = −10 وab = 5. إذن a²+b² = (a+b)² − 2ab = 100 − 10 = 90، ثم a⁴+b⁴ = (a²+b²)² − 2(ab)² = 90² − 2×5² = 8100 − 50 = 8050.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q73', 'exam_primary_2022_maths_nov', 73, 'الجبر — المسائل', 'La bibliothèque d''une école a acheté deux exemplaires d''un même manuel de mathématiques et trois exemplaires d''un même manuel de français pour la somme de 350 Dh. Le manuel de mathématiques coûte 50 Dh de plus que le manuel de français. Combien coûte chacun des deux manuels ?', false, '[{"id": "A", "text": "Le manuel de mathématiques coûte 200 Dh et le manuel de français coûte 150 Dh"}, {"id": "B", "text": "Le manuel de mathématiques coûte 100 Dh et le manuel de français coûte 50 Dh"}, {"id": "C", "text": "Le manuel de mathématiques coûte 150 Dh et le manuel de français coûte 100 Dh"}, {"id": "D", "text": "Le manuel de mathématiques coûte 100 Dh et le manuel de français coûte 150 Dh"}]'::jsonb, ARRAY['B']::text[], 'إذا كان سعر كتاب الفرنسية f، فسعر كتاب الرياضيات f + 50. لدينا 2(f+50) + 3f = 350، أي 5f = 250 ومنه f = 50 Dh وm = 100 Dh. تحقق: 2×100 + 3×50 = 350.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q74', 'exam_primary_2022_maths_nov', 74, 'الجبر — القيم القصوى', 'Soient m et n deux entiers naturels non nuls tels que : m + n = 30 ; Le maximum de m²n est :', false, '[{"id": "A", "text": "3375"}, {"id": "B", "text": "9000"}, {"id": "C", "text": "4000"}, {"id": "D", "text": "3125"}]'::jsonb, ARRAY['C']::text[], 'ندرس f(m) = m²(30−m): تبلغ أقصاها عند m = 20، حيث n = 10، فيكون m²(30−m) = 400 × 10 = 4000 (للمقارنة: m=19 يعطي 3971، وm=21 يعطي 3969).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q75', 'exam_primary_2022_maths_nov', 75, 'الدوال — قراءة التمثيل المبياني', 'On considère une fonction f dont la courbe représentative (C_f) dans un repère orthonormé est donnée ci-contre :', false, '[{"id": "A", "text": "L''ensemble de définition de f est D_f = [−1; 1]"}, {"id": "B", "text": "f(−1) = −1"}, {"id": "C", "text": "L''antécédent de 0 par f est 1"}, {"id": "D", "text": "Les solutions sur D_f de l''équation f(x) = 0 sont −1 et 1"}]'::jsonb, ARRAY['D']::text[], 'المنحنى قطع مكافئ يقطع محور الأفاصيل في −1 وفي 1؛ إذن للمعادلة f(x) = 0 حلان هما −1 و1. A خطأ (المنحنى يمتد خارج المجال المذكور)، وB خطأ، وC خطأ لأن 0 له سابقتان اثنتان (f(−1) = 0 وله سابق آخر).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q76', 'exam_primary_2022_maths_nov', 76, 'الدوال — جدول التغيرات', 'Soit f une fonction dont le tableau de variations est donné ci-dessous. On note (C_f) sa courbe représentative dans un repère orthonormé.', false, '[{"id": "A", "text": "f est croissante sur [−2; 1]"}, {"id": "B", "text": "La courbe (C_f) passe par le point de coordonnées (1; 3)"}, {"id": "C", "text": "Le minimum de f sur [−2; 3] est atteint en x₀ = 1"}, {"id": "D", "text": "f(x) ≤ −1 pour tout x de [−2; 1]"}]'::jsonb, ARRAY['C']::text[], 'على السهم النازل f متناقصة (A خطأ) وتأخذ قيما بين −1 و3 (D خطأ). f(1) = −1، إذن المنحنى يمر بالنقطة (1;−1) وليس بالنقطة المذكورة في B (B خطأ). أصغر قيمة في الجدول هي −1، تتحقق عند x₀ = 1: إذن القيمة الدنيا لـ f على المجال هي −1 وتُبلغ عند x₀ = 1.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q77', 'exam_primary_2022_maths_nov', 77, 'الهندسة التحليلية — المستقيمات', 'Soient dans un repère orthonormé les points : A(1; 2), B(−1; 0) et C(1; 0)', false, '[{"id": "A", "text": "Un vecteur directeur de la droite (AB) est u⃗(−2; 2)"}, {"id": "B", "text": "Une équation cartésienne de la droite (AB) est : y = −x + 1"}, {"id": "C", "text": "Le point C(1; 0) appartient à la droite (AB)"}, {"id": "D", "text": "L''équation de la droite parallèle à (AB) passant par le point C est : y = x − 1"}]'::jsonb, ARRAY['D']::text[], 'المتجه AB(−2;−2)، ميل المستقيم (AB) هو 1 ومعادلته y = x + 1؛ إذن A خطأ، وB خطأ، والنقطة المذكورة في C لا تنتمي إلى المستقيم. المستقيم الموازي لـ (AB) والمار بالنقطة C(1;0)، ميله 1، معادلته y = x − 1.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q78', 'exam_primary_2022_maths_nov', 78, 'الدوال — الخطية والتآلفية', 'Soient f une fonction linéaire et g une fonction affine telles que : f(2) = g(2) = 4 et f(3) = −g(3). On a :', false, '[{"id": "A", "text": "g(1) = −14"}, {"id": "B", "text": "g(1) = −34"}, {"id": "C", "text": "g(1) = 14"}, {"id": "D", "text": "g(1) = 24"}]'::jsonb, ARRAY['C']::text[], 'بما أن f خطية وf(2) = 4 فإن f(x) = 2x، إذن f(3) = 6 ومنه g(3) = −6. وg(2) = 4 يعطي الميل −10، إذن g(x) = −10x + 24، ومنه g(1) = 14.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q79', 'exam_primary_2022_maths_nov', 79, 'الهندسة التحليلية — المتراجحات والمستوى', 'Ci-dessous les représentations graphiques des droites (D) et (D′) d''équations respectives y = −x + 3 et y = x dans un repère orthonormé. La partie du plan grisée est l''ensemble des points M(x; y) tels que :', false, '[{"id": "A", "text": "{x − y ≥ 0; x + y − 3 ≥ 0; y ≥ 0}"}, {"id": "B", "text": "{x − y ≥ 0; x + y − 3 ≤ 0; y ≥ 0}"}, {"id": "C", "text": "{x − y ≤ 0; x + y − 3 ≥ 0; y ≥ 0}"}, {"id": "D", "text": "{x − y ≤ 0; x + y − 3 ≤ 0; y ≥ 0}"}]'::jsonb, ARRAY['B']::text[], 'تحفظ المصدرين: المنطقة المظللة غير ظاهرة على نسخة المسح الضوئي. الجزء المحدود الوحيد الذي تصفه الأنظمة الأربعة هو المثلث ذو الرؤوس (0;0)، (3;0)، (1,5;1,5)، وهو الذي يُفترض أنه المظلل. نقاطه تقع تحت (D)، أي y ≤ x؛ وتحت (D'')، أي x + y ≤ 3؛ وفوق محور الأفاصيل، أي y ≥ 0. تحقق بالنقطة (1;1): 1 ≤ 1، و1 + 1 ≤ 3، و1 ≥ 0. مناصب: «إجابة مرجّحة : à confirmer sur l''original».', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', false, 'إجابة مرجّحة عند المصدرين؛ المنطقة المظللة غير ظاهرة على نسخة المسح الضوئي، فلا يمكن التحقق منها مباشرة من الورقة. الجواب مبني على أن الجزء المحدود الوحيد الذي تصفه الأنظمة الأربعة هو المثلث ذو الرؤوس (0;0)، (3;0)، (1,5;1,5).')
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q80', 'exam_primary_2022_maths_nov', 80, 'الهندسة — المثلثات والمساحات', 'ABC est un triangle dont les trois côtés ont des longueurs deux à deux différentes. Le point D est le milieu du côté [AB]. On s''intéresse alors aux deux triangles ADC et DBC. (Figure ci-dessous)', false, '[{"id": "A", "text": "Les deux triangles ont la même aire et le même périmètre."}, {"id": "B", "text": "Les deux triangles ont la même aire et des périmètres différents."}, {"id": "C", "text": "Les deux triangles ont le même périmètre et des aires différentes."}, {"id": "D", "text": "Les deux triangles ont des aires différentes et des périmètres différents."}]'::jsonb, ARRAY['B']::text[], 'القاعدتان AD وDB متساويتان، والمثلثان لهما نفس الارتفاع الصادر من C: إذن مساحتاهما متساويتان. محيطاهما: CA + AD + DC وDB + BC + DC؛ بما أن CA ≠ CB فالمحيطان مختلفان.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q81', 'exam_primary_2022_maths_nov', 81, 'الهندسة — الزوايا والدائرة', 'Soient (C) un cercle de centre O et A, B, M et N sont des points de ce cercle tels que ABM = 50°', false, '[{"id": "A", "text": "ANM = 100°"}, {"id": "B", "text": "AOM = 50°"}, {"id": "C", "text": "AMO = 40°"}, {"id": "D", "text": "BAN = BON"}]'::jsonb, ARRAY['C']::text[], 'الزاويتان ABM وAOM محيطية ومركزية تعترضان نفس القوس AM: الزاوية المركزية تساوي ضعف المحيطية، إذن AOM = 100° (A وB خطأ). المثلث AOM متساوي الساقين في O، إذن AMO = (180° − 100°)/2 = 40°. وD خطأ.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q82', 'exam_primary_2022_maths_nov', 82, 'التحويلات — التحاكي والمساحات', 'Soit ABC un triangle d''aire s = 40 cm² et A′B′C′ son image par l''homothétie h de centre A de rapport k = 2. L''aire du triangle A′B′C′ est :', false, '[{"id": "A", "text": "s′ = 40 cm²"}, {"id": "B", "text": "s′ = 160 cm²"}, {"id": "C", "text": "s′ = 80 cm²"}, {"id": "D", "text": "s′ = 320 cm²"}]'::jsonb, ARRAY['B']::text[], 'تحاكٍ (homothétie) بنسبة k يضرب الأطوال في k والمساحات في k². هنا k² = 4، إذن المساحة = 40 × 4 = 160 cm².', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q83', 'exam_primary_2022_maths_nov', 83, 'المتتاليات — الحسابية', 'Soit (uₙ)ₙ∈ℕ* une suite arithmétique de raison r = 3/4 et de premier terme u₁ = 2. La valeur de n pour que uₙ = 77 est :', false, '[{"id": "A", "text": "101"}, {"id": "B", "text": "100"}, {"id": "C", "text": "99"}, {"id": "D", "text": "102"}]'::jsonb, ARRAY['A']::text[], 'uₙ = 2 + (n−1)×3/4 = 77، إذن (n−1)×3/4 = 75، ومنه n − 1 = 100، أي n = 101.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q84', 'exam_primary_2022_maths_nov', 84, 'الجبر — المتتاليات الهندسية والمعادلات', 'L''ensemble des solutions de l''équation : 1 + x/(x+2) + (x/(x+2))² + … + (x/(x+2))⁷ = 0 est :', false, '[{"id": "A", "text": "S = {2}"}, {"id": "B", "text": "S = {1; 2}"}, {"id": "C", "text": "S = {−1}"}, {"id": "D", "text": "S = {−1; 1}"}]'::jsonb, ARRAY['C']::text[], 'مع q = x/(x+2) ≠ 1، الطرف الأيسر مجموع هندسي من 8 حدود. إذا كان q = 1 فالمجموع يساوي 8 (مستحيل). وإلا فالمجموع = (1 − q⁸)/(1 − q)، وينعدم إذا كان q⁸ = 1 مع q ≠ 1، أي q = −1. إذن x/(x+2) = −1، أي x = −x − 2، ومنه x = −1.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q85', 'exam_primary_2022_maths_nov', 85, 'التحويلات — الإزاحة والتماثل', 'On considère le quadrillage codé ci-contre. On ne repère pas les cases, mais les nœuds du quadrillage. Ainsi, le carré grisé, appelé W, occupe la case codée : (C₄, C₅, D₅, D₄). On applique successivement au carré W les transformations suivantes : 1) une translation de vecteur D₅D₈ ; 2) la symétrie par rapport à l''axe (F₁F₁₁) ; Quel est le code de la nouvelle case occupée par le carré W ?', false, '[{"id": "A", "text": "(G₇, G₈, H₈, H₇)"}, {"id": "B", "text": "(I₇, I₈, J₈, J₇)"}, {"id": "C", "text": "(H₆, H₇, I₇, I₆)"}, {"id": "D", "text": "(H₇, H₈, I₈, I₇)"}]'::jsonb, ARRAY['D']::text[], 'الإزاحة بالمتجه D₅D₈ تعني ثلاثة أعمدة إلى اليمين: (C₄,C₅,D₅,D₄) ← (C₇,C₈,D₈,D₇). التماثل بالنسبة إلى المحور (F₁F₁₁): C ← I وD ← H، فيصبح الرمز (H₇,H₈,I₈,I₇).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q86', 'exam_primary_2022_maths_nov', 86, 'الإحصاء — الوسيط والمنوال', 'Le diagramme en bâtons ci-dessous donne la répartition des notes obtenues par les élèves à une épreuve de mathématiques.', false, '[{"id": "A", "text": "La moyenne de cette série statistique est 17"}, {"id": "B", "text": "Le mode de cette série statistique est 5"}, {"id": "C", "text": "La médiane de cette série statistique est 10"}, {"id": "D", "text": "Le pourcentage des élèves ayant obtenu la note 10 est 20 %"}]'::jsonb, ARRAY['C']::text[], 'المجموع الكلي 40. المعدل = 437/40 ≈ 10,9 (A خطأ)، والمنوال هو 13 (B خطأ)، و5 تلاميذ من 40 حصلوا على 10، أي 12,5 % (D خطأ). بالنسبة إلى الوسيط، التكرارات التراكمية تبلغ 20 بالضبط، أي النصف، عند العلامة 10: هذا هو الجواب المنتظر. تحفظ المصدرين: حسب التعريف المستعمل في الإعدادي يكون الوسيط 10؛ أما بأخذ متوسط القيمتين 20 و21 في الترتيب فيكون 11,5 — ولا اقتراح آخر صحيح. مناصب: «إجابة مرجّحة : réponse probable ; une autre option peut être défendue selon la référence utilisée».', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, 'إجابة مرجّحة عند المصدرين؛ الوسيط 10 حسب تعريف الإعدادي (التكرارات التراكمية تبلغ 20 عند العلامة 10)، أما بمتوسط القيمتين 20 و21 في الترتيب فيكون 11,5 — ولا اقتراح آخر صحيح.')
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q87', 'exam_primary_2022_maths_nov', 87, 'الاحتمالات — التوافيق', 'Un sac contient sept boules numérotées : 2 ; 2 ; 2 ; 2 ; 3 ; 3 ; 3. Les boules sont indiscernables au toucher. On tire au hasard et simultanément trois boules du sac. Le nombre de cas possibles pour obtenir au moins deux boules portant le numéro 2 est :', false, '[{"id": "A", "text": "18"}, {"id": "B", "text": "210"}, {"id": "C", "text": "60"}, {"id": "D", "text": "22"}]'::jsonb, ARRAY['D']::text[], 'كرتان «2» بالضبط: C(4,2)×C(3,1) = 6×3 = 18. ثلاث كرات «2»: C(4,3) = 4. المجموع: 18 + 4 = 22 (من أصل C(7,3) = 35 سحبا ممكنا).', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q88', 'exam_primary_2022_maths_nov', 88, 'هندسة الفضاء — المستقيمات', 'La figure ci-contre représente un parallélépipède rectangle. Les droites (AG) et (EI) sont :', false, '[{"id": "A", "text": "coplanaires."}, {"id": "B", "text": "non coplanaires."}, {"id": "C", "text": "concourantes."}, {"id": "D", "text": "parallèles."}]'::jsonb, ARRAY['C']::text[], 'النقط E، A، G، I تشكل المستطيل القطري (AEGC)، وI ينتمي إلى هذا المستوى: المستقيمان إذن متحدا المستوى. داخل هذا المستطيل، (AG) فوق القطر و(EI) تحته، إذن يتقاطعان: هما متقاطعان (concourantes)، وهو الجواب الأدق. ملاحظة mesconcours: A صحيح أيضا، لأن مستقيمين متقاطعين هما بالضرورة متحدا المستوى. مناصب: «إجابة مرجّحة : réponse probable ; une autre option peut être défendue selon la référence utilisée».', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, 'إجابة مرجّحة عند المصدرين؛ الخيار A صحيح أيضاً لأن مستقيمين متقاطعين هما بالضرورة متحدا المستوى، لكن C هو الجواب الأدق.')
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q89', 'exam_primary_2022_maths_nov', 89, 'القياس — المساحات', 'Combien de pots de peinture faut-il acheter pour peindre les murs et le plafond d''une salle de largeur 5 m, de longueur 8 m et de hauteur 3 m sachant qu''un pot peut peindre 10 m² ?', false, '[{"id": "A", "text": "10"}, {"id": "B", "text": "13"}, {"id": "C", "text": "11"}, {"id": "D", "text": "12"}]'::jsonb, ARRAY['D']::text[], 'الجدران: 2 × (5 + 8) × 3 = 78 m². السقف: 5 × 8 = 40 m². المجموع: 118 m²، أي 118/10 = 11,8 علبة: يجب شراء 12 علبة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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

-- أسئلة امتحان: الرياضيات (دورة نونبر 2022) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_maths_nov_q90', 'exam_primary_2022_maths_nov', 90, 'هندسة الفضاء — الأنماط', 'Cette figure représente le patron d''un(e) :', false, '[{"id": "A", "text": "Cube."}, {"id": "B", "text": "Parallélépipède."}, {"id": "C", "text": "Prisme."}, {"id": "D", "text": "Pyramide."}]'::jsonb, ARRAY['C']::text[], 'النمط يتكون من ثلاثة مستطيلات متلاصقة (الأوجه الجانبية) ومثلثين (القاعدتان). مجسم له قاعدتان مثلثتان متوازيتان تربطهما مستطيلات هو منشور قائم ذو قاعدة مثلثة.', 'qcm', 'third_party', 'https://mesconcours.ma/concours/enseignement/2022-1015/', true, NULL)
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
