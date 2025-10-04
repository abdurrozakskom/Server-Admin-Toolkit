#!/bin/bash
while true; do
    clear
    echo "=== Menu Monitoring & Logging ==="
    echo "1) Cek Penggunaan CPU, RAM, Disk"
    echo "2) Cek Koneksi Jaringan"
    echo "3) Monitoring Service (Apache/MariaDB)"
    echo "4) Lihat Login Terakhir & IP"
    echo "5) Deteksi Brute Force SSH"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash monitor/check_usage.sh ;;
        2) bash monitor/check_net.sh ;;
        3) bash monitor/check_service.sh ;;
        4) bash monitor/check_login.sh ;;
        5) bash monitor/check_bruteforce.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
