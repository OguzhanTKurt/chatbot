"""
Ana URL konfigürasyonu.
"""

from django.contrib import admin
from django.urls import path, include, re_path
from django.views.generic import TemplateView
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    # Admin paneli
    path("admin/", admin.site.urls),

    # API
    path("api/chat/", include("apps.documents.urls")),
    path("api/chat/", include("apps.chat.urls")),
]

# React uygulamasinin build edilmis statik dosyalarini (assets) sun
if settings.DEBUG:
    urlpatterns += static('/assets/', document_root=settings.BASE_DIR / 'frontend_react' / 'dist' / 'assets')

# React uygulamasini sunmak icin catch-all route
urlpatterns += [
    re_path(r'^.*$', TemplateView.as_view(template_name='index.html')),
]
