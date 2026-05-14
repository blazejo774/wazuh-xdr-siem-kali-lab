# Wazuh Agent Configuration

## Scope

This document contains basic configuration notes for the Wazuh Agent installed on the monitored Ubuntu endpoint.

## Endpoint

| Machine | Role | IP address |
|---|---|---:|
| Ubuntu Linux | Wazuh Agent / monitored endpoint | 192.168.56.11 |

## Manager address

```text
Wazuh Manager: 192.168.56.3
```

## Main files

| File | Purpose |
|---|---|
| `/var/ossec/etc/ossec.conf` | Wazuh Agent configuration |
| `/var/ossec/logs/ossec.log` | Wazuh Agent log |
| `/var/log/auth.log` | Linux authentication log used in this lab |

## Log source used in this lab

The main endpoint log source is:

```text
/var/log/auth.log
```

It is used for:

- SSH authentication events
- failed SSH login attempts
- sudo command execution
- failed sudo attempts

## Detection relevance

| Scenario | Source log |
|---|---|
| SSH brute-force | `/var/log/auth.log` |
| sudo command execution | `/var/log/auth.log` |
| failed sudo attempt | `/var/log/auth.log` |

## Notes

The Wazuh Agent sends collected events from the Ubuntu endpoint to the Wazuh Manager.

Runtime checks and screenshots are documented in:

```text
docs/02-wazuh-verification.md
```