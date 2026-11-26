-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021)
-- ====================================================================
-- المصدر: ملف الحل solved/2021/ديداكتيك التربية البدنية - الكفاءة المهنية - الإعدادي - دورة 2021.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2021-1457/
--   لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 9 سؤالاً مفتوحاً؛ منها 4 verified=true (مصدر third_party)؛
--   5 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2021_college', 'eps_college', 2021, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021)', 'دورة دجنبر 2021', 180, 9, 'لا مفتاح رسمي منشور لهذه الدورة؛ الأجوبة نموذجية من إعداد mesconcours.ma؛ لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (9 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q1', 'exam_eps_kf_2021_college', 1, 'تحليل السياق وتأويله (الجمباز الأرضي)', 'السياق: جمباز أرضي، السنة الأولى إعدادي، 37 تلميذاً (17 فتاة و20 فتى)؛ استبيان التمثلات (الجدول 1)، عتاد (الجدول 2)، اختبار ملاحظة بشبكة (الجدول 3: رفض/تردد/ربط)؛ الوثيقة 1: ملاحظات الفريق البيداغوجي على الحصة الثالثة (دوران، صعوبة A).
Analysez et interprétez le contexte relatif à cette classe (Tableau n°1) ?', false, '[]'::jsonb, ARRAY[]::text[], 'التحليل: القسم مختلط وغير متجانس (17 فتاة، 20 فتى) مع ثلاثة تلاميذ يعانون السمنة وتلميذ مصاب بالربو، أي حاجات خاصة (تكييف الجهد والخطر والمهمة، ورأي طبي بالنسبة إلى الربو). الجدول رقم 1 يكشف فجوة واضحة بين الفتيان والفتيات: 90% حماس لدى الفتيان مقابل 60% لدى الفتيات، و10% رفض مقابل 40%.

التأويل: تمثلات التلاميذ تربط الجمباز بالمرونة والخطر الدائم وبقدرات بدنية استثنائية؛ الفتيان يرون فيه متعة العناصر البهلوانية، والفتيات يرين فيه أساساً الخوف والشك في قدراتهن.

النتائج بالنسبة إلى الأستاذ: تأمين الممارسة (تهيئة تدريجية، حماية/parades، بسط)؛ تمايز المهام حسب الجنس والبنية الجسدية والصحة؛ تثمين عناصر في المتناول؛ العمل على التمثلات عبر نجاحات سريعة؛ وتوقع أدوار بديلة (حكم، حامٍ/parade، ملاحظ) للتلاميذ المعفيين أو المترددين.

عناصر التنقيط (حسب mesconcours): قراءة مرقّمة للجدول (1ن) + التأويل مع نتائجه البيداغوجية (1ن).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', false, 'مصدران مختلفان لا يتطابقان عددياً: نسبة الرفض 40% لدى الفتيات في الاستبيان (≈7 فتيات من 17) بينما اختبار الملاحظة سجّل 3 حالات رفض و3 حالات تردد — الأول تصريحي والثاني ملاحَظ.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q2', 'exam_eps_kf_2021_college', 2, 'الموارد التي يعبّئها نشاط الجمباز', 'En se référant au « tableau n°2 », répondez aux questions suivantes :
Explicitez les ressources mobilisées par l''activité gymnastique ? Justifier vos propos.', false, '[]'::jsonb, ARRAY[]::text[], 'الموارد التي يعبّئها التلميذ في الجمباز الأرضي:
- موارد حركية (motrices) : التنسيق، التوازن، المرونة، القوة العضلية، الدورانات والارتكازات المقلوبة؛
- موارد معرفية (cognitives) : حفظ العناصر وربطها، فهم نموذج مؤسساتي للربط (enchaînement)، تقييم الخطر؛
- موارد وجدانية (affectives) : الثقة بالنفس، التحكم في الخوف، المثابرة؛
- موارد اجتماعية (sociales) : الحماية (parade)، التعاون، التحكيم.

التبرير: ربط من 4 عناصر يتطلب في آنٍ واحد تنفيذ حركات تقنية، وربطها دون انقطاع، وتحمّل خطر مضبوط. عتاد الجدول رقم 2 (بسط السقوط، البسط السميكة، الصندوق/plinthe، الأوتاد، الترامبولين، الجير) يخدم تأمين الاستقبال، وتدرّج الصعوبة، وتحديد الفضاء.

