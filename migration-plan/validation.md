# Migration Validation — AWS MGN (Production)

## Pre-Cutover Validation
- Application endpoints tested (HTTP/HTTPS) on test instance  
- Logs reviewed for errors or warnings  
- CPU, memory, disk, and network utilization monitored via CloudWatch  
- Security groups and access controls verified  
- Test instance confirmed fully operational and synchronized with source server  

## Cutover Validation
- Production EC2 instance launched via MGN confirmed fully operational  
- DNS switch validated traffic routing to AWS instance  
- CloudWatch dashboards confirmed stable CPU, memory, network, and latency under live traffic  
- Application accessibility verified by users  

## Post-Migration Validation
- Logs confirmed clean, no errors  
- Metrics showed stable performance  
- Screenshots captured from MGN console and CloudWatch for portfolio evidence  
