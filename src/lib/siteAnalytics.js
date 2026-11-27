// تتبع زوار المنصة — إحصائيات مجمّعة بلا أي بيانات شخصية.
// session_id عشوائي فمتصفح الزائر فقط (localStorage)؛ ما كنتخزنوش IP
// ولا اسم ولا إيميل ولا أي معرّف شخصي. الإرسال لا يوقف الواجهة أبداً.
import { supabase } from './supabase';

function getSessionId() {
  try {
    let id = localStorage.getItem('mobarati_session');
    if (!id) {
      id = crypto.randomUUID
        ? crypto.randomUUID()
        : 's-' + Date.now() + '-' + Math.random().toString(36).slice(2);
      localStorage.setItem('mobarati_session', id);
    }
    return id;
  } catch {
    return 'unknown';
  }
}

function getDevice() {
  try {
    return /Mobi|Android|iPhone|iPad/i.test(navigator.userAgent) || window.innerWidth < 768
      ? 'mobile'
      : 'desktop';
  } catch {
    return 'unknown';
  }
}

function getReferrer() {
  try {
    if (!document.referrer) return null;
    return new URL(document.referrer).hostname || null;
  } catch {
    return null;
  }
}

export function trackSiteEvent(event) {
  try {
    if (!supabase) return;
    supabase
      .from('site_analytics')
      .insert({
        session_id: getSessionId(),
        device: getDevice(),
        referrer: getReferrer(),
        ...event,
      })
      .then(
        () => {},
        () => {},
      );
  } catch {}
}

export function trackPageview(page, extra = {}) {
  trackSiteEvent({ event_type: 'pageview', page, ...extra });
}
