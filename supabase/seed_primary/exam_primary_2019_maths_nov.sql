-- ====================================================================
-- مباراتي — الرياضيات وديداكتيك الرياضيات، دورة نونبر 2019
-- ====================================================================
-- المصدر: ملف الحل solved/2019/الرياضيات - 2019.md
--   (سجل الامتحانات رقم 84؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2019/الرياضيات - امتحان.pdf (9 صفحات: صفحات
--   الموضوع 2 إلى 10؛ صفحة الغلاف 1/10 مفقودة من المسح).
--   ملف التصحيح الرسمي: exams-ibtida2i/2019/تصحيح الرياضيات.pdf (4 صفحات،
--   عناصر الإجابة الرسمية، المركز الوطني للتقويم والامتحانات).
--   نفس الملفين منشوران على: https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * كل سؤال من Q1 إلى Q33 وخياراته مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة كلها من التصحيح الرسمي (source_type='official').
--   * المدة (90 دقيقة) والمعامل (2) من ترويسة التصحيح الرسمي: «مدة الاختبار:
--     ساعة ونصف، المعامل: 2» — الاختبار المشترك «اختبار في العلوم والرياضيات».
--   * الامتحان يضم مجالين (الرياضيات 10 نقط + ديداكتيك الرياضيات 10 نقط = 20 نقطة)؛
--     سجل 2019 لا يفصل الديداكتيك في امتحان مستقل، فأُدرج المجالان في صف امتحان
--     واحد (subject_type='maths') والتمييز بينهما في حقل category لكل سؤال.
--   * Q3 سؤال مطابقة: الخيارات هي الربطات الصحيحة الأربع، وcorrect_answers تضمها كلها.
--   * الأسئلة المفتوحة (open): options = '[]' و correct_answers فارغ؛ الجواب في explanation.
--   * Q12 له جوابان صحيحان (B و D)؛ Q7 خياراه (b) و(d) مطبوعان بصيغ غريبة في الورقة
--     الأصلية ونُقلا كما هما (انظر verification_note).
--   * لا أسئلة محذوفة: Q1–Q33 كلها موجودة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2019_maths_nov', 'specialty_primary', 2019, 'maths', 'الرياضيات وديداكتيك الرياضيات', 'امتحان الرياضيات وديداكتيك الرياضيات (دورة نونبر 2019)', 'دورة نونبر 2019', 90, 33)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (33 سؤالاً)

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q1', 'exam_primary_2019_maths_nov', 1, 'الرياضيات — التمرين الأول', 'احسب: A = (1 - 2/5 + 1/10) × 10/7', false, '[{"id": "A", "text": "A = 1/10"}, {"id": "B", "text": "A = 3/10"}, {"id": "C", "text": "A = 1"}, {"id": "D", "text": "A = 10/3"}]'::jsonb, ARRAY['C']::text[], '1 - 2/5 + 1/10 = 10/10 - 4/10 + 1/10 = 7/10، ثم (7/10) × (10/7) = 1.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q2', 'exam_primary_2019_maths_nov', 2, 'الرياضيات — التمرين الثاني', 'انظر الشكل جانبه: ABCD مضلع رباعي اعتيادي فيه AB وDC متوازيتان. المضلع الرباعي هو:', false, '[{"id": "A", "text": "معين"}, {"id": "B", "text": "متوازي الأضلاع"}, {"id": "C", "text": "مستطيل"}, {"id": "D", "text": "شبه منحرف"}]'::jsonb, ARRAY['D']::text[], 'الضلعان AB وDC متوازيان (ولهما طولان مختلفان)، والضلعان الآخران غير متوازيين، فالمضلع شبه منحرف.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q3', 'exam_primary_2019_maths_nov', 3, 'الرياضيات — التمرين الثاني', 'اربط كل قطعة بما تمثله بالنسبة للمضلع ABCD:', true, '[{"id": "A", "text": "[AB] — قاعدة صغرى"}, {"id": "B", "text": "[CD] — قاعدة كبرى"}, {"id": "C", "text": "[AH] — ارتفاع"}, {"id": "D", "text": "[BC] — ضلع"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], 'AB هي الضلع الأصغر بين الضلعين المتوازيين (القاعدة الصغرى)، وCD هي الضلع الأكبر (القاعدة الكبرى)، وAH عمودي على القاعدتين (ارتفاع)، وBC ضلع من أضلاع المضلع. («قطر» زائد لا يُربط بأي قطعة.)', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q4', 'exam_primary_2019_maths_nov', 4, 'الرياضيات — التمرين الثاني', 'لتكن S مساحة المضلع ABCD، صيغة S هي:', false, '[{"id": "A", "text": "S = (AB + HK) × AH / 2"}, {"id": "B", "text": "S = (AB + DC) × AH / 2"}, {"id": "C", "text": "S = (AB + DC) × 2 / AH"}, {"id": "D", "text": "S = (AB × DC) × BK / 2"}]'::jsonb, ARRAY['B']::text[], 'مساحة شبه المنحرف = (القاعدة الكبرى + القاعدة الصغرى) × الارتفاع ÷ 2، أي S = (AB + DC) × AH / 2.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q5', 'exam_primary_2019_maths_nov', 5, 'الرياضيات — التمرين الثاني', 'علما أن AB = 20cm ؛ DC = 30cm ؛ AH = 8cm، فإن مساحة المضلع الرباعي ABCD هي:', false, '[{"id": "A", "text": "200cm²"}, {"id": "B", "text": "2400cm²"}, {"id": "C", "text": "12,5cm²"}, {"id": "D", "text": "160cm²"}]'::jsonb, ARRAY['A']::text[], 'S = (20 + 30) × 8 / 2 = 50 × 8 / 2 = 200cm².', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q6', 'exam_primary_2019_maths_nov', 6, 'الرياضيات — التمرين الثالث', 'المسافة الحقيقية الفاصلة بين مدينتي ميدلت وبوعرفة هي 192km. على خريطة بسلم 1/2500000، طول المسافة بين مدينتي ميدلت وبوعرفة هي:', false, '[{"id": "A", "text": "4,80mm"}, {"id": "B", "text": "48mm"}, {"id": "C", "text": "7,68cm"}, {"id": "D", "text": "4,8cm"}]'::jsonb, ARRAY['C']::text[], '192km = 19 200 000cm؛ وبقسمة 19 200 000 ÷ 2 500 000 = 7,68cm.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q7', 'exam_primary_2019_maths_nov', 7, 'الرياضيات — التمرين الرابع', 'تعميل للمتطابقة الهامة a³ - b³ هو:', false, '[{"id": "A", "text": "a³ - b³ = a³ - 3a²b + 3ab² - b³"}, {"id": "B", "text": "a³ - b³ = (a + b)(3ab² + 3ab² - b³)"}, {"id": "C", "text": "a³ - b³ = (a - b)(a² + ab + b²)"}, {"id": "D", "text": "a³ - b³ = a² - 3ab² + 3a²b - b²"}]'::jsonb, ARRAY['C']::text[], 'المتطابقة الهامة: a³ - b³ = (a - b)(a² + ab + b²).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الخياران (b) و(d) مطبوعان بصيغ غريبة في ورقة الامتحان الأصلية (خطأ مطبعي محتمل)؛ نُقلا كما هما، والجواب الصحيح (c) مؤكد من التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q8', 'exam_primary_2019_maths_nov', 8, 'الرياضيات — التمرين الرابع', 'بين أن العدد (2019)⁵ - (2016)⁵ مضاعف للعدد 3.', false, '[]'::jsonb, ARRAY[]::text[], '(2019)⁵ - (2016)⁵ = (2019 - 2016)(2019⁴ + 2019³×2016 + 2019²×2016² + 2019×2016³ + 2016⁴) = 3 × (2019⁴ + 2019³×2016 + 2019²×2016² + 2019×2016³ + 2016⁴)، فهو مضاعف للعدد 3.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q9', 'exam_primary_2019_maths_nov', 9, 'الرياضيات — التمرين الرابع', 'تحقق أن العدد 123456789 قابل للقسمة على العدد 3.', false, '[]'::jsonb, ARRAY[]::text[], 'مجموع أرقام العدد 1+2+3+4+5+6+7+8+9 = 45، و45 مضاعف للعدد 3، إذن العدد 123456789 قابل للقسمة على 3.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q10', 'exam_primary_2019_maths_nov', 10, 'الرياضيات — التمرين الرابع', 'تحقق أن العدد 2019 × 2020 × 2021 مضاعف للعدد 6.', false, '[]'::jsonb, ARRAY[]::text[], '2020 عدد زوجي (مضاعف لـ 2)، و2019 مضاعف للعدد 3 (مجموع أرقامه 12)، فالجداء مضاعف لـ 2×3 = 6.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q11', 'exam_primary_2019_maths_nov', 11, 'الرياضيات — التمرين الخامس', 'حطت طائرة قادمة من مدينة جدة بمطار مولاي علي الشريف بمدينة الرشيدية على الساعة 12h 15min 30s علما أن رحلتها دامت 6h45min30s، حدد ساعة انطلاق الطائرة من مدينة جدة (اعتمد دائما توقيت كرينتش).', false, '[{"id": "A", "text": "5h30min"}, {"id": "B", "text": "6h45min15s"}, {"id": "C", "text": "5h45min15s"}, {"id": "D", "text": "2h 30min"}]'::jsonb, ARRAY['A']::text[], 'ساعة الانطلاق = ساعة الوصول − مدة الرحلة = 12h15min30s − 6h45min30s = 5h30min00s.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q12', 'exam_primary_2019_maths_nov', 12, 'الرياضيات — التمرين السادس', 'حدد من بين الأعداد العشرية التالية عددين عشريين محصورين بين العددين العشريين 3,14 و 3,15:', true, '[{"id": "A", "text": "3,151"}, {"id": "B", "text": "3,145"}, {"id": "C", "text": "3,135"}, {"id": "D", "text": "3,147"}]'::jsonb, ARRAY['B', 'D']::text[], '3,14 < 3,145 < 3,15 و 3,14 < 3,147 < 3,15؛ أما 3,151 فأكبر من 3,15، و3,135 فأصغر من 3,14.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال بجوابين صحيحين (b و d)؛ المفتاح يمنح 0.5ن للجوابين معاً و0.25ن لجواب واحد صحيح.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q13', 'exam_primary_2019_maths_nov', 13, 'الرياضيات — التمرين السابع', 'يمثل الجدول التالي نقط تلاميذ قسم في أحد فروض المراقبة المستمرة في مادة الرياضيات (النقطة على 20: 7، 10، 14، 16، 18، 20 — عدد التلاميذ: 4، 2، 11، 7، 5، 1). حدد عدد التلاميذ بهذا القسم.', false, '[]'::jsonb, ARRAY[]::text[], '4 + 2 + 11 + 7 + 5 + 1 = 30 تلميذاً.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q14', 'exam_primary_2019_maths_nov', 14, 'الرياضيات — التمرين السابع', 'النسبة المئوية للتلاميذ الحاصلين على نقطة تساوي أو تفوق 14.', false, '[]'::jsonb, ARRAY[]::text[], 'عدد الحاصلين على 14 فأكثر = 11 + 7 + 5 + 1 = 24 من أصل 30، أي 24/30 × 100 = 80%.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q15', 'exam_primary_2019_maths_nov', 15, 'الرياضيات — التمرين الثامن', 'ليكن a عددا حقيقيا غير منعدم. نضع: A = (a⁴ × (a²)⁻¹) / ((a³)² × a⁻³). العدد A يساوي:', false, '[{"id": "A", "text": "1"}, {"id": "B", "text": "1/a"}, {"id": "C", "text": "a²"}, {"id": "D", "text": "1/a⁻¹"}]'::jsonb, ARRAY['B']::text[], 'البسط = a⁴ × a⁻² = a²؛ المقام = a⁶ × a⁻³ = a³؛ إذن A = a²/a³ = 1/a.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q16', 'exam_primary_2019_maths_nov', 16, 'الرياضيات — التمرين التاسع', 'اكتب اسم كل مجسم من المجسمات السبعة التالية (بالترتيب كما في الورقة): مخروط، موشور قائم قاعدته مثلث، مكعب، متوازي المستطيلات القائم، هرم، أسطوانة قائمة، كرة.', false, '[]'::jsonb, ARRAY[]::text[], 'المخروط الدوراني، الموشور القائم، المكعب، متوازي المستطيلات القائم، الهرم، أسطوانة قائمة، الكرة (أو الفلكة).', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'المفتاح يشترط صحة الأجوبة السبعة كلها («لا يقبل الجواب صحيحا إلا إذا كانت جميع الأجوبة صحيحة»).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q17', 'exam_primary_2019_maths_nov', 17, 'الرياضيات — التمرين العاشر', 'ارسم مماثل الشكل بالنسبة للمستقيم (D)، وارسم مماثل المثلث ABC بالنسبة للمركز O.', false, '[]'::jsonb, ARRAY[]::text[], 'في التماثل المحوري بالنسبة لـ (D) ينعكس الشكل على المستقيم مع الحفاظ على المسافات؛ وفي التماثل المركزي بالنسبة لـ O ينقلب المثلث ABC رأساً على عقب حول النقطة O (كل نقطة وصورتها متناظرتان بالنسبة لـ O). (الرسم النموذجي في التصحيح الرسمي.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال رسم؛ التعليل يصف الإنشاءين المطلوبين (0.5ن لكل رسم).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q18', 'exam_primary_2019_maths_nov', 18, 'الرياضيات — التمرين الحادي عشر', 'يعتبر الشكل F2 تكبيرا للشكل F1. حدد نسبة التكبير باعتبار قياس طول ضلعين متناسبين.', false, '[]'::jsonb, ARRAY[]::text[], 'قياس كل ضلع في F2 يساوي ضعف قياس الضلع المناسب له في F1 (مثلاً ضلع طوله وحدتان في F1 يقابله ضلع طوله 4 وحدات في F2)، فنسبة التكبير = 2.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q19', 'exam_primary_2019_maths_nov', 19, 'الرياضيات — التمرين الثاني عشر', 'قياس زوايا رباعي ABCD هي: Â = 75° ؛ B̂ = 90° ؛ Ĉ = 80°. دون استعمال المنقلة، حدد قياس الزاوية D̂:', false, '[{"id": "A", "text": "D̂ = 120°"}, {"id": "B", "text": "D̂ = 115°"}, {"id": "C", "text": "D̂ = 110°"}, {"id": "D", "text": "D̂ = 130°"}]'::jsonb, ARRAY['B']::text[], 'مجموع قياسات زوايا الرباعي = 360°، إذن D̂ = 360° − (75° + 90° + 80°) = 360° − 245° = 115°.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q20', 'exam_primary_2019_maths_nov', 20, 'ديداكتيك الرياضيات — التمرين الأول', 'قدمت أستاذة بالتعليم الابتدائي لمتعلميها في مادة الرياضيات الوضعية المسألة التالية: صب فلاح 125,6 l من زيت الزيتون في برميل على شكل أسطوانة قائمة قطر قاعدتها 4dm وارتفاعها 1,2m، ويريد معرفة كم سيبلغ ارتفاع الزيت في البرميل. في أي مستوى من مستويات التعليم الابتدائي يمكن تقديم هذه المسألة؟', false, '[]'::jsonb, ARRAY[]::text[], 'المستوى السادس ابتدائي: هذه المسألة (حجم الأسطوانة القائمة وتوظيف وحدات السعة والحجوم) تُقدم في المستوى السادس ابتدائي حسب التصحيح الرسمي.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q21', 'exam_primary_2019_maths_nov', 21, 'ديداكتيك الرياضيات — التمرين الأول', 'حدد أربع مكتسبات قبلية ضرورية لمتعلمي ومتعلمات هذا المستوى لكي يتمكنوا من حل هذه الوضعية المسألة.', false, '[]'::jsonb, ARRAY[]::text[], 'أربع مكتسبات من القائمة التالية (0.25ن لكل مكتسب): التمكن من وحدات قياس الأطوال؛ القدرة على إجراء التحويلات على وحدات قياس الأطوال؛ معرفة العلاقة بين وحدات قياس السعة (ل - دال) ووحدات قياس الحجوم (dm³)؛ معرفة قاعدة حساب مساحة القرص؛ معرفة قاعدة حساب حجم الأسطوانة القائمة؛ التمكن من إجراء عملية الضرب؛ التمكن من إجراء عملية القسمة؛ القدرة على فهم وتمثيل وضعية مسألة، وتعرف المعطيات الأساسية والمعطيات الزائدة.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q22', 'exam_primary_2019_maths_nov', 22, 'ديداكتيك الرياضيات — التمرين الأول', 'وضح كيف تدخلت الأستاذة من خلال التعليمات الواردة في الوضعية المسألة لتوجيه المتعلم إلى منهجية حل هذه الوضعية.', false, '[]'::jsonb, ARRAY[]::text[], 'اعتبار التعليمات رقم 2 و 3 والأسئلة المرتبطة بها تدخلاً منهجياً لتوجيه المتعلم لمنهجية حل هذه الوضعية المسألة. التعليمات (تحديد المعطيات الضرورية وغير الضرورية، ثم حساب الارتفاع) توجه المتعلم خطوة بخطوة نحو منهجية الحل؛ وتقبل الإجابات التي تصب في نفس السياق.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q23', 'exam_primary_2019_maths_nov', 23, 'ديداكتيك الرياضيات — التمرين الأول', 'في إطار العقد الديداكتيكي، حدد الدلالة الديداكتيكية لاستعمال الأستاذة لضمير جمع المتكلم في التعليمات الواردة في الوضعية المسألة.', false, '[]'::jsonb, ARRAY[]::text[], 'الدلالة هي التعلم في سياق اجتماعي تعاوني (تطبيقات سوسيوبنائية): العمل بالمجموعات لحل الوضعية المسألة، التعلم وحل الوضعيات في سياق جماعي، التعلم بالأقران.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q24', 'exam_primary_2019_maths_nov', 24, 'ديداكتيك الرياضيات — التمرين الأول', 'استخرج من نص الوضعية المسألة: المعطيات الضرورية لحساب ارتفاع الزيت في البرميل، والمعطيات غير الضرورية لحساب ارتفاع الزيت في البرميل.', false, '[]'::jsonb, ARRAY[]::text[], 'المعطيات الضرورية: 125,6 l (حجم الزيت) و 4dm (قطر قاعدة البرميل). المعطيات غير الضرورية: 1,2m (ارتفاع البرميل). لحساب الارتفاع يكفي حجم الزيت وشعاع القاعدة (نصف القطر)؛ أما ارتفاع البرميل الكلي فلا يُستعمل في الحساب.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q25', 'exam_primary_2019_maths_nov', 25, 'ديداكتيك الرياضيات — التمرين الأول', 'حدد الصيغة الصحيحة لحساب حجم الأسطوانة القائمة من بين الصيغ التالية:', false, '[{"id": "A", "text": "V = 2π × r × h"}, {"id": "B", "text": "V = r² × π × h"}, {"id": "C", "text": "V = (r + h) × h"}, {"id": "D", "text": "V = (r² + h) × π"}]'::jsonb, ARRAY['B']::text[], 'حجم الأسطوانة القائمة = مساحة القاعدة × الارتفاع = (π × r²) × h.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q26', 'exam_primary_2019_maths_nov', 26, 'ديداكتيك الرياضيات — التمرين الأول', 'اقترح نموذجا لرسم هندسي تحدد فيه معطيات الوضعية المسألة لمساعدة المتعلمين على فهم المطلوب.', false, '[]'::jsonb, ARRAY[]::text[], 'رسم نموذج لبرميل على شكل أسطوانة قائمة (أو تمثيل برميل) مع: تمثيل مستوى الزيت وتحديد ارتفاعه برمز ظاهر حتى يتمكن التلميذ من إدراك أن المبحوث عنه هو ارتفاع الزيت وليس ارتفاع الأسطوانة، وتحديد مستوى الزيت داخل الأسطوانة بشكل أفقي حتى يتمشى للمتعلم إدراك أنه بصدد البحث عن ارتفاع أسطوانة يمثلها شكل الزيت في البرميل.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال رسم؛ التعليل يصف عناصر الرسم المطلوبة حسب التصحيح الرسمي (توزع النقطة حسب إنجاز المترشح).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q27', 'exam_primary_2019_maths_nov', 27, 'ديداكتيك الرياضيات — التمرين الأول', 'باعتبار أن ارتفاع الزيت في البرميل هو h'' وحجم الزيت V وشعاع قاعدة البرميل هو r. حدد الصيغة الصحيحة لحساب الارتفاع h'':', false, '[{"id": "A", "text": "h'' = V × π × r²"}, {"id": "B", "text": "h'' = V / (π × r²)"}, {"id": "C", "text": "h'' = (π × V) / r²"}, {"id": "D", "text": "h'' = (π × r²) / V"}]'::jsonb, ARRAY['B']::text[], 'من V = π × r² × h'' نستنتج h'' = V / (π × r²). تطبيقاً على الوضعية: V = 125,6 L = 125,6 dm³ و r = 2 dm، فيكون h'' = 125,6 ÷ (3,14 × 4) = 10 dm = 100 cm.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q28', 'exam_primary_2019_maths_nov', 28, 'ديداكتيك الرياضيات — التمرين الثاني', 'اقترح وضعية تجعل فيها متعلم المستوى الرابع ابتدائي يقتنع بعدم كفاية الأعداد الصحيحة الطبيعية في حل بعض الوضعيات الحياتية، ويدرك حاجته للأعداد العشرية.', false, '[]'::jsonb, ARRAY[]::text[], 'تُقبل كل وضعية تجعل المتعلم يدرك عدم كفاية توظيف الأعداد الصحيحة الطبيعية لحل المشكل، كقياس طول جسم معين بتفاوت طوله والعدد الصحيح للوحدة المستعملة، مما يستوجب تجزئة الوحدة إلى أجزاء. مثال مقبول: قياس طول طاولة باستعمال المتر فيجد المتعلم أن الطول هو 1 متر و25 سنتمترا، فيدرك أن العدد الصحيح وحده لا يكفي للتعبير عن هذا القياس فيحتاج إلى عدد عشري.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'إجابة مفتوحة؛ المفتاح يقبل كل وضعية مناسبة تحقق الهدف — التعليل يعطي معيار القبول الرسمي ومثالاً مقبولاً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q29', 'exam_primary_2019_maths_nov', 29, 'ديداكتيك الرياضيات — التمرين الثاني', 'اذكر هدفين لمفهوم العدد العشري يستهدفهما برنامج الرياضيات بالسنة الخامسة الابتدائية.', false, '[]'::jsonb, ARRAY[]::text[], 'هدفان من القائمة التالية (0.25ن لكل هدف): التمكن من كتابة وقراءة الأعداد العشرية؛ مقارنة الأعداد العشرية؛ مقارنة وترتيب أعداد عشرية؛ التعرف على تقنية الجمع والطرح لأعداد عشرية؛ التعرف على جداء عددين عشريين.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q30', 'exam_primary_2019_maths_nov', 30, 'ديداكتيك الرياضيات — التمرين الثاني', 'حدد امتدادين لمقارنة عددين عشريين بالسنة الخامسة الابتدائي.', false, '[]'::jsonb, ARRAY[]::text[], 'امتدادان من القائمة التالية (0.25ن لكل امتداد): ترتيب أعداد عشرية؛ ترتيب نسب مئوية ومقارنتها؛ تنظيم بيانات ومعطيات في جدول أو تمثيلها في مبيان؛ ترتيب قياسات أطوال أو كتل أو حجوم أو مساحة.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q31', 'exam_primary_2019_maths_nov', 31, 'ديداكتيك الرياضيات — التمرين الثاني', 'أعط نشاطا بالسنة الرابعة الابتدائية يستهدف تمكين المتعلمين (المتعلمات) من التعرف على كيفية مقارنة عددين عشريين.', false, '[]'::jsonb, ARRAY[]::text[], 'يُقبل أي نشاط بائن ملائم يستهدف تمكين متعلمي السنة الرابعة من التعرف على كيفية مقارنة عددين عشريين. مثال مقبول: نشاط يقارن فيه المتعلمون أثمنة منتجات (مثلاً 7,50 دراهم و7,25 دراهم) باستعمال جدول العد أو المستقيم العددي، فيكتشفون أن المقارنة تبدأ بالجزء الصحيح ثم بأجزاء العشرة فأجزاء المئة.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'إجابة مفتوحة؛ المفتاح يقبل أي نشاط ملائم — التعليل يعطي معيار القبول الرسمي ومثالاً مقبولاً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q32', 'exam_primary_2019_maths_nov', 32, 'ديداكتيك الرياضيات — التمرين الثاني', 'أثناء الاشتغال على عمليتي ضرب الأعداد العشرية وترتيبها ومقارنتها بالمستوى الخامس ابتدائي، كانت إجابات بعض المتعلمين كالتالي: 7.6 < 7.12 و 0.2 × 0.2 = 0.4. حلل الخطأين المرتكبين موضحا مصدرا أو مصادر الخطأين المركبين.', false, '[]'::jsonb, ARRAY[]::text[], 'الخطأ الأول (7.6 < 7.12): المتعلم لا يدرك مفهوم العدد العشري؛ فالعدد العشري يتكون من جزأين: الجزء الصحيح والجزء العشري. يتعامل مع الجزء العشري في العددين العشريين وكأنه عدد طبيعي صحيح، ولذا قارن الجزء العشري 12 والجزء العشري 6 على أنهما عددان صحيحان فكانت النتيجة 6 < 12، في حين أن 6 أعشار أكبر من عشر وجزأين من المئة (الصحيح: 7.6 = 7.60 > 7.12). الخطأ الثاني (0.2 × 0.2 = 0.4): المتعلمة غير متمكنة من تقنية ضرب الأعداد العشرية، ولا تدرك منهجية التعامل مع الفاصلة في جداء عددين عشريين (الصحيح: 0.2 × 0.2 = 0.04).', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: الرياضيات — دورة نونبر 2019 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_maths_nov_q33', 'exam_primary_2019_maths_nov', 33, 'ديداكتيك الرياضيات — التمرين الثاني', 'قدم طريقة توجه فيها المتعلم(ة) إلى إدراك الخطأ الذي ارتكبه (ارتكبته) وتصحيحه.', false, '[]'::jsonb, ARRAY[]::text[], 'طرق تعتمد على ما يلي: الاستعانة بجدول العد، لإبراز الجزء الصحيح والجزء العشري في العدد العشري؛ توظيف قاعدة مقارنة الجزء الصحيح للعدد الأول مع الجزء الصحيح للعدد الثاني، مع مراعاة البدء باليسار في اتجاه اليمين؛ توظيف قاعدة مقارنة الجزأين العشريين للعددين بدءاً بالأعشار ثم أجزاء المئة؛ اعتماد تقنية الأعداد العشرية والتركيز على قاعدة التعامل مع الفاصلة في الجداء (عدد الأرقام بعد الفاصلة في الجداء هو عدد الأرقام بعد الفاصلة في العددين).', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'إجابة مفتوحة؛ المفتاح يقبل الطرق المؤدية إلى إدراك الخطأ وتصحيحه — التعليل يعطي عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
