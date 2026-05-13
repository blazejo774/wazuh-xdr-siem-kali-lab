# Documentation

This directory contains technical documentation for the Wazuh XDR/SIEM Kali Lab project.

## Contents

- [Lab architecture](./01-lab-architecture.md)  
  Description of the three-VM lab topology: Kali Wazuh host, Ubuntu monitored endpoint and Kali attacker machine.

- [Wazuh verification](./02-wazuh-verification.md)  
  Commands and screenshots used to verify Wazuh services, Filebeat, Wazuh Agent logs and network connectivity between lab machines.

- [Wazuh installation](./03-wazuh-installation.md)  
  Installation notes for Wazuh Manager, Wazuh Indexer and Wazuh Dashboard on the Kali Wazuh host.

- [Agent configuration](./04-agent-configuration.md)  
  Configuration notes for the Wazuh Agent installed on the monitored Ubuntu endpoint.

- [Attack scenarios](./05-attack-scenarios.md)  
  Controlled attack simulations performed from the Kali attacker machine, including Nmap, Hydra and privilege-related tests.

- [Alerts and MITRE ATT&CK](./06-alerts-and-mitre.md)  
  Description of generated Wazuh alerts and mapping selected events to MITRE ATT&CK techniques.

- [Conclusions](./07-conclusions.md)  
  Summary of lab results, observations and possible improvements.

## Lab machines

| VM | Role | IP address |
|---|---|---:|
| Kali Linux | Wazuh Manager, Indexer and Dashboard | 192.168.56.3 |
| Ubuntu Linux | Monitored endpoint with Wazuh Agent | 192.168.56.11 |
| Kali Linux | Attacker machine | 192.168.56.30 |


