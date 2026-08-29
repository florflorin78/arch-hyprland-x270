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