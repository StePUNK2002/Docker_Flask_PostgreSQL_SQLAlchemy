# Используем Python базовый образ
FROM python:3.9

# Ставим рабочую директорию в контейнере
WORKDIR /app

# Копируем файл с зависимостями и устанавливаем эти зависимости с помощью pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем код приложения внутрь контейнера
COPY . .

ENV FLASK_APP=app


