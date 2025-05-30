# charts
## parte 1
Creare un Helm Chart custom che effettui il deploy dell'immagine creata tramite la pipeline flask-app-example-build.

## parte 2
Configurare il cluster Kubernetes, creato in locale sul Mac, con Jenkins, in modo che possa raggiungere anche il namespace "formazione-sou"
Scrivere pipeline dichiarativa Jenkins che prenda da GitHub il chart versionato in "formazione_sou_k8s" ed effettui "helm install" sull'istanza K8s locale su namespace "formazione-sou"


### --insecure-skip-tls-verify
Questo flag disabilita la verifica TLS, quindi non viene verificata la validità dei certificati.
