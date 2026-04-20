# Utiliser une version légère de Python [cite: 65]
FROM python:3.10-slim

# Définir le dossier de travail à l'intérieur du conteneur [cite: 66]
WORKDIR /app

# Copier le fichier de dépendances [cite: 67]
COPY requirements.txt .

# Installer les dépendances (Flask) [cite: 68]
RUN pip install -r requirements.txt

# Copier le script de l'application [cite: 69]
COPY app.py .

# Commande pour lancer l'application [cite: 72]
CMD ["python", "app.py"]