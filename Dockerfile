FROM node:18-alpine3.17

WORKDIR /usr/app

# 1. نسخ ملفات تعريف المشروع (للـ Backend والـ Frontend إذا كان هناك build)
COPY package*.json ./

# 2. تثبيت المكتبات اللازمة لتشغيل السيرفر
RUN npm install --only=production

# 3. نسخ كل ملفات المشروع (يشمل كود app.js وملفات index.html والصور)
COPY . .

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npm", "start"]
