import React from 'react';
import { 
  BarChart3, 
  Trophy, 
  Clock, 
  Target, 
  CheckCircle2, 
  XCircle, 
  Calendar, 
  ArrowUpRight,
  TrendingUp,
  Sparkles,
  RotateCcw
} from 'lucide-react';

export default function AnalyticsView({ examHistory, onStartExam }) {
  if (!examHistory || examHistory.length === 0) {
    return (
      <div className="p-8 max-w-4xl mx-auto select-none">
        <div className="bg-white rounded-3xl p-12 text-center border border-[#E6E8DE] space-y-4">
          <div className="w-16 h-16 rounded-3xl bg-[#F5F6F0] flex items-center justify-center text-[#1C1D18] mx-auto">
            <BarChart3 className="w-8 h-8" />
          </div>
          <h2 className="text-xl font-black text-[#191A15]">لا توجد اختبارات مسجلة بعد</h2>
          <p className="text-xs text-[#73786D] max-w-md mx-auto leading-relaxed">
            قم بإجراء أول اختبار لمباراة مختصي الاقتصاد والإدارة لتتبع مستوى تقدمك ودقة إجاباتك وتحليلك القانوني.
          </p>
          <div className="pt-2">
            <button
              onClick={() => onStartExam()}
              className="bg-[#1C1D18] hover:bg-[#2F322A] text-white px-6 py-3 rounded-2xl text-xs font-bold shadow-sm transition-all cursor-pointer"
            >
              بدء الاختبار الآن (72 سؤال)
            </button>
          </div>
        </div>
      </div>
    );
  }

  // Calculate statistics across all attempts
  const totalAttempts = examHistory.length;
  const bestScore = Math.max(...examHistory.map(h => h.scorePercentage));
  const avgScore = Math.round(examHistory.reduce((acc, h) => acc + h.scorePercentage, 0) / totalAttempts);
  const totalCorrect = examHistory.reduce((acc, h) => acc + h.correctCount, 0);

  return (
    <div className="p-8 space-y-8 max-w-5xl mx-auto select-none">
      {/* Top Banner */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-2 border-b border-[#E6E8DE]">
        <div>
          <h1 className="text-2xl font-black text-[#191A15]">
            سجل الاختبارات والتحليل الإحصائي
          </h1>
          <p className="text-xs text-[#73786D] mt-1">
            متابعة دقيقة لمسار استعدادك لمباراة التعليم وتطور نتائجك
          </p>
        </div>

        <button
          onClick={() => onStartExam()}
          className="bg-[#1C1D18] hover:bg-[#2F322A] text-white px-5 py-2.5 rounded-2xl text-xs font-bold transition-all shadow-sm cursor-pointer"
        >
          + إجراء اختبار جديد
        </button>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 sm:grid-cols-4 gap-4">
        <div className="bg-white rounded-3xl p-5 border border-[#E6E8DE] shadow-xs">
          <div className="flex items-center justify-between text-[#8E9387] mb-2">
            <span className="text-xs font-bold">أعلى نسبة نجاح</span>
            <Trophy className="w-4 h-4 text-amber-500" />
          </div>
          <div className="text-3xl font-black text-[#191A15]">{bestScore}%</div>
          <div className="text-[11px] text-emerald-600 font-bold mt-1">أفضل محاولة</div>
        </div>

        <div className="bg-white rounded-3xl p-5 border border-[#E6E8DE] shadow-xs">
          <div className="flex items-center justify-between text-[#8E9387] mb-2">
            <span className="text-xs font-bold">متوسط المعدل</span>
            <TrendingUp className="w-4 h-4 text-emerald-500" />
          </div>
          <div className="text-3xl font-black text-[#191A15]">{avgScore}%</div>
          <div className="text-[11px] text-[#73786D] font-bold mt-1">عبر جميع المحاولات</div>
        </div>

        <div className="bg-white rounded-3xl p-5 border border-[#E6E8DE] shadow-xs">
          <div className="flex items-center justify-between text-[#8E9387] mb-2">
            <span className="text-xs font-bold">عدد المحاولات</span>
            <RotateCcw className="w-4 h-4 text-blue-500" />
          </div>
          <div className="text-3xl font-black text-[#191A15]">{totalAttempts}</div>
          <div className="text-[11px] text-[#73786D] font-bold mt-1">اختبارات مكتملة</div>
        </div>

        <div className="bg-white rounded-3xl p-5 border border-[#E6E8DE] shadow-xs">
          <div className="flex items-center justify-between text-[#8E9387] mb-2">
            <span className="text-xs font-bold">مجموع الإجابات الصحيحة</span>
            <CheckCircle2 className="w-4 h-4 text-emerald-600" />
          </div>
          <div className="text-3xl font-black text-[#191A15]">{totalCorrect}</div>
          <div className="text-[11px] text-[#73786D] font-bold mt-1">سؤال تم ضبطه</div>
        </div>
      </div>

      {/* History Table */}
      <div className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs space-y-4">
        <h2 className="text-base font-extrabold text-[#191A15]">
          تفاصيل المحاولات السابقة
        </h2>

        <div className="space-y-3">
          {examHistory.slice().reverse().map((attempt, idx) => {
            const date = new Date(attempt.date).toLocaleDateString('ar-MA', {
              year: 'numeric',
              month: 'long',
              day: 'numeric',
              hour: '2-digit',
              minute: '2-digit'
            });
            const mins = Math.floor(attempt.timeSpentSeconds / 60);

            return (
              <div 
                key={idx}
                className="p-4 rounded-2xl bg-[#F8F9F5] border border-[#EBECE4] flex flex-col sm:flex-row sm:items-center justify-between gap-4"
              >
                <div>
                  <div className="flex items-center gap-2 mb-1">
                    <span className="text-xs font-extrabold text-[#191A15]">
                      {attempt.examTitle}
                    </span>
                    <span className="text-[10px] font-bold bg-white text-[#555A4E] border border-[#DCDFD4] px-2 py-0.5 rounded-md">
                      {attempt.examMode === 'instant' ? 'تدريب فوري' : 'محاكاة رسمية'}
                    </span>
                  </div>
                  <div className="text-[11px] text-[#8E9387] flex items-center gap-3">
                    <span className="flex items-center gap-1">
                      <Calendar className="w-3 h-3" />
                      {date}
                    </span>
                    <span>•</span>
                    <span className="flex items-center gap-1">
                      <Clock className="w-3 h-3" />
                      {mins} دقيقة مستغرقة
                    </span>
                  </div>
                </div>

                <div className="flex items-center gap-4">
                  <div className="text-right">
                    <div className="text-xl font-black text-[#191A15]">
                      {attempt.scorePercentage}%
                    </div>
                    <div className="text-[11px] text-[#73786D]">
                      {attempt.correctCount} / {attempt.totalQuestions} صحيح
                    </div>
                  </div>

                  <div className={`w-3 h-10 rounded-full ${
                    attempt.scorePercentage >= 70 
                      ? 'bg-emerald-500' 
                      : attempt.scorePercentage >= 50 
                        ? 'bg-amber-500' 
                        : 'bg-rose-500'
                  }`} />
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
