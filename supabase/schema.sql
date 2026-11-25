-- ====================================================================
-- مباراتي | قاعدة بيانات منصة التحضير لمباريات التعليم بالمغرب (Supabase SQL)
-- ====================================================================
-- مخصصة لجلب البيانات للقراءة فقط (Read-Only) مع تأمين كامل عبر Row Level Security (RLS)
-- تمنع أي عمليات إضافة أو تعديل أو حذف لغير المشرفين (No write access for anon/public)
-- ====================================================================

-- 1. جدول التخصصات والمسالك (Specialties)
CREATE TABLE IF NOT EXISTS public.specialties (
    id VARCHAR(100) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    subtitle VARCHAR(255),
    description TEXT,
    icon VARCHAR(50) DEFAULT 'Briefcase',
    color VARCHAR(50) DEFAULT '#1C1D18',
    badge VARCHAR(50) DEFAULT 'متاح بالكامل',
    active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now())
);

-- 2. جدول الامتحانات والدورات (Exams)
CREATE TABLE IF NOT EXISTS public.exams (
    id VARCHAR(100) PRIMARY KEY,
    specialty_id VARCHAR(100) NOT NULL REFERENCES public.specialties(id) ON DELETE CASCADE,
    year INTEGER NOT NULL,
    subject_type VARCHAR(50) NOT NULL CHECK (subject_type IN ('mgmt', 'tasks')),
    subject_title VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    session VARCHAR(100) NOT NULL,
    duration_minutes INTEGER NOT NULL DEFAULT 180,
    questions_count INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now())
);

-- 3. جدول الأسئلة والخيارات والتعليلات (Questions)
CREATE TABLE IF NOT EXISTS public.questions (
    id VARCHAR(100) PRIMARY KEY,
    exam_id VARCHAR(100) NOT NULL REFERENCES public.exams(id) ON DELETE CASCADE,
    number INTEGER NOT NULL,
    category VARCHAR(255),
    text TEXT NOT NULL,
    is_multiple BOOLEAN NOT NULL DEFAULT false,
    options JSONB NOT NULL,
    correct_answers TEXT[] NOT NULL,
    explanation TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now())
);

-- ====================================================================
-- الفهارس لتحسين سرعة وأداء الاستعلامات (Indexes)
-- ====================================================================
CREATE INDEX IF NOT EXISTS idx_exams_specialty_id ON public.exams(specialty_id);
CREATE INDEX IF NOT EXISTS idx_exams_year ON public.exams(year);
CREATE INDEX IF NOT EXISTS idx_exams_subject_type ON public.exams(subject_type);
CREATE INDEX IF NOT EXISTS idx_questions_exam_id ON public.questions(exam_id);
CREATE INDEX IF NOT EXISTS idx_questions_number ON public.questions(exam_id, number);
CREATE INDEX IF NOT EXISTS idx_questions_category ON public.questions(category);

-- ====================================================================
-- تأمين قاعدة البيانات عبر سياسات الأمان (Row Level Security - RLS)
-- القراءة متاحة للجميع (Public Read-Only) والمنع التام للتعديل والحذف
-- ====================================================================
ALTER TABLE public.specialties ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exams ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;

-- حذف أي سياسات سابقة لتفادي التكرار
DROP POLICY IF EXISTS "Public read-only access for specialties" ON public.specialties;
DROP POLICY IF EXISTS "Public read-only access for exams" ON public.exams;
DROP POLICY IF EXISTS "Public read-only access for questions" ON public.questions;

-- سياسات القراءة العامة (SELECT فقط) لزوار ومستخدمي المنصة
CREATE POLICY "Public read-only access for specialties"
    ON public.specialties FOR SELECT
    TO anon, authenticated
    USING (true);

CREATE POLICY "Public read-only access for exams"
    ON public.exams FOR SELECT
    TO anon, authenticated
    USING (true);

CREATE POLICY "Public read-only access for questions"
    ON public.questions FOR SELECT
    TO anon, authenticated
    USING (true);

-- ملاحظة: لا توجد سياسات INSERT أو UPDATE أو DELETE لـ anon أو authenticated
-- مما يضمن أماناً تاماً (حماية 100% من التعديل أو الحذف من واجهة الموقع)

-- ====================================================================
-- دوال قاعدة البيانات المساعدة (RPC Functions)
-- ====================================================================

-- دالة سحب اختبار تجريبي شامل بأسئلة عشوائية من جميع الدورات والمواضيع
CREATE OR REPLACE FUNCTION public.get_random_exam_questions(p_count INT DEFAULT 60)
RETURNS TABLE (
    id VARCHAR(100),
    exam_id VARCHAR(100),
    number INT,
    category VARCHAR(255),
    text TEXT,
    is_multiple BOOLEAN,
    options JSONB,
    correct_answers TEXT[],
    explanation TEXT,
    origin_exam_title VARCHAR(255),
    origin_session VARCHAR(100),
    origin_year INT,
    origin_subject_title VARCHAR(255)
)
LANGUAGE sql
SECURITY DEFINER
STABLE
AS $$
    SELECT 
        q.id,
        q.exam_id,
        (ROW_NUMBER() OVER ())::INT AS number,
        q.category,
        q.text,
        q.is_multiple,
        q.options,
        q.correct_answers,
        q.explanation,
        e.title AS origin_exam_title,
        e.session AS origin_session,
        e.year AS origin_year,
        e.subject_title AS origin_subject_title
    FROM public.questions q
    JOIN public.exams e ON q.exam_id = e.id
    ORDER BY random()
    LIMIT p_count;
$$;

-- منح إذن استدعاء الدالة للمستخدمين والزوار
GRANT EXECUTE ON FUNCTION public.get_random_exam_questions(INT) TO anon, authenticated;
