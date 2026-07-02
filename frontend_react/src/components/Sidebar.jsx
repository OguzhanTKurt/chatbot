import React from 'react';

const TRANSLATIONS = {
  tr: {
    newChat: "Yeni Sohbet",
    newChatTitle: "Yeni sohbet",
    noChats: "Henüz sohbet yok.",
    defaultChatTitle: "Yeni Sohbet",
  },
  en: {
    newChat: "New Chat",
    newChatTitle: "New chat",
    noChats: "No chats yet.",
    defaultChatTitle: "New Chat",
  }
};

const Sidebar = ({ conversations, activeConversationId, onSelect, onCreate, language, setLanguage, isCollapsed, theme, setTheme, onOpenGlobalDocs }) => {
  const t = TRANSLATIONS[language];

  return (
    <aside className={`sidebar ${isCollapsed ? 'collapsed' : ''}`} id="sidebar">
      <div className="sidebar-header">
        <div className="brand">
          <span className="brand-icon">✦</span>
          <span className="brand-name">AKTAP Chat</span>
        </div>
        <button className="btn-new-chat" title={t.newChatTitle} onClick={onCreate}>
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
            <line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/>
          </svg>
          <span>{t.newChat}</span>
        </button>
      </div>

      <nav className="conversations-nav">
        {conversations.length === 0 ? (
          <p className="nav-empty">{t.noChats}</p>
        ) : (
          conversations.map((conv) => {
            let displayTitle = conv.title;
            if (displayTitle === "Yeni Sohbet" || displayTitle === "New Chat") {
              displayTitle = t.defaultChatTitle;
            }

            return (
              <div 
                key={conv.id}
                className={`conv-item ${conv.id === activeConversationId ? 'active' : ''}`}
                onClick={() => onSelect(conv.id)}
                role="button"
                tabIndex="0"
                onKeyDown={(e) => { if (e.key === 'Enter') onSelect(conv.id); }}
              >
                <span className="conv-icon">💬</span>
                <span className="conv-title" title={displayTitle}>{displayTitle}</span>
              </div>
            );
          })
        )}
      </nav>

      <div className="sidebar-footer">
        <button 
          className="btn-new-chat" 
          style={{ marginBottom: '10px', backgroundColor: 'var(--bg)', border: '1px solid var(--border)', color: 'var(--text-main)' }} 
          onClick={onOpenGlobalDocs}
          title={language === 'tr' ? "Genel Bilgi Bankası" : "Global Knowledge Base"}
        >
          <span style={{marginRight: '8px'}}>📚</span>
          <span>{language === 'tr' ? "Genel Bilgi Bankası" : "Global Docs"}</span>
        </button>
        <div className="lang-switch-wrapper">
          <div className={`lang-switch ${language === 'en' ? 'en-active' : ''}`}>
            <div className="lang-switch-indicator"></div>
            <button 
              className={`lang-switch-btn ${language === 'tr' ? 'active' : ''}`} 
              onClick={() => setLanguage('tr')}
            >Türkçe</button>
            <button 
              className={`lang-switch-btn ${language === 'en' ? 'active' : ''}`} 
              onClick={() => setLanguage('en')}
            >English</button>
          </div>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginTop: '4px' }}>

          <button 
            className="btn-icon" 
            title={theme === 'dark' ? (language === 'tr' ? "Açık Tema" : "Light Mode") : (language === 'tr' ? "Koyu Tema" : "Dark Mode")}
            onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
          >
            {theme === 'dark' ? '☀️' : '🌙'}
          </button>
        </div>
      </div>
    </aside>
  );
};

export default Sidebar;
