# AWS Monitoring Setup — Zero-Downtime Migration

## Overview
Monitoring was configured to ensure system reliability, detect anomalies, and validate performance during and after migration.

## Services Used
- **Amazon CloudWatch**
  - Metrics: CPU utilization, memory usage, disk I/O, network in/out
  - Alarms: Threshold-based alerts for high CPU, low disk space, or unusual latency
  - Logs: Application logs aggregated via CloudWatch Logs
- **AWS CloudTrail** (Optional)
  - Tracks API activity and changes to resources for auditing
- **SNS Notifications**
  - Trigger alerts via email/SMS when alarms breach thresholds

## Metrics Monitored
| Metric | Purpose | Threshold |
|--------|---------|----------|
CPU Utilization | Detect overload | > 80% |
Memory Usage | Detect memory leaks | > 75% |
Disk I/O | Ensure no bottlenecks | > 70% |
HTTP Latency | Measure application responsiveness | > 200ms |

## Implementation Steps
1. Enabled CloudWatch agent on EC2 instance
2. Configured custom metrics for application-specific checks
3. Created dashboards for real-time visibility
4. Set alarms for each critical metric
5. Tested alert notifications to verify delivery

## Validation
- Verified real-time metrics during migration cutover
- Confirmed alerts trigger under simulated load
- Screenshots of dashboards and alerts stored in `/metrics-screenshots`


