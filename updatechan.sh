#!/bin/bash

if [[ $EUID -ne 0 ]]; then # Assurez-vous que c'est un zéro, pas la lettre "O"
echo "Senpai ! Il faut être en ROOT pour exécuter mon script !"
exit 1
fi

echo "Je vais commencer à faire le mises à jour de votre système Senpai , je commence par les mises à jours des paquets APT..."
apt update && apt upgrade -y

# Ajout de la commande autoremove pour supprimer les paquets inutiles
echo "On nettoies des paquets APT inutiles..."
apt autoremove -y

echo "Et on continue par les mises à jour des applications Flatpak..."
flatpak update -y

echo "Presque bon Senpai! Manque les mises à jour des snaps..."
snap refresh

echo "Tout est okay, Senpai, les mises à jour ont été effectuées avec succès."
