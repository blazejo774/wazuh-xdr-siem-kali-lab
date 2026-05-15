#!/bin/bash

TARGET="192.168.56.11"

echo "[+] Running Nmap SYN scan against ${TARGET}"
sudo nmap -sS "$TARGET"