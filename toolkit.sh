#!/bin/bash
# =========================================================
# Server Admin Toolkit
# by Abdur Rozak, SMKS YASMIDA Ambarawa
# GitHub: https://github.com/abdurrozakskom/server-admin-toolkit
# License: MIT
# =========================================================

CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

while true; do
    clear
    echo -e "${CYAN}=== Server Admin Toolkit ===${NC}"
    echo "1) Instalasi Server (LAMP, WordPress, Moodle, Docker, dll)"
    echo "2) Manajemen User & SSH"
    echo "3) Backup & Restore"
    echo "4) Monitoring & Logging"
    echo "5) Security & Firewall"
    echo "6) Networking & DDNS"
    echo "7) Tuning & Optimasi"
    echo "8) Utilitas (Update, Clean, Cronjob)"
    echo "0) Keluar"
    echo
    read -p "Pilih menu: " choice

    case $choice in
        1) bash install/menu.sh ;;
        2) bash user/menu.sh ;;
        3) bash backup/menu.sh ;;
        4) bash monitor/menu.sh ;;
        5) bash security/menu.sh ;;
        6) bash network/menu.sh ;;
        7) bash tuning/menu.sh ;;
        8) bash utils/menu.sh ;;
        0) echo "Keluar..."; exit 0 ;;
        *) echo -e "${RED}Pilihan tidak valid!${NC}"; sleep 2 ;;
    esac
done
