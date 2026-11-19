import React, { useState, useEffect } from 'react';
import Header from './components/Header';
import ExamSetupSteps from './components/ExamSetupSteps';
import ExamView from './components/ExamView';
import ResultView from './components/ResultView';
import { EXAMS } from './data/examsData';
import { sound } from './utils/sound';

export default function App() {
  const [currentTab, setCurrentTab] = useState('setup'); // 'setup' | 'exam' | 'result'

  // Available Exams (official verified exams only)
  const allExams = EXAMS;

  // Active exam state & options
  const [activeExam, setActiveExam] = useState(allExams[0]);
  const [activeQuestions, setActiveQuestions] = useState(allExams[0]?.questions || []);
  const [explanationMode, setExplanationMode] = useState('instant'); // 'instant' | 'end'
  const [timerEnabled, setTimerEnabled] = useState(true);

  // Sound effects preference
  const [soundEnabled, setSoundEnabled] = useState(() => {
    try {
      return localStorage.getItem('itqan_sound') !== 'false';
    } catch {
      return true;
    }
  });

  const [activeResult, setActiveResult] = useState(null);

  useEffect(() => {
    try {
      localStorage.setItem('itqan_sound', soundEnabled.toString());
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
      if (userChoice.length !== q.correctAnswers.length) return true;
      return !q.correctAnswers.every(ans => userChoice.includes(ans));
    });
    setActiveQuestions(mistakes);
    setCurrentTab('exam');
  };

  return (
    <div className="min-h-screen bg-[#F5F6F0] flex flex-col text-[#191A15]" dir="rtl">
      
      {/* Top Header - visible outside active exam */}
      {currentTab !== 'exam' && (
        <Header
          soundEnabled={soundEnabled}
          onToggleSound={handleToggleSound}
        />
      )}

      {/* Main Content Area */}
      <main className="flex-1">
        {currentTab === 'setup' && (
          <ExamSetupSteps
            allExams={allExams}
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
          منصة «إتقان» • التحضير لمباريات المراكز الجهوية لمهن التربية والتكوين CRMEF بالمغرب
        </footer>
      )}

    </div>
  );
}
