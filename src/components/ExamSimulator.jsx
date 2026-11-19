import React, { useState, useEffect, useRef } from 'react';
import { 
  Clock, 
  Pause, 
  Play, 
  SkipForward, 
  Check, 
  X, 
  Bookmark, 
  BookmarkCheck, 
  HelpCircle, 
  AlertTriangle, 
  ChevronRight, 
  ChevronLeft, 
  CheckCircle2, 
  Sparkles, 
  BookOpen, 
  Scale, 
  Eye, 
  RotateCcw,
  Zap,
  ListFilter,
  Layers,
  Award
} from 'lucide-react';
import { sound } from '../utils/sound';

export default function ExamSimulator({ 
  exam, 
  examMode, 
  setExamMode, 
  onFinishExam, 
  onExit,
  initialQuestionIndex = 0,
  filterOnlyMistakes = false,
  customQuestions = null
}) {
  const allQuestions = customQuestions || exam.questions;
  const [currentIndex, setCurrentIndex] = useState(initialQuestionIndex);
  
  // User answers map: { [questionId]: ['A', ...] }
  const [answers, setAnswers] = useState({});
  // Confirmed questions: { [questionId]: true }
  const [confirmed, setConfirmed] = useState({});
  // Skipped questions: { [questionId]: true }
  const [skipped, setSkipped] = useState({});
  // Flagged/Bookmarked questions: { [questionId]: true }
  const [flagged, setFlagged] = useState({});

  // Trigger feedback preference when in instant mode: 'on_confirm' (عند التأكيد) or 'on_select' (فور الاختيار)
  const [feedbackTrigger, setFeedbackTrigger] = useState('on_confirm');

  // Timer: 180 minutes in seconds (180 * 60 = 10800 seconds)
  const [timeLeft, setTimeLeft] = useState(exam.durationMinutes * 60);
  const [isTimerPaused, setIsTimerPaused] = useState(false);
  const [showPalette, setShowPalette] = useState(false);
  const [showSubmitConfirm, setShowSubmitConfirm] = useState(false);

  // Current Question
  const currentQ = allQuestions[currentIndex];
  const userSelected = answers[currentQ.id] || [];
  const isQConfirmed = !!confirmed[currentQ.id];
  const isQSkipped = !!skipped[currentQ.id];
  const isQFlagged = !!flagged[currentQ.id];

  // Should we show the explanation for this question?
  // In instant mode: if confirmed, or if feedbackTrigger is 'on_select' and user has chosen, or if skipped
  const showExplanation = examMode === 'instant' && (
    isQConfirmed || 
    (feedbackTrigger === 'on_select' && userSelected.length > 0) || 
    isQSkipped
  );

  // Timer Effect
  useEffect(() => {
    if (isTimerPaused || timeLeft <= 0) return;
    const interval = setInterval(() => {
      setTimeLeft(prev => {
        if (prev <= 1) {
          clearInterval(interval);
          handleAutoSubmit();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);
    return () => clearInterval(interval);
  }, [isTimerPaused, timeLeft]);

  // Format seconds to HH:MM:SS
  const formatTime = (secs) => {
    const hours = Math.floor(secs / 3600);
    const minutes = Math.floor((secs % 3600) / 60);
    const seconds = secs % 60;
    return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
  };

  // Toggle option selection
  const handleSelectOption = (optionId) => {
    // If question is confirmed in instant mode with on_confirm, allow changing only before confirm
    if (isQConfirmed && examMode === 'instant') return;

    sound.playClick();
    let updated;
    if (currentQ.isMultiple) {
      if (userSelected.includes(optionId)) {
        updated = userSelected.filter(id => id !== optionId);
      } else {
        updated = [...userSelected, optionId];
      }
    } else {
      updated = [optionId];
    }

    setAnswers(prev => ({ ...prev, [currentQ.id]: updated }));
    // Remove skipped state once an option is selected
    if (skipped[currentQ.id]) {
      setSkipped(prev => {
        const next = { ...prev };
        delete next[currentQ.id];
        return next;
      });
    }

    // If instant mode with on_select, evaluate sound immediately
    if (examMode === 'instant' && feedbackTrigger === 'on_select') {
      const isCorrect = isAnswerCorrect(currentQ, updated);
      if (isCorrect) sound.playCorrect();
      else sound.playIncorrect();
    }
  };

  // Check if answers match correctAnswers
  const isAnswerCorrect = (q, userChoices) => {
    if (!userChoices || userChoices.length === 0) return false;
    if (userChoices.length !== q.correctAnswers.length) return false;
    return q.correctAnswers.every(ans => userChoices.includes(ans));
  };

  // Confirm Answer Button
  const handleConfirmAnswer = () => {
    if (userSelected.length === 0) return;
    setConfirmed(prev => ({ ...prev, [currentQ.id]: true }));

    if (examMode === 'instant') {
      const isCorrect = isAnswerCorrect(currentQ, userSelected);
      if (isCorrect) sound.playCorrect();
      else sound.playIncorrect();
    }
  };

  // Skip Question Button
  const handleSkipQuestion = () => {
    sound.playClick();
    setSkipped(prev => ({ ...prev, [currentQ.id]: true }));
    if (currentIndex < allQuestions.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  // Toggle Flag Question
  const handleToggleFlag = () => {
    sound.playClick();
    setFlagged(prev => ({ ...prev, [currentQ.id]: !prev[currentQ.id] }));
  };

  // Navigation: Next / Prev
  const handleNext = () => {
    sound.playClick();
    if (currentIndex < allQuestions.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  const handlePrev = () => {
    sound.playClick();
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
    }
  };

  // Auto submit when time runs out
  const handleAutoSubmit = () => {
    sound.playComplete();
    completeExamSubmission();
  };

  // Complete exam submission
  const completeExamSubmission = () => {
    const timeSpentSeconds = (exam.durationMinutes * 60) - timeLeft;
    let correctCount = 0;
    let incorrectCount = 0;
    let skippedCount = 0;

    allQuestions.forEach(q => {
      const userChoice = answers[q.id];
      if (!userChoice || userChoice.length === 0) {
        skippedCount++;
      } else if (isAnswerCorrect(q, userChoice)) {
        correctCount++;
      } else {
        incorrectCount++;
      }
    });

    const total = allQuestions.length;
    const scorePercentage = Math.round((correctCount / total) * 100);

    const result = {
      examId: exam.id,
      examTitle: exam.title,
      session: exam.session,
      totalQuestions: total,
      correctCount,
      incorrectCount,
      skippedCount,
      scorePercentage,
      timeSpentSeconds,
      answers,
      date: new Date().toISOString(),
      questions: allQuestions,
      examMode
    };

    onFinishExam(result);
  };

  // Question state helper for the palette
  const getQuestionState = (q, idx) => {
    const isCurrent = idx === currentIndex;
    const isAns = answers[q.id] && answers[q.id].length > 0;
    const isFlg = flagged[q.id];
    const isSkp = skipped[q.id];
    const isConf = confirmed[q.id];

    if (isCurrent) return 'current';
    if (isFlg) return 'flagged';
    if (isConf || isAns) return 'answered';
    if (isSkp) return 'skipped';
    return 'unanswered';
  };

  // Count answered questions
  const answeredCount = Object.keys(answers).filter(k => answers[k] && answers[k].length > 0).length;
  const progressPercent = Math.round(((currentIndex + 1) / allQuestions.length) * 100);

  return (
    <div className="min-h-screen bg-[#F5F6F0] flex flex-col justify-between select-none">
      {/* Top Floating Exam Navbar */}
      <div className="bg-white border-b border-[#E6E8DE] px-6 py-3.5 sticky top-0 z-30 shadow-[0_2px_8px_rgba(0,0,0,0.02)]">
        <div className="max-w-7xl mx-auto flex items-center justify-between gap-4">
          {/* Right: Breadcrumb & Title */}
          <div className="flex items-center gap-3">
            <button
              onClick={onExit}
              className="text-xs font-bold text-[#73786D] hover:text-[#191A15] px-2.5 py-1.5 rounded-xl hover:bg-[#F5F6F0] transition-colors cursor-pointer"
            >
              ← خروج
            </button>
            <div className="hidden sm:block h-4 w-px bg-[#E6E8DE]" />
            <div>
              <div className="text-xs font-extrabold text-[#191A15] truncate max-w-xs md:max-w-md">
                {exam.title}
              </div>
              <div className="text-[11px] text-[#73786D] flex items-center gap-2">
                <span>{exam.session}</span>
                <span>•</span>
                <span className="text-emerald-700 font-semibold">{exam.targetAudience}</span>
              </div>
            </div>
          </div>

          {/* Center: Live Timer */}
          <div className="flex items-center gap-2 bg-[#F8F9F5] border border-[#E2E4DA] px-4 py-1.5 rounded-2xl">
            <Clock className={`w-4 h-4 ${timeLeft < 600 ? 'text-red-500 animate-pulse' : 'text-[#555A4E]'}`} />
            <span className={`text-sm font-mono font-extrabold ${timeLeft < 600 ? 'text-red-600' : 'text-[#191A15]'}`}>
              {formatTime(timeLeft)}
            </span>
            <button
              onClick={() => setIsTimerPaused(!isTimerPaused)}
              title={isTimerPaused ? 'استئناف الوقت' : 'إيقاف مؤقت'}
              className="w-6 h-6 rounded-lg bg-white border border-[#D5D8CC] flex items-center justify-center text-[#555A4E] hover:text-[#191A15] cursor-pointer"
            >
              {isTimerPaused ? <Play className="w-3 h-3 fill-current" /> : <Pause className="w-3 h-3" />}
            </button>
          </div>

          {/* Left: Mode Switcher & Finish Button */}
          <div className="flex items-center gap-3">
            {/* Mode selection toggle */}
            <div className="hidden md:flex items-center bg-[#F5F6F0] p-1 rounded-2xl border border-[#E6E8DE] text-xs">
              <button
                onClick={() => setExamMode('instant')}
                className={`px-3 py-1 rounded-xl font-bold flex items-center gap-1 transition-all cursor-pointer ${
                  examMode === 'instant' ? 'bg-white text-[#191A15] shadow-xs' : 'text-[#73786D]'
                }`}
              >
                <Zap className="w-3 h-3 text-amber-500 fill-amber-500" />
                <span>تدريب فوري</span>
              </button>
              <button
                onClick={() => setExamMode('simulation')}
                className={`px-3 py-1 rounded-xl font-bold flex items-center gap-1 transition-all cursor-pointer ${
                  examMode === 'simulation' ? 'bg-[#1C1D18] text-white shadow-xs' : 'text-[#73786D]'
                }`}
              >
                <span>محاكاة واقعية</span>
              </button>
            </div>

            {/* Questions Palette Toggle */}
            <button
              onClick={() => setShowPalette(!showPalette)}
              className="flex items-center gap-1.5 bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#191A15] px-3.5 py-2 rounded-2xl text-xs font-bold transition-colors cursor-pointer"
            >
              <Layers className="w-3.5 h-3.5" />
              <span>شبكة الأسئلة ({currentIndex + 1}/{allQuestions.length})</span>
            </button>

            {/* Finish Exam Button */}
            <button
              onClick={() => setShowSubmitConfirm(true)}
              className="bg-[#1C1D18] hover:bg-[#2F322A] text-white px-4 py-2 rounded-2xl text-xs font-bold transition-all shadow-sm cursor-pointer"
            >
              إنهاء الاختبار
            </button>
          </div>
        </div>

        {/* Progress Line */}
        <div className="w-full bg-[#EFF1E8] h-1.5 mt-2 rounded-full overflow-hidden">
          <div 
            className="bg-[#1C1D18] h-full transition-all duration-300 rounded-full"
            style={{ width: `${progressPercent}%` }}
          />
        </div>
      </div>

      {/* Main Container */}
      <div className="max-w-5xl mx-auto w-full px-6 py-8 flex-1">
        {/* Question Header Card */}
        <div className="bg-white rounded-3xl p-6 md:p-8 border border-[#E6E8DE] shadow-xs space-y-6">
          {/* Meta & Badges */}
          <div className="flex flex-wrap items-center justify-between gap-3 pb-4 border-b border-[#F5F6F0]">
            <div className="flex items-center gap-2">
              <span className="w-8 h-8 rounded-xl bg-[#1C1D18] text-white flex items-center justify-center font-black text-sm">
                Q{currentQ.number}
              </span>
              <span className="text-xs font-bold text-[#8E9387]">
                سؤال رقم {currentQ.number} من {allQuestions.length}
              </span>
              <span className="text-[11px] font-bold bg-[#F5F6F0] text-[#555A4E] px-2.5 py-1 rounded-full">
                {currentQ.category}
              </span>
            </div>

            <div className="flex items-center gap-2">
              {currentQ.isMultiple ? (
                <span className="text-[11px] font-bold text-amber-800 bg-amber-50 border border-amber-200 px-2.5 py-1 rounded-full">
                  يمكن اختيار أكثر من جواب
                </span>
              ) : (
                <span className="text-[11px] font-bold text-slate-700 bg-slate-100 px-2.5 py-1 rounded-full">
                  اختيار جواب واحد
                </span>
              )}

              {/* Bookmark/Flag Button */}
              <button
                onClick={handleToggleFlag}
                className={`p-2 rounded-xl border text-xs font-bold flex items-center gap-1.5 transition-colors cursor-pointer ${
                  isQFlagged
                    ? 'bg-amber-100 text-amber-900 border-amber-300'
                    : 'bg-[#F5F6F0] text-[#73786D] border-transparent hover:border-[#D5D8CC]'
                }`}
                title={isQFlagged ? 'إلغاء التمييز' : 'تمييز للمراجعة لاحقاً'}
              >
                {isQFlagged ? <BookmarkCheck className="w-4 h-4 fill-amber-500 text-amber-600" /> : <Bookmark className="w-4 h-4" />}
                <span className="hidden sm:inline">{isQFlagged ? 'مميز بعلامة' : 'تمييز'}</span>
              </button>
            </div>
          </div>

          {/* Question Text */}
          <div className="space-y-2">
            <h2 className="text-lg md:text-xl font-extrabold text-[#191A15] leading-relaxed whitespace-pre-line">
              {currentQ.text}
            </h2>
          </div>

          {/* Options List */}
          <div className="space-y-3 pt-2">
            {currentQ.options.map((opt) => {
              const isSelected = userSelected.includes(opt.id);
              const isOfficialCorrect = currentQ.correctAnswers.includes(opt.id);

              // Styling states based on mode
              let cardClass = 'bg-[#FAFBF7] border-[#E8EADB] text-[#191A15] hover:bg-[#F2F4EB] hover:border-[#D5D8CC]';
              let badgeClass = 'bg-white border-[#DCDFD3] text-[#555A4E]';

              if (showExplanation) {
                // We are revealing answers!
                if (isOfficialCorrect) {
                  cardClass = 'bg-emerald-50/80 border-emerald-500 text-emerald-950 font-bold shadow-xs';
                  badgeClass = 'bg-emerald-600 text-white border-emerald-600';
                } else if (isSelected && !isOfficialCorrect) {
                  cardClass = 'bg-rose-50/80 border-rose-400 text-rose-950';
                  badgeClass = 'bg-rose-500 text-white border-rose-500';
                } else {
                  cardClass = 'bg-white/50 border-[#E8EADB] text-gray-400 opacity-60';
                }
              } else {
                // Regular testing mode
                if (isSelected) {
                  cardClass = 'bg-[#1C1D18] border-[#1C1D18] text-white font-bold shadow-sm';
                  badgeClass = 'bg-white/20 text-white border-transparent';
                }
              }

              return (
                <div
                  key={opt.id}
                  onClick={() => handleSelectOption(opt.id)}
                  className={`p-4 rounded-2xl border transition-all duration-200 cursor-pointer flex items-start gap-3.5 ${cardClass}`}
                >
                  {/* Option letter pill */}
                  <div className={`w-8 h-8 rounded-xl flex items-center justify-center font-bold text-xs shrink-0 border ${badgeClass}`}>
                    {showExplanation && isOfficialCorrect ? (
                      <Check className="w-4 h-4 stroke-[3]" />
                    ) : showExplanation && isSelected && !isOfficialCorrect ? (
                      <X className="w-4 h-4 stroke-[3]" />
                    ) : (
                      opt.id
                    )}
                  </div>

                  {/* Option text */}
                  <div className="flex-1 text-xs md:text-sm leading-relaxed pt-1">
                    {opt.text}
                  </div>

                  {/* Check indicator if correct in explanation mode */}
                  {showExplanation && isOfficialCorrect && (
                    <span className="text-[11px] font-extrabold bg-emerald-600 text-white px-2 py-0.5 rounded-full shrink-0">
                      الجواب الصحيح
                    </span>
                  )}
                </div>
              );
            })}
          </div>

          {/* Instant Mode: Explanation Card (التعليل والسند القانوني والمحاسبي) */}
          {showExplanation && (
            <div className="mt-6 p-5 rounded-2xl bg-[#F7F9F2] border border-[#DEE3D3] space-y-3 animate-fadeIn">
              <div className="flex items-center gap-2 text-xs font-black text-[#264D36]">
                <Scale className="w-4 h-4 text-emerald-700" />
                <span>التعليل الرسمي والسند القانوني / المحاسبي:</span>
              </div>
              <p className="text-xs md:text-sm text-[#2F3D33] leading-relaxed font-medium bg-white p-4 rounded-xl border border-[#E3E7DA] shadow-xs whitespace-pre-line">
                {currentQ.explanation}
              </p>
              <div className="flex items-center justify-between text-[11px] text-[#768072] pt-1">
                <span>المصدر: نصوص مباراة سلك أطر التدبير - دورة أكتوبر 2024</span>
                <span className="font-bold text-emerald-800">
                  الجواب المعتمد: ({currentQ.correctAnswers.join(', ')})
                </span>
              </div>
            </div>
          )}

          {/* Instant mode trigger option toggle */}
          {examMode === 'instant' && (
            <div className="flex items-center justify-between pt-2 text-[11px] text-[#73786D] border-t border-[#F5F6F0]">
              <div className="flex items-center gap-2">
                <span>نمط إظهار التعليل:</span>
                <button
                  onClick={() => setFeedbackTrigger('on_confirm')}
                  className={`px-2 py-0.5 rounded-lg font-bold cursor-pointer ${
                    feedbackTrigger === 'on_confirm' ? 'bg-[#1C1D18] text-white' : 'bg-[#EAECE3]'
                  }`}
                >
                  عند الضغط على تأكيد
                </button>
                <button
                  onClick={() => setFeedbackTrigger('on_select')}
                  className={`px-2 py-0.5 rounded-lg font-bold cursor-pointer ${
                    feedbackTrigger === 'on_select' ? 'bg-[#1C1D18] text-white' : 'bg-[#EAECE3]'
                  }`}
                >
                  فور النقر على الخيار
                </button>
              </div>

              {isQConfirmed && (
                <span className="text-emerald-700 font-bold flex items-center gap-1">
                  <CheckCircle2 className="w-3.5 h-3.5" />
                  تم تثبيت إجابتك لهذا السؤال
                </span>
              )}
            </div>
          )}
        </div>

        {/* Action Controls Bar */}
        <div className="mt-6 flex flex-col sm:flex-row items-center justify-between gap-4 bg-white p-4 rounded-3xl border border-[#E6E8DE] shadow-xs">
          {/* Prev Button */}
          <button
            onClick={handlePrev}
            disabled={currentIndex === 0}
            className={`w-full sm:w-auto flex items-center justify-center gap-1 px-5 py-2.5 rounded-2xl text-xs font-bold transition-all cursor-pointer ${
              currentIndex === 0
                ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                : 'bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#191A15]'
            }`}
          >
            <ChevronRight className="w-4 h-4" />
            <span>السؤال السابق</span>
          </button>

          {/* Center: Skip & Confirm Buttons */}
          <div className="flex items-center gap-3 w-full sm:w-auto justify-center">
            {/* Skip Button */}
            <button
              onClick={handleSkipQuestion}
              className="flex-1 sm:flex-initial flex items-center justify-center gap-1.5 px-5 py-2.5 rounded-2xl text-xs font-bold bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#555A4E] transition-all cursor-pointer"
            >
              <SkipForward className="w-3.5 h-3.5" />
              <span>تخطي السؤال</span>
            </button>

            {/* Confirm Answer Button */}
            <button
              onClick={handleConfirmAnswer}
              disabled={userSelected.length === 0 || isQConfirmed}
              className={`flex-1 sm:flex-initial flex items-center justify-center gap-1.5 px-6 py-2.5 rounded-2xl text-xs font-bold transition-all cursor-pointer ${
                userSelected.length === 0 || isQConfirmed
                  ? 'bg-gray-200 text-gray-400 cursor-not-allowed'
                  : 'bg-[#1C1D18] hover:bg-[#2F322A] text-white shadow-sm'
              }`}
            >
              <Check className="w-4 h-4" />
              <span>{isQConfirmed ? 'تم التأكيد' : 'تأكيد الإجابة'}</span>
            </button>
          </div>

          {/* Next Button */}
          <button
            onClick={handleNext}
            disabled={currentIndex === allQuestions.length - 1}
            className={`w-full sm:w-auto flex items-center justify-center gap-1 px-5 py-2.5 rounded-2xl text-xs font-bold transition-all cursor-pointer ${
              currentIndex === allQuestions.length - 1
                ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                : 'bg-[#1C1D18] hover:bg-[#2F322A] text-white'
            }`}
          >
            <span>السؤال التالي</span>
            <ChevronLeft className="w-4 h-4" />
          </button>
        </div>
      </div>

      {/* Slide-over Question Palette Modal */}
      {showPalette && (
        <div className="fixed inset-0 z-50 bg-black/30 backdrop-blur-xs flex justify-end">
          <div className="w-full max-w-md bg-white h-full shadow-2xl p-6 overflow-y-auto flex flex-col justify-between">
            <div>
              <div className="flex items-center justify-between pb-4 border-b border-[#E6E8DE]">
                <div>
                  <h3 className="text-base font-extrabold text-[#191A15]">
                    شبكة أسئلة الاختبار ({allQuestions.length} سؤال)
                  </h3>
                  <div className="text-xs text-[#73786D] mt-0.5">
                    اضغط على أي رقم للانتقال المباشر
                  </div>
                </div>
                <button
                  onClick={() => setShowPalette(false)}
                  className="w-8 h-8 rounded-xl bg-[#F5F6F0] flex items-center justify-center text-[#73786D] hover:text-[#191A15] cursor-pointer"
                >
                  ✕
                </button>
              </div>

              {/* Status Legend */}
              <div className="grid grid-cols-2 gap-2 my-4 text-[11px] font-bold">
                <div className="flex items-center gap-2 p-2 rounded-xl bg-emerald-50 text-emerald-800">
                  <div className="w-3 h-3 rounded-full bg-emerald-600" />
                  <span>تمت الإجابة ({answeredCount})</span>
                </div>
                <div className="flex items-center gap-2 p-2 rounded-xl bg-amber-50 text-amber-800">
                  <div className="w-3 h-3 rounded-full bg-amber-500" />
                  <span>مميز بعلامة ({Object.values(flagged).filter(Boolean).length})</span>
                </div>
                <div className="flex items-center gap-2 p-2 rounded-xl bg-gray-100 text-gray-700">
                  <div className="w-3 h-3 rounded-full bg-gray-400" />
                  <span>متخطى ({Object.values(skipped).filter(Boolean).length})</span>
                </div>
                <div className="flex items-center gap-2 p-2 rounded-xl bg-white border text-gray-500">
                  <div className="w-3 h-3 rounded-full bg-gray-200" />
                  <span>لم يُجب بعد</span>
                </div>
              </div>

              {/* Grid of numbers */}
              <div className="grid grid-cols-6 gap-2 pt-2">
                {allQuestions.map((q, idx) => {
                  const state = getQuestionState(q, idx);
                  let btnColor = 'bg-[#F5F6F0] text-[#555A4E] border border-transparent';

                  if (state === 'current') {
                    btnColor = 'ring-2 ring-[#1C1D18] bg-[#1C1D18] text-white font-black';
                  } else if (state === 'flagged') {
                    btnColor = 'bg-amber-100 text-amber-900 border-amber-300 font-bold';
                  } else if (state === 'answered') {
                    btnColor = 'bg-emerald-100 text-emerald-900 border-emerald-300 font-bold';
                  } else if (state === 'skipped') {
                    btnColor = 'bg-rose-50 text-rose-800 border-rose-200';
                  }

                  return (
                    <button
                      key={q.id}
                      onClick={() => {
                        setCurrentIndex(idx);
                        setShowPalette(false);
                      }}
                      className={`h-10 rounded-xl text-xs flex items-center justify-center transition-transform active:scale-95 cursor-pointer ${btnColor}`}
                    >
                      {q.number}
                    </button>
                  );
                })}
              </div>
            </div>

            <div className="pt-6 border-t border-[#E6E8DE]">
              <button
                onClick={() => {
                  setShowPalette(false);
                  setShowSubmitConfirm(true);
                }}
                className="w-full bg-[#1C1D18] text-white py-3 rounded-2xl text-xs font-bold hover:bg-[#2F322A] transition-colors cursor-pointer"
              >
                إنهاء الاختبار وعرض النتائج
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Confirmation Modal to finish exam */}
      {showSubmitConfirm && (
        <div className="fixed inset-0 z-50 bg-black/40 backdrop-blur-xs flex items-center justify-center p-4">
          <div className="bg-white rounded-3xl p-6 md:p-8 max-w-md w-full border border-[#E6E8DE] shadow-2xl space-y-5 text-center">
            <div className="w-14 h-14 rounded-2xl bg-amber-50 text-amber-600 flex items-center justify-center mx-auto">
              <AlertTriangle className="w-7 h-7" />
            </div>

            <div>
              <h3 className="text-lg font-extrabold text-[#191A15]">
                هل ترغب في إنهاء الاختبار الآن؟
              </h3>
              <p className="text-xs text-[#73786D] mt-1.5 leading-relaxed">
                لقد أجبت عن <span className="font-bold text-[#191A15]">{answeredCount}</span> من أصل <span className="font-bold text-[#191A15]">{allQuestions.length}</span> سؤالاً. 
                {allQuestions.length - answeredCount > 0 && (
                  <span className="text-amber-700 block mt-1">
                    (تبقى {allQuestions.length - answeredCount} سؤال بدون إجابة)
                  </span>
                )}
              </p>
            </div>

            <div className="flex items-center gap-3 pt-2">
              <button
                onClick={() => setShowSubmitConfirm(false)}
                className="flex-1 py-3 rounded-2xl border border-[#D5D8CC] text-xs font-bold text-[#555A4E] hover:bg-[#F5F6F0] transition-colors cursor-pointer"
              >
                مواصلة الاختبار
              </button>
              <button
                onClick={() => {
                  setShowSubmitConfirm(false);
                  completeExamSubmission();
                }}
                className="flex-1 py-3 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold transition-colors cursor-pointer"
              >
                تأكيد الإنهاء والتقييم
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
