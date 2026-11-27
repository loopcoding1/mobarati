import React, { useState, useEffect } from 'react';
import { 
  CheckCircle2, 
  XCircle, 
  AlertCircle, 
  RotateCcw, 
  Home, 
  Scale, 
  ChevronDown, 
  ChevronUp, 
  Sparkles,
  Printer
} from 'lucide-react';
import confetti from 'canvas-confetti';
import { AdBanner, SupportAdButton } from './Ads';

export default function ResultView({
  result,
  onRetakeAll,
  onRetakeMistakes,
  onGoHome
}) {
  const [filterType, setFilterType] = useState('all'); // 'all', 'incorrect', 'correct'
  const [expanded, setExpanded] = useState({});

  useEffect(() => {
    if (result.scorePercentage >= 50) {
      confetti({ particleCount: 70, spread: 60, origin: { y: 0.6 } });
    }
  }, [result.scorePercentage]);

  const toggleExpand = (qId) => {
    setExpanded(prev => ({ ...prev, [qId]: !prev[qId] }));
  };

  const isQuestionCorrect = (q) => {
    const userChoice = result.answers[q.id];
    if (!userChoice || userChoice.length === 0) return false;
    if (q.questionType === 'open') return userChoice[0] === '__correct';
    if (userChoice.length !== q.correctAnswers.length) return false;
    return q.correctAnswers.every(ans => userChoice.includes(ans));
  };

  const isQuestionSkipped = (q) => {
    const userChoice = result.answers[q.id];
    return !userChoice || userChoice.length === 0;
  };

  const filtered = result.questions.filter(q => {
    if (filterType === 'all') return true;
    if (filterType === 'correct') return isQuestionCorrect(q);
    if (filterType === 'incorrect') return !isQuestionCorrect(q);
    return true;
  });

  const getEvaluation = (pct) => {
    if (pct >= 80) return { text: 'مستوى ممتاز - جاهزية قوية للامتحان', color: 'text-emerald-700 bg-emerald-100' };
    if (pct >= 50) return { text: 'مستوى متوسط - يُستحسن ضبط الأخطاء', color: 'text-amber-800 bg-amber-100' };
    return { text: 'بحاجة لتكثيف التدريب وضبط القوانين', color: 'text-rose-700 bg-rose-100' };
  };

  const evaluation = getEvaluation(result.scorePercentage);

  return (
    <div className="max-w-3xl mx-auto px-4 py-6 md:py-10 space-y-6 print:p-0">
      {/* Result Card */}
      <div className="bg-white rounded-3xl p-6 md:p-8 border border-[#E6E8DE] shadow-xs text-center space-y-5">
        <div className="space-y-1.5">
          <div className="inline-flex items-center gap-1 px-3 py-1 rounded-full text-xs font-bold bg-[#EAECE3] text-[#484D41]">
            <Sparkles className="w-3.5 h-3.5 text-amber-600" />
            <span>نتيجة الاختبار</span>
          </div>
          <h1 className="text-xl md:text-2xl font-black text-[#191A15]">
            {result.examTitle}
          </h1>
          <p className="text-xs text-[#73786D]">{result.session}</p>
        </div>

        {/* Big Score Display */}
        <div className="py-2">
          <div className="text-5xl font-black text-[#191A15] tracking-tight">
            {result.scorePercentage}%
          </div>
          <div className="text-xs font-bold text-[#73786D] mt-1">
            {result.correctCount} إجابة صحيحة من أصل {result.totalQuestions}
          </div>
          <div className="mt-3">
            <span className={`text-xs font-black px-3 py-1 rounded-full ${evaluation.color}`}>
              {evaluation.text}
            </span>
          </div>
        </div>

        {/* Quick Stats Badges */}
        <div className="grid grid-cols-3 gap-2.5 pt-3 border-t border-[#F5F6F0]">
          <div className="p-3 rounded-2xl bg-emerald-50/70 border border-emerald-100">
            <div className="text-lg font-black text-emerald-800">{result.correctCount}</div>
            <div className="text-[10px] font-bold text-emerald-700">صحيحة</div>
          </div>
          <div className="p-3 rounded-2xl bg-rose-50/70 border border-rose-100">
            <div className="text-lg font-black text-rose-800">{result.incorrectCount}</div>
            <div className="text-[10px] font-bold text-rose-700">خاطئة</div>
          </div>
          <div className="p-3 rounded-2xl bg-amber-50/70 border border-amber-100">
            <div className="text-lg font-black text-amber-800">{result.skippedCount}</div>
            <div className="text-[10px] font-bold text-amber-700">متخطاة</div>
          </div>
        </div>

        {/* Action Buttons */}
        <div className="flex flex-col sm:flex-row items-center gap-2 pt-2">
          {result.incorrectCount + result.skippedCount > 0 && (
            <button
              onClick={() => onRetakeMistakes(result)}
              className="w-full sm:flex-1 py-3 px-4 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
            >
              <RotateCcw className="w-3.5 h-3.5" />
              <span>إعادة الأسئلة الخاطئة فقط ({result.incorrectCount + result.skippedCount})</span>
            </button>
          )}

          <button
            onClick={onRetakeAll}
            className="w-full sm:flex-1 py-3 px-4 rounded-2xl bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#191A15] text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
          >
            <RotateCcw className="w-3.5 h-3.5" />
            <span>إعادة الاختبار كاملاً</span>
          </button>

          <button
            onClick={onGoHome}
            className="w-full sm:w-auto py-3 px-4 rounded-2xl border border-gray-200 hover:bg-gray-50 text-[#555A4E] text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
          >
            <Home className="w-3.5 h-3.5" />
            <span>الرئيسية</span>
          </button>
        </div>
      </div>

      {/* Review Section */}
      <div className="space-y-3">
        <div className="flex items-center justify-between">
          <h2 className="text-sm font-extrabold text-[#191A15]">
            مراجعة الأسئلة والتعليلات القانونية
          </h2>
          <span className="text-xs text-[#73786D]">
            {filtered.length} سؤال
          </span>
        </div>

        {/* Filters */}
        <div className="flex items-center gap-1.5 bg-white p-1 rounded-2xl border border-[#E6E8DE]">
          <button
            onClick={() => setFilterType('all')}
            className={`flex-1 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
              filterType === 'all' ? 'bg-[#1C1D18] text-white' : 'text-[#73786D]'
            }`}
          >
            الكل ({result.totalQuestions})
          </button>

          <button
            onClick={() => setFilterType('incorrect')}
            className={`flex-1 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
              filterType === 'incorrect' ? 'bg-rose-600 text-white' : 'text-rose-700'
            }`}
          >
            الخاطئة والمتخطاة ({result.incorrectCount + result.skippedCount})
          </button>

          <button
            onClick={() => setFilterType('correct')}
            className={`flex-1 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
              filterType === 'correct' ? 'bg-emerald-600 text-white' : 'text-emerald-700'
            }`}
          >
            الصحيحة ({result.correctCount})
          </button>
        </div>

        {/* Questions List */}
        <div className="space-y-3">
          {filtered.map((q) => {
            const isCorrect = isQuestionCorrect(q);
            const isSkipped = isQuestionSkipped(q);
            const userChoices = result.answers[q.id] || [];
            const isExpanded = expanded[q.id] !== false;

            return (
              <div
                key={q.id}
                className={`bg-white rounded-3xl p-5 border transition-all ${
                  isCorrect ? 'border-emerald-200' : isSkipped ? 'border-amber-200' : 'border-rose-200'
                }`}
              >
                <div 
                  onClick={() => toggleExpand(q.id)}
                  className="flex items-start justify-between gap-3 cursor-pointer"
                >
                  <div className="flex items-start gap-2.5">
                    <span className={`w-7 h-7 rounded-xl text-xs font-black flex items-center justify-center shrink-0 ${
                      isCorrect ? 'bg-emerald-600 text-white' : isSkipped ? 'bg-amber-500 text-white' : 'bg-rose-500 text-white'
                    }`}>
                      Q{q.number}
                    </span>
                    <div>
                      <div className="flex items-center gap-1.5 mb-1">
                        <span className="text-[10px] font-bold bg-[#F5F6F0] text-[#555A4E] px-2 py-0.5 rounded-full">
                          {q.category}
                        </span>
                        {q.questionType === 'open' && (
                          <span className="text-[10px] font-bold text-amber-800 bg-amber-50 px-2 py-0.5 rounded-full">
                            سؤال مفتوح
                          </span>
                        )}
                        {isCorrect ? (
                          <span className="text-[10px] font-black text-emerald-700 bg-emerald-50 px-2 py-0.5 rounded-full">
                            صحيح ✓
                          </span>
                        ) : isSkipped ? (
                          <span className="text-[10px] font-black text-amber-700 bg-amber-50 px-2 py-0.5 rounded-full">
                            متخطى
                          </span>
                        ) : (
                          <span className="text-[10px] font-black text-rose-700 bg-rose-50 px-2 py-0.5 rounded-full">
                            خطأ ✗
                          </span>
                        )}
                      </div>
                      <h3 className="text-sm md:text-base font-extrabold text-[#191A15] leading-relaxed">
                        {q.text}
                      </h3>
                    </div>
                  </div>

                  <div className="text-gray-400 pt-1">
                    {isExpanded ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                  </div>
                </div>

                {isExpanded && (
                  <div className="mt-4 pt-3 border-t border-[#F5F6F0] space-y-3">
                    {/* Choices */}
                    <div className="space-y-1.5">
                      {q.questionType === 'open' && (
                        <div className="p-3 rounded-xl bg-amber-50/70 border border-amber-100 text-sm font-bold text-amber-900">
                          سؤال مفتوح (إجابة مكتوبة) — {isSkipped ? 'لم تقيّم إجابتك' : isCorrect ? 'قيّمت إجابتك: صحيحة ✓' : 'قيّمت إجابتك: خاطئة ✗'}
                        </div>
                      )}
                      {q.questionType !== 'open' && (!q.options || q.options.length === 0) && (
                        <div className="p-3 rounded-xl bg-amber-50/70 border border-amber-100 text-sm font-bold text-amber-900">
                          صيغة هذا السؤال غير متوفرة — الصفحة مفقودة من النسخة الممسوحة للامتحان.
                        </div>
                      )}
                      {q.questionType !== 'open' && q.options && q.options.length > 0 && q.options.map(opt => {
                        const isOptCorrect = q.correctAnswers.includes(opt.id);
                        const isUserChoice = userChoices.includes(opt.id);

                        let style = 'bg-[#FAFBF7] border-gray-100 text-gray-700';
                        if (isOptCorrect) {
                          style = 'bg-emerald-50 border-emerald-300 text-emerald-950 font-bold';
                        } else if (isUserChoice && !isOptCorrect) {
                          style = 'bg-rose-50 border-rose-300 text-rose-950 font-bold';
                        }

                        return (
                          <div 
                            key={opt.id}
                            className={`p-2.5 rounded-xl border text-sm flex items-start gap-2 ${style}`}
                          >
                            <span className="font-bold shrink-0">{opt.id}.</span>
                            <span className="flex-1">{opt.text}</span>
                            {isOptCorrect && (
                              <span className="text-[10px] font-bold text-emerald-800 bg-emerald-100 px-1.5 py-0.2 rounded shrink-0">
                                الجواب الصحيح
                              </span>
                            )}
                            {isUserChoice && !isOptCorrect && (
                              <span className="text-[10px] font-bold text-rose-800 bg-rose-100 px-1.5 py-0.2 rounded shrink-0">
                                إجابتك
                              </span>
                            )}
                          </div>
                        );
                      })}
                    </div>

                    {/* Explanation */}
                    <div className="p-3 rounded-xl bg-[#F7F9F2] border border-[#DEE3D3] space-y-1">
                      <div className="flex items-center gap-1 text-[11px] font-black text-[#264D36]">
                        <Scale className="w-3.5 h-3.5 text-emerald-700" />
                        <span>{q.questionType === 'open' ? 'الجواب النموذجي:' : 'التعليل والسند القانوني والمحاسبي:'}</span>
                      </div>
                      <p className="text-sm text-[#2F3D33] leading-relaxed bg-white p-2.5 rounded-lg border border-[#E3E7DA] whitespace-pre-line">
                        {q.explanation}
                      </p>
                    </div>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      </div>

      {/* إعلانات دعم المنصة — بانر + زر دعم (بلا Popunder) */}
      <div className="space-y-3">
        <AdBanner />
        <SupportAdButton />
      </div>
    </div>
  );
}
