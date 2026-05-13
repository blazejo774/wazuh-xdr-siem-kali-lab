# Wazuh XDR/SIEM Kali Lab 🛡️

![Wazuh](https://img.shields.io/badge/Wazuh-XDR%2FSIEM-blue)
![Kali Linux](https://img.shields.io/badge/Kali-Linux-blueviolet)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Endpoint-orange)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![License](https://img.shields.io/badge/License-MIT-green)

This repository contains a practical cybersecurity laboratory based on Wazuh XDR/SIEM, Kali Linux and Ubuntu.  
The main goal of the project is to build a small monitored environment, generate controlled attack scenarios from a dedicated Kali Linux attacker machine and analyze security alerts in the Wazuh dashboard.

## 📌 Project overview

The lab environment consists of three virtual machines:

- Kali Linux VM used as the Wazuh manager and dashboard host,
- Kali Linux VM used as the attacking machine,
- Ubuntu Linux endpoint with the Wazuh agent installed,
- simulated attack scenarios such as network scanning, brute-force attempts and suspicious network traffic generation.

The project is designed as a hands-on SIEM/XDR home lab and portfolio project for cybersecurity learning.

## 🎯 Main objectives

- Install and configure Wazuh as an XDR/SIEM platform on Kali Linux.
- Connect the monitored Ubuntu endpoint to the Wazuh manager.
- Simulate basic attacker activity from a separate Kali Linux machine.
- Generate and analyze security alerts.
- Map selected alerts to MITRE ATT&CK techniques.
- Document the full lab setup, attack scenarios and conclusions.

## 🧩 Planned lab architecture

```text
+--------------------+          +------------------------+
| Kali Linux         |          | Ubuntu Endpoint        |
| Attacker machine   | -------> | Wazuh Agent            |
| nmap, hydra, etc.  |          | Monitored target       |
+--------------------+          +------------------------+
                                         |
                                         |
                                         v
                              +------------------------+
                              | Kali Linux             |
                              | Wazuh Manager          |
                              | Wazuh Dashboard        |
                              +------------------------+
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
│   ├── README.md
│   ├── 01-lab-architecture.md
│   ├── 02-wazuh-installation.md
│   ├── 03-agent-configuration.md
│   ├── 04-attack-scenarios.md
│   ├── 05-alerts-and-mitre.md
│   └── 06-conclusions.md
├── report/
│   └── README.md
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
- Kali Linux Wazuh host
- Kali Linux attacker machine
- Ubuntu Linux endpoint
- Wazuh Agent
- Nmap
- Hydra
- hping3
- MITRE ATT&CK
- VirtualBox
