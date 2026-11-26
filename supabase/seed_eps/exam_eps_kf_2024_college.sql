-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024)
-- ====================================================================
-- المصدر: ملف الحل solved/2024/ديداكتيك التربية البدنية - الكفاءة المهنية - الإعدادي - دورة 2024.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2024-1263/
--   لا يوجد مفتاح رسمي منشور لهذه الدورة؛ كل الأجوبة أجوبة نموذجية مقترحة من mesconcours.ma
--   (طرف ثالث)، والصفحة تنص: «Aucun corrigé officiel n'a été publié». السؤالان Q1 وQ7
--   موسومان في الصفحة «Clé établie par nous». قُورنت النسخة المحلية بالصفحة الحية
--   بتاريخ 2026-11-26 — المحتوى متطابق حرفياً. لم يُستعمل AI Studio لهذا الامتحان.
--   الشهر غير مذكور في المصادر (يُعقد هذا الامتحان عادةً في دجنبر — غير مؤكد).
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. المجموع: 16 نقطة على مكونة الديداكتيك
--   (1-1: 2ن؛ 1-2: 1ن + 1ن؛ 2-1: 2ن؛ 2-2: 3ن؛ 2-3: 3ن؛ 3-1: 2ن؛ 3-2: 2ن).
--   الأسئلة: 7 أسئلة مفتوحة؛ منها 1 verified=true (Q3 — التشخيص مؤكد في جوهره
--   مقابل الأدبيات والتوجيهات البيداغوجية 2009)؛
--   5 أسئلة تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2024_college', 'eps_college', 2024, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024)', 'دورة 2024', 180, 7, 'لا يوجد مفتاح رسمي لهذه الدورة؛ كل الأجوبة أجوبة نموذجية مقترحة من mesconcours.ma (طرف ثالث). الشهر غير مذكور في المصادر.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count;

-- 2. إدراج الأسئلة (7 أسئلة مفتوحة)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q1', 'exam_eps_kf_2024_college', 1, 'رهان برمجة كرة القدم — السنة الثالثة إعدادي (قسم يغلب عليه العدوانية)', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
1-1 Quel est l''enjeu d''une programmation du football pour cette classe ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], '- Enjeu socio-affectif (prioritaire pour une population agressive) : le football, sport collectif d''opposition codifié, oblige à respecter des règles, l''adversaire, l''arbitre et les partenaires ; il canalise l''agressivité vers un affrontement réglementé et apprend la maîtrise de soi.
- Enjeu de coopération : l''objectif du module (mobiliser les ressources individuelles au service du projet du groupe) répond directement au jeu individuel constaté ; le football impose de passer, de se démarquer et de construire collectivement.
- Enjeu moteur et cognitif : développement des habiletés (passe, contrôle, conduite), de la lecture du jeu, de la prise de décision et des capacités physiques (endurance, vitesse), utiles en climat froid pour un engagement soutenu.
- Enjeu de mixité et d''équité : avec 25 filles et 22 garçons, l''APS doit permettre à tous de réussir et de partager un projet collectif.
- Enjeu institutionnel : atteindre l''OTC de 3e année (passage rapide attaque/défense pour gagner la rencontre).

تعليل (تعليق mesconcours — طرف ثالث):

