# Configurazione Jenkins Master e Agent su Rocky Linux 9 con Vagrant e Ansible

## Descrizione del Progetto
Questo progetto utilizza **Vagrant** per creare una VM con **Rocky Linux 9** e installa **Docker** tramite **Ansible**. 
Successivamente, viene configurata una rete Docker, installato un container **Jenkins Master** e un **Jenkins Agent**. 
L'Agent si collega al Master per eseguire le pipeline Jenkins.

## Requisiti
- **[VirtualBox]**(https://www.virtualbox.org/)
- **[Vagrant]**(https://www.vagrantup.com/)
- **Docker** – per eseguire i container 
- **Ansible** - per automatizzare l'installazione e configurazione di Docker e Jenkins

## Link utili
- https://docs.ansible.com/ansible/2.9/modules/docker_network_module.html
- https://docs.ansible.com/ansible/2.9/modules/docker_container_module.html

## Struttura
1. Vagrantfile= Configura la macchina virtuale e esegue il provisioning tramite Ansible
2. Playbook.yml= Playbook Ansible per:
    - Installazione di Docker su Roky Linux 9.
    - Creare una rete Docker.
    - Creazione di un container Jenkins Master con IP statico.
    - Creazione di un container Jenkins Agent con IP statico


