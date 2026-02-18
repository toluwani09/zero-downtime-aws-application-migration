# CloudWatch Alarms — Production Monitoring

## Overview
CloudWatch alarms were implemented to detect any **anomalies during replication and cutover**. They provided early warnings and allowed immediate action if necessary.

---

## Alarms Configured

### EC2 Instance
- **High CPU Utilization (>85%)** – Triggered alert for potential resource bottleneck  
- **High Memory Usage (>80%)** – Alerted to prevent application slowdown  

### Application Errors
- **5xx HTTP Error Rate > 2%** – Triggered alert during cutover for immediate validation  

### MGN Replication
- **Replication Lag > 5 minutes** – Alerted if replication fell behind  
- **Data Transfer Failures** – Detected interruptions in replication  

---

## Outcome
- No alarms were triggered during the production cutover  
- All metrics remained within safe thresholds  
- System performance was stable, confirming **successful production migration**
