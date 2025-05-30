# Charts
### Obbiettivo
Configurare il cluster Kubernetes, creato in locale, con Jenkins, in modo che possa raggiungere anche il namespace "formazione-sou"
Scrivere pipeline dichiarativa Jenkins che prenda da GitHub il chart versionato in "formazione_sou_k8s" ed effettui "helm install" sull'istanza K8s locale su namespace "formazione-sou"

## Cosa è un chart?
Un chart Helm è un pacchetto contenente tutte le informazioni necessarie per distribuire un'applicazione su Kubernetes.

Un Helm chart permette di: 
- *Definire l'architettura di un'applicazione Kubernetes*
- *Standardizzare la distibuzione*
- *Gestire le dipendenze*

Un chart Helm è composto da diversi file e directory:
- **Chart.yaml:** Definisce le informazioni di base del chart (nome, versione, dipendenze).
- **templates/:** Contiene i modelli YAML per le risorse Kubernetes.
- **values.yaml:** Definisce i parametri personalizzabili del chart. 

## Pipeline (jenkinsfile)
### Steps:
### 1. Pulizia workspace: 
*cleanWs(deleteDirs: true, patterns: [[pattern: '.kube', type: 'EXCLUDE']])*

Questo comando viene utilizzato in una pipeline Jenkins per pulire la workspace (cartella di lavoro) prima dell'esecuzione di un job.

![alt text](step_pulizia_workspace.png)

### 2. Clone repo git
*git url: "${GIT_URL}", branch:"main"*

*sh 'ls -la'*

Questi comandi vengono utilizzati in una pipeline Jenkins rispettivamente per:
1. Fare il checkout del codice presente in un repository.
2. Per elencare tutti i file presenti nella directory.

![alt text](clone_repo_git.png)

### 3. Helm
*sh "helm install --kube-insecure-skip-tls-verify ${NOME} /home/jenkins/workspace/flask-app-example-build/charts/helm-chart -n formazione-sou --set image.tag=${TAG} "*

*sh "helm list --kube-insecure-skip-tls-verify"*

Questi comandi vengono utilizzati in una pipeline Jenkins rispettivamente per:
1. Installare una release Helm in un cluster Kubernetes.
2. Per elencare tutte le release Helm installate nel cluster Kubernetes.

![alt text](install_helm_chart.png)

## Requisiti
- Docker desktop: running
- Jenkins master
- Jenkins agent
- VirtualBox installato
- Vagrant installato
- Ansible installato sul sistema host
- GitHub account
- DockerHub account

## --insecure-skip-tls-verify
Questo flag disabilita la verifica TLS, quindi non viene verificata la validità dei certificati.
