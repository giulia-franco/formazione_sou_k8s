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

### Prerequisiti
- Account Docker Hub
- Credenziali docker Hub salvate in Jenkins 
- Repository Git 

### Gestione dei tag Git
- Se l'immagine è "buildata" da un tag Git: il tag Docker sarà uguale al tag Git
- Se l'immagine è "buildata" dal branch master: il tag Docker sarà "latest"
- Se l'immagine è "buildata" dal branch develope: il tag Docker sarà "develop" seguito dal commit SHA

### Link utili
- https://docs.docker.com/
- https://flask.palletsprojects.com/
- https://www.jenkins.io/doc/

### Spiegazione Pipeline Jenkins
La pipeline di Jenkins automatizza diversi processi, nello specifico:
1. All'avvio del job ci si presenta un menù che ci permette di scegliere da quale branch o tag effettuare il build dell'immagine Docker.
2. Fase di selezione del branch: 
    - Viene eseguito un controllo (if) per determinare se il build deve essere eseguito su un branch o su un tag Git.
    - La variabile RAMO viene impostata in base alla selezione (branch o tag).
3. Pulizia del workspace:
    - In questa fase, la cartella workspace viene svuotata per garantire che non ci siano residui di build precedenti.
4. Clone repository Git: 
    - Un controllo (if) verifica se il clone del repository Git deve essere fatto da un branch o da un tag, e il clone viene eseguito di conseguenza.
5. Mostra elenco file: 
    - Il comando ls -la viene utilizzato per visualizzare l'elenco dei file nella directory, per verificare che il repository sia stato correttamente clonato.
6. Controllo e impostazione del tag Docker:
    - Un altro if annidato viene utilizzato per determinare quale tag Docker deve essere utilizzato per il build dell'immagine:
7. Costruzione immagine Docker: 
    - In questa fase viene eseguito il build dell'immagine Docker usando il Dockerfile presente nel progetto.
8. Login su Docker Hub: 
    - Utilizzando le credenziali precedentemente salvate in Jenkins, la pipeline esegue il login su Docker Hub.
9. Push dell'immagine su Docker Hub: 
    - Infine, l'immagine Docker viene pushata nel Docker Hub con il tag appena determinato.
