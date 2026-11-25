-- ====================================================================
-- مباراتي — الرياضيات، مادة التخصص، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/الرياضيات - مادة التخصص - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 38؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/الرياضيات - مادة التخصص - دورة نونبر 2025.pdf (11 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--   رابط AI Studio: https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q61 إلى Q90 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة أُعيد حسابها واحداً واحداً والتحقق منها (رياضيات محضة)؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة المعتمدة على شكل (Q73، Q74، Q75، Q76، Q77، Q78، Q80، Q81، Q84،
--     Q88، Q89) موسومة في verification_note بقراءة الشكل كما هو مطبوع.
--   * التعليلات منقولة حرفياً من ملف الحل.
--
-- ملاحظات عن ملف الامتحان:
--   * غلاف الورقة: مدة الإنجاز ساعة واحدة (60 دقيقة)، المعامل 6 — المعامل مذكور
--     هنا فقط لأن جدول exams لا يحوي عمود معامل.
--   * تصحيح واحد مقابل ملف الحل: الخيار D في Q77 مكتوب في ملف الحل «5√ cm»
--     خطأً؛ الورقة تطبعه «√5 cm» — صُحح حسب الورقة (انظر verification_note في Q77).
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (أسهم بجانب A في Q61 وD في Q62
--     وD في Q63، وعلامات ✓ على بعض اختيارات Q80) — أُهملت تماماً.
--   * الأسئلة مرقمة Q61–Q90 لأن مكون الرياضيات جزء من اختبار مشترك (العربية،
--     الفرنسية، الرياضيات، العلوم)؛ الترقيم الأصلي محفوظ بلا إعادة ترقيم.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_maths_nov
--   <exam_id>_q<n>  للأسئلة.  session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_maths_nov', 'specialty_primary', 2025, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q61', 'exam_primary_2025_maths_nov', 61, 'الكسور — العمليات', 'On pose : H = (1 − 1/3) / (3 + 1/4) × 6 ; On a :', false, '[{"id": "A", "text": "H = 16/13"}, {"id": "B", "text": "H = −8/13"}, {"id": "C", "text": "H = 13"}, {"id": "D", "text": "H = 18/13"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'نحسب البسط والمقام بتوحيد المقامات: 1 − 1/3 = (3−1)/3 = 2/3 و 3 + 1/4 = (12+1)/4 = 13/4. إذن: H = (2/3) / (13/4) × 6 = (2/3) × (4/13) × 6 = (2×4×2)/13 = 16/13.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q62', 'exam_primary_2025_maths_nov', 62, 'القوى', 'On pose J = (2^(−3) × 3^2) / (8^(−2) × 5^(−3)) ; On a :', false, '[{"id": "A", "text": "J = 6/40"}, {"id": "B", "text": "J = 9 × 10^(−3)"}, {"id": "C", "text": "J = −(6×6)/(16×15)"}, {"id": "D", "text": "J = 9000"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'نعلم أن 8^(−2) = (2^3)^(−2) = 2^(−6). بالتعويض واستعمال خصائص القوى: J = (2^(−3) × 3^2) / (2^(−6) × 5^(−3)) = 2^(−3−(−6)) × 3^2 × 5^3 = 2^3 × 9 × 5^3 = (2×5)^3 × 9 = 10^3 × 9 = 9000.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q63', 'exam_primary_2025_maths_nov', 63, 'القاسم المشترك الأكبر', 'Les inscrits dans un centre de formation sont 462 filles et 210 garçons. Le centre décide de les répartir en groupes de façon équitable (Un même nombre de filles et un même nombre de garçons dans tous les groupes). Quel est le nombre maximal de groupes à construire ?', false, '[{"id": "A", "text": "66"}, {"id": "B", "text": "105"}, {"id": "C", "text": "154"}, {"id": "D", "text": "42"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'العدد الأقصى للمجموعات المتساوية هو القاسم المشترك الأكبر للعددين 462 و 210 (PGCD(462;210)). باستعمال خوارزمية إقليدس: 462 = 210×2 + 42 ; 210 = 42×5 + 0. آخر باقٍ غير منعدم هو 42، إذن العدد الأقصى للمجموعات هو 42 مجموعة (كل مجموعة تضم 11 فتاة و 5 فتيان).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q64', 'exam_primary_2025_maths_nov', 64, 'الكتابة العلمية', 'Le cœur humain effectue environ 5000 battements par heure. Le nombre de battements effectués en une semaine est :', false, '[{"id": "A", "text": "8,4×10^3"}, {"id": "B", "text": "8,4×10^4"}, {"id": "C", "text": "8,4×10^5"}, {"id": "D", "text": "8,4×10^6"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'الأسبوع يتكون من 7 أيام، وكل يوم فيه 24 ساعة، إذن عدد الساعات في الأسبوع هو: 7×24 = 168 h. وبالتالي فإن عدد النبضات في أسبوع هو: 5000×168 = 840000 = 8,4×10^5.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q65', 'exam_primary_2025_maths_nov', 65, 'باقي القسمة الإقليدية', 'Le reste de la division euclidienne de 63^2974 par 7 est :', false, '[{"id": "A", "text": "3"}, {"id": "B", "text": "2"}, {"id": "C", "text": "1"}, {"id": "D", "text": "0"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'بما أن 63 = 7×9، فإن العدد 63 يقبل القسمة على 7، وبالتالي فإن أي قوة موجبة له 63^2974 هي أيضاً مضاعف للعدد 7. إذن باقي القسمة الإقليدية هو 0.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q66', 'exam_primary_2025_maths_nov', 66, 'قواسم عدد', 'Le nombre de diviseurs de 200 est :', false, '[{"id": "A", "text": "6"}, {"id": "B", "text": "5"}, {"id": "C", "text": "11"}, {"id": "D", "text": "7"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نفكك العدد 200 إلى جداء عوامل أولية: 200 = 8×25 = 2^3 × 5^2. عدد القواسم الموجبة للعدد 200 هو: (3+1)(2+1) = 4×3 = 12 (وهي: 1, 2, 4, 5, 8, 10, 20, 25, 40, 50, 100, 200). وبما أن العدد 12 غير موجود ضمن الاختيارات A و B و C و D، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q67', 'exam_primary_2025_maths_nov', 67, 'النظمات — معادلتان', 'Farah a une somme d''argent de 83 Dh répartie en 25 pièces de monnaie de type 2 Dh et 5 Dh. Le nombre de pièces de chaque type est :', false, '[{"id": "A", "text": "11 pièces de type 2 Dh et 14 pièces de type 5 Dh"}, {"id": "B", "text": "14 pièces de type 2 Dh et 11 pièces de type 5 Dh"}, {"id": "C", "text": "10 pièces de type 2 Dh et 21 pièces de type 5 Dh"}, {"id": "D", "text": "21 pièces de type 2 Dh et 10 pièces de type 5 Dh"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'ليكن x عدد القطع من فئة 2 Dh و y عدد القطع من فئة 5 Dh. نحصل على النظمة: {x + y = 25 ; 2x + 5y = 83}. بضرب المعادلة الأولى في 2 نحصل على 2x + 2y = 50. بطرحها من المعادلة الثانية نجد: 3y = 33 ⟹ y = 11. ومنه: x = 25 − 11 = 14. (التحقق: 14×2 + 11×5 = 28 + 55 = 83 Dh).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q68', 'exam_primary_2025_maths_nov', 68, 'تأطير الأعداد الحقيقية', 'Soient a et b deux nombres réels tels que : 2 ≤ a ≤ 3 et −4 ≤ b ≤ −2 ; On a :', false, '[{"id": "A", "text": "5 ≤ a−b ≤ 6"}, {"id": "B", "text": "−2 ≤ a−b ≤ 1"}, {"id": "C", "text": "−6 ≤ a−b ≤ −5"}, {"id": "D", "text": "4 ≤ a−b ≤ 7"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'لتأطير الفرق a−b = a + (−b)، نؤطر أولاً −b: −4 ≤ b ≤ −2 ⟺ 2 ≤ −b ≤ 4. نجمع التأطيرين طرفاً بطرف: 2+2 ≤ a + (−b) ≤ 3+4 ⟹ 4 ≤ a−b ≤ 7.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q69', 'exam_primary_2025_maths_nov', 69, 'مضاعفات عدد', 'Ahmed a choisi un nombre entier naturel. Il double ce nombre, puis double le nouveau résultat, double une autre fois puis encore une fois. Parmi les résultats ci-dessous, quel est celui qu''il n''a sûrement pas obtenu ?', false, '[{"id": "A", "text": "1200"}, {"id": "B", "text": "80"}, {"id": "C", "text": "84"}, {"id": "D", "text": "880"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'ليكن n العدد الصحيح الطبيعي الذي اختاره أحمد. لقد ضاعفه 4 مرات متتالية، أي: n ⟶ 2n ⟶ 4n ⟶ 8n ⟶ 16n. إذن يجب أن يكون الناتج النهائي مضاعفاً للعدد 16: 1200÷16 = 75 (مضاعف لـ 16) ; 80÷16 = 5 (مضاعف لـ 16) ; 880÷16 = 55 (مضاعف لـ 16) ; 84÷16 = 5,25 (ليس مضاعفاً لـ 16). إذن العدد الذي يستحيل أن يكون قد حصل عليه هو 84.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q70', 'exam_primary_2025_maths_nov', 70, 'النسب المئوية — التخفيض', 'Mustapha obtient une réduction de 15% pour un vélo valant 3000 Dh. Le nouveau prix du vélo est :', false, '[{"id": "A", "text": "450 Dh"}, {"id": "B", "text": "2985 Dh"}, {"id": "C", "text": "3450 Dh"}, {"id": "D", "text": "2550 Dh"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'قيمة التخفيض هي: 3000 × 15/100 = 450 Dh. إذن الثمن الجديد للدراجة هو: 3000 − 450 = 2550 Dh.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q71', 'exam_primary_2025_maths_nov', 71, 'التأليفات — الاحتمالات', 'Dans une boite, il y a trois stylos rouges et deux noirs, indiscernables au toucher. On tire au hasard et simultanément deux stylos de la boite. Le nombre de tirages possibles pour que les stylos choisis soient de couleurs différentes est :', false, '[{"id": "A", "text": "6"}, {"id": "B", "text": "5"}, {"id": "C", "text": "28"}, {"id": "D", "text": "12"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'السحب آني (في آن واحد)، وبالتالي نستعمل التأليفات. للحصول على قلمين من لونين مختلفين، يجب سحب قلم أحمر واحد من بين 3 وقلم أسود واحد من بين 2: C(3,1) × C(2,1) = 3×2 = 6.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q72', 'exam_primary_2025_maths_nov', 72, 'المستقيمات — التوازي', 'Dans le plan rapporté à un repère orthonormé, on considère les droites (D) et (Δ) d''équations : (D): 4x−2y+1=0 et (Δ): y=2x−1. On a :', false, '[{"id": "A", "text": "(D) et (Δ) sont perpendiculaires"}, {"id": "B", "text": "(D) et (Δ) sont parallèles"}, {"id": "C", "text": "(D) et (Δ) sont confondues"}, {"id": "D", "text": "(D) et (Δ) sont sécantes"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'نكتب المعادلة المختصرة للمستقيم (D): 4x−2y+1=0 ⟺ 2y=4x+1 ⟺ y=2x+1/2. بمقارنتها مع معادلة (Δ): y=2x−1، نلاحظ أن للمستقيمين نفس الميل (m=2) وأرتوبين مختلفين عند الأصل (1/2 ≠ −1). إذن المستقيمان (D) و (Δ) متوازيان (قطعا).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q73', 'exam_primary_2025_maths_nov', 73, 'جدول تغيرات دالة — التمثيل المبياني', 'On considère une fonction f dont on donne le tableau de variations : (تزايدية من −4 عند x=−1 إلى 1 عند x=0، ثم تناقصية من 1 عند x=0 إلى 0 عند x=1، ثم تزايدية من 0 عند x=1 إلى 5 عند x=2). Laquelle des représentations graphiques ci-dessous est celle de f ?', false, '[{"id": "A", "text": "Fig 1"}, {"id": "B", "text": "Fig 2"}, {"id": "C", "text": "Fig 3"}, {"id": "D", "text": "Fig 4"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'من جدول التغيرات نستخرج النقط والقيم القصوى والدنيا للدالة: f(−1)=−4 ; قيمة قصوى محلية عند (0;1) ; قيمة دنيا محلية عند (1;0) (المنحنى يمس محور الأفاصيل عند x=1) ; f(2)=5. بالنظر إلى الأشكال الأربعة، الشكل الوحيد المطابق تماماً لهذه التغيرات والإحداثيات هو Fig 3.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'السؤال يعتمد على جدول التغيرات والأشكال الأربعة في ورقة الامتحان: f(−1)=−4، قيمة قصوى 1 عند x=0، قيمة دنيا 0 عند x=1، f(2)=5 — الشكل الوحيد المطابق هو Fig 3.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q74', 'exam_primary_2025_maths_nov', 74, 'الدالة التآلفية', 'Ci-contre la représentation graphique d''une fonction numérique f. L''expression de la fonction f est :', false, '[{"id": "A", "text": "f(x) = (1/2)x − 4"}, {"id": "B", "text": "f(x) = x − 4"}, {"id": "C", "text": "f(x) = (1/4)x + 2"}, {"id": "D", "text": "f(x) = 2x − 4"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'التمثيل المبياني عبارة عن مستقيم، إذن f دالة تآلفية تكتب على الشكل f(x) = ax + b. من المبيان نلاحظ أن المستقيم يمر بالنقطتين (0;−4) و (2;0): الأرتوب عند الأصل: b = f(0) = −4. المعامل الموجه: a = (f(2)−f(0))/(2−0) = (0−(−4))/2 = 4/2 = 2. ومنه فإن f(x) = 2x − 4.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'المستقيم في ورقة الامتحان يمر بالنقطتين (0;−4) و (2;0)، فالمعادلة f(x) = 2x − 4.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q75', 'exam_primary_2025_maths_nov', 75, 'الهندسة — الزوايا', 'Sur la figure ci-contre : la droite (AB) est perpendiculaire à la droite (AE) et à la droite (BC). Le triangle DEC est isocèle en E. La mesure, en degré, de l''angle CDE est a et celle de l''angle ECB est 4a. La valeur de a est :', false, '[{"id": "A", "text": "28°"}, {"id": "B", "text": "29°"}, {"id": "C", "text": "32°"}, {"id": "D", "text": "31°"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'بما أن (AB)⊥(AE) و (AB)⊥(BC)، فإن المستقيمين (AD) و (BC) متوازيان. القاطع (EC) يحدد مع المستقيمين المتوازيين (AD) و (BC) زاويتين متبادلتين داخلياً هما DEC و ECB، إذن: DEC = ECB = 4a. بما أن المثلث DEC متساوي الساقين رأسه E، فإن زاويتي القاعدة متقايستان: ECD = CDE = a. مجموع قياسات زوايا المثلث DEC يساوي 180°: DEC + CDE + ECD = 180° ⟹ 4a + a + a = 180° ⟹ 6a = 180° ⟹ a = 30°. وبما أن 30° غير موجودة ضمن الاختيارات A و B و C و D، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من الشكل: DEC = ECB = 4a (متبادلتان داخلياً)، والمثلث DEC متساوي الساقين رأسه E، فزاويتا القاعدة a وa؛ 6a = 180° أي a = 30°، وهي غير واردة في A–D، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q76', 'exam_primary_2025_maths_nov', 76, 'مبرهنة طاليس', 'On considère la figure ci-contre. Les points A, B et E sont alignés ainsi que les points C, B et D avec AC=5, DE=8 et BE=10. Quelle est la longueur du segment [AB] ?', false, '[{"id": "A", "text": "6,25"}, {"id": "B", "text": "3,2"}, {"id": "C", "text": "4"}, {"id": "D", "text": "1,6"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'من الشكل نلاحظ أن (AC)⊥(AE) و (DE)⊥(AE)، إذن (AC)∥(DE). وحسب مبرهنة طاليس المباشرة (النقط A,B,E مستقيمية و C,B,D مستقيمية): BA/BE = AC/DE ⟹ AB/10 = 5/8 ⟹ AB = (5×10)/8 = 50/8 = 6,25.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من الشكل: (AC)⊥(AE) و (DE)⊥(AE) فالمستقيمان متوازيان؛ طاليس يعطي AB/10 = 5/8 أي AB = 6,25.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q77', 'exam_primary_2025_maths_nov', 77, 'مبرهنة فيتاغورس', 'On considère la figure ci-contre (مثلث LMO قائم الزاوية في L حيث LO=3 cm و MO=4 cm و LM=x) : La longueur x est égale à :', false, '[{"id": "A", "text": "2 cm"}, {"id": "B", "text": "5 cm"}, {"id": "C", "text": "√7 cm"}, {"id": "D", "text": "√5 cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'المثلث LMO قائم الزاوية في L، ووتره هو [MO]. حسب مبرهنة فيتاغورس المباشرة: LM² + LO² = MO² ⟹ x² + 3² = 4² ⟹ x² = 16 − 9 = 7. وبما أن x > 0، فإن x = √7 cm.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'الخيار D في ملف الحل مكتوب «5√ cm» خطأً؛ الورقة تطبعه «√5 cm» — صُحح حسب الورقة. المثلث LMO قائم الزاوية في L، وتره [MO]؛ x² = 16 − 9 = 7 أي x = √7 cm.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q78', 'exam_primary_2025_maths_nov', 78, 'التحاكي', 'Dans la figure ci-contre ABCD est un rectangle de centre O et G le milieu de [OB]. Le rapport de l''homothétie h de centre G qui transforme B en D est :', false, '[{"id": "A", "text": "−3"}, {"id": "B", "text": "3"}, {"id": "C", "text": "4"}, {"id": "D", "text": "−1/4"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بما أن h تحاكي مركزه G ونسبته k ويحول B إلى D، فإن: GD→ = k·GB→. O هو مركز المستطيل، إذن O منتصف [BD]، وبالتالي OD = OB. و G منتصف [OB]، إذن GO = GB = (1/2)OB، ومنه OD = 2GB. نحسب طول GD: GD = GO + OD = GB + 2GB = 3GB. ولأن النقطة G تقع بين B و D، فإن المتجهتين GD→ و GB→ لهما منحيان متعاكسان، إذن: GD→ = −3·GB→ ⟹ k = −3.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من الشكل: O مركز المستطيل (منتصف [BD]) و G منتصف [OB]؛ GD = 3GB في الاتجاه المعاكس، فالنسبة k = −3.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q79', 'exam_primary_2025_maths_nov', 79, 'المتجهات — الإحداثيات', 'Dans le plan rapporté à un repère orthonormé, on considère les points : A(5;−1), R(−2;0) et F(3;−1). Le couple des coordonnées du vecteur 2·AR→ − RF→ est :', false, '[{"id": "A", "text": "(−12;2)"}, {"id": "B", "text": "(3;−24)"}, {"id": "C", "text": "(−19;3)"}, {"id": "D", "text": "(−9;3)"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'نحسب إحداثيات المتجهتين AR→ و RF→: AR→(−2−5; 0−(−1)) = (−7;1) ⟹ 2·AR→(−14;2) ; RF→(3−(−2); −1−0) = (5;−1). إذن إحداثيات المتجهة 2·AR→ − RF→ هي: (−14−5; 2−(−1)) = (−19;3).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q80', 'exam_primary_2025_maths_nov', 80, 'نشر المجسمات', 'La figure ci-contre est le patron de :', false, '[{"id": "A", "text": "Un parallélépipède"}, {"id": "B", "text": "Un tétraèdre"}, {"id": "C", "text": "Un prisme droit"}, {"id": "D", "text": "Un cône de révolution"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'النشر المقترح يتكون من قاعدة مستطيلة الشكل و 4 أوجه جانبية مثلثية الشكل، وهو بذلك نشر لـ هرم ذي قاعدة مستطيلة (une pyramide à base rectangulaire). (تنبيه: رباعي الأوجه tétraèdre هو هرم قاعدته مثلثة ويتكون من 4 مثلثات فقط، وليس مستطيلاً و4 مثلثات). وبما أن "هرم ذو قاعدة مستطيلة" غير موجود في الاختيارات، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'النشر في الورقة: قاعدة مستطيلة و4 أوجه مثلثية — هرم ذو قاعدة مستطيلة، غير وارد في الاختيارات، فالجواب E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q81', 'exam_primary_2025_maths_nov', 81, 'تصغير المجسمات — المساحات', 'Sur la figure ci-contre, la pyramide SIJKL est une réduction de la pyramide SOFAN de rapport 1/3. Sachant que l''aire totale de la pyramide SOFAN est 36 cm², quelle est l''aire totale de la pyramide SIJKL ?', false, '[{"id": "A", "text": "12 cm²"}, {"id": "B", "text": "4 cm²"}, {"id": "C", "text": "36/27 cm²"}, {"id": "D", "text": "6 cm²"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'عند تصغير مجسم بنسبة k = 1/3، فإن المساحة تضرب في k²: A(SIJKL) = k² × A(SOFAN) = (1/3)² × 36 = (1/9) × 36 = 4 cm².', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'التصغير بنسبة 1/3 يضرب المساحة في (1/3)²؛ (1/9)×36 = 4 cm².')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q82', 'exam_primary_2025_maths_nov', 82, 'الحجم — دالة', 'On découpe des quatre coins d''un rectangle de carton de dimensions 40 cm et 20 cm, quatre carrés de côté x (Fig ci-contre). On obtient le patron d''une boite rectangulaire de volume V égal à :', false, '[{"id": "A", "text": "V(x) = 4x³ − 120x² + 800x"}, {"id": "B", "text": "V(x) = x³ − 60x² + 800x"}, {"id": "C", "text": "V(x) = 800x"}, {"id": "D", "text": "V(x) = −20x² + 800x"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بعد قص المربعات الأربعة وطي الجوانب، تصبح أبعاد العلبة (متوازي المستطيلات): الطول: L = 40 − 2x ; العرض: l = 20 − 2x ; الارتفاع: h = x. إذن حجم العلبة هو: V(x) = (40−2x)(20−2x)x = (800 − 80x − 40x + 4x²)x = 4x³ − 120x² + 800x.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q83', 'exam_primary_2025_maths_nov', 83, 'السرعة والمسافة', 'Un cycliste roule à vitesse constante. Il fait le départ d''une ville à 9 h 48 min et arrive à un village à 10 h 03 min en parcourant 12 km. La distance qu''il pourra parcourir en 1 h 10 min est :', false, '[{"id": "A", "text": "82500 m"}, {"id": "B", "text": "15270 m"}, {"id": "C", "text": "56000 m"}, {"id": "D", "text": "50000 m"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'المدة الزمنية الأولى هي: 10 h 03 min − 9 h 48 min = 15 min. سرعة الدراجي بالدقيقة هي: 12000 m / 15 min = 800 m/min (أي 48 km/h). المدة الثانية هي: 1 h 10 min = 70 min. المسافة المقطوعة في 70 min هي: d = 800 × 70 = 56000 m.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q84', 'exam_primary_2025_maths_nov', 84, 'المحيط — الأقواس الدائرية', 'Le périmètre de la figure suivante est égal à :', false, '[{"id": "A", "text": "10π cm"}, {"id": "B", "text": "5π cm"}, {"id": "C", "text": "(5π − 4) cm"}, {"id": "D", "text": "(10π − 4) cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['A']::text[], 'بالاعتماد على سلم الشكل (وحدة التربيع هي 1 cm)، يتكون محيط الشكل من أقواس دائرية متماسة لها نفس الشعاع r = 1 cm: 4 أقواس خارجية في الأركان الأربعة، كل قوس يمثل ثلاثة أرباع دائرة (3/4)، أي ما يعادل 4×(3/4) = 3 دوائر كاملة. 4 أقواس داخلية (أعلى، أسفل، يمين، يسار)، كل قوس يمثل نصف دائرة (1/2)، أي ما يعادل 4×(1/2) = 2 دائرتين كاملتين. المجموع هو 3+2 = 5 دوائر كاملة شعاع كل منها r = 1 cm. إذن المحيط هو: P = 5 × (2πr) = 5 × 2π × 1 = 10π cm.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من الشكل: 4 أقواس خارجية (3/4 دائرة لكل منها) و4 أقواس داخلية (نصف دائرة لكل منها)، الشعاع 1 cm؛ المجموع 5 دوائر كاملة، فالمحيط 10π cm.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q85', 'exam_primary_2025_maths_nov', 85, 'الحجم — السعة', 'Un réservoir d''eau a la forme d''un pavé droit de dimensions 20 cm, 24 cm et 26 cm. Il est rempli aux trois quarts de sa hauteur. Quelle quantité d''eau contient ce réservoir ?', false, '[{"id": "A", "text": "37,44 l"}, {"id": "B", "text": "9,36 l"}, {"id": "C", "text": "12,48 l"}, {"id": "D", "text": "3,12 l"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'الحجم الكلي للخزان هو: V(total) = 20×24×26 = 12480 cm³ = 12,48 dm³ = 12,48 l. بما أنه مملوء إلى ثلاثة أرباع (3/4) ارتفاعه، فإن كمية الماء هي: V(eau) = (3/4) × 12,48 = 3 × 3,12 = 9,36 l.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q86', 'exam_primary_2025_maths_nov', 86, 'التناسبية — المدة', 'Un cycliste parcourt 8 km en 15 min. Combien de temps lui faut-il pour parcourir une distance de 15 km 40 m ?', false, '[{"id": "A", "text": "28 min 20 s"}, {"id": "B", "text": "28 min 2 s"}, {"id": "C", "text": "28 min 12 s"}, {"id": "D", "text": "28 min"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['C']::text[], 'نحول المسافات إلى المتر: 8 km = 8000 m و 15 km 40 m = 15040 m. باستعمال التناسبية: t = (15040×15)/8000 = (1504×15)/800 = (94×3)/10 = 28,2 min. نحول الجزء العشري إلى ثوانٍ: 0,2×60 = 12 s. إذن المدة اللازمة هي 28 min 12 s.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q87', 'exam_primary_2025_maths_nov', 87, 'المساحة — الهكتار', 'Un agriculteur possède un champ rectangulaire de 400 m de longueur et 100 m de largeur. Il a cultivé la moitié du champ avec du blé dur. La superficie cultivée est :', false, '[{"id": "A", "text": "20 ha"}, {"id": "B", "text": "2 ha"}, {"id": "C", "text": "40 ha"}, {"id": "D", "text": "4 ha"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'المساحة الكلية للحقل هي: S = 400×100 = 40000 m². بما أن 1 ha = 10000 m²، فإن المساحة الكلية هي 4 ha. وقد زرع الفلاح نصف الحقل، إذن المساحة المزروعة هي: 4 ha / 2 = 2 ha.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q88', 'exam_primary_2025_maths_nov', 88, 'المدراج — الترددات', 'L''histogramme ci-contre représente la répartition de l''âge des élèves d''un établissement. Combien d''élèves ont un âge entre 8 et 12 ans ?', false, '[{"id": "A", "text": "26"}, {"id": "B", "text": "14"}, {"id": "C", "text": "15"}, {"id": "D", "text": "40"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['D']::text[], 'من المدراج (المبيان)، التلاميذ الذين تتراوح أعمارهم بين 8 و 12 سنة يمثلون الصنفين [8;10[ و [10;12[: حصيص الصنف [8;10[ هو 26. حصيص الصنف [10;12[ هو 14. إذن العدد الإجمالي هو: 26+14 = 40 تلميذاً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من المدراج في الورقة: حصيص [8;10[ هو 26 وحصيص [10;12[ هو 14؛ المجموع 40.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q89', 'exam_primary_2025_maths_nov', 89, 'المعدل الحسابي', 'On a interrogé les élèves d''une classe de sixième année primaire sur le nombre de téléphones portables que possèdent leurs familles. Les statistiques sont représentées par le diagramme en barres ci-contre. La moyenne de téléphones portables par famille est :', false, '[{"id": "A", "text": "2"}, {"id": "B", "text": "2,875"}, {"id": "C", "text": "3"}, {"id": "D", "text": "2,5"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['B']::text[], 'نقرأ المعطيات من المبيان بالأعمدة: هاتف واحد (1): 5 أسر ; هاتفان (2): 14 أسرة ; 3 هواتف: 8 أسر ; 4 هواتف: 7 أسر ; 5 هواتف: 6 أسر. مجموع الأسر (الحصيص الإجمالي): N = 5+14+8+7+6 = 40. المعدل الحسابي هو: m = (1×5 + 2×14 + 3×8 + 4×7 + 5×6)/40 = (5+28+24+28+30)/40 = 115/40 = 2,875.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, 'من المبيان بالأعمدة في الورقة: 1→5 أسر، 2→14، 3→8، 4→7، 5→6؛ المعدل 115/40 = 2,875.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة نونبر 2025) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_maths_nov_q90', 'exam_primary_2025_maths_nov', 90, 'الترددات', 'Voici le relevé des quatre nationalités des touristes ayant visité une ville en une année donnée : (جدول: Français 0,6 ; Espagnoles … ; Anglais 0,2 ; Japonais 0,03). La fréquence des touristes espagnoles est :', false, '[{"id": "A", "text": "0,7"}, {"id": "B", "text": "0,2"}, {"id": "C", "text": "0,07"}, {"id": "D", "text": "0,27"}, {"id": "E", "text": "Aucun des choix proposés n''est juste."}]'::jsonb, ARRAY['E']::text[], 'نعلم أن مجموع الترددات في متسلسلة إحصائية يساوي دائماً 1. إذن تردد السياح الإسبان هو: f = 1 − (0,6 + 0,2 + 0,03) = 1 − 0,83 = 0,17. وبما أن القيمة 0,17 غير موجودة في الاختيارات المقترحة، فالجواب الصحيح هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1UkLcWaBX0BREcGduFm_Q3kwZ6bFnlGUK', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

