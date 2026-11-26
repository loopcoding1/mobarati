-- ====================================================================
-- مباراتي — امتحان ابتدائي: علوم التربية، دورة أكتوبر 2024 — الأسئلة Q111–Q115
-- ====================================================================
-- المصدر: ملف الحل solved/2024/علوم التربية - دورة أكتوبر 2024.md
--   (الأسئلة Q111–Q115: نصوصها وخياراتها وأجوبتها وتعليلاتها منقولة
--    حرفياً من صفحة mesconcours.ma، أسئلة الموقع 11–15.)
--   رابط صفحة التصحيح: https://mesconcours.ma/ar/concours/enseignement/2024-1002/
--   (فُتحت الصفحة مباشرة وتحققت نصوص الأسئلة 11–15 وخياراتها وأجوبتها
--    حرفياً مقابل ملف الحل بتاريخ 2026-11-25 — لا اختلاف: الأجوبة
--    D / A / A / A / B بالترتيب Q111..Q115.)
--
-- ⚠ حالة التحقق — مهم: صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115)
--   مفقودة من ملف الـPDF exams-ibtida2i/2024/علوم التربية.pdf، لذلك لم
--   تُتحقق هذه الأسئلة الخمسة مقابل ورقة الامتحان الأصلية. مصدرها الوحيد
--   صفحة mesconcours.ma (حل من إعداد الموقع، وليس تصحيحا رسميا). لذلك:
--   verified=false لكل سؤال، مع verification_note بالعربية يبين ذلك.
--   تحفظ الموقع (⚠) على Q112 مذكور في verification_note الخاص به.
--   لا تُستعمل صفحة PDF 6 من الملف (دورة فبراير 2024) إطلاقا.
--
-- تسمية المعرفات (نفس اتفاقية الملف التجريبي):
--   exam_primary_<year>_<subject>_<session>  مثال: exam_primary_2024_sciences_edu_oct
--   <exam_id>_q<n>  للأسئلة، مع الحفاظ على ترقيم الدفتر Q101–Q125 (لا إعادة ترقيم).
--   ترقيم الموقع 1–25 يقابل ترقيم الدفتر Q101–Q125.
-- ====================================================================

