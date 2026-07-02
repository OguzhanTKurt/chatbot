FROM python:3.11-slim

# Ortam değişkenleri (Python'un tamponlamasını ve bytecode yazmasını engeller)
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Gerekli sistem kütüphanelerini kur (psycopg2 ve diğer C tabanlı kütüphaneler için)
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Bağımlılıkları kopyala ve kur
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Proje dosyalarını kopyala
COPY . /app/

# Portu dışarı aç
EXPOSE 8000

# Geliştirme sunucusunu başlat
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
