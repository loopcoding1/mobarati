import React from 'react';
import { 
  Briefcase, 
  GraduationCap, 
  Users, 
  BookOpen, 
  Layers, 
  Clock, 
  Shuffle, 
  ListOrdered, 
  Zap, 
  ShieldCheck, 
  Play, 
  FileText, 
  CheckCircle2, 
  ChevronLeft,
  Sparkles,
  RotateCcw,
  Plus
} from 'lucide-react';
import { SPECIALTIES } from '../data/examsData';

export default function SetupView({
  specialties,
  selectedSpecialtyId,
  setSelectedSpecialtyId,
  availableExams,
  selectedExamId,
  setSelectedExamId,
  explanationMode,
  setExplanationMode,
  orderMode,
  setOrderMode,
  timerEnabled,
  setTimerEnabled,
  onStartExam,
  onOpenAddModal,
  lastResult,
  onRetakeMistakes
}) {
  const currentSpecialty = specialties.find(s => s.id === selectedSpecialtyId) || specialties[0];
  const currentExam = availableExams.find(e => e.id === selectedExamId) || availableExams[0];

  return (
    <div className="max-w-2xl mx-auto px-4 py-6 md:py-10 space-y-6">
      {/* Title & Welcome */}
      <div className="text-center space-y-2">
        <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-[#EAECE3] text-[#42473A] text-xs font-bold">
          <Sparkles className="w-3.5 h-3.5 text-amber-600" />
          <span>منصة التحضير الذكية لمباريات التعليم بالمغرب</span>
        </div>
        <h1 className="text-2xl md:text-3xl font-black text-[#191A15] tracking-tight">
          اختر تخصصك وابدأ التدريب
        </h1>
        <p className="text-xs md:text-sm text-[#73786D] max-w-lg mx-auto">
          واجهة مبسطة، أسئلة الامتحانات الرسمية، وتصحيح معلل بالنصوص التشريعية والمحاسبية
        </p>
      </div>

      {/* Main Setup Card */}
      <div className="bg-white rounded-3xl p-5 md:p-7 border border-[#E6E8DE] shadow-xs space-y-6">
        
        {/* Step 1: Select Specialty */}
        <div className="space-y-2.5">
          <label className="text-xs font-extrabold text-[#191A15] flex items-center justify-between">
            <span className="flex items-center gap-2">
              <span className="w-5 h-5 rounded-full bg-[#1C1D18] text-white flex items-center justify-center text-[11px] font-bold">1</span>
              <span>اختر التخصص:</span>
            </span>
            <span className="text-[11px] text-[#73786D] font-medium">
              التخصص الأول نشط
            </span>
          </label>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5">
            {specialties.map((spec) => {
              const isSelected = selectedSpecialtyId === spec.id;
              return (
                <button
                  key={spec.id}
                  type="button"
                  disabled={!spec.active}
                  onClick={() => setSelectedSpecialtyId(spec.id)}
                  className={`p-3.5 rounded-2xl border text-right transition-all flex items-center justify-between gap-3 cursor-pointer ${
                    isSelected
                      ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-sm'
                      : spec.active
                        ? 'bg-[#F8F9F5] hover:bg-[#EFF1E8] border-[#E8EADB] text-[#191A15]'
                        : 'bg-[#FAFBF7] border-gray-100 text-gray-400 opacity-60 cursor-not-allowed'
                  }`}
                >
                  <div className="truncate">
                    <div className="text-xs font-extrabold truncate">{spec.name}</div>
                    <div className={`text-[10px] truncate mt-0.5 ${isSelected ? 'text-gray-300' : 'text-[#73786D]'}`}>
                      {spec.subtitle}
                    </div>
                  </div>
                  {spec.active ? (
                    <span className={`text-[10px] font-bold px-2 py-0.5 rounded-full shrink-0 ${
                      isSelected ? 'bg-white/20 text-white' : 'bg-emerald-100 text-emerald-800'
                    }`}>
                      متاح ({spec.questionsCount}س)
                    </span>
                  ) : (
                    <span className="text-[10px] text-gray-400 bg-gray-100 px-1.5 py-0.5 rounded shrink-0">
                      قريباً
                    </span>
                  )}
                </button>
              );
            })}
          </div>
        </div>

        {/* Step 2: Select Exam */}
        <div className="space-y-2.5 pt-4 border-t border-[#F5F6F0]">
          <label className="text-xs font-extrabold text-[#191A15] flex items-center justify-between">
            <span className="flex items-center gap-2">
              <span className="w-5 h-5 rounded-full bg-[#1C1D18] text-white flex items-center justify-center text-[11px] font-bold">2</span>
              <span>اختر الامتحان:</span>
            </span>
            <button
              onClick={onOpenAddModal}
              className="text-[11px] font-bold text-emerald-800 hover:underline flex items-center gap-1 cursor-pointer"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>إضافة امتحان آخر</span>
            </button>
          </label>

          <div className="space-y-2">
            {availableExams.map((exam) => {
              const isSelected = selectedExamId === exam.id;
              return (
                <div
                  key={exam.id}
                  onClick={() => setSelectedExamId(exam.id)}
                  className={`p-4 rounded-2xl border transition-all cursor-pointer flex items-center justify-between gap-3 ${
                    isSelected
                      ? 'bg-[#F2F4EB] border-[#1C1D18] text-[#191A15]'
                      : 'bg-[#FAFBF7] hover:bg-[#F2F4EB] border-[#E8EADB] text-[#191A15]'
                  }`}
                >
                  <div className="space-y-1">
                    <div className="flex items-center gap-2">
                      <div className={`w-3.5 h-3.5 rounded-full border-2 flex items-center justify-center ${
                        isSelected ? 'border-[#1C1D18] bg-[#1C1D18]' : 'border-gray-400'
                      }`}>
                        {isSelected && <div className="w-1.5 h-1.5 rounded-full bg-white" />}
                      </div>
                      <span className="text-xs md:text-sm font-extrabold">
                        {exam.title}
                      </span>
                    </div>
                    <div className="text-[11px] text-[#73786D] mr-5.5">
                      {exam.session} • {exam.questions.length} سؤالاً QCM موثق بالتعليل القانوني
                    </div>
                  </div>

                  <span className="text-xs font-bold text-[#555A4E] bg-white px-2.5 py-1 rounded-xl border border-[#D5D8CC] shrink-0">
                    {exam.durationMinutes} دقيقة
                  </span>
                </div>
              );
            })}
          </div>
        </div>

        {/* Step 3: Exam Settings (Simple & Clear Options) */}
        <div className="space-y-4 pt-4 border-t border-[#F5F6F0]">
          <label className="text-xs font-extrabold text-[#191A15] flex items-center gap-2">
            <span className="w-5 h-5 rounded-full bg-[#1C1D18] text-white flex items-center justify-center text-[11px] font-bold">3</span>
            <span>تخصيص وضع الاختبار:</span>
          </label>

          {/* Option A: Explanation timing */}
          <div className="space-y-1.5">
            <span className="text-[11px] font-bold text-[#73786D]">
              طريقة إظهار الجواب الصحيح والتعليل:
            </span>
            <div className="grid grid-cols-2 gap-2">
              <button
                type="button"
                onClick={() => setExplanationMode('instant')}
                className={`py-3 px-3 rounded-2xl border text-center transition-all cursor-pointer ${
                  explanationMode === 'instant'
                    ? 'bg-[#1C1D18] text-white font-bold border-[#1C1D18] shadow-xs'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <div className="flex items-center justify-center gap-1.5 text-xs">
                  <Zap className={`w-3.5 h-3.5 ${explanationMode === 'instant' ? 'text-amber-400 fill-amber-400' : ''}`} />
                  <span>مع كل اختيار (فوري)</span>
                </div>
                <div className={`text-[10px] mt-0.5 ${explanationMode === 'instant' ? 'text-gray-300' : 'text-[#8E9387]'}`}>
                  للتعلم والمراجعة المباشرة
                </div>
              </button>

              <button
                type="button"
                onClick={() => setExplanationMode('end')}
                className={`py-3 px-3 rounded-2xl border text-center transition-all cursor-pointer ${
                  explanationMode === 'end'
                    ? 'bg-[#1C1D18] text-white font-bold border-[#1C1D18] shadow-xs'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <div className="flex items-center justify-center gap-1.5 text-xs">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  <span>في نهاية الاختبار فقط</span>
                </div>
                <div className={`text-[10px] mt-0.5 ${explanationMode === 'end' ? 'text-gray-300' : 'text-[#8E9387]'}`}>
                  محاكاة الامتحان الواقعي
                </div>
              </button>
            </div>
          </div>

          {/* Option B: Questions Ordering */}
          <div className="space-y-1.5">
            <span className="text-[11px] font-bold text-[#73786D]">
              ترتيب الأسئلة:
            </span>
            <div className="grid grid-cols-2 gap-2">
              <button
                type="button"
                onClick={() => setOrderMode('sequential')}
                className={`py-2.5 px-3 rounded-2xl border text-center transition-all text-xs font-bold cursor-pointer ${
                  orderMode === 'sequential'
                    ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <div className="flex items-center justify-center gap-1.5">
                  <ListOrdered className="w-3.5 h-3.5" />
                  <span>بالترتيب الرسمي (1 إلى {currentExam.questions.length})</span>
                </div>
              </button>

              <button
                type="button"
                onClick={() => setOrderMode('random')}
                className={`py-2.5 px-3 rounded-2xl border text-center transition-all text-xs font-bold cursor-pointer ${
                  orderMode === 'random'
                    ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <div className="flex items-center justify-center gap-1.5">
                  <Shuffle className="w-3.5 h-3.5" />
                  <span>ترتيب عشوائي للأسئلة</span>
                </div>
              </button>
            </div>
          </div>

          {/* Option C: Timer */}
          <div className="space-y-1.5">
            <span className="text-[11px] font-bold text-[#73786D]">
              المؤقت الزمني:
            </span>
            <div className="grid grid-cols-2 gap-2">
              <button
                type="button"
                onClick={() => setTimerEnabled(true)}
                className={`py-2.5 px-3 rounded-2xl border text-center transition-all text-xs font-bold cursor-pointer ${
                  timerEnabled
                    ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <div className="flex items-center justify-center gap-1.5">
                  <Clock className="w-3.5 h-3.5" />
                  <span>مع مؤقت ({currentExam.durationMinutes} دقيقة)</span>
                </div>
              </button>

              <button
                type="button"
                onClick={() => setTimerEnabled(false)}
                className={`py-2.5 px-3 rounded-2xl border text-center transition-all text-xs font-bold cursor-pointer ${
                  !timerEnabled
                    ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                    : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                }`}
              >
                <span>بدون مؤقت (وقت مفتوح)</span>
              </button>
            </div>
          </div>
        </div>

        {/* Big Start Button */}
        <div className="pt-4">
          <button
            type="button"
            onClick={onStartExam}
            className="w-full bg-[#1C1D18] hover:bg-[#2F322A] text-white py-4 rounded-2xl text-sm font-black shadow-md flex items-center justify-center gap-2 transition-transform active:scale-[0.99] cursor-pointer"
          >
            <Play className="w-4 h-4 fill-white" />
            <span>ابدأ الاختبار الآن ({currentExam.questions.length} سؤالاً)</span>
          </button>
        </div>
      </div>

      {/* Quick Mistake Retake card if user took a previous test */}
      {lastResult && (lastResult.incorrectCount + lastResult.skippedCount > 0) && (
        <div className="bg-[#FAFBF7] rounded-3xl p-5 border border-[#E6E8DE] flex items-center justify-between gap-4">
          <div className="space-y-1">
            <div className="text-xs font-black text-[#191A15] flex items-center gap-1.5">
              <span>آخر نتيجة لك:</span>
              <span className="text-emerald-700 bg-emerald-100 px-2 py-0.5 rounded-full">
                {lastResult.scorePercentage}%
              </span>
            </div>
            <div className="text-[11px] text-[#73786D]">
              لديك {lastResult.incorrectCount + lastResult.skippedCount} سؤالاً بحاجة لإعادة التثبيت والمراجعة
            </div>
          </div>

          <button
            onClick={() => onRetakeMistakes(lastResult)}
            className="flex items-center gap-1.5 bg-white border border-[#D5D8CC] hover:bg-[#F0F2EA] text-[#191A15] px-4 py-2.5 rounded-xl text-xs font-bold transition-colors cursor-pointer shrink-0"
          >
            <RotateCcw className="w-3.5 h-3.5" />
            <span>تدريب الأخطاء فقط</span>
          </button>
        </div>
      )}
    </div>
  );
}
