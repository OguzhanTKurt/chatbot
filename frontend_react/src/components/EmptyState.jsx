import React from 'react';

const TRANSLATIONS = {
  tr: {
    welcomeTitle: "AKTAP'a Hoş Geldiniz",
    welcomeSubtitle: "Sizin için optimize edilmiş akıllı mühendislik asistanı.<br/>Modül detayları, lisans durumları ve parça boyutları hakkında sormaya başlayın.",
    startChat: "Sohbete Başla",
  },
  en: {
    welcomeTitle: "Welcome to AKTAP",
    welcomeSubtitle: "Your optimized intelligent engineering assistant.<br/>Ask about module details, license statuses, and part dimensions.",
    startChat: "Start Chat",
  }
};

const EmptyState = ({ language, onStart }) => {
  const t = TRANSLATIONS[language];

  return (
    <div className="empty-state">
      <div className="empty-logo">AKTAP</div>
      <div className="empty-icon" style={{ animation: 'float 4s ease-in-out infinite' }}>
        <svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" style={{ filter: 'drop-shadow(0 0 20px rgba(var(--accent-rgb), 0.4))' }}>
          <path d="M9.937 15.5A2 2 0 0 0 8.5 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582 6.135a.5.5 0 0 1-.963 0z" />
        </svg>
      </div>
      <h1 className="empty-title">{t.welcomeTitle}</h1>
      <p className="empty-subtitle" dangerouslySetInnerHTML={{ __html: t.welcomeSubtitle }}></p>
      <button className="btn-start" onClick={onStart}>
        <span>{t.startChat}</span>
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
          <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
        </svg>
      </button>
    </div>
  );
};

export default EmptyState;
