# CloudWatch Dashboards — Production Monitoring for AWS MGN Migration

## Overview
CloudWatch dashboards were implemented to **monitor the MGN test and cutover instances** throughout the migration process. Metrics provided real-time insights into system health, performance, and availability.

---

## Dashboards Implemented

### 1. EC2 Instance Metrics
- **CPU Utilization** – Ensured instances operated under safe thresholds  
- **Memory Usage** – Verified sufficient resources for application runtime  
- **Disk I/O** – Monitored read/write activity during replication and cutover  
- **Network Traffic** – Tracked incoming/outgoing requests  

### 2. Application Performance Metrics
- **HTTP Response Time** – Validated latency during traffic cutover  
- **Error Rates** – Confirmed no errors during live migration  

### 3. MGN Replication Metrics
- **Replication Lag** – Verified source and target synchronization  
- **Data Transfer Rates** – Ensured replication was complete before cutover  

---

## Outcome
- Dashboards confirmed **stable performance before, during, and after cutover**  
- Metrics validated zero downtime migration and application reliability  
- Screenshots captured in `monitoring-screenshots/` for GitHub portfolio evidence
