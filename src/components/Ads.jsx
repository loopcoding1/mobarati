import { useEffect, useRef, useState } from 'react';
import { HeartHandshake, Megaphone } from 'lucide-react';

// إعلانات Adsterra لموقع mobarati.vercel.app (Site ID 6228772 — Approved).
// بانر فقط — بلا Popunder وبلا SocialBar وبلا Native، باش الموقع ما يبقاش مزعج.
// Desktop: 728x90 (728x90_1) / Mobile: 320x50 (320x50_1).
const BANNERS = {
  desktop: { key: '80ebd6b209581e10a8a3d24a024cfe4c', width: 728, height: 90 },
  mobile: { key: 'c8bb8dcdc09d2425b132f8be0b903227', width: 320, height: 50 },
};

// رابط الدعم المباشر (Smartlink_1) — كيتفتح إعلان فتبويب جديد.
export const SMARTLINK_URL = 'https://araplhn.org/4/11a472392816d1b0715605c73a5ee8f9';

// كود الـ Popunder (Popunder_1 — ID 32479612). السكريبت كيتسلح على أول ضغطة
// من بعد ما يتحمل (هو اللي كيفتح النافذة المنبثقة)، لداكشي كنحمّلوه مسبقاً
// منين كتبان البطاقة، وكنحقنوه غير منين المستخدم يضغط «فتح الإعلان» —
// الضغطة ديالو هي اللي كتفتح الإعلان، وما كيتفتح حتى إعلان بلا علمو.
export const POPUNDER_URL = 'https://abscloud.org/1/02fa6991cddcfc0cc1ff9852c97f364a';

function injectPopunder() {
  if (typeof document === 'undefined') return;
  if (document.querySelector(`script[src="${POPUNDER_URL}"]`)) return;
  const script = document.createElement('script');
  script.setAttribute('data-cfasync', 'false');
  script.src = POPUNDER_URL;
  document.head.appendChild(script);
}

// بطاقة منبثقة كتعلم المستخدم قبل ما يتفتح إعلان POP: كتبان مرة وحدة
// فالجلسة منين يضغط «انطلاق الاختبار»، والإعلان ما كيتفتح حتى يضغط هو
// على «فتح الإعلان وبدء الاختبار».
export function PopAdModal({ onConfirm, onCancel }) {
  // تحميل مسبق لسكريبت الـ Popunder باش منين يضغط المستخدم يتنفذ بسرعة
  // (التفعيل المؤقت ديال الضغطة كيبقى صالح لثواني قليلة).
  useEffect(() => {
    const link = document.createElement('link');
    link.rel = 'preload';
    link.as = 'script';
    link.href = POPUNDER_URL;
    document.head.appendChild(link);
    return () => {
      link.remove();
    };
  }, []);

  const handleConfirm = () => {
    injectPopunder();
    onConfirm();
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/50 backdrop-blur-xs flex items-center justify-center p-4" dir="rtl">
      <div className="bg-white rounded-3xl p-6 max-w-sm w-full space-y-4 shadow-xl animate-fadeIn">
        <div className="flex items-center gap-3">
          <span className="w-11 h-11 rounded-2xl bg-amber-50 border border-amber-100 flex items-center justify-center shrink-0">
            <Megaphone className="w-5 h-5 text-amber-600" />
          </span>
          <div>
            <h3 className="text-sm font-black text-[#191A15]">قبل ما تبدا — إعلان دعم</h3>
            <span className="text-[10px] font-bold text-[#8E9387] bg-[#F5F6F0] px-2 py-0.5 rounded-full">
              إعلان
            </span>
          </div>
        </div>

        <p className="text-xs md:text-sm text-[#555A4E] leading-relaxed">
          المنصة مجانية بفضل الإعلانات. قبل ما يبدا الاختبار، غادي يتفتح إعلان
          (نافذة منبثقة) لدعم استمرارها. اضغط «فتح الإعلان وبدء الاختبار» باش
          يتفتح الإعلان وتبدا الاختبار ديالك.
        </p>

        <div className="space-y-2">
          <button
            type="button"
            onClick={handleConfirm}
            className="w-full bg-[#1C1D18] hover:bg-[#2F322A] text-white py-3.5 rounded-2xl text-xs font-black transition-colors cursor-pointer"
          >
            فتح الإعلان وبدء الاختبار
          </button>
          <button
            type="button"
            onClick={onCancel}
            className="w-full py-2.5 rounded-2xl text-xs font-bold text-[#73786D] hover:bg-[#F5F6F0] transition-colors cursor-pointer"
          >
            إلغاء
          </button>
        </div>

        <p className="text-[10px] text-[#8E9387] text-center">
          هاد البطاقة كتبان مرة وحدة فهاد الجلسة.
        </p>
      </div>
    </div>
  );
}

