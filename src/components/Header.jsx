import React from 'react';
import { 
  Volume2, 
  VolumeX,
  Sparkles
} from 'lucide-react';

export default function Header({ 
  soundEnabled, 
  onToggleSound,
  totalExams,
  totalQuestions
}) {
  return (
    <header className="bg-white border-b border-[#E6E8DE] px-4 md:px-8 py-3.5 sticky top-0 z-30 shadow-[0_2px_8px_rgba(0,0,0,0.02)] select-none">
      <div className="max-w-4xl mx-auto flex items-center justify-between gap-3">
        
        {/* Brand & Platform Identity */}
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-2xl bg-[#1C1D18] flex items-center justify-center shadow-xs shrink-0">
            <img src="/icon-white.svg" alt="مباراتي" className="w-6 h-6" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <span className="text-base md:text-lg font-black text-[#191A15] tracking-tight">
                مـبـاراتـي
              </span>
              <span className="text-[10px] font-extrabold bg-[#F5F6F0] text-[#555A4E] border border-[#DEE2D3] px-2 py-0.5 rounded-full">
                مباريات التعليم بالمغرب
              </span>
            </div>
            <p className="text-[11px] text-[#73786D] hidden sm:block font-medium">
              {totalExams != null
                ? `التحضير لمباريات التعليم: ${totalExams} امتحاناً • ${totalQuestions ?? 0} سؤالاً`
                : 'التحضير لمباريات التعليم بالمغرب'}
            </p>
          </div>
        </div>

        {/* Sound Toggle */}
        <button
          onClick={onToggleSound}
          className="flex items-center gap-1.5 px-3 py-2 rounded-2xl bg-[#F5F6F0] hover:bg-[#EAECE3] text-xs font-bold text-[#555A4E] transition-colors cursor-pointer"
          title={soundEnabled ? 'كتم الصوت' : 'تفعيل المؤثرات'}
        >
          {soundEnabled ? (
            <>
              <Volume2 className="w-4 h-4 text-emerald-700" />
              <span className="text-[11px] hidden sm:inline">صوت مفعّل</span>
            </>
          ) : (
            <>
              <VolumeX className="w-4 h-4 text-gray-400" />
              <span className="text-[11px] hidden sm:inline">صوت مكتوم</span>
            </>
          )}
        </button>

      </div>
    </header>
  );
}
