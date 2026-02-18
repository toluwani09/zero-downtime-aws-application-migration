# Migration Validation — AWS MGN

## Pre-Cutover Tests
- Application response tests (HTTP/HTTPS requests)  
- Log inspection for errors and warnings  
- CPU, Memory, Disk utilization monitoring via CloudWatch  
- Security verification: test inbound/outbound rules and access control  
- **Verify AWS MGN replication status** and ensure test instance is fully functional  

## Cutover Validation
- Confirm final MGN-launched cutover instance is running correctly  
- Test application endpoints under live traffic  
- Monitor real-time metrics via CloudWatch  
- Verify no downtime occurred during traffic switch  

## Post-Migration Validation
- Confirm all services are functional on AWS EC2 instance  
- Review logs and metrics for stability  
- Document validation outcomes in GitHub repository  
- Screenshots from MGN console and CloudWatch dashboards saved for portfolio evidence  
