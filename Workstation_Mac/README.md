# Workstation_Mac
## Configurazione Jenkins Master e Agent su Rocky Linux 9 con Vagrant e Ansible

### Descrizione progetto
Questo progetto utilizza **Vagrant** per creare una VM con **Rocky Linux 9** e installa **Docker** tramite **Ansible**. 
Successivamente, viene configurata una rete Docker, installato un container **Jenkins Master** e un **Jenkins Agent**. 
L'Agent si collega al Master per eseguire le pipeline Jenkins.

### Contenuto progetto
- Vagrantfile: Configura la macchina virtuale e esegue il provisioning tramite Ansible.
- playbook.yaml: Definisce le attiviatà di provisioning
- README.md: Questo file.

### Requisiti
- **[VirtualBox](https://www.virtualbox.org/)** - per la virtualizzazione
- **[Vagrant](https://www.vagrantup.com/)** - per la gestione e il provisioning della VM
- **Docker** – per eseguire i container 
- **Ansible** - per automatizzare l'installazione e configurazione di Docker e Jenkins

### Link utili
- https://docs.ansible.com/ansible/2.9/modules/docker_network_module.html
- https://docs.ansible.com/ansible/2.9/modules/docker_container_module.html





        






