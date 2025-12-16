# Python backend uchun Dockerfile (universal)
FROM python:3.11-slim

# Ishchi katalogni o'rnatish
WORKDIR /app

# Kerakli fayllarni ko'chirish
COPY . .

# Pythonda kerakli kutubxonalarni o'rnatish (agar requirements.txt mavjud bo'lsa)
RUN pip install --no-cache-dir --upgrade pip \
    && if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Standart port (masalan, 8000)
EXPOSE 8001

# Ilovani ishga tushirish (FastAPI uchun misol, kerakli komandani o'zgartiring)
CMD ["python", "main.py"]