عناصر التنقيط (حسب mesconcours): ثلاث فئات على الأقل من الموارد (حركية، معرفية، وجدانية، اجتماعية) مع تبرير مرتبط بالجمباز.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', false, 'ديباجة السؤال 2 في الورقة تحيل إلى «tableau n°2» مع أن الأسئلة تتعلق بالشبكة (الجدول رقم 3) — يبدو خطأً مطبعياً في الورقة الأصلية. «للتحقق»: التصنيف الكلاسيكي للموارد خماسي لا رباعي (حركية، وجدانية، معلوماتية، طاقية، معرفية)؛ الجواب النموذجي يدمج «المعلوماتية» ضمن «المعرفية» ويغفل «الطاقية».')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q3', 'exam_eps_kf_2021_college', 3, 'ملاءمة شبكة الملاحظة', 'Mesurez le degré de pertinence de la grille d''observation utilisée par l''enseignant ?', false, '[]'::jsonb, ARRAY[]::text[], 'شبكة الجدول رقم 3 قليلة الملاءمة. فهي لا تتضمن سوى معياري سلوك (الرفض، التردد) وملاحظة إجمالية واحدة حول الربط (عناصر منفصلة، غير مطابقة للنموذج). تصف ما لا يفعله التلاميذ، دون أن تشير إلى ما يعرفون فعله؛ فهي لا ترصد مستويات الإتقان، ولا العناصر المنفَّذة، ولا معايير الإنجاز (السعة، الربط، الثبات، الاستقبال)، ولا السلامة. ولا تميّز أيضاً بين الحالات الخاصة (السمنة، الربو). تعطي صورة عامة عن الوضع لكنها لا تسمح بتشخيص دقيق ولا باختيار علاج (remédiation). فهي إذن مفيدة لرصد أولي لوجدانية القسم، وغير كافية لتقييم مكتسبات حركية.

عناصر التنقيط (حسب mesconcours): حكم معلَّل (1ن) + حدّان دقيقان على الأقل للشبكة (1ن).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q4', 'exam_eps_kf_2021_college', 4, 'السلم السلوكي', 'Organisez les comportements observés en termes d''échelle comportementale et interprétez chaque niveau d''habileté ?', false, '[]'::jsonb, ARRAY[]::text[], 'سلم سلوكي مبني من الجدول رقم 3:
- المستوى 1 — الرفض : التلميذ لا ينخرط (3 فتيات وفتى واحد). التأويل: خوف، تمثل سلبي للنشاط، نقص ثقة؛ مهارة قابلة للملاحظة معدومة.
- المستوى 2 — التردد : التلميذ ينخرط جزئياً أو بعد انتظار طويل (3 فتيات). التأويل: رغبة في الفعل يكبحها الخوف من الخطر؛ مهارة مبتدئة.
- المستوى 3 — الانخراط بعناصر منفصلة : التلميذ ينفّذ العناصر لكن دون ربط ودون مطابقة للنموذج (باقي القسم). التأويل: مهارة متوسطة؛ العناصر مكتسبة معزولة، والربط غير مكتسب.
- المستوى 4 — الربط المطابق (غائب في هذا القسم) : عناصر مربوطة، انسيابية، مطابقة للنموذج المؤسساتي. التأويل: مهارة خبيرة، هدف نهاية الدورة.

عناصر التنقيط (حسب mesconcours): سلم مرتّب من سلوكيات قابلة للملاحظة (1ن) + تأويل كل مستوى (1ن).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', true, '«للتحقق»: المستوى 4 (الربط المطابق) غائب من المعطيات الملاحَظة؛ السلم ككل بناء مقترح لا سلماً رسمياً.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q5', 'exam_eps_kf_2021_college', 5, 'معايير الملاحظة (الأستاذ والتلميذ)', 'Enumérez quelques critères d''observation que vous jugez fondamentaux pour l''enseignant ainsi que pour l''élève dans un souci d''un meilleur diagnostic de la population ?', false, '[]'::jsonb, ARRAY[]::text[], 'معايير للأستاذ: سلامة الفضاء والبسط؛ موضع الملاحظ؛ مستوى انطلاق كل تلميذ (العناصر المتقنة أصلاً)؛ الحالة الصحية والبنية الجسدية (السمنة، الربو)؛ زمن الانخراط الحركي؛ الموقف من الخطر (رفض، تردد، تحمّل خطر مضبوط)؛ جودة الروابط بين العناصر.

