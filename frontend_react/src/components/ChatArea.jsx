import React, { useState, useRef, useEffect } from 'react';
import MessageBubble from './MessageBubble';

const TRANSLATIONS = {
  tr: {
    toggleSidebar: "Kenar çubuğunu aç/kapat",
    deleteConv: "Sohbeti sil",
    inputPlaceholder: "Bir şeyler yazın... (Enter ile gönderin)",
    sendTitle: "Gönder",
    attachTitle: "Belge Ekle (PDF, Excel, Word, TXT)",
    inputHint: "Enter ile gönder · Shift+Enter yeni satır",
    defaultChatTitle: "Yeni Sohbet",
    uploading: "Yükleniyor...",
  },
  en: {
    toggleSidebar: "Toggle sidebar",
    deleteConv: "Delete chat",
    inputPlaceholder: "Type something... (Press Enter to send)",
    sendTitle: "Send",
    attachTitle: "Attach Document (PDF, Excel, Word, TXT)",
    inputHint: "Press Enter to send · Shift+Enter for new line",
    defaultChatTitle: "New Chat",
    uploading: "Uploading...",
  }
};

const ChatArea = ({ conversation, messages, language, onToggleSidebar, onDelete, onSendMessage, isSending, onUploadDocument, onDeleteDocument }) => {
  const [inputValue, setInputValue] = useState('');
  const [isUploading, setIsUploading] = useState(false);
  const [attachedFiles, setAttachedFiles] = useState([]);
  const messagesEndRef = useRef(null);
  const textareaRef = useRef(null);
  const fileInputRef = useRef(null);
  
  const t = TRANSLATIONS[language];
  let displayTitle = conversation?.title || "";
  if (displayTitle === "Yeni Sohbet" || displayTitle === "New Chat") {
    displayTitle = t.defaultChatTitle;
  }

  const scrollToBottom = () => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  };

  useEffect(() => {
    scrollToBottom();
  }, [messages]);

  const handleInput = (e) => {
    setInputValue(e.target.value);
    
    // Auto resize textarea
    const el = textareaRef.current;
    if (el) {
      el.style.height = "auto";
      el.style.height = Math.min(el.scrollHeight, 160) + "px";
    }
  };

  const handleKeyDown = (e) => {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      handleSend();
    }
  };

  const handleFileChange = async (e) => {
    const file = e.target.files?.[0];
    if (!file) return;
    
    setIsUploading(true);
    // Add to list with uploading status and a temporary ID
    const tempId = Date.now().toString();
    const tempFile = {
      id: tempId,
      name: file.name,
      ext: file.name.split('.').pop().toUpperCase(),
      status: 'uploading'
    };
    
    setAttachedFiles(prev => [...prev, tempFile]);

    try {
      const data = await onUploadDocument(file);
      // Once uploaded, update its ID to the real database document_id and status to done
      setAttachedFiles(prev => prev.map(f => f.id === tempId ? { ...f, id: data.id, status: 'done' } : f));
      setIsUploading(false);
    } catch (error) {
      setIsUploading(false);
      // Remove on error
      setAttachedFiles(prev => prev.filter(f => f.id !== tempId));
      if (fileInputRef.current) {
        fileInputRef.current.value = ""; 
      }
    }
  };

  const handleRemoveFile = async (fileObj) => {
    // If it's still uploading, just remove it from UI (since we can't easily cancel fetch)
    if (fileObj.status === 'uploading') {
        setAttachedFiles(prev => prev.filter(f => f.id !== fileObj.id));
        return;
    }
    
    // Delete from backend
    try {
        await onDeleteDocument(fileObj.id);
        setAttachedFiles(prev => prev.filter(f => f.id !== fileObj.id));
    } catch (e) {
        // handled in App.jsx (shows toast)
    }
  };

  const handleSendTemplate = (text) => {
    if (isSending || isUploading) return;
    onSendMessage(text);
  };

  const handleSend = () => {
    if ((!inputValue.trim() && attachedFiles.length === 0) || isSending || isUploading) return;
    if (inputValue.trim()) {
        onSendMessage(inputValue.trim());
    }
    setInputValue('');
    setAttachedFiles([]);
    if (textareaRef.current) {
      textareaRef.current.style.height = "auto";
    }
  };

  const SUGGESTED_TEMPLATES = [
    { id: 'dimensions', text: 'ISEDA013 parçasının boyutları nelerdir?' },
    { id: 'material', text: 'St37 malzeme detaylarını getir' },
    { id: 'standards', text: 'Aktif modül standart grupları' },
    { id: 'bom', text: 'Pnomatik silindir BOM parçaları' },
    { id: 'color', text: 'Gri renk lisans kodu nedir?' },
    { id: 'parameter', text: 'Modül doluluk parametre durumu' }
  ];

  return (
    <div className="chat-area">
      <header className="chat-header">
        <button className="btn-icon sidebar-toggle" title={t.toggleSidebar} onClick={onToggleSidebar}>
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/>
          </svg>
        </button>
        <span className="chat-title">{displayTitle}</span>
        <button className="btn-icon btn-delete" title={t.deleteConv} onClick={onDelete}>
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14a2 2 0 01-2 2H8a2 2 0 01-2-2L5 6"/>
            <path d="M10 11v6"/><path d="M14 11v6"/><path d="M9 6V4h6v2"/>
          </svg>
        </button>
      </header>

      <div className="messages-container">
        <div className="messages-inner">
          {messages.map((msg, idx) => (
            <MessageBubble 
              key={msg.id || idx}
              role={msg.role}
              content={msg.content}
              createdAt={msg.created_at}
              isTyping={msg.isTyping}
            />
          ))}
          <div ref={messagesEndRef} />
        </div>
      </div>

      <footer className="input-area">
        {messages.length === 0 && (
          <div className="suggestions-container">
            <div className="suggestions-grid">
              {SUGGESTED_TEMPLATES.map(tpl => (
                <button 
                  key={tpl.id} 
                  className="suggestion-card" 
                  onClick={() => handleSendTemplate(tpl.text)}
                >
                  <span>{tpl.text}</span>
                  <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                    <line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/>
                  </svg>
                </button>
              ))}
            </div>
          </div>
        )}
        <div className="input-wrapper input-wrapper-col">
          {attachedFiles.length > 0 && (
            <div className="attachments-preview">
              {attachedFiles.map(fileObj => (
                  <div key={fileObj.id} className="attachment-card">
                    <button className="btn-remove-attachment" onClick={() => handleRemoveFile(fileObj)}>
                        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                            <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
                        </svg>
                    </button>
                    <div className="attachment-header">
                      <span className="attachment-badge">{fileObj.ext}</span>
                      {fileObj.status === 'uploading' && <div className="spinner-small"></div>}
                    </div>
                    <div className="attachment-name" title={fileObj.name}>
                      {fileObj.name.length > 20 ? fileObj.name.substring(0, 17) + "..." : fileObj.name}
                    </div>
                  </div>
              ))}
            </div>
          )}
          <div className="input-row">
            <button 
              className="btn-attach" 
              title={t.attachTitle} 
              onClick={() => fileInputRef.current?.click()}
              disabled={isSending || isUploading}
            >
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                <path d="M21.44 11.05l-9.19 9.19a6 6 0 01-8.49-8.49l9.19-9.19a4 4 0 015.66 5.66l-9.2 9.19a2 2 0 01-2.83-2.83l8.49-8.48"/>
              </svg>
            </button>
            <input 
              type="file" 
              ref={fileInputRef} 
              style={{ display: "none" }} 
              accept=".pdf,.xlsx,.xls,.csv,.txt,.docx"
              onChange={handleFileChange} 
            />
            <textarea
              ref={textareaRef}
              className="message-input"
              placeholder={t.inputPlaceholder}
              rows="1"
              maxLength="4096"
              value={inputValue}
              onChange={handleInput}
              onKeyDown={handleKeyDown}
            ></textarea>
            <button 
              className="btn-send" 
              title={t.sendTitle} 
              disabled={(!inputValue.trim() && attachedFiles.length === 0) || isSending || isUploading}
              onClick={handleSend}
            >
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                <line x1="22" y1="2" x2="11" y2="13"/>
                <polygon points="22 2 15 22 11 13 2 9 22 2"/>
              </svg>
            </button>
          </div>
        </div>
        <p className="input-hint">{t.inputHint}</p>
      </footer>
    </div>
  );
};

export default ChatArea;
