import React, { useState, useEffect } from 'react';
import { API } from '../services/api';

const TRANSLATIONS = {
  tr: {
    title: "Genel Bilgi Bankası",
    desc: "Buraya yüklediğiniz belgeler, tüm yeni sohbetlerde yapay zekanın (Qwen 2.5) erişimine açık olur.",
    uploadBtn: "Belge Yükle",
    uploading: "Yükleniyor...",
    noDocs: "Henüz belge yüklenmemiş.",
    delete: "Sil",
    close: "Kapat",
    error: "Bir hata oluştu: ",
    confirmDelete: "Bu belgeyi silmek istediğinize emin misiniz?",
  },
  en: {
    title: "Global Knowledge Base",
    desc: "Documents uploaded here will be accessible to the AI (Qwen 2.5) across all new conversations.",
    uploadBtn: "Upload Document",
    uploading: "Uploading...",
    noDocs: "No documents uploaded yet.",
    delete: "Delete",
    close: "Close",
    error: "An error occurred: ",
    confirmDelete: "Are you sure you want to delete this document?",
  }
};

const GlobalDocumentsModal = ({ isOpen, onClose, language = 'tr' }) => {
  const [documents, setDocuments] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [isUploading, setIsUploading] = useState(false);
  const [errorMsg, setErrorMsg] = useState(null);

  const t = TRANSLATIONS[language] || TRANSLATIONS.tr;

  useEffect(() => {
    if (isOpen) {
      loadDocuments();
    } else {
      setErrorMsg(null);
    }
  }, [isOpen]);

  const loadDocuments = async () => {
    setIsLoading(true);
    setErrorMsg(null);
    try {
      const data = await API.getGlobalDocuments();
      setDocuments(data || []);
    } catch (err) {
      setErrorMsg(t.error + err.message);
    } finally {
      setIsLoading(false);
    }
  };

  const handleFileChange = async (e) => {
    const file = e.target.files?.[0];
    if (!file) return;

    setIsUploading(true);
    setErrorMsg(null);
    try {
      await API.uploadGlobalDocument(file);
      await loadDocuments(); // Refresh list after upload
    } catch (err) {
      setErrorMsg(t.error + (err.response?.data?.error || err.message));
    } finally {
      setIsUploading(false);
      // Reset input
      e.target.value = '';
    }
  };

  const handleDelete = async (id) => {
    if (!window.confirm(t.confirmDelete)) return;
    
    setErrorMsg(null);
    try {
      await API.deleteGlobalDocument(id);
      await loadDocuments();
    } catch (err) {
      setErrorMsg(t.error + (err.response?.data?.error || err.message));
    }
  };

  if (!isOpen) return null;

  return (
    <div style={overlayStyle}>
      <div style={modalStyle}>
        <div style={headerStyle}>
          <h2 style={{ margin: 0, fontSize: '1.2rem', color: 'var(--text-primary)' }}>{t.title}</h2>
          <button onClick={onClose} style={closeBtnStyle} title={t.close}>×</button>
        </div>
        
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginBottom: '20px' }}>
          {t.desc}
        </p>

        {errorMsg && (
          <div style={errorStyle}>
            {errorMsg}
          </div>
        )}

        <div style={uploadContainerStyle}>
          <label style={{...uploadBtnStyle, opacity: isUploading ? 0.7 : 1, cursor: isUploading ? 'not-allowed' : 'pointer'}}>
            {isUploading ? t.uploading : t.uploadBtn}
            <input 
              type="file" 
              style={{ display: 'none' }} 
              onChange={handleFileChange} 
              disabled={isUploading}
            />
          </label>
        </div>

        <div style={listStyle}>
          {isLoading ? (
            <p style={{ color: 'var(--text-muted)' }}>...</p>
          ) : documents.length === 0 ? (
            <p style={{ color: 'var(--text-muted)' }}>{t.noDocs}</p>
          ) : (
            <ul style={{ listStyle: 'none', padding: 0, margin: 0 }}>
              {documents.map(doc => (
                <li key={doc.id} style={docItemStyle}>
                  <span style={{ color: 'var(--text-primary)', wordBreak: 'break-all' }}>📄 {doc.filename}</span>
                  <button onClick={() => handleDelete(doc.id)} style={deleteBtnStyle}>{t.delete}</button>
                </li>
              ))}
            </ul>
          )}
        </div>
      </div>
    </div>
  );
};

// Inline styles corresponding to the app's tokens
const overlayStyle = {
  position: 'fixed',
  top: 0,
  left: 0,
  right: 0,
  bottom: 0,
  backgroundColor: 'rgba(0, 0, 0, 0.6)',
  backdropFilter: 'blur(4px)',
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center',
  zIndex: 1000,
};

const modalStyle = {
  backgroundColor: 'var(--bg-surface)',
  borderRadius: 'var(--radius-lg)',
  padding: '24px',
  width: '100%',
  maxWidth: '500px',
  border: '1px solid var(--border)',
  boxShadow: 'var(--shadow-md)',
  display: 'flex',
  flexDirection: 'column',
  maxHeight: '90vh',
};

const headerStyle = {
  display: 'flex',
  justifyContent: 'space-between',
  alignItems: 'center',
  marginBottom: '12px',
};

const closeBtnStyle = {
  background: 'none',
  border: 'none',
  color: 'var(--text-secondary)',
  fontSize: '1.5rem',
  cursor: 'pointer',
  padding: '4px',
  lineHeight: 1,
};

const uploadContainerStyle = {
  marginBottom: '20px',
  display: 'flex',
  justifyContent: 'center',
};

const uploadBtnStyle = {
  backgroundColor: 'var(--accent)',
  color: '#fff',
  padding: '10px 20px',
  borderRadius: 'var(--radius-sm)',
  fontWeight: '500',
  display: 'inline-block',
  transition: 'background-color 0.2s',
  cursor: 'pointer',
};

const listStyle = {
  flex: 1,
  overflowY: 'auto',
  borderTop: '1px solid var(--border)',
  paddingTop: '16px',
};

const docItemStyle = {
  display: 'flex',
  justifyContent: 'space-between',
  alignItems: 'center',
  padding: '12px',
  backgroundColor: 'var(--bg-base)',
  borderRadius: 'var(--radius-sm)',
  marginBottom: '8px',
  border: '1px solid var(--border)',
};

const deleteBtnStyle = {
  backgroundColor: 'transparent',
  border: '1px solid rgba(255, 100, 100, 0.3)',
  color: '#ff6b6b',
  padding: '6px 12px',
  borderRadius: 'var(--radius-sm)',
  cursor: 'pointer',
  fontSize: '0.8rem',
  transition: 'all 0.2s',
};

const errorStyle = {
  backgroundColor: 'rgba(255, 100, 100, 0.1)',
  color: '#ff6b6b',
  padding: '10px',
  borderRadius: 'var(--radius-sm)',
  marginBottom: '16px',
  fontSize: '0.9rem',
  border: '1px solid rgba(255, 100, 100, 0.2)',
};

export default GlobalDocumentsModal;
