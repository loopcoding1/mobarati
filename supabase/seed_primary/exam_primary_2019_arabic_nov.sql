-- ====================================================================
-- مباراتي — اللغة العربية وديداكتيك اللغة العربية، دورة نونبر 2019
-- ====================================================================
-- المصدر: ملف الحل solved/2019/اللغة العربية - 2019.md
--   (سجل الامتحانات رقم 90؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2019/اللغة العربية - امتحان.pdf (14 صفحة).
--   ملف التصحيح الرسمي: exams-ibtida2i/2019/تصحيح اللغة العربية.pdf (9 صفحات، عناصر
--   الإجابة الرسمية، المركز الوطني للتقويم والامتحانات).
--   نفس الملفين منشوران على: https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * كل سؤال من Q1 إلى Q30 وخياراته مطابقة حرفياً لورقة الامتحان (تكبير 300dpi
--     حيث لزم: Q4، Q5، Q9، Q11، Q14، Q15، Q16، Q17، Q24، Q26)؛ وأسئلة الديداكتيك
--     (Q31–Q37) منقولة من ورقة الامتحان ومن عناصر الإجابة الرسمية.
--   * الأجوبة كلها من التصحيح الرسمي (source_type='official').
--   * المدة (90 دقيقة) والمعامل (2) من ترويسة التصحيح الرسمي وغلاف الامتحان:
--     «مدة الإنجاز: ساعة ونصف، المعامل: 2» — النقطة النهائية على 60.
--   * بنية الاختبار: مادة التخصص 36 نقطة (Q1–Q27 × 1ن + Q28 = 2ن + Q29 = 3ن
--     + Q30 = 4ن) + ديداكتيك مادة التخصص 24 نقطة (الوضعية 1: 9ن = 2+3+4؛
--     الوضعية 2: 7ن = 3+4؛ الوضعية 3: 8ن = 4+4). نص الانطلاق: التعلم مدى الحياة،
--     من نبيل علي ونادية حجازي، «الفجوة الرقمية»، سلسلة عالم المعرفة، عدد 318،
--     غشت 2005، ص. 267 (بتصرف).
--
-- ⚠️ عيب في مسح الامتحان: ملف PDF من 14 صفحة، صفحاته مرقمة 1 إلى 15، والصفحة
--   المطبوعة رقم 14 مفقودة (ينتقل المسح من الصفحة المطبوعة 13، وفيها نص الوضعية 3،
--   إلى الصفحة المطبوعة 15، وفيها ذيل السؤال 2 من الوضعية 3). السؤال 1 من الوضعية 3
--   (Q36، 4ن) موجود في تلك الصفحة المفقودة؛ صياغته في هذا الملف مُستخلصة من عناصر
--   الإجابة الرسمية (تخطيط ديداكتيكي لدرس «مفهوم المفعول المطلق»)، وأُدرج مع
--   verification_note يوضح ذلك. questions_count = 37 (Q1–Q37).
--
-- ملاحظات أخرى:
--   * Q4: الخياران (ج) و(د) يختلفان في تفصيل تشكيلي واحد لا يُقرأ بوضوح في هذا
--     المسح؛ وكلاهما خطأ («إحدى عشرة» مؤنثة مع «أستاذا» المذكر).
--   * Q9: المفتاح يصنّف «يعي» فعلاً معتلاً ناقصاً (ب) — ويُقرأ مضارع «عَيَّ». لو قُرئ
--     مضارع «وعى» لكان لفيفاً مفروقاً؛ الجواب منقول كما في المفتاح.
--   * Q11: الخياران (أ) و(ج) يختلفان في حركة واحدة لا تُقرأ بوضوح في هذا المسح؛
--     والمفتاح يختار (أ).
--   * Q23: الخياران (ب) «هُدًى» و(د) «هُدى» ينتهيان كلاهما بألف (مقصور)؛ المفتاح
--     يختار (د) مثالاً للمقصور.
--   * Q25: «استمع» على وزن «افتعل» لا «استفعل»: السين والتاء من أصل الفعل «سمع».
--   * Q26: الخياران (أ) «مَجِيءٍ» و(ب) «مَجِيءٌ» يختلفان في التنوين فقط؛ المفتاح
--     يختار (ب).
--   * أسئلة المطابقة (matching): الخيارات هي الربطات الصحيحة كما في التصحيح الرسمي،
--     وcorrect_answers تضم كل الخيارات؛ والعنصر الزائد في العمود الثاني مذكور في التعليل.
--   * الأسئلة المفتوحة (open): options = '[]' و correct_answers فارغ؛ الجواب في explanation.
--   * أسئلة الديداكتيك مرقمة Q31–Q37 (الوضعية 1: Q31–Q33؛ الوضعية 2: Q34–Q35؛
--     الوضعية 3: Q36–Q37).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2019_arabic_nov', 'specialty_primary', 2019, 'arabic', 'اللغة العربية وديداكتيك اللغة العربية', 'امتحان اللغة العربية وديداكتيك اللغة العربية (دورة نونبر 2019)', 'دورة نونبر 2019', 90, 37)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (37 سؤالاً)

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q1', 'exam_primary_2019_arabic_nov', 1, 'اللغة العربية — مادة التخصص', 'ورد في النص ما يأتي: «... وأكثر المعارف عمقا»: ضع(ي) علامة (X) داخل الخانة المقابلة للإعراب الصحيح لكلمة «عمقا»:', false, '[{"id": "A", "text": "مفعول مطلق"}, {"id": "B", "text": "تمييز"}, {"id": "C", "text": "مفعول به"}, {"id": "D", "text": "حال"}]'::jsonb, ARRAY['B']::text[], '«عمقا» تمييز منصوب بعد «أكثر» (اسم تفضيل) يزيل الإبهام عنه؛ «أكثر المعارف عمقاً» أي أكثرها عمقاً. وليست مفعولاً مطلقاً (لا مصدر لفعل قبلها) ولا مفعولاً به ولا حالاً.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q2', 'exam_primary_2019_arabic_nov', 2, 'اللغة العربية — مادة التخصص', 'حدد(ي) نوعية النص بوضع علامة (X) داخل الخانة المقابلة للجواب الصحيح في ما يأتي:', false, '[{"id": "A", "text": "نص سردي"}, {"id": "B", "text": "نص وصفي"}, {"id": "C", "text": "نص إخباري"}, {"id": "D", "text": "نص حجاجي"}]'::jsonb, ARRAY['C']::text[], 'النص يعرض معلومات ومعطيات موضوعية عن التعلم مدى الحياة وتكنولوجيا المعلومات بأسلوب تقريري مباشر، دون سرد أحداث ولا وصف ولا بناء حجاجي (أطروحة ونقيض).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q3', 'exam_primary_2019_arabic_nov', 3, 'اللغة العربية — مادة التخصص', '«يصبو» في النص فعل مضارع مرفوع:', false, '[{"id": "A", "text": "بالضمة الظاهرة في آخره"}, {"id": "B", "text": "بالواو"}, {"id": "C", "text": "بالضمة المقدرة على الواو، المانع من ظهورها التعذر"}, {"id": "D", "text": "بالضمة المقدرة على الواو، المانع من ظهورها الاستثقال"}]'::jsonb, ARRAY['D']::text[], '«يصبو» فعل مضارع مرفوع بالضمة المقدرة على الواو، والمانع من ظهورها الاستثقال (الضمة ثقيلة على الواو)؛ والتعذر يكون على الألف لا على الواو.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q4', 'exam_primary_2019_arabic_nov', 4, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة التي كُتب فيها العددان (11) و(12) معا بطريقة صحيحة:', false, '[{"id": "A", "text": "يدرس في مؤسستنا أحد عشر أستاذا واثنا عشر أستاذة."}, {"id": "B", "text": "يدرس في مؤسستنا أحد عشر أستاذا واثنتا عشرة أستاذة."}, {"id": "C", "text": "يدرس في مؤسستنا إحدى عشرة أستاذا واثنتا عشرة أستاذة."}, {"id": "D", "text": "يدرس في مؤسستنا إحدى عشرة أستاذا واثنتا عشرة أستاذة."}]'::jsonb, ARRAY['B']::text[], 'العددان 11 و12 يوافقان المعدود تذكيراً وتأنيثاً في جزأيهما: «أحد عشر أستاذا» (مذكر) و«اثنتا عشرة أستاذة» (مؤنث، و«اثنتا» مرفوعة بالألف لأنها معطوفة على «أحد عشر» المرفوع). أما (أ) فخطأ في «اثنا عشر أستاذة» (مذكر مع مؤنث)، و(ج) و(د) خطأ في «إحدى عشرة أستاذا» (مؤنث مع مذكر).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الخياران (ج) و(د) يختلفان في تفصيل تشكيلي واحد لا يُقرأ بوضوح في هذا المسح؛ وكلاهما خطأ («إحدى عشرة» مؤنثة مع «أستاذا» المذكر).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q5', 'exam_primary_2019_arabic_nov', 5, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين الفعل ومصدره في ما يأتي:', true, '[{"id": "A", "text": "1. أَعَدَّ → د. إِعْدَاد"}, {"id": "B", "text": "2. عَدَّ → هـ. عَدّ"}, {"id": "C", "text": "3. عَدَّدَ → أ. تَعْدَاد"}, {"id": "D", "text": "4. تَعَدَّدَ → ب. تَعَدُّد"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '«أعدّ» (أفعل) مصدره «إعداد» (إفعال)؛ «عدّ» مصدره «عَدّ»؛ «عدّد» مصدره «تعداد» (تِفعال)؛ «تعدّد» (تفعّل) مصدره «تعدُّد» (تفعُّل). و«أعداد» جمع «عدد»، ليس مصدراً لأي من الأفعال الأربعة.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q6', 'exam_primary_2019_arabic_nov', 6, 'اللغة العربية — مادة التخصص', 'ورد في النص ما يأتي: «ليحل محله التعلم مدى الحياة على اتساعها». ضع(ي) علامة (X) داخل الخانة المقابلة للإعراب الصحيح لكلمة «مَحَلَّ»:', false, '[{"id": "A", "text": "مفعول مطلق"}, {"id": "B", "text": "مفعول به"}, {"id": "C", "text": "مفعول لأجله"}, {"id": "D", "text": "مفعول فيه"}]'::jsonb, ARRAY['B']::text[], '«ليحل محله التعلم» — «يحل» فعل مضارع، و«محلَّه» مفعول به منصوب (حلّ محلَّه = أخذ مكانه). وليست مفعولاً مطلقاً ولا لأجله ولا فيه.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q7', 'exam_primary_2019_arabic_nov', 7, 'اللغة العربية — مادة التخصص', 'كلمة «الجسارة» في النص تعني:', false, '[{"id": "A", "text": "الجرأة"}, {"id": "B", "text": "الفضول"}, {"id": "C", "text": "التطلع"}, {"id": "D", "text": "التطفل"}]'::jsonb, ARRAY['A']::text[], 'في سياق «يتطلب الجسارة والإقدام» — الجسارة هي الشجاعة والجرأة على الإقدام.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q8', 'exam_primary_2019_arabic_nov', 8, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجملة التي كُتب فيها المعدودان بطريقة صحيحة:', false, '[{"id": "A", "text": "اشتريت ثلاثة كُتُبٍ وسبع عشرة مجلةً."}, {"id": "B", "text": "اشتريت ثلاثة كتابٍ وسبع عشرة مجلةً."}, {"id": "C", "text": "اشتريت ثلاثة كتاباً وسبع عشرة مجلةً."}, {"id": "D", "text": "اشتريت ثلاثة كُتُباً وسبع عشرة مجلةً."}]'::jsonb, ARRAY['A']::text[], 'العدد 3 يخالف المعدود (ثلاثة مع كتاب المذكر) ومعدوده جمع مجرور بالإضافة («كُتُبٍ»)؛ والعدد 17 يوافق في جزئه الثاني ويخالف في الأول («سبع عشرة مجلةً»، و«مجلةً» تمييز مفرد منصوب). (ب) خطأ: «كتابٍ» مفرد بعد 3 (يجب الجمع)؛ (ج) خطأ: «كتاباً» منصوب (يجب الجر بالإضافة)؛ (د) خطأ: «كُتُباً» منصوب (يجب الجر).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q9', 'exam_primary_2019_arabic_nov', 9, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين الفعل ونوعه في ما يأتي:', true, '[{"id": "A", "text": "1. يَعِي → ب. فعل معتل ناقص"}, {"id": "B", "text": "2. وَلَّى → ج. فعل معتل لفيف مفروق"}, {"id": "C", "text": "3. أَوْجَهَ → هـ. فعل معتل مثال"}, {"id": "D", "text": "4. يَحْتَاجُهُ → د. فعل معتل أجوف"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '«يعي» مضارع «عَيَّ» (معتل الآخر: ناقص)؛ «ولّى» (و-ل-ى) حرفا علة مفصولان بحرف صحيح: لفيف مفروق؛ «أوجه» (و-ج-ه) أوله حرف علة: مثال؛ «يحتاجه» من «احتاج» (ح-و-ج) وسطه حرف علة: أجوف. و«لفيف مقرون» زائد بلا فعل يطابقه.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'المفتاح يصنّف «يعي» فعلاً معتلاً ناقصاً (ب) — ويُقرأ مضارع «عَيَّ». لو قُرئ مضارع «وعى» لكان لفيفاً مفروقاً.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q10', 'exam_primary_2019_arabic_nov', 10, 'اللغة العربية — مادة التخصص', 'ورد في النص: «فصول خالية»: ضع(ي) علامة (X) في الخانة المقابلة لمرادف كلمة «خالية»:', false, '[{"id": "A", "text": "خيالية"}, {"id": "B", "text": "نظامية"}, {"id": "C", "text": "غير نظامية"}, {"id": "D", "text": "افتراضية"}]'::jsonb, ARRAY['D']::text[], '«فصول خالية» أي فصول افتراضية (على الإنترنت، بلا حضور مادي في قاعة). «خيالية» و«نظامية» و«غير نظامية» لا تؤدي المعنى.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q11', 'exam_primary_2019_arabic_nov', 11, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة المضبوطة بالشكل الصحيح في ما يأتي:', false, '[{"id": "A", "text": "إِنَّ لِلْجَامِعَاتِ الْغَرْبِيَّةِ فَضَاءَاتٍ تَعْلِيمِيَّةً رَحْبَةً."}, {"id": "B", "text": "إِنَّ لِلْجَامِعَاتِ الْغَرْبِيَّةِ فَضَاءَاتٌ تَعْلِيمِيَّةٌ رَحْبَةٌ."}, {"id": "C", "text": "إِنَّ لِلْجَامِعَاتِ الْغَرْبِيَّةِ فَضَاءَاتٍ تَعْلِيمِيَّةً رَحْبَةً."}, {"id": "D", "text": "إِنَّ لِلْجَامِعَاتِ الْغَرْبِيَّةِ فَضَاءَاتٌ تَعْلِيمِيَّةً رَحْبَةٌ."}]'::jsonb, ARRAY['A']::text[], '«فَضَاءَاتٍ» اسم «إنّ» المؤخر منصوب بالكسرة نيابة عن الفتحة (جمع مؤنث سالم)، و«تَعْلِيمِيَّةً» و«رَحْبَةً» نعتان منصوبان بالفتحة. (ب) خطأ: رفع «فضاءاتٌ» وهي اسم إنّ المنصوب؛ (د) خطأ: رفع «فضاءاتٌ» و«رحبةٌ»؛ (ج) خطأ في حركة واحدة (انظر الملاحظة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الخياران (أ) و(ج) يختلفان في حركة واحدة لا تُقرأ بوضوح في هذا المسح؛ والمفتاح يختار (أ).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q12', 'exam_primary_2019_arabic_nov', 12, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين الجملة ونوع المنادى الذي تتضمنه في ما يأتي:', true, '[{"id": "A", "text": "1. أبا حسن الخلق، طوبى لك → د. منادى مضاف"}, {"id": "B", "text": "2. يا حسنًا خلقه، طوبى لك → أ. منادى شبيه بالمضاف"}, {"id": "C", "text": "3. أيا حسنًا، طوبى لك → هـ. منادى نكرة غير مقصودة"}, {"id": "D", "text": "4. يا حسنُ الخلق، طوبى لك → ج. منادى علم مفرد"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '«أبا حسن الخلق»: «أبا» مضاف إلى «حسن الخلق» (منادى مضاف منصوب)؛ «يا حسنًا خلقه»: «حسنًا» شبيه بالمضاف (نُصّب وعمل فيما بعده «خلقه» فاعل)؛ «أيا حسنًا»: نكرة غير مقصودة منصوبة؛ «يا حسنُ الخلق»: «حسن» علم مفرد مبني على الضم و«الخلق» تابع له. و«نكرة مقصودة» زائدة بلا جملة تطابقها.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q13', 'exam_primary_2019_arabic_nov', 13, 'اللغة العربية — مادة التخصص', '«وتصبح الرغبة في التعلم متجددة يصعب إشباعها»: ضع(ي) علامة (X) في الخانة المقابلة لنوع المشتق الذي تمثله كلمة «متجدِّدة»:', false, '[{"id": "A", "text": "مصدر ميمي"}, {"id": "B", "text": "اسم زمان"}, {"id": "C", "text": "اسم فاعل"}, {"id": "D", "text": "اسم مفعول"}]'::jsonb, ARRAY['C']::text[], '«متجدِّدة» اسم فاعل من الفعل «تجدَّد» (تفعّل)، بكسر ما قبل الآخر (الدال مكسورة). وليست مصدراً ميمياً ولا اسم زمان، ولا اسم مفعول (اسم المفعول «متجدَّد» بفتح الدال).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q14', 'exam_primary_2019_arabic_nov', 14, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) في الخانة المقابلة للفعل المجرد مما يأتي:', false, '[{"id": "A", "text": "يَتَعَلَّمُ"}, {"id": "B", "text": "يُعَلِّمُ"}, {"id": "C", "text": "يُظْلِمُ"}, {"id": "D", "text": "يُعْلَمُ"}]'::jsonb, ARRAY['D']::text[], '«يُعْلَمُ» من «عَلِمَ» (ثلاثي مجرد). أما (أ) «يَتَعَلَّمُ» فمن «تعلَّم» (مزيد)، و(ب) «يُعَلِّمُ» فمن «علَّم» (مزيد بالتضعيف)، و(ج) «يُظْلِمُ» فمن «أَظْلَمَ» (مزيد بالهمزة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q15', 'exam_primary_2019_arabic_nov', 15, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجملة الصحيحة مما يأتي:', false, '[{"id": "A", "text": "أيا مستعملوا الأنترنيت، أحسنوا توظيفه."}, {"id": "B", "text": "أيا مستعملي الأنترنيت، أحسنوا توظيفه."}, {"id": "C", "text": "أيا مستعملو الأنترنيت، أحسنو توظيفه."}, {"id": "D", "text": "أيا مستعملين الأنترنيت، أحسنو توظيفه."}]'::jsonb, ARRAY['B']::text[], '«مستعملي» منادى مضاف منصوب (حُذفت النون للإضافة)، و«أحسنوا» بألف الفارقة بعد واو الجماعة. (أ) خطأ: «مستعملوا» مرفوعة والمنادى المضاف منصوب؛ (ج) خطأ: «مستعملو» مرفوعة و«أحسنو» بلا ألف؛ (د) خطأ: «مستعملين» ليست صيغة المنادى المضاف و«أحسنو» بلا ألف.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q16', 'exam_primary_2019_arabic_nov', 16, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للكلمة الصحيحة إملائيا في ما يأتي:', false, '[{"id": "A", "text": "بُطْأَةً"}, {"id": "B", "text": "بُطْؤاً"}, {"id": "C", "text": "بُطْئِ"}, {"id": "D", "text": "بُطْئاً"}]'::jsonb, ARRAY['A']::text[], '«بُطْأَة» — الهمزة المتوسطة بعد ساكن (الطاء ساكنة) تُكتب على الألف. (ب) «بطؤاً» خطأ (على الواو)، (ج) «بطئِ» خطأ (على الياء)، (د) «بطئاً» خطأ (على الياء).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q17', 'exam_primary_2019_arabic_nov', 17, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجواب الصحيح لجمع كلمة (عندليب) في ما يأتي:', false, '[{"id": "A", "text": "عناديل"}, {"id": "B", "text": "عنادب"}, {"id": "C", "text": "عنادل"}, {"id": "D", "text": "عناديب"}]'::jsonb, ARRAY['C']::text[], 'جمع «عندليب» جمع تكسير «عَنَادِل» على وزن «فَعَالِل» (ع-ن-ا-د-ل). (أ) «عناديل» و(ب) «عنادب» و(د) «عناديب» كلها خطأ.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q18', 'exam_primary_2019_arabic_nov', 18, 'اللغة العربية — مادة التخصص', 'ورد في النص ما يأتي: «وكان لا بد للعالم... وهو يصبو إلى مجتمع التعلم...»: ضع(ي) علامة (X) داخل الخانة المقابلة للإعراب الصحيح للجملة «وهو يصبو إلى مجتمع التعلم»:', false, '[{"id": "A", "text": "حال"}, {"id": "B", "text": "خبر كان"}, {"id": "C", "text": "اسم لا النافية"}, {"id": "D", "text": "نعت"}]'::jsonb, ARRAY['A']::text[], 'جملة «وهو يصبو إلى مجتمع التعلم» جملة اسمية مسبوقة بواو الحال، تبين هيئة الفاعل (العالم) عند الصبو — فهي حال. وليست خبر «كان» (خبرها «لا بد...») ولا اسم «لا» النافية ولا نعتاً.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q19', 'exam_primary_2019_arabic_nov', 19, 'اللغة العربية — مادة التخصص', 'ورد في النص ما يأتي: «وكثر الحديث عن الجامعات المفتوحة، ومدارس بلا أسوار». كلمة «مدارس» تعرب اسما معطوفا مجرورا بالكسرة الظاهرة على آخره. ضع(ي) علامة (X) داخل الخانة المناسبة:', false, '[{"id": "A", "text": "صحيح"}, {"id": "B", "text": "خطأ"}]'::jsonb, ARRAY['B']::text[], '«مدارس» ممنوعة من الصرف (صيغة منتهى الجموع: مفاعل) فهي مجرورة بالفتحة نيابة عن الكسرة، لا بالكسرة الظاهرة. وهي معطوفة على «الجامعات» المجرورة بـ«عن».', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, '«مدارس» ممنوعة من الصرف (صيغة منتهى الجموع) فهي مجرورة بالفتحة نيابة عن الكسرة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q20', 'exam_primary_2019_arabic_nov', 20, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين نوع المفعول والجملة التي تتضمنه في ما يأتي:', true, '[{"id": "A", "text": "1. المفعول المطلق → د. تتعدد مجالات التعليم والتعلم تبعا لمتطلبات الحياة"}, {"id": "B", "text": "2. المفعول لأجله → هـ. يلتحق الطلبة إلى الجامعة رغبة في طلب العلم"}, {"id": "C", "text": "3. المفعول به → ب. تستهدف الجامعات العربية تحقيق التطور العلمي"}, {"id": "D", "text": "4. المفعول فيه → ج. تُفتح الجامعات صباحا وتُغلق مساء"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], 'المفعول المطلق: «تبعاً» (مصدر منصوب يبين نوع التعدد)؛ المفعول لأجله: «رغبةً» (مصدر يبين سبب الالتحاق)؛ المفعول به: «تحقيق» (مفعول به لـ«تستهدف»)؛ المفعول فيه: «صباحاً/مساءً» (ظرفا زمان). و(أ) «أصبحت الجامعات مركزا للعلم والمعرفة» زائدة: «مركزاً» خبر «أصبحت».', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q21', 'exam_primary_2019_arabic_nov', 21, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين نوع البدل والجملة التي تتضمنه في ما يأتي:', true, '[{"id": "A", "text": "1. بدل البعض من الكل → ج. عرفت الجامعات ربعها تقدما في البنيات التحتية"}, {"id": "B", "text": "2. البدل المباين → هـ. عرفت المدارس، الجامعات تقدما في البنيات التحتية"}, {"id": "C", "text": "3. البدل المطابق → ب. عرفت الجامعات، الجامعات العمومية تقدما في البنيات التحتية"}, {"id": "D", "text": "4. بدل الاشتمال → د. عرفت الجامعات مراكزها العلمية تقدما في البنيات التحتية"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], 'بدل البعض من الكل: «ربعها» (جزء من الجامعات)؛ البدل المباين: «الجامعات» بدل من «المدارس» (إضراب)؛ البدل المطابق: «الجامعات العمومية» (نفس المدلول)؛ بدل الاشتمال: «مراكزها العلمية» (مما تشتمل عليه الجامعات). و(أ) «عرفت الجامعات جميعها تقدما...» زائدة: «جميعها» توكيد معنوي لا بدل.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q22', 'exam_primary_2019_arabic_nov', 22, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للفعل الصحيح المضعف في ما يأتي:', false, '[{"id": "A", "text": "يَتَعَلَّمُ"}, {"id": "B", "text": "يَتَطَلَّبُ"}, {"id": "C", "text": "يَحُلُّ"}, {"id": "D", "text": "يَعْلَمُ"}]'::jsonb, ARRAY['C']::text[], '«يَحُلُّ» من «حلَّ» (ح-ل-ل): عينه ولامه من جنس واحد، فهو فعل صحيح مضعف. (أ) «يتعلم» من «تعلَّم» (سالم مزيد)، (ب) «يتطلب» من «تطلَّب» (سالم مزيد)، (د) «يعلم» من «علم» (سالم غير مضعف).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q23', 'exam_primary_2019_arabic_nov', 23, 'اللغة العربية — مادة التخصص', 'صل(ي) بسهم بين نوع الاسم في المجموعة الأولى ومثاله المناسب في المجموعة الثانية في ما يأتي:', true, '[{"id": "A", "text": "1. اسم منقوص → ج. الساعي"}, {"id": "B", "text": "2. اسم مقصور → د. هُدى"}, {"id": "C", "text": "3. اسم ممدود → أ. قُرَّاء"}]'::jsonb, ARRAY['A', 'B', 'C']::text[], 'الاسم المنقوص: «الساعي» (ينتهي بياء لازمة مكسور ما قبلها)؛ الاسم المقصور: «هُدى» (ينتهي بألف لازمة)؛ الاسم الممدود: «قُرَّاء» (ينتهي بألف بعدها همزة). و(ب) «هُدًى» زائد.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الخياران (ب) «هُدًى» و(د) «هُدى» ينتهيان كلاهما بألف (مقصور)؛ المفتاح يختار (د) مثالاً للمقصور.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q24', 'exam_primary_2019_arabic_nov', 24, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) في الخانة المقابلة للجملة التي تتضمن توكيدا في ما يأتي:', false, '[{"id": "A", "text": "ثلث الجامعات تتوفر على تكنولوجيا المعلومات والاتصالات المتطورة."}, {"id": "B", "text": "الجامعات ثلثها تتوفر على تكنولوجيا المعلومات والاتصالات المتطورة."}, {"id": "C", "text": "كل الجامعات تتوفر على تكنولوجيا المعلومات والاتصالات المتطورة."}, {"id": "D", "text": "الجامعات كلها تتوفر على تكنولوجيا المعلومات والاتصالات المتطورة."}]'::jsonb, ARRAY['D']::text[], '«الجامعات كلها تتوفر...» — «كلها» توكيد معنوي تابع لـ«الجامعات». (أ) «ثلث الجامعات»: «ثلث» مبتدأ لا توكيد؛ (ب) «ثلثها» بدل بعض من كل لا توكيد؛ (ج) «كل الجامعات»: «كل» مبتدأ مضاف لا توكيد (التوكيد المعنوي يأتي تابعاً للمؤكَّد بعد ذكره).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q25', 'exam_primary_2019_arabic_nov', 25, 'اللغة العربية — مادة التخصص', '«استمع أطر الجامعات إلى آراء الزوار»، وزن الفعل في هذه الجملة هو:', false, '[{"id": "A", "text": "استفعل"}, {"id": "B", "text": "افتعل"}, {"id": "C", "text": "انفعل"}, {"id": "D", "text": "افعول"}]'::jsonb, ARRAY['B']::text[], '«استمع» على وزن «افتعل»: أصل الفعل «سمع» (س-م-ع)، والزيادة همزة وتاء فقط (ا-س(ف)-ت-م(ع)-ع(ل)). (أ) «استفعل» خطأ: السين من أصل الفعل لا من حروف الزيادة؛ (ج) «انفعل» و(د) «افعول» خطأ.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, '«استمع» على وزن «افتعل» لا «استفعل»: السين والتاء من أصل الفعل «سمع».')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q26', 'exam_primary_2019_arabic_nov', 26, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للكلمة السليمة إملائيا في ما يأتي:', false, '[{"id": "A", "text": "مَجِيءٍ"}, {"id": "B", "text": "مَجِيءٌ"}, {"id": "C", "text": "مَجِىءَ"}, {"id": "D", "text": "مَجِيبٍ"}]'::jsonb, ARRAY['B']::text[], '«مَجِيءٌ» — الهمزة المتطرفة بعد ياء ساكنة تُكتب على السطر. (أ) «مَجِيءٍ» تختلف عن (ب) في التنوين فقط؛ (ج) «مَجِىءَ» خطأ في التشكيل (كسر الجيم)؛ (د) «مَجِيبٍ» كلمة أخرى (اسم فاعل من «أجاب»).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'الخياران (أ) «مَجِيءٍ» و(ب) «مَجِيءٌ» يختلفان في التنوين فقط (كسرة/ضمة)؛ المفتاح يختار (ب).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q27', 'exam_primary_2019_arabic_nov', 27, 'اللغة العربية — مادة التخصص', 'ضع(ي) علامة (X) داخل الخانة المقابلة للجواب المثبت الصحيح عن السؤال الآتي: «أليست الجامعات مكانا لطلب العلم من المهد إلى اللحد؟»:', false, '[{"id": "A", "text": "بلى، ليست الجامعات مكانا لطلب العلم من المهد إلى اللحد."}, {"id": "B", "text": "بلى، الجامعات مكان لطلب العلم من المهد إلى اللحد."}, {"id": "C", "text": "نعم، الجامعات مكان لطلب العلم من المهد إلى اللحد."}, {"id": "D", "text": "أجل، الجامعات مكان لطلب العلم من المهد إلى اللحد."}]'::jsonb, ARRAY['B']::text[], 'السؤال منفي («أليست...؟») فيُجاب عنه بـ«بلى» مع إثبات مضمون السؤال. (أ) خطأ: «بلى» مع النفي تناقض؛ (ج) و(د) خطأ: «نعم» و«أجل» لا تنقضان النفي (إثباتهما يُبقي النفي).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q28', 'exam_primary_2019_arabic_nov', 28, 'اللغة العربية — مادة التخصص', 'انطلاقا من النص، حدد(ي) مفهوم «التعليم المغلق والمنغلق». (في حدود أربعة أسطر) (2ن)', false, '[]'::jsonb, ARRAY[]::text[], 'التعليم المغلق والمنغلق حسب النص هو التعليم المحدد مكاناً في المدرسة، والمحدد زماناً في مراحل العمر المبكرة، والمحدد نطاقاً في مجالات التخصص الضيقة. (الجواب كاملاً أو لا شيء حسب المفتاح الرسمي.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (2ن)؛ الجواب كاملاً أو لا شيء حسب المفتاح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q29', 'exam_primary_2019_arabic_nov', 29, 'اللغة العربية — مادة التخصص', 'انطلاقا من النص أبرز(ي) أهمية الأنترنيت في استدامة التعلم. (في حدود ستة أسطر) (3ن)', false, '[]'::jsonb, ARRAY[]::text[], 'الأنترنيت فضاء تعليمي يتيح العديد من فرص مواصلة التعلم أمام الجميع: ممارسة الهوايات وتحصيل المعلومات العامة، واكتساب أدق المهارات وأكثر المعارف عمقاً؛ ومن مظاهر ذلك: الجامعات المفتوحة ومدارس بلا أسوار وجامعات شعبية وفصول افتراضية وشبكات تعليم وتدريب عن بعد وخطط وطنية لمحو الأمية ونشر الثقافة العلمية والتكنولوجية. (الجواب كاملاً أو لا شيء حسب المفتاح الرسمي.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (3ن)؛ الجواب كاملاً أو لا شيء حسب المفتاح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q30', 'exam_primary_2019_arabic_nov', 30, 'اللغة العربية — مادة التخصص', 'هناك توجه يرى أن الأنترنيت أصبح يشكل تهديدا حقيقيا لمهنة التدريس؛ حلل(ي) هذه الفكرة مع إبداء رأيك فيها (في حدود عشرة أسطر). (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'شبكة التصحيح من المفتاح الرسمي: الملاءمة 1ن (الالتزام بالموضوع: تحليل الآثار السلبية للأنترنيت في مهنة التدريس + إبداء الرأي)، الانسجام 1ن، سلامة اللغة 1ن، الحجم وجودة العرض 1ن (8–12 سطراً، خط واضح). نموذج تحليل (للتوجيه، لا إجابة وحيدة): من الآثار السلبية: منافسة المعلم كمصدر وحيد للمعرفة، واعتماد المتعلم المفرط على الشاشات، وتراجع التفاعل الإنساني المباشر، وانتشار معلومات غير موثوقة؛ والرأي: الأنترنيت أداة لا بديل عن المعلم — يبقى المعلم موجّهاً ومربياً وميسّراً للتعلم، والتهديد الحقيقي هو عدم التكيف مع الأداة لا الأداة نفسها.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مقالي مفتوح (4ن)؛ شبكة التصحيح: الملاءمة 1ن، الانسجام 1ن، سلامة اللغة 1ن، الحجم وجودة العرض 1ن (8–12 سطراً).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q31', 'exam_primary_2019_arabic_nov', 31, 'ديداكتيك اللغة العربية — الوضعية 1', 'الوضعية 1: لاحظت مدرسة القسم الأول أن أحد المتعلمين لا ينطق الصوت /ث/ بطريقة سليمة، حيث ينطقه /ت/. اذكر/ي مصدرين محتملين للأخطاء التي يرتكبها المتعلم المعني. (2ن)', false, '[]'::jsonb, ARRAY[]::text[], 'من بين المصادر المحتملة الآتية (1ن عن كل مصدر مناسب): أسلوب التدريس وطريقته غير فعالة؛ الصوت نفسه يطرح صعوبة على مستوى التخفيف والإنجاز؛ عيب خلقي لدى المتعلم(ة) على مستوى الجهاز الصوتي؛ غياب البيئة اللازمة للتعلم الفعال؛ المدرس نفسه لا يقدم النموذج السليم لتحقيق الصوت المعني؛ ضعف مواظبة المتعلم(ة) على دروسه ما يحرمه من المواكبة الجيدة للتعلمات.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 1، 2ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q32', 'exam_primary_2019_arabic_nov', 32, 'ديداكتيك اللغة العربية — الوضعية 1', 'الوضعية 1: بيّن/بيّني كيفية تمكين المتعلم المعني من تعرّف طريقة نطق كل صوت من الصوتين /ث/ و/ت/. (3ن)', false, '[]'::jsonb, ARRAY[]::text[], 'تشخيص طريقة نطق كل صوت على حدة باستعمال الجهاز الصوتي ووصفها؛ تنبيه المتعلم المعني إلى الفرق الذي يميز نطق كل صوت عن نطق الصوت الآخر (عند نطق /ث/ تُسمع نبرة النفس ويكون مخرجها بين الأسنان، في حين أننا نطبق اللسان مع اللثة عند نطق /ت/، ويكون مخرجها لثوياً أسنانياً)؛ حفز المتعلم المعني على تدريبات مكثفة حول نطق الصوتين معاً؛ إمكانية استعمال وسائل تكنولوجية حديثة لتحديد مخرج كل صوت من الصوتين من خلال شريط يصدر مخرج كل منهما. (1ن عن كل تفسير/وصف، في حدود ثلاثة مقترحات.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 1، 3ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q33', 'exam_primary_2019_arabic_nov', 33, 'ديداكتيك اللغة العربية — الوضعية 1', 'الوضعية 1: اقترح/اقترحي مهارة من مهارات الوعي الصوتي، وبيّن/بيّني خطة توظيفها لتصفية صعوبات نطق الصوت المعني (/ث/). (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'إحدى المهارات الآتية (1ن عن المهارة و3ن موزعة بالتساوي بين ثلاث مقترحات حول طريقة توظيفها): التجزئة المقطعية — تقديم كلمات بها مقطع أو مقاطع من الصوت /ث/ وترديدها؛ مطالبة المتعلم المعني بتحديد عدد المقاطع باستعمال التصفيق؛ تحديد المقطع المعني وترديده عدة مرات. العزل — تقديم صور لأدوات/أشياء تتضمن الصوت /ث/ في أولها، ويطلب منه عزل المقطع الصوتي لكل كلمة، ويقوم بترديدها عدة مرات. التمييز — تقديم سلسلة كلمات تتضمن جميعها أحد الصوتين /ث/ أو /ت/ باستثناء إحداها التي تتضمن الصوت الآخر، من قبيل: أثبت، ماتت، آثاث، تقتّن، توت... ثم مطالبة المتعلم المعني برصد الكلمة الدخيلة التي لا تتضمن الصوت الأخير نفسه؛ إعادة النشاط نفسه عدة مرات.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 1، 4ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q34', 'exam_primary_2019_arabic_nov', 34, 'ديداكتيك اللغة العربية — الوضعية 2', 'الوضعية 2 (التعليم المبكر للقراءة — استراتيجيات المفردات): اشرح/اشرحي باقتضاب المقصود بإجراءي «التهيئة» و«النمذجة»، مع تعزيز شرحك بأمثلة مناسبة. (3ن)', false, '[]'::jsonb, ARRAY[]::text[], 'التهيئة (1.5ن): تقديم المهارة المعنية وتشويق المتعلمين لتوظيفها، مع مطالبتهم بترديدها. مثال: اليوم سنرى مهارة جديدة تُدعى مهارة الحذف، ثم يطلب من المتعلمين ترديد المصطلح ثم في زمر وجماعياً. النمذجة (1.5ن): يقدم المدرس أمثلة لإجراء هذه المهارة وإبراز مناسبتها. مثال: مخالطة المتعلمين بترتيب كلمة «سماء» ويسألهم عن عزل مقطعها الأول، ثم حذفه وقراءة الكلمة المتبقية/الجديدة، فتكون النتيجة هكذا: سماء → /سـ/ + ماء (بعد حذف المقطع الأول نحصل على «ماء» وهي مادة للشرب).', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 2، 3ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q35', 'exam_primary_2019_arabic_nov', 35, 'ديداكتيك اللغة العربية — الوضعية 2', 'الوضعية 2 (التعليم المبكر للقراءة — استراتيجيات المفردات): بيّن/بيّني كيفية توظيف استراتيجية «خريطة الكلمة» لتمكين المتعلمات والمتعلمين من فهم مفردة «وَلَجَ». (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'خريطة الكلمة للمفردة «وَلَجَ» (1ن عن كل عنصر): نوعها: فعل؛ مرادفها: دخل؛ ضدها: خرج؛ تركيبها في جملة: لا يلج هذه القاعة إلا الراشدون.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 2، 4ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q36', 'exam_primary_2019_arabic_nov', 36, 'ديداكتيك اللغة العربية — الوضعية 3', 'الوضعية 3 (نص حواري: سعيد وأستاذه حول التأخر واحترام الوقت): قدّم(ي) تخطيطاً ديداكتيكياً مبسّطاً لدرس «مفهوم المفعول المطلق»، مبيّناً كيفية إنجازه والوسائل التعليمية، وكيفية توظيف النص الحواري المقترح. (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'تخطيط ديداكتيكي مبسط لدرس «مفهوم المفعول المطلق» يبين كيفية إنجازه والوسائل التعليمية، ثم يبين كيفية توظيف النص الحواري (النص المقترح: «سعيد، أنت تحرجني إحراجا بتأخرك المستمر...»)، ويوضح نص الاكتشاف، والمهام، والتقويم، وذلك من قبيل: بداية التعلمات — قراءة النص الحواري لملاحظة المفعول المطلق؛ قراءة النص نفسه من طرف ثلة من المتعلمين والمتعلمات؛ مراقبة مستوى فهم المتعلمين للمحتوى المعني عبر أسئلة واضحة. مطابقة/استخراج — يستخرج المتعلمون الجمل التي تتضمن المفعول المطلق، ويعيدون كتابتها بألوان مغايرة. إشراك المتعلمين في دراسة هذه المصادر والتركيز على وظيفتها (البيان والدلالة). استخلاص القاعدة وكتابتها على السبورة وقراءتها. (تُراعى في توزيع النقطة (4ن): بناء المفهوم المعني بالديداكتيكية (المراحل) في الدرس؛ اقتراح الأنشطة التقويمية الخاصة بالمتعلمين غير المنخرطين في بناء المفهوم المعني بالديداكتيكية اللازمة.)', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'صياغة السؤال في الصفحة المطبوعة 14 المفقودة من المسح؛ الصياغة هنا مُستخلصة من عناصر الإجابة الرسمية. سؤال مفتوح (4ن).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: اللغة العربية — دورة نونبر 2019 — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_arabic_nov_q37', 'exam_primary_2019_arabic_nov', 37, 'ديداكتيك اللغة العربية — الوضعية 3', 'الوضعية 3 (نص حواري: سعيد وأستاذه حول التأخر واحترام الوقت): أبرز/أبرزي كيفية تمكين المتعلمات والمتعلمين من التمييز بين أنواع المفعول المطلق. (4ن)', false, '[]'::jsonb, ARRAY[]::text[], 'أحد السيناريوهات البيداغوجية الإجرائية الكفيلة بتمكين المتعلمين والمتعلمات من تعرف دلالة المفعول المطلق أولاً، ثم تمييز هذه الدلالات عن بعضها بعضاً، وذلك من قبيل: 1. المفعول المطلق لتوكيد الفعل (1ن): من خلال أسئلة دقيقة ومتنوعة، يستدرج الأستاذ متعلميه للوقوف على أهمية المصدر الذي اشتق منه الفعل في الجملة المعنية في رفع ملبوس اليقين والتحقق من طبيعة الفعل المعني. مثال (حوار أستاذ/متعلم): الأستاذ: هل يواظب سعيد على دراسته؟ — المتعلم(ة): لا. الأستاذ: كيف عرفت هذا؟ — المتعلم(ة): خاطبه الأستاذ قائلاً: أنت تحرجني إحراجاً بتأخرك المستمر. الأستاذ: هل يقبل الأستاذ تأخر سعيد؟ — المتعلم(ة): لا، سعيد يحترم أستاذه. الأستاذ: هل يعلم سعيد بهذا الإحراج؟ — المتعلم(ة): لا، إن سعيداً يعتبر تأخره عادية وقليلة ولا إحراج فيها. الأستاذ: لماذا إذن لجأ الأستاذ... لتأكيد مستوى الإحراج واقتناع...؟ — المتعلم(ة): ... بمصدر فعل... يتدخل الأستاذ أخيراً ليقول: مثل هذه المصادر يؤتى بها لتأكيد وقوع الفعل ورفع ملبوس اليقين حول حدوثه. 2. المفعول المطلق لبيان نوع الفعل (1.5ن): من خلال أسئلة دقيقة، يستدرج الأستاذ متعلميه للوقوف على أهمية المصدر الذي اشتق منه الفعل في الجملة المعنية في بيان طريقة حصول الفعل وتحققه. مثال: الأستاذ: بم شبه الأستاذ هذه الحافلة؟ — المتعلم(ة): ... بالسلحفاة. الأستاذ: كيف عبر عن هذا التشبيه؟ — المتعلم(ة): ... تسير سير السلحفاة. يتدخل الأستاذ أخيراً ليقول: مثل هذه المصادر يؤتى بها لبيان طريقة حدوث الفعل، وذلك إما بوصفها بنعت أو بإضافتها إلى اسم أو بموصوفها، مما يتوقف معها في إبراز كيفية حدوث الفعل. 3. المفعول المطلق لبيان عدد مرات وقوع الفعل (1.5ن): من خلال أسئلة دقيقة ومتنوعة، يستدرج الأستاذ متعلميه للوقوف على أهمية المصدر أو ما ينوب عنه من حيث عدده (مفرد، مثنى، جمع) الذي اشتق منه الفعل في الجملة المعنية في بيان عدد مرات حصول الفعل وتحققه. مثال: الأستاذ: حسب سعيد، كم مرة تأخر؟ — المتعلم(ة): ... مرتين. الأستاذ: لماذا لجأ سعيد لحصر عدد تأخراته؟ — المتعلم(ة): ليثبت للأستاذ بأن تأخراته ليست مستمرة ولا تستحق الإحراج الذي أثاره. يتدخل الأستاذ أخيراً ليقول: مثل هذه المصادر يؤتى بها، سواء في المفرد أو المثنى أو الجمع، لبيان عدد مرات وقوع الفعل، وذلك من مزيد من التوضيح والتدقيق.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (الوضعية 3، 4ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
