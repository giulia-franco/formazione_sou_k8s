# Creazione Dockerfile app Flask

## Descrizione progetto
Questo progetto contiene un'applicazione **Flask** scritta in **Python**, containerizzata tramite **Docker**, che espone una semplice pagina web con la stringa: **"Hello Word".**

## Contenuto progetto
- app.py: codice sorgente dell'app Flask.
- requisiti.txt: file con le dipendenze Python (flask).
- Dockerfile: definisce l’immagine Docker per eseguire l’app Flask.
- README.md: questo file.

## Come eseguire il progetto
1. docker build -t <<Nome_Immagine>>
2. docker run -p 5000:5000 <<Nome_Immagine>>

## Link utili
- https://docs.docker.com/
- https://flask.palletsprojects.com/
