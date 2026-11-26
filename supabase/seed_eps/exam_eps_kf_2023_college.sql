-- ====================================================================
-- مباراتي — امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024)
-- ====================================================================
-- المصدر: ملف الحل solved/2023/ديداكتيك التربية البدنية - الكفاءة المهنية - الإعدادي - دورة 2023.md
--   صفحة mesconcours: https://mesconcours.ma/concours/enseignement/2023-1219/
--   الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يكن ملف PDF رسمي لعناصر الإجابة متاحاً فاعتُمدت نسخة mesconcours للعناصر الرسمية؛ تعليقات «Explication» طرف ثالث ولا تُحتسب ضمن العناصر الرسمية. لم يُستعمل AI Studio.
--   كل الأسئلة مفتوحة (أسئلة مكتوبة) — options فارغة وcorrect_answers فارغة،
--   والجواب الكامل منقول في explanation. لم يُستعمل AI Studio لهذا الامتحان.
--   الأسئلة: 6 سؤالاً مفتوحاً؛ منها 6 verified=true (مصدر official)؛
--   4 سؤالاً تحمل verification_note (منها أعلام «للتحقق» / تحفظات من ملف الحل).
--   مولَّد آلياً من ملف الحل (parse) — لم يُنسخ نص أي سؤال أو جواب يدوياً.
--   لا pdf_url في هذا الملف (خطوة منفصلة).
-- ====================================================================

-- 1. إدراج الامتحان
INSERT INTO public.exams (id, specialty_id, year, subject_type, subject_title, title, session, duration_minutes, questions_count, verification_note)
VALUES ('exam_eps_kf_2023_college', 'eps_college', 2023, 'eps_aptitude', 'الكفاءة المهنية — ديداكتيك التربية البدنية', 'امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024)', 'دورة 2023 (يوليوز 2024)', 180, 6, 'الأجوبة من عناصر الإجابة الرسمية (CNEE) كما تعيد نشرها mesconcours.ma؛ لم يكن ملف PDF رسمي لعناصر الإجابة متاحاً فاعتُمدت نسخة mesconcours للعناصر الرسمية؛ تعليقات «Explication» طرف ثالث ولا تُحتسب ضمن العناصر الرسمية. لم يُستعمل AI Studio.')
ON CONFLICT (id) DO UPDATE SET 
    title = EXCLUDED.title,
    questions_count = EXCLUDED.questions_count,
    verification_note = EXCLUDED.verification_note;

-- 2. إدراج الأسئلة (6 سؤالاً مفتوحاً)

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q1
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q1', 'exam_eps_kf_2023_college', 1, 'تحليل اختبار الملاحظة (كرة السلة)', 'السياق: تقييم أولي (test d’observation) في كرة السلة مع قسم السنة الثانية إعدادي (35 تلميذاً، منهم 14 فتاة)؛ 4 ملفات سلوكية (P1–P4) حسب 4 معايير: المهارة، رؤية اللعب، اللعب في الدفاع، الفعل بعد تمرير الكرة.
1-1- Faites une analyse interprétation des résultats du test d''observation ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Le candidat devra signaler avant tout que les informations obtenues indiquent qu''il s''agit en général de deux grandes catégories de niveaux : l''une témoigne d''un niveau débutant en basketball avec la manifestation de différents profils de comportements tels que : la passivité, les déplacements aléatoires, l''agressivité, l''immobilité et l''attente du ballon ou tout au contraire, la crainte de la réception du ballon ; l''autre témoigne d''un niveau débrouillard possédant des qualités physiques et techniques lui permettant de se déplacer d''une manière appropriée et de manipuler le ballon correctement.

En effet, seuls 9 élèves sur 35 (P1) possèdent une assez bonne gestualité technique lors de la réception du ballon et une vision relativement globale, leur permettant de se déplacer d''une manière appropriée lors des actions offensives. Ceci peut être lié à un vécu antérieur limité en basketball pour ces élèves.

Cependant, le problème majeur pour tous les élèves des différents groupes réside au niveau du jeu en défense (la passivité et la non-recherche de la conquête du ballon, avec peu d''actions défensives ; ainsi que l''existence de comportements agressifs envers le porteur de balle). Nous pouvons lier ceci aux aspects psychologiques de l''enfant ou du pubère qui n''est concerné par le jeu que lorsqu''il possède le ballon.

- 10 élèves sur 35 (P2) se déplacent d''une manière non significative et non comme participants réels au jeu. Ce comportement est dû principalement à la crainte de la réception de la balle mais aussi à une vision limitée des actions du jeu.
- 8 élèves sur 35 (P3) possèdent des qualités physiques et techniques convenables (rapidité et adresse, dribble et manipulation de la balle), mais des actions souvent tardives lors des passes.
- 8 élèves sur 35 (P4) sont le plus souvent fixes (joueurs spectateurs), en zone adverse en attente du ballon pour aller marquer le point pour eux-mêmes et non pour l''équipe.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