function useIsDesktop() {
  const [isDesktop, setIsDesktop] = useState(
    () => typeof window !== 'undefined' && window.innerWidth >= 768
  );
  useEffect(() => {
    const onResize = () => setIsDesktop(window.innerWidth >= 768);
    window.addEventListener('resize', onResize);
    return () => window.removeEventListener('resize', onResize);
  }, []);
  return isDesktop;
}

// بانر Adsterra واحد، مع شارة «إعلان» واضحة وجملة الدعم.
// ملاحظة: كود Adsterra الأصلي هو atOptions + سكريبت؛ فـ React كنحقنو السكريبت
// فـ useEffect حيت السكريبتات المكتوبة فـ JSX ما كتتنفذش.
export function AdBanner() {
  const ref = useRef(null);
  const isDesktop = useIsDesktop();
  const { key, width, height } = isDesktop ? BANNERS.desktop : BANNERS.mobile;

  useEffect(() => {
    const container = ref.current;
    if (!container) return;
    container.innerHTML = '';
    const inline = document.createElement('script');
    inline.text = `atOptions = {'key' : '${key}', 'format' : 'iframe', 'height' : ${height}, 'width' : ${width}, 'params' : {}};`;
    const loader = document.createElement('script');
    loader.setAttribute('data-cfasync', 'false');
    loader.src = `https://bauval.org/22/${key}`;
    container.appendChild(inline);
    container.appendChild(loader);
    return () => {
      if (container) container.innerHTML = '';
    };
  }, [key, width, height]);

  return (
    <div className="bg-white rounded-3xl border border-[#E6E8DE] p-3 space-y-1.5">
      <div className="flex items-center justify-center gap-1 text-[10px] font-bold text-[#8E9387]">
        <Megaphone className="w-3 h-3" />
        <span>إعلان — الإعلانات كتدعم استمرار المنصة مجاناً</span>
      </div>
      <div className="flex justify-center overflow-hidden">
        <div ref={ref} style={{ width, height, maxWidth: '100%' }} />
      </div>
    </div>
  );
}

// زر الدعم: كيفتح إعلان (Smartlink) فتبويب جديد، ومكتوب عليه بوضوح
// قبل الضغط أن الضغطة غادي تفتح إعلان لدعم المنصة.
export function SupportAdButton() {
  return (
    <a
      href={SMARTLINK_URL}
      target="_blank"
      rel="noopener sponsored"
      className="bg-white rounded-3xl border border-[#E6E8DE] p-4 flex items-center gap-3 hover:bg-[#FAFBF7] transition-colors cursor-pointer"
    >
      <span className="w-10 h-10 rounded-2xl bg-rose-50 border border-rose-100 flex items-center justify-center shrink-0">
        <HeartHandshake className="w-5 h-5 text-rose-600" />
      </span>
      <span className="flex-1 text-right">
        <span className="block text-xs md:text-sm font-black text-[#191A15]">
          ادعم المنصة مجاناً
        </span>
        <span className="block text-[11px] text-[#73786D] leading-relaxed mt-0.5">
          بالضغط هنا غادي يتفتح إعلان — دعمك كيساعدنا نبقاو مجانيين
        </span>
      </span>
      <span className="text-[10px] font-bold text-[#8E9387] bg-[#F5F6F0] px-2 py-1 rounded-full shrink-0">
        إعلان
      </span>
    </a>
  );
}
