import React from 'react';
import { 
  LayoutDashboard, 
  GraduationCap, 
  BookOpen, 
  BarChart3, 
  Settings, 
  PlusCircle, 
  Volume2, 
  VolumeX, 
  X,
  Sparkles
} from 'lucide-react';
import { SPECIALTIES } from '../data/examsData';

export default function Sidebar({ 
  currentTab, 
  setCurrentTab, 
  selectedSpecialty, 
  setSelectedSpecialty, 
  onOpenAddModal,
  soundEnabled,
  onToggleSound,
  onOpenWizard,
  isMobileOpen = false,
  onCloseMobile
}) {
  const navItems = [
    { id: 'dashboard', label: 'لوحة التحكم', icon: LayoutDashboard },
    { id: 'question_bank', label: 'بنك الأسئلة والشروحات', icon: BookOpen },
    { id: 'analytics', label: 'سجل الأداء والإحصائيات', icon: BarChart3 },
    { id: 'settings', label: 'الإعدادات والأنماط', icon: Settings },
  ];

  const sidebarContent = (
    <div className="w-72 bg-[#FFFFFF] border-l border-[#E6E8DE] flex flex-col justify-between shrink-0 h-full select-none shadow-[2px_0_12px_rgba(0,0,0,0.02)]">
      {/* Top Branding */}
      <div>
        <div className="p-6 pb-4 border-b border-[#F0F2EA] flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-[#1C1D18] text-white flex items-center justify-center font-bold text-xl shadow-xs">
              <GraduationCap className="w-5 h-5 text-[#F5F6F0]" />
            </div>
            <div>
              <div className="font-extrabold text-xl text-[#191A15] tracking-tight flex items-center gap-1.5">
                إتــقــان
                <span className="text-[10px] font-bold bg-[#EAECE3] text-[#4F5547] px-1.5 py-0.5 rounded-md uppercase tracking-wider">
                  Pro
                </span>
              </div>
              <div className="text-xs text-[#73786D] font-medium">مباريات التعليم بالمغرب</div>
            </div>
          </div>

          {/* Close button on mobile drawer */}
          {onCloseMobile && (
            <button
              onClick={onCloseMobile}
              className="lg:hidden w-8 h-8 rounded-xl bg-[#F5F6F0] flex items-center justify-center text-[#73786D] hover:text-[#191A15] cursor-pointer"
            >
              <X className="w-4 h-4" />
            </button>
          )}
        </div>

        {/* Start Exam Wizard Quick Action Button */}
        <div className="p-4 pb-2">
          <button
            onClick={() => {
              if (onCloseMobile) onCloseMobile();
              onOpenWizard();
            }}
            className="w-full flex items-center justify-center gap-2 py-3 px-4 rounded-2xl bg-[#1C1D18] hover:bg-[#2F322A] text-white text-xs font-black shadow-sm transition-transform active:scale-98 cursor-pointer"
          >
            <Sparkles className="w-4 h-4 text-amber-400" />
            <span>+ بدء اختبار جديد (مرحلي)</span>
          </button>
        </div>

        {/* Main Navigation */}
        <div className="px-4 py-2 space-y-1">
          <div className="text-[11px] font-bold text-[#8E9387] px-3 pb-2 uppercase tracking-wider">
            القائمة الرئيسية
          </div>
          {navItems.map((item) => {
            const Icon = item.icon;
            const isActive = currentTab === item.id;
            return (
              <button
                key={item.id}
                onClick={() => {
                  setCurrentTab(item.id);
                  if (onCloseMobile) onCloseMobile();
                }}
                className={`w-full flex items-center justify-between px-3.5 py-2.5 rounded-2xl text-xs font-bold transition-all duration-200 cursor-pointer ${
                  isActive
                    ? 'bg-[#1C1D18] text-white shadow-xs'
                    : 'text-[#484D41] hover:bg-[#F5F6F0] hover:text-[#191A15]'
                }`}
              >
                <div className="flex items-center gap-3">
                  <Icon className={`w-4 h-4 ${isActive ? 'text-white' : 'text-[#73786D]'}`} />
                  <span>{item.label}</span>
                </div>
              </button>
            );
          })}
        </div>

        {/* Specialties Section */}
        <div className="px-4 py-3 border-t border-[#F0F2EA]">
          <div className="flex items-center justify-between px-3 pb-2">
            <span className="text-[11px] font-bold text-[#8E9387] uppercase tracking-wider">
              التخصصات المتاحة
            </span>
            <span className="text-[11px] text-[#73786D] font-medium bg-[#F5F6F0] px-2 py-0.5 rounded-full">
              5 مسالك
            </span>
          </div>

          <div className="space-y-1">
            {SPECIALTIES.map((spec) => {
              const isSelected = selectedSpecialty === spec.id;
              return (
                <button
                  key={spec.id}
                  onClick={() => {
                    setSelectedSpecialty(spec.id);
                    if (onCloseMobile) onCloseMobile();
                  }}
                  className={`w-full flex items-center justify-between px-3.5 py-2 rounded-xl text-xs font-medium text-right transition-all cursor-pointer ${
                    isSelected
                      ? 'bg-[#EAECE3] text-[#191A15] font-bold'
                      : 'text-[#585D51] hover:bg-[#F8F9F5]'
                  }`}
                >
                  <div className="flex items-center gap-2.5 truncate">
                    <div className={`w-2 h-2 rounded-full shrink-0 ${spec.active ? 'bg-emerald-500' : 'bg-gray-300'}`} />
                    <span className="truncate">{spec.name}</span>
                  </div>
                  {spec.active ? (
                    <span className="text-[10px] bg-emerald-100 text-emerald-800 px-1.5 py-0.5 rounded font-bold shrink-0">
                      متاح
                    </span>
                  ) : (
                    <span className="text-[10px] text-gray-400 bg-gray-100 px-1.5 py-0.5 rounded font-normal shrink-0">
                      قريباً
                    </span>
                  )}
                </button>
              );
            })}
          </div>
        </div>

        {/* Quick Add Exam */}
        <div className="px-4 pt-1">
          <button
            onClick={() => {
              if (onCloseMobile) onCloseMobile();
              onOpenAddModal();
            }}
            className="w-full flex items-center justify-center gap-2 py-2 px-3 rounded-2xl border border-dashed border-[#C8CCD0] text-xs font-bold text-[#555A4E] hover:border-[#1C1D18] hover:text-[#1C1D18] hover:bg-[#F5F6F0] transition-colors cursor-pointer"
          >
            <PlusCircle className="w-4 h-4" />
            <span>إضافة امتحان جديد (JSON)</span>
          </button>
        </div>
      </div>

      {/* Bottom Profile / Quick Info Card */}
      <div className="p-4 border-t border-[#F0F2EA]">
        <div className="bg-[#F8F9F5] rounded-2xl p-3 flex items-center justify-between border border-[#EBECE4]">
          <div className="flex items-center gap-2.5">
            <div className="w-8 h-8 rounded-full bg-[#1C1D18] text-[#F5F6F0] flex items-center justify-center font-bold text-xs">
              م ت
            </div>
            <div>
              <div className="text-xs font-bold text-[#191A15]">المترشح(ة) للتعليم</div>
              <div className="text-[10px] text-[#73786D]">مختص اقتصاد وإدارة</div>
            </div>
          </div>
          <button
            onClick={onToggleSound}
            title={soundEnabled ? 'كتم المؤثرات الصوتية' : 'تفعيل المؤثرات الصوتية'}
            className="w-8 h-8 rounded-xl bg-white border border-[#E2E4DA] flex items-center justify-center text-[#555A4E] hover:text-[#191A15] cursor-pointer"
          >
            {soundEnabled ? <Volume2 className="w-4 h-4 text-emerald-600" /> : <VolumeX className="w-4 h-4 text-gray-400" />}
          </button>
        </div>
      </div>
    </div>
  );

  return (
    <>
      {/* Desktop Persistent Sidebar */}
      <aside className="hidden lg:flex sticky top-0 h-screen shrink-0">
        {sidebarContent}
      </aside>

      {/* Mobile Drawer (Slide in) */}
      {isMobileOpen && (
        <div className="fixed inset-0 z-50 lg:hidden bg-black/40 backdrop-blur-xs flex">
          <div className="h-full">
            {sidebarContent}
          </div>
          <div className="flex-1" onClick={onCloseMobile} />
        </div>
      )}
    </>
  );
}