معايير للتلميذ: تنفيذ العنصر (الاستقامة/alignement، السعة، الثبات)؛ الاستقبال (التوازن، الثبات)؛ الربط الانسيابي بين عنصرين؛ احترام التعليمات والنموذج؛ التحكم في الخوف؛ القدرة على حماية زميل وملاحظته، والتحكيم بواسطة بطاقة بسيطة.

عناصر التنقيط (حسب mesconcours): ثلاثة معايير على الأقل للأستاذ وثلاثة للتلميذ، قابلة للملاحظة والقياس.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q6', 'exam_eps_kf_2021_college', 6, 'دور الإحماء في تنشيط التلاميذ', 'À la lumière des remarques faites par l''équipe pédagogique (Voir document n°1) ; répondez aux questions suivantes :
Démontrez le rôle de l''échauffement dans l''activation des élèves ? Illustrez vos propos par des exemples pratiques ?', false, '[]'::jsonb, ARRAY[]::text[], 'دور الإحماء: تحضير الجسم (رفع حرارة العضلات وتواتر القلب، تعبئة المفاصل)، الوقاية من الإصابات، التحضير النفسي للتلميذ ووضعه في المشروع، والتحضير الدقيق للمجموعات العضلية وحركات الحصة. ولم يكن منشِّطاً هنا لأنه كان بلا رابط مع صعوبة الدوران التي تعمل عليها الحصة.

أمثلة عملية لحصة دورانات: جري خفيف وألعاب تنقل على البسط؛ تعبئة مفصلية (الرسغان، الكتفان، الرقبة، الوركان)؛ تقوية الجذع والارتكازات (اللوح/planche، العربة الثنائية/brouette en duo)؛ توازنات على الأوتاد؛ دحرجات ميسَّرة على مستوى مائل؛ لعبة جماعية «البسط الموسيقية» (tapis musicaux) ينفَّذ فيها عنصر مفروض عند الإشارة. يجب أن يكون الإحماء تدريجياً، لعبياً، يُشرك كل التلاميذ في آنٍ واحد، ويستعمل صيغاً لعبية لتقليل التوجس، خصوصاً لدى الفتيات.

عناصر التنقيط (حسب mesconcours — السؤال 3 كله 10ن دون توزيع مفصّل في الورقة): الدور الفيزيولوجي والنفسي للإحماء، والرابط مع نشاط اليوم، ومثالان أو ثلاثة أمثلة ملموسة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', true, '«للتحقق»: تعليل فشل الإحماء بأنه «بلا رابط مع صعوبة الدوران» استنتاج غير مصرّح به في الوثيقة رقم 1.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q7', 'exam_eps_kf_2021_college', 7, 'بدائل ديداكتيكية-بيداغوجية', 'Suggérez des alternatives didactico-pédagogiques pour dépasser les remarques soulevées par l''équipe pédagogique en vue de garantir l''apprentissage pour tous ?', false, '[]'::jsonb, ARRAY[]::text[], '- إحماء غير فعال: تنظيمه في رابط مباشر مع الصعوبة المستهدفة، في صيغة ألعاب وورشات نشطة.
- ورشة واحدة = عنصر واحد: اقتراح ورشات بمستويات صعوبة متعددة لنفس العنصر، وورشات مكمّلة (ارتكازات، دورانات، استقبال).
- موقف سلطوي: إرساء عقد ديداكتيكي، تثمين النجاح، استعمال التقييم التكويني وتعليمات إيجابية.
- تلاميذ سلبيون أو يحوّلون المهمة: توضيح معايير النجاح، إسناد أدوار (حكم، حامٍ، ملاحظ)، تمايز المهمة، قبول المتغيرات البسيطة.
- الخوف والرهبة: تهيئة العتاد تدريجياً (مستويات مائلة، بسط سميكة، حماية)، البدء بمهام آمنة، التأمين بالحماية.
- زمن انخراط حركي ضعيف: تقليل قوائم الانتظار بورشات متوازية، تنظيم بمجموعات صغيرة من 4 إلى 5، مرور متزامن.
- الأستاذ ملاحظ حصري: تقاسم الملاحظة مع التلاميذ (بطاقة ملاحظة بمعيارين) والتجوال للمساعدة.

عناصر التنقيط (حسب mesconcours): بديل ملموس لكل ملاحظة من الوثيقة رقم 1، وفكرة التمايز ليَتعلّم كل تلميذ.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q8', 'exam_eps_kf_2021_college', 8, 'إعادة هيكلة الدرس (وضعية تعلم)', 'Restructurez cette leçon en adoptant une situation d''apprentissage qui permet d''orienter l''enthousiasme observé chez les garçons et de remédier à l''hésitation chez les filles ?

