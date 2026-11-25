-- ====================================================================
-- مباراتي — امتحان ابتدائي: الرياضيات، مادة التخصص، دورة أكتوبر 2024
-- ====================================================================
-- المصدر: ملف الحل solved/2024/الرياضيات - مادة التخصص - دورة أكتوبر 2024.md
--   (الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2024/الرياضيات - مادة التخصص.pdf (11 صفحة).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q61 إلى Q90 وخياراته الخمسة (A-E) مطابق لورقة الامتحان.
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد الرياضيات ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * النصوص المقتطعة بـ [...] في ملف الحل (Q63، Q64، Q67، Q73) أكملت من الـPDF.
--   * علامات قلم مرشح سابق على ورقة الامتحان (إشارات على بعض الخيارات) أُهملت تماماً.
--
-- تصحيحان مهمان مقابل ملف الحل (الـPDF هو المرجع):
--   1. Q69: ملف الحل يعطي E مدعياً أن الجدول B يعرض f(4/3) = 5/27 موجبة؛
--      التحقق بدقة 300 dpi من الصفحة 4 يبيّن أن الجدول B يعرض f(4/3) = −5/27
--      (إشارة سالبة واضحة، مطابقة لإشارة الجدول D)، فالجدول B هو الجدول الصحيح
--      والجواب الصحيح هو B وليس E. التعليل أُعيدت كتابته تبعاً لذلك.
--   2. التنقيط: ملف الحل يذكر غرامة (−1) عن كل جواب خاطئ، لكن غلاف الامتحان
--      (القاعدة 10) ينص صراحة: «Chaque réponse incorrecte sera notée par zéro (0)»
--      — أي الجواب الخاطئ = 0 وليس −1. لا يوجد عمود في المخطط للتنقيط؛ تُسجَّل
--      هذه الملاحظة هنا فقط، والقاعدة 9: كل سؤال = نقطة واحدة (1).
--   3. صياغة الخيار E في Q77 و Q78 في الـPDF هي «Aucun des choix proposés
--      n'est juste» (ملف الحل كتب «précédents») — اعتُمد نص الـPDF.
--   4. أخطاء نسخ في ملف الحل صححها الـPDF: Q65 الخيار C هو «√3 − √2»
--      (ملف الحل كتب «√3 − 2»)؛ Q80 الخياران B و C هما «5√2 cm» و «5√8 cm»
--      (ملف الحل كتب «5/2 cm» و «5/8 cm» — قُرئ رمز √ على أنه /).
--
-- المدة والمعامل (من غلاف الامتحان، الصفحة 1): ساعة واحدة (60 دقيقة)، المعامل 6.
--   لا يوجد عمود للمعامل في جدول exams، فسُجّل هنا فقط.
--
-- الأسئلة المعتمدة على شكل (figure/graphe) موسومة في verification_note، مع
--   وصف الشكل وبياناته داخل نص السؤال بين [..] حتى يبقى السؤال مفهوماً بلا صورة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_maths_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على أرقام المصدر 61–90 (بلا إعادة ترقيم).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2024_maths_oct', 'specialty_primary', 2024, 'maths', 'مادة التخصص: الرياضيات', 'امتحان الرياضيات — مادة التخصص (دورة أكتوبر 2024)', 'دورة أكتوبر 2024', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q61
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q61', 'exam_primary_2024_maths_oct', 61, 'Calcul — fractions et puissances', 'On pose : M = (10/8)² × (1 + 3⁻¹) ; On a :', false, '[{"id": "A", "text": "M = 25/24"}, {"id": "B", "text": "M = 50/12"}, {"id": "C", "text": "M = 25/12"}, {"id": "D", "text": "M = 5/3"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'نبسّط الكسر أولاً ثم نحسب القوة: M = (5/4)² × (1 + 1/3) = 25/16 × 4/3 = 25/4 × 1/3 = 25/12', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q62
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q62', 'exam_primary_2024_maths_oct', 62, 'Encadrement — valeurs approchées', 'L''encadrement du nombre 22/7 au centième près est :', false, '[{"id": "A", "text": "3,100 < 22/7 < 3,200"}, {"id": "B", "text": "3,14 < 22/7 < 3,15"}, {"id": "C", "text": "3,142 < 22/7 < 3,143"}, {"id": "D", "text": "3,1428 < 22/7 < 3,1429"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], 'لدينا 22/7 ≈ 3,142857… والتأطير إلى جزء المائة (au centième près) يعني أن سعة التأطير تساوي 0,01 = 10⁻² (رقمان بعد الفاصلة)، وبالتالي: 3,14 < 22/7 < 3,15', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q63
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q63', 'exam_primary_2024_maths_oct', 63, 'PPCM — problèmes', 'Dans un pays, les élections pour la chambre des députés se déroulent tous les 4 ans et celles pour le conseil communal tous les 6 ans. Les deux élections ont eu lieu en 1984. À quelle année les deux élections auront-elles lieu de nouveau ?', false, '[{"id": "A", "text": "1996"}, {"id": "B", "text": "1994"}, {"id": "C", "text": "1990"}, {"id": "D", "text": "1988"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], 'تتزامن الانتخابات مجدداً بعد عدد من السنوات يساوي المضاعف المشترك الأصغر للعددين 4 و 6: PPCM(4, 6) = 12. إذن السنة المقبلة التي ستُجرى فيها الانتخابات معاً هي: 1984 + 12 = 1996', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q64
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q64', 'exam_primary_2024_maths_oct', 64, 'PGCD — problèmes', 'Une association caritative dispose de 180 caisses de farine et 120 caisses de riz. Elle veut composer des paniers contenant le même nombre de caisses de farine et le même nombre de caisses de riz en utilisant toutes les caisses pour les répartir équitablement auprès des familles d''un village. Le nombre maximal de paniers à réaliser est :', false, '[{"id": "A", "text": "120"}, {"id": "B", "text": "180"}, {"id": "C", "text": "150"}, {"id": "D", "text": "60"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], 'أكبر عدد ممكن من السلال المتماثلة دون باقٍ يساوي القاسم المشترك الأكبر للعددين 180 و 120: 180 = 60 × 3 و 120 = 60 × 2، ومنه PGCD(180, 120) = 60.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q65
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q65', 'exam_primary_2024_maths_oct', 65, 'Racines carrées — identités remarquables', 'La racine carrée de 3 − 2√2 est :', false, '[{"id": "A", "text": "√2 − 1"}, {"id": "B", "text": "1 − √2"}, {"id": "C", "text": "√3 − √2"}, {"id": "D", "text": "3 − 2√2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], 'نكتب العدد على شكل متطابقة هامة: 3 − 2√2 = 2 − 2√2 + 1 = (√2)² − 2√2(1) + 1² = (√2 − 1)² وبما أن √2 > 1 فإن √2 − 1 > 0، وبالتالي: √(3 − 2√2) = √((√2 − 1)²) = |√2 − 1| = √2 − 1', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q66
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q66', 'exam_primary_2024_maths_oct', 66, 'Divisibilité', 'On considère le nombre B = 12 × 13 × 14 × 15 × 16 × 17 × 18 × 19 × 20. Le nombre B est divisible par :', false, '[{"id": "A", "text": "29"}, {"id": "B", "text": "31"}, {"id": "C", "text": "300"}, {"id": "D", "text": "22"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'نلاحظ أن 300 = 15 × 20، وكل من العاملين 15 و 20 موجود في الجداء B، ومنه B مضاعف للعدد 300 (قابل للقسمة عليه). بينما الأعداد الأولية 29 و 31 و 11 (حيث 22 = 2 × 11) لا تقسم أي عامل من العوامل المحصورة بين 12 و 20.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q67
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q67', 'exam_primary_2024_maths_oct', 67, 'Notation scientifique', 'Le cerveau humain est composé de 100 milliards de neurones. À partir de 30 ans, ce nombre de neurones baisse d''environ 100 000 par jour. En considérant qu''une année contient 365 jours, le nombre de neurones d''un humain âgé de 50 ans est :', false, '[{"id": "A", "text": "9,927 × 10¹⁰"}, {"id": "B", "text": "99,27 × 10¹⁰"}, {"id": "C", "text": "2,3 × 10⁹"}, {"id": "D", "text": "23 × 10²"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], '• العدد الأصلي للخلايا العصبية: 100 × 10⁹ = 10¹¹ = 10 × 10¹⁰. • المدة الفاصلة بين 30 و 50 سنة هي 20 سنة، أي 20 × 365 = 7300 يوماً. • عدد الخلايا المفقودة: 7300 × 100000 = 730000000 = 0,073 × 10¹⁰. • العدد المتبقي عند سن 50 سنة: 10 × 10¹⁰ − 0,073 × 10¹⁰ = 9,927 × 10¹⁰', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q68
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q68', 'exam_primary_2024_maths_oct', 68, 'Systèmes d''équations — problèmes', 'Une boulangère vend deux types de pain : le pain de farine blanche à 2 Dh la pièce et le pain de farine complète à 3 Dh la pièce. Elle a vendu 65 pièces de pain à 170 Dh. Quel est le nombre de pain vendu de chaque type ?', false, '[{"id": "A", "text": "40 pièces du pain de farine blanche et 25 pièces du pain de farine complète"}, {"id": "B", "text": "35 pièces du pain de farine blanche et 30 pièces du pain de farine complète"}, {"id": "C", "text": "30 pièces du pain de farine blanche et 35 pièces du pain de farine complète"}, {"id": "D", "text": "25 pièces du pain de farine blanche et 40 pièces du pain de farine complète"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], 'ليكن x عدد قطع الخبز الأبيض و y عدد قطع خبز القمح الكامل، نحصل على النظمة: { x + y = 65 2x + 3y = 170 بضرب المعادلة الأولى في 2 نجد 2x + 2y = 130. بطرحها من المعادلة الثانية نجد: y = 170 − 130 = 40، ومنه x = 65 − 40 = 25. إذن: 25 قطعة من الخبز الأبيض و40 قطعة من خبز القمح الكامل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q69
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q69', 'exam_primary_2024_maths_oct', 69, 'Fonctions — tableau de variations', 'Soit f la fonction définie sur l''intervalle [−1 ; 2] et (C_f) sa courbe dans un repère orthonormé (O ; i⃗, j⃗) (Figure ci-contre). Parmi les tableaux de variations ci-dessous lequel représente la fonction f ? [Figure : la courbe (C_f) passe par (−1 ; −2), croît jusqu''au maximum (0 ; 1), décroît jusqu''au minimum (4/3 ; −5/27) sous l''axe des abscisses, puis croît jusqu''à (2 ; 1).]', false, '[{"id": "A", "text": "Tableau de variations : x : −1 ; 0 ; 4/3 ; 2 — f(x) : −2 ↗ 1 ↗ 3/2 ↘ 1"}, {"id": "B", "text": "Tableau de variations : x : −1 ; 0 ; 4/3 ; 2 — f(x) : −2 ↗ 1 ↘ −5/27 ↗ 1"}, {"id": "C", "text": "Tableau de variations : x : −1 ; 0 ; 4/3 ; 2 — f(x) : 2 ↘ 1 ↗ 3/2 ↘ 1"}, {"id": "D", "text": "Tableau de variations : x : −1 ; 0 ; 4/3 ; 2 — f(x) : 2 ↘ 1 ↘ −5/27 ↗ 1"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], 'من خلال التمثيل المبياني للمنحنى (C_f): f(−1) = −2، والدالة تزايدية على [−1 ; 0] إلى القيمة القصوى f(0) = 1 (وهذا يُقصي C و D اللذين يعرضان f(−1) = 2). الدالة تناقصية على [0 ; 4/3] ثم تزايدية على [4/3 ; 2] (وهذا يُقصي A الذي يعرض تزايداً مستمراً إلى 3/2). والقيمة الدنيا f(4/3) = −5/27 سالبة قطعاً (الدالة هي f(x) = x³ − 2x² + 1، ومنه f(4/3) = 64/27 − 96/27 + 27/27 = −5/27)، وهي مكتوبة بإشارة سالبة في الاختيار B. إذن الجدول B هو الجدول الصحيح.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'CORRECTION par rapport au fichier de solution (qui donnait E) : vérification à 300 dpi de la page 4 du PDF — le tableau B porte bien f(4/3) = −5/27 (signe moins visible, identique à celui du tableau D) ; B est donc le tableau exact et la réponse est B, pas E. L''explication a été réécrite en conséquence. Question à figure (courbe (C_f)) : les valeurs lues sur le graphique sont rappelées dans l''énoncé.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q70
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q70', 'exam_primary_2024_maths_oct', 70, 'Proportionnalité — vitesse', 'Une voiture a effectué 96 km en 1 h 12 min. En supposant que son mouvement est uniforme, quelle distance a-t-elle parcouru en 2,5 heures ?', false, '[{"id": "A", "text": "214,28 km"}, {"id": "B", "text": "166,66 km"}, {"id": "C", "text": "195 km"}, {"id": "D", "text": "200 km"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], 'نحوّل المدة إلى الساعات: 1 h 12 min = 1 + 12/60 = 1,2 h. نحسب السرعة المتوسطة: v = d/t = 96/1,2 = 80 km/h المسافة المقطوعة في 2,5 h هي: d′ = 80 × 2,5 = 200 km', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q71
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q71', 'exam_primary_2024_maths_oct', 71, 'Proportionnalité — règle de trois', 'Trois machines identiques produisent 63 feuilles de papier en 7 min. Dans les mêmes conditions, combien de feuilles de papier produisent quatre machines en 21 min ?', false, '[{"id": "A", "text": "189 feuilles de papier"}, {"id": "B", "text": "252 feuilles de papier"}, {"id": "C", "text": "84 feuilles de papier"}, {"id": "D", "text": "147 feuilles de papier"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], 'تنتج آلة واحدة في دقيقة واحدة: 63/(3 × 7) = 3 أوراق. إذن 4 آلات في 21 دقيقة تنتج: 4 × 21 × 3 = 252 ورقة', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q72
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q72', 'exam_primary_2024_maths_oct', 72, 'Intérêts composés', 'Inès a placé un capital de 20000 Dh à sa banque le 01/01/2024 à un taux d''intérêt annuel de 5%. Quel sera le capital d''Inès le 01/01/2027 ?', false, '[{"id": "A", "text": "23100 Dh"}, {"id": "B", "text": "23000 Dh"}, {"id": "C", "text": "22003 Dh"}, {"id": "D", "text": "23003 Dh"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['E']::text[], 'المدة بين 01/01/2024 و 01/01/2027 هي 3 سنوات. في المعاملات البنكية متعددة السنوات تُحسب الفائدة المركّبة (تُضاف الفائدة السنوية إلى الرأسمال في نهاية كل سنة، وهو نفس المنهج المعتمد في مباريات التعليم): • بعد السنة الأولى (01/01/2025): 20000 × 1,05 = 21000 Dh. • بعد السنة الثانية (01/01/2026): 21000 × 1,05 = 22050 Dh. • بعد السنة الثالثة (01/01/2027): 22050 × 1,05 = 23152,5 Dh. وبما أن 23152,5 Dh غير موجود في الاختيارات (A–D)، فالجواب الصحيح هو E. (ملاحظة: في حال اعتماد الفائدة البسيطة فقط كما تُدرّس في السلك الابتدائي لسنة واحدة، يُحصل على 20000 + 3 × 1000 = 23000 Dh أي الاختيار B، غير أن السياق البنكي لأكثر من سنة يقتضي الفائدة المركّبة).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Intérêts composés : 20000 × 1,05³ = 23152,5 Dh, absent des choix A–D, donc E. L''intérêt simple donnerait B (23000 Dh) — écarté : un placement bancaire de 3 ans se capitalise chaque année.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q73
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q73', 'exam_primary_2024_maths_oct', 73, 'Dénombrement — combinaisons', 'Dans une entreprise il y a 20 employés, dont neuf sont des femmes. Pour un sondage, on choisit trois personnes au hasard. Le nombre d''échantillons contenant au moins deux femmes est :', false, '[{"id": "A", "text": "480"}, {"id": "B", "text": "360"}, {"id": "C", "text": "792"}, {"id": "D", "text": "120"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], 'تضم المقاولة 9 نساء و 11 رجلاً. اختيار عينة من 3 أشخاص تضم على الأقل امرأتين يعني حالتين: 1. امرأتان ورجل واحد: C₉² × C₁₁¹ = (9 × 8)/2 × 11 = 36 × 11 = 396. 2. ثلاث نساء: C₉³ = (9 × 8 × 7)/6 = 84. المجموع الكلي للعينات: 396 + 84 = 480', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q74
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q74', 'exam_primary_2024_maths_oct', 74, 'Géométrie analytique — équation de droite', 'Dans le plan muni d''un repère orthonormé (O ; I, J), on considère les points A(1 ; −3) et B(−1 ; 1). L''équation réduite de la droite (D) passant par le point J(0 ; 1) et de vecteur directeur AB⃗ est :', false, '[{"id": "A", "text": "(D) : y = 1/2 x + 1"}, {"id": "B", "text": "(D) : y = 2x + 1"}, {"id": "C", "text": "(D) : y = −2x + 1"}, {"id": "D", "text": "(D) : y = −1/2 x + 1"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'نحدد إحداثيات المتجهة الموجهة AB⃗: AB⃗(−1 − 1 ; 1 − (−3)) = (−2 ; 4) الميل (المعامل الموجه) للمستقيم (D) هو: m = 4/(−2) = −2 وبما أن (D) يمر من J(0 ; 1) فإن الأرتوب عند الأصل هو p = 1. إذن المعادلة المختصرة هي: y = −2x + 1.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q75
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q75', 'exam_primary_2024_maths_oct', 75, 'Géométrie — angles et triangles isocèles', 'Sur la figure ci-contre on a TU = SV. La valeur de l''angle x est : [Figure : triangle TSU avec STÛ = 70°, TÛS = 40° et USV̂ = 35° ; x est l''angle au sommet V du triangle SUV.]', false, '[{"id": "A", "text": "70,5°"}, {"id": "B", "text": "70°"}, {"id": "C", "text": "75°"}, {"id": "D", "text": "72,5°"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], '• في المثلث TSU: لدينا STÛ = 70° و TÛS = 40°، إذن: TSÛ = 180° − (70° + 40°) = 70°. بما أن STÛ = TSÛ = 70° فإن المثلث TSU متساوي الساقين رأسه U، ومنه TU = SU. • وحسب المعطيات لدينا TU = SV، إذن SU = SV. • ومنه المثلث SUV متساوي الساقين رأسه S، حيث USV̂ = 35° وزاويتا القاعدة متقايستان (SUV̂ = SVÛ = x): 2x + 35° = 180° ⟹ 2x = 145° ⟹ x = 72,5°', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure : les angles 70° (en T), 40° (en U) et 35° (en S) sont lus sur la figure du PDF et rappelés dans l''énoncé.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q76
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q76', 'exam_primary_2024_maths_oct', 76, 'Géométrie — aires (cercles)', 'Sept cercles sont disposés comme ci-contre. Leurs centres sont alignés. Les petits cercles ont pour rayon 2 cm. Combien vaut l''aire de la partie grisée ? [Figure : 7 cercles aux centres alignés — 4 petits cercles de rayon 2 cm et 3 grands cercles de rayon 4 cm, parties grisées symétriques.]', false, '[{"id": "A", "text": "8π"}, {"id": "B", "text": "4π"}, {"id": "C", "text": "2π"}, {"id": "D", "text": "6π"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], 'شعاع كل دائرة صغيرة هو r = 2 cm، وقطر كل دائرة كبيرة يساوي مجموع قطري دائرتين صغيرتين، أي أن شعاع كل دائرة كبيرة هو R = 2r = 4 cm. باعتماد التماثل المحوري بالنسبة للمستقيم المار من المراكز: • الجزء المظلل فوق الدائرة الصغيرة الثانية يقايس تماماً الجزء الأبيض تحتها؛ وبنقله إلى الأسفل نملأ بالتالي النصف السفلي للدائرة الكبيرة اليسرى (ناقص نصفي الدائرتين الصغيرتين الأولى والثانية). • الجزء المظلل تحت الدائرة الصغيرة الثالثة يقايس تماماً الجزء الأبيض فوقها؛ وبنقله إلى الأعلى نملأ بالتالي النصف العلوي للدائرة الكبيرة اليمنى (ناقص نصفي الدائرتين الصغيرتين الثالثة والرابعة). بجمع النصفيْن نحصل على مساحة دائرة كبيرة كاملة ناقص دائرتين صغيرتين كاملتين: A = πR² − 2πr² = π(4²) − 2π(2²) = 16π − 8π = 8π cm²', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure : la réponse repose sur la symétrie de la figure (7 cercles, centres alignés) ; aire = πR² − 2πr² avec R = 4 cm et r = 2 cm.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q77
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q77', 'exam_primary_2024_maths_oct', 77, 'Géométrie — angles inscrits et parallélisme', 'Dans la figure ci-contre, (LN) // (MS), LÔM = 27° et SPN̂ = α. La valeur de α est : [Figure : deux cercles sécants, (LN) parallèle à (MS).]', false, '[{"id": "A", "text": "α = 20°"}, {"id": "B", "text": "α = 54°"}, {"id": "C", "text": "α = 13,5°"}, {"id": "D", "text": "α = 63°"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['E']::text[], '• في الدائرة اليسرى: الزاويتان المحيطيتان LÔM و LN̂M تحصران نفس القوس، إذن: LN̂M = LÔM = 27° • بما أن (LN) // (MS) والمستقيم (MN) قاطع لهما، فإن الزاويتين المتبادلتين داخلياً متقايستان: SMN̂ = LN̂M = 27° • في الدائرة اليمنى: الزاويتان المحيطيتان SMN̂ و SPN̂ تحصران نفس القوس، إذن: α = SPN̂ = SMN̂ = 27° القيمة 27° غير موجودة ضمن الاختيارات (A–D)، إذن الجواب هو E.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure (deux cercles, parallélisme (LN)//(MS)) : α = 27°, absent des choix A–D, donc E.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q78
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q78', 'exam_primary_2024_maths_oct', 78, 'Géométrie — aires et périmètres', 'MNP est un triangle dont les trois côtés ont des longueurs différentes. Le point I est le milieu de [MN]. Les deux triangles MIP et INP ont : [Figure : triangle MNP, I milieu de [MN] (MI = IN).]', false, '[{"id": "A", "text": "la même aire et le même périmètre."}, {"id": "B", "text": "la même aire et des périmètres différents."}, {"id": "C", "text": "le même périmètre et des aires différentes."}, {"id": "D", "text": "des aires différentes et des périmètres différents."}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], '• المساحة: للمثلثين MIP و INP قاعدتان متقايستان (MI = IN لأن I منتصف [MN]) ويشتركان في نفس الارتفاع الموافق للرأس P، إذن لهما نفس المساحة. • المحيط: محيط MIP هو MI + IP + PM ومحيط INP هو IN + IP + PN. وبما أن MI = IN و IP ضلع مشترك، فإن الفرق بين المحيطين هو PM − PN ≠ 0 (لأن أضلاع المثلث MNP مختلفة الطول). إذن لهما محيطان مختلفان.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure (I milieu de [MN] indiqué sur la figure).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q79
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q79', 'exam_primary_2024_maths_oct', 79, 'Trigonométrie — sinus', 'Un câble de 20 m de long est tendu entre le sommet d''un poteau vertical et le sol horizontal. Il forme un angle de 60° avec le sol. (Voir la figure ci-contre). La hauteur du poteau est : [Figure : triangle rectangle, hypoténuse 20 m, angle 60° avec le sol.]', false, '[{"id": "A", "text": "10 m"}, {"id": "B", "text": "20/√3 m"}, {"id": "C", "text": "10√3 m"}, {"id": "D", "text": "20 m"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'في المثلث القائم الزاوية المكون من العمود والأرض والكابل (الوتر = 20 m): sin(60°) = h/20 ⟹ h = 20 × sin(60°) = 20 × √3/2 = 10√3 m', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure (câble 20 m, angle 60°).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q80
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q80', 'exam_primary_2024_maths_oct', 80, 'Thalès et Pythagore', 'Dans la figure ci-contre, (BD) // (EC), AB = 6 cm, AC = 10 cm, AD = 4 cm et BC = 8 cm. La longueur du côté [EC] est : [Figure : triangle AEC, B sur [AE], D sur [AC], (BD)//(EC), angle droit en B.]', false, '[{"id": "A", "text": "17 cm"}, {"id": "B", "text": "5√2 cm"}, {"id": "C", "text": "5√8 cm"}, {"id": "D", "text": "√145 cm"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], '1. في المثلث ABC: لدينا AB² + BC² = 6² + 8² = 36 + 64 = 100 = 10² = AC². حسب مبرهنة فيتاغورس العكسية، المثلث ABC قائم الزاوية في B، وبالتالي (AE) ⊥ (BC)، ومنه المثلث EBC قائم الزاوية في B كذلك. 2. في المثلث AEC لدينا B ∈ [AE] و D ∈ [AC] و (BD) // (EC). حسب مبرهنة طاليس: AB/AE = AD/AC ⟹ 6/AE = 4/10 ⟹ AE = 60/4 = 15 cm، ومنه BE = AE − AB = 15 − 6 = 9 cm. 3. بتطبيق مبرهنة فيتاغورس المباشرة في المثلث القائم الزاوية EBC: EC² = BE² + BC² = 9² + 8² = 81 + 64 = 145 ⟹ EC = √145 cm', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure (configuration de Thalès, angle droit en B).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q81
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q81', 'exam_primary_2024_maths_oct', 81, 'Géométrie dans l''espace — aire totale', 'ABCDEFGH est un cube de côté 6 cm. On divise une dimension par trois et on double une autre. L''aire totale du solide obtenu est :', false, '[{"id": "A", "text": "252 cm²"}, {"id": "B", "text": "288 cm²"}, {"id": "C", "text": "126 cm²"}, {"id": "D", "text": "216 cm²"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], 'أبعاد المكعب الأصلي هي 6 cm × 6 cm × 6 cm. بعد قسمة بُعد على 3 (6 ÷ 3 = 2 cm) ومضاعفة بُعد آخر (6 × 2 = 12 cm) والإبقاء على البُعد الثالث (6 cm)، نحصل على متوازي مستطيلات أبعاده: a = 2 cm و b = 12 cm و c = 6 cm. مساحته الكلية هي: A = 2(ab + ac + bc) = 2(2 × 12 + 2 × 6 + 12 × 6) = 2(24 + 12 + 72) = 2 × 108 = 216 cm²', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q82
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q82', 'exam_primary_2024_maths_oct', 82, 'Géométrie analytique — produit scalaire', 'Dans le plan muni d''un repère orthonormé (O, i⃗, j⃗) on considère les points G(a ; 1) et H(1 ; 1). La valeur du réel a pour que le triangle OGH soit rectangle en G est :', false, '[{"id": "A", "text": "a = −2"}, {"id": "B", "text": "a = 3"}, {"id": "C", "text": "a = −1"}, {"id": "D", "text": "a = 2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['E']::text[], 'لكي يكون المثلث OGH قائم الزاوية في G، يجب أن تكون GO⃗ ⊥ GH⃗ مع G ≠ H و G ≠ O: GO⃗(−a ; −1) و GH⃗(1 − a ; 0) شرط التعامد (الجداء السلمي منعدم): GO⃗ ⋅ GH⃗ = (−a)(1 − a) + (−1)(0) = 0 ⟹ a = 0 أو a = 1 القيمة a = 1 مرفوضة لأنها تعطي G = H (لا يتكون مثلث). إذن القيمة الصحيحة الوحيدة هي a = 0، وهي غير واردة في الاختيارات (A–D).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q83
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q83', 'exam_primary_2024_maths_oct', 83, 'Vecteurs', 'Dans le plan muni d''un repère orthonormé (O, i⃗, j⃗) on considère les points L(1 − x ; −1), M(3 ; 3) et N(−1 ; 1). La valeur du réel x pour laquelle LM⃗ = 2LN⃗ est :', false, '[{"id": "A", "text": "x = 4"}, {"id": "B", "text": "x = −2"}, {"id": "C", "text": "x = 6"}, {"id": "D", "text": "x = 2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'نحسب إحداثيات المتجهتين: LM⃗(3 − (1 − x) ; 3 − (−1)) = (2 + x ; 4) LN⃗(−1 − (1 − x) ; 1 − (−1)) = (−2 + x ; 2) ⟹ 2LN⃗(−4 + 2x ; 4) من المساواة LM⃗ = 2LN⃗ نجد: 2 + x = −4 + 2x ⟹ x = 6', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q84
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q84', 'exam_primary_2024_maths_oct', 84, 'Transformations — symétrie et translation', 'Dans le repère orthonormé (O ; i⃗, j⃗), on considère le point P(4 ; 5) sur lequel on applique successivement les transformations suivantes : • La symétrie axiale d''axe la droite (Δ) d''équation : y = x • La translation de vecteur u⃗(2 ; −4) Quel est le couple des coordonnées de la nouvelle position du point P ? [Figure : droite (Δ) : y = x et point P(4 ; 5).]', false, '[{"id": "A", "text": "(7 ; 0)"}, {"id": "B", "text": "(6 ; −1)"}, {"id": "C", "text": "(2 ; −1)"}, {"id": "D", "text": "(0 ; 1)"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], '1. صورة النقطة P(4 ; 5) بالتماثل المحوري بالنسبة للمستقيم (Δ): y = x (المنصف الأول) تنتج بتبديل الأفصول والأرتوب: P′(5 ; 4). 2. صورة P′(5 ; 4) بالإزاحة ذات المتجهة u⃗(2 ; −4) هي: P′′(5 + 2 ; 4 + (−4)) = (7 ; 0)', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q85
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q85', 'exam_primary_2024_maths_oct', 85, 'Volumes et conversions', 'On veut remplir d''eau la moitié d''une piscine qui a la forme d''un parallélépipède rectangle, de longueur 12 m, de largeur 10 m et de hauteur 2 m. La quantité d''eau nécessaire est :', false, '[{"id": "A", "text": "3 × 10⁵ litres"}, {"id": "B", "text": "12 × 10⁵ litres"}, {"id": "C", "text": "3 × 10⁴ litres"}, {"id": "D", "text": "12 × 10⁴ litres"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], '• الحجم الكلي للمسبح: V = 12 × 10 × 2 = 240 m³. • حجم نصف المسبح: V_eau = 240/2 = 120 m³. • التحويل إلى اللتر (1 m³ = 1000 litres = 10³ litres): V_eau = 120 × 10³ = 12 × 10⁴ litres', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q86
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q86', 'exam_primary_2024_maths_oct', 86, 'Géométrie — périmètres (cercles)', 'Dans la figure ci-contre, RSTU est un carré de côté 2 et les deux demi-cercles ont pour diamètre respectif [TU] et [TS]. Quel est le périmètre de la partie grisée ? [Figure : carré RSTU de côté 2, deux demi-cercles de diamètres [TU] et [TS] se coupant au centre du carré ; partie grisée en bas à droite.]', false, '[{"id": "A", "text": "π + 4"}, {"id": "B", "text": "2π + 4"}, {"id": "C", "text": "π + 2"}, {"id": "D", "text": "2π + 2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['A']::text[], 'يتقاطع نصفا الدائرتين (شعاع كل منهما r = 2/2 = 1) في مركز المربع، فينقسم كل نصف دائرة إلى رُبعي دائرة. وبالتالي يتكون محيط الجزء المظلل من: • الضلعين [UR] و [RS]: طولهما 2 + 2 = 4. • قوسين يمثل كل منهما ربع دائرة شعاعها r = 1، ومجموعهما يساوي نصف دائرة شعاعها 1: طوله 1/2 × 2πr = π × 1 = π. إذن المحيط الإجمالي هو: π + 4.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure : le périmètre de la partie grisée se lit sur la figure (deux quarts de cercle de rayon 1 + deux côtés du carré).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q87
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q87', 'exam_primary_2024_maths_oct', 87, 'Aires et inéquations', 'Dans la figure ci-contre, SOLH est un rectangle de dimensions 10 cm et 6 cm et I le milieu de [SH]. Soit M un point de [HL] tel que HM = x cm. Pour quelles valeurs de x l''aire du triangle OIM est inférieure ou égale aux trois dixièmes de celle du rectangle SOLH ? [Figure : rectangle SOLH (10 cm × 6 cm), I milieu de [SH], M sur [HL] avec HM = x.]', false, '[{"id": "A", "text": "x ≥ 3/10"}, {"id": "B", "text": "x ≥ 2"}, {"id": "C", "text": "x ≤ 2"}, {"id": "D", "text": "x ≤ 3/10"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], '• مساحة المستطيل SOLH: 10 × 6 = 60 cm². وثلاثة أعشارها: (3/10) × 60 = 18 cm². • بما أن I منتصف [SH] فإن SI = IH = 3 cm، ولدينا HM = x ومنه ML = 10 − x. • نحسب مساحة المثلث OIM بطرح مساحات المثلثات الثلاثة القائمة الزاوية من مساحة المستطيل: A(OIM) = 60 − ((10 × 3)/2 + (3 × x)/2 + (6 × (10 − x))/2) A(OIM) = 60 − (15 + (3/2)x + 30 − 3x) = 60 − (45 − (3/2)x) = 15 + (3/2)x • نحل المتراجحة: 15 + (3/2)x ≤ 18 ⟺ (3/2)x ≤ 3 ⟺ x ≤ 2 (مع اعتبار x ≥ 0 بديهياً لكونه مسافة، أي 0 ≤ x ≤ 2).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à figure (rectangle SOLH 10 cm × 6 cm, I milieu de [SH]).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q88
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q88', 'exam_primary_2024_maths_oct', 88, 'Statistiques — moyenne', 'Ahmed fait le tour d''un lac à vélo. Voici les temps chronométrés pour une période : Lundi : 15 min 20 s | Mardi : 17 min 40 s | Mercredi : 14 min 55 s | Jeudi : 16 min 35 s | Vendredi : 16 min 30 s. Le temps moyen pour faire un tour du lac pour cette période est :', false, '[{"id": "A", "text": "16 min 1 s"}, {"id": "B", "text": "16 min 12 s"}, {"id": "C", "text": "16 min"}, {"id": "D", "text": "15 min 12 s"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['B']::text[], 'نجمع المدد الزمنية الخمس: • مجموع الدقائق: 15 + 17 + 14 + 16 + 16 = 78 min. • مجموع الثواني: 20 + 40 + 55 + 35 + 30 = 180 s = 3 min. • المجموع الكلي: 78 + 3 = 81 min. المتوسط الحسابي: 81 min / 5 = 16 min + (1/5) min = 16 min + 60/5 s = 16 min 12 s', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q89
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q89', 'exam_primary_2024_maths_oct', 89, 'Statistiques — pourcentages', 'Le tableau suivant fourni les salaires des employés d''une entreprise. (Salaire en dirham : 3500 [10] ; 4500 [8] ; 5000 [4] ; 7350 [6] ; 8000 [2]) Le pourcentage des employés ayant au moins un salaire de 5000 Dh est :', false, '[{"id": "A", "text": "20%"}, {"id": "B", "text": "30%"}, {"id": "C", "text": "50%"}, {"id": "D", "text": "40%"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['D']::text[], '• الحصيص الإجمالي (عدد الموظفين): 10 + 8 + 4 + 6 + 2 = 30. • عدد الموظفين الذين يتقاضون على الأقل 5000 Dh (أي ≥ 5000 Dh): 4 + 6 + 2 = 12. • النسبة المئوية: (12/30) × 100 = (2/5) × 100 = 40%', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — مادة التخصص (دورة أكتوبر 2024) — Q90
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_maths_oct_q90', 'exam_primary_2024_maths_oct', 90, 'Statistiques — médiane', 'Le graphe ci-contre représente le nombre de téléphones portables que possèdent 25 familles. La médiane de cette série statistique est : [Graphe : nombre de téléphones 2 → effectif 4 ; 3 → 7 ; 4 → 9 ; 5 → 3 ; 6 → 2.]', false, '[{"id": "A", "text": "5"}, {"id": "B", "text": "3"}, {"id": "C", "text": "4"}, {"id": "D", "text": "2"}, {"id": "E", "text": "Aucun des choix proposés n''est juste"}]'::jsonb, ARRAY['C']::text[], 'نستخرج القيم والحصيصات المتراكمة من المبيان: • القيمة 2: الحصيص 4 ← الحصيص المتراكم: 4 • القيمة 3: الحصيص 7 ← الحصيص المتراكم: 11 • القيمة 4: الحصيص 9 ← الحصيص المتراكم: 20 • القيمة 5: الحصيص 3 ← الحصيص المتراكم: 23 • القيمة 6: الحصيص 2 ← الحصيص المتراكم: 25 الحصيص الإجمالي N = 25، ونصفه 25/2 = 12,5. أول حصيص متراكم أكبر من أو يساوي 12,5 هو 20، والقيمة الموافقة له (الرتبة 13) هي 4. إذن القيمة الوسطية (la médiane) هي 4.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/1e0z70axJpSxTA2lOTVU40Fj_sBZSqAHt', true, 'Question à graphe : effectifs lus sur le diagramme en bâtons (2→4, 3→7, 4→9, 5→3, 6→2) et rappelés dans l''énoncé ; médiane = 13e valeur = 4.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