L''enjeu se lit dans le contexte : population agressive, jeu individuel, mixité, objectif du module tourné vers le collectif. Le correcteur attend que le choix du football soit justifié par ces caractéristiques et non par des généralités sur le sport.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, 'صياغة OTC مطابقة حرفياً للتوجيهات البيداغوجية 2009؛ الإشارة إلى «المناخ البارد» استدلال خاص بـmesconcours لا من مرجع رسمي.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q2', 'exam_eps_kf_2024_college', 2, 'العلاقات الديداكتيكية — زمن الانخراط / المتغيرات الديداكتيكية؛ التخطيط / التقنية', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
1-2-quel rapport didactique peut-il avoir entre les notions suivantes :
- Temps d''engagement / variables didactiques ? (1pt)
- Planification / technique ? (1 point + 1 point)', false, '[]'::jsonb, ARRAY[]::text[], '- Temps d''engagement / variables didactiques : les variables didactiques (espace, nombre de joueurs, nombre de ballons, règles, durée, consignes) sont les leviers que l''enseignant manipule pour augmenter le temps d''engagement moteur effectif. Par exemple réduire les effectifs (4 contre 4 sur plusieurs terrains au lieu d''un 7 contre 7 avec attente), multiplier les ballons ou réduire les files d''attente augmente le temps de pratique de chaque élève ; à l''inverse, de longues colonnes comme dans la figure n°1 le réduisent.
- Planification / technique : la planification (cycle, module, séances) organise la progression des apprentissages techniques en fonction de l''OTC : la technique (passe longue, contrôle dos à l''adversaire) n''est pas une fin en soi mais un moyen au service du projet tactique ; elle doit être programmée progressivement, du simple au complexe, et toujours réinvestie en situation de jeu. Une planification qui isole la technique de son sens tactique produit ce qu''on observe ici : 80 % des élèves ne l''utilisent pas en match.

تعليل (تعليق mesconcours — طرف ثالث):

Il s''agit de montrer un lien de causalité ou de subordination, pas de définir chaque notion séparément. Les variables didactiques conditionnent le temps d''engagement ; la planification donne à la technique sa place et son sens dans la progression vers la compétence. 1 point par couple.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q3', 'exam_eps_kf_2024_college', 3, 'تحليل الحصة — المقاربة المعتمدة من الأستاذ', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
2-1- A votre avis ; quelle est l''approche sur laquelle l''enseignant s''est basé pour enseigner l''activité physique et sportive : football ? commentez son choix ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'L''enseignant a adopté une approche techniciste (analytique, centrée sur le geste) : exercices décontextualisés de passes et de progression à deux, répétitions excessives, sans opposition ni problème tactique, avant un match d''application déconnecté.

Commentaire : ce choix ne convient ni à l''objectif (conquérir l''espace, projet collectif) ni à la population. Les gestes travaillés hors opposition ne sont pas transférés en match (80 % ne les utilisent pas) ; les répétitions et l''attente démotivent (garçons) ; l''attitude sévère de l''enseignant envers les filles nuit au climat et contredit l''objectif socio-affectif. Les orientations pédagogiques en EPS recommandent une approche par compétences et des situations-problèmes en jeu réduit (approche tactique ou située), où la technique est construite comme réponse à un problème de jeu.

تعليل (تعليق mesconcours — طرف ثالث):

L''indice décisif est la structure de la séance : exercices techniques sans adversaire puis match. On attend l''identification de l''approche (1 point) et un commentaire critique argumenté par les résultats observés (1 point).

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q4', 'exam_eps_kf_2024_college', 4, 'تحليل الحصة — تحليل نتائج التقييم التكويني والحصيلة', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
2-2 -Analysez et interprétez les résultats obtenus lors de l''évaluation formative ainsi que le bilan établi par l''enseignant (voir tableau n°1) ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Analyse :
- 80 % des élèves n''utilisent pas la passe longue ni le contrôle dos à l''adversaire en match : l''objectif de la séance n''est pas atteint.
- Filles : progrès sur les passes courtes et la conduite de balle (ce qui a été répété), mais problème de coordination au contrôle et jeu individuel persistant.
- Garçons : faible engagement moteur, démotivation croissante, actions individuelles.

Interprétation :
- Le décalage entre ce qui est travaillé (passes courtes chez les filles, passes longues sans opposition chez les garçons) et ce qui est évalué (passe longue en match 7 contre 7) explique l''échec : pas de transfert.
- La démotivation et le faible engagement des garçons viennent de l''organisation (colonnes, attente, peu de ballons) et d''un travail répétitif sans enjeu.
- Le jeu individuel persistant dans les deux groupes montre que le sens collectif (pourquoi passer long ? pour conquérir l''espace et attaquer vite) n''a pas été construit : aucune situation n''obligeait à coopérer.
- Chez les filles, la pression et la sévérité de l''enseignant augmentent l''anxiété, ce qui nuit à la coordination fine du contrôle.
- Le match 7 contre 7 sur 50 x 30 m avec 47 élèves laisse beaucoup d''élèves inactifs ; l''agressivité de la population et le froid accentuent ces effets.

