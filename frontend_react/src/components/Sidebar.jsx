import React, { useState } from 'react';
import SlideToConfirm from './SlideToConfirm';

const TRANSLATIONS = {
  tr: {
    newChat: "Yeni Sohbet",
    newChatTitle: "Yeni sohbet",
    noChats: "Henüz sohbet yok.",
    defaultChatTitle: "Yeni Sohbet",
    clearAll: "Hepsini Sil",
    clearedAll: "Silindi"
  },
  en: {
    newChat: "New Chat",
    newChatTitle: "New chat",
    noChats: "No chats yet.",
    defaultChatTitle: "New Chat",
    clearAll: "Clear All",
    clearedAll: "Cleared"
  }
};

const Sidebar = ({ conversations, activeConversationId, onSelect, onCreate, onClearAll, language, setLanguage, isCollapsed, theme, setTheme, onOpenGlobalDocs }) => {
  const t = TRANSLATIONS[language];
  const [showClearModal, setShowClearModal] = useState(false);

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
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginTop: '4px', gap: '8px' }}>
          {conversations.length > 0 && (
            <button 
              className="btn-clear-all" 
              onClick={() => setShowClearModal(true)}
              style={{ flex: 1, padding: '8px', background: 'var(--surface)', border: '1px solid var(--border)', borderRadius: '8px', color: 'var(--text)', cursor: 'pointer', fontSize: '0.85rem' }}
            >
              Sohbet Geçmişini Temizle
            </button>
          )}
          <button 
            className="btn-icon" 
            title={theme === 'dark' ? (language === 'tr' ? "Açık Tema" : "Light Mode") : (language === 'tr' ? "Koyu Tema" : "Dark Mode")}
            onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
          >
            {theme === 'dark' ? '☀️' : '🌙'}
          </button>
        </div>
      </div>

      {showClearModal && (
        <div className="modal-overlay" onClick={() => setShowClearModal(false)} style={{ position: 'fixed', top: 0, left: 0, right: 0, bottom: 0, backgroundColor: 'rgba(0,0,0,0.5)', display: 'flex', alignItems: 'center', justifyContent: 'center', zIndex: 9999 }}>
          <div className="modal-content" onClick={e => e.stopPropagation()} style={{ padding: '24px', background: 'var(--bg-color)', borderRadius: '12px', border: '1px solid var(--border)', minWidth: '300px' }}>
            <h3 style={{ marginBottom: '16px', color: 'var(--text)', textAlign: 'center', fontSize: '1rem' }}>Sohbet Geçmişinizi Temizlemek İçin Kaydırın</h3>
            <SlideToConfirm 
              onConfirm={() => {
                 onClearAll();
                 setShowClearModal(false);
              }} 
              text="Kaydırın" 
              successText="Temizlendi" 
            />
          </div>
        </div>
      )}
    </aside>
  );
};

export default Sidebar;
