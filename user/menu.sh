#!/bin/bash
while true; do
    clear
    echo "=== Menu Manajemen User & SSH ==="
    echo "1) Tambah User Baru"
    echo "2) Hapus User"
    echo "3) Ganti Password User"
    echo "4) Generate SSH Key Otomatis"
    echo "5) Hardening SSH (disable root login)"
    echo "0) Kembali"
    read -p "Pilih: " choice

    case $choice in
        1) bash user/add_user.sh ;;
        2) bash user/del_user.sh ;;
        3) bash user/passwd_user.sh ;;
        4) bash user/gen_sshkey.sh ;;
        5) bash user/hardening_ssh.sh ;;
        0) break ;;
        *) echo "Pilihan tidak valid!"; sleep 2 ;;
    esac
done
