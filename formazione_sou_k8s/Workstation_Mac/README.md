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

---

# Jenkins Master and Agent Setup on Rocky Linux 9 using Vagrant and Ansible

## Project Description

This project uses **Vagrant** to create a VM with **Rocky Linux 9** and installs **Docker** via **Ansible**. 
Next, a Docker network is configured, and a **Jenkins Master** container along with a **Jenkins Agent** container are set up. 
The Agent connects to the Master to run Jenkins pipelines.

## Requirements
- **[VirtualBox](https://www.virtualbox.org/)** – for virtualization
- **[Vagrant](https://www.vagrantup.com/)** – for managing and provisioning the VM
- **Docker** – to run the containers 
- **Ansible** – to automate the installation and configuration of Docker and Jenkins

## Useful Links
- [Ansible Docker Network Module Documentation](https://docs.ansible.com/ansible/2.9/modules/docker_network_module.html)
- [Ansible Docker Container Module Documentation](https://docs.ansible.com/ansible/2.9/modules/docker_container_module.html)

## Project Structure
1. **Vagrantfile**: Configures the virtual machine and provisions it using Ansible.
2. **playbook.yml**: The Ansible playbook to:
    - Install Docker on Rocky Linux 9.
    - Create a Docker network.
    - Create a Jenkins Master container with a static IP.
    - Create a Jenkins Agent container with a static IP.
