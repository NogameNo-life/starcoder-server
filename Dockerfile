FROM nvidia/cuda:12.2.0-cudnn8-runtime-ubuntu22.04

# Установка системных зависимостей
RUN apt-get update && apt-get install -y \
    python3.10 python3-pip git curl && \
    rm -rf /var/lib/apt/lists/*

# Установка Python-зависимостей
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir --extra-index-url https://download.pytorch.org/whl/cu121 -r requirements.txt

# Копируем сервер
COPY server.py .

# Запуск
EXPOSE 5000
CMD ["python3", "server.py"]
