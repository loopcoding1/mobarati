import React, { useState } from 'react';
import { 
  Briefcase, 
  Clock, 
  FileText, 
  Play, 
  Sparkles, 
  CheckCircle2, 
  ChevronLeft, 
  ChevronRight, 
  Zap, 
  ShieldCheck, 
  ListOrdered, 
  Shuffle,
  Check,
  Calendar,
  Layers,
  Dices,
  Scale
} from 'lucide-react';
import { SPECIALTIES as LOCAL_SPECIALTIES } from '../data/examsData';
import { generateRandomExam } from '../data/catalog';

// أسماء المواد حسب نوعها — التوليد العشوائي يكون داخل مادة واحدة فقط
// (في الابتدائي مثلاً: العربية والفرنسية والرياضيات والعلوم والديداكتيك...)
const SUBJECT_LABELS = {
  arabic: 'اللغة العربية',
  french: 'اللغة الفرنسية',
  maths: 'الرياضيات',
  sciences: 'العلوم',
  didactics_ar: 'ديداكتيك اللغة العربية',
  didactics_fr: 'ديداكتيك اللغة الفرنسية',
  didactics_maths: 'ديداكتيك الرياضيات',
  didactics_sciences: 'ديداكتيك العلوم',
  sciences_edu: 'علوم التربية',
  mgmt: 'التدبير المادي والمالي والمحاسباتي',
  tasks: 'المهام والاختصاصات',
};
const subjectLabel = (type) => SUBJECT_LABELS[type] || type;
// ترتيب عرض المواد (الثابت قبل الديداكتيك)
const SUBJECT_ORDER = ['arabic', 'french', 'maths', 'sciences', 'didactics_ar', 'didactics_fr', 'didactics_maths', 'didactics_sciences', 'sciences_edu', 'mgmt', 'tasks'];

