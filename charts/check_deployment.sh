#!/bin/bash

#variabili
DEPLOYMENT=prova2-charts
NAMESPACE=default

#deployment
# /dev/null --> viene fatto un redirect su /dev/null
# per evitare di vedere a schermo l'output del comando
# 2>/dev/null: reindirizza gli errori del comando 
DEPLOY_JSON=$(kubectl get deployment "$DEPLOYMENT" -n "$NAMESPACE" -o json 2>/dev/null)

#check_field
# check_field() --> dichiarazione funzione
# jq --> tool per elaborare json
# "$1" --> rappresenta il primo parametro passato alla funzione
check_field() {
  jq -e "$1" <<< "$DEPLOY_JSON" > /dev/null
}
# check_field --> verifica che uno specifico campo esista all'interno del file json
# controlla che sia presente l'attributo "livenessProbe"
check_field '.spec.template.spec.containers[0].livenessProbe'  || { echo "Manca livenessProbe";  } &
# controlla che sia presente l'attributo "readinessProbe"
check_field '.spec.template.spec.containers[0].readinessProbe' || { echo "Manca readinessProbe";  } &
# controlla che sia presente l'attributo "resources.limits"
check_field '.spec.template.spec.containers[0].resources.limits'  || { echo "Manca resources.limits";  } &
# controlla che sia presente l'attributo "resources.requests"
check_field '.spec.template.spec.containers[0].resources.requests' || { echo "Manca resources.requests";  } 