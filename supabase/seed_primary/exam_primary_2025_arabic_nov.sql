-- ====================================================================
-- مباراتي — اللغة العربية، مادة التخصص، دورة نونبر 2025
-- ====================================================================
-- المصدر: ملف الحل solved/2025/اللغة العربية - مادة التخصص - دورة نونبر 2025.md
--   (سجل الامتحانات رقم 34؛ الحل: Gemini 4 Neon عبر AI Studio، 2026-11-20)
--   ملف الامتحان: exams-ibtida2i/2025/اللغة العربية - مادة التخصص - دورة نونبر 2025.pdf (10 صفحات).
--   ورقة الامتحان نفسها من موقع leadingeducation.ma (كما هو مذكور في ملف الحل).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q30 وخياراته الخمسة (A-E) مطابقة حرفياً لورقة الامتحان.
--   * المدة (60 دقيقة) والمعامل (6) من غلاف ورقة الامتحان نفسها (الصفحة 1/10)،
--     وتأكيد مستقل عبر mesconcours.ma (ساعة واحدة، المعامل 6، 30 سؤالاً) —
--     https://mesconcours.ma/ar/concours/enseignement/2025-114/
--     (جدول exams في قاعدة البيانات لا يحمل عمود معامل؛ المعامل موثق هنا فقط).
--   * الأجوبة الصحيحة رُوجعت واحداً واحداً مقابل قواعد النحو والصرف ونص الامتحان؛
--     لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان، والحل مصدره طرف ثالث (AI Studio).
--   * الأسئلة التحليلية (Q1، Q8، Q12، Q15، Q17، Q24، Q29) موسومة في verification_note؛
--     Q24 يحمل تنبيهاً خاصاً: المعتمد مدرسياً جملة اسمية منسوخة (D)، ويرى بعض النحاة
--     القدامى أنها فعلية فيكون الجواب E.
--   * التعليلات منقولة حرفياً من ملف الحل، بما فيها علامات المراجع [1]-[15].
--   * لا توجد أسئلة متخطاة: جميع الأسئلة الثلاثين لها جواب موثق.
--
-- ملاحظات عن ملف الامتحان:
--   * ورقة الامتحان تحمل علامات قلم من مرشح سابق (تشطيبات وX) — أُهملت تماماً.
--   * تعليمات الغلاف: لكل سؤال جواب صحيح واحد فقط (Q1–Q30 كلها إجابة واحدة).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2025_arabic_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2025_arabic_nov', 'specialty_primary', 2025, 'arabic', 'مادة التخصص: اللغة العربية', 'امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025)', 'دورة نونبر 2025', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بخمسة خيارات A-E)

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q1', 'exam_primary_2025_arabic_nov', 1, 'أنواع النصوص', 'النص عبارة عن:', false, '[{"id": "A", "text": "نص وصفي."}, {"id": "B", "text": "نص إخباري."}, {"id": "C", "text": "نص توجيهي."}, {"id": "D", "text": "نص حجاجي."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'النص عبارة عن نص تفسيري (وهو غير وارد ضمن الخيارات A–D)؛ إذ يهدف إلى شرح وتفسير مفهوم «القيم والتربية على القيم» بأسلوب موضوعي تقريري محايد، مستثمراً آليات التفسير المعروفة: التعريف (تشكل القيم تفضيلات جماعية ومعيارية...)، والتقسيم والتصنيف (فهي تمثل نسقاً مرجعياً ثلاثياً: بعضها... وبعضها... فيما يكون بعضها الآخر...)، والتمثيل (كالمساواة، كالنزاهة، من قبيل...)، والتعليل والاستنتاج (لكونها، لذلك، انطلاقاً مما سبق).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'تصنيف تحليلي للنص (نص تفسيري غير وارد ضمن الخيارات، فالجواب E)؛ لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q2', 'exam_primary_2025_arabic_nov', 2, 'جموع التكسير — صيغة منتهى الجموع', 'الجمع الصحيح لكلمة "عندليب" من بين الجموع الآتية هو:', false, '[{"id": "A", "text": "عَنادِب."}, {"id": "B", "text": "عَناديب."}, {"id": "C", "text": "عَناديل."}, {"id": "D", "text": "عَنادل."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '«عَنْدَليب» اسم خماسي الأصول مزيد بالياء، وبما أن حرفه الرابع (اللام) ليس حرف مدّ، فإن القاعدة الصرفية في جمع التكسير تقتضي ردّه إلى الرباعي بحذف الزائد والحرف الخامس الأصلي (الياء والباء)، ثم جمعه على وزن «فَعَالِل»: عَنَادِلُ[1][2]. وهو الجمع الفصيح المعتمد في أمهات المعاجم (لسان العرب، القاموس المحيط، المعجم الوسيط، معجم الغني)[3][4]، وكذا في الكتاب المدرسي للمستوى السادس ابتدائي بالمغرب.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q3', 'exam_primary_2025_arabic_nov', 3, 'إعراب الفعل المضارع — الأفعال الخمسة', '"لَمْ يُشَكِّلَا أي عائق في تنفيذ السلوك المدني..." تعرب "يُشَكِّلَا" فعلا مضارعا:', false, '[{"id": "A", "text": "مجزوما بلم، وعلامة جزمه الألف، وألف الاثنين في محل رفع فاعل."}, {"id": "B", "text": "منصوبا بلم، وعلامة نصبه الألف، وألف الاثنين في محل رفع فاعل."}, {"id": "C", "text": "مجزوما بلم، وعلامة جزمه حذف النون، لأنه من الأفعال الخمسة، وألف الاثنين في محل رفع فاعل."}, {"id": "D", "text": "مرفوعا بالألف، وعلامة رفعه حذف النون، لأنه من الأفعال الخمسة، وألف الاثنين في محل رفع فاعل."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], '«لَمْ» أداة جزم، والفعل «يُشَكِّلَانِ» من الأفعال الخمسة (لاتصاله بألف الاثنين)، والأفعال الخمسة تُجزم بـ حذف النون، وألف الاثنين ضمير متصل مبني على السكون في محل رفع فاعل.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q4', 'exam_primary_2025_arabic_nov', 4, 'جموع التكسير — صيغة منتهى الجموع', '"... يكون بعضها الآخر معايير عملية عامة للحكم على الممارسة." كلمة "معايير" في هذه الجملة:', false, '[{"id": "A", "text": "جمع مذكر سالم."}, {"id": "B", "text": "صيغة منتهى الجموع."}, {"id": "C", "text": "جمع مؤنث سالم."}, {"id": "D", "text": "جمع قلة."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '«مَعَايِير» جمع تكسير على وزن «مَفَاعِيل»، وقع بعد ألف تكسيره ثلاثة أحرف أوسطها ياء ساكنة، وهي إحدى صيغ منتهى الجموع (الممنوعة من الصرف).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q5', 'exam_primary_2025_arabic_nov', 5, 'الإملاء — التاء المربوطة والمبسوطة', 'الكلمة التي كُتبت بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "اللامبالات."}, {"id": "B", "text": "المباراة."}, {"id": "C", "text": "المعانات."}, {"id": "D", "text": "فتياة."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '«المباراة» اسم مفرد مؤنث (مصدر الفعل بارى) مسبوق بألف فتكتب تاؤه مربوطة. أما الباقي فخاطئ؛ الصواب: اللامبالاة والمعاناة (بالتاء المربوطة)، وفتيات (بالتاء المبسوطة لأنه جمع مؤنث سالم).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q6', 'exam_primary_2025_arabic_nov', 6, 'الفعل المجرد والمزيد', '"تكتسي القيم والتربية على فضائلها أهمية قصوى." "تكتسي" فعل:', false, '[{"id": "A", "text": "مزيد معتل ناقص."}, {"id": "B", "text": "مزيد معتل أجوف."}, {"id": "C", "text": "مجرد معتل ناقص."}, {"id": "D", "text": "مجرد معتل أجوف."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ماضي الفعل هو «اِكْتَسَى» على وزن «افتعل»، فهو مزيد بحرفين (همزة الوصل والتاء)، وأصله المجرد «كَسَا» (ك س و)، وبما أن لامه (حرفه الأخير) حرف علة فهو معتل ناقص.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q7', 'exam_primary_2025_arabic_nov', 7, 'النواسخ — خبر أن', '"غير أن الاضطلاع بها يسائل بالدرجة الأولى المنظومات التربوية." جملة "يسائل...":', false, '[{"id": "A", "text": "لا محل لها من الإعراب."}, {"id": "B", "text": "اسم أن."}, {"id": "C", "text": "خبر أن."}, {"id": "D", "text": "نعت."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], '«أنّ» ناسخ حرفي، و«الاضطلاعَ» اسمها منصوب، والجملة الفعلية «يسائلُ بالدرجة الأولى المنظومات التربوية» في محل رفع خبر أن.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q8', 'exam_primary_2025_arabic_nov', 8, 'مجالات النصوص', 'يندرج هذا النص في مجال:', false, '[{"id": "A", "text": "تحديات العالم المعاصر."}, {"id": "B", "text": "إبداعات وفنون."}, {"id": "C", "text": "حضارات كونية."}, {"id": "D", "text": "المواطنة والسلوك المدني."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يتناول النص القيم والتربية عليها (النزاهة، التسامح، الاستقامة، العيش المشترك، بناء المجتمع المواطن والديمقراطي، النهوض بالحقوق والحريات)، وهي مضامين مجال «المواطنة والسلوك المدني» (الوحدة الثانية في منهاج السادس ابتدائي).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'مجال النص حسب المنهاج الدراسي (المواطنة والسلوك المدني)؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q9', 'exam_primary_2025_arabic_nov', 9, 'الإعراب — ضبط أواخر الكلم', 'الجملة التي ضبطت بالشكل الصحيح في ما يأتي هي:', false, '[{"id": "A", "text": "تُشَكِّلُ الْقِيَمُ تَفْضِيلَاتٍ جَمَاعِيَّةً وَمِعْيَارِيَّةً."}, {"id": "B", "text": "تُشَكِّلُ الْقِيَمُ تَفْضِيلَاتٌ جَمَاعِيَّةٌ وَمِعْيَارِيَّةٌ."}, {"id": "C", "text": "تُشَكَّلُ الْقِيَمُ تَفْضِيلَاتٍ جَمَاعِيَّةٌ وَمِعْيَارِيَّةٌ."}, {"id": "D", "text": "تُشَكِّلُ الْقِيَمُ تَفْضِيلَاتٍ جَمَاعِيَّةٌ وَمِعْيَارِيَّةٌ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], '«تُشَكِّلُ» فعل مضارع مبني للمعلوم مرفوع، و«الْقِيَمُ» فاعل مرفوع، و«تَفْضِيلَاتٍ» مفعول به منصوب وعلامة نصبه الكسرة النائبة عن الفتحة لأنه جمع مؤنث سالم، و«جَمَاعِيَّةً» نعت تابع لمنعوته في النصب (وعلامة نصبه الفتحة)، و«مِعْيَارِيَّةً» معطوف منصوب بالفتحة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q10', 'exam_primary_2025_arabic_nov', 10, 'العدد — كتابة الأعداد بالحروف', '"قرأت 21 مقالة و32 كتابا." الجملة التي كُتب فيها العددان 21 و32 بالحروف بطريقة صحيحة هي:', false, '[{"id": "A", "text": "قرأت إحدى وعشرين مقالة واثنين وثلاثين كتابا."}, {"id": "B", "text": "قرأت إحدى وعشرون مقالة واثنتان وثلاثون كتابا."}, {"id": "C", "text": "قرأت أحد وعشرين مقالة واثنتين وثلاثين كتابا."}, {"id": "D", "text": "قرأت أحد وعشرون مقالة واثنان وثلاثون كتابا."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'العدد (21) واقع في محل نصب مفعول به؛ والمعدود «مقالة» مؤنث، والعدد (1) يطابق المعدود فيُقال «إحدى»، والعدد (20) معطوف على منصوب فينصب بالياء «وعشرين». والعدد (32) معطوف على منصوب؛ والمعدود «كتاباً» مذكر، والعدد (2) يطابق المعدود ويعرب إعراب المثنى فيُنصب بالياء «واثنين»، و(30) ينصب بالياء «وثلاثين».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q11', 'exam_primary_2025_arabic_nov', 11, 'التصغير', 'تصغير كلمة "قيمة" في ما يأتي هو:', false, '[{"id": "A", "text": "قُيَيْمَة."}, {"id": "B", "text": "قِيَيْمَة."}, {"id": "C", "text": "قُوَيْمَة."}, {"id": "D", "text": "قِوَيْمَة."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'أصل كلمة «قِيمة» هو «قِوْمَة» (من الجذر ق وَ م)، وقُلبت الواو ياءً لسكونها بعد كسرة؛ وعند التصغير يُردّ حرف العلة المنقلب إلى أصله (الواو)، فتصغّر على وزن «فُعَيْلَة»: قُوَيْمَة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q12', 'exam_primary_2025_arabic_nov', 12, 'فهم النص — الفكرة العامة', 'الفكرة العامة للنص هي:', false, '[{"id": "A", "text": "التربية على القيم رافعة أساسية لبناء اقتصاد البلاد وتطويره."}, {"id": "B", "text": "التربية على القيم رافعة أساسية لبناء مجتمع مواطن وديمقراطي."}, {"id": "C", "text": "التربية على القيم رافعة أساسية لتنمية الرأسمال المادي وتأهيله."}, {"id": "D", "text": "التربية على القيم رافعة أساسية لتنمية الرصيد المادي وتنويعه."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'يتمحور النص حول أهمية التربية على القيم ومرجعياتها وأدوارها في ترسيخ العيش المشترك وبناء المجتمع المواطن والديمقراطي (كما صرّح في فقرته الأخيرة)، ولم يتطرق إلى الاقتصاد أو الرأسمال المادي.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'فكرة عامة تحليلية؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q13', 'exam_primary_2025_arabic_nov', 13, 'الإملاء — همزة ابن', 'الجملة التي كتبت فيها كلمة "ابن" بطريقة صحيحة هي:', false, '[{"id": "A", "text": "حَصلَ بنُ أحمد على الجائزة الأولى في المواظبة والسلوك."}, {"id": "B", "text": "أَبنك هذا الذي تفوّق في مسابقة السلوك المدني؟"}, {"id": "C", "text": "مرَرْت بمحمدٍ بن مصطفى الذي شارك في نادي المواطنة."}, {"id": "D", "text": "زُرْتُ مدرسة طارق ابن زياد التي نظمت مسابقة السلوك المدني."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'تُحذف همزة الوصل في كلمة «ابن» لفظاً وكتابةً إذا سبقتها همزة الاستفهام (أَ + ابنك = أَبنك)[5][6].
أما A فخاطئة لأن «ابن» لم تقع بين علمين (فالصواب: حصل ابنُ أحمد)[5].
وأما C فخاطئة لأن من شروط حذف همزة «ابن» بين علمين ألا يُنوَّن العلم الأول؛ وبما أن «محمدٍ» جاء منوَّناً وجب إثبات الهمزة (أو حذف التنوين: بمحمدِ بن مصطفى)[5][7].
وأما D فخاطئة لأن «ابن» وقعت بين علمين ثانيهما أب للأول دون فاصل أو تنوين، فوجب حذف همزتها (طارق بن زياد)[8].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q14', 'exam_primary_2025_arabic_nov', 14, 'المصدر المؤول', '"أن ترتقوا بالتربية على القيم الإيجابية خير لكم." المصدر المؤول من "أن" والفعل "ترتقوا" في محل:', false, '[{"id": "A", "text": "نصب حال."}, {"id": "B", "text": "رفع خبر المبتدأ."}, {"id": "C", "text": "رفع مبتدأ."}, {"id": "D", "text": "نصب نعت."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'التقدير هو: «ارتقاؤُكم بالتربية على القيم الإيجابية خيرٌ لكم»، فالمصدر المؤول «أن ترتقوا» في محل رفع مبتدأ، و«خيرٌ» خبره مرفوع.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q15', 'exam_primary_2025_arabic_nov', 15, 'الفعل الصحيح والمعتل', 'الفعل الصحيح المهموز في ما يأتي هو:', false, '[{"id": "A", "text": "اِكْتَسَى."}, {"id": "B", "text": "أَدَّى."}, {"id": "C", "text": "اِضْطَلَعَ."}, {"id": "D", "text": "اِعْتَبَرَ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['E']::text[], 'الفعل الصحيح هو ما خلت حروفه الأصلية من حروف العلة:
اكتسى مجرده «كَسَا» (معتل ناقص، والهمزة زائدة للوصل).
اضطلع مجرده «ضَلَعَ»، واعتبر مجرده «عَبَرَ» (كلاهما صحيح سالم، والهمزة فيهما زائدة للوصل وليست أصلية).
أَدَّى مجرده «أَدَى / أَدَيَ» (مهموز الفاء لكنه معتل ناقص لوجود حرف العلة في آخره، فلا يُعدّ فعلاً صحيحاً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'لا يوجد فعل صحيح مهموز بين الخيارات: «أَدَّى» مهموز الفاء لكنه معتل ناقص، و«اكتسى» معتل ناقص، و«اضطلع» و«اعتبر» صحيحان سالمان (همزتهما همزة وصل زائدة)؛ فالجواب E؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q16', 'exam_primary_2025_arabic_nov', 16, 'الاسم الجامد والمشتق', 'الاسم الجامد في ما يأتي هو:', false, '[{"id": "A", "text": "متعلِّمة."}, {"id": "B", "text": "مُتَعَلِّم."}, {"id": "C", "text": "مُعَلِّم."}, {"id": "D", "text": "عِلْم."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], '«عِلْم» مصدر ثلاثي، والمصادر أسماء معانٍ جامدة (أصل المشتقات، لم تؤخذ من غيرها). أما «متعلِّمة، مُتَعَلِّم، مُعَلِّم» فكلها أسماء فاعلين مشتقة.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q17', 'exam_primary_2025_arabic_nov', 17, 'فهم النص — معاني المفردات', '"تشكل القيم تفضيلات جماعية ومعيارية." تعني كلمة "معيارية" بحسب سياقها في الجملة ما يأتي:', false, '[{"id": "A", "text": "إخضاعها لمقاييس محددة وقواعد غير مضبوطة تُقَيَّم بواسطتها."}, {"id": "B", "text": "إخضاعها لمقاييس محدّدة أو قواعد مضبوطة تُقَيَّم بواسطتها."}, {"id": "C", "text": "إخضاعها لمقاييس غير محددة وقواعد مضبوطة تُقَيَّم بواسطتها."}, {"id": "D", "text": "إخضاعها لمقاييس غير محددة وقواعد غير مضبوطة تُقَيَّم بواسطتها."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '«المعيارية» نسبة إلى المعيار، وهو المقياس المحدد والقاعدة المضبوطة التي يُحتكم إليها في الحكم والتقييم.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'معنى تحليلي لكلمة «معيارية» بحسب سياقها في الجملة؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q18', 'exam_primary_2025_arabic_nov', 18, 'الاسم الموصول', 'الجملة التي كتبت بطريقة صحيحة في ما يأتي هي:', false, '[{"id": "A", "text": "هذان الطفلان المجدان اللذان فازا بالجائزتين..."}, {"id": "B", "text": "هذان الطفلان المجدان الذان فازا بالجائزتين..."}, {"id": "C", "text": "هذان الطفلان المجدان اللذين فازا بالجائزتين..."}, {"id": "D", "text": "هذان الطفلان المجدان الذين فازا بالجائزتين..."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], '«اللذان» اسم موصول للمثنى المذكر يُكتب بلامين (عكس B)، وجاء هنا مرفوعاً بالألف لأنه نعت لمرفوع («الطفلان»)، بخلاف C (المنصوب/المجرور) وD (المخصص للجمع).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q19', 'exam_primary_2025_arabic_nov', 19, 'الميزان الصرفي', '"تعد التربية على القيم مسؤولية متقاسمة تضطلع بها المدرسة." الوزن الصرفي لكلمة "تضطلع" هو:', false, '[{"id": "A", "text": "تَفْعَلِلُ."}, {"id": "B", "text": "تَنْفَعِلُ."}, {"id": "C", "text": "تَفْتَعِلُ."}, {"id": "D", "text": "تَفْتَعْلِلُ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'أصل الفعل «تَضْتَلِعُ» من الماضي «اِضْتَلَعَ» على وزن «افتعل» (جذره ضَلَعَ)، ثم أُبدلت تاء الافتعال طاءً لمجاورتها الضاد، والقاعدة الصرفية أن الحرف المبدل يُوزن بأصله في الميزان الصرفي، فيكون الوزن تَفْتَعِلُ.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q20', 'exam_primary_2025_arabic_nov', 20, 'الأساليب — الإغراء', '"اَلصِّدْقَ اَلصِّدْقَ في الأقوال والأعمال..." الأسلوب الوارد في الجملة هو أسلوب:', false, '[{"id": "A", "text": "إغراء."}, {"id": "B", "text": "استغاثة."}, {"id": "C", "text": "تحذير."}, {"id": "D", "text": "مدح."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'الإغراء هو حث المخاطب على أمر محمود ليلزمه (التقدير: اِلْزَمِ الصدقَ)، وقد جاء هنا بصورة التكرار، فيُعرب «الصدقَ» الأول مفعولاً به منصوباً لفعل محذوف وجوباً، والثاني توكيداً لفظياً.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q21', 'exam_primary_2025_arabic_nov', 21, 'المصادر', '"فهي تُمَثِّل نسقاً مرجعياً ثلاثياً." مصدر الفعل "تُمَثِّل" هو:', false, '[{"id": "A", "text": "تَمَثُّل."}, {"id": "B", "text": "تَمْثيل."}, {"id": "C", "text": "تِمْثال."}, {"id": "D", "text": "إمتِثال."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الفعل الماضي هو «مَثَّلَ» (رباعي صحيح اللام على وزن فَعَّلَ)، ومصدره القياسي على وزن «تَفْعِيل»: تَمْثِيل (أما «تَمَثُّل» فمصدر الخماسي تَمَثَّلَ، و«امتثال» مصدر الخماسي امتثلَ).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q22', 'exam_primary_2025_arabic_nov', 22, 'إسناد الضمائر', '"تؤدي وظائف ذات صلة بالتربية والتثقيف والتأطير." عند إسناد الضمير "هُنَّ" للجملة تصبح كالآتي:', false, '[{"id": "A", "text": "تُؤَدِّينَ وظائف ذات صلة بالتربية والتثقيف والتأطير."}, {"id": "B", "text": "يُؤَدِّونَ وظائف ذات صلة بالتربية والتثقيف والتأطير."}, {"id": "C", "text": "يُؤَدِّينَ وظائف ذات صلة بالتربية والتثقيف والتأطير."}, {"id": "D", "text": "تُؤَدِّونَ وظائف ذات صلة بالتربية والتثقيف والتأطير."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عند إسناد الفعل المضارع الناقص اليائي «تُؤَدِّي» إلى ضمير الغائبات «هُنَّ»، يُبدأ بحرف المضارعة الياء (وليس التاء الخاصة بالمخاطبات)، وتُثبت الياء الأصلية ساكنة قبل نون النسوة: هُنَّ يُؤَدِّينَ.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q23', 'exam_primary_2025_arabic_nov', 23, 'إعراب الكلمات — المفعول به', '"... تفرض ذاتها بإلحاح على المجتمعات المعاصرة." تعرب كلمة "ذاتها" في هذه الجملة:', false, '[{"id": "A", "text": "توكيدا منصوبا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "B", "text": "مفعولا به منصوبا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "C", "text": "نعتا منصوبا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "D", "text": "فاعلا مرفوعا، وهو مضاف والهاء ضمير متصل مبني على السكون في محل جر مضاف إليه."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], 'الفعل «تفرضُ» متعدٍّ وفاعله ضمير مستتر تقديره «هي» (يعود على رسالة تربوية)، وكلمة «ذاتها» لا يمكن الاستغناء عنها لأنها وقع عليها الفعل، فهي ركن متمم للجملة تُعرب مفعولاً به منصوباً (وليست توكيداً معنوياً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q24', 'exam_primary_2025_arabic_nov', 24, 'أنواع الجمل — الجملة الاسمية', 'الجملة الاسمية في ما يأتي هي:', false, '[{"id": "A", "text": "نِعْمَ السلوك الحسن."}, {"id": "B", "text": "هَبْ مُتَعَلِّما مُخلصا."}, {"id": "C", "text": "بِئْسَ السلوك الغش في الامتحان."}, {"id": "D", "text": "كان سلوك الطفل الحسن دليلا على حسن تربيته."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'وفق المنهاج الدراسي المغربي (دروس التراكيب بالتعليم الابتدائي) والاتجاه النحوي الحديث، تُصنَّف الجملة المبدوءة بـ «كان وأخواتها» جملةً اسميةً منسوخةً بناسخ فعلي؛ لأن «كان» فعل ناقص لا يدل على حدث ولا يأخذ فاعلاً، بل يدخل على جملة اسمية أصلها مبتدأ وخبر («سلوكُ الطفلِ الحسنُ دليلٌ...») فيقيد الإسناد بالزمن فقط[9][10]. أما A (نِعْمَ) وB (هَبْ) وC (بِئْسَ) فهي جمل فعلية مبدوءة بأفعال جامدة[11].
(تنبيه نحوي: يرى بعض النحاة القدامى كابن هشام في «مغني اللبيب» أن جملة «كان» فعلية اعتباراً بصدرها الفعلي[12][13]، وعلى ذلك الرأي التراثي وحده يكون الجواب E، غير أن المعتمد مدرسياً في تصنيف النواسخ الفعلية هو كونها جملة اسمية منسوخة[9][14]).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'المعتمد مدرسياً (المنهاج الدراسي المغربي) أن جملة «كان وأخواتها» جملة اسمية منسوخة، فالجواب D؛ ويرى بعض النحاة القدامى (ابن هشام في مغني اللبيب) أنها فعلية فيكون الجواب E؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q25', 'exam_primary_2025_arabic_nov', 25, 'المشتقات — اسم الفاعل', '"حصل المُستفيد من التكوين على رتبة مُشرّفة." كلمة "المُستفيد" بحسب سياقها في الجملة هي:', false, '[{"id": "A", "text": "اسم مفعول."}, {"id": "B", "text": "اسم فاعل."}, {"id": "C", "text": "مصدر صريح."}, {"id": "D", "text": "مصدر ميمي."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '«المُستفيد» اسم فاعل مصوغ من الفعل السداسي «استفاد» (يستفيد ← مُستفيد، بإبدال حرف المضارعة ميماً مضمومة وكسر ما قبل آخره)، ويدل في السياق على من قام بالاستفادة/اتصف بها (أما اسم المفعول منه فهو «مُستفاد»).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q26', 'exam_primary_2025_arabic_nov', 26, 'الاسم المقصور والممدود', 'يقول الشاعر: "غَطَّى عَلَيْهِ بِالصَّفَا * أَهْلُ الْمَوَدَّةِ وَالصَّفَاءِ." يتضمن هذا البيت الشعري:', false, '[{"id": "A", "text": "اسما منقوصا واسما مقصورا."}, {"id": "B", "text": "اسما منقوصا واسما ممدودا."}, {"id": "C", "text": "اسما مقصورا واسما منقوصا."}, {"id": "D", "text": "اسما مقصورا واسما ممدودا."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['D']::text[], 'يتضمن البيت:
الصَّفَا (بمعنى الصخر/الحجارة): اسم مقصور (ينتهي بألف لازمة مفتوح ما قبلها).
الصَّفَاءِ (بمعنى النقاء): اسم ممدود (ينتهي بهمزة قبلها ألف زائدة).
(أما «غطّى» ففعل وليس اسماً).', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q27', 'exam_primary_2025_arabic_nov', 27, 'فهم النص — الأفكار الأساسية', '"تتقاسم مجموعة من المؤسسات ذات الصلة بمجال التربية والثقافة مسؤولية التربية على القيم." هذه فكرة أساسية للفقرة:', false, '[{"id": "A", "text": "الأولى."}, {"id": "B", "text": "الثانية."}, {"id": "C", "text": "الثالثة."}, {"id": "D", "text": "الرابعة."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], 'ورد هذا المعنى صراحة في الفقرة الأولى من النص: «لذلك، تعد التربية على القيم مسؤولية متقاسمة تضطلع بها المدرسة، إلى جانب الأسرة ووسائل الإعلام، وباقي المؤسسات التي تؤدي وظائف ذات صلة بالتربية والتثقيف والتأطير».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'تم التحقق من الفقرة الأولى في نص الامتحان مباشرة (صفحة النص).')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q28', 'exam_primary_2025_arabic_nov', 28, 'النسبة', '"... وبعضها يمثل مبادئ فعلية للسلوك." النسبة الصحيحة إلى كلمة "مبادئ" في ما يأتي هي:', false, '[{"id": "A", "text": "مَبادِئِيّ."}, {"id": "B", "text": "مَبادِوِيّ."}, {"id": "C", "text": "مَبْدَئِيّ."}, {"id": "D", "text": "مَبْدَوِيّ."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['C']::text[], 'عند النسبة إلى جمع التكسير (الذي له مفرد مستعمل)، يُردّ الجمع إلى مفرده أولاً ثم يُنسب إليه؛ فمفرد «مَبَادِئ» هو «مَبْدَأ»، والنسبة إليه بإضافة ياء النسبة المشددة وكسر ما قبلها هي: مَبْدَئِيّ.', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q29', 'exam_primary_2025_arabic_nov', 29, 'الأضداد', '"يعد الارتقاء بالتربية على القيم رسالة تربوية..." ضد كلمة "الارتقاء" في هذه الجملة هو:', false, '[{"id": "A", "text": "الانحدار."}, {"id": "B", "text": "التخلي عنها."}, {"id": "C", "text": "التنازل عنها."}, {"id": "D", "text": "الانخفاض."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['A']::text[], '«الارتقاء» يعني الصعود والسموّ والتدرّج نحو الأعلى، وضدّه الدقيق في اللغة والسياق هو الانحدار (الهبوط والتردّي والتراجع)؛ في حين أن «الانخفاض» ضد «الارتفاع».', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, 'ضد تحليلي: «الانحدار» ضد «الارتقاء» في السياق، أما «الانخفاض» فضد «الارتفاع»؛ لا يوجد مفتاح رسمي.')
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان اللغة العربية — مادة التخصص (دورة نونبر 2025) — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2025_arabic_nov_q30', 'exam_primary_2025_arabic_nov', 30, 'الأساليب — المدح', '"حَبَّذَا الأَخْلاقُ الحَميدَةُ." الأسلوب الوارد في الجملة هو أسلوب:', false, '[{"id": "A", "text": "اختصاص."}, {"id": "B", "text": "مدح."}, {"id": "C", "text": "إغراء."}, {"id": "D", "text": "تعجب."}, {"id": "E", "text": "جميع الخيارات السابقة خاطئة."}]'::jsonb, ARRAY['B']::text[], '«حَبَّذَا» أداة من أدوات المدح (مكوّنة من الفعل الماضي الجامد «حبَّ» واسم الإشارة «ذا» الفاعل)، و«الأخلاقُ» هو المخصوص بالمدح (مبتدأ مؤخر مرفوع)[15].', 'qcm', 'third_party', 'https://aistudio.google.com/prompts/13FlV8jaSACWQKhCVboMSC_-6UkVIzb1R', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
