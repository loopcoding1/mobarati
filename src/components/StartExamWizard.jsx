import React, { useState } from 'react';
import { 
  Check, 
  ChevronLeft, 
  ChevronRight, 
  Clock, 
  Shuffle, 
  ListOrdered, 
  Zap, 
  ShieldCheck, 
  Play, 
  Sparkles, 
  Briefcase, 
  FileText,
  AlertCircle,
  HelpCircle,
  CheckCircle2,
  Plus
} from 'lucide-react';
import { SPECIALTIES } from '../data/examsData';

export default function StartExamWizard({
  isOpen,
  onClose,
  allExams,
  onLaunchExam,
  initialSpecialtyId = 'specialty_econ_admin',
  onOpenAddModal
}) {
  const [currentStep, setCurrentStep] = useState(1); // 1: Specialty -> 2: Exam -> 3: Settings -> 4: Summary

  // Wizard state
  const [selectedSpecialtyId, setSelectedSpecialtyId] = useState(initialSpecialtyId);
  const examsForSpecialty = allExams.filter(e => e.specialtyId === selectedSpecialtyId);
  const [selectedExamId, setSelectedExamId] = useState(examsForSpecialty[0]?.id || allExams[0]?.id);

  // Settings
  const [explanationMode, setExplanationMode] = useState('instant'); // 'instant' | 'end'
  const [orderMode, setOrderMode] = useState('sequential'); // 'sequential' | 'random'
  const [timerEnabled, setTimerEnabled] = useState(true);

  React.useEffect(() => {
    if (isOpen) {
      setCurrentStep(1);
      setSelectedSpecialtyId(initialSpecialtyId);
      const match = allExams.filter(e => e.specialtyId === initialSpecialtyId);
      if (match.length > 0) setSelectedExamId(match[0].id);
    }
  }, [isOpen, initialSpecialtyId]);

  if (!isOpen) return null;

  const currentSpecialty = SPECIALTIES.find(s => s.id === selectedSpecialtyId) || SPECIALTIES[0];
  const currentExam = allExams.find(e => e.id === selectedExamId) || allExams[0];

  const handleNext = () => {
    if (currentStep < 4) setCurrentStep(currentStep + 1);
  };

  const handleBack = () => {
    if (currentStep > 1) setCurrentStep(currentStep - 1);
  };

  const handleStart = () => {
    onLaunchExam({
      exam: currentExam,
      explanationMode,
      orderMode,
      timerEnabled
    });
    onClose();
    setCurrentStep(1);
  };

  const stepLabels = [
    { num: 1, title: 'التخصص' },
    { num: 2, title: 'الامتحان' },
    { num: 3, title: 'الإعدادات' },
    { num: 4, title: 'الانطلاق' }
  ];

  return (
    <div className="fixed inset-0 z-50 bg-black/60 backdrop-blur-xs flex items-center justify-center p-3 sm:p-4 select-none">
      <div className="bg-white rounded-3xl max-w-xl w-full border border-[#E6E8DE] shadow-2xl flex flex-col max-h-[92vh] overflow-hidden animate-fadeIn">
        
        {/* Top Header & Step Progress Bar - Pinned */}
        <div className="p-5 md:px-7 md:pt-6 pb-3 border-b border-[#F0F2EA] shrink-0 bg-white">
          <div className="flex items-center justify-between pb-3 border-b border-[#F5F6F0]">
            <div className="flex items-center gap-2">
              <div className="w-8 h-8 rounded-xl bg-[#1C1D18] text-white flex items-center justify-center font-bold text-xs">
                {currentStep}/4
              </div>
              <div>
                <h3 className="text-sm md:text-base font-extrabold text-[#191A15]">
                  إعداد الاختبار مرحلياً (Step-by-Step)
                </h3>
                <p className="text-[10px] md:text-[11px] text-[#73786D]">
                  المرحلة {currentStep} من 4: {stepLabels[currentStep - 1].title}
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

          {/* Stepper Dots & Labels */}
          <div className="pt-3 pb-1">
            <div className="flex items-center justify-between relative">
              <div className="absolute top-1/2 left-4 right-4 h-0.5 bg-[#EFF1E8] -translate-y-1/2 z-0" />
              
              {stepLabels.map((s) => (
                <div key={s.num} className="relative z-10 flex flex-col items-center gap-1">
                  <div className={`w-8 h-8 rounded-full flex items-center justify-center text-xs font-bold transition-all ${
                    currentStep > s.num
                      ? 'bg-emerald-600 text-white'
                      : currentStep === s.num
                        ? 'bg-[#1C1D18] text-white ring-4 ring-[#EAECE3]'
                        : 'bg-[#EFF1E8] text-[#8E9387]'
                  }`}>
                    {currentStep > s.num ? <Check className="w-4 h-4 stroke-[3]" /> : s.num}
                  </div>
                  <span className={`text-[10px] font-bold ${currentStep === s.num ? 'text-[#191A15]' : 'text-[#8E9387]'}`}>
                    {s.title}
                  </span>
                </div>
              ))}
            </div>
          </div>
        </div>

        {/* Step Body - Scrollable */}
        <div className="p-5 md:px-7 py-4 flex-1 overflow-y-auto min-h-0">
          {/* STEP 1: ONLY SPECIALTY SELECTION */}
          {currentStep === 1 && (
            <div className="space-y-3 animate-fadeIn">
              <div className="flex items-center justify-between">
                <label className="text-xs font-extrabold text-[#191A15]">
                  الخطوة 1: اختر التخصص المطلوب:
                </label>
                <span className="text-[10px] text-[#73786D] font-medium">
                  التخصص الأول جاهز ومتاح
                </span>
              </div>

              <div className="space-y-2">
                {SPECIALTIES.map(spec => {
                  const isSelected = selectedSpecialtyId === spec.id;
                  return (
                    <button
                      key={spec.id}
                      type="button"
                      disabled={!spec.active}
                      onClick={() => {
                        setSelectedSpecialtyId(spec.id);
                        const match = allExams.filter(e => e.specialtyId === spec.id);
                        if (match.length > 0) setSelectedExamId(match[0].id);
                      }}
                      className={`w-full p-3.5 rounded-2xl border text-right transition-all flex items-center justify-between cursor-pointer ${
                        isSelected
                          ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-xs'
                          : spec.active
                            ? 'bg-[#F8F9F5] border-[#E8EADB] text-[#191A15] hover:bg-[#EFF1E8]'
                            : 'bg-gray-50 border-gray-100 text-gray-400 opacity-60 cursor-not-allowed'
                      }`}
                    >
                      <div className="space-y-0.5 truncate">
                        <div className="text-xs font-extrabold truncate">{spec.name}</div>
                        <div className={`text-[11px] truncate ${isSelected ? 'text-gray-300' : 'text-[#73786D]'}`}>
                          {spec.subtitle}
                        </div>
                      </div>
                      {spec.active ? (
                        <span className={`text-[10px] font-bold px-2.5 py-1 rounded-full shrink-0 ${
                          isSelected ? 'bg-white/20 text-white' : 'bg-emerald-100 text-emerald-800'
                        }`}>
                          متاح ({spec.questionsCount} سؤال)
                        </span>
                      ) : (
                        <span className="text-[10px] text-gray-400 bg-gray-100 px-2 py-0.5 rounded-full shrink-0">
                          قريباً
                        </span>
                      )}
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          {/* STEP 2: ONLY EXAM SELECTION */}
          {currentStep === 2 && (
            <div className="space-y-3 animate-fadeIn">
              <div className="flex items-center justify-between">
                <label className="text-xs font-extrabold text-[#191A15]">
                  الخطوة 2: اختر الامتحان لـ ({currentSpecialty.name}):
                </label>
                {onOpenAddModal && (
                  <button
                    onClick={() => {
                      onClose();
                      onOpenAddModal();
                    }}
                    className="text-[11px] font-bold text-emerald-800 hover:underline flex items-center gap-1 cursor-pointer"
                  >
                    <Plus className="w-3.5 h-3.5" />
                    <span>إضافة دورة أخرى</span>
                  </button>
                )}
              </div>

              <div className="space-y-2.5">
                {examsForSpecialty.map(exam => {
                  const isSelected = selectedExamId === exam.id;
                  return (
                    <div
                      key={exam.id}
                      onClick={() => setSelectedExamId(exam.id)}
                      className={`p-4 rounded-2xl border transition-all cursor-pointer flex items-center justify-between gap-3 ${
                        isSelected
                          ? 'bg-[#F2F4EB] border-[#1C1D18] text-[#191A15] ring-2 ring-[#1C1D18]/10'
                          : 'bg-[#FAFBF7] border-[#E8EADB] hover:bg-[#F2F4EB]'
                      }`}
                    >
                      <div className="space-y-1">
                        <div className="flex items-center gap-2">
                          <div className={`w-4 h-4 rounded-full border-2 flex items-center justify-center shrink-0 ${
                            isSelected ? 'border-[#1C1D18] bg-[#1C1D18]' : 'border-gray-400'
                          }`}>
                            {isSelected && <div className="w-1.5 h-1.5 rounded-full bg-white" />}
                          </div>
                          <span className="text-xs md:text-sm font-extrabold text-[#191A15]">
                            {exam.title}
                          </span>
                        </div>
                        <div className="text-[11px] text-[#73786D] mr-6">
                          {exam.session} • {exam.questions.length} سؤالاً QCM موثق بالسند والتبرير
                        </div>
                      </div>

                      <span className="text-xs font-bold bg-white text-[#555A4E] border border-[#D5D8CC] px-2.5 py-1 rounded-xl shrink-0">
                        {exam.durationMinutes} دقيقة
                      </span>
                    </div>
                  );
                })}
              </div>
            </div>
          )}

          {/* STEP 3: EXAM SETTINGS (Mode, Ordering, Timer) */}
          {currentStep === 3 && (
            <div className="space-y-4 animate-fadeIn">
              <label className="block text-xs font-extrabold text-[#191A15]">
                الخطوة 3: تخصيص وضع وإعدادات الاختبار:
              </label>

              {/* Mode: Instant or End */}
              <div className="space-y-1.5">
                <span className="text-[11px] font-bold text-[#73786D]">
                  طريقة إظهار الجواب الصحيح والتعليل:
                </span>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                  <button
                    type="button"
                    onClick={() => setExplanationMode('instant')}
                    className={`p-3 rounded-2xl border text-right transition-all cursor-pointer ${
                      explanationMode === 'instant'
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-xs'
                        : 'bg-[#F8F9F5] border-[#E8EADB] text-[#191A15] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    <div className="flex items-center gap-1.5 text-xs font-bold">
                      <Zap className={`w-3.5 h-3.5 ${explanationMode === 'instant' ? 'text-amber-400 fill-amber-400' : 'text-amber-500'}`} />
                      <span>مع كل اختيار (فوري)</span>
                    </div>
                    <p className={`text-[11px] mt-1 ${explanationMode === 'instant' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                      للتدريب والتعلم الفوري لكل مادة وسند قانوني.
                    </p>
                  </button>

                  <button
                    type="button"
                    onClick={() => setExplanationMode('end')}
                    className={`p-3 rounded-2xl border text-right transition-all cursor-pointer ${
                      explanationMode === 'end'
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-xs'
                        : 'bg-[#F8F9F5] border-[#E8EADB] text-[#191A15] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    <div className="flex items-center gap-1.5 text-xs font-bold">
                      <ShieldCheck className="w-3.5 h-3.5 text-blue-400" />
                      <span>في نهاية الاختبار فقط</span>
                    </div>
                    <p className={`text-[11px] mt-1 ${explanationMode === 'end' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                      محاكاة لأجواء الامتحان الواقعي، وتظهر النتائج والشرح في النهاية.
                    </p>
                  </button>
                </div>
              </div>

              {/* Order */}
              <div className="space-y-1.5">
                <span className="text-[11px] font-bold text-[#73786D]">
                  ترتيب الأسئلة:
                </span>
                <div className="grid grid-cols-2 gap-2">
                  <button
                    type="button"
                    onClick={() => setOrderMode('sequential')}
                    className={`py-2 px-3 rounded-2xl border text-center text-xs font-bold transition-all cursor-pointer ${
                      orderMode === 'sequential'
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                        : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    الترتيب الرسمي (1 إلى {currentExam.questions.length})
                  </button>

                  <button
                    type="button"
                    onClick={() => setOrderMode('random')}
                    className={`py-2 px-3 rounded-2xl border text-center text-xs font-bold transition-all cursor-pointer ${
                      orderMode === 'random'
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                        : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    ترتيب عشوائي للأسئلة
                  </button>
                </div>
              </div>

              {/* Timer */}
              <div className="space-y-1.5">
                <span className="text-[11px] font-bold text-[#73786D]">
                  المؤقت الزمني:
                </span>
                <div className="grid grid-cols-2 gap-2">
                  <button
                    type="button"
                    onClick={() => setTimerEnabled(true)}
                    className={`py-2 px-3 rounded-2xl border text-center text-xs font-bold transition-all cursor-pointer ${
                      timerEnabled
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                        : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    مع مؤقت ({currentExam.durationMinutes} دقيقة)
                  </button>

                  <button
                    type="button"
                    onClick={() => setTimerEnabled(false)}
                    className={`py-2 px-3 rounded-2xl border text-center text-xs font-bold transition-all cursor-pointer ${
                      !timerEnabled
                        ? 'bg-[#1C1D18] text-white border-[#1C1D18]'
                        : 'bg-[#F8F9F5] text-[#555A4E] border-[#E8EADB] hover:bg-[#EFF1E8]'
                    }`}
                  >
                    بدون مؤقت (وقت مفتوح)
                  </button>
                </div>
              </div>
            </div>
          )}

          {/* STEP 4: SUMMARY & CONFIRMATION */}
          {currentStep === 4 && (
            <div className="space-y-4 animate-fadeIn">
              <label className="block text-xs font-extrabold text-[#191A15]">
                الخطوة 4: مراجعة الاختيارات والانطلاق:
              </label>

              <div className="bg-[#FAFBF7] rounded-3xl p-5 border border-[#E6E8DE] space-y-2.5">
                <div className="space-y-2 text-xs divide-y divide-gray-100">
                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">التخصص:</span>
                    <span className="font-extrabold text-[#191A15]">{currentSpecialty.name}</span>
                  </div>

                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">الامتحان:</span>
                    <span className="font-extrabold text-[#191A15]">{currentExam.title}</span>
                  </div>

                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">عدد الأسئلة:</span>
                    <span className="font-extrabold text-[#191A15]">{currentExam.questions.length} سؤالاً QCM</span>
                  </div>

                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">التعليل:</span>
                    <span className="font-bold text-emerald-800 bg-emerald-50 px-2 py-0.5 rounded-md">
                      {explanationMode === 'instant' ? 'مع كل اختيار (فوري)' : 'في نهاية الاختبار فقط'}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">ترتيب الأسئلة:</span>
                    <span className="font-extrabold text-[#191A15]">
                      {orderMode === 'sequential' ? 'بالترتيب الرسمي' : 'عشوائي'}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-1">
                    <span className="text-[#73786D]">المؤقت:</span>
                    <span className="font-extrabold text-[#191A15]">
                      {timerEnabled ? `${currentExam.durationMinutes} دقيقة (3 ساعات)` : 'بدون مؤقت (مفتوح)'}
                    </span>
                  </div>
                </div>
              </div>

              <div className="p-3 rounded-2xl bg-emerald-50 border border-emerald-200 text-xs text-emerald-900 leading-relaxed font-medium">
                جاهز الآن! اضغط على «انطلاق الاختبار» لبدء الحل.
              </div>
            </div>
          )}
        </div>

        {/* Navigation Buttons: Previous / Next / Start - Pinned */}
        <div className="p-4 md:px-7 border-t border-[#F0F2EA] flex items-center justify-between gap-3 shrink-0 bg-white rounded-b-3xl">
          {currentStep > 1 ? (
            <button
              type="button"
              onClick={handleBack}
              className="px-4 py-2.5 rounded-2xl border border-gray-300 text-xs font-bold text-gray-700 hover:bg-gray-50 flex items-center gap-1 cursor-pointer"
            >
              <ChevronRight className="w-4 h-4" />
              <span>السابق</span>
            </button>
          ) : (
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2.5 rounded-2xl border border-gray-300 text-xs font-bold text-gray-500 hover:bg-gray-50 cursor-pointer"
            >
              إلغاء
            </button>
          )}

          {currentStep < 4 ? (
            <button
              type="button"
              onClick={handleNext}
              className="px-6 py-2.5 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold flex items-center gap-1 cursor-pointer"
            >
              <span>التالي ({stepLabels[currentStep].title})</span>
              <ChevronLeft className="w-4 h-4" />
            </button>
          ) : (
            <button
              type="button"
              onClick={handleStart}
              className="px-6 py-3 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-black shadow-md flex items-center gap-2 cursor-pointer transition-transform active:scale-95"
            >
              <Play className="w-4 h-4 fill-white" />
              <span>انطلاق الاختبار الآن ({currentExam.questions.length} سؤالاً)</span>
            </button>
          )}
        </div>

      </div>
    </div>
  );
}
