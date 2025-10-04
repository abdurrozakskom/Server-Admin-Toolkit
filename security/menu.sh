#!/bin/bash
while true; do
    clear
    echo "=== Menu Security & Firewall ==="
    echo "1) Update & Upgrade Sistem"
    echo "2) Setup Firewall (UFW)"
    echo "3) Install & Konfigurasi Fail2ban"
    echo "4) Scan Port Terbuka"
    echo "5) Setup SSL Let's Encrypt"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash security/update.sh ;;
        2) bash security/setup_ufw.sh ;;
        3) bash security/setup_fail2ban.sh ;;
        4) bash security/scan_ports.sh ;;
        5) bash security/setup_ssl.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
