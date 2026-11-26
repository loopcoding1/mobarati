import React, { useState, useEffect } from 'react';
import { 
  Clock, 
  Pause, 
  Play, 
  SkipForward, 
  Check, 
  X, 
  ChevronRight, 
  ChevronLeft, 
  CheckCircle2, 
  Scale, 
  Layers, 
  AlertTriangle,
  ArrowRight,
  Eye,
  PenLine,
  FileText
} from 'lucide-react';
import { sound } from '../utils/sound';

export default function ExamView({
  exam,
  questions,
  explanationMode, // 'instant' | 'end'
  timerEnabled,
  onFinishExam,
  onExit
}) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState({});
  const [confirmed, setConfirmed] = useState({});
  const [skipped, setSkipped] = useState({});
  const [showPalette, setShowPalette] = useState(false);
  const [showFinishConfirm, setShowFinishConfirm] = useState(false);
  const [openRevealed, setOpenRevealed] = useState({}); // { [questionId]: true } — الأسئلة المفتوحة التي عُرض جوابها النموذجي

  // Timer: default 180 minutes or exam.durationMinutes
  const totalSeconds = (exam.durationMinutes || 180) * 60;
  const [timeLeft, setTimeLeft] = useState(totalSeconds);
  const [isPaused, setIsPaused] = useState(false);

  const currentQ = questions[currentIndex];
  const userSelected = answers[currentQ.id] || [];
  const isQConfirmed = !!confirmed[currentQ.id];
  const isQSkipped = !!skipped[currentQ.id];

  // السؤال المفتوح (إجابة مكتوبة، بلا خيارات) والأسئلة التي لا خيارات لها أصلاً (صيغة مفقودة)
  const isOpenQ = currentQ.questionType === 'open';
  const hasNoOptions = !currentQ.options || currentQ.options.length === 0;
  const isOpenRevealed = !!openRevealed[currentQ.id];
  const openSelfMark = isOpenQ ? userSelected[0] : undefined;

  // In instant mode, reveal when answered or confirmed or skipped.
  // For open questions the model answer is revealed on demand, in either mode.
  const isRevealed = isOpenQ
    ? isOpenRevealed
    : (explanationMode === 'instant' && (isQConfirmed || userSelected.length > 0 || isQSkipped));

  // Timer interval
  useEffect(() => {
    if (!timerEnabled || isPaused || timeLeft <= 0) return;
    const interval = setInterval(() => {
      setTimeLeft(prev => {
        if (prev <= 1) {
          clearInterval(interval);
          handleSubmitExam();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);
    return () => clearInterval(interval);
  }, [timerEnabled, isPaused, timeLeft]);

  // Format timer
  const formatTime = (secs) => {
    const h = Math.floor(secs / 3600);
    const m = Math.floor((secs % 3600) / 60);
    const s = secs % 60;
    return `${h > 0 ? `${h}:` : ''}${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
  };

  const isAnswerCorrect = (q, choices) => {
    if (!choices || choices.length === 0) return false;
    // السؤال المفتوح: التقييم ذاتي — '__correct' يعني أن المستخدم قيّم إجابته صحيحة
    if (q.questionType === 'open') return choices[0] === '__correct';
    if (choices.length !== q.correctAnswers.length) return false;
    return q.correctAnswers.every(ans => choices.includes(ans));
  };

  // Select Option
  const handleSelectOption = (optId) => {
    sound.playClick();
    let updated;
    if (currentQ.isMultiple) {
      if (userSelected.includes(optId)) {
        updated = userSelected.filter(id => id !== optId);
      } else {
        updated = [...userSelected, optId];
      }
    } else {
      updated = [optId];
    }

    setAnswers(prev => ({ ...prev, [currentQ.id]: updated }));
    // If skipped, un-skip
    if (skipped[currentQ.id]) {
      setSkipped(prev => {
        const next = { ...prev };
        delete next[currentQ.id];
        return next;
      });
    }

    if (explanationMode === 'instant') {
      const correct = isAnswerCorrect(currentQ, updated);
      if (correct) sound.playCorrect();
      else sound.playIncorrect();
    }
  };

  // Confirm
  const handleConfirm = () => {
    if (userSelected.length === 0) return;
    setConfirmed(prev => ({ ...prev, [currentQ.id]: true }));
    if (explanationMode === 'instant') {
      const correct = isAnswerCorrect(currentQ, userSelected);
      if (correct) sound.playCorrect();
      else sound.playIncorrect();
    }
  };

  // Self-assessment for open questions ('__correct' / '__incorrect')
  const handleSelfMark = (mark) => {
    sound.playClick();
    setAnswers(prev => ({ ...prev, [currentQ.id]: [mark] }));
    setConfirmed(prev => ({ ...prev, [currentQ.id]: true }));
    if (skipped[currentQ.id]) {
      setSkipped(prev => {
        const next = { ...prev };
        delete next[currentQ.id];
        return next;
      });
    }
    if (mark === '__correct') sound.playCorrect();
    else sound.playIncorrect();
  };

  // Skip
  const handleSkip = () => {
    sound.playClick();
    setSkipped(prev => ({ ...prev, [currentQ.id]: true }));
    if (currentIndex < questions.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  // Next / Prev
  const handleNext = () => {
    sound.playClick();
    if (currentIndex < questions.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  const handlePrev = () => {
    sound.playClick();
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
    }
  };

  // Finish Exam
  const handleSubmitExam = () => {
    sound.playComplete();
    const timeSpentSeconds = timerEnabled ? (totalSeconds - timeLeft) : 0;
    let correctCount = 0;
    let incorrectCount = 0;
    let skippedCount = 0;

    questions.forEach(q => {
      const userChoice = answers[q.id];
      if (!userChoice || userChoice.length === 0) {
        skippedCount++;
      } else if (isAnswerCorrect(q, userChoice)) {
        correctCount++;
      } else {
        incorrectCount++;
      }
    });

    const total = questions.length;
    const scorePercentage = Math.round((correctCount / total) * 100);

    onFinishExam({
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
      questions,
      explanationMode
    });
  };

  const answeredCount = Object.keys(answers).filter(k => answers[k] && answers[k].length > 0).length;
  const progressPercent = Math.round(((currentIndex + 1) / questions.length) * 100);

  return (
    <div className="min-h-screen bg-[#F5F6F0] flex flex-col justify-between select-none">
      {/* Top Navbar */}
      <header className="bg-white border-b border-[#E6E8DE] px-4 py-3 sticky top-0 z-30 shadow-xs">
        <div className="max-w-4xl mx-auto flex items-center justify-between gap-2">
          {/* Exit & Question Counter */}
          <div className="flex items-center gap-2.5">
            <button
              onClick={onExit}
              className="p-1.5 rounded-xl text-xs font-bold text-[#73786D] hover:text-[#191A15] hover:bg-[#F5F6F0] transition-colors cursor-pointer"
              title="خروج إلى الرئيسية"
            >
              ← خروج
            </button>
            <div className="h-4 w-px bg-gray-200" />
            <div className="text-xs font-black text-[#191A15]">
              سؤال {currentIndex + 1} <span className="text-[#8E9387] font-medium">من {questions.length}</span>
            </div>
          </div>

          {/* Center: Timer (if enabled) */}
          {timerEnabled && (
            <div className="flex items-center gap-1.5 bg-[#F5F6F0] px-3 py-1 rounded-xl text-xs font-mono font-bold text-[#191A15]">
              <Clock className="w-3.5 h-3.5 text-[#555A4E]" />
              <span>{formatTime(timeLeft)}</span>
              <button
                onClick={() => setIsPaused(!isPaused)}
                className="text-[#73786D] hover:text-[#191A15] mr-1 cursor-pointer"
              >
                {isPaused ? <Play className="w-3 h-3 fill-current" /> : <Pause className="w-3 h-3" />}
              </button>
            </div>
          )}

          {/* Actions: PDF, Palette & Finish */}
          <div className="flex items-center gap-1.5">
            {exam.pdfUrl && (
              <a
                href={exam.pdfUrl}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl bg-[#F5F6F0] hover:bg-[#EAECE3] text-xs font-bold text-[#191A15] transition-colors cursor-pointer"
                title="عرض ورقة الامتحان الأصلية (PDF)"
              >
                <FileText className="w-3.5 h-3.5" />
                <span className="hidden sm:inline">PDF الامتحان</span>
              </a>
            )}

            <button
              onClick={() => setShowPalette(true)}
              className="flex items-center gap-1 px-2.5 py-1.5 rounded-xl bg-[#F5F6F0] hover:bg-[#EAECE3] text-xs font-bold text-[#191A15] transition-colors cursor-pointer"
            >
              <Layers className="w-3.5 h-3.5" />
              <span className="hidden sm:inline">الأسئلة</span>
            </button>

            <button
              onClick={() => setShowFinishConfirm(true)}
              className="px-3 py-1.5 rounded-xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold transition-colors cursor-pointer"
            >
              إنهاء
            </button>
          </div>
        </div>

        {/* Progress Bar */}
        <div className="max-w-4xl mx-auto w-full bg-[#EFF1E8] h-1 mt-2.5 rounded-full overflow-hidden">
          <div 
            className="bg-[#1C1D18] h-full transition-all duration-300"
            style={{ width: `${progressPercent}%` }}
          />
        </div>
      </header>

      {/* Main Question Area */}
      <main className="max-w-4xl mx-auto w-full px-4 py-5 md:py-8 flex-1">
        <div className="bg-white rounded-3xl p-5 md:p-8 border border-[#E6E8DE] shadow-xs space-y-5">
          {/* Question Badges */}
          <div className="flex items-center justify-between gap-2 pb-3 border-b border-[#F5F6F0]">
            <div className="flex items-center gap-2">
              <span className="w-7 h-7 rounded-xl bg-[#1C1D18] text-white text-xs font-black flex items-center justify-center">
                Q{currentQ.number}
              </span>
              <span className="text-[11px] font-bold bg-[#F5F6F0] text-[#555A4E] px-2.5 py-0.5 rounded-full">
                {currentQ.category}
              </span>
            </div>

            {isOpenQ ? (
              <span className="text-[10px] font-bold text-amber-800 bg-amber-50 px-2 py-0.5 rounded-full flex items-center gap-1">
                <PenLine className="w-3 h-3" />
                سؤال مفتوح
              </span>
            ) : currentQ.isMultiple ? (
              <span className="text-[10px] font-bold text-amber-800 bg-amber-50 px-2 py-0.5 rounded-full">
                متعدد الاختيارات
              </span>
            ) : (
              <span className="text-[10px] text-gray-500 bg-gray-50 px-2 py-0.5 rounded-full">
                اختيار واحد
              </span>
            )}
          </div>

          {/* Question Text */}
          <h2 className="text-lg md:text-xl font-extrabold text-[#191A15] leading-relaxed whitespace-pre-line">
            {currentQ.text}
          </h2>

          {/* Options */}
          <div className="space-y-2.5 pt-1">
            {isOpenQ && (
              <div className="p-4 rounded-2xl bg-amber-50/70 border border-amber-200 space-y-3">
                <p className="text-sm md:text-base font-bold text-amber-900 leading-relaxed">
                  هذا سؤال مفتوح (إجابة مكتوبة) — فكّر في جوابك، ثم اعرض الجواب النموذجي وقارن، وقيّم نفسك.
                </p>
                {!isOpenRevealed ? (
                  <button
                    onClick={() => { sound.playClick(); setOpenRevealed(prev => ({ ...prev, [currentQ.id]: true })); }}
                    className="px-4 py-2.5 rounded-2xl bg-[#1C1D18] text-white text-xs font-bold flex items-center gap-1.5 cursor-pointer hover:bg-[#2F322A] transition-colors"
                  >
                    <Eye className="w-4 h-4" />
                    <span>عرض الجواب النموذجي</span>
                  </button>
                ) : (
                  <div className="space-y-2">
                    <div className="flex items-center gap-2">
                      <button
                        onClick={() => handleSelfMark('__correct')}
                        className={`flex-1 px-4 py-2.5 rounded-2xl text-xs font-bold flex items-center justify-center gap-1.5 cursor-pointer transition-colors ${
                          openSelfMark === '__correct' ? 'bg-emerald-600 text-white' : 'bg-emerald-100 text-emerald-800 hover:bg-emerald-200'
                        }`}
                      >
                        <Check className="w-4 h-4 stroke-[3]" />
                        <span>أجبت بشكل صحيح</span>
                      </button>
                      <button
                        onClick={() => handleSelfMark('__incorrect')}
                        className={`flex-1 px-4 py-2.5 rounded-2xl text-xs font-bold flex items-center justify-center gap-1.5 cursor-pointer transition-colors ${
                          openSelfMark === '__incorrect' ? 'bg-rose-600 text-white' : 'bg-rose-100 text-rose-800 hover:bg-rose-200'
                        }`}
                      >
                        <X className="w-4 h-4 stroke-[3]" />
                        <span>أخطأت</span>
                      </button>
                    </div>
                    {openSelfMark && (
                      <p className="text-[11px] font-bold text-amber-800 text-center">
                        قيّمت نفسك: {openSelfMark === '__correct' ? 'صحيحة ✓' : 'خاطئة ✗'} — يمكنك تغيير تقييمك أو المتابعة للسؤال التالي.
                      </p>
                    )}
                  </div>
                )}
              </div>
            )}

            {!isOpenQ && hasNoOptions && (
              <div className="p-4 rounded-2xl bg-amber-50/70 border border-amber-200">
                <p className="text-sm md:text-base font-bold text-amber-900 leading-relaxed">
                  صيغة هذا السؤال غير متوفرة — الصفحة مفقودة من النسخة الممسوحة للامتحان، والجواب فقط معروف من مفتاح التصحيح الرسمي. يمكنك تخطيه والمتابعة.
                </p>
              </div>
            )}

            {!isOpenQ && !hasNoOptions && currentQ.options.map((opt) => {
              const isSelected = userSelected.includes(opt.id);
              const isOfficialCorrect = currentQ.correctAnswers.includes(opt.id);

              let cardStyle = 'bg-[#FAFBF7] hover:bg-[#F2F4EB] border-[#E8EADB] text-[#191A15]';
              let badgeStyle = 'bg-white border-[#DCDFD3] text-[#555A4E]';

              if (isRevealed) {
                if (isOfficialCorrect) {
                  cardStyle = 'bg-emerald-50 border-emerald-400 text-emerald-950 font-bold';
                  badgeStyle = 'bg-emerald-600 text-white border-emerald-600';
                } else if (isSelected && !isOfficialCorrect) {
                  cardStyle = 'bg-rose-50 border-rose-400 text-rose-950';
                  badgeStyle = 'bg-rose-500 text-white border-rose-500';
                } else {
                  cardStyle = 'bg-white/40 border-[#E8EADB] text-gray-400 opacity-60';
                }
              } else {
                if (isSelected) {
                  cardStyle = 'bg-[#1C1D18] text-white border-[#1C1D18] font-bold shadow-xs';
                  badgeStyle = 'bg-white/20 text-white border-transparent';
                }
              }

              return (
                <div
                  key={opt.id}
                  onClick={() => handleSelectOption(opt.id)}
                  className={`p-3.5 md:p-4 rounded-2xl border transition-all cursor-pointer flex items-start gap-3 active:scale-[0.99] ${cardStyle}`}
                >
                  <div className={`w-7 h-7 rounded-xl flex items-center justify-center font-bold text-xs shrink-0 border ${badgeStyle}`}>
                    {isRevealed && isOfficialCorrect ? (
                      <Check className="w-4 h-4 stroke-[3]" />
                    ) : isRevealed && isSelected && !isOfficialCorrect ? (
                      <X className="w-4 h-4 stroke-[3]" />
                    ) : (
                      opt.id
                    )}
                  </div>

                  <div className="flex-1 text-sm md:text-base leading-relaxed pt-0.5">
                    {opt.text}
                  </div>
                </div>
              );
            })}
          </div>

          {/* Explanation Card (Instant Feedback Mode) */}
          {isRevealed && (
            <div className="p-4 rounded-2xl bg-[#F7F9F2] border border-[#DEE3D3] space-y-2 animate-fadeIn">
              <div className="flex items-center gap-1.5 text-xs font-black text-[#264D36]">
                <Scale className="w-4 h-4 text-emerald-700" />
                <span>{isOpenQ ? 'الجواب النموذجي:' : 'التعليل الرسمي والسند القانوني والمحاسبي:'}</span>
              </div>
              <p className="text-sm md:text-base text-[#2F3D33] leading-relaxed font-medium bg-white p-3.5 rounded-xl border border-[#E3E7DA] whitespace-pre-line">
                {currentQ.explanation}
              </p>
              {!isOpenQ && (
                <div className="text-[10px] text-emerald-800 font-bold text-left">
                  الجواب المعتمد: ({currentQ.correctAnswers.join(', ')})
                </div>
              )}
            </div>
          )}
        </div>
      </main>

      {/* Sticky Bottom Action Bar for Mobile & Desktop */}
      <footer className="bg-white border-t border-[#E6E8DE] p-3 md:p-4 sticky bottom-0 z-20 shadow-lg">
        <div className="max-w-4xl mx-auto flex items-center justify-between gap-2">
          {/* Prev */}
          <button
            onClick={handlePrev}
            disabled={currentIndex === 0}
            className={`px-3 md:px-4 py-2.5 rounded-2xl text-xs font-bold transition-colors cursor-pointer flex items-center gap-1 ${
              currentIndex === 0 ? 'bg-gray-100 text-gray-400 cursor-not-allowed' : 'bg-[#F5F6F0] text-[#191A15] hover:bg-[#EAECE3]'
            }`}
          >
            <ChevronRight className="w-4 h-4" />
            <span className="hidden sm:inline">السابق</span>
          </button>

          {/* Center Actions: Skip & Confirm */}
          <div className="flex items-center gap-2">
            <button
              onClick={handleSkip}
              className="px-4 py-2.5 rounded-2xl bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#555A4E] text-xs font-bold transition-colors cursor-pointer flex items-center gap-1"
            >
              <SkipForward className="w-3.5 h-3.5" />
              <span>تخطي</span>
            </button>

            {explanationMode === 'instant' && !isOpenQ && !isQConfirmed && (
              <button
                onClick={handleConfirm}
                disabled={userSelected.length === 0}
                className={`px-4 py-2.5 rounded-2xl text-xs font-bold transition-colors cursor-pointer flex items-center gap-1 ${
                  userSelected.length === 0 ? 'bg-gray-100 text-gray-400 cursor-not-allowed' : 'bg-[#1C1D18] text-white hover:bg-[#2F322A]'
                }`}
              >
                <Check className="w-3.5 h-3.5" />
                <span>تأكيد الإجابة</span>
              </button>
            )}
          </div>

          {/* Next */}
          <button
            onClick={handleNext}
            disabled={currentIndex === questions.length - 1}
            className={`px-3 md:px-4 py-2.5 rounded-2xl text-xs font-bold transition-colors cursor-pointer flex items-center gap-1 ${
              currentIndex === questions.length - 1 ? 'bg-gray-100 text-gray-400 cursor-not-allowed' : 'bg-[#1C1D18] text-white hover:bg-[#2F322A]'
            }`}
          >
            <span className="hidden sm:inline">التالي</span>
            <ChevronLeft className="w-4 h-4" />
          </button>
        </div>
      </footer>

      {/* Palette Modal (Drawer) */}
      {showPalette && (
        <div className="fixed inset-0 z-50 bg-black/40 backdrop-blur-xs flex justify-end">
          <div className="w-full max-w-sm bg-white h-full shadow-2xl p-5 overflow-y-auto flex flex-col justify-between">
            <div>
              <div className="flex items-center justify-between pb-3 border-b border-[#E6E8DE]">
                <h3 className="text-sm font-extrabold text-[#191A15]">
                  قائمة الأسئلة ({questions.length} سؤال)
                </h3>
                <button
                  onClick={() => setShowPalette(false)}
                  className="w-7 h-7 rounded-lg bg-[#F5F6F0] flex items-center justify-center text-xs font-bold text-gray-500 hover:text-black cursor-pointer"
                >
                  ✕
                </button>
              </div>

              <div className="grid grid-cols-5 gap-2 pt-4">
                {questions.map((q, idx) => {
                  const isCur = idx === currentIndex;
                  const isAns = answers[q.id] && answers[q.id].length > 0;
                  const isSkp = skipped[q.id];

                  let color = 'bg-[#F5F6F0] text-gray-700';
                  if (isCur) color = 'bg-[#1C1D18] text-white font-black ring-2 ring-[#1C1D18]';
                  else if (isAns) color = 'bg-emerald-100 text-emerald-900 font-bold border border-emerald-300';
                  else if (isSkp) color = 'bg-amber-100 text-amber-900 border border-amber-300';

                  return (
                    <button
                      key={q.id}
                      onClick={() => {
                        setCurrentIndex(idx);
                        setShowPalette(false);
                      }}
                      className={`h-9 rounded-xl text-xs flex items-center justify-center transition-transform active:scale-95 cursor-pointer ${color}`}
                    >
                      {idx + 1}
                    </button>
                  );
                })}
              </div>
            </div>

            <div className="pt-4 border-t border-[#E6E8DE]">
              <button
                onClick={() => {
                  setShowPalette(false);
                  setShowFinishConfirm(true);
                }}
                className="w-full bg-[#1C1D18] text-white py-3 rounded-2xl text-xs font-bold hover:bg-[#2F322A] cursor-pointer"
              >
                إنهاء الاختبار الآن
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Confirm Finish Modal */}
      {showFinishConfirm && (
        <div className="fixed inset-0 z-50 bg-black/40 backdrop-blur-xs flex items-center justify-center p-4">
          <div className="bg-white rounded-3xl p-6 max-w-sm w-full border border-[#E6E8DE] shadow-xl space-y-4 text-center">
            <div className="w-12 h-12 rounded-2xl bg-amber-50 text-amber-600 flex items-center justify-center mx-auto">
              <AlertTriangle className="w-6 h-6" />
            </div>
            <div>
              <h3 className="text-base font-extrabold text-[#191A15]">
                هل ترغب في إنهاء الاختبار؟
              </h3>
              <p className="text-xs text-[#73786D] mt-1 leading-relaxed">
                أجبت عن <span className="font-bold text-[#191A15]">{answeredCount}</span> من أصل <span className="font-bold text-[#191A15]">{questions.length}</span> سؤالاً.
              </p>
            </div>
            <div className="flex items-center gap-2 pt-2">
              <button
                onClick={() => setShowFinishConfirm(false)}
                className="flex-1 py-2.5 rounded-xl border border-gray-300 text-xs font-bold text-gray-700 hover:bg-gray-50 cursor-pointer"
              >
                متابعة
              </button>
              <button
                onClick={() => {
                  setShowFinishConfirm(false);
                  handleSubmitExam();
                }}
                className="flex-1 py-2.5 rounded-xl bg-[#1C1D18] text-white text-xs font-bold hover:bg-[#2F322A] cursor-pointer"
              >
                تأكيد الإنهاء
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
