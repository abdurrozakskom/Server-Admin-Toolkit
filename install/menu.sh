#!/bin/bash
while true; do
    clear
    echo "=== Menu Instalasi Server ==="
    echo "1) Instalasi LAMP (Apache + MariaDB + PHP)"
    echo "2) Instalasi WordPress (di atas LAMP)"
    echo "3) Instalasi Moodle (di atas LAMP)"
    echo "4) Instalasi Docker + Docker Compose"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) echo "Menjalankan instalasi LAMP..."; bash install/install_lamp.sh ;;
        2) echo "Menjalankan instalasi WordPress..."; bash install/install_wp.sh ;;
        3) echo "Menjalankan instalasi Moodle..."; bash install/install_moodle.sh ;;
        4) echo "Menjalankan instalasi Docker..."; bash install/install_docker.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
