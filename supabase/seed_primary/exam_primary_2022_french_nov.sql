-- ====================================================================
-- مباراتي — امتحان ابتدائي: اللغة الفرنسية، دورة نونبر 2022
-- ====================================================================
-- المصدر: ملف الحل solved/2022/اللغة الفرنسية - 2022.md
--   (سجل الامتحانات رقم 70؛ الحل: تصحيح مقترح منشور على manasseb.com، 2026-11-25)
--   ملف الامتحان: exams-ibtida2i/2022/اللغة الفرنسية - امتحان.pdf (11 صفحة).
--   لا يوجد مفتاح تصحيح رسمي مرفق بالامتحان؛ الحل مصدره طرف ثالث (manasseb).
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q31 إلى Q60 وخياراته الأربعة (A-D) مطابقة حرفياً لورقة الامتحان.
--   * الأجوبة الصحيحة من صفحة التصحيح على manasseb.com؛ لا تعارض بين المصادر
--     (لم يُعثر على صفحة تصحيح لهذا الامتحان على mesconcours.ma — مناصب هو المصدر الوحيد).
--   * الأسئلة Q38 وQ45 وQ56 موسومة في verification_note (إجابات مرجّحة حسب المصدر).
--   * Q45: أُعيد التحقق من خيارات النسخ الصوتي على مسح بدقة 300 dpi.
--   * Q60 الجملة 3 مكتوبة في ورقة الامتحان نفسها «na lâcha» (خطأ مطبعي في الأصل)؛
--     نُقلت كما هي في الورقة.
--
-- ملاحظات عن ملف الامتحان:
--   * الغلاف (ص. 1): دورة نونبر 2022، التخصص المزدوج؛ اختبار في مواد: اللغة العربية –
--     اللغة الفرنسية – الرياضيات – العلوم؛ المادة: اللغة الفرنسية.
--   * المدة ساعة واحدة (60 دقيقة)، المعامل 3 (من الغلاف)؛ 30 سؤالاً (Q31–Q60)،
--     4 اختيارات (A–D) لكل سؤال، جواب صحيح واحد، نقطة واحدة لكل جواب صحيح.
--   * لا أسئلة محذوفة: الأسئلة الثلاثون كلها مُدرجة.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2022_french_nov
--   <exam_id>_q<n>  للأسئلة.  subject: arabic/french/maths/sciences/
--   didactics_ar/didactics_fr/didactics_maths/didactics_sciences/sciences_edu
--   session: jan (دورة يناير/عادي) أو nov (دورة نونبر).
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2022_french_nov', 'specialty_primary', 2022, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — مادة التخصص (دورة نونبر 2022)', 'دورة نونبر 2022', 60, 30)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (30 سؤالاً، QCM بأربعة خيارات A-D)

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q31', 'exam_primary_2022_french_nov', 31, 'النحو — أصناف الكلمات', 'À quelle catégorie grammaticale le mot souligné dans la phrase suivante appartient-il ? « On dit que le savoir est une couronne sur la tête, tandis que la richesse n''est qu''un joug sur le cou. »', false, '[{"id": "A", "text": "Verbe"}, {"id": "B", "text": "Adverbe"}, {"id": "C", "text": "Substantif"}, {"id": "D", "text": "Déterminant"}]'::jsonb, ARRAY['C']::text[], '« le savoir » : infinitif substantivé، مسبوق بأداة تعريف (déterminant).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q32', 'exam_primary_2022_french_nov', 32, 'النحو — الوظائف النحوية', 'Quelle est la fonction syntaxique du groupe de mots soulignés dans la phrase suivante ? « Le professeur a invité chacun des élèves à exprimer son point de vue. »', false, '[{"id": "A", "text": "Sujet du verbe « exprimer »"}, {"id": "B", "text": "Complément du pronom « chacun »"}, {"id": "C", "text": "COD du verbe « inviter »"}, {"id": "D", "text": "COI du verbe « inviter »"}]'::jsonb, ARRAY['B']::text[], '« des élèves » تكمل الضمير غير المحدد « chacun ».', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q33', 'exam_primary_2022_french_nov', 33, 'أنواع الجمل', 'Laquelle des phrases suivantes est de type impératif ?', false, '[{"id": "A", "text": "Nous donnons de la chance à tous les participants."}, {"id": "B", "text": "Donnons-nous la même chance à tout le monde ?"}, {"id": "C", "text": "Comme nous donnons de la chance à tous les participants !"}, {"id": "D", "text": "Donnons-nous une dernière chance avant qu''il ne soit trop tard."}]'::jsonb, ARRAY['D']::text[], 'فعل في الأمر (impératif)، جملة أمرية (injonctive)؛ الخيار B جملة استفهامية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q34', 'exam_primary_2022_french_nov', 34, 'أنواع الجمل — الجملة البسيطة', 'Laquelle des phrases suivantes est une phrase simple ?', false, '[{"id": "A", "text": "Ce TGV part à 8h 10min et arrive à 9h 55min."}, {"id": "B", "text": "J''étais si bon pour lui, je ne le contrariais jamais."}, {"id": "C", "text": "Les montures des cavaliers, leurs armures et leurs vêtements étaient d''un blanc brillant de neige."}, {"id": "D", "text": "Bradley ôta son pardessus, prit une chaise, et alla s''asseoir à l''autre coin de la cheminée."}]'::jsonb, ARRAY['C']::text[], 'فعل مصرف واحد (« étaient »)؛ الجمل الأخرى فيها عدة أفعال مصرفة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q35', 'exam_primary_2022_french_nov', 35, 'النحو — القضايا', 'Combien y a-t-il de propositions dans la phrase suivante ? « C''était une de ces coiffures d''ordre composite, où l''on retrouve les éléments du bonnet à poil, du chapska, du chapeau rond, de la casquette de loutre et du bonnet de coton, une de ces pauvres choses, enfin, dont la laideur muette a des profondeurs d''expression comme le visage d''un imbécile. »', false, '[{"id": "A", "text": "Deux propositions"}, {"id": "B", "text": "Trois propositions"}, {"id": "C", "text": "Quatre propositions"}, {"id": "D", "text": "Cinq propositions"}]'::jsonb, ARRAY['B']::text[], 'ثلاثة أفعال مصرفة : « c''était »، « où l''on retrouve »، « dont la laideur muette a ».', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q36', 'exam_primary_2022_french_nov', 36, 'النحو — الجملة التابعة', 'Laquelle des phrases suivantes contient une proposition subordonnée complétive ?', false, '[{"id": "A", "text": "Dans le compartiment où se trouvait Jeanne, deux messieurs dormaient adossés à deux coins."}, {"id": "B", "text": "Madame Boche était concierge de la maison dont le restaurant du Veau à deux têtes occupait le rez-de-chaussée."}, {"id": "C", "text": "Vivre est le métier que je veux apprendre à mes enfants."}, {"id": "D", "text": "Rosalie consentit cependant à ce que le reliquat fût envoyé au jeune homme."}]'::jsonb, ARRAY['D']::text[], '« à ce que le reliquat fût envoyé » تكمل الفعل « consentir »؛ أما A وB وC فهي جمل موصولة (relatives).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q37', 'exam_primary_2022_french_nov', 37, 'الصرف — الأزمنة والأوضاع', 'À quel mode et à quel temps le verbe de la phrase suivante est-il conjugué ? « La fillette, sa maman la prit dans ses bras. »', false, '[{"id": "A", "text": "Au présent de l''indicatif"}, {"id": "B", "text": "Au passé simple de l''indicatif"}, {"id": "C", "text": "Au présent du subjonctif"}, {"id": "D", "text": "Au passé composé de l''indicatif"}]'::jsonb, ARRAY['B']::text[], '« prit » : passé simple de l''indicatif.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q38', 'exam_primary_2022_french_nov', 38, 'الصرف — الصيغ الفعلية', 'Quelle est la forme verbale qui correspond au verbe souligné dans la phrase suivante ? « Ayant trouvé la clef sur la porte, Charles était entré, en ami. »', false, '[{"id": "A", "text": "Participe passé"}, {"id": "B", "text": "Participe présent"}, {"id": "C", "text": "Verbe conjugué"}, {"id": "D", "text": "Infinitif"}]'::jsonb, ARRAY['A']::text[], '« ayant trouvé » هي الصيغة المركبة من اسم المفعول (participe passé composé). ⚠ إجابة مرجّحة: بعض كتب النحو تسميها participe présent composé.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, 'إجابة مرجّحة حسب المصدر (تصحيح مقترح غير رسمي): «ayant trouvé» صيغة مركبة من اسم المفعول (participe passé composé)؛ بعض كتب النحو تسميها participe présent composé.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q39
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q39', 'exam_primary_2022_french_nov', 39, 'النحو — المبني للمجهول', 'Quelle est la transformation correcte, de la voix active à la voix passive, de la phrase suivante ? « Cinq ans plus tard seulement, M. Bovary connut la vérité. »', false, '[{"id": "A", "text": "Cinq ans plus tard seulement, la vérité est connue par M. Bovary."}, {"id": "B", "text": "Cinq ans plus tard seulement, la vérité fut connue par M. Bovary."}, {"id": "C", "text": "Cinq ans plus tard seulement, la vérité serait connue par M. Bovary."}, {"id": "D", "text": "Cinq ans plus tard seulement, la vérité était connue par M. Bovary."}]'::jsonb, ARRAY['B']::text[], 'الماضي البسيط « connut » يصبح « fut connue ».', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q40
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q40', 'exam_primary_2022_french_nov', 40, 'الصرف — تكوين الكلمات', 'Par quel procédé le mot « empoisonner » est-il formé ?', false, '[{"id": "A", "text": "Dérivation parasynthétique"}, {"id": "B", "text": "Préfixation"}, {"id": "C", "text": "Suffixation"}, {"id": "D", "text": "Composition populaire"}]'::jsonb, ARRAY['A']::text[], 'em- + poison + -er : بادئة ولاحقة أضيفتا في نفس الوقت (parasynthèse).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q41
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q41', 'exam_primary_2022_french_nov', 41, 'المعجم — العلاقات الدلالية', 'Quelle relation les deux mots suivants entretiennent-ils entre eux ? (imminent ; éminent)', false, '[{"id": "A", "text": "Synonymie"}, {"id": "B", "text": "Paronymie"}, {"id": "C", "text": "Homonymie"}, {"id": "D", "text": "Antonymie"}]'::jsonb, ARRAY['B']::text[], 'كلمات متقاربة الشكل مختلفة المعنى : paronymes.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q42
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q42', 'exam_primary_2022_french_nov', 42, 'الصوتيات — الأصوات', 'Lequel des phonèmes, ci-dessous, correspond aux traits articulatoires suivants ? - Mode d''articulation : consonne occlusive, sonore, nasale - Lieu d''articulation : consonne apico-dentale', false, '[{"id": "A", "text": "[m]"}, {"id": "B", "text": "[d]"}, {"id": "C", "text": "[n]"}, {"id": "D", "text": "[t]"}]'::jsonb, ARRAY['C']::text[], '[n] : occlusive nasale sonore apico-dentale ([m] شفوية bilabiale).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q43
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q43', 'exam_primary_2022_french_nov', 43, 'الصوتيات — الألوفونات', 'Laquelle des listes, ci-dessous, est une liste d''allophones ?', false, '[{"id": "A", "text": "[ə] - [e] - [ɛ]"}, {"id": "B", "text": "[ʁ] - [R] - [r]"}, {"id": "C", "text": "[o] - [ɔ] - [ø]"}, {"id": "D", "text": "[ŋ] - [n] - [ɲ]"}]'::jsonb, ARRAY['B']::text[], 'ثلاثة تحقيقات لنفس الصوت /r/ (grasseyé، uvulaire، roulé).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q44
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q44', 'exam_primary_2022_french_nov', 44, 'الصوتيات — النطق', 'Lequel des mots suivants contient la lettre « t » prononcée [s] ?', false, '[{"id": "A", "text": "Bestial"}, {"id": "B", "text": "Combustion"}, {"id": "C", "text": "Acrobatie"}, {"id": "D", "text": "Portillon"}]'::jsonb, ARRAY['C']::text[], '« acrobatie » تُنطق [akʁɔbasi].', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q45
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q45', 'exam_primary_2022_french_nov', 45, 'الصوتيات — النسخ الصوتي', 'Quelle est la transcription phonétique correcte de l''énoncé suivant ? « Je suis fatigué, je serais bien dans mon lit. »', false, '[{"id": "A", "text": "[ʒəsɥifatige ʒəsəʁɛbjɛ̃ dɑ̃mɔ̃li]"}, {"id": "B", "text": "[ʒəswifatige ʒəsəʁɛbjɛ̃ dɑ̃mɔ̃li]"}, {"id": "C", "text": "[ʒəsɥifatige ʒəsəʁɛbiɛ̃ dɑ̃mɔ̃li]"}, {"id": "D", "text": "[ʒəsɥifatigɛ ʒəsəʁɛbjɛ̃ dɑ̃mɔ̃li]"}]'::jsonb, ARRAY['A']::text[], '[ʒəsɥifatige ʒəsəʁɛbjɛ̃ dɑ̃mɔ̃li] : شبه صائت [ɥ] في « suis »، و[e] الأخير في « fatigué »، و[j] في « bien ». ⚠ إجابة مرجّحة: يجب التأكد على مسح أوضح.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, 'إجابة مرجّحة حسب المصدر (تصحيح مقترح غير رسمي)؛ أُعيد التحقق من خيارات النسخ الصوتي على مسح بدقة 300 dpi فطابق الخيار A النص الوارد في ملف الحل.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q46
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q46', 'exam_primary_2022_french_nov', 46, 'أنواع النصوص', 'Quel est le type du texte suivant ? La fabrication du chocolat — La fabrication du chocolat se déroule dans de grandes usines. Les fèves de cacao sont d''abord grillées avec leurs coques à 100 - 150 degrés pendant 30 minutes, ce qui facilite l''opération de décorticage. Une fois refroidies, les fèves sont écrasées et donnent de la pâte de cacao. Selon le chocolat que l''on désire obtenir, on ajoute ensuite différents ingrédients à cette pâte : - du sucre pour le chocolat noir ; - du beurre de cacao, du sucre et du lait pour le chocolat au lait ; - pour le chocolat blanc, seul est gardé le beurre de cacao auquel on ajoute du sucre. Différents arômes ainsi que des épices variées peuvent également être ajoutés.', false, '[{"id": "A", "text": "Narratif"}, {"id": "B", "text": "Descriptif"}, {"id": "C", "text": "Explicatif"}, {"id": "D", "text": "Injonctif"}]'::jsonb, ARRAY['C']::text[], 'النص يشرح عملية صناعة (un processus de fabrication).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q47
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q47', 'exam_primary_2022_french_nov', 47, 'أنواع النصوص — الكتابة الوظيفية', 'Voici, ci-dessous, un écrit fonctionnel : Le masque Avocat & Abricot a été conçu pour les femmes. Ce masque riche en vitamines, minéraux et lipides est parfait pour les cheveux secs et abîmés. Il les laissera doux, éclatants de santé et faciles à démêler. Dans quel but cet écrit est-il utilisé ?', false, '[{"id": "A", "text": "Pour expliquer une recette de cuisine"}, {"id": "B", "text": "Pour présenter un mode d''emploi"}, {"id": "C", "text": "Pour faire de la publicité"}, {"id": "D", "text": "Pour demander un emploi"}]'::jsonb, ARRAY['C']::text[], 'النص يمدح منتجا : publicité (إعلان).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q48
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q48', 'exam_primary_2022_french_nov', 48, 'الأدب — الأنواع الأدبية', 'À quel genre littéraire l''extrait suivant appartient-il ? MONSIEUR JOURDAIN. - Ah ! vous voilà ! je m''allais mettre en colère contre vous. LE MAÎTRE TAILLEUR. - Je n''ai pas pu venir plus tôt, et j''ai mis vingt garçons après votre habit. MONSIEUR JOURDAIN. - Vous m''avez envoyé des bas de soie si étroits, que j''ai eu toutes les peines du monde à les mettre, et il y a déjà deux mailles de rompues. LE MAÎTRE TAILLEUR. - Ils ne s''élargiront que trop. MONSIEUR JOURDAIN. - Oui, si je romps toujours des mailles. Vous m''avez aussi fait faire des souliers qui me blessent furieusement. LE MAÎTRE TAILLEUR. - Point du tout, monsieur. MONSIEUR JOURDAIN. - Comment ! point du tout ? LE MAÎTRE TAILLEUR. - Non, ils ne vous blessent point. MONSIEUR JOURDAIN. - Je vous dis qu''ils me blessent, moi. LE MAÎTRE TAILLEUR. - Vous vous imaginez cela. MONSIEUR JOURDAIN. - Je me l''imagine parce que je le sens. Voyez la belle maison ! Molière, Le Bourgeois gentilhomme, Acte II, scène 5.', false, '[{"id": "A", "text": "Le genre épistolaire"}, {"id": "B", "text": "Le genre théâtral"}, {"id": "C", "text": "Le genre argumentatif"}, {"id": "D", "text": "Le genre narratif"}]'::jsonb, ARRAY['B']::text[], 'الحوارات والإرشادات المسرحية (répliques et didascalies) : النوع المسرحي (genre théâtral).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q49
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q49', 'exam_primary_2022_french_nov', 49, 'الإنشائية — علامات الإرسال', 'Dans le texte suivant, quelle est la liste exacte des marques de l''énonciation indiquant l''émetteur ? Et tenez, moi, je ne voudrais pas avoir l''air de me vanter, mais enfin, si je n''avais pas toujours bien appris mes leçons, je n''aurais pas ma position de sous-préfet, ni l''habit d''argent que vous me voyez. D''après Marcel Aymé, Les Contes du chat perché', false, '[{"id": "A", "text": "moi - je - mes - ma - me"}, {"id": "B", "text": "je - mes - ma - que - vous"}, {"id": "C", "text": "moi - que - me - mes - vous"}, {"id": "D", "text": "je - me - vous - ma - que"}]'::jsonb, ARRAY['A']::text[], 'moi, je, me, mes, ma تعود على المتكلم (locuteur)؛ و« vous » تدل على المتلقي (destinataire).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q50
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q50', 'exam_primary_2022_french_nov', 50, 'الأدب — وظائف الكلام', 'Quelle est l''intention du personnage Harpagon dans cet extrait de réplique ? Harpagon : [...] Mon esprit est troublé, et j''ignore où je suis, qui je suis, et ce que je fais. Hélas ! mon pauvre argent, mon pauvre argent, mon cher ami, on m''a privé de toi ; et, puisque tu m''es enlevé, j''ai perdu mon support, ma consolation, ma joie ; tout est fini pour moi, et je n''ai plus que faire au monde ! Sans toi, il m''est impossible de vivre. C''en est fait, je n''en puis plus ; je me meurs, je suis mort, je suis enterré. Molière, L''Avare. Acte IV, scène 7.', false, '[{"id": "A", "text": "Exprimer un sentiment"}, {"id": "B", "text": "Demander un service"}, {"id": "C", "text": "Donner des informations"}, {"id": "D", "text": "Exprimer un souhait"}]'::jsonb, ARRAY['A']::text[], 'اليأس والألم (désespoir et douleur) : التعبير عن شعور (expression d''un sentiment).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q51
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q51', 'exam_primary_2022_french_nov', 51, 'الصرف — قيم الحاضر', 'Quelle est la valeur du présent de l''indicatif dans la phrase suivante ? « Les deux guerriers se dévisagèrent : l''instant d''après, Charles dégaine son arme et se rue sur son ennemi. »', false, '[{"id": "A", "text": "Présent de vérité générale"}, {"id": "B", "text": "Présent d''habitude"}, {"id": "C", "text": "Présent d''énonciation"}, {"id": "D", "text": "Présent de narration"}]'::jsonb, ARRAY['D']::text[], 'الحاضر السردي (présent de narration) في حكاية بالماضي، يجعل الحدث أكثر حيوية.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q52
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q52', 'exam_primary_2022_french_nov', 52, 'الروابط — أدوات الربط', 'Quel type de lien le connecteur mis en gras marque-t-il dans cet extrait ? Le chef de l''équipe lui expliquait qu''on poussait simplement la voiture, pour en prendre une autre, qui était derrière. Mais il n''entendait pas, assourdi par son emportement, hors de toute proportion. - Bougres de maladroits, quand on vous dit de ne pas y toucher ! Lorsqu''il eut compris enfin, il resta furieux, tomba sur les incommodités de la gare, où l''on ne pouvait seulement retourner un wagon. En effet, la gare, bâtie une des premières de la ligne, était insuffisante, indigne du Havre, avec sa remise en vieille charpente, sa marquise de bois et de zinc, au vitrage étroit, ses bâtiments nus et tristes, lézardés de toutes parts. É. Zola, La Bête humaine, G. Charpentier et E. Fasquelle, 1893.', false, '[{"id": "A", "text": "L''opposition"}, {"id": "B", "text": "La conséquence"}, {"id": "C", "text": "La concession"}, {"id": "D", "text": "La justification"}]'::jsonb, ARRAY['D']::text[], '« En effet » تقدم تبريرا (justification) — تفسير للغضب.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q53
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q53', 'exam_primary_2022_french_nov', 53, 'فهم النص — الاستدلال', 'Charles avait voulu faire plaisir à ses deux enfants. Depuis longtemps, ils réclamaient un chat. Ils promettaient de bien s''en occuper, de vider régulièrement sa litière, de bien le nourrir et de rafraîchir l''eau dans son bol. C''était si doux et si mignon ! Les deux enfants étaient tous très heureux de l''arrivée de Minou. Un petit détail leur avait échappé : un chat a des griffes... Quand tout le monde est rentré à la maison après le travail et l''école, une surprise les attendait ! Qu''avait bien pu faire Minou durant l''absence de tout le monde ?', false, '[{"id": "A", "text": "Minou avait arrosé les plantes."}, {"id": "B", "text": "Minou avait fermé la porte à clef."}, {"id": "C", "text": "Minou avait égratigné les meubles, les portes..."}, {"id": "D", "text": "Minou avait ouvert l''un des volets roulants à sangle."}]'::jsonb, ARRAY['C']::text[], 'الدليل « un chat a des griffes » يعلن عن الخدوش (égratignures).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q54
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q54', 'exam_primary_2022_french_nov', 54, 'الأدب — أنواع الكوميديا', 'De quel type de comique s''agit-il dans l''extrait suivant ? ARGAN, en colère. - Ah ! traîtresse ! ... TOINETTE, interrompant Argan. - Ah ! ARGAN. - Il y a... TOINETTE. - Ah ! ARGAN. - Il y a une heure... TOINETTE. - Ah ! ARGAN. - Tu m''as laissé... TOINETTE. - Ah ! Molière, Le malade imaginaire. Acte I, scène 2.', false, '[{"id": "A", "text": "Comique de caractère"}, {"id": "B", "text": "Comique de mots"}, {"id": "C", "text": "Comique de gestes"}, {"id": "D", "text": "Comique de situation"}]'::jsonb, ARRAY['B']::text[], 'تكرار « Ah ! » الذي يقطع الكلام : كوميديا الكلمات (comique de mots / de répétition).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q55
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q55', 'exam_primary_2022_french_nov', 55, 'العروض — القوافي', 'De quelle disposition de rimes s''agit-il dans la strophe suivante ? L''enfant avait cinq ans, et près de la fenêtre Ses rires et ses jeux faisaient un charmant bruit ; Et la mère, à côté de ce pauvre doux être Qui chantait tout le jour, toussait toute la nuit. Victor Hugo, Les Contemplations', false, '[{"id": "A", "text": "Rimes plates"}, {"id": "B", "text": "Rimes croisées"}, {"id": "C", "text": "Rimes embrassées"}, {"id": "D", "text": "Rimes mêlées"}]'::jsonb, ARRAY['B']::text[], 'fenêtre / bruit / être / nuit : ABAB، قوافٍ متقاطعة (rimes croisées).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q56
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q56', 'exam_primary_2022_french_nov', 56, 'الأدب — أنواع الوصف', 'De quel type de description s''agit-il dans le texte suivant ? Dès qu''on quittait une nationale pour s''enfoncer dans le dédale de la campagne bretonne, il fallait compter avec les troupeaux de vaches qui barraient de leur démarche désabusée toute la largeur de la chaussée, opulentes, lascives, le pis ballottant entre les pattes arrière à presque toucher terre, ruminant entre leurs gencives le même ennui incommensurable... Jean Rouaud, Des Hommes illustres, éd. de Minuit, 1993', false, '[{"id": "A", "text": "Description parallèle"}, {"id": "B", "text": "Description topographique"}, {"id": "C", "text": "Description portrait"}, {"id": "D", "text": "Description chronologique"}]'::jsonb, ARRAY['B']::text[], 'وصف مكان (la campagne bretonne et ses routes) : topographique. ⚠ إجابة مرجّحة: جواب محتمل؛ يمكن الدفاع عن خيار آخر حسب المرجع المستعمل.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, 'إجابة مرجّحة حسب المصدر (تصحيح مقترح غير رسمي): يمكن الدفاع عن خيار آخر حسب المرجع المستعمل.')
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q57
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q57', 'exam_primary_2022_french_nov', 57, 'الأدب — بنية الحكاية', 'Parmi les parties d''un conte, indiquées dans les choix ci-dessous, laquelle en constitue la situation finale ?', false, '[{"id": "A", "text": "Un jour, il avait fait un dessin avec de la peinture verte et il s''en était mis partout. Sa maman l''envoya dehors pour se laver. Pendant que Zouzou se roulait dans l''herbe, il entendit du bruit. C''était un renard qui avait faim et qui voulait le manger."}, {"id": "B", "text": "Le renard fut effrayé en pensant qu''il deviendrait vert, et il partit en courant."}, {"id": "C", "text": "Zouzou eut très peur et il appela : « Maman ! ! ! ». Elle arriva tout de suite et vit le renard. Alors elle expliqua au renard que Zouzou avait une maladie très grave et que, s''il le mangeait, il deviendrait, lui aussi, tout vert."}, {"id": "D", "text": "Il était une fois un bébé lapin, tout blanc, qui s''appelait Zouzou. Zouzou adorait dessiner et faire de la peinture. Le problème, c''est que chaque fois, il salissait tout."}]'::jsonb, ARRAY['B']::text[], 'هروب الثعلب (la fuite du renard) يختم الحكاية (le conte).', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q58
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q58', 'exam_primary_2022_french_nov', 58, 'الأدب — الشعر', 'Parmi les propositions ci-dessous, quelle est celle où les vers de la strophe sont écrits dans le bon ordre ?', false, '[{"id": "A", "text": "Hiver, vous n''êtes qu''un vilain ; Été est plaisant et gentil, En témoin de Mai et d''Avril L''accompagnant soir et matin."}, {"id": "B", "text": "Été est plaisant et gentil, Hiver, vous n''êtes qu''un vilain ; En témoin de Mai et d''Avril L''accompagnant soir et matin."}, {"id": "C", "text": "Hiver, vous n''êtes qu''un vilain ; Été est plaisant et gentil, L''accompagnant soir et matin. En témoin de Mai et d''Avril"}, {"id": "D", "text": "En témoin de Mai et d''Avril Été est plaisant et gentil, Hiver, vous n''êtes qu''un vilain ; L''accompagnant soir et matin."}]'::jsonb, ARRAY['A']::text[], 'ترتيب روندو شارل دورليان : Hiver… / Été… / En témoin… / L''accompagnant…', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q59
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q59', 'exam_primary_2022_french_nov', 59, 'فهم النص — إكمال النص', 'Voici un texte à compléter : « La famille souriante était ……………… autour de la table. La chère abondante se présentait sous la ……………… d''une assiette à soupe devant ……………… des enfants rayonnants, une bouilloire ……………… d''eau bouillante devant la ……………… radieuse et, tout au bout, le ……………… de la fête de ce foyer heureux. » Dans quelle liste les mots sont-ils classés selon l''ordre qui convient pour compléter ce texte ?', false, '[{"id": "A", "text": "remplie - forme - chacun - maman - dîner - assemblée"}, {"id": "B", "text": "assemblée - forme - dîner - chacun - maman - remplie"}, {"id": "C", "text": "assemblée - remplie - chacun - maman - dîner - forme"}, {"id": "D", "text": "assemblée - forme - chacun - remplie - maman - dîner"}]'::jsonb, ARRAY['D']::text[], 'الترتيب الصحيح للكلمات لإكمال النص: assemblée – forme – chacun – remplie – maman – dîner.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — مادة التخصص (دورة نونبر 2022) — Q60
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2022_french_nov_q60', 'exam_primary_2022_french_nov', 60, 'فهم النص — ترتيب النص', 'Voici ci-dessous les phrases d''un texte, données en désordre et numérotées de 1 à 7 : 1. À l''instant où le paysan le saisissait ainsi, le léopard se réveilla et songea à se remettre en route. 2. Il s''accrocha donc fortement à l''animal. 3. Le paysan na lâcha pas la queue du fauve et se laissa traîner sur le sol. 4. Le paysan pensa au prix qu''il pourrait tirer de la peau de l''animal. 5. Un paysan qui allait au souk de bon matin aperçut sur le bord de la route un léopard qui s''était endormi. 6. Il pensa que s''il lâchait prise, le fauve découvrirait sa présence, et il espérait qu''il arriverait à le fatiguer ou que quelqu''un viendrait à son aide. 7. Il s''approcha de lui tout doucement et l''attrapa par la queue. Pour reconstituer ce texte, quel est le bon ordre des phrases ci-dessus ?', false, '[{"id": "A", "text": "5 - 4 - 7 - 1 - 3 - 6 - 2"}, {"id": "B", "text": "5 - 4 - 1 - 7 - 3 - 6 - 2"}, {"id": "C", "text": "5 - 4 - 7 - 1 - 6 - 3 - 2"}, {"id": "D", "text": "5 - 7 - 4 - 1 - 3 - 6 - 2"}]'::jsonb, ARRAY['A']::text[], 'الترتيب المنطقي: الفلاح يرى النمر (5)، يفكر في ثمن الجلد (4)، يقترب ويمسكه من ذيله (7)، النمر يستيقظ (1)، الفلاح لا يفلت الذيل ويُجر على الأرض (3)، يفكر أنه إن أفلت سيكتشف النمر وجوده (6)، فيتشبث بقوة بالحيوان (2) — « donc » في الجملة 2 تختم السلسلة.', 'qcm', 'third_party', 'https://www.manasseb.com/sujet/sujet-41832-enseignant-2022/', true, NULL)
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
