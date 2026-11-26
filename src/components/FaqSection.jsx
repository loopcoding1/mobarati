import React from 'react';

// الأسئلة الشائعة — نفس الأسئلة والأجوبة الموجودة في JSON-LD بـ index.html
// (لازم يبقاو متطابقين: غوغل كيقارن المحتوى الظاهر مع البيانات المنظمة).
const FAQS = [
  {
    q: 'ما هي مباراة التعليم في المغرب؟',
    a: 'مباراة وطنية تنظمها وزارة التربية الوطنية والتعليم الأولي والرياضة لتوظيف أساتذة التعليم الابتدائي والثانوي وأطر الدعم التربوي والإداري، عبر المراكز الجهوية لمهن التربية والتكوين (CRMEF).',
  },
  {
    q: 'هل أسئلة منصة مباراتي رسمية؟',
    a: 'نعم، جميع الامتحانات مأخوذة من دورات رسمية سابقة، منها دورات 2016 إلى 2025 للتعليم الابتدائي، مع الحلول والتعليلات المعتمدة.',
  },
  {
    q: 'كيف أستعمل منصة مباراتي للتحضير؟',
    a: 'اختر التخصص، ثم الامتحان والدورة، ثم إعدادات الاختبار (عرض الجواب فور كل سؤال أو في النهاية فقط)، واضغط «انطلاق الاختبار الآن» وابدأ الحل.',
  },
  {
    q: 'هل منصة مباراتي مجانية؟',
    a: 'نعم، المنصة مجانية بالكامل، وتستمر بفضل الإعلانات.',
  },
  {
    q: 'ما هي التخصصات المتوفرة في المنصة؟',
    a: 'التعليم الابتدائي بجميع مواده وديداكتيكها، ومختصي الاقتصاد والإدارة.',
  },
  {
    q: 'هل يمكنني مراجعة أخطائي بعد الاختبار؟',
    a: 'نعم، بعد إنهاء الاختبار تظهر نتيجتك مع مراجعة كل سؤال وجوابه الصحيح وتعليله، ويمكنك إعادة الأسئلة التي أخطأت فيها فقط.',
  },
];

export default function FaqSection() {
  return (
    <section id="faq" aria-label="الأسئلة الشائعة حول مباراة التعليم" className="mt-6">
      <div className="bg-white rounded-3xl border border-[#E6E8DE] shadow-sm p-5 md:p-6 space-y-4">
        <div>
          <h2 className="text-sm md:text-base font-extrabold text-[#191A15]">
            الأسئلة الشائعة حول مباراة التعليم
          </h2>
          <p className="text-xs text-[#73786D] pt-1">
            كل ما تحتاج تعرفو على المباراة وعلى طريقة التحضير في منصة مباراتي.
          </p>
        </div>

        <div className="space-y-2.5">
          {FAQS.map((item) => (
            <details
              key={item.q}
              className="group rounded-2xl border border-[#E6E8DE] bg-[#FAFBF7] open:bg-white transition-colors"
            >
              <summary className="px-4 py-3 text-xs md:text-sm font-bold text-[#191A15] cursor-pointer list-none flex items-center justify-between gap-3">
                <span>{item.q}</span>
                <span className="text-[#73786D] text-base leading-none shrink-0 group-open:rotate-45 transition-transform">+</span>
              </summary>
              <p className="px-4 pb-3.5 text-xs md:text-sm text-[#555A4E] leading-relaxed">
                {item.a}
              </p>
            </details>
          ))}
        </div>
      </div>
    </section>
  );
}
