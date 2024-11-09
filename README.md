# Script pour configurer automatiquement un client rsyslog

Ce script permet de configurer automatiquement un client rsyslog pour envoyer les logs à un serveur syslog.

## Utilisation

1. **Rendre le script exécutable** :

   ```bash
   chmod +x start.sh

    Exécuter le script :

./start.sh [IP_DU_SERVEUR]

Vérifier l'envoi des logs :

Vous pouvez vérifier que les logs sont bien envoyés en utilisant la commande suivante :

    logger "Test de log pour Synology"

Exemple

Pour configurer le client rsyslog pour envoyer les logs à un serveur avec l'adresse IP 192.168.2.13, exécutez :

./start.sh 192.168.2.13

Contenu du script

Le script effectue les actions suivantes :

    Met à jour la liste des paquets.
    Installe rsyslog.
    Ajoute la configuration nécessaire pour envoyer les logs au serveur syslog spécifié.
    Redémarre le service rsyslog.
