#!/usr/bin/env bash 
set -euo pipefail

verifica_internet() {
    if ping -c1 -W2 archlinux.org &> /dev/null; then
       echo "Conexiunea la Internet este activa."
    else 
       echo "Conexiunea la Internet nu este activa. Verifica conexiunea la internet si incearca din nou."
       exit 1
    fi
}

verifica_internet

verifica_uefi() {
    if [ -d /sys/firmware/efi ]; then
        echo "Sistemul este pe UEFI."
    else
        echo "Sistemul nu este pe UEFI."
        exit 1
    fi
}

verifica_uefi