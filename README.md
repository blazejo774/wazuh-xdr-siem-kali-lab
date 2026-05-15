# Wazuh XDR/SIEM Kali Lab 🛡️

![Wazuh](https://img.shields.io/badge/Wazuh-XDR%2FSIEM-blue)
![Kali Linux](https://img.shields.io/badge/Kali-Linux-blueviolet)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Endpoint-orange)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![License](https://img.shields.io/badge/License-MIT-green)

This repository contains a practical cybersecurity laboratory based on Wazuh XDR/SIEM, Kali Linux and Ubuntu.

The goal of the project is to build a small monitored environment, generate controlled attack scenarios and analyze security alerts in Wazuh Dashboard.

## 📌 Project overview

The lab environment consists of three virtual machines:

| Machine | Role | IP address |
|---|---|---:|
| Kali Linux | Wazuh Manager, Indexer and Dashboard | 192.168.56.3 |
| Ubuntu Linux | Monitored endpoint with Wazuh Agent | 192.168.56.11 |
| Kali Linux | Attacker machine | 192.168.56.30 |

## 🎯 Main objectives

- Configure a Wazuh SIEM/XDR lab environment.
- Connect an Ubuntu endpoint to the Wazuh Manager.
- Generate controlled security events from Kali Linux.
- Detect SSH brute-force, sudo activity and network scan events.
- Map selected alerts to MITRE ATT&CK techniques.
- Document the lab setup, verification steps and results.

## 🧩 Lab architecture

```text
+--------------------+          +------------------------+
| Kali Linux         |          | Ubuntu Endpoint        |
| Attacker machine   | -------> | Wazuh Agent            |
| 192.168.56.30      |          | 192.168.56.11          |
| nmap, hydra        |          |                        |
+--------------------+          +------------------------+
                                         |
                                         | logs / security events
                                         v
                              +------------------------+
                              | Kali Linux             |
                              | Wazuh Manager          |
                              | Wazuh Indexer          |
                              | Wazuh Dashboard        |
                              | 192.168.56.3           |
                              +------------------------+
```

## ⚔️ Implemented scenarios

| Scenario | Detection source | MITRE mapping |
|---|---|---|
| Nmap SYN scan | UFW firewall logs | T1046 - Network Service Discovery |
| SSH brute-force with Hydra | Linux authentication logs | T1110 - Brute Force |
| sudo command / failed sudo attempt | Linux authentication logs | T1548.003 - Sudo and Sudo Caching |

## 📁 Repository structure

```text
wazuh-xdr-siem-kali-lab/
├── docs/
│   ├── README.md
│   ├── 01-lab-architecture.md
│   ├── 02-wazuh-verification.md
│   ├── 03-wazuh-installation.md
│   ├── 04-agent-configuration.md
│   ├── 05-attack-scenarios.md
│   ├── 06-alerts-and-mitre.md
│   └── 07-conclusions.md
├── report/
│   └── README.md
├── screenshots/
│   ├── architecture/
│   ├── wazuh-verification/
│   ├── alerts/
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
- Wazuh Agent
- Kali Linux
- Ubuntu Linux
- Nmap
- Hydra
- UFW
- MITRE ATT&CK
- VirtualBox

## 📚 Documentation

Technical documentation is available in:

```text
docs/
```

Main files:

- [`01-lab-architecture.md`](./docs/01-lab-architecture.md)
- [`02-wazuh-verification.md`](./docs/02-wazuh-verification.md)
- [`03-wazuh-installation.md`](./docs/03-wazuh-installation.md)
- [`04-agent-configuration.md`](./docs/04-agent-configuration.md)
- [`05-attack-scenarios.md`](./docs/05-attack-scenarios.md)
- [`06-alerts-and-mitre.md`](./docs/06-alerts-and-mitre.md)
- [`07-conclusions.md`](./docs/07-conclusions.md)

## 🚧 Project status

Completed lab documentation.