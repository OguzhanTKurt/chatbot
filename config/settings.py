"""
Django settings for chatbot_project.
Tüm hassas değerler .env dosyasından okunur.
"""

from pathlib import Path
from decouple import config, Csv

BASE_DIR = Path(__file__).resolve().parent.parent

# ── Güvenlik ──────────────────────────────────────────────────────────────────
SECRET_KEY = config("SECRET_KEY")
DEBUG = config("DEBUG", default=False, cast=bool)
ALLOWED_HOSTS = config("ALLOWED_HOSTS", default="localhost,127.0.0.1", cast=Csv())

# ── Uygulamalar ───────────────────────────────────────────────────────────────
INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    # Üçüncü taraf
    "rest_framework",
    "corsheaders",
    # Proje uygulamaları
    "apps.chat",
    "apps.rag",
    "apps.documents",
    "apps.prompts",
]

MIDDLEWARE = [
    "corsheaders.middleware.CorsMiddleware",
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "config.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [
            BASE_DIR / "frontend_react" / "dist",
            BASE_DIR / "frontend"
        ],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "config.wsgi.application"

# ── Veritabanı ────────────────────────────────────────────────────────────────
# SQLite varsayılan, PostgreSQL için .env'de DATABASE_URL güncellenir
_db_url = config("DATABASE_URL", default="sqlite:///db.sqlite3")

if _db_url.startswith("postgres"):
    import re
    _match = re.match(
        r"postgres://(?P<user>[^:]+):(?P<password>[^@]+)@(?P<host>[^:]+):(?P<port>\d+)/(?P<name>.+)",
        _db_url,
    )
    if _match:
        g = _match.groupdict()
        DATABASES = {
            "default": {
                "ENGINE": "django.db.backends.postgresql",
                "NAME": g["name"],
                "USER": g["user"],
                "PASSWORD": g["password"],
                "HOST": g["host"],
                "PORT": g["port"],
            }
        }
    else:
        raise ValueError("Geçersiz DATABASE_URL formatı. Örnek: postgres://user:pass@host:5432/dbname")
else:
    # SQLite — geliştirme ortamı
    DATABASES = {
        "default": {
            "ENGINE": "django.db.backends.sqlite3",
            "NAME": BASE_DIR / "db.sqlite3",
        }
    }

# ── Engine Konfigürasyonu ─────────────────────────────────────────────────────
ENGINE_BACKEND = config("ENGINE_BACKEND", default="rule_based")
CONTEXT_WINDOW = config("CONTEXT_WINDOW", default=20, cast=int)

# ── Ollama / Llama 3 ayarları ─────────────────────────────────────────────────
OLLAMA_BASE_URL = config("OLLAMA_BASE_URL", default="http://localhost:11434")
OLLAMA_MODEL    = config("OLLAMA_MODEL", default="llama3")
OLLAMA_TEMPERATURE = config("OLLAMA_TEMPERATURE", default=0.3, cast=float)

# ── System Prompt ─────────────────────────────────────────────────────────────
# Önce config/prompts/system_prompt.txt dosyasından yükle.
# Dosya bulunamazsa .env'deki SYSTEM_PROMPT değerini kullan.
_PROMPT_FILE = BASE_DIR / "config" / "prompts" / "system_prompt.txt"
if _PROMPT_FILE.is_file():
    SYSTEM_PROMPT = _PROMPT_FILE.read_text(encoding="utf-8").strip()
else:
    SYSTEM_PROMPT = config(
        "SYSTEM_PROMPT",
        default=(
            "Sen Türkçe konuşan yardımcı bir yapay zeka asistanısın. "
            "Kullanıcıyla nazik ve samimi bir şekilde sohbet et."
        ),
    )


# ── DRF ───────────────────────────────────────────────────────────────────────
REST_FRAMEWORK = {
    "DEFAULT_RENDERER_CLASSES": [
        "rest_framework.renderers.JSONRenderer",
    ],
    "DEFAULT_PARSER_CLASSES": [
        "rest_framework.parsers.JSONParser",
        "rest_framework.parsers.MultiPartParser",
        "rest_framework.parsers.FormParser",
    ],
}

# ── CORS ──────────────────────────────────────────────────────────────────────
CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",
    "http://127.0.0.1:3000",
    "http://localhost:5173",
    "http://127.0.0.1:5173",
]
CORS_ALLOW_ALL_ORIGINS = DEBUG  # Geliştirmede hepsine izin ver

# ── Statik dosyalar ───────────────────────────────────────────────────────────
STATIC_URL = "/static/"
STATICFILES_DIRS = [BASE_DIR / "frontend" / "static"]

# ── Diğer ─────────────────────────────────────────────────────────────────────
DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"
LANGUAGE_CODE = "tr-tr"
TIME_ZONE = "Europe/Istanbul"
USE_I18N = True
USE_TZ = True
