#!/bin/bash
while true; do
    clear
    echo "=== Menu Networking & DDNS ==="
    echo "1) Konfigurasi IP Statis"
    echo "2) Cek Koneksi Internet"
    echo "3) Setup DDNS (Cloudflare)"
    echo "4) Block IP Otomatis"
    echo "5) Cek Port Terbuka"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash network/set_static_ip.sh ;;
        2) bash network/check_inet.sh ;;
        3) bash network/ddns_cloudflare.sh ;;
        4) bash network/block_ip.sh ;;
        5) bash network/check_openport.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
