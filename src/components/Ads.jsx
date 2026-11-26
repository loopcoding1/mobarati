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
