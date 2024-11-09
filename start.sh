#!/bin/bash

# Vérifier si un argument a été passé
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_DU_SERVEUR_SYNOLOGY>"
  exit 1
fi

# Récupérer l'adresse IP du serveur syslog à partir de l'argument
SYNOLOGY_IP=$1

# Mettre à jour la liste des paquets
apt update

# Installer rsyslog
apt install -y rsyslog

# Ajouter la configuration pour envoyer les logs au serveur syslog Synology
echo "*.* @${SYNOLOGY_IP}:514" | tee -a /etc/rsyslog.conf

# Redémarrer le service rsyslog
systemctl restart rsyslog

echo "Configuration terminée. Les logs sont maintenant envoyés à ${SYNOLOGY_IP}:514."
