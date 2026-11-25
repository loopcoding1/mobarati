-- ====================================================================
-- مباراتي — امتحان ابتدائي: اللغة الفرنسية، دورة دجنبر 2018
-- ====================================================================
-- المصدر: ملف الحل solved/2018/اللغة الفرنسية - امتحان.md
--   (سجل الامتحانات رقم 22؛ الحل من التصويب الرسمي)
--   ملف الامتحان: exams-ibtida2i/2018/اللغة الفرنسية - امتحان.pdf (16 صفحة، ممسوحة).
--   ملف التصحيح الرسمي (في نفس المجموعة): exams-ibtida2i/2018/تصحيح الفرنسية.pdf
--   (6 صفحات، ممسوحة — «عناصر الإجابة» الرسمية لوزارة التربية الوطنية).
--   صفحة منشورة تستضيف الامتحان والتصحيح نفسهما:
--   https://www.taalimi.info/2019/08/2018.html
--
-- التحقق (100% مقابل ملف PDF بعد تصييره صوراً وقراءته صفحة بصفحة):
--   * نص كل سؤال من Q1 إلى Q32 وخياراته (أ-د) مطابق حرفياً لورقة الامتحان،
--     بما فيها جداول المطابقة (Q12، Q16، Q17، Q19، Q22، Q26) وجدول صحيح/خطأ (Q4)
--     ونصوص Q30–Q32 كاملة.
--   * الأجوبة الصحيحة مأخوذة حرفياً من المفتاح الرسمي (تصحيح الفرنسية.pdf)،
--     ورُوجعت واحداً واحداً مقابل نص الامتحان وقواعد اللغة الفرنسية؛ لا تعارض
--     مع أي مصدر منشور (manasseb.com لا يغطي هذا الامتحان؛ mesconcours.ma يغطي
--     مباراة التفتيش لا هذه الدورة).
--   * المدة (90 دقيقة) والمعامل (2) من غلاف ورقة الامتحان (صفحة 1).
--
-- بنية الامتحان (80 نقطة، النقطة النهائية على 20):
--   * الجزء الأول (40 نقطة): Q1–Q32 — فهم المكتوب (Q1–Q9)، اللغة (Q10–Q29)،
--     الإنتاج الكتابي (Q30–Q32).
--   * الجزء الثاني (40 نقطة): ديداكتيك اللغة الفرنسية — Q33–Q38 في هذا الملف،
--     وهي السؤالان 1 (أ–د) و2 (أ–ب) من ورقة الامتحان؛ رُقّمت 33–38 لضمان
--     ترقيم فريد ومتسلسل داخل الامتحان (يُشار إلى الترقيم الأصلي في كل سؤال).
--
-- أنواع الأسئلة:
--   * 'qcm' : أسئلة الاختيار من متعدد بعلامة × (جواب صحيح واحد، خيارات أ–د).
--   * 'open' : أسئلة المطابقة بالأسهم (Q12، Q16، Q17، Q19، Q22، Q26)، وجدول
--     صحيح/خطأ (Q4)، وإسناد الحروف لأنواع النصوص (Q30)، وترتيب النص (Q31)،
--     وتحديد بداية الحكاية ونهايتها (Q32)، وأسئلة الديداكتيك المفتوحة (Q33–Q38)؛
--     عناصر الإجابة المتوقعة من المفتاح الرسمي مذكورة كاملة في حقل explanation.
--     ملاحظة: المفتاح الرسمي يسمي إجابات الجزء الثاني «Exemple de réponse»
--     ويضيف «Les réponses non prévues sont laissées à l'appréciation du
--     correcteur» — أي أن إجابات أخرى صحيحة ممكنة بتقدير المصحح.
--
-- ملاحظات عن ملف الامتحان:
--   * الصفحات تحمل علامة مائية زرقاء «imti7anati» — أُهملت تماماً.
--   * لا أسئلة متروكة: جميع الأسئلة الـ38 لها جواب موثّق من المفتاح الرسمي.
--
-- تسمية المعرفات (اتفاقية ثابتة):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2018_french_dec
--   <exam_id>_q<n>  للأسئلة.
-- ====================================================================

