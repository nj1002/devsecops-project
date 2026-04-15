FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# C'est ici qu'on utilise RUN (à l'intérieur du Dockerfile)
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
