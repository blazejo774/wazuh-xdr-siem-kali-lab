# Scripts

This directory contains helper scripts used in the Wazuh XDR/SIEM Kali Lab.

## Kali scripts

Scripts in `scripts/kali/` are intended to be executed on the Kali attacker machine.

### Nmap SYN scan

Script:

[`scripts/kali/nmap_scan.sh`](./kali/nmap_scan.sh)

Usage:

```bash
chmod +x scripts/kali/nmap_scan.sh
./scripts/kali/nmap_scan.sh
```

Target:

```text
192.168.56.11
```

Purpose:

```text
Run an Nmap SYN scan against the monitored Ubuntu endpoint.
```

### Hydra SSH test

Script:

[`scripts/kali/hydra_ssh_test.sh`](./kali/hydra_ssh_test.sh)

Usage:

```bash
chmod +x scripts/kali/hydra_ssh_test.sh
./scripts/kali/hydra_ssh_test.sh
```

Target:

```text
192.168.56.11
```

Purpose:

```text
Generate controlled SSH authentication attempts against the monitored Ubuntu endpoint.
```

## Notes

The scripts are prepared only for the local lab network.

Do not run them against external systems!

