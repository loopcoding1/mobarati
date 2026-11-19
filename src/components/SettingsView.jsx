import React, { useState } from 'react';
import { 
  Settings, 
  Volume2, 
  VolumeX, 
  Zap, 
  ShieldCheck, 
  Clock, 
  Trash2, 
  CheckCircle2, 
  Scale, 
  FileCheck2,
  Sparkles
} from 'lucide-react';
import { sound } from '../utils/sound';

export default function SettingsView({
  examMode,
  setExamMode,
  soundEnabled,
  onToggleSound,
  onClearHistory
}) {
  const [cleared, setCleared] = useState(false);

  const handleTestSound = () => {
    sound.playCorrect();
  };

  const handleClear = () => {
    if (window.confirm('هل أنت متأكد من رغبتك في مسح سجل الاختبارات السابقة وإعادة تعيين الإحصائيات؟')) {
      onClearHistory();
      setCleared(true);
      setTimeout(() => setCleared(false), 2000);
    }
  };

  return (
    <div className="p-8 space-y-8 max-w-4xl mx-auto select-none">
      <div className="pb-2 border-b border-[#E6E8DE]">
        <h1 className="text-2xl font-black text-[#191A15]">
          الإعدادات وتفضيلات الاختبار
        </h1>
        <p className="text-xs text-[#73786D] mt-1">
          تخصيص أنماط إجراء الاختبار والمؤثرات الصوتية والمظهر
        </p>
      </div>

      <div className="space-y-6">
        {/* Exam Mode Setting */}
        <div className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs space-y-4">
          <div>
            <h2 className="text-sm font-extrabold text-[#191A15]">
              الوضع الافتراضي للاختبار
            </h2>
            <p className="text-xs text-[#73786D] mt-0.5">
              اختر طريقة تفاعل المنصة مع إجاباتك أثناء إجراء الامتحان
            </p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div
              onClick={() => setExamMode('instant')}
              className={`p-4 rounded-2xl border transition-all cursor-pointer ${
                examMode === 'instant'
                  ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-sm'
                  : 'bg-[#F8F9F5] border-[#EBECE4] text-[#191A15] hover:border-[#D5D8CC]'
              }`}
            >
              <div className="flex items-center justify-between mb-2">
                <span className="text-xs font-black flex items-center gap-1.5">
                  <Zap className={`w-4 h-4 ${examMode === 'instant' ? 'text-amber-400 fill-amber-400' : 'text-amber-500'}`} />
                  وضع التدريب والتعليل الفوري
                </span>
                {examMode === 'instant' && <CheckCircle2 className="w-4 h-4 text-emerald-400" />}
              </div>
              <p className={`text-xs leading-relaxed ${examMode === 'instant' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                يظهر الجواب الصحيح والتعليل القانوني والمحاسبي فور اختيار الجواب أو تأكيده، وهو الوضع الأمثل للحفظ والتعلم.
              </p>
            </div>

            <div
              onClick={() => setExamMode('simulation')}
              className={`p-4 rounded-2xl border transition-all cursor-pointer ${
                examMode === 'simulation'
                  ? 'bg-[#1C1D18] text-white border-[#1C1D18] shadow-sm'
                  : 'bg-[#F8F9F5] border-[#EBECE4] text-[#191A15] hover:border-[#D5D8CC]'
              }`}
            >
              <div className="flex items-center justify-between mb-2">
                <span className="text-xs font-black flex items-center gap-1.5">
                  <ShieldCheck className="w-4 h-4 text-blue-500" />
                  وضع المحاكاة الرسمية (الامتحان الحقيقي)
                </span>
                {examMode === 'simulation' && <CheckCircle2 className="w-4 h-4 text-emerald-400" />}
              </div>
              <p className={`text-xs leading-relaxed ${examMode === 'simulation' ? 'text-gray-300' : 'text-[#73786D]'}`}>
                اختبار بدون كشف الإجابات أثناء الحل لمحاكاة الأجواء الواقعية لمباراة التعليم، وتظهر النتائج والشروحات في التقرير النهائي.
              </p>
            </div>
          </div>
        </div>

        {/* Audio Effects Setting */}
        <div className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs flex items-center justify-between gap-4">
          <div>
            <h2 className="text-sm font-extrabold text-[#191A15]">
              المؤثرات الصوتية التفاعلية
            </h2>
            <p className="text-xs text-[#73786D] mt-0.5">
              تشغيل أصوات خفيفة عند النقر، وتأكيد الإجابات الصحيحة والخاطئة
            </p>
          </div>

          <div className="flex items-center gap-3">
            <button
              onClick={handleTestSound}
              className="text-xs font-bold text-[#555A4E] hover:text-[#191A15] px-3 py-2 rounded-xl bg-[#F5F6F0] border border-[#E2E4DA] cursor-pointer"
            >
              تجربة الصوت 🔔
            </button>

            <button
              onClick={onToggleSound}
              className={`p-3 rounded-2xl border transition-all cursor-pointer ${
                soundEnabled
                  ? 'bg-emerald-100 border-emerald-300 text-emerald-800'
                  : 'bg-gray-100 border-gray-300 text-gray-500'
              }`}
            >
              {soundEnabled ? <Volume2 className="w-5 h-5" /> : <VolumeX className="w-5 h-5" />}
            </button>
          </div>
        </div>

        {/* Legal & Reference Documentation info */}
        <div className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs space-y-3">
          <div className="flex items-center gap-2">
            <Scale className="w-4 h-4 text-[#1C1D18]" />
            <h2 className="text-sm font-extrabold text-[#191A15]">
              المراجع القانونية والتنظيمية المعتمدة في الامتحان
            </h2>
          </div>
          <p className="text-xs text-[#73786D] leading-relaxed">
            تمت مطابقة أسئلة الاختبار مع أحدث النصوص التشريعية المعمول بها في وزارة التربية الوطنية:
          </p>
          <ul className="text-xs text-[#484D41] space-y-1.5 list-disc list-inside pt-1">
            <li><strong>المرسوم رقم 2.22.431</strong> المتعلق بالصفقات العمومية (الثمن المرجعي وآجال العروض).</li>
            <li><strong>المرسوم الملكي رقم 330.66</strong> بسن نظام عام للمحاسبة العمومية.</li>
            <li><strong>المرسوم رقم 2.02.376</strong> بمثابة النظام الأساسي الخاص بمؤسسات التربية والتعليم العمومي ومجالسها.</li>
            <li><strong>المرسوم رقم 2.24.140</strong> بشأن النظام الأساسي الخاص بموظفي الوزارة المكلفة بالتربية الوطنية.</li>
            <li><strong>القانون الإطار رقم 51.17</strong> المتعلق بمنظومة التربية والتكوين والبحث العلمي.</li>
            <li><strong>القانون التنظيمي رقم 130.13</strong> لقانون المالية، وقانون مدونة المحاكم المالية 62.99.</li>
            <li><strong>القرار الوزاري 062.19</strong> المتعلق بالتوجيه المدرسي والمهني، ودليل مساطر مدرسة النجاح.</li>
          </ul>
        </div>

        {/* Data Reset */}
        <div className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs flex items-center justify-between gap-4">
          <div>
            <h2 className="text-sm font-extrabold text-rose-700">
              إعادة ضبط البيانات والسجل
            </h2>
            <p className="text-xs text-[#73786D] mt-0.5">
              مسح جميع نتائج الاختبارات السابقة والبدء من جديد
            </p>
          </div>

          <button
            onClick={handleClear}
            className="flex items-center gap-2 px-4 py-2.5 rounded-2xl bg-rose-50 border border-rose-200 text-rose-700 hover:bg-rose-100 text-xs font-bold transition-colors cursor-pointer"
          >
            <Trash2 className="w-4 h-4" />
            <span>{cleared ? 'تم المسح بنجاح' : 'مسح السجل'}</span>
          </button>
        </div>
      </div>
    </div>
  );
}
