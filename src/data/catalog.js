// طبقة تحميل البيانات: Supabase أولاً، والبيانات المحلية بديلاً عند الفشل.
// الشكل المُرجع مطابق تماماً لشكل src/data/examsData.js حتى لا تتغير المكونات.
import { SPECIALTIES as LOCAL_SPECIALTIES, EXAMS as LOCAL_EXAMS } from './examsData';
import { fetchCatalog } from '../lib/supabase';

export async function loadCatalog() {
  try {
    const remote = await fetchCatalog();
    if (!remote.exams || remote.exams.length === 0) {
      throw new Error('Supabase أعاد كتالوجاً فارغاً');
    }
    return { specialties: remote.specialties, exams: remote.exams, source: 'supabase' };
  } catch (err) {
    console.warn('[catalog] فشل جلب البيانات من Supabase، استعمال البيانات المحلية:', err);
    return {
      specialties: LOCAL_SPECIALTIES,
      exams: LOCAL_EXAMS,
      source: 'local',
      error: err,
    };
  }
}

// توليد امتحان تجريبي شامل بأسئلة عشوائية من الامتحانات المحملة
// (نفس منطق generateRandomExam في examsData.js لكن على أي قائمة امتحانات).
export function generateRandomExam(exams, questionCount = 60) {
  const allQs = [];
  exams.forEach((exam) => {
    exam.questions.forEach((q) => {
      allQs.push({
        ...q,
        originExamTitle: exam.title,
        originSession: exam.session,
        originSubject: exam.subjectTitle,
      });
    });
  });

  const shuffled = [...allQs];
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }

  const selected = shuffled
    .slice(0, Math.min(questionCount, shuffled.length))
    .map((q, idx) => ({
      ...q,
      id: `random_q_${idx + 1}`,
      number: idx + 1,
    }));

  return {
    id: 'exam_random_simulation',
    specialtyId: 'specialty_econ_admin',
    year: 'شامل',
    subjectType: 'random',
    subjectTitle: 'امتحان شامل بأسئلة عشوائية',
    title: 'امتحان تجريبي شامل بأسئلة عشوائية من كافة الامتحانات (2022 - 2024)',
    session: 'محاكاة شاملة لكافة الدورات',
    durationMinutes: 180,
    questionsCount: selected.length,
    questions: selected,
  };
}
