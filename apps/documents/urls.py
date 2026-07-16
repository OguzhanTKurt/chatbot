from django.urls import path
from . import views

urlpatterns = [
    path("conversations/<uuid:conversation_id>/upload/", views.upload_document, name="upload-document"),
    path("conversations/<uuid:conversation_id>/documents/<uuid:document_id>/", views.delete_document, name="delete-document"),
    # Genel bilgi bankası (Global Document) uç noktaları kapatıldı.
    # Dosyalar artık manage.py index_documents pipeline'ı ile gömülüyor.
    # path("global-documents/", views.global_document_list, name="global_document_list"),
    # path("global-documents/upload/", views.upload_global_document, name="upload_global_document"),
    # path("global-documents/<uuid:document_id>/", views.delete_global_document, name="delete_global_document"),
]
