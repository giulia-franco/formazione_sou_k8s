# syntax=docker/dockerfile:1.4

# Versione leggera dell'immagine Python 3.8
FROM python:3.8-slim   

# Imposta la directory di lavoro
WORKDIR /app   

# Copiare i file dei requisiti nell'immagine
COPY requisiti.txt /app

# Installa le dipendenze Python nell'immagine
RUN pip install --no-cache-dir -r requisiti.txt

# Copia il codice dell'applicazione nell'imagine 
COPY *.py /app

# Installa flask
RUN pip install flask

#esponi porta 5000 (porta standard di flask)
EXPOSE 5000

# Quando il container parte eseguire:
CMD ["python", "app.py"]