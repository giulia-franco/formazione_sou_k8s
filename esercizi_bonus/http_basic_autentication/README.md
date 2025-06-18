# Http Basic Authentication

## Obbiettivo

Creare un Pod Nginx con la Http Basic Authentication abilitata.

## Cosa fare

- Creare un file di password tramite l'utility htpasswd e mapparla nel Pod come un Secret
- Customizzare la configurazione di Nginx tramite una ConfigMap

## Prerequisiti

- **Docker:** necessario per eseguire Kind
- **Kind:** per creare cluster Kubernetes locale
- **Kubectl:** per interagire con il cluster

## Procedimento

1. Con kind ho creato il cluster:

![alt text](img/creazione_cluster.png)

2. installazione di httpd

![alt text](img/install_httpd.png)

3. Creazione file .htpasswd:

![alt text](img/creazione_htpasswd.png)

4. Creazione secret con file .htpasswd:

![alt text](img/creazione_secret.png)

5. Creazione config map nginx (file nginx.conf)

![alt text](img/creazione_config_map.png)

6. Creazione del pod

![alt text](img/pod.png)

7. Creazione service

![alt text](img/service.png)

8. Accesso con autenticazione

![alt text](img/log-in.png)
![alt text](img/Welcome_to_nginx.png)
