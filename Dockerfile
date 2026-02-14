# Використовуємо легкий Python образ
FROM python:3.11-slim

# Робоча папка в контейнері
WORKDIR /app

# Копіюємо requirements
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь код
COPY . .

# Відкриваємо порт
EXPOSE 5000

# Команда запуску
CMD ["python", "app.py"]
