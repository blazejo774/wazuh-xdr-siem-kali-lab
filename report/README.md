# PL - VERSION
# Sprawozdanie z laboratorium Wazuh XDR/SIEM

## Temat

Praktyczne laboratorium Wazuh XDR/SIEM z wykorzystaniem Kali Linux oraz Ubuntu Linux.

## Cel ćwiczenia

Celem projektu było przygotowanie środowiska laboratoryjnego umożliwiającego monitorowanie hosta końcowego, generowanie kontrolowanych zdarzeń bezpieczeństwa oraz analizę alertów w systemie Wazuh.

## Środowisko laboratoryjne

| Maszyna | Rola | Adres IP |
|---|---|---:|
| Kali Linux | Wazuh Manager, Wazuh Indexer, Wazuh Dashboard | 192.168.56.3 |
| Ubuntu Linux | Monitorowany endpoint z agentem Wazuh | 192.168.56.11 |
| Kali Linux | Maszyna atakująca | 192.168.56.30 |

## Zastosowane narzędzia

- Wazuh XDR/SIEM
- Wazuh Agent
- Kali Linux
- Ubuntu Linux
- Nmap
- Hydra
- UFW
- MITRE ATT&CK
- VirtualBox

## Przeprowadzone scenariusze

| Scenariusz | Źródło detekcji | Mapowanie MITRE ATT&CK |
|---|---|---|
| Skanowanie Nmap SYN | Logi UFW / firewall | T1046 - Network Service Discovery |
| Próba brute-force SSH przy użyciu Hydra | Logi uwierzytelniania Linux | T1110 - Brute Force |
| Polecenie sudo / błędna próba sudo | Logi uwierzytelniania Linux | T1548.003 - Sudo and Sudo Caching |

## Wyniki

System Wazuh poprawnie zebrał i przeanalizował zdarzenia bezpieczeństwa z monitorowanego hosta Ubuntu. Alerty zostały widoczne w panelu Wazuh Dashboard oraz powiązane z odpowiednimi technikami MITRE ATT&CK.

W przypadku skanowania Nmap konieczne było włączenie logowania UFW na monitorowanym hoście oraz dodanie lokalnej reguły Wazuh dla zablokowanego ruchu sieciowego.

## Wnioski

Wazuh umożliwia skuteczne monitorowanie endpointów Linux oraz analizę zdarzeń bezpieczeństwa na podstawie logów systemowych. Detekcja zależy od tego, jakie źródła logów są dostępne i przekazywane do managera.

Najbardziej bezpośrednie do wykrycia były zdarzenia związane z SSH oraz sudo, ponieważ są zapisywane w standardowych logach uwierzytelniania. Skanowanie sieci wymagało dodatkowego źródła logów w postaci UFW.

## Dokumentacja techniczna

Szczegółowa dokumentacja znajduje się w katalogu:

```text
docs/
```