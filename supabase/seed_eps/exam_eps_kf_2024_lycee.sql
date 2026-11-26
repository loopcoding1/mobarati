-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024)
-- ====================================================================
-- المصدر: solved/2024/ديداكتيك التربية البدنية - الكفاءة المهنية - التأهيلي - دورة 2024.md
--   (امتحان الكفاءة المهنية، ولوج الدرجة الأولى — التأهيلي، دورة 2024؛ الوضعية: القفز العالي،
--    جذع مشترك، 37 تلميذاً؛ مكوّن الديداكتيك على 16 نقطة، 3 ساعات، المعامل 1.)
-- الأجوبة: نموذجية من إعداد mesconcours.ma — لا مفتاح رسمي منشور لهذه الدورة (يصرّح الموقع بذلك).
--   مصدر ثانوي: المسح الأصلي للورقة على wadifa-info (النموذج 4974). لم يُستعمل AI Studio.
-- التحقق: 9 أسئلة مفتوحة بالفرنسية، كلها source_type='third_party'. verified=true فقط للأسئلة التي
--   يؤكد الملف المصدر (ملاحظات 1–3) التحقق الفردي من عناصرها مقابل الورقة: Q1 وQ2-1 وQ2-2 وQ3-3
--   (أرقام الرفض/الانسداد: 12 رفضاً و9 انسدادات = 21 من 37، متسقة مع الجدول 2)، وQ2-3 (الدفع بالقدم
--   الخارجية)، وQ3-1 (بديل القفاز/المطاط مطابق لتوصية المفتش). باقي الأسئلة verified=false.

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2024_lycee', 'eps_lycee', 2024, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024)', 'دورة 2024', 180, 9, 'لا مفتاح رسمي منشور لهذه الدورة؛ أجوبة نموذجية من mesconcours.ma؛ مكوّن الديداكتيك فقط على 16 نقطة.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (9 سؤالاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q1', 'exam_eps_kf_2024_lycee', 1, 'تحليل سياق القسم + المقاربات البيداغوجية', 'Analyser le contexte spécifique de cette classe en exploitant l''intérêt de la connaissance relative aux approches pédagogiques pour remédier au constat général ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): 1. قراءة السياق: ؛ قسم كثير العدد (37 تلميذاً) وغير متجانس جداً: 20 بنتاً و17 ولداً، 5 أولاد قصيرو القامة، بنتان بدينتان، مستويات تمتد من الرفض الكلي إلى الفوزبوري-فلوب. ؛ تمثلات خاطئة تعيق: «يجب أن تكون طويلاً» (معتقد خاطئ يثبط الصغار والبنات)، سلوك تحدي ومخاطرة لدى الأولاد (رمي النفس على البساط)، الخوف والإحباط لدى البنات (21 تلميذاً من 37 يرفضون أو ينسدون، أي 57%: 17 بنتاً من 20 مقابل 4 أولاد من 17). ؛ عتاد كافٍ للتنويع (مطاط 20 م، 13 لوحاً، 20 مخروطاً، 5 بساط sarneiges) لكن 3 بساط سقوط فقط، ما يحد عدد ورشات التجاوز الظهري الآمنة؛ فضاء حر 30 م × 20 م قابل للاستغلال لجري الانطلاق والورشات. 2. إسهام المقاربات البيداغوجية: ؛ المقاربة بالكفاءات وبيداغوجيا وضعيات-المشاكل: بناء وضعيات يحل فيها التلميذ مشكلاً حركياً (تجاوز أعلى ما يمكن) بمتغيرات (الارتفاع، الانطلاق، عقبة مرنة) بدل فرض نموذج تقني وحيد. ؛ البيداغوجيا المتمايزة: ورشات بارتفاعات مختلفة وعقبات مختلفة (المطاط بدل العارضة للمثبطين)، أهداف مكيفة مع الطول (تقويم الأداء نسبة إلى الطول، التفاضل طول-أداء)، ما يهدم تمثل «يجب أن تكون طويلاً». ؛ المقاربة البنائية والاجتماعية-البنائية: الانطلاق من التمثلات، جعلها تُلفَظ ثم تُواجَه بالتجربة (صغير يتجاوز طوله)، عمل في مجموعات الحاجة وتدريس الأقران. ؛ بيداغوجيا النجاح وتدبير الوجداني: تدرج مطمئن (قفزات منخفضة، استقبال على بساط، ارتفاع متواضع) لرفع خوف البنات؛ قواعد سلامة وعقد لقناة مخاطرة الأولاد. خلاصة: معرفة المقاربات تسمح بتحويل الملاحظة (الخوف، التحدي، المعتقدات الخاطئة) إلى أهداف تعلم متمايزة وآمنة ومتمركزة على نجاح كل واحد. توضيح (mesconcours): السؤال ينتظر حركتين: تحليل دقيق للسياق (الأعداد، عدم التجانس، التمثلات، العتاد) ثم استغلال المقاربات البيداغوجية كروافع للمعالجة. نسخة جيدة تربط كل تمثل بمقاربة: المعتقد الخاطئ حول الطول والتمايز، الخوف وبيداغوجيا النجاح، التحدي والسلامة المتعاقد عليها.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q2', 'exam_eps_kf_2024_lycee', 2, 'الموافقة على شبكة الملاحظة؟', 'Etes-vous d''accord avec la grille d''observation présentée par l''enseignant lors du test d''observation ? Justifier votre réponse.', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): لا، الشبكة مقبولة جزئياً فقط. ما هو نافع فيها: تعطي حالة أولية شاملة (من يرفض، من ينسد، أي أسلوب يُستعمل) وتؤكد ملاحظة الفريق (21 تلميذاً في رفض أو انسداد من 37، أي 12 رفضاً و9 انسدادات، خصوصاً البنات). حدودها: ؛ تمزج معايير من طبيعة مختلفة: سلوكيات وجدانية (الرفض، الانسداد) وأساليب تقنية (المقص، البطني، الفوزبوري)، دون مؤشرات قابلة للملاحظة. ؛ تتمركز على النتيجة (شكل التجاوز) لا على مراحل القفز: جري الانطلاق (الإيقاع، المسار المنحني أو المستقيم)، الدفع (قدم الدفع، الرجل الحرة، الذراعان)، التجاوز، الاستقبال. ؛ لا تشير إلى الارتفاع المتجاوَز، ولا الأداء نسبة إلى الطول، ولا عدد المحاولات: يستحيل تحديد مستوى كل واحد وقياس تقدم. ؛ تصنف تلاميذ (منهم 4 في الفوزبوري) دون التحقق مما إذا كانت التقنية متقنة وآمنة (استقبال على القفا، عتاد سقوط غير كافٍ). ؛ جماعية ومجهولة (عدّ)، فلا يمكن استغلالها لتكوين مجموعات الحاجة أو للتقويم التكويني. توضيح (mesconcours): الاختبار التشخيصي يجب أن ينتج معطيات قابلة للاستغلال في التخطيط. التبرير المنتظر يبين أن الشبكة تلاحظ دون أن تفسّر: لا مؤشرات حسب المرحلة، لا قياس أداء، لا تتبع فردي. يُقبل جواب متدرج (نعم من حيث المبدأ، لا من حيث البناء) إذا كان مُحاجَجاً.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q3', 'exam_eps_kf_2024_lycee', 3, 'نمذجة السلوكيات الظاهرة وتفسيرها', 'Modélisez et interprétez les comportements émergés ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): نمذجة في مستويات مهارة (من الأدنى إلى الأعلى): ؛ المستوى 0، سلوك تجنب: رفض المرور (10 بنات، ولدان، أي 12 تلميذاً). العقبة تُعاش كخطر؛ البعد الوجداني يغلب. ؛ المستوى 1، سلوك توقف: انسداد أمام العقبة (7 بنات، ولدان، أي 9 تلاميذ). التلميذ ينخرط في الجري لكنه يتوقف عند الدفع: لا يجرؤ على مغادرة الأرض نحو العقبة، أو جري انطلاقه سيئ الضبط. ؛ المستوى 2، تجاوز من نوع «خطو»: مقص (3 بنات، ولدان، أي 5 تلاميذ). تجاوز جالس، مركز ثقل مرتفع فوق العارضة، دفع ضعيف لكن سلوك مطمئن. ؛ المستوى 3، تجاوز بطني (7 أولاد) وظهري فوزبوري-فلوب (4 أولاد): بحث عن الفعالية بالالتفاف حول العارضة؛ لدى هؤلاء الأولاد، قد يكون الأمر «رمي النفس» على البساط بدافع التحدي أكثر منه تقنية متقنة. التفسير: ؛ 21 تلميذاً من 37 (57%) لا يتجاوزون: المشكل ذو الأولوية وجداني وأمني، لا تقني. ؛ انقسام بنات/أولاد: 17 بنتاً من 20 في رفض أو انسداد مقابل 4 أولاد من 17؛ إنه يترجم الخوف والتمثلات من الملاحظة العامة. ؛ الأولاد الذين يتجاوزون يختارون أساليب متقدمة دون المراحل السابقة، سلوك مخاطرة وتحدي. ؛ النتيجة: يجب معالجة متمايزة، تأمين وثقة للمستويين 0 و1، بناء الدفع والجري المنحني للمستوى 2، إتقان الاستقبال وسلامته للمستوى 3. توضيح (mesconcours): النمذجة هي تجميع السلوكيات الملاحَظة في مستويات مرتبة وتوصيف كل واحد؛ والتفسير هو استخلاص الأسباب (وجدانية، تقنية، تمثلات) وأولويات التدريس. أعداد الجدول 2 تجمع فعلاً 20 بنتاً و17 ولداً، ما يسمح بتكميم التفسير.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q4', 'exam_eps_kf_2024_lycee', 4, 'شبكتان: للمدرس وللتلميذ (المعارف الإجرائية)', 'Elaborez, pour cette classe, deux grilles d''observation : l''une pour l''enseignant et l''autre pour l''élève afin de préciser les connaissances procédurales que ces élèves doivent acquérir en termes d''apprentissage face à l''activité saut en hauteur ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): الشبكة 1، للمدرس (فردية، لكل تلميذ، مشفرة 0 = غير مكتسب، 1 = قيد الاكتساب، 2 = مكتسب): ؛ جري الانطلاق: عدد خطوات منتظم (5 إلى 7)؛ مسار منحنٍ في الخطوات الأخيرة؛ تسارع تدريجي. ؛ الدفع: دفع على القدم الخارجية (الأبعد عن العارضة)؛ رجل حرة وذراعان مرفوعان نحو الأعلى؛ دفع عمودي، دون توقف أو تعثر. ؛ التجاوز: تجنب العارضة (مقص، دوران ظهري)؛ حوض فوق العارضة. ؛ الاستقبال: على الظهر أو الكتفين في وسط البساط، ذقن مطوي، دون استقبال على القفا. ؛ الأداء: الارتفاع المتجاوَز؛ التفاضل طول-أداء؛ عدد المحاولات. ؛ السلوكيات: انخراط دون رفض أو انسداد؛ احترام قواعد السلامة. الشبكة 2، للتلميذ المراقب (ملاحظة مشتركة في ثنائي، أجوبة نعم / لا): ؛ هل جرى زميلي دون توقف حتى العارضة؟ ؛ هل أخذ دفعه بالقدم الأبعد عن العارضة؟ ؛ هل رفع رجله الحرة وذراعيه نحو الأعلى؟ ؛ هل تجاوز دون لمس المطاط أو العارضة؟ ؛ هل سقط على ظهره في وسط البساط؟ ؛ الارتفاع الناجح: ...... سم؛ النجاح في المحاولة رقم ...... عناصر شبكة التلميذ مبسطة وقابلة للملاحظة بالعين المجردة؛ وهي تقابل المعارف الإجرائية المستهدفة: معرفة الجري في منحنى، معرفة أخذ دفع عمودي بالقدم الصحيحة، معرفة التجاوز والاستقبال بأمان. توضيح (mesconcours): المعارف الإجرائية «معارف-فعل» قابلة للملاحظة: جري الانطلاق، الدفع، التجاوز، الاستقبال. شبكة المدرس دقيقة ومتدرجة للتشخيص والتتبع؛ وشبكة التلميذ بسيطة وثنائية لإشراكه في الملاحظة والتقويم الذاتي. شبكة لكل فاعل، كل واحدة بمعايير ومؤشرات، تساوي النقطتين.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q5', 'exam_eps_kf_2024_lycee', 5, 'ملاحظات المفتش حسب المعايير الديداكتيكية + بدائل', 'Suite aux recommandations faites par Mr l''inspecteur, repenser cette leçon en répondant aux questions suivantes (voir document n 1) : Répertoriez les remarques de Mr l''inspecteur en fonction des paramètres didactiques et suggérez des alternatifs pour assurer l''apprentissage ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): 1. إعداد التلميذ (الإحماء): ؛ الملاحظة: إحماء غير ملائم ولا نوعي، بينما العنق والعمود الفقري معرَّضان. ؛ البديل: إحماء عام ثم نوعي (تعبئة عنقية وفقرية، تقوية، رفع ركب، دفع على قدم واحدة، جري في منحنى)، بشكل لعبي. 2. العتاد وتهيئة الوسط: ؛ الملاحظة: قفاز مستعمل طوال الحصة، عقبة بارتفاع معياري، موضع ثابت أمام سكان غير متجانسين، ومن ثم خوف وإنتاج متدهور. ؛ البديل: حذف القفاز (أو حصره في وضعية نقطية لاكتشاف الطيران)؛ استبدال العارضة بالمطاط؛ تنظيم 3 أو 4 ورشات بارتفاعات متمايزة مع بساط السقوط الثلاثة وبساط sarneiges الخمسة؛ ارتفاعات قابلة للضبط حسب المستوى. 3. التنظيم البشري وزمن الانخراط الحركي: ؛ الملاحظة: مروران لكل تلميذ طوال الحصة، زمن انخراط حركي ضعيف جداً. ؛ البديل: مجموعات حاجة من 6 إلى 9 تلاميذ في الورشة، تناوب، مرورات متتابعة؛ ورشات دون بساط (دفع، جري منحني مرسوم بالجير، قفزات بين المخاريط) أثناء الانتظار؛ هدف 10 إلى 15 مروراً لكل تلميذ. 4. دور المدرس والسلامة: ؛ الملاحظة: المدرس يبقى مراقباً دائماً وحصرياً ولا يرى ثغرات السلامة عند الاستقبال. ؛ البديل: مدرس متنقل، يتدخل وينظم ويحمي؛ تفويض جزء من الملاحظة للتلاميذ (شبكات ملاحظة مشتركة، أدوار مراقب وحكم وحامٍ)؛ تعليمات صارمة للاستقبال ومراقبة البساط (الوصل، الموضع). توضيح (mesconcours): الملاحظات تُصنف حسب المعايير الديداكتيكية: الإعداد (الإحماء)، الوسط والعتاد (القفاز، الارتفاع، الموضع)، التنظيم وزمن الانخراط الحركي، دور المدرس والسلامة. لكل معيار يعطي الجواب بديلاً ملموساً واقعياً مع عتاد الجدول 1.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q6', 'exam_eps_kf_2024_lycee', 6, 'إعادة هيكلة الإحماء النوعي', 'La notion d''échauffement spécifique occupe une place prépondérante dans la leçon d''EPS, comment peut-on restructurer cette étape dans le cadre de l''APS saut en hauteur pour la rendre plus attrayante et plus efficace ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours) — إعادة هيكلة الإحماء في ثلاثة أزمنة تدريجية (نحو 15 دقيقة): 1. إحماء لعبي (قلبي-وعائي وتعبئة): لعبة مطاردة أو تناوب بجري في منحنى حول المخاريط؛ تعبئة مفصلية للكاحلين والركبتين والوركين، ثم العنق والعمود الفقري (دورانات لطيفة، التفافات، جسر ظهري تدريجي). 2. إحماء نوعي: سلاسل رياضية (رفع ركب، كعب-أرداف، خطوات قافزة)؛ دفع على قدم واحدة مع ذراعين ورجل حرة («لمس كرة معلقة»، «لمس السلة»)؛ جري في قوس دائرة مرسوم بالجير مع دفع على القدم الخارجية. 3. قفزات تمهيدية: قفزات مقص ثم تجاوزات صغيرة للمطاط بارتفاع منخفض؛ سقوطات ظهرية من وضعية جالسة على البساط لترويض الاستقبال. ما يجعله جذاباً: شكل لعبي، تحديات فرق، موسيقى، تنوع. ما يجعله فعالاً: محتويات مرتبطة مباشرة بمراحل القفز والوقاية من الصدمات (القفا، الظهر، الكاحلان). توضيح (mesconcours): الإحماء النوعي يُعدّ البنى المستعمَلة (الكاحلان، الركبتان، العمود الفقري، العنق) وحركات القفز (الجري المنحني، الدفع، الاستقبال). وجعله جذاباً يمر بالشكل اللعبي والتحدي، ما يجيب أيضاً عن عدم التحفيز الملاحَظ. نقطة واحدة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q7', 'exam_eps_kf_2024_lycee', 7, 'وضعية تعليم-تعلم لمعالجة الرفض والانسداد', 'Proposez une situation d''enseignement-apprentissage permettant de résoudre le problème du refus et de blocage observés chez certains élèves ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours) — الوضعية: «اعبر نهر المطاط»: ؛ الجمهور: التلاميذ الـ21 في رفض أو انسداد (مجموعة حاجة). ؛ الهدف: الانخراط في التجاوز دون توقف، بالمقص، مع دفع على قدم واحدة، والجرأة على الاستقبال. ؛ العتاد: مطاط مشدود بين عمودين أو ممسوك من تلميذين، بساطا sarneiges، بساط سقوط، مخاريط، جير. ؛ التهيئة: 3 ممرات؛ مطاط بارتفاع منخفض (40 إلى 60 سم، تحت الركبة)، جري قصير من 3 إلى 5 خطوات معلَّم بالجير، دفع في منطقة مرسومة. ؛ الغاية للتلميذ: تجاوز المطاط دون توقف، قدم الدفع في المنطقة، والسقوط على القدمين ثم على البساط. ؛ التعليمات: «اجرِ دون توقف»، «ادفع على قدم واحدة»، «ارفع الرجل الأقرب إلى المطاط أولاً». ؛ المتغيرات (تدرج): رفع المطاط 5 سم بعد 3 نجاحات؛ إطالة الانطلاق؛ الانتقال من المطاط إلى عارضة خفيفة؛ استقبال على الظهر جالساً ثم بالدوران. ؛ معايير النجاح: 3 تجاوزات من 4 دون توقف بارتفاع مختار؛ الارتفاع يزيد من حصة لأخرى. ؛ السلامة والوجداني: مطاط لا يؤلم، حماية المدرس، تشجيع، عمل في ثنائي مع زميل مراقب. توضيح (mesconcours): الرفض والانسداد منشؤهما وجداني: العقبة الصلبة والمرتفعة تُخيف. يجب إذن أن ترفع الوضعية الخطر المدرَك (مطاط منخفض، انطلاق قصير، استقبال آمن) وتنظم النجاح قبل الرفع التدريجي. وضعية كاملة تتضمن الغاية والتهيئة والتعليمات والمتغيرات ومعايير النجاح والسلامة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', true, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q8', 'exam_eps_kf_2024_lycee', 8, 'التقويم التكويني للوضعية المقترحة + شبكة', 'Montrez comment vous allez procéder pour l''évaluation formative par rapport à la situation proposée en question 3-3, tout en illustrant votre point de vue par une grille relative aux trois domaines de connaissances conceptuelles, procédurales et comportementales ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): المنهجية: التقويم التكويني يرافق الوضعية. معايير النجاح معلَنة منذ البداية؛ كل تلميذ يلاحظه زميل (تقويم مشترك) والمدرس؛ النتائج تُعلَّق فوراً (تغذية راجعة) والمتغير (الارتفاع، الانطلاق) يُضبط حسب النجاح. الشبكة (نعم / قيد الاكتساب / لا): ؛ المعارف المفاهيمية (المعرفة): يعرف تسمية قدم دفعه؛ يعرف شرح لماذا يؤخذ الدفع بعيداً عن المطاط؛ يعرف قواعد السلامة عند الاستقبال. ؛ المعارف الإجرائية (المهارة): يجري دون توقف؛ يأخذ الدفع على قدم واحدة في المنطقة؛ يتجاوز بالمقص دون لمس المطاط؛ يستقبل بأمان؛ الارتفاع الناجح: ...... سم. ؛ المعارف السلوكية (السلوك): ينخرط دون رفض؛ يقبل رفع الارتفاع؛ يلاحظ زميله وينصحه؛ يحترم تعليمات السلامة والعتاد. الاستغلال: تلميذ ينجح في 3 محاولات من 4 ينتقل إلى الارتفاع التالي؛ وتلميذ يفشل يتلقى معالجة (انطلاق مقصَّر، ارتفاع مخفَّض، مساعدة يدوية). توضيح (mesconcours): التقويم التكويني ينظم التعلم أثناء الفعل، انطلاقاً من معايير يعرفها التلميذ. الشبكة المطلوبة تقطع مجالات المعارف الثلاثة بمؤشرات قابلة للملاحظة مرتبطة بوضعية السؤال 3-3. نقطة واحدة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — التأهيلي (دورة 2024) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_lycee_q9', 'exam_eps_kf_2024_lycee', 9, 'النقل إلى نشاط آخر (رؤية مستعرضة)', 'Dans le cadre d''une vision transversale d''enseignement, comment peut-on résoudre les problèmes du constat général dans une autre APS présentant des caractéristiques similaires ?', false, '[]'::jsonb, ARRAY[]::text[], 'إجابة نموذجية (mesconcours): المشاكل الملاحَظة في الملاحظة العامة مستعرضة: تمثلات خاطئة حول المورفولوجيا، خوف من العقبة والخطر، سلوك تحدي، عدم تجانس بنات/أولاد. نجدها في أنشطة ذات خطر مدرَك وتجاوز: الجمباز (قفز الحصان، الدحرجات، الدعم المعكوس)، القفز الطويل، سباق الحواجز. مثال: الجمباز الأرضي وعلى الأجهزة. ؛ تمثل «يجب أن تكون مرناً أو خفيفاً»: نعمل على النجاح حسب المستويات (عناصر مكيفة مع كل مورفولوجيا، تسلسلات مختارة) وتقويم يثمّن الإتقان والتنفيذ أكثر من الصعوبة الخام. ؛ الخوف (الانقلاب، الارتفاع): تهيئة الوسط (مستويات مائلة، بساط سميك، حماية)، تدرج بخطوات صغيرة، وضعيات مطمئنة قبل الوضعيات المرجعية. ؛ سلوك تحدي الأولاد: عقد سلامة، أدوار حامٍ وحكم، معايير تنفيذ تعاقب المخاطرة غير المتحكم فيها. ؛ عدم التجانس: مجموعات حاجة، ورشات متمايزة، تدريس الأقران. المبادئ المستعرضة: الانطلاق من التمثلات ومواجهتها بالتجربة؛ التمايز؛ التأمين للانخراط؛ زيادة زمن الانخراط الحركي بتنظيم الورشات؛ إعطاء أدوار اجتماعية (مراقب، حامٍ، حكم)؛ التقويم التكويني. توضيح (mesconcours): الرؤية المستعرضة تتمثل في تحديد ما لا يعتمد على النشاط (الوجداني، التمثلات، عدم التجانس، السلامة) وإعادة استثمار نفس المبادئ الديداكتيكية في نشاط قريب. الجواب يسمّي نشاطاً مقارناً، ويبين تطابق المشاكل وينقل الحلول. نقطتان.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1272/', false, NULL)
ON CONFLICT (id) DO UPDATE SET 
    text = EXCLUDED.text,
    options = EXCLUDED.options,
    correct_answers = EXCLUDED.correct_answers,
    explanation = EXCLUDED.explanation,
    question_type = EXCLUDED.question_type,
    source_type = EXCLUDED.source_type,
    source_url = EXCLUDED.source_url,
    verified = EXCLUDED.verified,
    verification_note = EXCLUDED.verification_note;
