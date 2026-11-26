-- ====================================================================
-- مباراتي — تصحيحات ديداكتيك 2023 (اللغة العربية): Q2 وQ3 وQ23
-- ====================================================================
-- حُسمت الخلافات الثلاثة (manasseb مقابل wadifa) بالتحقق من المنهاج الرسمي
-- «مستجدات المنهاج الدراسي للتعليم الابتدائي 2020–2021» (مديرية المناهج،
-- يوليوز 2020)، عبر نسخة Wayback Machine للملف الرسمي:
--   https://web.archive.org/web/2021/https://www.men.gov.ma/Ar/Documents/NCurrPrim29072020.pdf
-- النتيجة: wadifa كان محقاً في الأسئلة الثلاثة، وmanasseb مخطئ فيها كلها.
-- أُجري التصحيح 2026-11-26. الأجوبة والتعليلات الجديدة من المنهاج نفسه.
-- ====================================================================

UPDATE public.questions
SET correct_answers = ARRAY['C']::text[],
    explanation = 'حسب المنهاج الدراسي للتعليم الابتدائي (مستجدات 2020–2021)، ص. 62، جدول مكونات اللغة العربية بالسنة الثانية: مكون الكتابة = الخط، الإملاء، تمارين كتابية / التعبير الكتابي. أما «التطبيقات الكتابية» فتظهر ابتداء من السنة الثالثة، لا الثانية.',
    source_type = 'mixed',
    source_url = 'https://web.archive.org/web/2021/https://www.men.gov.ma/Ar/Documents/NCurrPrim29072020.pdf',
    verified = true,
    verification_note = 'صُحح 2026-11-26: كان D (manasseb)؛ الصواب C حسب جدول مكونات السنة الثانية في المنهاج الرسمي ص. 62. «تمارين التطبيقات الكتابية» الواردة ص. 77 تسمية نشاط، لا عنصراً من عناصر المكون.'
WHERE exam_id = 'exam_primary_2023_didactics_ar_jan' AND number = 2;

UPDATE public.questions
SET correct_answers = ARRAY['A']::text[],
    explanation = 'حسب المنهاج، ص. 64 (§2.1.3.1.2): أهداف الاستماع والتحدث في السنتين الأولى والثانية تشمل فهم المعاني الفرعية والضمنية للنصوص الحكائية المسموعة. أما «الصريحة والضمنية» فهي هدف مكون التواصل الشفهي (السنوات 5–6)، لا مكون الاستماع والتحدث.',
    source_type = 'mixed',
    source_url = 'https://web.archive.org/web/2021/https://www.men.gov.ma/Ar/Documents/NCurrPrim29072020.pdf',
    verified = true,
    verification_note = 'صُحح 2026-11-26: كان D (manasseb)؛ الصواب A حسب أهداف الاستماع والتحدث في المنهاج الرسمي ص. 64. D هدف صحيح لمكون آخر (التواصل الشفهي، سنوات 5–6) وليس لهذا المكون.'
WHERE exam_id = 'exam_primary_2023_didactics_ar_jan' AND number = 3;

UPDATE public.questions
SET correct_answers = ARRAY['D']::text[],
    explanation = 'حسب المنهاج، ص. 123 (§1.3.3.3.2): تُقدَّم الظاهرة الإملائية في السنة السادسة في حصتين خلال الأسبوعين الأول والثاني، وتُخصَّص حصتا الأسبوعين الثالث والرابع لتصفية الصعوبات الإملائية التي يتم رصدها في إنتاجات المتعلمين فقط.',
    source_type = 'mixed',
    source_url = 'https://web.archive.org/web/2021/https://www.men.gov.ma/Ar/Documents/NCurrPrim29072020.pdf',
    verified = true,
    verification_note = 'صُحح 2026-11-26: كان B (manasseb)؛ الصواب D حسب المنهاج الرسمي ص. 123. الأسبوعان الثالث والرابع لتصفية الصعوبات فقط، بلا إنجاز تطبيقات.'
WHERE exam_id = 'exam_primary_2023_didactics_ar_jan' AND number = 23;
