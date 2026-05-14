# Attack Scenarios

## Purpose

This document describes controlled attack simulations performed in the Wazuh XDR/SIEM Kali Lab.

The goal of these scenarios is to generate security events on the monitored Ubuntu endpoint and analyze the resulting alerts in Wazuh Dashboard.

## Lab machines

| Machine | Role | IP address |
|---|---|---:|
| Kali Linux | Wazuh Manager, Indexer and Dashboard | 192.168.56.3 |
| Ubuntu Linux | Monitored endpoint with Wazuh Agent | 192.168.56.11 |
| Kali Linux | Attacker machine | 192.168.56.30 |

## Scenario 1: Network reconnaissance with Nmap

### Description

This scenario simulates network reconnaissance against the monitored Ubuntu endpoint.

Port scanning is one of the first stages of many attacks. It allows the attacker to identify open ports, running services and possible attack surfaces.

### Command

Run on the Kali attacker machine:

```bash
sudo nmap -sS 192.168.56.11
```

### Expected result on Kali

Nmap should display discovered ports and services on the Ubuntu endpoint.

```text
PORT     STATE SERVICE
22/tcp   open  ssh
...
```

### Expected result in Wazuh

Wazuh may generate alerts related to network scanning or suspicious connection attempts, depending on the monitored logs and enabled rules.

![Nmap scan from Kali attacker](../screenshots/kali/nmap-syn-scan.png)

![Nmap scan alert in Wazuh](../screenshots/alerts/nmap-scan-alert.png)

## Scenario 2: SSH brute-force simulation with Hydra

### Description

This scenario simulates repeated SSH login attempts against the monitored Ubuntu endpoint.

A brute-force attack is based on trying many password combinations in order to gain unauthorized access.

### Command

Run on the Kali attacker machine:

```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt.gz 192.168.56.11 ssh -t 4
```

### Expected result on Kali

Hydra should start multiple SSH authentication attempts against the Ubuntu endpoint.

### Expected result on Ubuntu

The Ubuntu endpoint should record failed SSH login attempts in authentication logs.

### Expected result in Wazuh

Wazuh should generate alerts related to failed authentication attempts or brute-force activity.

Example alert types:

```text
Authentication failed
Multiple authentication failures
Brute-force attempt detected
```

![Hydra SSH brute-force from Kali attacker](../screenshots/kali/hydra-ssh-bruteforce.png)

![SSH brute-force alert in Wazuh](../screenshots/alerts/ssh-bruteforce-alert.png)

## Scenario 3: Privilege-related command attempt

### Description

This scenario generates a local privilege-related event on the monitored Ubuntu endpoint.

The `sudo -l` command lists commands that the current user is allowed to run with elevated privileges. In a monitored environment, sudo-related activity is important because it may indicate privilege escalation attempts or suspicious administrative behavior.

### Command

Run on the Ubuntu endpoint:

```bash
sudo -l
```

### Expected result on Ubuntu

The system should ask for the user password and then display sudo permissions for the current user.

### Expected result in Wazuh

Wazuh should detect sudo-related activity in the Linux authentication logs.

Possible alert context:

```text
sudo command executed
failed attempt to run sudo
privilege-related activity
```

![Sudo command on Ubuntu endpoint](../screenshots/kali/sudo-l-command.png)

![Sudo-related alert in Wazuh](../screenshots/alerts/sudo-alert.png)

## Scenario 4: Suspicious traffic generation with hping3

### Description

This scenario can be used to generate unusual network traffic toward the monitored Ubuntu endpoint.

The goal is to observe whether the environment records suspicious traffic patterns or related system events.

### Command

Run on the Kali attacker machine:

```bash
sudo hping3 -S 192.168.56.11 -p 22 -c 10
```

### Expected result on Kali

The command sends TCP SYN packets to port 22 on the Ubuntu endpoint.

### Expected result in Wazuh

Depending on the configuration and available logs, Wazuh may show network-related alerts or authentication-related events if the traffic interacts with monitored services.

![hping3 traffic generation](../screenshots/kali/hping3-traffic.png)

![hping3-related alert in Wazuh](../screenshots/alerts/hping3-alert.png)

## Summary

The attack scenarios are used to verify that the Wazuh lab can collect and analyze security-relevant events.

| Scenario | Tool | Source | Target | Expected detection |
|---|---|---|---|---|
| Network reconnaissance | Nmap | Kali attacker | Ubuntu endpoint | Port scanning / suspicious connections |
| SSH brute-force | Hydra | Kali attacker | Ubuntu endpoint | Failed logins / brute-force |
| Privilege-related activity | sudo | Ubuntu endpoint | Ubuntu endpoint | Sudo activity |
| Suspicious traffic | hping3 | Kali attacker | Ubuntu endpoint | Abnormal network traffic |