// عميل Supabase لمنصة «إتقان» — قراءة فقط (RLS يمنع الكتابة للزوار).
// يستخدم publishable key الآمن للواجهة فقط. لا تستعمل service_role هنا أبداً.
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const isSupabaseConfigured = Boolean(supabaseUrl && supabaseAnonKey);

export const supabase = isSupabaseConfigured
  ? createClient(supabaseUrl, supabaseAnonKey)
  : null;

// تحويل صفوف قاعدة البيانات إلى نفس شكل البيانات الذي تتوقعه الواجهة
// (نفس شكل src/data/examsData.js تماماً حتى لا تتغير المكونات).
function mapQuestion(row) {
  return {
    id: row.id,
    number: row.number,
    category: row.category,
    text: row.text,
    isMultiple: row.is_multiple,
    options: row.options,
    correctAnswers: row.correct_answers,
    explanation: row.explanation,
  };
}

function mapExam(row, questions) {
  return {
    id: row.id,
    specialtyId: row.specialty_id,
    year: row.year,
    subjectType: row.subject_type,
    subjectTitle: row.subject_title,
    title: row.title,
    session: row.session,
    durationMinutes: row.duration_minutes,
    questionsCount: questions.length,
    pdfUrl: row.pdf_url || null,
    questions,
  };
}

function mapSpecialty(row, exams) {
  const specExams = exams.filter((e) => e.specialtyId === row.id);
  return {
    id: row.id,
    name: row.name,
    subtitle: row.subtitle,
    description: row.description,
    icon: row.icon,
    color: row.color,
    badge: row.badge,
    active: row.active,
    examsCount: specExams.length,
    questionsCount: specExams.reduce((sum, e) => sum + e.questions.length, 0),
  };
}

// جلب كل الكتالوج (التخصصات + الامتحانات + الأسئلة) من Supabase.
// يرمي خطأ عند أي فشل حتى يتدخل البديل المحلي في catalog.js.
export async function fetchCatalog() {
  if (!supabase) {
    throw new Error('Supabase غير مهيأ: VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY مفقودان');
  }

  const { data: specialtiesRows, error: specialtiesError } = await supabase
    .from('specialties')
    .select('*')
    .order('created_at', { ascending: true });
  if (specialtiesError) throw specialtiesError;

  const { data: examsRows, error: examsError } = await supabase
    .from('exams')
    .select('*')
    .order('year', { ascending: false });
  if (examsError) throw examsError;

  // الأسئلة: جلب على دفعات (PostgREST يحد الصفوف افتراضياً)
  const allQuestions = [];
  const pageSize = 1000;
  let offset = 0;
  for (;;) {
    const { data, error } = await supabase
      .from('questions')
      .select('*')
      .order('exam_id', { ascending: true })
      .order('number', { ascending: true })
      .range(offset, offset + pageSize - 1);
    if (error) throw error;
    allQuestions.push(...(data || []));
    if (!data || data.length < pageSize) break;
    offset += pageSize;
  }

  const questionsByExam = new Map();
  for (const row of allQuestions) {
    if (!questionsByExam.has(row.exam_id)) questionsByExam.set(row.exam_id, []);
    questionsByExam.get(row.exam_id).push(mapQuestion(row));
  }

  const exams = examsRows.map((row) =>
    mapExam(row, questionsByExam.get(row.id) || []),
  );
  const specialties = specialtiesRows.map((row) => mapSpecialty(row, exams));

  return { specialties, exams };
}

// سحب أسئلة عشوائية عبر دالة قاعدة البيانات get_random_exam_questions
// (متاحة للاستعمال المستقبلي؛ الامتحان العشوائي الحالي يولّد من البيانات المحملة).
export async function fetchRandomQuestions(count = 60) {
  if (!supabase) {
    throw new Error('Supabase غير مهيأ');
  }
  const { data, error } = await supabase.rpc('get_random_exam_questions', {
    p_count: count,
  });
  if (error) throw error;
  return (data || []).map((row) => ({
    ...mapQuestion(row),
    originExamTitle: row.origin_exam_title,
    originSession: row.origin_session,
    originSubject: row.origin_subject_title,
  }));
}