تعليل (تعليق mesconcours — طرف ثالث):

Analyser, c''est décrire les données (taux, constats par groupe) ; interpréter, c''est en chercher les causes didactiques (contenu, organisation, climat, approche). La note récompense le lien explicite entre les causes et les choix de l''enseignant décrits dans le contexte. 3 points.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, 'الربط بين شدة الأستاذ والقلق وضعف التنسيق الدقيق عند الفتيات تأويل مقترح «للتحقق» — لا دليل عليه في معطيات الورقة نفسها.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q5', 'exam_eps_kf_2024_college', 5, 'تحليل الحصة — بديل الحصة رقم 3', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
2-3 En se basant sur les exigences de l''OTC réservé à ce niveau scolaire et le bilan de l''enseignant (voir tableau n° 1 et n°2), proposez une autre alternative de la séance n°3 ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Séance n°3 (alternative), 3e année collège, football. Le sujet ne donne pas la durée : les phases ci-dessous totalisent 95 minutes (15 + 20 + 25 + 25 + 10).

Objectif : en situation d''opposition, utiliser la passe longue (PB) et le contrôle orienté dos à l''adversaire (NPB) pour conquérir rapidement l''espace adverse.

1. Mise en train (15 min) : échauffement en jeu (conservation à 4 contre 2 par groupes mixtes), mobilisation articulaire, adapté au froid.
2. Partie fondamentale :
- Situation 1 (20 min), jeu réduit 4 contre 2 dans un rectangle de 30 x 20 m divisé en deux zones : marquer un point quand une passe longue atteint un partenaire dans la zone opposée qui contrôle dos au défenseur et conserve. Variables : nombre de défenseurs, taille des zones, nombre de touches.
- Situation 2 (25 min), 5 contre 5 sur demi-terrain avec deux mini-buts : un but marqué après une passe longue suivie d''un contrôle compte double ; règle de passe obligatoire avant de tirer (contre le jeu individuel).
- Organisation : 4 ateliers simultanés, un ballon pour deux, groupes mixtes et hétérogènes, rôles tournants (joueur, arbitre, observateur) pour réduire l''attente et responsabiliser face à l''agressivité.
3. Situation de référence (25 min) : match 7 contre 7 sur 50 x 30 m avec rotation rapide des équipes et fiche d''observation tenue par les élèves (nombre de passes longues réussies, contrôles réussis).
4. Retour au calme et bilan (10 min) : étirements, verbalisation des règles d''action (quand passer long ? où se placer pour recevoir ?), rappel du fair-play.

Attitude de l''enseignant : encouragements, feedbacks positifs, différenciation pour les filles (zone protégée, ballon plus léger si besoin).

تعليل (تعليق mesconcours — طرف ثالث):

L''alternative doit corriger point par point le bilan : opposition pour donner du sens à la technique, jeux réduits et ateliers pour l''engagement moteur, règles qui obligent à passer contre le jeu individuel, mixité et climat bienveillant, et rester orientée vers l''OTC (passage rapide de la défense à l''attaque). 3 points pour la cohérence de l''ensemble.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, 'مدة 95 دقيقة «للتحقق»: بناء خاص بـmesconcours — الورقة لا تذكر مدة الحصة؛ البديل المقترح صيغة مقبولة لا الصيغة الوحيدة الصحيحة.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q6', 'exam_eps_kf_2024_college', 6, 'التقييم والتصور — نموذج تقييم تكويني', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
3-1- proposez un modèle d''évaluation formative qui répond aux besoins d''apprentissage des élèves lors de cette séance n°3 ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Évaluation formative par observation croisée (co-évaluation) pendant la situation de référence :