Une analyse-interprétation ne se contente pas de recopier le tableau : elle regroupe les profils en niveaux (débutants P2 et P4, débrouillards P1 et P3), repère le problème commun à toute la classe (la défense, passive ou individualiste) et l''explique par la psychologie de l''élève de cet âge, qui ne se sent concerné que lorsqu''il a le ballon. Les effectifs (9, 10, 8, 8 sur 35) servent à mesurer le poids de chaque difficulté.

---', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, 'إسناد P2 وP4 إلى المبتدئين وP1 وP3 إلى المتدبّرين يرد في تعليق mesconcours فقط (طرف ثالث)، لا في نص العناصر الرسمية.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q2
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q2', 'exam_eps_kf_2023_college', 2, 'السلوك الغالب لكل ملف', '1-2- À partir des données relevées dans chaque critère, décrivez le comportement dominant pour chaque profil de comportement ? (2 points)', false, '[]'::jsonb, ARRAY[]::text[], '- Pour le P1 : l''élève se déplace d''une manière appropriée avec ou sans ballon en fonction du trajet de ce dernier avec une dominance de passes occasionnelles et sans souci de chercher à récupérer la balle lors de sa perte.
- Pour le P2 : l''élève se déplace beaucoup mais ses déplacements sont non significatifs (joueur perdu). Il ne participe pas aux actions du jeu offensif ni défensif.
- Pour le P3 : l''élève possède des aptitudes physiques et techniques convenables (rapidité, adresse, manipulation correcte de la balle), mais souvent des passes tardives aux partenaires.
- Pour le P4 : l''élève se déplace et reste fixe dans la zone adverse (spectateur), en attente de la réception du ballon pour aller marquer le point pour lui-même sans chercher à le récupérer une fois perdu.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

Il s''agit de résumer chaque ligne du tableau en un comportement dominant, en croisant les quatre critères : P1 joue juste en attaque mais ne défend pas, P2 est un joueur perdu, P3 est un bon manieur de balle individualiste, P4 est un joueur spectateur qui attend la balle. Une phrase précise par profil suffit, soit environ 0,5 point par profil.

---', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q3
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q3', 'exam_eps_kf_2023_college', 3, 'المقاربة البيداغوجية', '2-1- Quelle approche pédagogique proposeriez-vous pour remédier aux problèmes observés ? Justifier vos propos. (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'Le candidat devra signaler tout d''abord l''existence d''une hétérogénéité au niveau des habiletés et prestations des élèves qui doivent être prises en compte dans la démarche pédagogique appropriée. D''où la nécessité d''opter pour la pédagogie différenciée.

De ce fait, l''approche pédagogique de l''enseignant et son action didactique chercheront à :

- proposer et élaborer un objectif commun du cycle, des objectifs de séquences et de séances pour toute la classe. Cependant, il cherchera aussi à multiplier et varier les procédures selon les itinéraires d''apprentissage en fonction des différences existantes entre les élèves ;
- différencier les contenus d''enseignement-apprentissage ;
- différencier une même situation pédagogique tout en diversifiant les contraintes, les exigences, les consignes et les critères de réussite ;
- différencier les formes de travail didactique dans l''espace et dans le temps, en supériorité ou infériorité numérique...

En partant donc des caractéristiques des élèves de cette classe, le candidat doit affirmer que la pédagogie différenciée en EPS pourra répondre d''une façon systématique aux capacités spontanées et aux aspirations des apprenants et chercher à les orienter le plus loin possible vers l''atteinte d''objectifs valables pour tous.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

La justification part du constat de la question 1 : quatre profils hétérogènes dans une même classe. La pédagogie différenciée garde un objectif commun pour tous mais fait varier les chemins : contenus, contraintes, consignes, critères de réussite, espaces, effectifs (supériorité ou infériorité numérique). Nommer l''approche sans la relier aux profils observés ne suffit pas pour obtenir les 3 points.

---', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, NULL)
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q4
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q4', 'exam_eps_kf_2023_college', 4, 'مشروع الدورة (المحاور والوضعيات)', '2-2- Déterminez les grands axes de votre projet prévisionnel tout en précisant le type de situations à proposer ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'À partir des données recueillies, le candidat devra élaborer un projet de cycle prenant en compte la différenciation des niveaux de comportements des élèves, qui pourra aller vers une diversification des formes du travail didactique proposées aux apprenants.

Ainsi, le candidat devra faire appel aux OP 2009 qui stipulent qu''en sports collectifs de démarquage tels que le basketball et avec des élèves de 2ème collège, on cherche comme OTC : « l''élève de la 2ème année collège doit pouvoir gagner la rencontre par la réalisation des déplacements variés pour une progression avec la balle et un changement de rôle en fonction des situations ».

Dans ce sens, le candidat devra se focaliser sur le niveau des conduites motrices des élèves de cette classe pour les introduire dans son projet de cycle tout en prenant en considération les données des OP 2009 : « La progression collective et organisée vers le camp adverse à travers la recherche des espaces libres et des placements-déplacements adéquats en vue de gagner la rencontre. »

Le candidat devra signaler ensuite que la mise en œuvre de la pédagogie différenciée reste importante et nécessite la proposition de situations d''apprentissage différenciées ; ainsi donc l''enseignant pourra faire appel à un type de situations sous forme de passe à 10 variées et orientées, avec différenciation des consignes, des espaces et des effectifs, selon les caractéristiques de chaque groupe de profil : passe à 10 à égalité numérique / passe à 10 avec supériorité numérique / passe à 10 avec partenaires dans des zones différentes.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

Le projet de cycle s''appuie sur les orientations pédagogiques de 2009 : l''objectif terminal du cycle en sports collectifs pour la 2ème année collège porte sur la progression collective vers le camp adverse, les déplacements variés et le changement de rôle attaquant-défenseur. Les situations sont des passes à 10 dont on fait varier l''effectif, l''espace et les consignes selon le profil. Le corrigé parle de « projet de cycle » là où le sujet dit « projet prévisionnel » : c''est la même chose ici.

---', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, 'الورقة تقول «projet prévisionnel» بينما العناصر الرسمية تتحدث عن «projet de cycle»؛ هما الشيء نفسه هنا.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q5
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q5', 'exam_eps_kf_2023_college', 5, 'وضعية تعلم (الملف 4)', '3-1- Proposez une situation pédagogique d''apprentissage pour le groupe du profil 4 ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'La situation proposée devra prendre en considération les données observées chez le groupe du profil 4 : l''élève appartenant à ce groupe se déplace dans la zone adverse, mais en tant que spectateur en attente du ballon pour aller marquer le point pour lui-même et non comme participant actif dans le projet collectif de l''équipe.

La situation doit répondre aussi aux normes stipulées par les OP 2009 : description de la tâche (qui fait quoi ? en combien de temps ? et dans quel espace ?), schématisation, consignes, critères de réalisation, critères de réussite...

- Objectif : l''élève doit être capable de participer au projet collectif de l''équipe pour réaliser un point.
- Exemple de situation : situation de passe à 10 de 5 contre 5 dans un 1/2 terrain ou de 3 contre 3 sur 1/4 de terrain, avec comme consigne : pas de passe à celui de qui on reçoit la balle.
- Exemple de critères de réussite : pour marquer un point, les partenaires doivent effectuer 6 passes successives. Variables : 7 passes / 8 passes / 10 passes successives.
- Exemple de critères de réalisation : créer et occuper l''espace libre / donner et recevoir la balle en mouvement.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

Le profil 4 attend le ballon immobile dans le camp adverse. La situation doit donc obliger à se déplacer pour recevoir : la passe à 10 sans retour au passeur interdit de rester fixe et rend chaque joueur nécessaire au point collectif. Le corrigé exige la forme complète d''une situation selon les OP 2009 : objectif, but et organisation, consigne, critères de réalisation, critères de réussite et variables.

---', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, 'الوضعية المقترحة مثالٌ مقبول وليست الصيغة الوحيدة الصحيحة؛ المطلوب أن تحترم أي وضعية مقترحة معايير OP 2009 الشكلية وأن تعالج سلوك الملف 4.')
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

-- أسئلة امتحان: امتحان الكفاءة المهنية — ديداكتيك التربية البدنية والرياضية — الإعدادي (دورة 2023، أُجريت في يوليوز 2024) — Q6
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_eps_kf_2023_college_q6', 'exam_eps_kf_2023_college', 6, 'شبكة التقييم التكويني', '3-2- Élaborez une grille d''évaluation formative pour le même groupe ? (3 points)', false, '[]'::jsonb, ARRAY[]::text[], 'La grille proposée doit être en étroite relation avec les données de la situation d''apprentissage.

Exemple de grille (une ligne par élève, nom et numéro ; on coche le niveau observé) :

- Critère 1 : souvent immobile et ne se déplace que rarement ;
- Critère 2 : se déplace mais inutile et ne reçoit pas beaucoup de balles ;
- Critère 3 : se déplace souvent, utile, reçoit et passe la balle correctement.

تعليل (تعليق mesconcours — طرف ثالث، ليس من العناصر الرسمية):

Une grille formative sert à situer chaque élève pendant l''apprentissage, pas à le noter. Ses niveaux reprennent le critère de réalisation travaillé dans la situation 3-1 (se déplacer pour recevoir et passer) et décrivent une progression observable, de l''élève immobile à l''élève utile au jeu collectif. Une grille sans lien avec la situation proposée perd l''essentiel des 3 points.', 'open', 'official', 'https://mesconcours.ma/concours/enseignement/2023-1219/', true, 'البنود الثلاثة في الشبكة هي في الواقع ثلاثة مستويات متدرجة لمعيار واحد (التنقل المفيد لاستقبال الكرة وتمريرها)، لا ثلاثة معايير مستقلة.')
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
