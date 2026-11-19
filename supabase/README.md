# 🗄️ إعداد قاعدة بيانات Supabase لمنصة التحضير لمباريات التعليم (إتقان)

تم تصميم وبناء قاعدة البيانات هذه باحترافية لتكون **مصدر البيانات المركزي (Headless Read-Only API)** للمنصة، مع حماية أمنية صارمة عبر **Row Level Security (RLS)** تمنع أي تعديل أو حذف من طرف زوار المنصة.

---

## 📁 محتويات مجلد `supabase/`

1. **[full_setup.sql](file:///c:/Users/Zakariya/Documents/examen/supabase/full_setup.sql)**:
   ملف SQL موحد ومتكامل يحتوي على كل شيء (المخطط + الصلاحيات + الدوال + جميع البيانات لـ 412 سؤالاً). يمكنك نسخه ولصقه دفعة واحدة في محرر Supabase.
2. **[schema.sql](file:///c:/Users/Zakariya/Documents/examen/supabase/schema.sql)**:
   هيكل الجداول (`specialties`، `exams`، `questions`)، الفهارس، سياسات الأمان RLS للقراءة فقط، ودالة الاختبار العشوائي `get_random_exam_questions()`.
3. **[seed.sql](file:///c:/Users/Zakariya/Documents/examen/supabase/seed.sql)**:
   جميع البيانات الأولية: تخصص ملحقي الاقتصاد والإدارة، 6 امتحانات رسمية (2024، 2023، 2022)، و 412 سؤال QCM مع خياراتها وتصحيحها وتعليلاتها القانونية.

---

## 🚀 طريقة التثبيت في Supabase خطوة بخطوة

1. افتح حسابك في [Supabase](https://supabase.com/) وأنشئ مشروعاً جديداً (New Project).
2. من القائمة الجانبية في لوحة التحكم، ادخل إلى **SQL Editor**.
3. افتح الملف **`supabase/full_setup.sql`** وانسخ محتواه بالكامل.
4. ألصق المحتوى في **SQL Editor** واضغط على زر **RUN**.
5. ستظهر لك رسالة نجاح `Success. No rows returned`.

---

## 🔒 الأمان وحماية البيانات (Row Level Security)

تم تفعيل ميزة **RLS** على كافة الجداول الثلاثة مع السماح فقط باستعلامات **القراءة (`SELECT`)**:
```sql
CREATE POLICY "Public read-only access for specialties" ON public.specialties FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "Public read-only access for exams" ON public.exams FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "Public read-only access for questions" ON public.questions FOR SELECT TO anon, authenticated USING (true);
```
- **منع الإضافة والتعديل والحذف:** لا توجد أي سياسة لـ `INSERT` أو `UPDATE` أو `DELETE` للمستخدمين أو الزوار (`anon`)، وبالتالي فإن أي محاولة لتغيير أو حذف أي سؤال من الواجهة البرمجية للواجهة ستُرفض تلقائياً من خادم PostgreSQL بـ `403 Forbidden`.
- **التعديل محصور بالمشرفين:** فقط من يملك مفتاح الخدمة `service_role` أو من خلال لوحة تحكم Supabase Dashboard يستطيع التعديل.

---

## 🎲 دالة الامتحان العشوائي المدمجة (RPC)

تتيح للموقع جلب امتحان تدريبي مخصص بأسئلة عشوائية من جميع السنوات بضغطة زر وبسرعة فائقة:
```sql
-- مثال استدعاء 60 سؤال عشوائي من أي دورة:
SELECT * FROM public.get_random_exam_questions(60);
```

وفي مكتبة جافاسكريبت:
```javascript
const { data, error } = await supabase.rpc('get_random_exam_questions', { p_count: 60 });
```

---

## 📊 إحصائيات البيانات المغذاة (Seed Data)

- **التخصصات:** 1 (مختصو الاقتصاد والإدارة - ملحقي الاقتصاد والإدارة).
- **الامتحانات الرسمية:** 6 امتحانات موزعة على 3 سنوات:
  - 2024: الموضوع 1 (72 سؤالاً) + الموضوع 2 (60 سؤالاً)
  - 2023: الموضوع 1 (80 سؤالاً) + الموضوع 2 (60 سؤالاً)
  - 2022: الموضوع 1 (80 سؤالاً) + الموضوع 2 (60 سؤالاً)
- **إجمالي الأسئلة الموثقة:** **412 سؤالاً** بخياراتها الأربعة/الخمسة، وتصحيحها المعتمد، وسندها القانوني.
