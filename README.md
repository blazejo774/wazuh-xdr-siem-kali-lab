# Wazuh XDR/SIEM Kali Lab 🛡️

![Wazuh](https://img.shields.io/badge/Wazuh-XDR%2FSIEM-blue)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Server-orange)
![Kali Linux](https://img.shields.io/badge/Kali-Linux-blueviolet)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![License](https://img.shields.io/badge/License-MIT-green)

This repository contains a practical cybersecurity laboratory based on Wazuh XDR/SIEM, Ubuntu and Kali Linux.  
The main goal of the project is to build a small monitored environment, generate controlled attack scenarios from Kali Linux and analyze security alerts in the Wazuh dashboard.

## 📌 Project overview

The lab environment consists of:

- Ubuntu Server / Ubuntu VM used as the Wazuh manager and dashboard host,
- monitored Linux endpoint with the Wazuh agent installed,
- Kali Linux VM used as the attacking machine,
- simulated attack scenarios such as network scanning, brute-force attempts and suspicious network traffic generation.

The project is designed as a hands-on SIEM/XDR home lab and portfolio project for cybersecurity learning.

## 🎯 Main objectives

- Install and configure Wazuh as an XDR/SIEM platform.
- Connect monitored endpoints to the Wazuh manager.
- Simulate basic attacker activity from Kali Linux.
- Generate and analyze security alerts.
- Map selected alerts to MITRE ATT&CK techniques.
- Document the full lab setup, attack scenarios and conclusions.

## 🧩 Planned lab architecture

```text
+-------------------+          +-----------------------+
| Kali Linux         |          | Ubuntu Endpoint        |
| Attacker machine   | -------> | Wazuh Agent            |
| nmap, hydra, etc.  |          | Monitored target       |
+-------------------+          +-----------------------+
                                         |
                                         |
                                         v
                              +-----------------------+
                              | Ubuntu Server          |
                              | Wazuh Manager          |
                              | Wazuh Dashboard        |
                              +-----------------------+
```

## ⚔️ Attack scenarios

Planned test scenarios:

- network reconnaissance using Nmap,
- SSH brute-force simulation using Hydra,
- suspicious network traffic generation using hping3,
- Linux authentication log analysis,
- alert analysis in Wazuh Dashboard,
- mapping selected events to MITRE ATT&CK techniques.

## 📁 Repository structure

```text
wazuh-xdr-siem-kali-lab/
├── docs/
│   ├── 01-lab-architecture.md
│   ├── 02-wazuh-installation.md
│   ├── 03-agent-configuration.md
│   ├── 04-attack-scenarios.md
│   ├── 05-alerts-and-mitre.md
│   └── 06-conclusions.md
├── report/
│   └── report.md
├── screenshots/
│   ├── alerts/
│   ├── dashboard/
│   └── kali/
├── scripts/
│   ├── kali/
│   └── ubuntu/
├── wazuh/
│   ├── agent-config/
│   └── rules/
├── .gitignore
├── LICENSE
└── README.md
```

## 🛠️ Tools and technologies

- Wazuh XDR/SIEM
- Ubuntu / Ubuntu Server
- Kali Linux
- Wazuh Agent
- Nmap
- Hydra
- hping3
- MITRE ATT&CK
- VirtualBox
