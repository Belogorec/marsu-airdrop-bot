
# Используем базовый образ с Python 3.10
FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем все файлы проекта
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Установка переменных окружения (они подтянутся из Railway)
ENV API_TOKEN=${API_TOKEN}
ENV CHANNEL_USERNAME=${CHANNEL_USERNAME}

# Запуск бота
CMD ["python", "bot.py"]
