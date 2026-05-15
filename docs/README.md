# Documentation

Technical documentation for the Wazuh XDR/SIEM Kali Lab.

## Contents

| File | Description |
|---|---|
| [01-lab-architecture.md](./01-lab-architecture.md) | Three-VM lab topology and data flow |
| [02-wazuh-verification.md](./02-wazuh-verification.md) | Runtime checks, services, logs and screenshots |
| [03-wazuh-installation.md](./03-wazuh-installation.md) | Wazuh host installation notes, paths, services and ports |
| [04-agent-configuration.md](./04-agent-configuration.md) | Ubuntu endpoint agent configuration notes |
| [05-attack-scenarios.md](./05-attack-scenarios.md) | Nmap, Hydra and sudo test scenarios |
| [06-alerts-and-mitre.md](./06-alerts-and-mitre.md) | Alert sources and MITRE ATT&CK mapping |
| [07-conclusions.md](./07-conclusions.md) | Results, limitations and possible improvements |

## Lab machines

| VM | Role | IP address |
|---|---|---:|
| Kali Linux | Wazuh Manager, Indexer and Dashboard | 192.168.56.3 |
| Ubuntu Linux | Monitored endpoint with Wazuh Agent | 192.168.56.11 |
| Kali Linux | Attacker machine | 192.168.56.30 |

## Screenshot directories

| Directory | Purpose |
|---|---|
| `screenshots/architecture/` | VM addressing and topology |
| `screenshots/wazuh-verification/` | Service, agent and connectivity verification |
| `screenshots/kali/` | Attacker-side command outputs |
| `screenshots/alerts/` | Wazuh alerts and MITRE dashboard evidence |