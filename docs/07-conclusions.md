# Conclusions

## Summary

The lab confirmed that Wazuh can be used as a SIEM/XDR platform for monitoring Linux endpoints and analyzing security events.

The environment consisted of three virtual machines:

- Kali Linux Wazuh host,
- Kali Linux attacker machine,
- Ubuntu monitored endpoint with Wazuh Agent.

## Results

The following events were successfully generated and analyzed:

| Scenario | Result |
|---|---|
| Nmap SYN scan | Detected through UFW firewall logs and mapped to MITRE T1046 |
| SSH brute-force | Detected through authentication logs and mapped to MITRE T1110 |
| Sudo command / failed sudo attempt | Detected through authentication logs and mapped to MITRE T1548.003 |

## Key observations

- Wazuh detects events based on collected logs, not direct packet sniffing.
- SSH and sudo events are reliable for basic endpoint detection because they are stored in Linux authentication logs.
- Nmap scan detection required UFW logging and a custom local Wazuh rule.
- Custom rules can extend default Wazuh detections and add MITRE ATT&CK mapping.
- MITRE ATT&CK dashboard helps classify alerts by tactics and techniques.

## Limitations

- The lab uses a small single-node Wazuh deployment.
- Detection quality depends on available logs and enabled rules.
- Network scans may not be visible without firewall logs, IDS logs or another network telemetry source.

## Possible improvements

- Add Suricata or Zeek for deeper network traffic analysis.
- Add more custom Wazuh rules.
- Add Windows endpoint monitoring.
- Add automated response actions.
- Extend the lab with SOAR integration.