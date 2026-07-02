FROM node:20-slim

WORKDIR /app

# Bağımlılık dosyalarını kopyala
COPY package.json package-lock.json ./

# Paketleri kur
RUN npm install

# Proje dosyalarını kopyala
COPY . .

# Vite portu (5173)
EXPOSE 5173

# Geliştirme sunucusunu başlat (Her yerden erişilebilmesi için host flag'i ile)
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
