#!/bin/bash
while true; do
    clear
    echo "=== Menu Backup & Restore ==="
    echo "1) Backup Database (MySQL/MariaDB)"
    echo "2) Backup File Website"
    echo "3) Backup ke Google Drive (rclone)"
    echo "4) Restore dari Backup"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash backup/backup_db.sh ;;
        2) bash backup/backup_files.sh ;;
        3) bash backup/backup_gdrive.sh ;;
        4) bash backup/restore.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
