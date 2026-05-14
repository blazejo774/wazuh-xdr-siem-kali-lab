# Wazuh Installation Notes

## Scope

This document contains concise installation notes for the Wazuh host used in this lab.

## Host

| Machine | Role | IP address |
|---|---|---:|
| Kali Linux | Wazuh host | 192.168.56.3 |

## Deployment type

The lab uses a single-node Wazuh deployment.

All central Wazuh components run on one Kali Linux virtual machine:

- Wazuh Manager
- Wazuh Indexer
- Wazuh Dashboard
- Filebeat

## Main installation paths

| Element | Path |
|---|---|
| Wazuh main directory | `/var/ossec/` |
| Manager configuration | `/var/ossec/etc/ossec.conf` |
| Local rules | `/var/ossec/etc/rules/local_rules.xml` |
| Local decoders | `/var/ossec/etc/decoders/local_decoder.xml` |
| Alerts log | `/var/ossec/logs/alerts/alerts.log` |
| Alerts JSON | `/var/ossec/logs/alerts/alerts.json` |
| Manager log | `/var/ossec/logs/ossec.log` |
| Filebeat log | `/var/log/filebeat/filebeat` |

## Installed services

| Service | Purpose |
|---|---|
| `wazuh-manager` | Receives and analyzes events from agents |
| `wazuh-indexer` | Stores and indexes security data |
| `wazuh-dashboard` | Provides the Wazuh web interface |
| `filebeat` | Sends Wazuh alerts to the indexer |

## Lab network

The Wazuh host uses the following lab address:

```text
192.168.56.3/24
```

The Ubuntu endpoint connects to this address as its Wazuh Manager.

## Ports used in the lab

| Port | Protocol | Purpose |
|---:|---|---|
| 1514 | TCP/UDP | Agent event forwarding |
| 1515 | TCP | Agent enrollment/authentication |
| 443 | TCP | Wazuh Dashboard access |
| 9200 | TCP | Wazuh Indexer API |

## Ruleset loading

The Wazuh manager loads default and local rules/decoders from paths defined in:

```text
/var/ossec/etc/ossec.conf
```

Relevant configuration:

```xml
  <ruleset>
    <!-- Default ruleset -->
    <decoder_dir>ruleset/decoders</decoder_dir>
    <rule_dir>ruleset/rules</rule_dir>
    <rule_exclude>0215-policy_rules.xml</rule_exclude>
    <list>etc/lists/audit-keys</list>
    <list>etc/lists/amazon/aws-eventnames</list>
    <list>etc/lists/security-eventchannel</list>
    <list>etc/lists/malicious-ioc/malware-hashes</list>
    <list>etc/lists/malicious-ioc/malicious-ip</list>
    <list>etc/lists/malicious-ioc/malicious-domains</list>

    <!-- User-defined ruleset -->
    <decoder_dir>etc/decoders</decoder_dir>
    <rule_dir>etc/rules</rule_dir>
  </ruleset>
```

Local custom rules are placed in:

```text
/var/ossec/etc/rules/local_rules.xml
```

Local custom decoders are placed in:

```text
/var/ossec/etc/decoders/local_decoder.xml
```

## Local rules used in the lab

The lab can use local rules to extend default Wazuh detections.

Example use cases:

- SSH authentication failures
- repeated SSH login failures
- sudo command execution
- failed sudo attempts

Local rules are documented and stored in:


[`wazuh/rules/local_rules.xml`](../wazuh/rules/local_rules.xml)


## Decoder usage

Custom decoders are not required for the basic SSH and sudo scenarios.

The lab uses default Wazuh decoders for standard Linux authentication logs.  
Local rules can reference existing Wazuh rule IDs using `if_sid` or `if_matched_sid`.

Custom decoders are needed only when Wazuh does not correctly parse a specific custom log format.

## Notes

This repository documents a laboratory Wazuh deployment.

It is not intended to be a production installation guide.