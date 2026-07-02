import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:8000/api/chat', // Django server URL
  headers: {
    'Content-Type': 'application/json',
  },
});

export const API = {
  getConversations: () => api.get('/conversations/').then(res => res.data),
  createConversation: (title) => api.post('/conversations/', { title }).then(res => res.data),
  getMessages: (id) => api.get(`/conversations/${id}/messages/`).then(res => res.data),
  sendMessage: (id, content, language, model) => api.post(`/conversations/${id}/message/`, { content, language, model }).then(res => res.data),
  deleteConversation: (id) => api.delete(`/conversations/${id}/`),
  uploadDocument: (id, file) => {
    const formData = new FormData();
    formData.append("file", file);
    return api.post(`/conversations/${id}/upload/`, formData, {
      headers: {
        "Content-Type": "multipart/form-data"
      }
    }).then(res => res.data);
  },
  deleteDocument: (id, documentId) => api.delete(`/conversations/${id}/documents/${documentId}/`),
  getGlobalDocuments: () => api.get('/global-documents/').then(res => res.data),
  uploadGlobalDocument: (file) => {
    const formData = new FormData();
    formData.append("file", file);
    return api.post('/global-documents/upload/', formData, {
      headers: { "Content-Type": "multipart/form-data" }
    }).then(res => res.data);
  },
  deleteGlobalDocument: (id) => api.delete(`/global-documents/${id}/`),
};

export default api;
