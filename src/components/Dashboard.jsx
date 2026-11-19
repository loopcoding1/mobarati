import React, { useState } from 'react';
import { 
  Briefcase, 
  GraduationCap, 
  Users, 
  BookOpen, 
  Layers, 
  Clock, 
  FileText, 
  Play, 
  Sparkles, 
  CheckCircle2, 
  Plus, 
  ChevronLeft,
  ShieldCheck,
  Check,
  AlertCircle
} from 'lucide-react';
import { SPECIALTIES } from '../data/examsData';

export default function Dashboard({
  onOpenWizard,
  allExams = [],
  onDirectStartExam,
  onOpenAddModal,
  searchQuery = ''
}) {
  const [selectedFilter, setSelectedFilter] = useState('all'); // 'all' | 'admin' | 'support' | 'teaching'

  // Icon mapping
  const getIcon = (iconName) => {
    switch (iconName) {
      case 'Briefcase': return Briefcase;
      case 'GraduationCap': return GraduationCap;
      case 'Users': return Users;
      case 'BookOpen': return BookOpen;
      case 'Layers': return Layers;
      default: return Briefcase;
    }
  };

  // Filter categories
  const filterCategories = [
    { id: 'all', title: 'جميع التخصصات والمباريات', count: SPECIALTIES.length },
    { id: 'admin', title: 'أطر الدعم الإداري', count: 1 },
    { id: 'support', title: 'أطر الدعم التربوي والاجتماعي', count: 2 },
    { id: 'teaching', title: 'أطر التدريس (ابتدائي وثانوي)', count: 2 },
  ];

  const filteredSpecialties = SPECIALTIES.filter(spec => {
    // Search query matching
    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase().trim();
      const matchName = spec.name.toLowerCase().includes(q);
      const matchSubtitle = spec.subtitle.toLowerCase().includes(q);
      const matchDesc = spec.description.toLowerCase().includes(q);
      if (!matchName && !matchSubtitle && !matchDesc) return false;
    }

    // Category filter
    if (selectedFilter === 'all') return true;
    if (selectedFilter === 'admin') return spec.id === 'specialty_econ_admin';
    if (selectedFilter === 'support') return spec.id === 'specialty_pedagogy' || spec.id === 'specialty_social';
    if (selectedFilter === 'teaching') return spec.id === 'specialty_primary' || spec.id === 'specialty_secondary';
    return true;
  });

  return (
    <div className="max-w-7xl mx-auto px-4 md:px-8 py-6 md:py-8 space-y-6">
      
      {/* Hero Welcome Banner */}
      <div className="bg-white rounded-3xl p-6 md:p-8 border border-[#E6E8DE] shadow-xs relative overflow-hidden">
        <div className="absolute top-0 left-0 w-80 h-80 bg-[#F5F6F0] rounded-full -ml-20 -mt-20 blur-2xl pointer-events-none" />
        
        <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
          <div className="space-y-2 max-w-2xl">
            <div className="flex flex-wrap items-center gap-2">
              <span className="text-[11px] font-bold text-emerald-900 bg-emerald-100 border border-emerald-200 px-3 py-1 rounded-full flex items-center gap-1.5">
                <Sparkles className="w-3.5 h-3.5 text-emerald-700" />
                المملكة المغربية • المراكز الجهوية لمهن التربية والتكوين CRMEF
              </span>
              <span className="text-[11px] font-bold bg-[#F5F6F0] text-[#555A4E] border border-[#DEE2D3] px-3 py-1 rounded-full">
                دورة 2024 متوفرة بالكامل
              </span>
            </div>

            <h1 className="text-xl md:text-3xl font-black text-[#191A15] tracking-tight leading-snug">
              بوابة التحضير لمباريات التعليم: اختر التخصص والمباراة
            </h1>

            <p className="text-xs md:text-sm text-[#73786D] leading-relaxed font-medium">
              منصة متخصصة للتدرب على نماذج الاختبارات الكتابية لمباريات التعليم بالمغرب. أسئلة QCM تفاعلية مطابقة للامتحانات الرسمية، معززة بالتصحيح الدقيق والتعليل والسند القانوني والمحاسبي المعتمد.
            </p>
          </div>

          {/* Quick Action Button */}
          <div className="flex flex-col sm:flex-row md:flex-col gap-2 shrink-0">
            <button
              onClick={() => onOpenWizard('specialty_econ_admin')}
              className="bg-[#1C1D18] hover:bg-[#2F322A] text-white px-6 py-3.5 rounded-2xl text-xs font-black shadow-md flex items-center justify-center gap-2 transition-transform active:scale-95 cursor-pointer whitespace-nowrap"
            >
              <Play className="w-4 h-4 fill-white" />
              <span>بدء الاختبار مرحلياً (Step-by-Step)</span>
            </button>

            {onOpenAddModal && (
              <button
                onClick={onOpenAddModal}
                className="bg-[#FAFBF7] hover:bg-[#EFF1E8] text-[#191A15] border border-[#D8DCCF] px-4 py-2.5 rounded-2xl text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
              >
                <Plus className="w-4 h-4 text-emerald-700" />
                <span>إضافة نموذج امتحان جديد</span>
              </button>
            )}
          </div>
        </div>

        {/* Feature Pills under hero */}
        <div className="mt-6 pt-4 border-t border-[#F0F2EA] grid grid-cols-2 sm:grid-cols-4 gap-3 text-xs text-[#555A4E]">
          <div className="flex items-center gap-2">
            <div className="w-2 h-2 rounded-full bg-emerald-500" />
            <span className="font-bold">72 سؤالاً QCM موثقاً</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-2 h-2 rounded-full bg-amber-500" />
            <span className="font-bold">تعليل قانوني ومحاسبي</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-2 h-2 rounded-full bg-blue-500" />
            <span className="font-bold">مؤقت رسمي 180 دقيقة</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-2 h-2 rounded-full bg-purple-500" />
            <span className="font-bold">إعادة تدريب الأخطاء فقط</span>
          </div>
        </div>
      </div>

      {/* Filter Tabs */}
      <div className="flex items-center justify-between gap-3 overflow-x-auto pb-1 scrollbar-none">
        <div className="flex items-center gap-2">
          {filterCategories.map(cat => (
            <button
              key={cat.id}
              onClick={() => setSelectedFilter(cat.id)}
              className={`px-4 py-2 rounded-2xl text-xs font-bold transition-all cursor-pointer whitespace-nowrap ${
                selectedFilter === cat.id
                  ? 'bg-[#1C1D18] text-white shadow-xs'
                  : 'bg-white border border-[#E6E8DE] text-[#73786D] hover:bg-[#F5F6F0] hover:text-[#191A15]'
              }`}
            >
              <span>{cat.title}</span>
              <span className={`mr-1.5 text-[10px] px-1.5 py-0.5 rounded-full ${
                selectedFilter === cat.id ? 'bg-white/20 text-white' : 'bg-[#EFF1E8] text-[#555A4E]'
              }`}>
                {cat.count}
              </span>
            </button>
          ))}
        </div>

        <div className="text-xs font-bold text-[#73786D] hidden md:block shrink-0">
          عرض {filteredSpecialties.length} من أصل {SPECIALTIES.length} تخصصات
        </div>
      </div>

      {/* Specialties & Exams Cards Grid */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
        
        {filteredSpecialties.map(spec => {
          const Icon = getIcon(spec.icon);
          const isAvailable = spec.active;
          const exams = allExams.filter(e => e.specialtyId === spec.id);

          // Card 1: If available and primary, give it the signature high-contrast dark card look (as in BizLink style) or clean active card
          if (spec.id === 'specialty_econ_admin') {
            return (
              <div 
                key={spec.id}
                className="bg-[#1C1D18] text-white rounded-3xl p-6 shadow-md flex flex-col justify-between relative overflow-hidden group border border-[#1C1D18] lg:col-span-2"
              >
                <div className="absolute top-0 right-0 w-36 h-36 bg-white/5 rounded-full -mr-12 -mt-12 blur-xl pointer-events-none" />
                
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <span className="text-[11px] font-black bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 px-3 py-1 rounded-full flex items-center gap-1.5">
                      <Sparkles className="w-3.5 h-3.5 text-amber-400" />
                      متاح الآن • دورة أكتوبر 2024
                    </span>
                    <span className="text-xs font-bold text-[#A8AEA0]">
                      أطر الدعم الإداري
                    </span>
                  </div>

                  <div>
                    <div className="flex items-center gap-3 mb-2">
                      <div className="w-10 h-10 rounded-2xl bg-white/10 flex items-center justify-center text-white">
                        <Icon className="w-5 h-5" />
                      </div>
                      <div>
                        <h2 className="text-lg md:text-xl font-black text-white">
                          {spec.name}
                        </h2>
                        <p className="text-xs text-[#A8AEA0]">
                          {spec.subtitle}
                        </p>
                      </div>
                    </div>

                    <p className="text-xs text-[#C5CBBF] leading-relaxed mt-2">
                      {spec.description}
                    </p>
                  </div>

                  {/* Highlights Grid */}
                  <div className="bg-white/5 rounded-2xl p-4 border border-white/10 grid grid-cols-1 sm:grid-cols-3 gap-3 text-xs">
                    <div className="space-y-0.5">
                      <div className="text-[10px] text-[#A8AEA0] font-semibold">عدد الأسئلة:</div>
                      <div className="font-extrabold text-white flex items-center gap-1.5">
                        <FileText className="w-3.5 h-3.5 text-amber-400" />
                        <span>72 سؤالاً QCM كاملاً</span>
                      </div>
                    </div>

                    <div className="space-y-0.5">
                      <div className="text-[10px] text-[#A8AEA0] font-semibold">المدة الرسمية:</div>
                      <div className="font-extrabold text-white flex items-center gap-1.5">
                        <Clock className="w-3.5 h-3.5 text-emerald-400" />
                        <span>3 ساعات (180 دقيقة)</span>
                      </div>
                    </div>

                    <div className="space-y-0.5">
                      <div className="text-[10px] text-[#A8AEA0] font-semibold">المرجع القانوني:</div>
                      <div className="font-extrabold text-white flex items-center gap-1.5">
                        <ShieldCheck className="w-3.5 h-3.5 text-blue-400" />
                        <span>مرسوم 2.22.431 و 330.66</span>
                      </div>
                    </div>
                  </div>

                  {/* Available Exams in this specialty */}
                  <div className="space-y-1.5">
                    <div className="text-[11px] font-bold text-[#A8AEA0]">
                      الامتحانات المتوفرة في هذا التخصص:
                    </div>
                    {exams.map(exam => (
                      <div 
                        key={exam.id}
                        className="bg-white/10 hover:bg-white/15 transition-colors p-3 rounded-2xl border border-white/10 flex items-center justify-between text-xs"
                      >
                        <div className="space-y-0.5">
                          <div className="font-bold text-white">{exam.title}</div>
                          <div className="text-[10px] text-[#A8AEA0]">{exam.session} • {exam.questions.length} سؤال</div>
                        </div>
                        <span className="text-[10px] bg-white/20 text-white px-2 py-0.5 rounded-full font-bold">
                          رسمي
                        </span>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Actions */}
                <div className="pt-6 border-t border-white/10 mt-5 flex flex-col sm:flex-row items-center gap-3">
                  <button
                    onClick={() => onOpenWizard(spec.id)}
                    className="w-full sm:flex-1 bg-white text-[#1C1D18] hover:bg-[#F0F2EA] py-3 rounded-2xl text-xs font-black shadow-md flex items-center justify-center gap-2 transition-transform active:scale-95 cursor-pointer"
                  >
                    <Play className="w-4 h-4 fill-[#1C1D18]" />
                    <span>بدء الاختبار بمراحل (Step-by-Step)</span>
                  </button>

                  {onDirectStartExam && exams.length > 0 && (
                    <button
                      onClick={() => onDirectStartExam(exams[0])}
                      className="w-full sm:w-auto px-5 py-3 rounded-2xl bg-white/10 hover:bg-white/20 text-white text-xs font-bold transition-colors cursor-pointer whitespace-nowrap"
                    >
                      بدء فوري سريع
                    </button>
                  )}
                </div>
              </div>
            );
          }

          // Other Specialties Cards
          return (
            <div 
              key={spec.id}
              className={`bg-white rounded-3xl p-6 border transition-all flex flex-col justify-between ${
                isAvailable 
                  ? 'border-[#E6E8DE] shadow-xs hover:border-[#CFD3C5]' 
                  : 'border-[#EFF1E8] bg-[#FAFBF7]'
              }`}
            >
              <div className="space-y-3">
                <div className="flex items-center justify-between">
                  <span className={`text-[10px] font-extrabold px-2.5 py-0.5 rounded-full ${
                    isAvailable 
                      ? 'bg-emerald-100 text-emerald-800' 
                      : 'bg-gray-100 text-gray-400'
                  }`}>
                    {spec.badge}
                  </span>
                  <span className="text-[11px] font-bold text-[#8E9387]">
                    {exams.length > 0 ? `${exams.length} امتحان` : 'قيد الإعداد'}
                  </span>
                </div>

                <div className="flex items-center gap-3">
                  <div className={`w-10 h-10 rounded-2xl flex items-center justify-center ${
                    isAvailable ? 'bg-[#F5F6F0] text-[#1C1D18]' : 'bg-gray-100 text-gray-400'
                  }`}>
                    <Icon className="w-5 h-5" />
                  </div>
                  <div>
                    <h3 className="text-sm md:text-base font-extrabold text-[#191A15]">
                      {spec.name}
                    </h3>
                    <p className="text-[11px] text-[#73786D]">
                      {spec.subtitle}
                    </p>
                  </div>
                </div>

                <p className="text-xs text-[#73786D] leading-relaxed">
                  {spec.description}
                </p>

                {exams.length > 0 ? (
                  <div className="p-3 rounded-2xl bg-[#F5F6F0] border border-[#E6E8DE] space-y-1">
                    <div className="text-[11px] font-extrabold text-[#191A15]">
                      {exams[0].title}
                    </div>
                    <div className="text-[10px] text-[#73786D]">
                      {exams[0].session} • {exams[0].questions.length} سؤال
                    </div>
                  </div>
                ) : (
                  <div className="p-3 rounded-2xl bg-gray-50 border border-gray-100 text-[11px] text-gray-400 font-medium">
                    سيتم إدراج أسئلة الدورات السابقة لهذا التخصص قريباً، أو يمكنك إضافة أسئلتك الخاصة الآن.
                  </div>
                )}
              </div>

              {/* Bottom Card Actions */}
              <div className="pt-5 border-t border-[#F0F2EA] mt-4 flex items-center gap-2">
                {isAvailable && exams.length > 0 ? (
                  <button
                    onClick={() => onOpenWizard(spec.id)}
                    className="w-full bg-[#1C1D18] hover:bg-[#2F322A] text-white py-2.5 rounded-2xl text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                  >
                    <Play className="w-3.5 h-3.5 fill-white" />
                    <span>اجتياز المباراة</span>
                  </button>
                ) : (
                  <button
                    onClick={() => onOpenAddModal && onOpenAddModal(spec.id)}
                    className="w-full bg-[#F5F6F0] hover:bg-[#EAECE3] text-[#555A4E] py-2.5 rounded-2xl text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                  >
                    <Plus className="w-3.5 h-3.5" />
                    <span>إضافة امتحان لهذا التخصص</span>
                  </button>
                )}
              </div>
            </div>
          );
        })}

        {/* Card: Add or Import New Exam */}
        <div 
          onClick={() => onOpenAddModal && onOpenAddModal()}
          className="bg-white rounded-3xl p-6 border-2 border-dashed border-[#D5D8CC] hover:border-[#1C1D18] transition-all flex flex-col justify-between items-center text-center cursor-pointer group min-h-[260px]"
        >
          <div className="my-auto space-y-2">
            <div className="w-12 h-12 rounded-2xl bg-[#F5F6F0] group-hover:bg-[#1C1D18] group-hover:text-white transition-colors flex items-center justify-center mx-auto text-[#1C1D18]">
              <Plus className="w-6 h-6" />
            </div>
            <h3 className="text-sm font-extrabold text-[#191A15]">
              إضافة مباراة أو امتحان دورة أخرى
            </h3>
            <p className="text-xs text-[#73786D] max-w-xs leading-relaxed">
              هل لديك ملف أسئلة لدورة أخرى؟ يمكنك استيراد أو كتابة أسئلة الامتحان بصيغة JSON لتبدأ التدرب عليها فوراً.
            </p>
          </div>

          <div className="w-full pt-4 border-t border-[#F0F2EA]">
            <span className="inline-flex items-center gap-1 text-xs font-bold text-emerald-800 group-hover:underline">
              <span>+ فتح نموذج الإضافة الآن</span>
              <ChevronLeft className="w-3.5 h-3.5" />
            </span>
          </div>
        </div>

      </div>

    </div>
  );
}
