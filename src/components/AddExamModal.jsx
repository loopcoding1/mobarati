import React, { useState } from 'react';
import { 
  PlusCircle, 
  Download, 
  Upload, 
  FileCode, 
  CheckCircle2, 
  AlertCircle,
  HelpCircle
} from 'lucide-react';
import { SPECIALTIES } from '../data/examsData';

export default function AddExamModal({ isOpen, onClose, onAddExam, initialSpecialtyId }) {
  const [examTitle, setExamTitle] = useState('');
  const [session, setSession] = useState('دورة 2025');
  const [specialtyId, setSpecialtyId] = useState(initialSpecialtyId || 'specialty_econ_admin');
  const [duration, setDuration] = useState(180);
  const [jsonText, setJsonText] = useState('');
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(false);

  if (!isOpen) return null;

  const sampleTemplate = {
    title: "امتحان تجريبي جديد لمباراة التعليم",
    session: "دورة 2025",
    specialtyId: "specialty_econ_admin",
    durationMinutes: 180,
    questions: [
      {
        id: "q1",
        number: 1,
        category: "النصوص التشريعية والتنظيمية",
        text: "نص السؤال هنا...",
        isMultiple: false,
        options: [
          { id: "A", text: "الخيار الأول" },
          { id: "B", text: "الخيار الثاني" },
          { id: "C", text: "الخيار الثالث" },
          { id: "D", text: "الخيار الرابع" },
          { id: "E", text: "جميع الاختيارات المقترحة خاطئة" }
        ],
        correctAnswers: ["B"],
        explanation: "التعليل والسند القانوني أو المحاسبي للجواب الصحيح..."
      }
    ]
  };

  const handleDownloadTemplate = () => {
    const dataStr = "data:text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(sampleTemplate, null, 2));
    const downloadAnchor = document.createElement('a');
    downloadAnchor.setAttribute("href", dataStr);
    downloadAnchor.setAttribute("download", "sample_exam_template.json");
    document.body.appendChild(downloadAnchor);
    downloadAnchor.click();
    downloadAnchor.remove();
  };

  const handleFileUpload = (e) => {
    const file = e.target.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (event) => {
      setJsonText(event.target.result);
      setError(null);
    };
    reader.readAsText(file);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setError(null);

    try {
      if (!jsonText.trim()) {
        setError('يرجى لصق بيانات الأسئلة بتنسيق JSON أو رفع ملف JSON');
        return;
      }

      const parsed = JSON.parse(jsonText);
      let questions = [];

      if (Array.isArray(parsed)) {
        questions = parsed;
      } else if (parsed.questions && Array.isArray(parsed.questions)) {
        questions = parsed.questions;
      } else {
        throw new Error('يجب أن يحتوي ملف JSON على مصفوفة أسئلة (questions array)');
      }

      if (questions.length === 0) {
        throw new Error('مصفوفة الأسئلة فارغة');
      }

      const newExam = {
        id: `exam_${Date.now()}`,
        specialtyId: parsed.specialtyId || specialtyId,
        title: parsed.title || examTitle || 'امتحان مضاف',
        session: parsed.session || session,
        targetAudience: SPECIALTIES.find(s => s.id === specialtyId)?.name || 'مباراة التعليم',
        durationMinutes: Number(parsed.durationMinutes || duration || 180),
        totalQuestions: questions.length,
        questions: questions
      };

      onAddExam(newExam);
      setSuccess(true);
      setTimeout(() => {
        setSuccess(false);
        onClose();
      }, 1200);

    } catch (err) {
      setError(`خطأ في معالجة JSON: ${err.message}`);
    }
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/40 backdrop-blur-xs flex items-center justify-center p-4 select-none">
      <div className="bg-white rounded-3xl p-6 md:p-8 max-w-2xl w-full border border-[#E6E8DE] shadow-2xl space-y-6 max-h-[90vh] overflow-y-auto">
        <div className="flex items-center justify-between pb-4 border-b border-[#F0F2EA]">
          <div className="flex items-center gap-2.5">
            <div className="w-10 h-10 rounded-2xl bg-[#1C1D18] text-white flex items-center justify-center">
              <PlusCircle className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-lg font-black text-[#191A15]">
                إضافة امتحان جديد
              </h3>
              <p className="text-xs text-[#73786D]">
                أضف امتحانات السنوات الماضية أو النماذج التجريبية بسهولة
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="w-8 h-8 rounded-xl bg-[#F5F6F0] flex items-center justify-center text-[#73786D] hover:text-[#191A15] cursor-pointer"
          >
            ✕
          </button>
        </div>

        {success ? (
          <div className="py-12 text-center space-y-3">
            <CheckCircle2 className="w-14 h-14 text-emerald-600 mx-auto" />
            <h4 className="text-lg font-bold text-[#191A15]">تمت إضافة الامتحان بنجاح!</h4>
            <p className="text-xs text-[#73786D]">أصبح الامتحان متاحاً الآن في لوحة التحكم وقائمة الاختبارات.</p>
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="space-y-4">
            {/* Specialty Selection */}
            <div>
              <label className="block text-xs font-bold text-[#191A15] mb-1.5">
                المسلك أو التخصص
              </label>
              <select
                value={specialtyId}
                onChange={(e) => setSpecialtyId(e.target.value)}
                className="w-full p-3 bg-[#F5F6F0] rounded-2xl border border-transparent focus:border-[#1C1D18] focus:bg-white text-xs font-semibold text-[#191A15] focus:outline-none"
              >
                {SPECIALTIES.map(s => (
                  <option key={s.id} value={s.id}>{s.name} - {s.subtitle}</option>
                ))}
              </select>
            </div>

            {/* Exam Title & Session */}
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-xs font-bold text-[#191A15] mb-1.5">
                  عنوان الامتحان أو المادة
                </label>
                <input
                  type="text"
                  value={examTitle}
                  onChange={(e) => setExamTitle(e.target.value)}
                  placeholder="مثال: التدبير المادي والمالي والمحاسباتي 2023"
                  className="w-full p-3 bg-[#F5F6F0] rounded-2xl border border-transparent focus:border-[#1C1D18] focus:bg-white text-xs font-semibold text-[#191A15] focus:outline-none"
                />
              </div>

              <div>
                <label className="block text-xs font-bold text-[#191A15] mb-1.5">
                  الدورة / السنة
                </label>
                <input
                  type="text"
                  value={session}
                  onChange={(e) => setSession(e.target.value)}
                  placeholder="مثال: دورة نونبر 2023"
                  className="w-full p-3 bg-[#F5F6F0] rounded-2xl border border-transparent focus:border-[#1C1D18] focus:bg-white text-xs font-semibold text-[#191A15] focus:outline-none"
                />
              </div>
            </div>

            {/* Duration */}
            <div>
              <label className="block text-xs font-bold text-[#191A15] mb-1.5">
                المدة الزمنية (بالدقائق)
              </label>
              <input
                type="number"
                value={duration}
                onChange={(e) => setDuration(e.target.value)}
                className="w-full p-3 bg-[#F5F6F0] rounded-2xl border border-transparent focus:border-[#1C1D18] focus:bg-white text-xs font-semibold text-[#191A15] focus:outline-none"
              />
            </div>

            {/* JSON Data Area */}
            <div>
              <div className="flex items-center justify-between mb-1.5">
                <label className="block text-xs font-bold text-[#191A15]">
                  بيانات الأسئلة والخيارات والتعليلات (JSON)
                </label>
                <div className="flex items-center gap-2">
                  <button
                    type="button"
                    onClick={handleDownloadTemplate}
                    className="text-[11px] font-bold text-emerald-700 hover:underline flex items-center gap-1 cursor-pointer"
                  >
                    <Download className="w-3 h-3" />
                    <span>تنزيل نموذج JSON جاهز</span>
                  </button>
                </div>
              </div>

              <textarea
                rows={7}
                value={jsonText}
                onChange={(e) => setJsonText(e.target.value)}
                placeholder='الصق كود JSON لأسئلة الامتحان هنا أو ارفع الملف أدناه...'
                className="w-full p-3 font-mono text-[11px] bg-[#F5F6F0] rounded-2xl border border-transparent focus:border-[#1C1D18] focus:bg-white text-[#191A15] focus:outline-none leading-relaxed"
                dir="ltr"
              />
            </div>

            {/* File Upload Shortcut */}
            <div className="flex items-center gap-2">
              <label className="flex items-center gap-2 px-4 py-2 rounded-xl bg-white border border-[#D5D8CC] hover:bg-[#F5F6F0] text-xs font-bold text-[#555A4E] cursor-pointer">
                <Upload className="w-3.5 h-3.5" />
                <span>رفع ملف .json</span>
                <input
                  type="file"
                  accept=".json"
                  onChange={handleFileUpload}
                  className="hidden"
                />
              </label>
              <span className="text-[11px] text-[#8E9387]">
                يقبل ملفات JSON التي تضم مصفوفة الأسئلة والتعليلات
              </span>
            </div>

            {error && (
              <div className="p-3 rounded-xl bg-rose-50 border border-rose-200 text-rose-800 text-xs font-bold flex items-center gap-2">
                <AlertCircle className="w-4 h-4 shrink-0" />
                <span>{error}</span>
              </div>
            )}

            {/* Submit buttons */}
            <div className="flex items-center gap-3 pt-4 border-t border-[#F0F2EA]">
              <button
                type="button"
                onClick={onClose}
                className="flex-1 py-3 rounded-2xl border border-[#D5D8CC] text-xs font-bold text-[#555A4E] hover:bg-[#F5F6F0] transition-colors cursor-pointer"
              >
                إلغاء
              </button>
              <button
                type="submit"
                className="flex-1 py-3 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold shadow-sm transition-colors cursor-pointer"
              >
                حفظ الامتحان وإضافته
              </button>
            </div>
          </form>
        )}
      </div>
    </div>
  );
}
