#!/bin/bash
while true; do
    clear
    echo "=== Menu Tuning & Optimasi ==="
    echo "1) Tuning Apache + PHP-FPM"
    echo "2) Tuning MariaDB (otomatis sesuai spesifikasi)"
    echo "3) Bersihkan Cache & Log"
    echo "4) Clear RAM Cache"
    echo "5) Kompres File Log Lama"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash tuning/tuning_apache.sh ;;
        2) bash tuning/tuning_mariadb.sh ;;
        3) bash tuning/clean_logs.sh ;;
        4) bash tuning/clear_ram.sh ;;
        5) bash tuning/compress_logs.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