NB : situation d''apprentissage conforme aux exigences des OP 2009', false, '[]'::jsonb, ARRAY[]::text[], 'درس معاد هيكلته (الهدف: تنفيذ دوران بسيط، مثلاً الدحرجة الأمامية بانطلاق من وضعية القرفصاء ثم الربط بعنصر ثانٍ).
- المرحلة 1 — إحماء لعبي (10 دقائق): جري وألعاب ارتكاز، سباقات تتابع في ثنائيات مختلطة بعناصر سهلة.
- المرحلة 2 — وضعية تعلم (30 دقيقة): ورشات من 4 إلى 5 تلاميذ بثلاثة مستويات صعوبة (المستوى 1: دحرجة على مستوى مائل مع بسط سميك وحماية؛ المستوى 2: دحرجة على الأرض، انطلاق واقفاً؛ المستوى 3: دحرجة مع ربط واستقبال واقفاً). يختار التلميذ مستواه وينتقل إلى التالي بعد التحقق بواسطة بطاقة معايير يمسكها زميل.
- توجيه حماس الفتيان: إسناد الحماية ودور الحكم إليهم، واقتراح تحدٍّ في الربط والجودة (لا في تحمّل الخطر).
- تقليل تردد الفتيات: تشكيل ثنائيات أو مجموعات ثقة، البدء بعناصر آمنة، تثمين النجاحات الأولى، حماية منهجية.
- المرحلة 3 — عودة إلى الهدوء وحصيلة (10 دقائق): تمطيط، نقاش حول الأحاسيس، لفظ النجاحات.

الوضعية تحترم التوجيهات البيداغوجية 2009: متمركزة على التلميذ، بمهمة محددة، وهدف، ومعايير نجاح، ومتغيرات ديداكتيكية، وتنظيم (régulation).

عناصر التنقيط (حسب mesconcours): مكونات وضعية التعلم (هدف، مهمة، تعليمات، معايير نجاح، جهاز، متغيرات)، تمايز فتيان/فتيات دون صور نمطية، سلامة.', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', true, '«للتحقق»: التوزيع المقترح 10+30+10؛ الجزء الأساسي (30 دقيقة) دون معيار 35–40 دقيقة في OP 2009، والجزء الختامي (10 دقائق) فوق معيار 5 دقائق.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة دجنبر 2021) — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2021_college_q9', 'exam_eps_kf_2021_college', 9, 'التقييم التكويني (شبكة)', 'Expliquez les éléments relatifs à l''évaluation formative à travers cette séance et mettez en pratique un exemple de grille qui touche aux connaissances : procédurales, conceptuelles et comportementales ?', false, '[]'::jsonb, ARRAY[]::text[], 'التقييم التكويني في الحصة: يجري أثناء التعلم، ويهدف إلى إخبار التلميذ والأستاذ بالتقدم، ولا يعطي نقطة، ويطلق التنظيم (régulation).
عناصره: معايير نجاح معروفة لدى التلاميذ منذ البداية، ملاحظة أثناء المهمة، تغذية راجعة فورية، تقييم ذاتي وتقييم بين الأقران، تعديل الورشات حسب النتائج.

مثال شبكة (سلم: مكتسب / في طور الاكتساب / غير مكتسب):

نوع المعرفة | بنود الشبكة (بصيغة المتكلم، يصرّح بها التلميذ)
معارف إجرائية (savoir-faire) | أضع اليدين مبسوطتين على الأرض؛ أُدخل رأسي؛ أنهض دون الاستعانة باليدين
معارف مفهومية (savoirs) | أستطيع تسمية العنصر ومراحله (الوضعية، الدفع، الدوران، الاستقبال)؛ أعرف قاعدتين للسلامة؛ أستطيع تفسير لماذا نُدوّر الظهر
معارف سلوكية (savoir-être) | أحترم تعليمات السلامة؛ أحمي زميلي؛ أقبل المحاولة رغم الخوف؛ أحترم دور الآخرين

عناصر التنقيط (حسب mesconcours): تعريف التقييم التكويني وأدواته، ثم شبكة ببندين على الأقل لكل نوع من أنواع المعرفة (إجرائية، مفهومية، سلوكية).', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2021-1457/', true, NULL)
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
