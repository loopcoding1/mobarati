-- Fill Q17–Q20 of exam_primary_2021_arabic_dec (Dec 2021 Arabic, primary)
-- Page 6/8 was missing from the workspace scan; recovered 2026-11-26 from the
-- complete 8-photo carousel published by «منصة الأمازيغية التعليمية» on Facebook
-- (slide 6 = exam page 6/8; slides 7–8 verified as pages 7–8).
-- https://www.facebook.com/almmudtmazight/posts/pfbid02KuTVJSkMKPbjAhkeCM6drYAAedzm7wB9yEyrpz9L1h3Bpa2iSgAkBXLQoMATbBdal
-- All four answers cross-checked against the official key (2021/التصحيح.pdf) — exact match.
-- Q20 caution: the scan is 978px wide; fine vocalization marks were read at maximum
-- zoom. The hamza seats in the four options are clear and the key confirms C.

UPDATE public.questions
SET text = 'أصل بسهم بين نوع النداء، والجملة التي تتضمنه في ما يأتي: (2ن)، (تمنح نصف نقطة لكل جواب صحيح)
أ. منادى نكرة مقصودة
ب. منادى شبيه بالمضاف
ج. منادى مضاف
د. منادى نكرة غير مقصودة',
    options = '[
      {"id": "1", "text": "يا زائرةً، حافظي على نظافة الحديقة"},
      {"id": "2", "text": "يا زائرَ الحديقةِ، حافظ على نظافتها"},
      {"id": "3", "text": "أيا زائرةً حديقةً، حافظي على نظافتها"},
      {"id": "4", "text": "أيا هندُ، حافظي على نظافة الحديقة"},
      {"id": "5", "text": "أيا زائرةُ، حافظي على نظافة الحديقة"}
    ]'::jsonb,
    explanation = 'أ (منادى نكرة مقصودة) ← 5 «أيا زائرةُ»: المنادى مبني على الضم لأنه نكرة مقصودة. ب (منادى شبيه بالمضاف) ← 3 «أيا زائرةً حديقةً»: المنادى منصوب ومتبوع بما يتمم معناه. ج (منادى مضاف) ← 2 «يا زائرَ الحديقةِ»: المنادى منصوب مضاف إلى «الحديقة». د (منادى نكرة غير مقصودة) ← 1 «يا زائرةً»: المنادى منصوب لأنه نكرة غير مقصودة. الجملة 4 «أيا هندُ» علم مفرد مبني على الضم، فتبقى بلا مقابل. الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf).',
    source_type = 'mixed',
    source_url = 'https://www.facebook.com/almmudtmazight/posts/pfbid02KuTVJSkMKPbjAhkeCM6drYAAedzm7wB9yEyrpz9L1h3Bpa2iSgAkBXLQoMATbBdal',
    verified = true,
    verification_note = 'الصيغة منسوخة من الصفحة 6/8 كما نشرتها صفحة «منصة الأمازيغية التعليمية» (الشريحة 6 من 8 صور)؛ الأجوبة مطابقة لمفتاح التصحيح الرسمي.'
WHERE exam_id = 'exam_primary_2021_arabic_dec' AND number = 17;

UPDATE public.questions
SET text = 'أضع علامة (X) في الخانة المقابلة للجملة التي كتب فيها العددان (12) و(8) بطريقة صحيحة: (1ن)',
    options = '[
      {"id": "A", "text": "في الحديقة اثنا عشر شجرة وثمان كراسٍ"},
      {"id": "B", "text": "في الحديقة اثنا عشرة شجرة وثمانية كراسٍ"},
      {"id": "C", "text": "في الحديقة اثنتا عشر شجرة وثماني كراسٍ"},
      {"id": "D", "text": "في الحديقة اثنتا عشرة شجرة وثمانية كراسٍ"}
    ]'::jsonb,
    explanation = 'العدد (12) يطابق المعدود في التذكير والتأنيث في جزأيه: «شجرة» مؤنثة فيقال «اثنتا عشرة شجرة». والعدد (8) يخالف المعدود: «كراسٍ» مذكر فيقال «ثمانية كراسٍ». فالجملة الصحيحة هي (د). الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf).',
    source_type = 'mixed',
    source_url = 'https://www.facebook.com/almmudtmazight/posts/pfbid02KuTVJSkMKPbjAhkeCM6drYAAedzm7wB9yEyrpz9L1h3Bpa2iSgAkBXLQoMATbBdal',
    verified = true,
    verification_note = 'الصيغة منسوخة من الصفحة 6/8 كما نشرتها صفحة «منصة الأمازيغية التعليمية» (الشريحة 6 من 8 صور)؛ الجواب مطابق لمفتاح التصحيح الرسمي.'