- Critères et indicateurs :
• Passe longue (PB) : nombre de passes longues tentées / réussies (ballon arrivé à un partenaire) ; indicateur de réussite : au moins 2 passes longues réussies sur 4 tentées.
• Contrôle dos à l''adversaire (NPB) : contrôle orienté réussi et conservation du ballon 3 secondes ; indicateur : 2 contrôles réussis sur 4.
• Jeu collectif : nombre de passes avant le tir (au moins 3) ; part des actions individuelles.
• Comportement : respect des règles et de l''adversaire (aucune faute d''agressivité).
- Outil : fiche d''observation simple remplie par un élève observateur pour un camarade (croix par action), puis auto-évaluation de l''élève.
- Exploitation : à la fin, comparaison des fiches, regroupement des élèves par besoin (passe longue, contrôle, coopération), et adaptation des situations de la séance 4 ; feedback immédiat de l''enseignant pendant le jeu.

تعليل (تعليق mesconcours — طرف ثالث):

Une évaluation formative sert à réguler, elle doit donc reposer sur des critères observables liés à l''objectif, un outil simple utilisable en cours de jeu, et une exploitation qui oriente la suite. Impliquer les élèves comme observateurs répond aussi au problème d''engagement et de responsabilisation. 2 points.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, 'العتبات العددية «للتحقق» (2 من 4، 3 ثوانٍ، 3 تمريرات): مؤشرات مقترحة من mesconcours، لا من شبكة رسمية.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2024) — Q7
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2024_college_q7', 'exam_eps_kf_2024_college', 7, 'التقييم والتصور — تصور تدريس الرياضات الجماعية', 'السياق: كرة القدم، السنة الثالثة إعدادي (47 تلميذاً: 25 فتاة و22 فتى)، قسم يغلب عليه العدوانية؛ الوحدة 2: تعبئة الموارد الفردية لتعزيز مشروع المجموعة؛ الحصة رقم 3: تمريرة طويلة لحامل الكرة ومراقبة الكرة ظهراً للخصم لغزو الفضاء؛ التقييم التكويني: 80% من التلاميذ لم يستعملوا التقنية في مباراة التطبيق (7 ضد 7)؛ OTC: المشاركة في المشروع الجماعي المبني على المرور السريع والملائم من الهجوم إلى الدفاع لكسب اللقاء.
3-2- quelle serait selon votre vécu professionnel, la meilleure conception pour enseigner les sports collectifs à ce niveau scolaire ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Une conception tactique ou par situations-problèmes, dans le cadre de l''approche par compétences :
- Partir du jeu (situation de référence) et de problèmes tactiques (conserver, progresser, conquérir l''espace, défendre) plutôt que de la technique isolée ;
- Proposer des jeux réduits et modifiés (effectifs réduits, espaces aménagés, règles favorisant le but de l''apprentissage) qui augmentent le temps d''engagement et la réussite ;
- Construire la technique comme réponse à un problème rencontré, puis la réinvestir immédiatement en match ;
- Faire verbaliser des règles d''action (temps de réflexion entre les phases de jeu) ;
- Intégrer les dimensions socio-affectives : rôles sociaux (arbitre, observateur, capitaine), mixité, respect, gestion des conflits, essentielle pour une classe agressive ;
- Évaluer de manière formative et continue par rapport à l''OTC.

Cette conception rend l''élève acteur, donne du sens aux apprentissages et favorise le transfert vers le match.

تعليل (تعليق mesconcours — طرف ثالث):

La réponse attendue oppose la conception techniciste observée à une conception centrée sur le jeu et la compréhension tactique (proche de l''approche « Teaching Games for Understanding » ou des situations-problèmes), avec des arguments liés à ce niveau et à cette classe. 2 points.

---', 'open', 'third_party', 'https://mesconcours.ma/concours/enseignement/2024-1263/', false, 'الجواب موسوم في الصفحة «Clé établie par nous» — من إعداد فريق mesconcours، لا من مفتاح رسمي.')
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
