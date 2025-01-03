FROM ubuntu:latest
LABEL authors="samir"

ENTRYPOINT ["top", "-b"]
FROM python:3.9-slim

# Installer les dépendances
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copier le code de l'application
COPY . /app

# Commande par défaut
CMD ["python", "main.py"]
