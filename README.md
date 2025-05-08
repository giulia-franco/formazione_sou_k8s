# Formazione_sou_k8s

## Workstation_Mac
### Configurazione Jenkins Master e Agent su Rocky Linux 9 con Vagrant e Ansible

Questo progetto utilizza **Vagrant** per creare una VM con **Rocky Linux 9** e installa **Docker** tramite **Ansible**. 
Successivamente, viene configurata una rete Docker, installato un container **Jenkins Master** e un **Jenkins Agent**. 
L'Agent si collega al Master per eseguire le pipeline Jenkins.

## Pipeline_jenkins
### Pipeline Jenkins dichiarativa per build immagine Docker (Flask)

Questo progetto ha come scopo la creazione di un applicazione **flask contanerizzata**, 
publicarla su **Docker-Hub** e l'automazione della **build** con una **pipeline jenkins**.