WHERE exam_id = 'exam_primary_2021_arabic_dec' AND number = 18;

UPDATE public.questions
SET text = 'أضع علامة (X) في الخانة المقابلة للجواب الصحيح: (1ن) — «استبق حارس الغابة الأحداث بتنبيه الزوار إلى خطورة إضرام النار»؛ وزن الفعل في الجملة هو:',
    options = '[
      {"id": "A", "text": "استفعل"},
      {"id": "B", "text": "افتعل"},
      {"id": "C", "text": "انفعل"},
      {"id": "D", "text": "تفعّل"}
    ]'::jsonb,
    explanation = 'الفعل «استبق» من الجذر (س ب ق) على وزن «افتعل» (ا + س + ت + ب + ق)؛ فالسين حرف أصلي من الجذر لا زائدة، فليس على وزن «استفعل». الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf).',
    source_type = 'mixed',
    source_url = 'https://www.facebook.com/almmudtmazight/posts/pfbid02KuTVJSkMKPbjAhkeCM6drYAAedzm7wB9yEyrpz9L1h3Bpa2iSgAkBXLQoMATbBdal',
    verified = true,
    verification_note = 'الصيغة منسوخة من الصفحة 6/8 كما نشرتها صفحة «منصة الأمازيغية التعليمية» (الشريحة 6 من 8 صور)؛ الجواب مطابق لمفتاح التصحيح الرسمي.'
WHERE exam_id = 'exam_primary_2021_arabic_dec' AND number = 19;

UPDATE public.questions
SET text = 'أضع علامة (X) في الخانة المقابلة للكلمة السليمة إملائيا في ما يأتي: (1ن)',
    options = '[
      {"id": "A", "text": "تَذَأْلِبٍ"},
      {"id": "B", "text": "تَذَإْلِبٍ"},
      {"id": "C", "text": "تَذؤُلِبٍ"},
      {"id": "D", "text": "تَذأُلِبٍ"}
    ]'::jsonb,
    explanation = 'الهمزة المتوسطة في «تَذَؤْلِبٍ» مضمومة بعد فتح، والضمة أقوى من الفتحة، فتُكتب الهمزة على الواو (ج). الخيارات الأربعة الكلمة نفسها ولا تختلف إلا في موضع الهمزة. الجواب من مفتاح التصحيح الرسمي (2021/التصحيح.pdf).',
    source_type = 'mixed',
    source_url = 'https://www.facebook.com/almmudtmazight/posts/pfbid02KuTVJSkMKPbjAhkeCM6drYAAedzm7wB9yEyrpz9L1h3Bpa2iSgAkBXLQoMATbBdal',
    verified = true,
    verification_note = 'الصيغة منسوخة من الصفحة 6/8 كما نشرتها صفحة «منصة الأمازيغية التعليمية» (الشريحة 6 من 8 صور)؛ الجواب مطابق لمفتاح التصحيح الرسمي. تنبيه: السكانير 978px فالتشكيل الدقيق قُرئ بأقصى تكبير، لكن مواضع الهمزة واضحة والمفتاح يؤكد (ج).'
WHERE exam_id = 'exam_primary_2021_arabic_dec' AND number = 20;
