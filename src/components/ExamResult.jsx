import React, { useState, useEffect } from 'react';
import { 
  Award, 
  CheckCircle2, 
  XCircle, 
  AlertCircle, 
  Clock, 
  RotateCcw, 
  Printer, 
  Home, 
  Filter, 
  Scale, 
  ChevronDown, 
  ChevronUp, 
  Sparkles,
  ArrowRight,
  BookOpen,
  Share2
} from 'lucide-react';
import confetti from 'canvas-confetti';

export default function ExamResult({ 
  result, 
  onRetakeAll, 
  onRetakeMistakes, 
  onGoHome 
}) {
  const [filterType, setFilterType] = useState('all'); // 'all', 'incorrect', 'correct', 'skipped'
  const [expandedQuestions, setExpandedQuestions] = useState({});

  useEffect(() => {
    // Launch celebratory confetti if score is >= 50%
    if (result.scorePercentage >= 50) {
      confetti({
        particleCount: 80,
        spread: 70,
        origin: { y: 0.6 }
      });
    }
  }, [result.scorePercentage]);

  const toggleExpand = (qId) => {
    setExpandedQuestions(prev => ({ ...prev, [qId]: !prev[qId] }));
  };

  const expandAll = () => {
    const all = {};
    result.questions.forEach(q => { all[q.id] = true; });
    setExpandedQuestions(all);
  };

  const collapseAll = () => {
    setExpandedQuestions({});
  };

  // Helper to test if question was answered correctly
  const isQuestionCorrect = (q) => {
    const userChoice = result.answers[q.id];
    if (!userChoice || userChoice.length === 0) return false;
    if (userChoice.length !== q.correctAnswers.length) return false;
    return q.correctAnswers.every(ans => userChoice.includes(ans));
  };

  const isQuestionSkipped = (q) => {
    const userChoice = result.answers[q.id];
    return !userChoice || userChoice.length === 0;
  };

  // Filter questions based on active tab
  const filteredQuestions = result.questions.filter(q => {
    if (filterType === 'all') return true;
    if (filterType === 'correct') return isQuestionCorrect(q);
    if (filterType === 'incorrect') return !isQuestionCorrect(q) && !isQuestionSkipped(q);
    if (filterType === 'skipped') return isQuestionSkipped(q);
    return true;
  });

  // Score badge evaluation text
  const getEvaluation = (pct) => {
    if (pct >= 85) return { text: 'مستوى ممتاز - جاهزية تامة للمباراة', color: 'text-emerald-700 bg-emerald-100 border-emerald-300' };
    if (pct >= 70) return { text: 'مستوى جيد جداً - مؤهل لاجتياز الكتابي', color: 'text-emerald-600 bg-emerald-50 border-emerald-200' };
    if (pct >= 50) return { text: 'مستوى متوسط - يُستحسن ضبط الثغرات في الصفقات والمالية', color: 'text-amber-700 bg-amber-50 border-amber-200' };
    return { text: 'بحاجة إلى تكثيف المراجعة القانونية والمحاسبية', color: 'text-rose-700 bg-rose-50 border-rose-200' };
  };

  const evaluation = getEvaluation(result.scorePercentage);

  // Format time
  const minutesSpent = Math.floor(result.timeSpentSeconds / 60);
  const secondsSpent = result.timeSpentSeconds % 60;

  return (
    <div className="min-h-screen bg-[#F5F6F0] py-10 px-6 select-none print:bg-white print:p-0">
      <div className="max-w-4xl mx-auto space-y-8">
        {/* Top Header Card: Score & Evaluation */}
        <div className="bg-white rounded-3xl p-8 border border-[#E6E8DE] shadow-xs text-center space-y-6 relative overflow-hidden">
          <div className="max-w-xl mx-auto space-y-3">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full text-xs font-extrabold border uppercase tracking-wider mb-2">
              <Sparkles className="w-3.5 h-3.5 text-amber-500" />
              <span>تقرير نتائج الاختبار الرسمي</span>
            </div>

            <h1 className="text-2xl md:text-3xl font-black text-[#191A15]">
              {result.examTitle}
            </h1>
            <p className="text-xs text-[#73786D] font-medium">
              {result.session} • مسلك مختصي الاقتصاد والإدارة
            </p>

            {/* Score Ring Display */}
            <div className="py-6 flex flex-col items-center justify-center">
              <div className="relative w-44 h-44 rounded-full bg-[#FAFBF7] border-8 border-[#EFF1E8] flex flex-col items-center justify-center shadow-inner">
                <span className="text-4xl font-black text-[#191A15] tracking-tight">
                  {result.scorePercentage}%
                </span>
                <span className="text-xs font-extrabold text-[#73786D] mt-1">
                  {result.correctCount} من {result.totalQuestions} صحيح
                </span>
              </div>

              <div className="mt-4">
                <span className={`text-xs font-black px-4 py-1.5 rounded-full border ${evaluation.color}`}>
                  {evaluation.text}
                </span>
              </div>
            </div>
          </div>

          {/* Metrics Row */}
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 pt-4 border-t border-[#F5F6F0]">
            <div className="p-4 rounded-2xl bg-[#F8F9F5] border border-[#EBECE4]">
              <div className="flex items-center justify-center text-emerald-600 mb-1">
                <CheckCircle2 className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#191A15]">{result.correctCount}</div>
              <div className="text-[11px] font-bold text-[#73786D]">إجابات صحيحة</div>
            </div>

            <div className="p-4 rounded-2xl bg-[#F8F9F5] border border-[#EBECE4]">
              <div className="flex items-center justify-center text-rose-500 mb-1">
                <XCircle className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#191A15]">{result.incorrectCount}</div>
              <div className="text-[11px] font-bold text-[#73786D]">إجابات خاطئة</div>
            </div>

            <div className="p-4 rounded-2xl bg-[#F8F9F5] border border-[#EBECE4]">
              <div className="flex items-center justify-center text-amber-500 mb-1">
                <AlertCircle className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#191A15]">{result.skippedCount}</div>
              <div className="text-[11px] font-bold text-[#73786D]">أسئلة متخطاة</div>
            </div>

            <div className="p-4 rounded-2xl bg-[#F8F9F5] border border-[#EBECE4]">
              <div className="flex items-center justify-center text-[#1C1D18] mb-1">
                <Clock className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#191A15]">{minutesSpent}د {secondsSpent}ث</div>
              <div className="text-[11px] font-bold text-[#73786D]">الوقت المستغرق</div>
            </div>
          </div>

          {/* Action Buttons Row */}
          <div className="flex flex-wrap items-center justify-center gap-3 pt-4">
            {result.incorrectCount + result.skippedCount > 0 && (
              <button
                onClick={() => onRetakeMistakes(result)}
                className="flex items-center gap-2 bg-[#1C1D18] hover:bg-[#2F322A] text-white px-5 py-3 rounded-2xl text-xs font-bold shadow-sm transition-transform active:scale-95 cursor-pointer"
              >
                <RotateCcw className="w-4 h-4" />
                <span>إعادة تدريب الأسئلة الخاطئة والمتخطاة فقط ({result.incorrectCount + result.skippedCount})</span>
              </button>
            )}

            <button
              onClick={onRetakeAll}
              className="flex items-center gap-2 bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#191A15] px-5 py-3 rounded-2xl text-xs font-bold transition-colors cursor-pointer"
            >
              <RotateCcw className="w-4 h-4" />
              <span>إعادة الاختبار كاملاً</span>
            </button>

            <button
              onClick={() => window.print()}
              className="flex items-center gap-2 bg-white border border-[#D5D8CC] hover:bg-[#F5F6F0] text-[#555A4E] px-4 py-3 rounded-2xl text-xs font-bold transition-colors cursor-pointer"
            >
              <Printer className="w-4 h-4" />
              <span>طباعة التقرير / PDF</span>
            </button>

            <button
              onClick={onGoHome}
              className="flex items-center gap-2 bg-white border border-[#D5D8CC] hover:bg-[#F5F6F0] text-[#555A4E] px-4 py-3 rounded-2xl text-xs font-bold transition-colors cursor-pointer"
            >
              <Home className="w-4 h-4" />
              <span>الرئيسية</span>
            </button>
          </div>
        </div>

        {/* Detailed Questions Review Section */}
        <div className="space-y-4">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-2">
            <div>
              <h2 className="text-xl font-extrabold text-[#191A15]">
                المراجعة التفصيلية للأسئلة والتعليلات
              </h2>
              <p className="text-xs text-[#73786D] mt-0.5">
                طالع أجوبتك مقارنة بالأجوبة الصحيحة الرسمية مع السند القانوني والمحاسبي
              </p>
            </div>

            {/* Expand / Collapse all */}
            <div className="flex items-center gap-2">
              <button
                onClick={expandAll}
                className="text-xs font-bold text-[#555A4E] hover:text-[#191A15] px-3 py-1.5 rounded-xl bg-white border border-[#E6E8DE] cursor-pointer"
              >
                توسيع الكل
              </button>
              <button
                onClick={collapseAll}
                className="text-xs font-bold text-[#555A4E] hover:text-[#191A15] px-3 py-1.5 rounded-xl bg-white border border-[#E6E8DE] cursor-pointer"
              >
                طي الكل
              </button>
            </div>
          </div>

          {/* Filter Tabs */}
          <div className="bg-white p-1.5 rounded-2xl border border-[#E6E8DE] flex items-center gap-1 overflow-x-auto">
            <button
              onClick={() => setFilterType('all')}
              className={`px-4 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap ${
                filterType === 'all'
                  ? 'bg-[#1C1D18] text-white shadow-xs'
                  : 'text-[#686E61] hover:text-[#191A15]'
              }`}
            >
              جميع الأسئلة ({result.totalQuestions})
            </button>

            <button
              onClick={() => setFilterType('incorrect')}
              className={`px-4 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap flex items-center gap-1.5 ${
                filterType === 'incorrect'
                  ? 'bg-rose-600 text-white shadow-xs'
                  : 'text-rose-700 hover:bg-rose-50'
              }`}
            >
              <XCircle className="w-3.5 h-3.5" />
              <span>الأسئلة الخاطئة ({result.incorrectCount})</span>
            </button>

            <button
              onClick={() => setFilterType('skipped')}
              className={`px-4 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap flex items-center gap-1.5 ${
                filterType === 'skipped'
                  ? 'bg-amber-600 text-white shadow-xs'
                  : 'text-amber-700 hover:bg-amber-50'
              }`}
            >
              <AlertCircle className="w-3.5 h-3.5" />
              <span>المتخطاة ({result.skippedCount})</span>
            </button>

            <button
              onClick={() => setFilterType('correct')}
              className={`px-4 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap flex items-center gap-1.5 ${
                filterType === 'correct'
                  ? 'bg-emerald-600 text-white shadow-xs'
                  : 'text-emerald-700 hover:bg-emerald-50'
              }`}
            >
              <CheckCircle2 className="w-3.5 h-3.5" />
              <span>الصحيحة ({result.correctCount})</span>
            </button>
          </div>

          {/* Questions Accordion List */}
          <div className="space-y-4">
            {filteredQuestions.map((q) => {
              const isCorrect = isQuestionCorrect(q);
              const isSkipped = isQuestionSkipped(q);
              const userChoices = result.answers[q.id] || [];
              const isExpanded = expandedQuestions[q.id] !== false; // default open

              return (
                <div
                  key={q.id}
                  className={`bg-white rounded-3xl p-6 border transition-all ${
                    isCorrect 
                      ? 'border-emerald-200 shadow-xs' 
                      : isSkipped 
                        ? 'border-amber-200 shadow-xs' 
                        : 'border-rose-200 shadow-xs'
                  }`}
                >
                  {/* Question Header */}
                  <div 
                    onClick={() => toggleExpand(q.id)}
                    className="flex items-start justify-between gap-4 cursor-pointer"
                  >
                    <div className="flex items-start gap-3">
                      <span className={`w-8 h-8 rounded-xl text-xs font-black flex items-center justify-center shrink-0 ${
                        isCorrect 
                          ? 'bg-emerald-600 text-white' 
                          : isSkipped 
                            ? 'bg-amber-500 text-white' 
                            : 'bg-rose-500 text-white'
                      }`}>
                        Q{q.number}
                      </span>

                      <div>
                        <div className="flex items-center gap-2 mb-1.5">
                          <span className="text-[11px] font-bold bg-[#F5F6F0] text-[#555A4E] px-2.5 py-0.5 rounded-full">
                            {q.category}
                          </span>

                          {isCorrect ? (
                            <span className="text-[11px] font-black text-emerald-700 bg-emerald-50 px-2.5 py-0.5 rounded-full">
                              إجابة صحيحة ✓
                            </span>
                          ) : isSkipped ? (
                            <span className="text-[11px] font-black text-amber-700 bg-amber-50 px-2.5 py-0.5 rounded-full">
                              تم التخطي (بدون إجابة)
                            </span>
                          ) : (
                            <span className="text-[11px] font-black text-rose-700 bg-rose-50 px-2.5 py-0.5 rounded-full">
                              إجابة خاطئة ✗
                            </span>
                          )}
                        </div>

                        <h3 className="text-sm md:text-base font-extrabold text-[#191A15] leading-relaxed">
                          {q.text}
                        </h3>
                      </div>
                    </div>

                    <div className="text-[#8E9387] pt-1">
                      {isExpanded ? <ChevronUp className="w-5 h-5" /> : <ChevronDown className="w-5 h-5" />}
                    </div>
                  </div>

                  {/* Expanded Content: Options & Explanation */}
                  {isExpanded && (
                    <div className="mt-5 pt-4 border-t border-[#F5F6F0] space-y-4">
                      {/* Options */}
                      <div className="space-y-2">
                        {q.options.map(opt => {
                          const isOptCorrect = q.correctAnswers.includes(opt.id);
                          const isUserSelected = userChoices.includes(opt.id);

                          let optStyle = 'bg-[#FAFBF7] border-[#EAECE0] text-[#444]';
                          let pillStyle = 'bg-white text-[#555] border-[#DDD]';

                          if (isOptCorrect) {
                            optStyle = 'bg-emerald-50 border-emerald-400 text-emerald-950 font-bold';
                            pillStyle = 'bg-emerald-600 text-white border-emerald-600';
                          } else if (isUserSelected && !isOptCorrect) {
                            optStyle = 'bg-rose-50 border-rose-400 text-rose-950 font-medium';
                            pillStyle = 'bg-rose-500 text-white border-rose-500';
                          }

                          return (
                            <div 
                              key={opt.id}
                              className={`p-3 rounded-2xl border text-xs md:text-sm flex items-start gap-3 ${optStyle}`}
                            >
                              <div className={`w-7 h-7 rounded-xl flex items-center justify-center font-bold text-xs shrink-0 border ${pillStyle}`}>
                                {opt.id}
                              </div>
                              <div className="flex-1 pt-0.5 leading-relaxed">
                                {opt.text}
                              </div>
                              {isOptCorrect && (
                                <span className="text-[10px] font-black bg-emerald-600 text-white px-2 py-0.5 rounded-full shrink-0">
                                  الجواب الصحيح
                                </span>
                              )}
                              {isUserSelected && !isOptCorrect && (
                                <span className="text-[10px] font-black bg-rose-500 text-white px-2 py-0.5 rounded-full shrink-0">
                                  إجابتك الخاطئة
                                </span>
                              )}
                            </div>
                          );
                        })}
                      </div>

                      {/* Official Explanation Box */}
                      <div className="p-4 rounded-2xl bg-[#F7F9F2] border border-[#DDE2D2] space-y-2">
                        <div className="flex items-center gap-1.5 text-xs font-black text-[#264D36]">
                          <Scale className="w-4 h-4 text-emerald-700" />
                          <span>السند القانوني والتبرير المحاسبي:</span>
                        </div>
                        <p className="text-xs md:text-sm text-[#2F3D33] leading-relaxed font-medium bg-white p-3.5 rounded-xl border border-[#E3E7DA] shadow-xs whitespace-pre-line">
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
      </div>
    </div>
  );
}
