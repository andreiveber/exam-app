# Используем легковесный образ Node.js 20 Alpine
FROM node:20-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы зависимостей
COPY package*.json ./

# Устанавливаем только production зависимости
RUN npm install --only=production

# Копируем исходный код
COPY . .

# Открываем порт
EXPOSE 80

# Запускаем приложение
CMD ["npm", "start"]
