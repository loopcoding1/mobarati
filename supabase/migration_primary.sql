-- ====================================================================
-- إتقان / مباراتي | ترحيل رقم 2 — تخصص التعليم الابتدائي
-- ====================================================================
-- يُشغَّل بعد full_setup.sql (الذي أنشأ الجداول + RLS + بيانات الاقتصاد والإدارة).
-- يوسّع المخطط ليقبل امتحانات التعليم الابتدائي (كل مادة امتحان مستقل)،
-- ويضيف تخصص التعليم الابتدائي، مع الحفاظ على نفس حماية RLS للقراءة فقط.
-- لا يمس بيانات الاقتصاد والإدارة الموجودة.
-- ====================================================================

-- 1. توسيع قيم subject_type لتشمل مواد التعليم الابتدائي
--    (القيد الأصلي كان يقبل فقط 'mgmt' و 'tasks' الخاصين بالاقتصاد والإدارة)
ALTER TABLE public.exams DROP CONSTRAINT IF EXISTS exams_subject_type_check;
ALTER TABLE public.exams ADD CONSTRAINT exams_subject_type_check CHECK (
    subject_type IN (
        'mgmt', 'tasks',              -- مختصو الاقتصاد والإدارة (موجود)
        'arabic', 'french', 'maths', 'sciences',   -- مواد التخصص: ابتدائي
        'didactics_ar', 'didactics_fr',
        'didactics_maths', 'didactics_sciences',
        'sciences_edu'                -- علوم التربية
    )
);

-- 2. توسيع جدول الأسئلة: نوع السؤال + تتبع المصدر والتحقق
--    qcm: اختيار من متعدد (A-D أو A-E) | matching: مطابقة (أ←...) | open: سؤال مفتوح
ALTER TABLE public.questions
    ADD COLUMN IF NOT EXISTS question_type VARCHAR(20) NOT NULL DEFAULT 'qcm'
        CHECK (question_type IN ('qcm', 'matching', 'open'));
--    مصدر الحل (رابط مناصب / mesconcours / التصحيح الرسمي) ونوعه
ALTER TABLE public.questions
    ADD COLUMN IF NOT EXISTS source_type VARCHAR(20) DEFAULT 'third_party'
        CHECK (source_type IN ('official', 'third_party', 'mixed'));
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS source_url TEXT;
--    هل تم التحقق من السؤال والاختيارات والجواب مقابل ملف PDF؟ (شرط 100%)
ALTER TABLE public.questions
    ADD COLUMN IF NOT EXISTS verified BOOLEAN NOT NULL DEFAULT false;
--    ملاحظات التحقق: أسئلة معلّمة (للتحقق / إجابة مرجّحة / تعارض مصادر...)
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS verification_note TEXT;

--    الأسئلة المفتوحة بلا خيارات: explanation يحمل عناصر الإجابة، و options فارغة
--    (لا قيد يمنع ذلك؛ فقط نوثق القاعدة هنا)

-- 3. منع تكرار نفس رقم السؤال داخل نفس الامتحان
CREATE UNIQUE INDEX IF NOT EXISTS idx_questions_exam_number_unique
    ON public.questions (exam_id, number);

-- 4. فهرس لنوع السؤال
CREATE INDEX IF NOT EXISTS idx_questions_type ON public.questions (question_type);

-- 5. تخصص التعليم الابتدائي
INSERT INTO public.specialties (id, name, subtitle, description, icon, color, badge, active)
VALUES (
    'specialty_primary',
    'التعليم الابتدائي',
    'مباراة توظيف أساتذة التعليم الابتدائي — التخصص المزدوج',
    'اللغة العربية، اللغة الفرنسية، الرياضيات، العلوم، ديداكتيك المواد، وعلوم التربية — امتحانات رسمية مع التصحيح والتعليل.',
    'GraduationCap',
    '#1C1D18',
    'متاح بالكامل',
    true
)
ON CONFLICT (id) DO NOTHING;

-- 6. تحديث عدّادات التخصصات (اختياري — تُحسب من الجداول عند العرض)
--    لا شيء هنا؛ تُحفظ examsCount/questionsCount في الواجهة فقط.

-- ====================================================================
-- تحقق سريع بعد التشغيل (شغّلها منفصلة في SQL Editor):
--   SELECT * FROM public.specialties;
--   SELECT subject_type, COUNT(*) FROM public.exams GROUP BY subject_type;
--   SELECT question_type, COUNT(*) FROM public.questions GROUP BY question_type;
-- ====================================================================
