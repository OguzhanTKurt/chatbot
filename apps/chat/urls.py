"""
Chat URL'leri.
"""

from django.urls import path
from . import views

urlpatterns = [
    # Sohbet listesi & oluşturma
    path("conversations/", views.conversation_list_create, name="conversation-list-create"),

    # Sohbet detayı & silme
    path("conversations/<uuid:conversation_id>/", views.conversation_detail, name="conversation-detail"),

    # Mesaj geçmişi
    path("conversations/<uuid:conversation_id>/messages/", views.message_list, name="message-list"),

    # Mesaj gönder
    path("conversations/<uuid:conversation_id>/message/", views.send_message, name="send-message"),

]