-- 1. إدراج الامتحان (تخصص التعليم الابتدائي)
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count)
VALUES ('exam_primary_2018_french_dec', 'specialty_primary', 2018, 'french', 'مادة التخصص: اللغة الفرنسية', 'امتحان اللغة الفرنسية — دورة دجنبر 2018', 'دورة دجنبر 2018', 90, 38)
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q1', 'exam_primary_2018_french_dec', 1, 'Compréhension de l''écrit', 'Quel est le genre de cet extrait ?', false, '[{"id": "A", "text": "Épistolaire"}, {"id": "B", "text": "Poétique"}, {"id": "C", "text": "Autobiographique"}, {"id": "D", "text": "Biographique"}]'::jsonb, ARRAY['C']::text[], 'النص مقتطف من بداية «Mémoires d''une fille rangée» لـ Simone de Beauvoir، تروي فيه الكاتبة نفسها طفولتها بضمير المتكلم («Je suis née…») — إنه نص سيرذاتي (autobiographique).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q2', 'exam_primary_2018_french_dec', 2, 'Compréhension de l''écrit', 'Qui raconte l''histoire dans l''extrait ?', false, '[{"id": "A", "text": "Le narrateur-auteur"}, {"id": "B", "text": "Le narrateur-personnage"}, {"id": "C", "text": "L''auteur-personnage"}, {"id": "D", "text": "Le narrateur-auteur-personnage"}]'::jsonb, ARRAY['D']::text[], 'في السيرة الذاتية يتطابق الكاتب والراوي والشخصية: Simone de Beauvoir هي الكاتبة وهي الراوية وهي الشخصية التي تروي حياتها.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q3', 'exam_primary_2018_french_dec', 3, 'Compréhension de l''écrit', 'À quelle tranche d''âge les événements évoqués dans le texte correspondent-ils ?', false, '[{"id": "A", "text": "à la jeunesse"}, {"id": "B", "text": "à l''enfance"}, {"id": "C", "text": "à la petite enfance"}, {"id": "D", "text": "à la vieillesse"}]'::jsonb, ARRAY['C']::text[], 'الأحداث المروية هي الولادة (9 يناير 1908)، سن السنتين والنصف، وولادة الأخت الصغرى — أي الطفولة المبكرة (la petite enfance).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q4', 'exam_primary_2018_french_dec', 4, 'Compréhension de l''écrit', 'D''après le texte, les informations suivantes sont-elles vraies ou fausses ? a. Le problème posé dans le texte est celui de la mémoire. b. Ce qui assure la persistance du souvenir, ce sont les photographies. c. La narratrice jalousait sa sœur qui lui aurait confisqué la chaleur parentale. d. Les souvenirs évoqués, dans le texte, sont clairs et précis. e. La narratrice a vécu son enfance tout à fait comme elle le souhaitait. f. La narratrice communiquait librement avec le monde extérieur. g. La naissance du personnage du texte a eu lieu au début du 19ème siècle. h. La narratrice avait besoin de la douceur maternelle.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a. Vraie — b. Vraie — c. Vraie — d. Fausse — e. Fausse — f. Fausse — g. Fausse — h. Vraie. (a) النص كله يدور حول الذاكرة. (b) صور العائلة تثبّت الذكرى. (c) «J''en fus, paraît-il, jalouse». (d) العكس: «je ne retrouve guère qu''une impression confuse». (e) كانت تخشى غضب أمها وتحتاج ابتسامتها. (f) كانت تعيش «à l''abri». (g) وُلدت في 9 يناير 1908، أي بداية القرن العشرين لا التاسع عشر. (h) «j''avais besoin de son sourire».', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'جدول صحيح/خطأ (8 عناصر)؛ ليس QCM بعلامة × واحدة، لذلك أُدرج سؤالاً مفتوحاً مع الجدول الكامل في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q5', 'exam_primary_2018_french_dec', 5, 'Compréhension de l''écrit', 'Quel sentiment la narratrice exprime-t-elle dans le premier paragraphe ?', false, '[{"id": "A", "text": "Malheur"}, {"id": "B", "text": "Fierté"}, {"id": "C", "text": "Tristesse"}, {"id": "D", "text": "Mélancolie"}]'::jsonb, ARRAY['B']::text[], '«j''étais fière d''être l''aînée : la première» — تعبّر عن الفخر بكونها البكر.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q6', 'exam_primary_2018_french_dec', 6, 'Compréhension de l''écrit', '« Son regard tranquille me protégeait pendant que je faisais au Luxembourg, pendant que je berçais ma poupée Blondine, descendue du ciel une nuit de Noël avec la malle qui contenait son trousseau. Au soir tombant, elle s''asseyait à côté de moi et me montrait des images en me racontant des histoires. » Que fait la narratrice dans ce passage ?', false, '[{"id": "A", "text": "Elle ironise."}, {"id": "B", "text": "Elle prescrit."}, {"id": "C", "text": "Elle argumente."}, {"id": "D", "text": "Elle fabule."}]'::jsonb, ARRAY['D']::text[], 'الراوية تتخيل أن دميتها «نزلت من السماء ليلة عيد الميلاد» — إنها تختلق وتتخيل (fabuler).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q7', 'exam_primary_2018_french_dec', 7, 'Compréhension de l''écrit', 'Que signifie l''expression soulignée dans cette phrase ? « Elle veillait sur ma sœur et sur moi. »', false, '[{"id": "A", "text": "compter sur"}, {"id": "B", "text": "prendre soin de"}, {"id": "C", "text": "guetter"}, {"id": "D", "text": "surveiller"}]'::jsonb, ARRAY['B']::text[], '«veiller sur quelqu''un» تعني الاعتناء به وحمايته — «prendre soin de».', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q8
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q8', 'exam_primary_2018_french_dec', 8, 'Compréhension de l''écrit', 'Que signifie cette phrase ? « C''est à Louise que j''ai dû la sécurité quotidienne. »', false, '[{"id": "A", "text": "Ma sécurité est assurée par Louise."}, {"id": "B", "text": "Ma sécurité est mise en cause par Louise."}, {"id": "C", "text": "Ma sécurité est exigée par Louise."}, {"id": "D", "text": "Ma sécurité est sollicitée par Louise."}]'::jsonb, ARRAY['A']::text[], 'الجملة بصيغة التوكيد «C''est… que» تعني أن لويز هي مصدر أمنها اليومي: أمنها مضمون بفضل لويز.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q9
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q9', 'exam_primary_2018_french_dec', 9, 'Compréhension de l''écrit', 'Que signifie le mot souligné dans cette phrase ? « Ce poupon ne m''avait pas. »', false, '[{"id": "A", "text": "Statuette"}, {"id": "B", "text": "Poupée"}, {"id": "C", "text": "Bébé"}, {"id": "D", "text": "Bibelot"}]'::jsonb, ARRAY['C']::text[], '«poupon» هنا يعني الرضيع/الطفل الصغير: الأخت الصغرى المولودة حديثاً («ma sœur vient de naître… J''avais une petite sœur : ce poupon ne m''avait pas»).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q10
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q10', 'exam_primary_2018_french_dec', 10, 'Langue', 'Quel est le synonyme du mot souligné dans la phrase suivante : « Je redoutais cet éclair orageux qui enlaidissait son visage… » ?', false, '[{"id": "A", "text": "doutais"}, {"id": "B", "text": "craignais"}, {"id": "C", "text": "détestais"}, {"id": "D", "text": "fuyais"}]'::jsonb, ARRAY['B']::text[], '«redouter» مرادفها «craindre» (يخاف)؛ «douter» تعني الشك، و«détester» الكره، و«fuir» الهرب.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q11
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q11', 'exam_primary_2018_french_dec', 11, 'Langue', 'Quelle est la figure de style employée dans cette phrase ? « Le rouge de la moquette criait dans mes yeux. »', false, '[{"id": "A", "text": "La métaphore"}, {"id": "B", "text": "La personnification"}, {"id": "C", "text": "La comparaison"}, {"id": "D", "text": "L''ironie"}]'::jsonb, ARRAY['B']::text[], 'إسناد فعل إنساني («crier») إلى شيء غير عاقل (اللون الأحمر) هو تشخيص (personnification).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q12
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q12', 'exam_primary_2018_french_dec', 12, 'Langue', 'Reliez, par une flèche, chaque élément de la colonne « A » au terme qui sert à l''identifier dans la colonne « B ». Colonne A : a. Partir/s''en aller — b. Embarquer/débarquer — c. verre/vert — d. collusion/collision Colonne B : 1- Antonymes — 2- Homonymes — 3- Pseudonymes — 4- Synonymes — 5- Paronymes', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→4 (Synonymes) — b→1 (Antonymes) — c→2 (Homonymes) — d→5 (Paronymes). «partir» و«s''en aller» مترادفان؛ «embarquer» و«débarquer» متضادان؛ «verre» و«vert» متجانسان لفظاً؛ «collusion» و«collision» متقاربتا اللفظ (paronymes).', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q13
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q13', 'exam_primary_2018_french_dec', 13, 'Langue', 'Quelle est la figure de style utilisée dans cette phrase ? « Je couvrais de baisers sa peau de jeune femme. »', false, '[{"id": "A", "text": "La répétition"}, {"id": "B", "text": "L''exagération"}, {"id": "C", "text": "La comparaison"}, {"id": "D", "text": "La métonymie"}]'::jsonb, ARRAY['B']::text[], '«couvrir de baisers» مبالغة (hyperbole/exagération) في التعبير عن الحب.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q14
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q14', 'exam_primary_2018_french_dec', 14, 'Langue', 'De quel type de comparaison s''agit-il dans cette phrase ? « Je me sentais plus intéressante qu''un nourrisson cloué dans son berceau. »', false, '[{"id": "A", "text": "L''infériorité"}, {"id": "B", "text": "L''absolu"}, {"id": "C", "text": "L''égalité"}, {"id": "D", "text": "La supériorité"}]'::jsonb, ARRAY['D']::text[], '«plus… que» صيغة تفضيل (comparatif de supériorité).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q15
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q15', 'exam_primary_2018_french_dec', 15, 'Langue', 'De quel type de subordonnée s''agit-il dans cette phrase ? « Son regard tranquille me protégeait pendant que je faisais des pâtés au Luxembourg. »', false, '[{"id": "A", "text": "La subordonnée de cause"}, {"id": "B", "text": "La subordonnée de temps"}, {"id": "C", "text": "La subordonnée de conséquence"}, {"id": "D", "text": "La subordonnée de concession"}]'::jsonb, ARRAY['B']::text[], '«pendant que» أداة تدل على الزمن — جملة تابعة ظرفية زمانية (subordonnée de temps).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q16
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q16', 'exam_primary_2018_french_dec', 16, 'Langue', 'Reliez, par une flèche, chaque mot de la colonne « A » à son antonyme dans la colonne « B ». Colonne A : a. belle — b. sombre — c. détestable — d. sévère Colonne B : 1- adorable — 2- laide — 3- indulgent — 4- cruel — 5- claire', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→2 (laide) — b→5 (claire) — c→1 (adorable) — d→3 (indulgent).', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q17
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q17', 'exam_primary_2018_french_dec', 17, 'Langue', 'Reliez, par une flèche, chaque élément souligné dans la colonne « A » à son dérivé adjectival dans la colonne « B ». Colonne A : a. Le vent d''hiver. — b. La fraîcheur du printemps. — c. Le contrat d''une année. — d. Les relations d''amitié. Colonne B : 1- annuel — 2- automnales — 3- hivernal — 4- printanière — 5- amicales', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→3 (hivernal) — b→4 (printanière) — c→1 (annuel) — d→5 (amicales). مشتق «hiver» الصفي هو «hivernal»؛ و«printemps» هو «printanière»؛ و«année» هو «annuel»؛ و«amitié» هو «amicales».', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q18
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q18', 'exam_primary_2018_french_dec', 18, 'Langue', 'À quoi sert « C''est… que.. » dans la phrase suivante ? « C''est à Louise que j''ai dû la sécurité quotidienne. »', false, '[{"id": "A", "text": "Mettre en valeur"}, {"id": "B", "text": "Mettre en dérision"}, {"id": "C", "text": "Mettre en opposition"}, {"id": "D", "text": "Mettre en apposition"}]'::jsonb, ARRAY['A']::text[], 'تركيب «C''est… que» هو أداة إبراز (mise en relief) تُبرز العنصر وتضعه في الواجهة.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q19
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q19', 'exam_primary_2018_french_dec', 19, 'Langue', 'Reliez, par une flèche, chaque nom de la colonne « A » à l''adjectif qualificatif qui lui correspond dans la colonne « B ». Colonne A : a. tête — b. nez — c. eau — d. espaces Colonne B : 1- camus — 2- verts — 3- polluées — 4- chauve — 5- fraîche', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→4 (chauve) — b→1 (camus) — c→5 (fraîche) — d→2 (verts). التعابير الثابتة: «tête chauve»، «nez camus»، «eau fraîche»، «espaces verts».', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q20
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q20', 'exam_primary_2018_french_dec', 20, 'Langue', 'Quelle est la fonction grammaticale de la subordonnée relative dans cette phrase ? « Ce sont ces photographies dont tu t''es servi pour raconter ta vie. »', false, '[{"id": "A", "text": "Complément du nom"}, {"id": "B", "text": "Complément d''objet indirect"}, {"id": "C", "text": "Complément d''objet direct"}, {"id": "D", "text": "Complément d''agent"}]'::jsonb, ARRAY['B']::text[], 'الجملة الموصولة مبدوءة بـ«dont» (= de ces photographies)، وهي متمم للفعل «se servir de» — أي مفعول به غير مباشر (complément d''objet indirect).', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q21
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q21', 'exam_primary_2018_french_dec', 21, 'Langue', 'Indiquez la série contenant un mot incorrectement orthographié.', false, '[{"id": "A", "text": "un lycée – un mausolée – un trophée"}, {"id": "B", "text": "un pis – un fouillis – une souris"}, {"id": "C", "text": "une fourmi – un étui – un génie"}, {"id": "D", "text": "un villageois – un désarrois – un mois"}]'::jsonb, ARRAY['D']::text[], 'الخطأ في «désarrois»: كلمة «désarroi» لا تأخذ «s» في المفرد (الصواب «un désarroi»). السلاسل الأخرى كلها صحيحة إملائياً.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q22
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q22', 'exam_primary_2018_french_dec', 22, 'Langue', 'Reliez, par une flèche, chaque verbe souligné dans la colonne « A » au temps et au mode auxquels il est conjugué dans la colonne « B ». Colonne A : a. Louise prendra soin de Simone — b. Simone écrivit ses Mémoires en tomes. — c. La narratrice aime que sa maman lui sourie — d. Les deux sœurs se sont aimées. Colonne B : 1- Subjonctif présent — 2- Futur simple de l''indicatif — 3- Conditionnel passé — 4- Passé simple de l''indicatif — 5- Passé composé de l''indicatif', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→2 (Futur simple de l''indicatif) — b→4 (Passé simple de l''indicatif) — c→1 (Subjonctif présent) — d→5 (Passé composé de l''indicatif). «prendra» مستقبل بسيط؛ «écrivit» ماضٍ بسيط؛ «sourie» مضارع منصوب بعد «aime que»؛ «se sont aimées» ماضٍ مركب.', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q23
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q23', 'exam_primary_2018_french_dec', 23, 'Langue', 'Parmi les noms composés suivants, lequel est incorrectement écrit au pluriel ?', false, '[{"id": "A", "text": "Des réveilles-matins"}, {"id": "B", "text": "Des chefs-d''œuvre"}, {"id": "C", "text": "Des chiens-loups"}, {"id": "D", "text": "Des tire-lignes"}]'::jsonb, ARRAY['A']::text[], 'في «réveille-matin» العنصر الأول فعل («il réveille») فيبقى ثابتاً في الجمع؛ الصواب «des réveille-matins» لا «réveilles-matins». أما «chefs-d''œuvre» و«chiens-loups» و«tire-lignes» فصحيحة.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q24
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q24', 'exam_primary_2018_french_dec', 24, 'Langue', 'Dans quelle phrase le participe passé souligné est-il incorrectement orthographié ?', false, '[{"id": "A", "text": "Toutes les opérations qu''il a fallu ont été effectuées par le même médecin."}, {"id": "B", "text": "J''ai trouvé toutes les adresses que j''ai pu."}, {"id": "C", "text": "La musique que j''ai entendu était ravissante."}, {"id": "D", "text": "Ces photos, je les ai développées moi-même."}]'::jsonb, ARRAY['C']::text[], 'في (c) يجب مطابقة اسم المفعول مع المفعول به المتقدم «la musique»: الصواب «entendue». أما «fallu» (فعل غير شخصي، ثابت) و«pu» (متبوع بمصدر محذوف، ثابت) و«développées» (مطابق مع «les» المتقدم) فصحيحة.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q25
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q25', 'exam_primary_2018_french_dec', 25, 'Langue', 'Parmi les phrases suivantes, laquelle contient une erreur concernant l''accord de l''adjectif qualificatif ?', false, '[{"id": "A", "text": "Tu racontes des histoires irréelles."}, {"id": "B", "text": "Hélène est une fille cadette."}, {"id": "C", "text": "Cet homme parle la langue grec."}, {"id": "D", "text": "Cet ouvrier a un nouvel emploi."}]'::jsonb, ARRAY['C']::text[], '«grec» يجب أن يوافق الاسم المؤنث «langue»: الصواب «la langue grecque». الجمل الأخرى سليمة الاتفاق.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q26
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q26', 'exam_primary_2018_french_dec', 26, 'Langue', 'Reliez, par une flèche, chaque adjectif de la colonne « A » au nom auquel il se rapporte dans la colonne « B ». Colonne A : a. Pénal — b. Brachial — c. Rénal — d. Pulmonaire Colonne B : 1- Rein — 2- Poumon — 3- Bras — 4- Rêne — 5- Peine', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→5 (Peine) — b→3 (Bras) — c→1 (Rein) — d→2 (Poumon). «pénal» يتعلق بالعقوبة (peine)؛ «brachial» بالذراع (bras)؛ «rénal» بالكلية (rein)؛ «pulmonaire» بالرئة (poumon).', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مطابقة بالأسهم (وليس QCM بعلامة ×)؛ المطابقة الكاملة في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q27
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q27', 'exam_primary_2018_french_dec', 27, 'Langue', 'Parmi les propositions suivantes, laquelle contient une erreur concernant la concordance des temps ?', false, '[{"id": "A", "text": "Si tu viens avec nous, tu seras surpris."}, {"id": "B", "text": "Si tu viens avec nous, tu serais surpris."}, {"id": "C", "text": "Si tu étais venu avec nous, tu aurais été surpris."}, {"id": "D", "text": "Si tu venais avec nous, tu serais surpris."}]'::jsonb, ARRAY['B']::text[], '«si + présent» يقتضي المستقبل («tu seras») لا الشرطي («tu serais»). الجمل الأخرى تحترم التطابق: (a) si + présent → futur؛ (c) si + plus-que-parfait → conditionnel passé؛ (d) si + imparfait → conditionnel présent.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q28
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q28', 'exam_primary_2018_french_dec', 28, 'Langue', 'Parmi les mots soulignés dans les phrases suivantes, quel est celui qui est incorrectement orthographié ?', false, '[{"id": "A", "text": "Je fais quelques exercices d''assouplissement."}, {"id": "B", "text": "Quelque méchant que tu sois, tu ne me fais pas peur."}, {"id": "C", "text": "Quelque soient tes intentions, je ne te comprends pas."}, {"id": "D", "text": "Quel que soit son avis, je m''y opposerai de toutes mes forces."}]'::jsonb, ARRAY['C']::text[], 'الصواب «Quelles que soient tes intentions» (صيغة «quel que + subjonctif» توافق الاسم). أما «quelques» (a) و«quelque… que + subjonctif» (b) و«Quel que soit» (d) فصحيحة.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q29
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q29', 'exam_primary_2018_french_dec', 29, 'Langue', 'Parmi les mots soulignés dans les phrases suivantes, quel est celui qui est incorrectement orthographié ?', false, '[{"id": "A", "text": "Cette personne, délégant la tâche à ses collègues, s''est fait une réputation."}, {"id": "B", "text": "C''est un travail excellent."}, {"id": "C", "text": "Il s''agit d''un enfant particulièrement fatigant."}, {"id": "D", "text": "La nuit venant, ils sont rentrés."}]'::jsonb, ARRAY['A']::text[], 'اسم الفاعل/المصدر الحاضر من «déléguer» هو «déléguant» لا «délégant». أما «excellent» و«fatigant» (صفة) و«venant» فصحيحة.', 'qcm', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, NULL)
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q30
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q30', 'exam_primary_2018_french_dec', 30, 'Production de l''écrit', 'Voici des types de texte. Chacun d''eux est désigné par une lettre capitale : Informatif (I) ; Narratif (N) ; Descriptif (D) ; Prescriptif (P) ; Argumentatif (A) Écrivez devant chacun de ces textes la lettre capitale qui correspond à sa typologie. a. Un médicament est un produit qui agit sur votre santé. Respectez vigoureusement l''ordonnance de votre médecin et le mode d''emploi qu''il vous a prescrit. Suivez les conseils de votre pharmacien. N''arrêtez pas de votre propre initiative le traitement. (Notice pharmaceutique) b. À gauche, là-bas, Rouen, la vaste ville aux toits bleus, sous le peuple pointu des clochers gothiques. Ils sont innombrables, frêles ou larges, dominés par la flèche de fonte de la cathédrale, et pleins de cloches qui sonnent dans l''air des belles matinées, jetant jusqu''à moi leur doux et lointain bourdonnement de fer, le chant d''airain que la brise m''apporte. (Guy de Maupassant) c. Elle retourne en arrière. Elle redescend vers le lit du torrent. Elle arrive en bas. Lentement, elle marche sur les chemins de sable. Elle va jusqu''à l''eau de la fontaine. Elle baigne son visage et ses mains. (Le Clézio) d. La plupart des affections des bronches s''accompagnent de perturbations des sécrétions locales. Le mucus, protecteur physiologique de la muqueuse, qui normalement est limpide et fluide, devient plus abondant, épais.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: a→P (Prescriptif) — b→D (Descriptif) — c→N (Narratif) — d→I (Informatif). (a) نشرة دواء تأمر وتنصح (Respectez، Suivez، N''arrêtez pas) — نص توجيهي. (b) وصف مدينة روان — نص وصفي. (c) سرد أفعال متتابعة — نص سردي. (d) تقديم معلومات طبية موضوعية — نص إخباري.', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'إسناد حرف لكل نص (وليس QCM بعلامة ×)؛ الإسناد الكامل في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q31
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q31', 'exam_primary_2018_french_dec', 31, 'Production de l''écrit', 'Voici un texte donné en désordre. Remettez-le en ordre en écrivant les numéros de 1 à 5 dans les cases qui conviennent : a. Quand du pétrole se répand dans la mer, cela cause une marée noire qui pollue les côtes. b. Les océans couvrent une très grande partie de la surface de la terre. c. Pourtant, les hommes polluent les océans avec des eaux usées, du pétrole et des déchets d''usines. Dans les usines, on se débarrasse parfois des déchets en les jetant à la mer. d. Ils abritent beaucoup d''espèces de poissons et de mammifères. Ils nous apportent aussi de la nourriture. e. Ces déchets peuvent se répandre dans l''eau. Ils tuent alors des milliers de poissons et de mammifères, comme les dauphins et les baleines.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: b→1 — d→2 — c→3 — e→4 — a→5. الترتيب المنطقي: تعريف عام بالمحيطات (b)، ثم ما توفره (d)، ثم التلوث البشري (c) بـ«Pourtant»، ثم أثر النفايات (e)، ثم مثال المد الأسود النفطي خاتمة (a).', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'ترتيب جمل (1–5) وليس QCM بعلامة ×؛ الترتيب الكامل في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q32
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q32', 'exam_primary_2018_french_dec', 32, 'Production de l''écrit', 'Voici un petit conte donné en désordre. Écrivez la lettre « D » dans la case qui correspond au début de ce conte et la lettre « F » dans celle qui en constitue la fin. a. Le hérisson le rassure sur un ton calme : « il est encore derrière la porte, il attend votre décision ; c''est l''un de vos plus fidèles serviteurs et il n''hésitera sûrement pas à vous rendre service ». Le lion appelle le loup et lui demande de revenir. Il s''adresse à lui : « Voici le sang du hérisson, mais il me semble qu''il doit être mélangé avec ta cervelle ». Sur ce, le lion, impatient de retrouver ses forces, se jette sur le loup et le dévore. Sous ses crocs, la cervelle dégouline. b. - Mais où vais-je trouver le loup ? Il vient de partir ! c. Le lion fait entrer le hérisson, le remercie de s''être proposé pour lui venir en aide et loue l''altruisme et le courage dont il fait preuve en acceptant de se sacrifier pour la bonne cause. Et il ajoute : « Le loup m''a dit que ton sang est le remède de ma maladie. ». d. - Mais où vais-je trouver un hérisson ? demande le lion d''une voix fatiguée. e. - C''est vrai, mon ami a raison, voici un peu de mon sang. Mais ce sang doit être mélangé avec la cervelle d''un loup pour être efficace. C''est d''ailleurs la raison pour laquelle nous sommes venus ensemble. f. - Il y en a un là, juste derrière la porte, s''empresse de répondre le loup. g. Il était une fois un lion, un hérisson et un loup. Un jour, le lion tombe malade. Comme il est alité, des rumeurs inquiétantes circulent au sujet de sa santé. C''est pourquoi le hérisson propose au loup d''aller ensemble rendre une visite de courtoisie au lion et s''enquérir de son état de santé. h. Arrivés au seuil de la maison, le loup décide d''entrer le premier chez le lion. Par peur, par complaisance ou par imprudence, il improvise une recette médicale susceptible de guérir le maître : - Si vous buvez du sang de hérisson, vous serez guéri de votre maladie, balbutie-t-il.', false, '[]'::jsonb, ARRAY[]::text[], 'الجواب حسب المفتاح الرسمي: Début (D) = g — Fin (F) = a. البداية هي الصيغة الافتتاحية «Il était une fois…» (g) التي تقدم الشخصيات والمشكلة (مرض الأسد). أما النهاية (a) فهي وقوع الذئب في فخ القنفذ: الأسد يلتهم الذئب بعد أن أقنعه القنفذ بأن الدم يجب أن يُمزج بمخ الذئب.', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'تحديد بداية الحكاية ونهايتها (D/F) وليس QCM بعلامة ×؛ الجواب الكامل في التعليل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q33
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q33', 'exam_primary_2018_french_dec', 33, 'Didactique de la langue française', 'Élaborez une fiche pédagogique pour cette activité selon les consignes suivantes : a. définir deux objectifs d''apprentissage ;', false, '[]'::jsonb, ARRAY[]::text[], 'Identifier les types de phrases. Opérer les transformations concernant les types de phrases. (مثال المفتاح الرسمي؛ والمفتاح يقبل أي هدفين مناسبين بتقدير المصحح.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 1أ): تعريف هدفين تعلميين لنشاط في النحو حول أنواع الجمل (السنة 6 ابتدائي)، انطلاقاً من الحوار المسند: «- Bonjour Jamal. Comment vas-tu ? - Je vais bien. Merci. - Oh, regarde. Quel joli jardin ! - Oui, c''est magnifique ! - Tu veux que nous y allions ? - D''accord, allons-y ! »')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q34
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q34', 'exam_primary_2018_french_dec', 34, 'Didactique de la langue française', 'b. indiquer les étapes méthodologiques à suivre, et préciser l''objectif (ou les objectifs) assigné(s) à chacune d''elles ;', false, '[]'::jsonb, ARRAY[]::text[], 'Observation/Découverte : Amener les élèves à identifier le fait de langue, objet d''étude. Réflexion/ Manipulation /Compréhension/ Conceptualisation : Amener les élèves à réfléchir sur l''emploi du fait de langue, objet d''étude ; Amener les élèves à construire la règle qui correspond au fait de langue étudié. Entraînement/Application : Amener les élèves à appliquer la règle construite / à s''exercer. Évaluation et consolidation : Évaluer le degré de maîtrise des objectifs de l''activité ; Amener les élèves à consolider leurs acquis. (مثال المفتاح الرسمي.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 1ب): المراحل المنهجية للنشاط وأهداف كل مرحلة.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q35
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q35', 'exam_primary_2018_french_dec', 35, 'Didactique de la langue française', 'c. proposer, pour chaque étape indiquée, trois questions et/ou consignes ;', false, '[]'::jsonb, ARRAY[]::text[], 'Observation/Découverte : Combien y a-t-il de phrases dans ce dialogue ? Par quel signe de ponctuation se termine chaque phrase ? Relève, dans le dialogue, les phrases qui servent à poser une question. Par quel signe de ponctuation se terminent-elles ? Relève, dans le dialogue, les phrases qui servent à donner un ordre. Par quels signes de ponctuation se terminent-elles ? Réflexion / Manipulation /Compréhension / Conceptualisation : Comment appelle-t-on la phrase qui sert à poser une question ? Comment appelle-t-on la phrase qui sert à donner une information ? Comment appelle-t-on la phrase qui sert à donner un ordre ? Quels sont les types de phrases ? Indique le type de chaque phrase du dialogue. Donne un exemple pour chaque type de phrases. Transforme la phrase suivante en une phrase interrogative : « Ils vont au jardin. » Transforme les phrases suivantes en phrases impératives : Vous allez au jardin. / Nous allons au jardin. / Tu travailles bien. Quelle est la règle grammaticale à retenir ? Entraînement/application : Indique le type de chacune des phrases suivantes : Quelle belle surprise ! / J''aime lire des histoires. / Fais tes devoirs. / Qu''est-ce que tu aimes lire ? Mets le signe de ponctuation qui convient à la fin de chaque phrase : Il est venu en retard / As-tu fait tes devoirs / Quelle joie de lire des contes / Sois prudent en route. Transforme les phrases suivantes en phrases interrogatives : Il est parti en voyage. / Tu rentreras chez toi demain. / Vous êtes venus à la fête. Évaluation et consolidation : Écris devant chaque phrase le type qui lui correspond : Elles sont allées au cinéma. / Est-ce que les invités sont arrivés ? / Quelle belle histoire ! / Reviens vite. Transforme les phrases suivantes en phrases interrogatives : Vous avez une école propre. / Ils sont solidaires. / Nous sommes chez nos amis. Transforme les phrases suivantes en phrases impératives : Tu ranges tes affaires. / Vous allez au cinéma. / Nous sommes prudents. (مثال المفتاح الرسمي؛ الأمثلة الكاملة في ملف الحل.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 1ج): اقتراح 3 أسئلة/تعليمات لكل مرحلة؛ الأمثلة الكاملة في ملف الحل.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q36
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q36', 'exam_primary_2018_french_dec', 36, 'Didactique de la langue française', 'd. formuler la règle grammaticale à faire déduire et retenir par les élèves.', false, '[]'::jsonb, ARRAY[]::text[], 'Il existe quatre types de phrases. La phrase déclarative : elle apporte une information. Elle se termine par un point (.) ou trois points de suspension (…). Exemple : Elle lit le texte. La phrase interrogative : elle sert à poser une question. Elle se termine par un point d''interrogation (?). Exemple : Tu vas à la bibliothèque ? Est-ce que tu vas à la bibliothèque ? Vas-tu à la bibliothèque ? La phrase exclamative : elle exprime un sentiment et peut être introduite par un mot exclamatif (comme, que, quel…). Elle se termine par un point d''exclamation (!). Exemple : C''est agréable ! Que c''est agréable ! La phrase impérative : elle sert à donner un ordre, un conseil ou à exprimer une interdiction. Elle peut se terminer par un point (.) ou un point d''exclamation (!) Exemple : Ne dérangez pas les autres. Dépêchez-vous ! Remarque : Toutes ces phrases peuvent être affirmatives ou négatives. (مثال المفتاح الرسمي.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 1د): صياغة القاعدة النحوية المراد استنتاجها وحفظها.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q37
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q37', 'exam_primary_2018_french_dec', 37, 'Didactique de la langue française', '2. Lors de l''évaluation de cette activité, vous constatez que des élèves éprouvent des difficultés à opérer des transformations concernant les types de phrases. a. Identifiez deux difficultés et proposez, pour chacune d''elles, une activité de remédiation appropriée.', false, '[]'::jsonb, ARRAY[]::text[], 'Difficulté à transformer une phrase déclarative en une phrase interrogative en utilisant l''inversion du sujet — Activité de remédiation : Transforme ces phrases en phrases interrogatives en utilisant l''inversion du sujet : Le professeur encourage les élèves à faire l''expérience. / Elle a acheté un beau cartable. / Tu comprends. Difficulté à transformer une phrase interrogative en une phrase déclarative — Activité : Transforme ces phrases en phrases déclaratives : Est-ce que ce film est intéressant ? / Viendra-t-il demain ? / Tu vas assister à la fête ? Difficulté à transformer une phrase déclarative en une phrase impérative — Activité : Transforme ces phrases en phrases impératives : Tu apprends tes leçons. / Vous faites attention. / Nous faisons nos devoirs. (مثال المفتاح الرسمي — المطلوب صعوبتان؛ المفتاح يقترح ثلاثاً.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 2أ): تحديد صعوبتين واقتراح نشاط علاجي لكل منهما.')
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

-- أسئلة امتحان: اللغة الفرنسية — دورة دجنبر 2018 — Q38
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2018_french_dec_q38', 'exam_primary_2018_french_dec', 38, 'Didactique de la langue française', 'b. Montrez comment vous procéderez pour mettre en œuvre ces activités de remédiation.', false, '[]'::jsonb, ARRAY[]::text[], 'Amener les élèves à identifier leurs difficultés à l''aide d''un questionnement pertinent. Faire rappeler la règle en s''appuyant sur des exemples précis, choisis en fonction des difficultés identifiées. Faire réaliser des activités de remédiation appropriées aux difficultés identifiées. Traiter systématiquement les erreurs commises et les difficultés identifiées. Proposer des exercices de consolidation et/ou d''enrichissement. Faire réaliser ces exercices en accompagnant les élèves, notamment ceux en difficulté. Procéder à la correction collective et individuelle des exercices effectués. Évaluer, à la fin, le degré de maîtrise des objectifs assignés aux activités de remédiation réalisées. (مثال المفتاح الرسمي.)', 'open', 'official', 'https://www.taalimi.info/2019/08/2018.html', true, 'سؤال مفتوح (الجزء الثاني، السؤال 2ب): كيفية تنفيذ أنشطة العلاج.')
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

