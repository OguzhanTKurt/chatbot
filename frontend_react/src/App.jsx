import React, { useState, useEffect, useRef } from 'react';
import Sidebar from './components/Sidebar';
import ChatArea from './components/ChatArea';
import EmptyState from './components/EmptyState';
import GlobalDocumentsModal from './components/GlobalDocumentsModal';
import { API } from './services/api';

const TRANSLATIONS = {
  tr: {
    title: "AKTAP Chat — AI Sohbet Asistanı",
    defaultChatTitle: "Yeni Sohbet",
    toastDeleted: "Sohbet silindi.",
    toastDeleteFailed: "Sohbet silinemedi: ",
    toastCreatedFailed: "Sohbet oluşturulamadı: ",
    toastMessagesFailed: "Mesajlar yüklenemedi: ",
    toastError: "Hata: "
  },
  en: {
    title: "AKTAP Chat — AI Chat Assistant",
    defaultChatTitle: "New Chat",
    toastDeleted: "Chat deleted.",
    toastDeleteFailed: "Failed to delete chat: ",
    toastCreatedFailed: "Failed to create chat: ",
    toastMessagesFailed: "Failed to load messages: ",
    toastError: "Error: "
  }
};

function App() {
  const [conversations, setConversations] = useState([]);
  const [activeConversationId, setActiveConversationId] = useState(null);
  const [messages, setMessages] = useState([]);
  const [language, setLanguage] = useState(localStorage.getItem("aktap_lang") || "tr");
  const [theme, setTheme] = useState(localStorage.getItem("aktap_theme") || "dark");

  const [isSidebarCollapsed, setIsSidebarCollapsed] = useState(false);
  const [isSending, setIsSending] = useState(false);
  const [toast, setToast] = useState(null);
  const [isGlobalDocsOpen, setIsGlobalDocsOpen] = useState(false);


  useEffect(() => {
    document.title = TRANSLATIONS[language].title;
    localStorage.setItem("aktap_lang", language);
  }, [language]);

  useEffect(() => {
    document.documentElement.setAttribute('data-theme', theme);
    localStorage.setItem("aktap_theme", theme);
  }, [theme]);

  useEffect(() => {
    loadConversations();
  }, []);

  useEffect(() => {
    if (activeConversationId) {
      loadMessages(activeConversationId);
    } else {
      setMessages([]);
    }
  }, [activeConversationId]);

  const showToast = (message, type = "info") => {
    setToast({ message, type });
    setTimeout(() => setToast(null), 3000);
  };

  const loadConversations = async () => {
    try {
      const data = await API.getConversations();
      setConversations(data);
      if (data.length > 0 && !activeConversationId) {
        setActiveConversationId(data[0].id);
      }
    } catch (err) {
      console.error("Sohbetler yüklenemedi:", err);
    }
  };

  const loadMessages = async (id) => {
    try {
      const data = await API.getMessages(id);
      setMessages(data);
    } catch (err) {
      showToast(TRANSLATIONS[language].toastMessagesFailed + err.message, "error");
    }
  };

  const createConversation = async () => {
    try {
      const defaultTitle = TRANSLATIONS[language].defaultChatTitle;
      const conv = await API.createConversation(defaultTitle);
      setConversations([conv, ...conversations]);
      setActiveConversationId(conv.id);
    } catch (err) {
      showToast(TRANSLATIONS[language].toastCreatedFailed + err.message, "error");
    }
  };

  const deleteConversation = async () => {
    if (!activeConversationId) return;
    const t = TRANSLATIONS[language];
    // confirm is not ideal in React, but keeping it simple as before
    if (!window.confirm(language === 'tr' ? "Bu sohbeti silmek istediğinize emin misiniz?" : "Are you sure you want to delete this chat?")) return;

    try {
      await API.deleteConversation(activeConversationId);
      const filtered = conversations.filter((c) => c.id !== activeConversationId);
      setConversations(filtered);
      setActiveConversationId(null);
      showToast(t.toastDeleted, "success");
    } catch (err) {
      showToast(t.toastDeleteFailed + err.message, "error");
    }
  };

  const sendMessage = async (content) => {
    if (isSending || !activeConversationId) return;

    setIsSending(true);

    const now = new Date().toISOString();
    const tempUserMsg = { id: 'temp-user', role: 'user', content, created_at: now };
    const tempBotMsg = { id: 'temp-bot', role: 'assistant', content: '', created_at: now, isTyping: true };
    
    setMessages(prev => [...prev, tempUserMsg, tempBotMsg]);

    try {
      const data = await API.sendMessage(activeConversationId, content, language);
      
      setMessages(prev => {
        const withoutTemps = prev.filter(m => m.id !== 'temp-user' && m.id !== 'temp-bot');
        return [...withoutTemps, data.user_message, data.assistant_message];
      });

      // Update title if it was new chat
      const activeConv = conversations.find(c => c.id === activeConversationId);
      if (activeConv && (activeConv.title === "Yeni Sohbet" || activeConv.title === "New Chat")) {
        const updatedTitle = content.slice(0, 50) + (content.length > 50 ? "..." : "");
        setConversations(prev => prev.map(c => c.id === activeConversationId ? { ...c, title: updatedTitle } : c));
      }

    } catch (err) {
      setMessages(prev => prev.filter(m => m.id !== 'temp-bot')); // Remove typing indicator on error
      showToast(TRANSLATIONS[language].toastError + err.message, "error");
    } finally {
      setIsSending(false);
    }
  };

  const handleUploadDocument = async (file) => {
    if (!activeConversationId) return;
    try {
      const data = await API.uploadDocument(activeConversationId, file);
      showToast(data.message || (language === 'tr' ? "Belge yüklendi." : "Document uploaded."), "success");
      
      // Update conversations list so the document appears (if needed in UI)
      loadConversations();
      return data;
    } catch (err) {
      showToast(TRANSLATIONS[language].toastError + (err.response?.data?.error || err.message), "error");
      throw err;
    }
  };

  const handleDeleteDocument = async (documentId) => {
    if (!activeConversationId) return;
    try {
      await API.deleteDocument(activeConversationId, documentId);
      // Optional toast for deletion
    } catch (err) {
      showToast(TRANSLATIONS[language].toastError + (err.response?.data?.error || err.message), "error");
      throw err;
    }
  };

  const toggleSidebar = () => setIsSidebarCollapsed(!isSidebarCollapsed);

  return (
    <div className="app-shell" id="app">
      <Sidebar 
        conversations={conversations}
        activeConversationId={activeConversationId}
        onSelect={setActiveConversationId}
        onCreate={createConversation}
        language={language}
        setLanguage={setLanguage}
        theme={theme}
        setTheme={setTheme}

        isCollapsed={isSidebarCollapsed}
        onOpenGlobalDocs={() => setIsGlobalDocsOpen(true)}
      />

      <main className="chat-main" id="chat-main">
        {!activeConversationId ? (
          <EmptyState language={language} onStart={createConversation} />
        ) : (
          <ChatArea 
            conversation={conversations.find(c => c.id === activeConversationId)}
            messages={messages}
            language={language}
            onToggleSidebar={toggleSidebar}
            onDelete={deleteConversation}
            onSendMessage={sendMessage}
            isSending={isSending}
            onUploadDocument={handleUploadDocument}
            onDeleteDocument={handleDeleteDocument}
          />
        )}
      </main>

      {toast && (
        <div className={`toast ${toast.type}`}>
          {toast.message}
        </div>
      )}

      <GlobalDocumentsModal 
        isOpen={isGlobalDocsOpen} 
        onClose={() => setIsGlobalDocsOpen(false)} 
        language={language} 
      />
    </div>
  );
}

export default App;