-- إدراج الأسئلة الخمسة المستثناة سابقاً (Q111–Q115)، QCM بخمسة خيارات A-E

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q111
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q111', 'exam_primary_2024_sciences_edu_oct', 111, 'النظرية السوسيوبنائية — الصراع السوسيومعرفي', 'يتحقق التعلم، حسب النظرية السوسيوبنائية، من خلال الصراع:', false, '[{"id": "A", "text": "السوسيوبنائي"}, {"id": "B", "text": "البنائي"}, {"id": "C", "text": "المعرفي"}, {"id": "D", "text": "السوسيومعرفي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['D']::text[], 'يرى دواز وموني وبيري كليرمون، امتدادا لبياجي وفيكوتسكي، أن التعلم يتقدم حين تتعارض تمثلات المتعلمين في أثناء التفاعل فيعيد كل منهم بناء معرفته. هذا ما يسمى الصراع السوسيومعرفي (conflit sociocognitif). أما الصراع المعرفي فهو الاختلال الداخلي عند بياجي، ولا وجود لمصطلح "صراع سوسيوبنائي".', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', false, 'الأجوبة من صفحة mesconcours.ma وحدها؛ صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115) مفقودة من ملف الـPDF، فلم يُتحقق هذا السؤال مقابل ورقة الامتحان الأصلية.')
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

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q112
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q112', 'exam_primary_2024_sciences_edu_oct', 112, 'التعلم التعاوني — حل المشكل', 'الهدف النهائي من اعتماد طريقة التعلم التعاوني لحل مشكل هو الوصول إلى حل:', false, '[{"id": "A", "text": "جماعي"}, {"id": "B", "text": "فردي"}, {"id": "C", "text": "توافقي"}, {"id": "D", "text": "ثنائي"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'يقوم التعلم التعاوني على اشتغال مجموعة صغيرة متضامنة نحو هدف مشترك، مع مسؤولية فردية لكل عضو. والمنتظر في نهاية حل المشكل منتوج جماعي تتبناه المجموعة كلها، لا حل فردي ولا ثنائي. يقترب "التوافقي" من هذا المعنى لأن الحل الجماعي يبنى بالتفاوض، لذلك يبقى بعض الالتباس بين A وC، والأرجح A لأنه الصيغة المتداولة في أدبيات التعلم التعاوني.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', false, 'الأجوبة من صفحة mesconcours.ma وحدها؛ صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115) مفقودة من ملف الـPDF، فلم يُتحقق هذا السؤال مقابل ورقة الامتحان الأصلية. تحفظ الموقع (⚠): التباس بين A «جماعي» وC «توافقي»، والأرجح A لأنه الصيغة المتداولة في أدبيات التعلم التعاوني.')
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

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q113
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q113', 'exam_primary_2024_sciences_edu_oct', 113, 'النظرية البنائية — نقد السلوكية', 'ينتقد البنائيون المدرسة السلوكية في منحها أهمية كبيرة:', false, '[{"id": "A", "text": "للمثير الخارجي للتعلم"}, {"id": "B", "text": "للتفاعل أثناء التعلم"}, {"id": "C", "text": "للدافع الداخلي للتعلم"}, {"id": "D", "text": "لعملية بناء التعلمات"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'تفسر السلوكية التعلم بالعلاقة بين مثير خارجي واستجابة يدعمها التعزيز، وتهمل ما يجري داخل ذهن المتعلم. ويعيب عليها البنائيون هذا التركيز على المثير الخارجي، لأن المعرفة عندهم يبنيها المتعلم بنشاطه الذاتي. أما التفاعل والدافع الداخلي وعملية البناء فهي ما يعلي البنائيون من شأنه أصلا.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', false, 'الأجوبة من صفحة mesconcours.ma وحدها؛ صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115) مفقودة من ملف الـPDF، فلم يُتحقق هذا السؤال مقابل ورقة الامتحان الأصلية.')
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

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q114
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q114', 'exam_primary_2024_sciences_edu_oct', 114, 'فيكوتسكي — منطقة النمو القريبة', 'لاحظ مدرّس أن مجموعة من المتعلمين يجدون صعوبة في عمليتي الجمع والطرح. بالاعتماد على نظرية فيكوتسكي، ما النشاط الذي يمكن لهذا المدرس أن يقترحه على هؤلاء المتعلمين لتجاوز هذه الصعوبة؟', false, '[{"id": "A", "text": "نشاط قريب من منطقة نموهم مع مساعدتهم"}, {"id": "B", "text": "نشاط قريب من منطقة نموهم دون مساعدتهم"}, {"id": "C", "text": "نشاط يتجاوز منطقة نموهم مع مساعدتهم"}, {"id": "D", "text": "نشاط يتجاوز منطقة نموهم دون مساعدتهم"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['A']::text[], 'منطقة النمو القريبة عند فيكوتسكي هي المسافة بين ما ينجزه المتعلم وحده وما ينجزه بمساعدة راشد أو قرين أكفأ. التعلم الفعال يقع داخل هذه المنطقة وبمساعدة (السقالات)، ثم تسحب المساعدة تدريجيا. النشاط بدون مساعدة يبقى في مستوى ما يتقنه المتعلم أصلا، والنشاط الذي يتجاوز المنطقة يفوق قدرته حتى مع المساعدة.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', false, 'الأجوبة من صفحة mesconcours.ma وحدها؛ صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115) مفقودة من ملف الـPDF، فلم يُتحقق هذا السؤال مقابل ورقة الامتحان الأصلية.')
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

-- أسئلة امتحان: علوم التربية (دورة أكتوبر 2024) — Q115
INSERT INTO public.questions (id, exam_id, number, category, text, is_multiple, options, correct_answers, explanation, question_type, source_type, source_url, verified, verification_note)
VALUES ('exam_primary_2024_sciences_edu_oct_q115', 'exam_primary_2024_sciences_edu_oct', 115, 'المنهاج المنقح — المرتكزات الاستراتيجية', 'يشير المنهاج المنقح للتعليم الابتدائي إلى أن النظام التربوي المغربي يقوم على مجموعة من المرتكزات، ترتبط بمجالين مختلفين. أي المبادئ الآتية يرتبط بالمجال الاستراتيجي؟', false, '[{"id": "A", "text": "الهوية الوطنية المحددة بانصهار مكوناتها"}, {"id": "B", "text": "تعميم تعليم ذي جودة ودامج ومنصف"}, {"id": "C", "text": "احترام حرية الفكر والإبداع"}, {"id": "D", "text": "إعادة تأهيل المؤسسات التعليمية"}, {"id": "E", "text": "جميع الاختيارات المقترحة خاطئة"}]'::jsonb, ARRAY['B']::text[], 'يميز المنهاج المنقح بين مرتكزات ثابتة (الهوية الوطنية بمكوناتها المنصهرة، الثوابت الدستورية، القيم ومنها حرية الفكر والإبداع) ومرتكزات استراتيجية مستمدة من الرؤية الاستراتيجية 2015-2030 والقانون الإطار 51.17، وفي مقدمتها مدرسة الإنصاف وتكافؤ الفرص والجودة والارتقاء. وتعميم تعليم ذي جودة ودامج ومنصف هو صياغة هذا الاختيار الاستراتيجي، أما تأهيل المؤسسات فإجراء تنفيذي لا مبدأ.', 'qcm', 'third_party', 'https://mesconcours.ma/ar/concours/enseignement/2024-1002/', false, 'الأجوبة من صفحة mesconcours.ma وحدها؛ صفحة الدفتر 4/6 لدورة أكتوبر 2024 (Q111–Q115) مفقودة من ملف الـPDF، فلم يُتحقق هذا السؤال مقابل ورقة الامتحان الأصلية.')
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

-- تحديث عدد أسئلة الامتحان: كان 20 في الملف الأصلي، وأصبح 25 بعد إضافة Q111–Q115
UPDATE public.exams SET questions_count = 25 WHERE id = 'exam_primary_2024_sciences_edu_oct';
