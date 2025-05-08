# Pipeline_jenkins
## Pipeline Jenkins dichiarativa per build immagine Docker (Flask)

### Descrizione progetto
Questo progetto ha come scopo la creazione e contaneirizzazione di una **web app Python Flask** che espone un messaggio "Hello World", 
l'automazione del processo di build e di push dell'immagine su **Docker-Hub** tramite una **Jenkins Pipeline**, con tagging dinamico 
in base al **branch/tag Git**.

### Contenuto progetto
- app.py: Codice sorgente dell'app Flask.
- requisiti.txt: File con le dipendenze Python (flask).
- Dockerfile: Definisce l’immagine Docker per eseguire l’app Flask.
- Jenkinsfile: Definisce una pipeline
- README.md: Questo file.

### Gestione dei tag Git
- Se l'immagine è "buildata" da un tag Git: il tag Docker sarà uguale al tag Git
- Se l'immagine è "buildata" dal branch master: il tag Docker sarà "latest"
- Se l'immagine è "buildata" dal branch develope: il tag Docker sarà "develop" seguito dal commit SHA

### Link utili
- https://docs.docker.com/
- https://flask.palletsprojects.com/
- https://www.jenkins.io/doc/

