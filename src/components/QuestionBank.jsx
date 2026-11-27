import React, { useState } from 'react';
import { 
  BookOpen, 
  Search, 
  Scale, 
  CheckCircle2, 
  Tag, 
  Filter, 
  ChevronDown, 
  ChevronUp,
  FileText,
  Layers,
  Sparkles
} from 'lucide-react';
import { EXAMS } from '../data/examsData';

export default function QuestionBank({ initialCategory = null }) {
  const [selectedCategory, setSelectedCategory] = useState(initialCategory || 'all');
  const [search, setSearch] = useState('');
  const [expanded, setExpanded] = useState({});

  const allQuestions = EXAMS[0].questions;

  // Extract unique categories
  const categories = ['all', ...new Set(allQuestions.map(q => q.category))];

  const filteredQuestions = allQuestions.filter(q => {
    const matchesCat = selectedCategory === 'all' || q.category === selectedCategory;
    const matchesSearch = !search || 
      q.text.toLowerCase().includes(search.toLowerCase()) ||
      q.explanation.toLowerCase().includes(search.toLowerCase()) ||
      q.options.some(opt => opt.text.toLowerCase().includes(search.toLowerCase()));
    return matchesCat && matchesSearch;
  });

  const toggleQuestion = (id) => {
    setExpanded(prev => ({ ...prev, [id]: !prev[id] }));
  };

  const expandAll = () => {
    const obj = {};
    filteredQuestions.forEach(q => obj[q.id] = true);
    setExpanded(obj);
  };

  const collapseAll = () => {
    setExpanded({});
  };

  return (
    <div className="p-8 space-y-6 max-w-6xl mx-auto">
      {/* Header */}
      <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 pb-2 border-b border-[#E6E8DE]">
        <div>
          <div className="flex items-center gap-2 mb-1">
            <span className="text-xs font-bold text-emerald-800 bg-emerald-100 px-2.5 py-0.5 rounded-full flex items-center gap-1">
              <BookOpen className="w-3.5 h-3.5 text-emerald-600" />
              بنك الأسئلة والتعليلات القانونية
            </span>
          </div>
          <h1 className="text-2xl font-black text-[#191A15]">
            مستودع أسئلة التدبير المادي والمالي والمحاسباتي
          </h1>
          <p className="text-xs text-[#73786D] mt-1">
            تصفح جميع الأسئلة الـ 72 مع الشروحات المفصلة والسند القانوني بدون ضغط مؤقت الاختبار
          </p>
        </div>

        <div className="flex items-center gap-2">
          <button
            onClick={expandAll}
            className="text-xs font-bold px-3 py-1.5 rounded-xl bg-white border border-[#E6E8DE] hover:bg-[#F5F6F0] cursor-pointer"
          >
            توسيع الكل
          </button>
          <button
            onClick={collapseAll}
            className="text-xs font-bold px-3 py-1.5 rounded-xl bg-white border border-[#E6E8DE] hover:bg-[#F5F6F0] cursor-pointer"
          >
            طي الكل
          </button>
        </div>
      </div>

      {/* Search and Filters */}
      <div className="space-y-3">
        <div className="relative">
          <Search className="w-4 h-4 text-[#8E9387] absolute right-3.5 top-3.5 pointer-events-none" />
          <input
            type="text"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="ابحث في نص السؤال، الجواب، أو المرجع القانوني..."
            className="w-full pl-4 pr-10 py-3 bg-white text-xs font-medium rounded-2xl border border-[#E6E8DE] focus:border-[#1C1D18] focus:outline-none shadow-xs"
          />
        </div>

        {/* Categories Pills */}
        <div className="flex items-center gap-2 overflow-x-auto pb-2">
          {categories.map((cat, i) => (
            <button
              key={i}
              onClick={() => setSelectedCategory(cat)}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold whitespace-nowrap transition-all cursor-pointer ${
                selectedCategory === cat
                  ? 'bg-[#1C1D18] text-white shadow-xs'
                  : 'bg-white border border-[#E6E8DE] text-[#686E61] hover:bg-[#F5F6F0]'
              }`}
            >
              {cat === 'all' ? `جميع المجالات (${allQuestions.length})` : cat}
            </button>
          ))}
        </div>
      </div>

      {/* Questions List */}
      <div className="space-y-4">
        {filteredQuestions.length === 0 ? (
          <div className="bg-white p-12 text-center rounded-3xl border border-[#E6E8DE] space-y-3">
            <Search className="w-8 h-8 text-gray-300 mx-auto" />
            <div className="text-sm font-bold text-[#191A15]">لم يتم العثور على نتائج تطابق بحثك</div>
            <p className="text-xs text-[#73786D]">جرب كلمات مفتاحية أخرى أو اختر مجالاً مختلفاً</p>
          </div>
        ) : (
          filteredQuestions.map((q) => {
            const isExpanded = expanded[q.id] !== false;
            return (
              <div 
                key={q.id}
                className="bg-white rounded-3xl p-6 border border-[#E6E8DE] shadow-xs space-y-4"
              >
                <div 
                  onClick={() => toggleQuestion(q.id)}
                  className="flex items-start justify-between gap-4 cursor-pointer"
                >
                  <div className="flex items-start gap-3">
                    <span className="w-8 h-8 rounded-xl bg-[#1C1D18] text-white flex items-center justify-center font-black text-xs shrink-0">
                      Q{q.number}
                    </span>
                    <div>
                      <div className="flex items-center gap-2 mb-1.5">
                        <span className="text-[11px] font-bold bg-[#F5F6F0] text-[#555A4E] px-2.5 py-0.5 rounded-full">
                          {q.category}
                        </span>
                        <span className="text-[11px] font-black text-emerald-800 bg-emerald-50 px-2 py-0.5 rounded-full">
                          الجواب الصحيح: ({q.correctAnswers.join(', ')})
                        </span>
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

                {isExpanded && (
                  <div className="pt-3 border-t border-[#F5F6F0] space-y-4">
                    {/* Choices */}
                    <div className="space-y-2">
                      {q.options.map(opt => {
                        const isCorrect = q.correctAnswers.includes(opt.id);
                        return (
                          <div 
                            key={opt.id}
                            className={`p-3 rounded-2xl border text-xs md:text-sm flex items-start gap-3 ${
                              isCorrect 
                                ? 'bg-emerald-50 border-emerald-400 text-emerald-950 font-bold' 
                                : 'bg-[#FAFBF7] border-[#E8EADB] text-gray-700'
                            }`}
                          >
                            <div className={`w-7 h-7 rounded-xl flex items-center justify-center font-bold text-xs shrink-0 border ${
                              isCorrect ? 'bg-emerald-600 text-white border-emerald-600' : 'bg-white text-gray-500 border-gray-300'
                            }`}>
                              {opt.id}
                            </div>
                            <div className="flex-1 pt-0.5 leading-relaxed">
                              {opt.text}
                            </div>
                            {isCorrect && (
                              <span className="text-[10px] font-black bg-emerald-600 text-white px-2 py-0.5 rounded-full shrink-0">
                                صحيح ✓
                              </span>
                            )}
                          </div>
                        );
                      })}
                    </div>

                    {/* Official Explanation Box */}
                    <div className="p-4 rounded-2xl bg-[#F7F9F2] border border-[#DEE3D3] space-y-2">
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
          })
        )}
      </div>
    </div>
  );
}
