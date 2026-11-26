import React, { useState, useEffect } from 'react';
import Header from './components/Header';
import ExamSetupSteps from './components/ExamSetupSteps';
import ExamView from './components/ExamView';
import ResultView from './components/ResultView';
import { loadCatalog } from './data/catalog';
import { sound } from './utils/sound';

export default function App() {
  const [currentTab, setCurrentTab] = useState('setup'); // 'setup' | 'exam' | 'result'

  // Catalog (specialties + exams): Supabase first, local data as fallback
  const [catalog, setCatalog] = useState(null); // { specialties, exams, source }
  const allExams = catalog?.exams || [];
  const allSpecialties = catalog?.specialties || [];
  const totalQuestions = allExams.reduce((s, e) => s + (e.questions?.length || 0), 0);

  // Active exam state & options
  const [activeExam, setActiveExam] = useState(null);
  const [activeQuestions, setActiveQuestions] = useState([]);
  const [explanationMode, setExplanationMode] = useState('instant'); // 'instant' | 'end'
  const [timerEnabled, setTimerEnabled] = useState(true);

  useEffect(() => {
    let cancelled = false;
    loadCatalog().then(({ specialties, exams, source }) => {
      if (cancelled) return;
      setCatalog({ specialties, exams, source });
      if (exams[0]) {
        setActiveExam(exams[0]);
        setActiveQuestions(exams[0].questions || []);
      }
    });
    return () => { cancelled = true; };
  }, []);

  // Sound effects preference
  const [soundEnabled, setSoundEnabled] = useState(() => {
    try {
      return localStorage.getItem('mobarati_sound') !== 'false';
    } catch {
      return true;
    }
  });

  const [activeResult, setActiveResult] = useState(null);

  useEffect(() => {
    try {
      localStorage.setItem('mobarati_sound', soundEnabled.toString());
      sound.enabled = soundEnabled;
    } catch {}
  }, [soundEnabled]);

  const handleToggleSound = () => {
    const next = !soundEnabled;
    setSoundEnabled(next);
    sound.enabled = next;
  };

  // Helper shuffle
  const shuffleArray = (array) => {
    const copy = [...array];
    for (let i = copy.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [copy[i], copy[j]] = [copy[j], copy[i]];
    }
    return copy;
  };

  // Start exam from Steps
  const handleStartExam = (config) => {
    setActiveExam(config.exam);
    setExplanationMode(config.explanationMode);
    setTimerEnabled(config.timerEnabled);

    let questions = config.exam.questions;
    if (config.orderMode === 'random') {
      questions = shuffleArray(questions);
    }
    setActiveQuestions(questions);
    setCurrentTab('exam');
  };

  // Finish exam handler
  const handleFinishExam = (result) => {
    setActiveResult(result);
    setCurrentTab('result');
  };

  // Retake all questions
  const handleRetakeAll = () => {
    setActiveQuestions(activeExam.questions);
    setCurrentTab('exam');
  };

  // Retake mistakes only
  const handleRetakeMistakes = (result) => {
    const mistakes = result.questions.filter(q => {
      const userChoice = result.answers[q.id];
      if (!userChoice || userChoice.length === 0) return true;
      if (q.questionType === 'open') return userChoice[0] !== '__correct';
      if (userChoice.length !== q.correctAnswers.length) return true;
      return !q.correctAnswers.every(ans => userChoice.includes(ans));
    });
    setActiveQuestions(mistakes);
    setCurrentTab('exam');
  };

  // Loading state while the catalog loads (Supabase, or local fallback)
  if (!catalog) {
    return (
      <div className="min-h-screen bg-[#F5F6F0] flex items-center justify-center text-[#191A15]" dir="rtl">
        <div className="text-center space-y-3">
          <div className="text-2xl font-black">منصة «مباراتي»</div>
          <p className="text-sm text-[#73786D]">جارٍ تحميل الامتحانات...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-[#F5F6F0] flex flex-col text-[#191A15]" dir="rtl">
      
      {/* Top Header - visible outside active exam */}
      {currentTab !== 'exam' && (
        <Header
          soundEnabled={soundEnabled}
          onToggleSound={handleToggleSound}
          totalExams={allExams.length}
          totalQuestions={totalQuestions}
        />
      )}

      {/* Main Content Area */}
      <main className="flex-1">
        {currentTab === 'setup' && (
          <ExamSetupSteps
            allExams={allExams}
            specialties={allSpecialties}
            onStartExam={handleStartExam}
          />
        )}

        {currentTab === 'exam' && (
          <ExamView
            exam={activeExam}
            questions={activeQuestions}
            explanationMode={explanationMode}
            timerEnabled={timerEnabled}
            onFinishExam={handleFinishExam}
            onExit={() => setCurrentTab('setup')}
          />
        )}

        {currentTab === 'result' && activeResult && (
          <ResultView
            result={activeResult}
            onRetakeAll={handleRetakeAll}
            onRetakeMistakes={handleRetakeMistakes}
            onGoHome={() => setCurrentTab('setup')}
          />
        )}
      </main>

      {/* Simple Footer */}
      {currentTab !== 'exam' && (
        <footer className="border-t border-[#E6E8DE] bg-white py-4 text-center text-xs text-[#73786D]">
          منصة «مباراتي» • التحضير لمباريات المراكز الجهوية لمهن التربية والتكوين CRMEF بالمغرب
        </footer>
      )}

    </div>
  );
}
