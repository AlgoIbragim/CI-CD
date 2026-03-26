# Базовый образ
FROM node:18

# Рабочая папка внутри контейнера
WORKDIR /app

# Копируем package.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь проект
COPY . .

# Открываем порт (если есть сервер)
EXPOSE 3000

# Команда запуска
CMD ["npm", "start"]