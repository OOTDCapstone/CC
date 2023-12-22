# Tentukan image dasar
FROM node:14

# Buat direktori aplikasi
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin semua file sumber ke dalam container
COPY . .

# Tentukan port yang akan digunakan aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD [ "npm", "start" ]
