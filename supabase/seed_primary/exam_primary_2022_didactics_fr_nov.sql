-- ====================================================================
-- مباراتي — ديداكتيك اللغة الفرنسية، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/ديداكتيك اللغة الفرنسية - 2022.md
--   (سجل الامتحانات رقم 71؛ الحل: بحث Google أولاً، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2022/ديداكتيك اللغة الفرنسية.pdf (6 صفحات).
--   رابط التصحيح (مناصب): https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q31 إلى Q45 وخياراته الأربعة (A-D) مطابق لورقة الامتحان.
--   * لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان؛ الأجوبة من تصحيح مقترح
--     من إعداد مناصب للاستئناس (المصدر الوحيد المنشور لهذا المكوّن).
--   * السؤالان Q37 وQ38 معلَّمان في المصدر بـ«إجابة مرجّحة» — موسومان في
--     verification_note وverified=false.
--   * انحراف واحد لصالح PDF: الخيار A في Q45 ينتهي في ورقة الامتحان بنقطة
--     («...Relire/Améliorer le premier jet .») أغفلها ملف الحل؛ أُثبتت هنا كما في PDF.
--
-- ملاحظات عن ملف الامتحان:
--   * هذا الملف يغطي جزءًا فقط من الاختبار المزدوج «Didactique de la langue
--     française et sciences de l'éducation» (30 سؤالاً، Q31 إلى Q60)؛ الأسئلة
--     Q46–Q60 (علوم التربية) في ملف منفصل (الفهرس 72) وليست هنا.
--   * المدة (60 دقيقة) والمعامل (3) من غلاف ورقة الامتحان نفسها (الصفحة 1/9).
--   * صفحة mesconcours.ma الخاصة بـ«ديداكتيك اللغة الفرنسية 2022» تخص امتحان
--     الكفاءة المهنية (7 أسئلة مكتوبة، بلا QCM) وهو امتحان مختلف، فلم تُستعمل.
--   * لا أسئلة متخطاة: أُدرجت الأسئلة الـ15 كلها (Q31–Q45).
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2022_didactics_fr_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_didactics_fr_nov', 'specialty_primary', 2022, 'didactics_fr', 'ديداكتيك اللغة الفرنسية', 'امتحان ديداكتيك اللغة الفرنسية (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 15)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (15 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q31', 'exam_primary_2022_didactics_fr_nov', 31, 'الاستقبال الشفوي', 'Dans quelle liste les capacités indiquées sont-elles toutes liées à la réception de l''oral ?', false, '[{"id": "A", "text": "Comprendre le sens d''un énoncé entendu - Comprendre l''état attitudinal et émotionnel du locuteur à partir des caractéristiques prosodiques de sa parole - S''approprier le système accentuel, rythmique et intonatif de la langue - Ecouter attentivement autrui"}, {"id": "B", "text": "Réagir à une sollicitation verbale - Associer le verbal et le non verbal - Utiliser ses acquis linguistiques pour transférer ses connaissances et ses expériences à d''autres personnes - Décomposer un énoncé en petites unités de sens"}, {"id": "C", "text": "Mémoriser des textes pour développer sa mémoire auditive - Restituer un énoncé entendu en utilisant les acquis lexicaux - Exprimer son avis - Se familiariser avec le système phonologique"}, {"id": "D", "text": "Reconnaître les sons et leurs traits distinctifs - Associer le verbal et le non verbal - Se familiariser avec le système phonologique - S''exprimer correctement pour manifester sa compréhension d''un texte entendu ou lu - Se familiariser avec le système phonologique"}]'::jsonb, ARRAY['A']::text[], 'كل قدرات القائمة A تتعلق بالاستماع والفهم (réception de l''oral)؛ أما القوائم الأخرى فتتضمن قدرات إنتاجية (réagir, exprimer son avis, s''exprimer correctement).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q32', 'exam_primary_2022_didactics_fr_nov', 32, 'أفعال التواصل — التعبير عن الوجوب', 'À quel acte de communication l''énoncé suivant correspond-il ?
« Il faut protéger l''environnement. »', false, '[{"id": "A", "text": "à l''acte de communication « exprimer une interdiction »"}, {"id": "B", "text": "à l''acte de communication « exprimer une obligation »"}, {"id": "C", "text": "à l''acte de communication « donner un conseil »"}, {"id": "D", "text": "à l''acte de communication « exprimer un souhait »"}]'::jsonb, ARRAY['B']::text[], '« Il faut… » هي الصيغة النموذجية للتعبير عن الوجوب (l''obligation).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q33', 'exam_primary_2022_didactics_fr_nov', 33, 'أنواع الرسائل — المحادثة', 'À quel type de message le texte suivant correspond-il ?
« - Je peux être écrivain. Et toi, Krapivine, tu seras acteur.
- Qu''est-ce qui te fait dire ça ?
- Je t''ai entendu en classe. Tu as tout ce qu''il faut pour monter sur scène. Tu joueras mes pièces ! »
Henri Troyat, *Aliocha*', false, '[{"id": "A", "text": "à une annonce"}, {"id": "B", "text": "à un journal intime"}, {"id": "C", "text": "à un mode d''emploi"}, {"id": "D", "text": "à une conversation"}]'::jsonb, ARRAY['D']::text[], 'تبادل للردود بين شخصيتين (شرطات الحوار) — إنها محادثة (conversation).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q34', 'exam_primary_2022_didactics_fr_nov', 34, 'إنتاج الشفوي', 'Dans quelle liste les stratégies indiquées sont-elles toutes appropriées à la production de l''oral ?', false, '[{"id": "A", "text": "Adopter une attitude d''ouverture - Prendre une posture d''écoute - Interpréter le langage non verbal - Repérer les sons, distinguer les mots"}, {"id": "B", "text": "Écouter attentivement les noms propres, les voix pour identifier les personnages - Dégager des liens entre les propos échangés - Déduire le sens d''expressions ou de mots nouveaux d''après le contexte - Repérer les mots clés"}, {"id": "C", "text": "Émettre des hypothèses sur ce qui n''a pas été compris - Prendre appui sur le contexte visuel - Repérer les lieux, les dates, les actions... - Faire attention au fond sonore ou aux bruits pour situer la scène"}, {"id": "D", "text": "Prendre son temps et parler lentement - Se rappeler les mots et les expressions déjà connus - Utiliser de nouveaux mots ou de nouvelles expressions - Recourir à des gestes, des mimiques, des exemples, des illustrations, des objets pour appuyer ses paroles"}]'::jsonb, ARRAY['D']::text[], 'التحدث ببطء، وإعادة استعمال المعجم، واللجوء إلى الإيماءات، كلها استراتيجيات لأخذ الكلمة (prise de parole)؛ أما A وB وC فهي استراتيجيات للاستماع.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q35', 'exam_primary_2022_didactics_fr_nov', 35, 'أفعال التواصل — النصيحة', 'Dans quel énoncé l''émetteur donne-t-il un conseil ?', false, '[{"id": "A", "text": "Quel beau paysage !"}, {"id": "B", "text": "À ta place, je prendrais le TGV."}, {"id": "C", "text": "À quelle heure le match commencera-t-il ?"}, {"id": "D", "text": "Le train en direction de Fès est en retard de 15 minutes."}]'::jsonb, ARRAY['B']::text[], '« À ta place, je… » + الشرطي (conditionnel) هي صيغة النصيحة (le conseil).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q36', 'exam_primary_2022_didactics_fr_nov', 36, 'فهم المكتوب', 'Dans quelle liste les stratégies d''apprentissage indiquées sont-elles toutes appropriées à la compréhension de l''écrit ?', false, '[{"id": "A", "text": "Formuler des hypothèses pour anticiper sur le sens et la fonction du texte - Utiliser les indices relatifs à la ponctuation - Anticiper l''organisation du texte à produire - Utiliser des indices pour donner du sens aux expressions et aux mots inconnus dans un texte - Reformuler, expliquer en cas d''incompréhension"}, {"id": "B", "text": "Utiliser des indices pour donner du sens aux expressions et aux mots inconnus dans un texte - Rédiger un premier jet à partir d''idées formulées mentalement - Formuler des hypothèses pour anticiper sur le sens et la fonction du texte - Utiliser les indices relatifs à la ponctuation"}, {"id": "C", "text": "Utiliser les indices relatifs à la ponctuation - Recourir à des éléments prosodiques - Utiliser des indices pour donner du sens aux expressions et aux mots inconnus dans un texte - Formuler des hypothèses pour anticiper sur le sens et la fonction du texte"}, {"id": "D", "text": "Formuler des hypothèses pour anticiper sur le sens et la fonction du texte - Décoder, en contexte, les mots nouveaux rencontrés dans un texte - Utiliser des indices pour donner du sens aux expressions et aux mots inconnus dans un texte - Utiliser les indices relatifs à la ponctuation"}]'::jsonb, ARRAY['D']::text[], 'القائمة D وحدها لا تتضمن إلا استراتيجيات القراءة (A وB تمزجان استراتيجيات الكتابة، وC عناصر نبرية خاصة بالشفوي).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q37', 'exam_primary_2022_didactics_fr_nov', 37, 'مهارات القراءة — المبدأ الأبجدي', 'Voici un exercice relatif à une activité de lecture :
« Entoure le mot quand tu vois « b » :
ballon - bonbon - salon - biberon - trousse - brebis - bouteille - livre - ardoise »
À quelle habileté de lecture cet exercice correspond-il ?', false, '[{"id": "A", "text": "à la conscience phonologique"}, {"id": "B", "text": "au principe alphabétique"}, {"id": "C", "text": "à la fluidité"}, {"id": "D", "text": "à la compréhension"}]'::jsonb, ARRAY['B']::text[], 'التلميذ يحدد الحرف (graphème) « b » في كلمات مكتوبة: مطابقة المكتوب بالصوت، أي المبدأ الأبجدي (principe alphabétique).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر (مناصب): يمكن أن يُرى في التمرين تمييزًا بصريًا؛ أما الوعي الصوتي فيتعلق بالشفوي. لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q38', 'exam_primary_2022_didactics_fr_nov', 38, 'الطريقة المقطعية', 'Par quelles activités une leçon de lecture, conçue selon la méthode syllabique, commence-t-elle ?', false, '[{"id": "A", "text": "par les activités de discrimination visuelle"}, {"id": "B", "text": "par des activités de décodage"}, {"id": "C", "text": "par les activités de discrimination auditive"}, {"id": "D", "text": "par la lecture de phrases illustrées"}]'::jsonb, ARRAY['C']::text[], 'الطريقة المقطعية (méthode syllabique) تبدأ بتحديد الصوت (التمييز السمعي)، ثم تنتقل إلى التمييز البصري وفك الرموز (décodage).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', false, 'إجابة مرجّحة حسب المصدر (مناصب): إجابة محتملة؛ يمكن الدفاع عن خيار آخر حسب المرجع المستعمل. لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان.')
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q39', 'exam_primary_2022_didactics_fr_nov', 39, 'المقاربة التفاعلية — ما قبل القراءة', 'Selon la démarche interactive, à quoi la phase de prélecture est-elle consacrée ?', false, '[{"id": "A", "text": "à l''explication des mots et/ou expressions difficiles contenus dans le texte"}, {"id": "B", "text": "au repérage d''indices prégnants et à la formulation des hypothèses de lecture"}, {"id": "C", "text": "à la lecture oralisée du texte et à la vérification des hypothèses de lecture"}, {"id": "D", "text": "à l''évaluation de la compréhension et à la réaction au texte"}]'::jsonb, ARRAY['B']::text[], 'مرحلة ما قبل القراءة (prélecture) تخدم ملاحظة المؤشرات (العنوان، الصورة، شكل النص) وصياغة فرضيات القراءة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q40', 'exam_primary_2022_didactics_fr_nov', 40, 'مهارات القراءة', 'Dans quelle liste les habiletés indiquées sont-elles toutes spécifiques à la lecture ?', false, '[{"id": "A", "text": "Prélever des informations explicites - Améliorer son premier jet - Interpréter et intégrer des idées et des informations - Examiner et évaluer le contenu, la langue et les éléments textuels"}, {"id": "B", "text": "Interpréter et intégrer des idées et des informations - Produire, par écrit, des phrases et des textes courts - Faire des inférences simples - Examiner et évaluer le contenu, la langue et les éléments textuels"}, {"id": "C", "text": "Prélever des informations explicites - Faire des inférences simples - Interpréter et intégrer des idées et des informations - Examiner et évaluer le contenu, la langue et les éléments textuels"}, {"id": "D", "text": "Prélever des informations explicites - Restituer un énoncé entendu - Interpréter et intégrer des idées et des informations - Examiner et évaluer le contenu, la langue et les éléments textuels"}]'::jsonb, ARRAY['C']::text[], 'القدرات الأربع في C كلها تتعلق بفهم المكتوب؛ أما A وB وD فتتضمن الكتابة أو الشفوي.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q41', 'exam_primary_2022_didactics_fr_nov', 41, 'أنواع النصوص — النص الإيعازي', 'Voici une consigne relative à une activité de production écrite :
« La Journée Nationale de l''Arbre sera célébrée la semaine prochaine. Écris, pour le journal de ton école, un texte où tu incites tes camarades à planter des arbrisseaux, à protéger les arbres et à respecter l''environnement. »
Quel est le type du texte visé par cette activité de production écrite ?', false, '[{"id": "A", "text": "Injonctif"}, {"id": "B", "text": "Narratif"}, {"id": "C", "text": "Explicatif"}, {"id": "D", "text": "Descriptif"}]'::jsonb, ARRAY['A']::text[], 'حث الزملاء على الفعل (زراعة الأشجار، حمايتها، احترام البيئة) من خصائص النص الإيعازي/التحريضي (texte injonctif/incitatif).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q42', 'exam_primary_2022_didactics_fr_nov', 42, 'النص التفسيري', 'Quel est le schéma qui convient à la production d''un texte explicatif ?', false, '[{"id": "A", "text": "Proposition préalable - Argumentation - Conclusion"}, {"id": "B", "text": "Nommer - Localiser dans l''espace - Situer dans le temps - Découper en parties - Caractériser chaque partie"}, {"id": "C", "text": "Situation initiale - Modification - Action - Résultat - Situation finale"}, {"id": "D", "text": "Identification de la question ou du problème - Explication/réponse avec le recours à la relation de cause à effet et l''illustration par des exemples - conclusion"}]'::jsonb, ARRAY['D']::text[], 'النص التفسيري (explicatif) يطرح سؤالا، ويفسره بعلاقات السبب والنتيجة والأمثلة، ثم يخلص (A = حجاجي، B = وصفي، C = سردي).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q43', 'exam_primary_2022_didactics_fr_nov', 43, 'إنتاج الكتابة', 'Dans quelle liste les habiletés indiquées sont-elles toutes appropriées à la production de l''écrit ?', false, '[{"id": "A", "text": "Écrire correctement les lettres en respectant les règles et les dimensions de l''écriture cursive - Produire, par écrit, des phrases simples ou des textes courts - Dire de manière expressive un poème - Écrire, sous dictée, des mots, des phrases ou des textes courts et simples"}, {"id": "B", "text": "Mémoriser des énoncés et des textes pour développer sa mémoire auditive - Écrire, sous dictée, des mots, des phrases ou des textes courts et simples - Copier, en écriture cursive, des mots, des phrases et des textes - Écrire correctement les lettres en respectant les règles et les dimensions de l''écriture cursive"}, {"id": "C", "text": "Produire, par écrit, des phrases simples ou des textes courts - Écrire, sous dictée, des mots, des phrases ou des textes courts et simples - Enrichir ses acquis lexicaux et culturels par la lecture de textes - Copier, en écriture cursive, des mots, des phrases et des textes"}, {"id": "D", "text": "Copier, en écriture cursive, des mots, des phrases et des textes - Produire, par écrit, des phrases simples ou des textes courts - Écrire, sous dictée, des mots, des phrases ou des textes courts et simples - Écrire correctement les lettres en respectant les règles et les dimensions de l''écriture cursive"}]'::jsonb, ARRAY['D']::text[], 'النسخ، والإنتاج الكتابي، والكتابة تحت الإملاء، والخط، كلها قدرات كتابية؛ أما القوائم الأخرى فتتضمن الشفوي أو القراءة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q44', 'exam_primary_2022_didactics_fr_nov', 44, 'تقييم الإنتاج الكتابي', 'Dans quelle liste les critères indiqués sont-ils tous appropriés à l''évaluation d''une production écrite ?', false, '[{"id": "A", "text": "La pertinence de la production - la cohérence du texte produit - la correction de la langue - la présentation matérielle de la production"}, {"id": "B", "text": "La cohérence du texte produit - Les aspects prosodiques - La présentation matérielle de la production - La pertinence de la production"}, {"id": "C", "text": "La présentation matérielle de la production - La cohérence du texte produit - La prononciation - La pertinence de la production"}, {"id": "D", "text": "Les traits phoniques - La présentation matérielle de la production - La cohérence du texte produit - La pertinence de la production"}]'::jsonb, ARRAY['A']::text[], 'الملاءمة، والاتساق، وسلامة اللغة، والعرض المادي: معايير كلاسيكية للكتابة؛ أما B وC وD فتدخل معايير الشفوي (النبر، النطق، السمات الصوتية).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: ديداكتيك اللغة الفرنسية (دورة نونبر 2022) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_didactics_fr_nov_q45', 'exam_primary_2022_didactics_fr_nov', 45, 'إنتاج الكتابة', 'Dans quelle liste les stratégies d''apprentissage indiquées sont-elles toutes appropriées à la production écrite ?', false, '[{"id": "A", "text": "Comprendre la tâche d''écriture demandée - Se rappeler des modèles d''écriture déjà vus - Associer le verbal et le non verbal - Rédiger un premier jet - Relire/Améliorer le premier jet ."}, {"id": "B", "text": "Comprendre la tâche d''écriture demandée - Se rappeler des modèles d''écriture déjà vus - Anticiper l''organisation du texte à produire - Rédiger un premier jet - Relire/Améliorer le premier jet"}, {"id": "C", "text": "Anticiper l''organisation du texte à produire - Rédiger un premier jet - Recourir à des éléments prosodiques pour appuyer ses propos - Se rappeler des modèles d''écriture déjà vus - Relire/Améliorer le premier jet"}, {"id": "D", "text": "Planifier sa manière de lire le texte - Comprendre la tâche d''écriture demandée - Anticiper l''organisation du texte à produire - Prendre une posture d''écoute - Relire/Améliorer le premier jet"}]'::jsonb, ARRAY['B']::text[], 'المسار الكامل للكتابة (فهم المهمة، النماذج، التخطيط، المسودة الأولى، المراجعة) دون أي عنصر من الشفوي أو القراءة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41849-enseignant-2022/', true, NULL)
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
