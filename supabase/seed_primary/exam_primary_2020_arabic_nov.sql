-- ====================================================================
-- مباراتي — اللغة العربية، مادة التخصص، دورة نونبر 2020
-- ====================================================================
-- المصدر: ملف الحل solved/2020/اللغة العربية + الفرنسية + الرياضيات + العلوم - 2020.md
--   ملف الامتحان: exams-ibtida2i/2020/اللغة العربية + الرياضيات + اللغة الفرنسية + العلوم - امتحان.pdf
--   (كراسة موحدة 50 صفحة، مسح ضوئي؛ العربية ص 1–11 من الكراسة).
--   مصدر الحل: المفتاح الرسمي (عناصر الإجابة) للمركز الوطني للتقويم والامتحانات —
--   ملف 2020/التصحيح.pdf (13 صفحة). لم يُعثر على حل منشور كامل مع تعليلات على الإنترنت؛
--   صفحة تحميل الملفين (alwadifa-club): https://alwadifa-club.com/alwadifa-maroc/
--   %d8%aa%d8%ad%d9%85%d9%8a%d9%84-%d9%86%d9%85%d8%a7%d8%b0%d8%ac-%d8%a7%d9%85%d8%aa%d8%ad%d8%a7%d9%86%d8%a7%d8%aa-%d9%85%d8%a8%d8%a7%d8%b1%d8%a7%d8%a9-%d8%a7%d9%84%d8%aa%d8%b9%d9%84%d9%8a%d9%85-%d9%84/13756/
-- التحقق: كل صفحة من صفحات الامتحان والمفتاح قُرئت من صور 150–300 DPI؛
--   نص الانطلاق «ميل الأطفال إلى الحكايات» (علي أحمد مدكور، تدريس فنون اللغة العربية،
--   دار الشواف، ط1991، ص237–239 بتصرف) منقول حرفياً في ملف الحل.
-- المدة: 240 دقيقة = مدة الاختبار الكامل (4 ساعات، المعامل 8)؛ مدة كل مادة على حدة
--   غير منشورة في الورقة.
-- ملاحظات: Q2 = ج (نص إخباري) حسب جدول المفتاح؛ Q3 جملتها من لَعَلَّ (لا تُعَدُّ)؛
--   Q8 تحفّظ (المفتاح: نعت؛ المعياري: بدل)؛ Q10 البديلان ج و د متطابقان في الورقة؛
--   Q12/Q13 الفقرتان النموذجيتان مقترحتان من النص وشبكة التصحيح وليستا نصاً من المفتاح.
-- ترميز المطابقة (Q4، Q5): الخيارات هي عناصر العمود الثاني، والأجوبة الصحيحة مرتبة
--   حسب عناصر العمود الأول.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2020_arabic_nov', 'specialty_primary', 2020, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020)', 'دورة نونبر 2020', 240, 13)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (13 سؤالاً)

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q1', 'exam_primary_2020_arabic_nov', 1, 'النحو', 'ورد في النص ما يأتي: «يميل الطفل إلى سماع الحكايات بمجرد فهمه اللغة». أضع علامة (√) أمام الإعراب الصحيح لكلمة «اللغة»:', false, '[{"id": "أ", "text": "مفعول مطلق"}, {"id": "ب", "text": "مضاف إليه"}, {"id": "ج", "text": "فاعل"}, {"id": "د", "text": "مفعول به"}]'::jsonb, ARRAY['د']::text[], '«فهمه» مصدر عامل عمل فعله «فهم» المتعدي إلى مفعولين؛ فالضمير الهاء مفعول به أول، و«اللغة» مفعول به ثانٍ منصوب. الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q2', 'exam_primary_2020_arabic_nov', 2, 'فهم النص', 'أحدد نوعية النص بوضع علامة (√) داخل الخانة المقابلة للجواب الصحيح في ما يأتي:', false, '[{"id": "أ", "text": "نص وصفي"}, {"id": "ب", "text": "نص سردي"}, {"id": "ج", "text": "نص إخباري"}, {"id": "د", "text": "نص توجيهي"}]'::jsonb, ARRAY['ج']::text[], 'النص مقال علمي/تربوي يُخبر عن ميل الأطفال إلى الحكايات وأسبابه وآثاره التربوية، بلا حكاية أحداث متسلسلة (سرد) ولا وصف لمشهد ولا توجيهات وأوامر. الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q3', 'exam_primary_2020_arabic_nov', 3, 'النحو', 'أضع علامة (√) في خانة الجملة المضبوطة بالشَّكل الصحيح:', false, '[{"id": "أ", "text": "لَعَلَّ شخصياتِ الحكايةِ شخصياتٍ متحركةً."}, {"id": "ب", "text": "لَعَلَّ شخصياتِ الحكايةِ شخصياتٌ متحركةٌ."}, {"id": "ج", "text": "لَعَلَّ شخصياتُ الحكايةِ شخصياتٌ متحركةٌ."}, {"id": "د", "text": "لَعَلَّ شخصياتِ الحكايةِ شخصياتٌ متحركةٍ."}]'::jsonb, ARRAY['ب']::text[], '«لَعَلَّ» من أخوات إنَّ تنصب اسمها وترفع خبرها؛ فاسمها «شخصياتِ» منصوب بالكسرة (جمع مؤنث سالم) وهو مضاف، و«الحكايةِ» مضاف إليه مجرور؛ وخبرها «شخصياتٌ» مرفوع بالضمة، و«متحركةٌ» نعت مرفوع له. البديل ج يرفع اسم لعل خطأً، والبديل أ ينصب الخبر، والبديل د يجر النعت. الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, 'الخيارات الأربعة تختلف في الحركات فقط؛ تشكيل البديلين أ و د باهت في المسح الضوئي (300 DPI) ولا يُقرأ يقيناً — الجواب ب مؤكد من المفتاح الرسمي، والتشكيل المذكور للبديلين هو القراءة المرجّحة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q4', 'exam_primary_2020_arabic_nov', 4, 'الصرف', 'أصل بسهم كل فعل بمصدره في ما يأتي: أ. فَتَحَ · ب. فَتَّحَ · ج. تَفَتَّحَ · د. فَاتَحَ', false, '[{"id": "1", "text": "تَفَتُّحٌ"}, {"id": "2", "text": "اِنْفِتَاحٌ"}, {"id": "3", "text": "مُفَاتَحَةٌ"}, {"id": "4", "text": "تَفْتِيحٌ"}, {"id": "5", "text": "فَتْحٌ"}]'::jsonb, ARRAY['5','4','1','3']::text[], 'فَتَحَ (فَعَلَ) مصدره فَتْح؛ فَتَّحَ (فَعَّلَ) مصدره تَفْتِيح؛ تَفَتَّحَ (تَفَعَّلَ) مصدره تَفَتُّح؛ فَاتَحَ (فَاعَلَ) مصدره مُفَاتَحَة. و«انفتاح» مصدر اِنْفَتَحَ، وهو بلا مقابل. الجواب من المفتاح الرسمي.', 'matching', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q5', 'exam_primary_2020_arabic_nov', 5, 'الصرف', 'أصل بسهم كل فعل بنوعه في ما يأتي: أ. تَسْتَعِدُّ · ب. أَبْدَالُ · ج. يُغْرِي · د. تَسْتَمِيلُ', false, '[{"id": "1", "text": "فعل معتل أجوف مزيد"}, {"id": "2", "text": "فعل معتل ناقص مزيد"}, {"id": "3", "text": "فعل معتل ناقص مجرد"}, {"id": "4", "text": "فعل صحيح مضاعف مزيد"}, {"id": "5", "text": "فعل صحيح سالم مزيد"}]'::jsonb, ARRAY['4','5','2','1']::text[], 'تَسْتَعِدُّ جذره (ع-د-د) مضاعف، مزيد بالاستـ؛ أَبْدَالُ جذره (ب-د-ل) سالم، مزيد بالهمزة (أَفْعَلَ)؛ يُغْرِي جذره (غ-ر-ي) ناقص، مزيد بالهمزة؛ تَسْتَمِيلُ جذره (م-ي-ل) أجوف، مزيد بالاستـ. و«معتل ناقص مجرد» بلا مقابل. الجواب من المفتاح الرسمي.', 'matching', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q6', 'exam_primary_2020_arabic_nov', 6, 'النحو', 'أضع علامة (√) في الخانة المقابلة للجملة التي ضُبط فيها العدد الترتيبي بالشَّكل الصحيح في ما يأتي:', false, '[{"id": "أ", "text": "يحتفل المغاربة بعيد الاستقلال في اليوم الثامنَ عشرَ من شهر نونبر."}, {"id": "ب", "text": "يحتفل المغاربة بعيد الاستقلال في اليوم الثامنِ عشرِ من شهر نونبر."}, {"id": "ج", "text": "يحتفل المغاربة بعيد الاستقلال في اليوم الثامنِ عشرَ من شهر نونبر."}, {"id": "د", "text": "يحتفل المغاربة بعيد الاستقلال في اليوم الثامنَ عشرِ من شهر نونبر."}]'::jsonb, ARRAY['أ']::text[], 'العدد الترتيبي المركب (الثامن عشر) مبني على فتح الجزأين، فيُضبط «الثامنَ عشرَ» بفتحتين. الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q7', 'exam_primary_2020_arabic_nov', 7, 'النحو', 'أضع علامة (√) في الخانة المقابلة للإعراب الصحيح لفعل «تُرَبِّي» الوارد في الجملة الآتية: «فهي تُرَبِّي فيهم الحماس»:', false, '[{"id": "أ", "text": "فعل مضارع مرفوع وعلامة رفعه الضمة الظاهرة."}, {"id": "ب", "text": "فعل مضارع مرفوع وعلامة رفعه الياء."}, {"id": "ج", "text": "فعل مضارع مرفوع وعلامة رفعه الضمة المقدرة على الياء المانع من ظهورها التعذر."}, {"id": "د", "text": "فعل مضارع مرفوع وعلامة رفعه الضمة المقدرة على الياء المانع من ظهورها الاستثقال."}]'::jsonb, ARRAY['د']::text[], 'الفعل «تُرَبِّي» مضارع مرفوع، وعلامة رفعه الضمة المقدرة على الياء، والمانع من ظهورها الاستثقال (ثقل الضمة على الياء)؛ والتعذر يكون على الألف لا على الياء. الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q8', 'exam_primary_2020_arabic_nov', 8, 'النحو', 'وردت في النص الجملة الآتية: «وَالسِّرُّ في هذا الْمَيْلِ القوي إلى الحكاية أن حبَّ الاطلاع من الأمور القوية...». أضع علامة (√) في الخانة المناسبة للموقع الإعرابي الصحيح لكلمة «الْمَيْلِ»:', false, '[{"id": "أ", "text": "اسم مجرور بـ«في»"}, {"id": "ب", "text": "نعت مجرور"}, {"id": "ج", "text": "مضاف إليه مجرور"}, {"id": "د", "text": "توكيد مجرور"}]'::jsonb, ARRAY['ب']::text[], 'جواب المفتاح الرسمي هو «نعت مجرور» (يتبع «هذا» المجرور بـ«في»).', 'qcm', 'official', NULL, true, 'تحفّظ: التحليل المعياري أن المعرف بـ«أل» بعد اسم الإشارة يُعرب بدلاً (عطف بيان) مجروراً، لا نعتاً؛ الجواب المسجَّل هو جواب المفتاح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q9', 'exam_primary_2020_arabic_nov', 9, 'النحو', 'أحدد الموقع الإعرابي الصحيح لكلمة «حكاية» في الجملة الآتية: «ما قَرَأْتُ إلَّا حكاية واحدة». أضع علامة (√) في الخانة المقابلة للجواب الصحيح:', false, '[{"id": "أ", "text": "تمييز"}, {"id": "ب", "text": "بدل"}, {"id": "ج", "text": "مفعول به"}, {"id": "د", "text": "فاعل"}]'::jsonb, ARRAY['ج']::text[], 'الاستثناء مفرَّغ (ناقص منفي: «ما قرأت إلا…»)، فيُعرب المستثنى حسب موقعه في الجملة؛ و«حكاية» مفعول به للفعل «قرأت». الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q10', 'exam_primary_2020_arabic_nov', 10, 'الصرف', 'أحدد تصغير كلمة «صُنَّاع». أضع علامة (√) أمام الجواب الصحيح في ما يأتي:', false, '[{"id": "أ", "text": "صُنَيْعِيُّونَ"}, {"id": "ب", "text": "صُوَيْنِعُونَ"}, {"id": "ج", "text": "صُنَيْعُونَ"}, {"id": "د", "text": "صُنَيْعُونَ"}]'::jsonb, ARRAY['ب']::text[], '«صُنَّاع» جمع «صانع»؛ تصغيره على وزن فُعَيْعِل «صُوَيْنِع»، ويُجمع جمعاً سالماً «صُوَيْنِعُونَ». الجواب من المفتاح الرسمي.', 'qcm', 'official', NULL, true, 'البديلان ج و د يبدوان متطابقين تماماً في المسح («صُنَيْعُونَ» في كليهما) — خطأ طباعي محتمل في الورقة.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q11', 'exam_primary_2020_arabic_nov', 11, 'المعجم', 'أستخرج من النص مرادف كل كلمة من الكلمتين الآتيتين: أ. مولع · ب. النزوع', false, '[]'::jsonb, ARRAY[]::text[], 'أ. مولع ← شغوف (من قوله: «فالطفل شغوف بتتبع أحداث الحكاية»). ب. النزوع ← الميل (من قوله: «يميل الطفل إلى سماع الحكايات» و«هذا الميل القوي إلى الحكاية»). 0,5ن لكل مرادف. الجواب من المفتاح الرسمي.', 'open', 'official', NULL, true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q12', 'exam_primary_2020_arabic_nov', 12, 'التعبير الكتابي', 'ورد في النص الجملة الآتية: «تُعَدُّ الحكاية عاملا تربويا في تعليم اللغة وتعلمها». أتوسع في شرح قول الكاتب (في حدود خمسة أسطر).', false, '[]'::jsonb, ARRAY[]::text[], 'شبكة التصحيح (من المفتاح): الملاءمة 0,5ن (الإشارة إلى أهمية الحكاية في تعزيز سلوك وقيم إيجابية، والتشبع بها وممارستها في الحياة اليومية، وتنمية الرصيد المعجمي واللغوي)؛ الانسجام 0,5ن؛ سلامة اللغة 0,5ن (≤3 أخطاء)؛ الحجم وجودة العرض 0,5ن (5–6 أسطر، وضوح الخط). فقرة نموذجية مقترحة: «تُعَدُّ الحكاية عاملاً تربوياً في تعليم اللغة وتعلّمها لأنها تزوّد المتعلّم بكثير من الحقائق والمعلومات والقيم والاتجاهات، فتفتح أمامه أبواب الثقافة العامة وتشبع خياله، كما تمدّه بالمعارف وآداب السلوك الضرورية لحلّ كثير من المشكلات. فعن طريق الحكاية يتعلّم الطفل كثيراً من المعارف، ويتشرّب القيم الإيجابية ويمارسها في حياته اليومية، وينمّي رصيده المعجمي واللغوي. وكلّ ذلك يسهم في تكوين شخصيته، فالحكاية فيها فكرة ومغزى وخيال وأسلوب وتراكيب لغوية.»', 'open', 'official', NULL, true, 'الفقرة النموذجية مقترحة من النص وشبكة التصحيح، وليست نصاً حرفياً من المفتاح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2020) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2020_arabic_nov_q13', 'exam_primary_2020_arabic_nov', 13, 'التعبير الكتابي', 'أنطلق من النص، وأُبَيِّن كيف يمكن للحكاية أن تغري الصغار والكبار وتشبع رغبتهم في المعرفة (في حدود ستة أسطر).', false, '[]'::jsonb, ARRAY[]::text[], 'شبكة التصحيح (من المفتاح): الملاءمة 0,5ن (الأحداث المثيرة والجذابة، الأحداث العجائبية والغرائبية، الشخصيات والمواقف، طريقة الحك والسرد، الإشباع الذاتي والرغبة في المعرفة)؛ الانسجام 0,5ن؛ سلامة اللغة 0,5ن؛ الحجم 0,5ن. فقرة نموذجية مقترحة: «تغري الحكاية الصغار والكبار على السواء لأنها لون أدبي يجد فيه الطفل متعة وتسلية بعيدة عن الواقع، واستغراقاً في عالم الخيال، فيفرح مع شخصياتها الفَرِحة ويحزن مع شخصياتها الحزينة، ويعيش في الخيال حياة اجتماعية يتبادل مع أفرادها مشاعرهم. وتجذبهم أحداثها المثيرة والعجائبية والغرائبية، وشخصياتها المتحركة الناطقة المعبرة عن وجودها بأساليب مختلفة من القول والعمل، وطريقة حكّها وسردها، فتثير خيالهم للكشف عن أشياء غير التي ألفوها. وبذلك تشبع الحكاية رغبتهم في المعرفة، لأن حبّ الاطلاع من الأمور القوية في الطبيعة البشرية، وهي تحمل إليهم معاني وصوراً جديدة من الحياة لا يجدونها في بيئتهم، فتفتح أمامهم أبواب الثقافة العامة.»', 'open', 'official', NULL, true, 'الفقرة النموذجية مقترحة من النص وشبكة التصحيح، وليست نصاً حرفياً من المفتاح الرسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
