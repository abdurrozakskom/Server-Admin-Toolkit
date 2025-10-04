#!/bin/bash
while true; do
    clear
    echo "=== Menu Utilitas & Cronjob ==="
    echo "1) Auto Update Sistem Mingguan"
    echo "2) Auto Backup + Upload Cloud"
    echo "3) Auto Restart Service Kalau Mati"
    echo "4) Auto Hapus File Lama (>7 hari)"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash utils/auto_update.sh ;;
        2) bash utils/auto_backup.sh ;;
        3) bash utils/auto_restart.sh ;;
        4) bash utils/clean_oldfiles.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
