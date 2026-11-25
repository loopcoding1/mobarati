-- ====================================================================
-- مباراتي — اللغة الفرنسية وديداكتيك اللغة الفرنسية، دورة نونبر 2019
-- ====================================================================
-- المصدر: ملف الحل solved/2019/اللغة الفرنسية - 2019.md
--   (سجل الامتحانات رقم 88؛ الحل من التصحيح الرسمي المرفق بالامتحان)
--   ملف الامتحان: exams-ibtida2i/2019/اللغة الفرنسية - امتحان.pdf (16 صفحة).
--   ملف التصحيح الرسمي: exams-ibtida2i/2019/تصحيح الفرنسية.pdf (6 صفحات، عناصر
--   الإجابة الرسمية، المركز الوطني للتقويم والامتحانات).
--   نفس الملفين منشوران على: https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * كل سؤال من Q1 إلى Q33 وخياراته مطابقة حرفياً لورقة الامتحان؛ وأسئلة الديداكتيك
--     (Q36–Q42، وهي 1.1 إلى 2.2 في الورقة) منقولة من عناصر الإجابة الرسمية.
--   * الأجوبة كلها من التصحيح الرسمي (source_type='official').
--   * المدة (90 دقيقة) والمعامل (2) من ترويسة التصحيح الرسمي وغلاف الامتحان:
--     «مدة الإنجاز: ساعة ونصف، المعامل: 2» — النقطة النهائية على 20.
--   * بنية الاختبار: الجزء الأول 40 نقطة (فهم المقروء 12 + اللغة 20 + الإنتاج الكتابي 8)
--     + الجزء الثاني 40 نقطة (ديداكتيك اللغة الفرنسية). نص الفهم المقروء مقتطف من
--     رواية «L'Assommoir» لإميل زولا (انتظار جيرفيز للانتييه).
--
-- ⚠️ أسئلة محذوفة من هذا الملف (Q34 وQ35): صياغتاهما في الصفحة المطبوعة رقم 12،
--   وهي مفقودة من مسح الامتحان (صفحتا PDF رقم 7 و10 متطابقتان بايتاً بايتاً، وكلتاهما
--   تحوي Q29–Q31؛ وينتقل المسح من الصفحة المطبوعة 11 إلى الصفحة المطبوعة 13).
--   جواباهما موجودان في المفتاح الرسمي ومسجلان في ملف الحل: Q34: (e, D) ؛ (d, F) — 2ن؛
--   Q35: «Dans l'ordre : D'abord, … Ensuite, … Enfin, … … pourtant …» — 3ن.
--   لم يُدرجا هنا لأن صياغتهما لم تتحقق مقابل ورقة الامتحان. أرقام الأسئلة 34 و35
--   غائبة من هذا الملف عمداً؛ questions_count = 40 (Q1–Q33 + Q36–Q42).
--
-- ملاحظات أخرى:
--   * Q18 — تعارض موثق: المفتاح يصحح القائمة (ج) «montes-plats ; morts-nés ;
--     portes-documents ; gagnes-pains»، بينما القاعدة القياسية (الفعل في المركب لا يأخذ
--     علامة جمع: monte-plats، porte-documents، gagne-pains) تجعل القوائم (أ) و(ب) و(د)
--     صحيحة أيضاً؛ السؤال معيب كما هو مطبوع، والجواب منقول كما في المفتاح (انظر
--     verification_note للسؤال).
--   * Q19: ورقة الامتحان تكتب «préfette» و«désuette» بتاء مزدوجة خطأً (تم التحقق
--     بالتكبير 300dpi)؛ والمفتاح يكتب الكلمات بتهجئتها الصحيحة.
--   * Q14: المفتاح نفسه يكتب الكلمة الخطأ «doneur» (الصحيح «donneur») — خطأ مطبعي.
--   * Q20: المفتاح يترك العنصر 2 («… dimanche, je fais du sport») بلا ربط رغم أن
--     «Tout dimanche» نحوياً ممكن. Q31: العنصر 3 بقي بلا ربط لأنه يحتاج «à laquelle».
--   * أسئلة المطابقة (matching): الخيارات هي الربطات الصحيحة كما في التصحيح الرسمي،
--     وcorrect_answers تضم كل الخيارات؛ والعنصر الزائد في العمود B مذكور في التعليل.
--   * الأسئلة المفتوحة (open): options = '[]' و correct_answers فارغ؛ الجواب في explanation.
--   * أسئلة الديداكتيك مرقمة Q36–Q42 (أرقامها الأصلية 1.1–2.2 مذكورة في كل سؤال).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2019_french_nov', 'specialty_primary', 2019, 'french', 'اللغة الفرنسية وديداكتيك اللغة الفرنسية', 'امتحان اللغة الفرنسية وديداكتيك اللغة الفرنسية (دورة نونبر 2019)', 'دورة نونبر 2019', 90, 40)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (40 سؤالاً)

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q1', 'exam_primary_2019_french_nov', 1, 'اللغة الفرنسية — فهم المقروء', 'Quels sont les types de discours qui dominent dans cet extrait ? (D''après Émile Zola, L''Assommoir — Gervaise attend Lantier.)', false, '[{"id": "A", "text": "le narratif et l''explicatif"}, {"id": "B", "text": "le descriptif et l''informatif"}, {"id": "C", "text": "le narratif et le descriptif"}, {"id": "D", "text": "le descriptif et l''argumentatif"}]'::jsonb, ARRAY['C']::text[], 'المقتطف يسرد انتظار جيرفيز (سرد) ويصف الغرفة والفندق والشوارع وصفاً مفصلاً.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q2', 'exam_primary_2019_french_nov', 2, 'اللغة الفرنسية — فهم المقروء', 'Quel est le personnage omniprésent dans cet extrait ?', false, '[{"id": "A", "text": "Étienne"}, {"id": "B", "text": "Lantier"}, {"id": "C", "text": "Gervaise"}, {"id": "D", "text": "Claude"}]'::jsonb, ARRAY['C']::text[], 'جيرفيز حاضرة في كل فقرات المقتطف؛ النص كله عن انتظارها وقلقها وبكائها.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q3', 'exam_primary_2019_french_nov', 3, 'اللغة الفرنسية — فهم المقروء', 'Où habite Gervaise ?', false, '[{"id": "A", "text": "dans une maison attenante à l''hôtel"}, {"id": "B", "text": "dans une chambre, au premier étage de l''hôtel"}, {"id": "C", "text": "dans une chambre, au second étage de l''hôtel"}, {"id": "D", "text": "dans une pièce, au rez-de-chaussée de l''hôtel"}]'::jsonb, ARRAY['B']::text[], 'النص يقول إنها في «la chambre du premier, qui donnait sur le boulevard de la Chapelle» — غرفة في الطابق الأول من الفندق.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q4', 'exam_primary_2019_french_nov', 4, 'اللغة الفرنسية — فهم المقروء', 'Dans le deuxième paragraphe du texte, l''auteur décrit l''intérieur de la chambre. Que cherche-t-il à mettre en valeur par cette description ?', false, '[{"id": "A", "text": "la propreté de Gervaise"}, {"id": "B", "text": "la misère de Gervaise"}, {"id": "C", "text": "le bonheur de Gervaise"}, {"id": "D", "text": "l''opulence de Gervaise"}]'::jsonb, ARRAY['B']::text[], 'وصف الغرفة (أثاث قديم متهالك، وسخ، فقر مدقع) يبرز بؤس جيرفيز وفقرها.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q5', 'exam_primary_2019_french_nov', 5, 'اللغة الفرنسية — فهم المقروء', 'D''après le texte, quel sentiment l''état de Gervaise suscite-t-il chez le lecteur ?', false, '[{"id": "A", "text": "sentiment de joie"}, {"id": "B", "text": "sentiment de haine"}, {"id": "C", "text": "sentiment d''espoir"}, {"id": "D", "text": "sentiment de pitié"}]'::jsonb, ARRAY['D']::text[], 'حالة جيرفيز (الفقر، الانتظار الطويل، البكاء، الأطفال النائمون) تثير الشفقة لدى القارئ.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q6', 'exam_primary_2019_french_nov', 6, 'اللغة الفرنسية — فهم المقروء', 'Quel est le point de vue dominant dans cet extrait ?', false, '[{"id": "A", "text": "celui du personnage Étienne"}, {"id": "B", "text": "celui du personnage Lantier"}, {"id": "C", "text": "celui du personnage Gervaise"}, {"id": "D", "text": "celui du personnage Claude"}]'::jsonb, ARRAY['C']::text[], 'السرد من وجهة نظر جيرفيز: نراها تنتظر وتبكي وتنظر من النافذة وتفكر.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q7', 'exam_primary_2019_french_nov', 7, 'اللغة الفرنسية — فهم المقروء', 'D''après le texte, pourquoi Gervaise pleure-t-elle ?', false, '[{"id": "A", "text": "parce qu''elle est malade"}, {"id": "B", "text": "parce que l''un de ses deux enfants n''est pas encore rentré"}, {"id": "C", "text": "parce que Lantier est encore dehors"}, {"id": "D", "text": "parce qu''elle s''est disputée avec le propriétaire de l''hôtel"}]'::jsonb, ARRAY['C']::text[], 'تبكي لأن لانتييه لم يعد بعد؛ النص: «Gervaise avait attendu Lantier jusqu''à deux heures du matin… Lantier n''était pas rentré».', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q8', 'exam_primary_2019_french_nov', 8, 'اللغة الفرنسية — فهم المقروء', 'Dans le dernier paragraphe du texte, dans quel but l''auteur indique-t-il les noms des lieux ?', false, '[{"id": "A", "text": "pour créer un effet de fiction"}, {"id": "B", "text": "pour créer un effet de suspense"}, {"id": "C", "text": "pour créer un effet d''annonce"}, {"id": "D", "text": "pour créer un effet de réel"}]'::jsonb, ARRAY['D']::text[], 'ذكر أسماء أماكن حقيقية (بولفار دو لا شابيل، حاجز بواسونيير، مستشفى لاريبوازيير…) يخلق أثر الواقع عند القارئ.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q9', 'exam_primary_2019_french_nov', 9, 'اللغة الفرنسية — فهم المقروء', 'Dans le texte, les figures de style sont rarement utilisées. Que cherche l''auteur à montrer par ce procédé d''écriture ?', false, '[{"id": "A", "text": "une réalité virtuelle"}, {"id": "B", "text": "une réalité subjective"}, {"id": "C", "text": "une réalité objective"}, {"id": "D", "text": "une réalité improbable"}]'::jsonb, ARRAY['C']::text[], 'قلة الصور البلاغية أسلوب واقعي (زولا): تصوير الواقع كما هو، بموضوعية، دون تزيين.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q10', 'exam_primary_2019_french_nov', 10, 'اللغة الفرنسية — فهم المقروء', 'Parmi les propositions ci-dessous, quelle est celle qui a le sens de l''expression suivante ? « éclater en sanglots »', false, '[{"id": "A", "text": "murmurer"}, {"id": "B", "text": "pleurer"}, {"id": "C", "text": "sourire"}, {"id": "D", "text": "ricaner"}]'::jsonb, ARRAY['B']::text[], '«éclater en sanglots» تعني الانفجار في البكاء = pleurer.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q11', 'exam_primary_2019_french_nov', 11, 'اللغة الفرنسية — فهم المقروء', 'Reliez, par une flèche, chaque liste de mots de la colonne « A » au champ lexical qui lui correspond dans la colonne « B ».', true, '[{"id": "A", "text": "a) barre ; barrière ; mur ; chambre → 3. l''enfermement"}, {"id": "B", "text": "b) commode ; chaise ; lit ; table → 5. l''ameublement"}, {"id": "C", "text": "c) camisole ; châle ; chemise ; chaussette → 4. l''habillement"}, {"id": "D", "text": "d) venir ; rentrer ; partir ; retourner → 1. le mouvement"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) barre/barrière/mur/chambre تدل على الانغلاق؛ (ب) commode/chaise/lit/table أثاث؛ (ج) camisole/châle/chemise/chaussette ملابس؛ (د) venir/rentrer/partir/retourner حركة. «le déménagement» زائد بلا ربط.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q12', 'exam_primary_2019_french_nov', 12, 'اللغة الفرنسية — فهم المقروء', 'Parmi les titres suivants, quel est celui qui correspond au texte ?', false, '[{"id": "A", "text": "L''indifférence et l''insouciance de Gervaise"}, {"id": "B", "text": "Le plaisir et le bonheur de Gervaise"}, {"id": "C", "text": "L''angoisse et la misère de Gervaise"}, {"id": "D", "text": "L''optimisme et la joie de Gervaise"}]'::jsonb, ARRAY['C']::text[], 'النص كله قلق جيرفيز وهي تنتظر لانتييه، وبؤسها وفقرها — العنوان (ج) هو المناسب.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q13', 'exam_primary_2019_french_nov', 13, 'اللغة الفرنسية — اللغة', 'Parmi les phrases suivantes, quelle est celle où le participe passé est orthographié incorrectement ?', false, '[{"id": "A", "text": "Les nuits de fête se sont succédé pendant le mois d''août."}, {"id": "B", "text": "Les travailleurs se sont réveillés tôt."}, {"id": "C", "text": "Les voisines, jalouses, se sont nui gratuitement."}, {"id": "D", "text": "Les présents se sont arrogés le droit de parler au nom des absents."}]'::jsonb, ARRAY['D']::text[], 'في «s''arroger le droit»، الضمير «se» مفعول به غير مباشر والفاعل المباشر هو «le droit» الواقع بعد الفعل، فلا يطابق اسم المفعول؛ الصحيح «se sont arrogé». أما (أ) «se sont succédé» صحيح (succéder à: غير مباشر)، و(ب) «se sont réveillés» صحيح، و(ج) «se sont nui» صحيح (nuire à: غير مباشر).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q14', 'exam_primary_2019_french_nov', 14, 'اللغة الفرنسية — اللغة', 'Parmi les listes suivantes, quelle est celle qui contient un mot orthographié incorrectement ?', false, '[{"id": "A", "text": "jeûne ; jeûneur ; jeûner ; déjeuner"}, {"id": "B", "text": "annuler ; nul ; nullité ; nullement"}, {"id": "C", "text": "consonant ; consonance ; consonne ; consonantique"}, {"id": "D", "text": "don ; donateur ; doneur, donation"}]'::jsonb, ARRAY['D']::text[], 'الكلمة الخطأ هي «doneur»؛ والصحيح «donneur» (مشتق من donner، مثل don وdonateur وdonation).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'المفتاح الرسمي نفسه يكتب الكلمة «doneur» — خطأ مطبعي في المفتاح؛ والجواب (د) صحيح.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q15', 'exam_primary_2019_french_nov', 15, 'اللغة الفرنسية — اللغة', 'Parmi les phrases suivantes, quelle est celle qui contient un complément d''objet indirect ?', false, '[{"id": "A", "text": "Elle reprit son attente de la nuit."}, {"id": "B", "text": "Elle eut une nouvelle crise."}, {"id": "C", "text": "Elle regardait à gauche."}, {"id": "D", "text": "Gervaise pensait à lui."}]'::jsonb, ARRAY['D']::text[], 'في «Gervaise pensait à lui»، المجموعة «à lui» مفعول به غير مباشر للفعل «penser à» (يجيب عن السؤال: à qui ؟).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q16', 'exam_primary_2019_french_nov', 16, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, ce qui est souligné dans chacune des phrases de la colonne « A » à la fonction grammaticale qui lui correspond dans la colonne « B ».', true, '[{"id": "A", "text": "« de sa mère » (Claude est fier de sa mère) → 3. complément de l''adjectif"}, {"id": "B", "text": "« de ces acteurs » (Chacun de ces acteurs a bien joué son rôle) → 1. complément du pronom"}, {"id": "C", "text": "« lui » (Il lui rappelle les règles à respecter) → 2. complément d''objet indirect"}, {"id": "D", "text": "« les » (Gervaise les a bien consolés) → 5. complément d''objet direct"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) «de sa mère» متمم الصفة «fier»؛ (ب) «de ces acteurs» متمم الضمير «chacun»؛ (ج) «lui» مفعول به غير مباشر للفعل «rappelle»؛ (د) «les» مفعول به مباشر للفعل «a consolés».', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q17', 'exam_primary_2019_french_nov', 17, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque nom de l''animal mâle, de la colonne « A », au nom de l''animal femelle qui lui correspond dans la colonne « B ».', true, '[{"id": "A", "text": "le bouc → 4. la chèvre"}, {"id": "B", "text": "le jars → 3. l''oie"}, {"id": "C", "text": "le singe → 2. la guenon"}, {"id": "D", "text": "le cerf → 5. la biche"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], 'bouc → chèvre (المعزاة)؛ jars → oie (الإوزة)؛ singe → guenon (أنثى القرد)؛ cerf → biche (أنثى الأيل). «la jument» (أنثى الحصان) زائدة بلا ربط.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q18', 'exam_primary_2019_french_nov', 18, 'اللغة الفرنسية — اللغة', 'Parmi les listes suivantes, quelle est celle où les noms composés sont écrits correctement au pluriel ?', false, '[{"id": "A", "text": "sous-sols ; adjudants-chefs ; ronds-points ; nids-d''abeilles"}, {"id": "B", "text": "sourds-muets ; navires-usines ; maréchaux-ferrants ; plats-bords"}, {"id": "C", "text": "montes-plats ; morts-nés ; portes-documents ; gagnes-pains"}, {"id": "D", "text": "belles-filles ; blancs-becs ; bouche-trous ; casse-têtes"}]'::jsonb, ARRAY['C']::text[], 'الجواب (ج) كما في المفتاح الرسمي. ⚠️ القاعدة القياسية تُبقي الفعل في المركب (فعل + اسم) دون علامة جمع — «monte-plats» و«porte-documents» و«gagne-pains» — والقوائم (أ) و(ب) و(د) كلها صحيحة بهذه القاعدة؛ فالسؤال معيب كما هو مطبوع.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, '⚠️ تعارض موثق: المفتاح الرسمي يصحح القائمة (ج) بينما القاعدة القياسية لجمع الأسماء المركبة تجعل (أ) و(ب) و(د) صحيحة أيضاً؛ الجواب منقول كما في المفتاح.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q19', 'exam_primary_2019_french_nov', 19, 'اللغة الفرنسية — اللغة', 'Parmi les listes suivantes, quelle est celle où les adjectifs féminins sont orthographiés incorrectement ?', false, '[{"id": "A", "text": "concrète ; complète ; discrète"}, {"id": "B", "text": "replète ; inquiète ; secrète"}, {"id": "C", "text": "muette ; cadette ; proprette"}, {"id": "D", "text": "préfette ; désuette ; aigrelète"}]'::jsonb, ARRAY['D']::text[], 'في ورقة الامتحان كُتبت «préfette» و«désuette» بتاء مزدوجة خطأً؛ والصحيح «préfète» (مؤنث préfet) و«désuète» (مؤنث désuet) بتاء واحدة، أما «aigrelette» فصحيحة (مؤنث aigrelet بتاء مزدوجة).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'تم التحقق بالتكبير 300dpi؛ المفتاح يكتب الكلمات بتهجئتها الصحيحة «préfète ; désuète ; aigrelette».')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q20', 'exam_primary_2019_french_nov', 20, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque élément de la colonne « A » à la place qui convient à son emploi dans la colonne « B ».', true, '[{"id": "A", "text": "Tout → 5. « …est bien qui finit bien. »"}, {"id": "B", "text": "Toutes → 1. « …ces herbes poussent rapidement. »"}, {"id": "C", "text": "Toute → 4. « …règle a des exceptions. »"}, {"id": "D", "text": "Tous → 3. « …les vendredis, ils rendaient visite à leur grand-mère. »"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '«Tout est bien qui finit bien»؛ «Toutes ces herbes poussent rapidement»؛ «Toute règle a des exceptions»؛ «Tous les vendredis, ils rendaient visite à leur grand-mère».', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ المفتاح يترك العنصر 2 («… dimanche, je fais du sport») بلا ربط رغم أن «Tout dimanche» نحوياً ممكن.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q21', 'exam_primary_2019_french_nov', 21, 'اللغة الفرنسية — اللغة', 'Parmi les listes suivantes, quelle est celle dont les mots peuvent être utilisés comme adjectifs ou comme adverbes ?', false, '[{"id": "A", "text": "fort ; haut ; bas ; clair"}, {"id": "B", "text": "gentil ; poli ; tolérant ; indulgent"}, {"id": "C", "text": "audacieux ; dense ; éloquent ; prudent"}, {"id": "D", "text": "chaleureux ; courageux ; silencieux ; adroit"}]'::jsonb, ARRAY['A']::text[], 'fort وhaut وbas وclair تستعمل صفات (un son fort، une voix claire) أو ظروفاً (parler fort، parler haut، parler bas، voir clair)؛ أما كلمات القوائم الأخرى فصفات فقط.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q22', 'exam_primary_2019_french_nov', 22, 'اللغة الفرنسية — اللغة', 'Parmi les phrases suivantes, quelle est celle où le nombre 700324 est écrit correctement en lettres ?', false, '[{"id": "A", "text": "Elle possède sept cents mille trois cent vingt-quatre dirhams."}, {"id": "B", "text": "Elle possède sept cents milles trois cent vingt-quatre dirhams."}, {"id": "C", "text": "Elle possède sept cents milles trois cents vingt-quatre dirhams."}, {"id": "D", "text": "Elle possède sept cent mille trois cent vingt-quatre dirhams."}]'::jsonb, ARRAY['D']::text[], '700324 = «sept cent mille trois cent vingt-quatre»: «cent» لا يأخذ s إذا تبعه عدد آخر أو «mille»، و«mille» لا يتغير أبداً. فـ(أ) خطأ في «cents mille»، و(ب) خطأ في «milles»، و(ج) خطأ في «milles» و«cents» قبل «vingt-quatre».', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'تم التحقق من خياري (ب) و(ج) بالتكبير 300dpi: (ب) «trois cent» و(ج) «trois cents».')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q23', 'exam_primary_2019_french_nov', 23, 'اللغة الفرنسية — اللغة', 'Parmi les phrases suivantes, quelle est celle où le verbe « aller » est conjugué correctement ?', false, '[{"id": "A", "text": "C''est moi qui va à la bibliothèque."}, {"id": "B", "text": "C''est toi qui va à la bibliothèque."}, {"id": "C", "text": "Ce sont eux et moi qui vont à la bibliothèque."}, {"id": "D", "text": "Ce sont elles et lui qui vont à la bibliothèque."}]'::jsonb, ARRAY['D']::text[], 'في (د) الضمير «qui» يعود على «elles et lui» (جمع الغائب) فيكون الفعل «vont». أما (أ) فالصحيح «C''est moi qui vais»، و(ب) فالصحيح «C''est toi qui vas»، و(ج) فـ«eux et moi» = نحن والصحيح «allons».', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q24', 'exam_primary_2019_french_nov', 24, 'اللغة الفرنسية — اللغة', 'Parmi les phrases suivantes, quelle est celle où le participe passé est accordé incorrectement ?', false, '[{"id": "A", "text": "Voici les histoires que j''ai faites lire à ma petite fille."}, {"id": "B", "text": "Ce qui importe, c''est que les gros efforts que j''ai déployés n''étaient pas vains."}, {"id": "C", "text": "Les livres que vous avez achetés sont intéressants."}, {"id": "D", "text": "Les vêtements que tu m''as apportés sont magnifiques."}]'::jsonb, ARRAY['A']::text[], '«fait» متبوعاً بمصدر لا يتغير أبداً: الصحيح «les histoires que j''ai fait lire». أما (ب) «déployés» فيطابق «efforts»، و(ج) «achetés» فيطابق «livres»، و(د) «apportés» فيطابق «vêtements» — وكلها صحيحة.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q25', 'exam_primary_2019_french_nov', 25, 'اللغة الفرنسية — اللغة', 'De quelle figure de style s''agit-il dans la phrase suivante ? « Ah ! Oh ! Je suis blessé, je suis trahi, je suis perforé, je suis administré, je suis enterré. »', false, '[{"id": "A", "text": "l''hyperbole"}, {"id": "B", "text": "la personnification"}, {"id": "C", "text": "la métaphore"}, {"id": "D", "text": "la gradation"}]'::jsonb, ARRAY['D']::text[], 'العبارة تدرّج في الشدة: blessé ← trahi ← perforé ← administré ← enterré — تصاعد من الأضعف إلى الأقوى، وهذا هو التدرج (la gradation).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q26', 'exam_primary_2019_french_nov', 26, 'اللغة الفرنسية — اللغة', 'Combien y a-t-il de syllabes dans chacun des deux vers suivants ? « Demain, dès l''aube, à l''heure où blanchit la campagne, / Je partirai. Vois-tu, je sais que tu m''attends. » — Victor HUGO', false, '[{"id": "A", "text": "10 syllabes"}, {"id": "B", "text": "11 syllabes"}, {"id": "C", "text": "12 syllabes"}, {"id": "D", "text": "13 syllabes"}]'::jsonb, ARRAY['C']::text[], 'كل من البيتين ألكسندريني من 12 مقطعاً صوتياً: «De-main, dès l''aube, à l''heure où blan-chit la cam-pagne» (12)، و«Je par-ti-rai. Vois-tu, je sais que tu m''at-tends» (12).', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q27', 'exam_primary_2019_french_nov', 27, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque couple de mots de la colonne « A » au terme qui lui convient dans la colonne « B ».', true, '[{"id": "A", "text": "(affecté / infecté) → 4. paronymes"}, {"id": "B", "text": "(jeûne / jeune) → 2. homonymes"}, {"id": "C", "text": "(fictif / imaginaire) → 1. synonymes"}, {"id": "D", "text": "(généreux / avare) → 5. antonymes"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) affecté/infecté كلمتان متقاربتان لفظاً: paronymes؛ (ب) jeûne/jeune نفس النطق ومعنى مختلف: homonymes؛ (ج) fictif/imaginaire نفس المعنى تقريباً: synonymes؛ (د) généreux/avare معنيان متضادان: antonymes. «pseudonymes» زائد.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q28', 'exam_primary_2019_french_nov', 28, 'اللغة الفرنسية — اللغة', 'Parmi les listes suivantes, quelle est celle qui contient un intrus ?', false, '[{"id": "A", "text": "bleu ; vert ; blanc ; noir ; jaune"}, {"id": "B", "text": "faire ; dire ; savoir ; apprendre ; aller"}, {"id": "C", "text": "commencement ; prudemment ; habilement ; tremblement ; gémissement"}, {"id": "D", "text": "parfois ; souvent ; jamais ; toujours ; jadis"}]'::jsonb, ARRAY['C']::text[], 'القائمة (ج) تخلط الأسماء (commencement, tremblement, gémissement) بالظروف (prudemment, habilement) ففيها الدخيل؛ أما (أ) فكلها ألوان، و(ب) كلها أفعال، و(د) كلها ظروف زمان.', 'qcm', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q29', 'exam_primary_2019_french_nov', 29, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque phrase de la colonne « A » au temps et au mode, auxquels est conjugué son verbe, dans la colonne « B ».', true, '[{"id": "A", "text": "« Gervaise avait attendu Lantier jusqu''à deux heures du matin. » → 3. plus-que-parfait de l''indicatif"}, {"id": "B", "text": "« Lantier n''aurait pas pensé à ses enfants. » → 2. conditionnel passé"}, {"id": "C", "text": "« Le lit de fer barrait la commode. » → 4. imparfait de l''indicatif"}, {"id": "D", "text": "« Elle resta assise au bord du lit. » → 1. passé simple de l''indicatif"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) «avait attendu» ماضٍ تام (plus-que-parfait)؛ (ب) «n''aurait pas pensé» شرطي ماضٍ (conditionnel passé)؛ (ج) «barrait» ماضٍ ناقص (imparfait)؛ (د) «resta» ماضٍ بسيط (passé simple). «conditionnel présent» زائد.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q30', 'exam_primary_2019_french_nov', 30, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque phrase de la colonne « A » à ce que sa proposition subordonnée exprime, dans la colonne « B ».', true, '[{"id": "A", "text": "« Si je t''avais écouté, j''aurais réussi. » → 4. condition"}, {"id": "B", "text": "« Il était si pressé qu''il avait oublié ses clés. » → 3. conséquence"}, {"id": "C", "text": "« Pour réussir, il travaille sans relâche. » → 1. but"}, {"id": "D", "text": "« Comme il est malade, il va chez le médecin. » → 2. cause"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) «Si…» شرط؛ (ب) «si pressé que…» نتيجة؛ (ج) «Pour réussir» هدف/غاية؛ (د) «Comme il est malade» سبب. «concession» زائدة.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q31', 'exam_primary_2019_french_nov', 31, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque pronom relatif de la colonne « A » à la place qui convient à son emploi dans la colonne « B ».', true, '[{"id": "A", "text": "qui → 2. « Ceux …… sont absents seront sanctionnés. »"}, {"id": "B", "text": "dont → 4. « Les livres …… tu m''as parlé sont disponibles à la bibliothèque. »"}, {"id": "C", "text": "que → 1. « Les fleurs …… tu as cueillies sont très jolies. »"}, {"id": "D", "text": "où → 5. « Le lycée …… tu as poursuivi tes études vient d''être repeint. »"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], '(أ) qui: «Ceux qui sont absents…»؛ (ب) dont: «Les livres dont tu m''as parlé…»؛ (ج) que: «Les fleurs que tu as cueillies…»؛ (د) où: «Le lycée où tu as poursuivi tes études…».', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ العنصر 3 («Elle songe à la fête…… sa cousine l''a invitée») بقي بلا ربط لأنه يحتاج «à laquelle».')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q32', 'exam_primary_2019_french_nov', 32, 'اللغة الفرنسية — اللغة', 'Reliez, par une flèche, chaque verbe de la colonne « A » à son dérivé nominal dans la colonne « B ».', true, '[{"id": "A", "text": "éteindre → 3. extinction"}, {"id": "B", "text": "pondre → 5. ponte"}, {"id": "C", "text": "détruire → 2. destruction"}, {"id": "D", "text": "rompre → 1. rupture"}]'::jsonb, ARRAY['A', 'B', 'C', 'D']::text[], 'éteindre → extinction؛ pondre → ponte؛ détruire → destruction؛ rompre → rupture. «pontage» زائد.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مطابقة؛ الخيارات هي الربطات الصحيحة الأربع كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q33', 'exam_primary_2019_french_nov', 33, 'اللغة الفرنسية — الإنتاج الكتابي', 'Voici, donné en désordre, un conte d''Égypte, intitulé « L''amitié des deux chacals ». Remettez ce conte en ordre en numérotant les cases de (1 à 5).', true, '[{"id": "A", "text": "a) « Sur ce, le roi du désert disparut et depuis ce jour, il accorda la paix aux deux chacals. » → 5"}, {"id": "B", "text": "b) « Or un jour… ils virent surgissant devant eux un lion affamé… » → 2"}, {"id": "C", "text": "c) « Le lion qui avait écouté avec attention les paroles du chacal lui dit… » → 4"}, {"id": "D", "text": "d) « Il y a fort longtemps, vivaient dans l''immensité du désert deux chacals… » → 1"}, {"id": "E", "text": "e) « L''un des deux chacals prit la parole et dit… » → 3"}]'::jsonb, ARRAY['A', 'B', 'C', 'D', 'E']::text[], 'الترتيب: d(1) البداية، b(2) ظهور الأسد، e(3) كلام ابن آوى، c(4) جواب الأسد، a(5) الخاتمة.', 'matching', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال ترتيب؛ الخيارات هي الربطات الصحيحة الخمس (الفقرة ← رقمها) كما في التصحيح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q36', 'exam_primary_2019_french_nov', 36, 'ديداكتيك اللغة الفرنسية', 'En quatrième année de l''enseignement primaire, le thème de la cinquième unité didactique s''intitule « La forêt ». L''activité de grammaire programmée pour les semaines 1 et 2 a pour objet d''étude : Les compléments du verbe (COD et COI). Définissez l''objectif d''apprentissage visé par l''activité (question 1.1 de l''épreuve, 4pts).', false, '[]'::jsonb, ARRAY[]::text[], 'من قبيل: Reconnaître les compléments du verbe؛ Distinguer le COD du COI؛ Identifier les compléments du verbe dans un texte court ou dans des phrases simples.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (1.1 في الورقة، 4ن)؛ الجواب في explanation من عناصر الإجابة الرسمية.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q37', 'exam_primary_2019_french_nov', 37, 'ديداكتيك اللغة الفرنسية', 'Mentionnez la durée et le nombre de séances de l''activité de grammaire sur les compléments du verbe (question 1.2 de l''épreuve, 3pts).', false, '[]'::jsonb, ARRAY[]::text[], '60 دقيقة موزعة على حصتين مدة كل منهما 30 دقيقة (الأسبوع 1: الحصة 1؛ الأسبوع 2: الحصة 2).', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (1.2 في الورقة، 3ن).')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q38', 'exam_primary_2019_french_nov', 38, 'ديداكتيك اللغة الفرنسية', 'À partir du support proposé (« Dans la forêt, Samira regarde les oiseaux. Son frère Amine parle à son camarade Mounir. Après, les trois enfants prennent des photos au milieu des arbres. »), formulez au moins neuf questions et/ou consignes pour amener les apprenantes/les apprenants à découvrir le fait de langue et à déduire la règle grammaticale (question 1.3 de l''épreuve, 9pts).', false, '[]'::jsonb, ARRAY[]::text[], 'مثال من المفتاح الرسمي (13 سؤالاً): 1. Combien y a-t-il de phrases dans le texte ؟ 2. Que regarde Samira ؟ 3. À qui parle Amine ؟ 4. Dans la première phrase, où le groupe de mots « les oiseaux » est-il placé par rapport au verbe ؟ 5. À quelle question ce groupe de mots répond-il ؟ 6. Peut-on supprimer ce groupe de mots ؟ Pourquoi ؟ 7. Peut-on mettre ce groupe de mots avant le verbe de la phrase ؟ 8. À quoi, donc, ce groupe de mots sert-il ؟ Comment l''appelle-t-on ؟ 9. Dans la deuxième phrase, peut-on supprimer le groupe de mots qui est placé après le verbe ؟ 10. Peut-on changer la place de ce groupe de mots dans la phrase ؟ Pourquoi ؟ 11. À quelle question ce groupe de mots répond-il ؟ 12. Par quoi ce groupe de mots est-il lié au verbe ؟ 13. À quoi, donc, ce groupe de mots sert-il ؟ Comment l''appelle-t-on ؟', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (1.3 في الورقة، 9ن)؛ الجواب يعطي 13 سؤالاً نموذجياً من المفتاح الرسمي.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q39', 'exam_primary_2019_french_nov', 39, 'ديداكتيك اللغة الفرنسية', 'Indiquez la règle grammaticale à faire déduire et retenir sur les compléments du verbe (question 1.4 de l''épreuve, 6pts).', false, '[]'::jsonb, ARRAY[]::text[], 'Le complément du verbe est un mot ou un groupe de mots qui complète le verbe. Il y a deux compléments du verbe : le complément d''objet direct (COD) et le complément d''objet indirect (COI). Le complément d''objet direct (COD) est placé directement après le verbe. Il répond aux questions : Qui… ? quoi… ? Exemples : Ces habitants plantent des arbres. — Il appelle le garde-forestier. Le complément d''objet indirect (COI) est lié au verbe par une préposition (à, de, …). Il répond aux questions : À qui… ? À quoi… ? De qui… ? De quoi… ? Exemples : Rachid téléphone à son ami. — Le garde-forestier parle de la forêt.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (1.4 في الورقة، 6ن).')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q40', 'exam_primary_2019_french_nov', 40, 'ديداكتيك اللغة الفرنسية', 'Proposez trois exercices, en rapport avec le thème de l''unité didactique « La forêt », pour amener les apprenantes/apprenants à appliquer la règle grammaticale construite (question 1.5 de l''épreuve, 6pts).', false, '[]'::jsonb, ARRAY[]::text[], 'Exercice 1 : Entoure le complément d''objet direct (COD) dans les phrases suivantes : a. Jamila arrose les fleurs. b. Elle ramasse des champignons. c. Ali rencontre son camarade Mohammed dans la forêt. d. Nous plantons des arbres. Exercice 2 : Souligne le complément d''objet indirect dans les phrases suivantes : a. Cet arbre résiste au froid. b. Elle parle des bienfaits de la forêt. c. Il pense à la protection de la forêt. d. Vous participez au nettoyage des arbres. Exercice 3 : Mets une croix dans les cases des phrases qui contiennent les compléments du verbe : a. Ils plantent des arbres. □ b. Nous nous promenons dans la forêt. □ c. Elle montre à ses camarades une affiche sur la protection de la forêt. □ d. En automne, les feuilles des arbres jaunissent. □', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (1.5 في الورقة، 6ن).')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q41', 'exam_primary_2019_french_nov', 41, 'ديداكتيك اللغة الفرنسية', 'Proposez deux activités de remédiation pour amener les apprenantes/les apprenants à identifier les compléments du verbe et à distinguer l''un de l''autre (question 2.1 de l''épreuve, 6pts).', false, '[]'::jsonb, ARRAY[]::text[], 'Activité 1 : Relève, dans le texte suivant, les compléments d''objet direct (COD) et les compléments d''objet indirect (COI), et écris-les dans le tableau ci-dessous. Texte : « Rachid et sa petite sœur Nabila sont dans la forêt. Ils prennent leur repas sous un arbre. Après, Rachid ramasse les ordures. Il parle à sa sœur des bienfaits de la forêt. Nabila est contente. Elle remercie son frère. » Activité 2 : Coche les cases des phrases qui contiennent un complément d''objet indirect (COI) : a. Il regarde les oiseaux. □ b. Nous parlons au garde-forestier. □ c. Vous protégez la forêt. □ d. Elle parle des arbres de la forêt. □', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (2.1 في الورقة، 6ن)؛ يجب أن يتمحور النشاطان حول تحديد متممات الفعل (COD وCOI) والتمييز بين المفعول به المباشر وغير المباشر.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة نونبر 2019 — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2019_french_nov_q42', 'exam_primary_2019_french_nov', 42, 'ديداكتيك اللغة الفرنسية', 'Montrez comment vous procéderez pour mettre en œuvre chacune des deux activités de remédiation proposées (question 2.2 de l''épreuve, 6pts).', false, '[]'::jsonb, ARRAY[]::text[], 'Activité 1 : عمل جماعي و/أو في مجموعات، مع إعطاء فرص أكثر للمشاركة للمتعلمين المتعثرين. الخطوات: قراءة النص وإسماعه؛ تحديد عدد الجمل؛ قراءة الجمل واحدة تلو الأخرى؛ فهم النص وإعادة صياغته بأسئلة (De qui parle le texte ؟ Où Rachid et sa sœur Nabila sont-ils ؟ Que font-ils sous l''arbre ؟ Que fait Rachid après le repas ؟ Que fait Nabila ؟ Comment est-elle ؟)؛ ثم تحديد متممات الفعل بأسئلة دقيقة (في الجملة الثانية، ما هي مجموعة الكلمات الموضوعة مباشرة بعد الفعل؟ عن أي سؤال تجيب؟ هل يمكن حذفها؟ لماذا؟ هل يمكن تغيير مكانها؟ لماذا؟ في أي جمل تجيب مجموعات الكلمات الموضوعة مباشرة بعد الفعل عن «…quoi ؟» أو «…qui ؟»؟ كيف نسمي إذن هذه المجموعات؟ أحط المفعولات المباشرة في جمل النص. في الجملة الرابعة، ما هي مجموعة الكلمات التي تجيب عن «À qui… ؟»؟ وتلك التي تجيب عن «De quoi… ؟»؟ كيف نسمي هذه المجموعات؟ هل يمكن وضع هاتين المجموعتين قبل الفعل؟ لماذا؟ ضع خطاً تحت المفعولات غير المباشرة في هذه الجملة. ما الفرق إذن بين المفعول به المباشر (COD) والمفعول به غير المباشر (COI)؟ انسخ الجدول أعلاه وأكمله.) Activité 2 : عمل فردي ثم تصحيح جماعي. الخطوات: قراءة تعليمة النشاط؛ قراءة الجمل المقترحة؛ التحقق من فهم التعليمة؛ إنجاز النشاط فردياً؛ مرافقة المتعلمين المتعثرين وتحديد أخطائهم؛ التصحيح الجماعي للنشاط بتشجيع المتعلمين على تقديم الأجوبة المنتظرة؛ كتابة الأخطاء المرتكبة على السبورة؛ إشراك المتعلمين، وخاصة المتعثرين، في معالجة الأخطاء المحددة باستعمال أسئلة مناسبة وتذكير القاعدة النحوية المتعلقة بمتممات الفعل (COD وCOI)؛ تصحيح الأخطاء فردياً بتقديم المساعدات المناسبة للمتعلمين المتعثرين؛ تقويم أثر نشاطي المعالجة على مكتسبات المتعلمين المتعلقة بمتممات الفعل بواسطة تمارين مختارة بعناية.', 'open', 'official', 'https://concoursmarocofficiel.com/exams-concours-enseignement-crmef/', true, 'سؤال مفتوح (2.2 في الورقة، 6ن).')
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