export default function ExamSetupSteps({
  allExams,
  specialties,
  onStartExam
}) {
  const [currentStep, setCurrentStep] = useState(1); // 1: Specialty, 2: Exam, 3: Settings, 4: Launch

  // Filter only active/available specialties (from Supabase, local fallback if missing)
  const availableSpecialties = (specialties?.length ? specialties : LOCAL_SPECIALTIES).filter(s => s.active);
  const [selectedSpecialtyId, setSelectedSpecialtyId] = useState(availableSpecialties[0]?.id || 'specialty_econ_admin');

  // Year filter for Step 2: 'all' | year
  const [yearFilter, setYearFilter] = useState('all');

  // Selected Exam (first exam of the default specialty)
  const [selectedExamId, setSelectedExamId] = useState(() => {
    const firstSpecId = availableSpecialties[0]?.id || 'specialty_econ_admin';
    return allExams.find(e => e.specialtyId === firstSpecId)?.id || allExams[0]?.id || 'exam_2024_mgmt';
  });
  
  // Random simulation settings
  const [isRandomMode, setIsRandomMode] = useState(false);
  const [randomCount, setRandomCount] = useState(60); // 30, 60, 80
  // المادة المختارة للتوليد العشوائي (الأسئلة تُسحب من امتحانات هذه المادة فقط)
  const [randomSubjectType, setRandomSubjectType] = useState(() => {
    const firstSpecId = availableSpecialties[0]?.id || 'specialty_econ_admin';
    const ex = allExams.filter(e => e.specialtyId === firstSpecId);
    return SUBJECT_ORDER.find(t => ex.some(e => e.subjectType === t)) || 'arabic';
  });

  // Exam Settings
  const [explanationMode, setExplanationMode] = useState('instant'); // 'instant' | 'end'
  const [orderMode, setOrderMode] = useState('sequential'); // 'sequential' | 'random'
  const [timerEnabled, setTimerEnabled] = useState(true);

  const currentSpecialty = availableSpecialties.find(s => s.id === selectedSpecialtyId) || availableSpecialties[0];

  // Exams of the selected specialty ONLY — Step 2 must show these alone
  const specialtyExams = allExams.filter(e => e.specialtyId === selectedSpecialtyId);

  // Per-specialty counts (from the catalog when present, else computed here)
  const countsFor = (spec) => {
    const ex = allExams.filter(e => e.specialtyId === spec.id);
    return {
      exams: spec.examsCount ?? ex.length,
      questions: spec.questionsCount ?? ex.reduce((s, e) => s + (e.questions?.length || 0), 0),
    };
  };

  const handleSelectSpecialty = (id) => {
    setSelectedSpecialtyId(id);
    setIsRandomMode(false);
    setYearFilter('all');
    const first = allExams.find(e => e.specialtyId === id);
    if (first) setSelectedExamId(first.id);
    const firstSubject = SUBJECT_ORDER.find(t => allExams.some(e => e.specialtyId === id && e.subjectType === t));
    if (firstSubject) setRandomSubjectType(firstSubject);
  };

  // مواد التخصص المختار (لاختيار مادة التوليد العشوائي)، مرتبة حسب SUBJECT_ORDER
  const specialtySubjects = SUBJECT_ORDER.filter(t => specialtyExams.some(e => e.subjectType === t));
  // التوليد العشوائي: أسئلة من امتحانات المادة المختارة فقط
  const randomPool = specialtyExams.filter(e => e.subjectType === randomSubjectType);
  const randomSubjectLabel = subjectLabel(randomSubjectType);
  const randomPoolQuestions = randomPool.reduce((s, e) => s + (e.questions?.length || 0), 0);

  // Determine the active exam to display / launch
  let currentExam;
  if (isRandomMode) {
    currentExam = {
      id: 'exam_random_simulation',
      specialtyId: selectedSpecialtyId,
      year: 'شامل',
      subjectType: 'random',
      subjectTitle: 'امتحان شامل بأسئلة عشوائية',
      title: `امتحان تجريبي شامل بأسئلة عشوائية (${randomCount} سؤالاً من امتحانات ${randomSubjectLabel})`,
      session: 'محاكاة شاملة لكافة الدورات والمواضيع',
      durationMinutes: 180,
      questionsCount: randomCount,
      questions: [] // will be generated on launch
    };
  } else {
    currentExam = allExams.find(e => e.id === selectedExamId) || allExams[0];
  }

  const stepLabels = [
    { num: 1, title: 'التخصص المتوفر' },
    { num: 2, title: 'اختيار الامتحان' },
    { num: 3, title: 'إعدادات الاختبار' },
    { num: 4, title: 'الانطلاق' }
  ];

  // Filter exams by the selected specialty AND by year
  const displayedExams = specialtyExams.filter(e => {
    if (yearFilter === 'all') return true;
    return String(e.year) === String(yearFilter);
  });

  // Year tabs, derived from the selected specialty's exams (newest first)
  const specialtyYears = [...new Set(specialtyExams.map(e => String(e.year)))].sort((a, b) => Number(b) - Number(a));

  const handleLaunch = () => {
    let examToLaunch;
    if (isRandomMode) {
      examToLaunch = generateRandomExam(randomPool, randomCount, randomSubjectLabel);
    } else {
      examToLaunch = currentExam;
    }

    onStartExam({
      exam: examToLaunch,
      explanationMode,
      orderMode,
      timerEnabled
    });
  };

  return (
    <div className="max-w-3xl mx-auto px-4 py-6 md:py-10 space-y-6 select-none">
      
      {/* Title & Introduction */}
      <div className="text-center space-y-2">
        <div className="inline-flex items-center gap-1.5 bg-emerald-100 text-emerald-900 border border-emerald-200 px-3 py-1 rounded-full text-xs font-bold">
          <Sparkles className="w-3.5 h-3.5 text-emerald-700" />
          <span>مباريات التعليم بالمغرب • المراكز الجهوية لمهن التربية والتكوين CRMEF</span>
        </div>
        <h1 className="text-xl md:text-3xl font-black text-[#191A15] tracking-tight">
          التحضير لمباراة التعليم: {currentSpecialty?.name || 'التعليم'}
        </h1>
        <p className="text-xs md:text-sm text-[#73786D] max-w-lg mx-auto font-medium">
          اختر الدورة والموضوع المطلوب أو جرب الامتحان العشوائي الشامل مع التصحيح والتعليل القانوني المعتمد.
        </p>
      </div>

      {/* Main Step Card */}
      <div className="bg-white rounded-3xl border border-[#E6E8DE] shadow-sm overflow-hidden flex flex-col">
        
        {/* Step Progress Bar Header */}
        <div className="p-4 md:p-6 border-b border-[#F0F2EA] bg-[#FAFBF7]">
          <div className="flex items-center justify-between relative max-w-xl mx-auto">
            <div className="absolute top-1/2 left-6 right-6 h-0.5 bg-[#E6E8DE] -translate-y-1/2 z-0" />
            
            {stepLabels.map((step) => {
              const isPassed = currentStep > step.num;
              const isCurrent = currentStep === step.num;
              return (
                <button
                  key={step.num}
                  type="button"
                  onClick={() => setCurrentStep(step.num)}
                  className="relative z-10 flex flex-col items-center gap-1.5 focus:outline-none cursor-pointer group"
                >
                  <div className={`w-8 h-8 md:w-9 md:h-9 rounded-full flex items-center justify-center text-xs font-bold transition-all ${
                    isPassed
                      ? 'bg-emerald-600 text-white shadow-xs'
                      : isCurrent
                        ? 'bg-[#1C1D18] text-white ring-4 ring-[#E2E6D8]'
                        : 'bg-white border-2 border-[#D5D8CC] text-[#73786D] group-hover:border-[#1C1D18]'
                  }`}>
                    {isPassed ? <Check className="w-4 h-4 stroke-[3]" /> : step.num}
                  </div>
                  <span className={`text-[10px] md:text-xs font-extrabold ${
                    isCurrent ? 'text-[#191A15]' : isPassed ? 'text-emerald-800' : 'text-[#8E9387]'
                  }`}>
                    {step.title}
                  </span>
                </button>
              );
            })}
          </div>
        </div>

        {/* Step Content */}
        <div className="p-5 md:p-8 flex-1 min-h-[350px]">
          
          {/* STEP 1: ONLY AVAILABLE SPECIALTY */}
          {currentStep === 1 && (
            <div className="space-y-4 animate-fadeIn">
              <div className="flex items-center justify-between">
                <div>
                  <h2 className="text-sm md:text-base font-extrabold text-[#191A15]">
                    الخطوة 1: اختيار التخصص المتوفر
                  </h2>
                  <p className="text-xs text-[#73786D]">
                    التخصص الجاهز والمعتمد حالياً بكامل أسئلته الرسمية والتعليلات القانونية
                  </p>
                </div>
                <span className="text-[11px] font-bold bg-emerald-100 text-emerald-800 px-2.5 py-0.5 rounded-full">
                  {availableSpecialties.length === 1 ? 'تخصص واحد متاح' : availableSpecialties.length === 2 ? 'تخصصان متاحان' : `${availableSpecialties.length} تخصصات متاحة`}
                </span>
              </div>

              <div className="space-y-3 pt-2">
                {availableSpecialties.map(spec => {
                  const isSelected = spec.id === selectedSpecialtyId;
                  const counts = countsFor(spec);
                  return (
                  <div
                    key={spec.id}
                    onClick={() => handleSelectSpecialty(spec.id)}
                    className={`p-5 rounded-2xl border-2 transition-all cursor-pointer flex flex-col sm:flex-row sm:items-center justify-between gap-4 ${
                      isSelected
                        ? 'border-[#1C1D18] bg-[#FAFBF7] shadow-xs ring-1 ring-[#1C1D18]/10'
                        : 'border-[#E6E8DE] bg-white hover:border-gray-400'
                    }`}
                  >
                    <div className="flex items-start gap-3.5">
                      <div className="w-11 h-11 rounded-2xl bg-[#1C1D18] text-white flex items-center justify-center shrink-0">
                        <Briefcase className="w-5 h-5" />
                      </div>
                      <div className="space-y-1">
                        <div className="flex items-center gap-2">
                          <span className="text-sm md:text-base font-black text-[#191A15]">
                            {spec.name}
                          </span>
                          <span className="text-[10px] font-bold bg-emerald-100 text-emerald-800 px-2 py-0.5 rounded-full">
                            متاح بالكامل
                          </span>
                        </div>
                        <div className="text-xs font-bold text-[#555A4E]">
                          {spec.subtitle}
                        </div>
                        <p className="text-xs text-[#73786D] leading-relaxed pt-1">
                          {spec.description}
                        </p>
                      </div>
                    </div>

                    <div className="flex sm:flex-col items-center sm:items-end justify-between border-t sm:border-t-0 pt-2 sm:pt-0 border-gray-100 shrink-0">
                      <span className="text-xs font-black text-[#191A15] bg-[#F5F6F0] px-3 py-1 rounded-xl">
                        {counts.exams} امتحانات • {counts.questions} سؤالاً
                      </span>
                      {isSelected ? (
                        <div className="flex items-center gap-1 text-[11px] text-emerald-800 font-bold mt-1">
                          <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600" />
                          <span>محدد للمباراة</span>
                        </div>
                      ) : (
                        <span className="text-[11px] text-[#73786D] font-bold mt-1">اضغط للاختيار</span>
                      )}
                    </div>
                  </div>
                  );
                })}
              </div>

              <div className="p-3.5 rounded-2xl bg-[#F5F6F0] border border-[#E6E8DE] text-xs text-[#555A4E] leading-relaxed flex items-center gap-2 mt-4">
                <Check className="w-4 h-4 text-emerald-700 shrink-0" />
                <span>كل تخصص يحتوي على جميع دوراته الرسمية مع الحل والتعليل.</span>
              </div>
            </div>
          )}

          {/* STEP 2: CHOOSE EXAM */}
          {currentStep === 2 && (
            <div className="space-y-4 animate-fadeIn">
              <div>
                <h2 className="text-sm md:text-base font-extrabold text-[#191A15]">
                  الخطوة 2: اختيار الامتحان والموضوع
                </h2>
                <p className="text-xs text-[#73786D]">
                  اختر بين امتحانات الدورات الرسمية أو امتحان تجريبي بأسئلة عشوائية من مادة تختارها
                </p>
              </div>

              {/* Special Mode: Random Questions Exam */}
              <div 
                onClick={() => {
                  setIsRandomMode(true);
                }}
                className={`p-4 md:p-5 rounded-2xl border-2 transition-all cursor-pointer flex flex-col sm:flex-row sm:items-center justify-between gap-4 ${
                  isRandomMode 
                    ? 'border-amber-500 bg-amber-500/10 shadow-sm ring-2 ring-amber-500/20' 
                    : 'border-dashed border-amber-300 hover:border-amber-500 bg-[#FFFDF7]'
                }`}
              >
                <div className="flex items-start gap-3.5">
                  <div className="w-11 h-11 rounded-2xl bg-amber-500 text-white flex items-center justify-center shrink-0 shadow-xs">
                    <Dices className="w-6 h-6" />
                  </div>
                  <div className="space-y-1">
                    <div className="flex items-center gap-2">
                      <span className="text-sm md:text-base font-black text-[#191A15]">
                        امتحان تجريبي بأسئلة عشوائية من مادة واحدة
                      </span>
                      <span className="text-[10px] font-black bg-amber-500 text-white px-2 py-0.5 rounded-full">
                        خيار مميز
                      </span>
                    </div>
                    <p className="text-xs text-[#73786D]">
                      اختر المادة أولاً، ثم يتم سحب أسئلة عشوائية من امتحانات تلك المادة فقط.
                    </p>

                    {/* Subject Selector for random mode */}
                    {isRandomMode && (
                      <div className="pt-2">
                        <span className="text-[11px] font-bold text-[#191A15]">المادة:</span>
                        <div className="flex flex-wrap items-center gap-2 pt-1.5">
                          {specialtySubjects.map(t => (
                            <button
                              key={t}
                              type="button"
                              onClick={(e) => {
                                e.stopPropagation();
                                setRandomSubjectType(t);
                              }}
                              className={`px-3 py-1 rounded-xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap ${
                                randomSubjectType === t
                                  ? 'bg-amber-500 text-white'
                                  : 'bg-white border border-[#D5D8CC] text-[#555A4E] hover:bg-gray-100'
                              }`}
                            >
                              {subjectLabel(t)}
                            </button>
                          ))}
                        </div>
                        <p className="text-[11px] text-[#73786D] pt-1.5">
                          {randomPool.length} امتحانات • {randomPoolQuestions} سؤالاً متاحاً في {randomSubjectLabel}
                        </p>
                      </div>
                    )}

                    {/* Question Count Selector inside random card */}
                    {isRandomMode && (
                      <div className="pt-2 flex items-center gap-2">
                        <span className="text-[11px] font-bold text-[#191A15]">عدد الأسئلة العشوائية:</span>
                        {[30, 60, 80].map(cnt => (
                          <button
                            key={cnt}
                            type="button"
                            onClick={(e) => {
                              e.stopPropagation();
                              setRandomCount(cnt);
                            }}
                            className={`px-3 py-1 rounded-xl text-xs font-black transition-all cursor-pointer ${
                              randomCount === cnt
                                ? 'bg-[#1C1D18] text-white'
                                : 'bg-white border border-[#D5D8CC] text-[#555A4E] hover:bg-gray-100'
                            }`}
                          >
                            {cnt} سؤالاً
                          </button>
                        ))}
                      </div>
                    )}
                  </div>
                </div>

                <div className="flex items-center gap-2 self-end sm:self-center shrink-0">
                  <div className={`w-5 h-5 rounded-full border-2 flex items-center justify-center ${
                    isRandomMode ? 'border-[#1C1D18] bg-[#1C1D18]' : 'border-gray-400'
                  }`}>
                    {isRandomMode && <div className="w-2 h-2 rounded-full bg-white" />}
                  </div>
                </div>
              </div>

              {/* Year Filter Tabs */}
              <div className="pt-2">
                <div className="flex items-center justify-between pb-2">
                  <span className="text-xs font-extrabold text-[#191A15]">
                    أو اختر دورة وموضوع محدد:
                  </span>
                  <span className="text-[11px] text-[#73786D] font-bold">
                    «{currentSpecialty?.name}» — {specialtyExams.length} امتحاناً
                  </span>
                </div>

                <div className="flex items-center gap-2 overflow-x-auto pb-1 scrollbar-none">
                  {['all', ...specialtyYears].map(yr => (
                    <button
                      key={yr}
                      type="button"
                      onClick={() => {
                        setYearFilter(yr);
                      }}
                      className={`px-4 py-2 rounded-2xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap ${
                        yearFilter === yr
                          ? 'bg-[#1C1D18] text-white shadow-xs'
                          : 'bg-[#F5F6F0] text-[#73786D] hover:bg-[#EAECE3] hover:text-[#191A15]'
                      }`}
                    >
                      {yr === 'all' ? `جميع السنوات (${specialtyExams.length} امتحاناً)` : `دورة ${yr}`}
                    </button>
                  ))}
                </div>
              </div>

              {/* Exams List by Year and Subject */}
              <div className="space-y-3 pt-1">
                {displayedExams.map(exam => {
                  const isSelected = !isRandomMode && selectedExamId === exam.id;
                  const isMgmt = exam.subjectType === 'mgmt';
                  return (
                    <div
                      key={exam.id}
                      onClick={() => {
                        setIsRandomMode(false);
                        setSelectedExamId(exam.id);
                      }}
                      className={`p-4 md:p-5 rounded-2xl border-2 transition-all cursor-pointer flex flex-col sm:flex-row sm:items-center justify-between gap-4 ${
                        isSelected 
                          ? 'border-[#1C1D18] bg-[#FAFBF7] shadow-xs ring-1 ring-[#1C1D18]/10' 
                          : 'border-[#E6E8DE] hover:border-gray-400 bg-white'
                      }`}
                    >
                      <div className="flex items-start gap-3.5">
                        <div className={`w-10 h-10 rounded-2xl flex items-center justify-center shrink-0 ${
                          isMgmt 
                            ? 'bg-blue-50 text-blue-800 border border-blue-200' 
                            : 'bg-purple-50 text-purple-800 border border-purple-200'
                        }`}>
                          {isMgmt ? <FileText className="w-5 h-5 text-blue-700" /> : <Layers className="w-5 h-5 text-purple-700" />}
                        </div>
                        <div className="space-y-1">
                          <div className="flex flex-wrap items-center gap-2">
                            <span className="text-xs font-bold text-white bg-[#1C1D18] px-2 py-0.5 rounded-md">
                              سنة {exam.year}
                            </span>
                            <span className={`text-[10px] font-extrabold px-2 py-0.5 rounded-full ${
                              isMgmt ? 'bg-blue-100 text-blue-900' : 'bg-purple-100 text-purple-900'
                            }`}>
                              {exam.subjectTitle}
                            </span>
                          </div>
                          <div className="text-xs md:text-sm font-black text-[#191A15]">
                            {exam.title}
                          </div>
                          <p className="text-[11px] text-[#73786D]">
                            {exam.session} • {exam.questionsCount} سؤالاً موثقاً بالحل والتعليل
                          </p>
                        </div>
                      </div>

                      <div className="flex sm:flex-col items-center sm:items-end justify-between border-t sm:border-t-0 pt-2 sm:pt-0 border-gray-100 shrink-0">
                        <span className="text-xs font-black text-[#191A15] bg-[#F5F6F0] px-3 py-1 rounded-xl">
                          {exam.durationMinutes} دقيقة
                        </span>
                        <div className="flex items-center gap-1.5 mt-2">
                          <div className={`w-4 h-4 rounded-full border-2 flex items-center justify-center ${
                            isSelected ? 'border-[#1C1D18] bg-[#1C1D18]' : 'border-gray-400'
                          }`}>
                            {isSelected && <div className="w-1.5 h-1.5 rounded-full bg-white" />}
                          </div>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          )}

          {/* STEP 3: EXAM SETTINGS */}
          {currentStep === 3 && (
            <div className="space-y-5 animate-fadeIn">
              <div>
                <h2 className="text-sm md:text-base font-extrabold text-[#191A15]">
                  الخطوة 3: إعدادات وضع الاختبار
                </h2>
                <p className="text-xs text-[#73786D]">
                  حدد كيف ترغب في إجراء الاختبار وطريقة ظهور التعليل والوقت
                </p>
              </div>

              {/* 1. Explanation Mode */}
              <div className="space-y-2">
                <label className="text-xs font-extrabold text-[#191A15] flex items-center gap-1.5">
                  <span>طريقة إظهار الجواب الصحيح والتعليل:</span>
                </label>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                  <div
                    onClick={() => setExplanationMode('instant')}
                    className={`p-4 rounded-2xl border-2 transition-all cursor-pointer ${
                      explanationMode === 'instant'
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white shadow-xs'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#191A15]'
                    }`}
                  >
                    <div className="flex items-center gap-2 text-xs font-bold">
                      <Zap className={`w-4 h-4 ${explanationMode === 'instant' ? 'text-amber-400 fill-amber-400' : 'text-amber-600'}`} />
                      <span>مع كل اختيار (فوري)</span>
                    </div>
                    <p className={`text-[11px] mt-1.5 leading-relaxed ${explanationMode === 'instant' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                      يعرض الجواب الصحيح والسند القانوني فور النقر لتتعلم وتراجع المادة فوراً.
                    </p>
                  </div>

                  <div
                    onClick={() => setExplanationMode('end')}
                    className={`p-4 rounded-2xl border-2 transition-all cursor-pointer ${
                      explanationMode === 'end'
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white shadow-xs'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#191A15]'
                    }`}
                  >
                    <div className="flex items-center gap-2 text-xs font-bold">
                      <ShieldCheck className={`w-4 h-4 ${explanationMode === 'end' ? 'text-blue-400' : 'text-blue-600'}`} />
                      <span>في نهاية الاختبار فقط</span>
                    </div>
                    <p className={`text-[11px] mt-1.5 leading-relaxed ${explanationMode === 'end' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                      يحجب الإجابات أثناء الحل لمحاكاة واقع الامتحان، وتظهر النتيجة والشرح في النهاية.
                    </p>
                  </div>
                </div>
              </div>

              {/* 2. Order Mode */}
              <div className="space-y-2">
                <label className="text-xs font-extrabold text-[#191A15]">
                  ترتيب الأسئلة:
                </label>
                <div className="grid grid-cols-2 gap-3">
                  <div
                    onClick={() => setOrderMode('sequential')}
                    className={`p-3 rounded-2xl border-2 text-center text-xs font-bold transition-all cursor-pointer ${
                      orderMode === 'sequential'
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#555A4E]'
                    }`}
                  >
                    الترتيب الرسمي
                  </div>

                  <div
                    onClick={() => setOrderMode('random')}
                    className={`p-3 rounded-2xl border-2 text-center text-xs font-bold transition-all cursor-pointer ${
                      orderMode === 'random'
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#555A4E]'
                    }`}
                  >
                    ترتيب عشوائي للأسئلة
                  </div>
                </div>
              </div>

              {/* 3. Timer Mode */}
              <div className="space-y-2">
                <label className="text-xs font-extrabold text-[#191A15]">
                  المؤقت الزمني:
                </label>
                <div className="grid grid-cols-2 gap-3">
                  <div
                    onClick={() => setTimerEnabled(true)}
                    className={`p-3 rounded-2xl border-2 text-center text-xs font-bold transition-all cursor-pointer ${
                      timerEnabled
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#555A4E]'
                    }`}
                  >
                    مؤقت رسمي ({currentExam.durationMinutes} دقيقة)
                  </div>

                  <div
                    onClick={() => setTimerEnabled(false)}
                    className={`p-3 rounded-2xl border-2 text-center text-xs font-bold transition-all cursor-pointer ${
                      !timerEnabled
                        ? 'border-[#1C1D18] bg-[#1C1D18] text-white'
                        : 'border-[#E6E8DE] bg-[#FAFBF7] hover:bg-[#F2F4EB] text-[#555A4E]'
                    }`}
                  >
                    وقت مفتوح (بدون مؤقت)
                  </div>
                </div>
              </div>

            </div>
          )}

          {/* STEP 4: SUMMARY & LAUNCH */}
          {currentStep === 4 && (
            <div className="space-y-5 animate-fadeIn">
              <div>
                <h2 className="text-sm md:text-base font-extrabold text-[#191A15]">
                  الخطوة 4: مراجعة الاختيارات والانطلاق
                </h2>
                <p className="text-xs text-[#73786D]">
                  راجع ملخص إعدادات الاختبار ثم اضغط زر الانطلاق لبدء الحل
                </p>
              </div>

              <div className="bg-[#FAFBF7] rounded-3xl p-5 border border-[#E6E8DE] space-y-3">
                <div className="text-xs divide-y divide-[#EAECE3]">
                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">التخصص:</span>
                    <span className="font-extrabold text-[#191A15]">{currentSpecialty.name}</span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">الامتحان المختار:</span>
                    <span className="font-extrabold text-[#191A15]">{currentExam.title}</span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">الدورة والموضوع:</span>
                    <span className="font-bold text-[#555A4E]">
                      {isRandomMode ? `سحب عشوائي من امتحانات ${randomSubjectLabel}` : `${examYearLabel(currentExam.year)} • ${currentExam.subjectTitle}`}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">عدد الأسئلة:</span>
                    <span className="font-extrabold text-[#191A15]">
                      {isRandomMode ? `${randomCount} سؤالاً عشوائياً` : `${currentExam.questionsCount} سؤالاً`}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">وضع التعليل:</span>
                    <span className="font-bold text-emerald-800 bg-emerald-100 px-2 py-0.5 rounded-md">
                      {explanationMode === 'instant' ? 'مع كل اختيار (فوري)' : 'في نهاية الاختبار فقط'}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">ترتيب الأسئلة:</span>
                    <span className="font-extrabold text-[#191A15]">
                      {orderMode === 'sequential' ? 'الترتيب الرسمي' : 'ترتيب عشوائي'}
                    </span>
                  </div>

                  <div className="flex items-center justify-between py-2">
                    <span className="text-[#73786D]">المؤقت:</span>
                    <span className="font-extrabold text-[#191A15]">
                      {timerEnabled ? `${currentExam.durationMinutes} دقيقة` : 'وقت مفتوح'}
                    </span>
                  </div>
                </div>
              </div>

              <button
                type="button"
                onClick={handleLaunch}
                className="w-full bg-[#1C1D18] hover:bg-[#2F322A] text-white py-4 rounded-2xl text-sm font-black shadow-lg flex items-center justify-center gap-2 transition-transform active:scale-98 cursor-pointer"
              >
                <Play className="w-5 h-5 fill-white" />
                <span>
                  انطلاق الاختبار الآن ({isRandomMode ? `${randomCount} سؤالاً عشوائياً` : `${currentExam.questionsCount} سؤالاً`})
                </span>
              </button>
            </div>
          )}

        </div>

        {/* Step Navigation Footer */}
        <div className="p-4 md:px-8 border-t border-[#F0F2EA] bg-white flex items-center justify-between gap-3">
          {currentStep > 1 ? (
            <button
              type="button"
              onClick={() => setCurrentStep(currentStep - 1)}
              className="px-5 py-2.5 rounded-2xl border border-gray-300 hover:bg-gray-50 text-xs font-bold text-gray-700 flex items-center gap-1.5 cursor-pointer transition-colors"
            >
              <ChevronRight className="w-4 h-4" />
              <span>السابق</span>
            </button>
          ) : (
            <div className="text-xs text-[#8E9387] font-medium">
              المرحلة 1 من 4
            </div>
          )}

          {currentStep < 4 ? (
            <button
              type="button"
              onClick={() => setCurrentStep(currentStep + 1)}
              className="px-6 py-2.5 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold flex items-center gap-1.5 cursor-pointer transition-colors"
            >
              <span>التالي ({stepLabels[currentStep].title})</span>
              <ChevronLeft className="w-4 h-4" />
            </button>
          ) : null}
        </div>

      </div>

    </div>
  );
}

function examYearLabel(yr) {
  if (yr === 'شامل') return 'شامل';
  return `دورة ${yr}`;
}
