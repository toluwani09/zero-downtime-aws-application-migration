# Architecture Documentation — Zero-Downtime Application Migration (AWS MGN)

## Overview
This architecture represents the target AWS environment for a live production application migration using **AWS MGN**. The design prioritizes:

- Zero downtime during migration
- Secure and least-privilege access
- Observability and monitoring
- Scalability for future expansion

---

## Components

### 1. EC2 Target Instance
- **Purpose:** Hosts the migrated application server launched via MGN cutover  
- **Configuration:** Matches source OS and runtime environment  
- **Security:** Enforced via security groups allowing only necessary ports  
- **Justification:** Provides isolated compute environment, easily integrated with AWS networking and monitoring services  

### 2. VPC & Subnets
- **Purpose:** Logical isolation of the migrated application  
- **Configuration:** Public subnet for EC2 access; optional private subnet for future services  
- **Justification:** Network segmentation improves security and reduces attack surface  

### 3. Security Groups
- **Purpose:** Control inbound and outbound traffic  
- **Rules Implemented:** 
  - Allow HTTP/HTTPS from users or load balancer  
  - Allow SSH from admin IP only  
- **Justification:** Principle of least privilege; protects instance from unauthorized access  

### 4. Monitoring Layer
- **Purpose:** Real-time visibility into system health and performance  
- **Tools:** Amazon CloudWatch for metrics, logs, and alarms  
- **Justification:** Ensures early detection of issues during cutover and post-migration  

### 5. DNS / Traffic Cutover
- **Purpose:** Redirect production traffic to the AWS instance after validation  
- **Implementation:** Adjust DNS records after final health checks  
- **Justification:** Enables controlled cutover, supporting zero-downtime migration  

### 6. AWS MGN (Application Migration Service)
- **Purpose:** Continuous replication of the source server to AWS  
- **Configuration:** Replication enabled for the source server; test and cutover instances defined  
- **Justification:** Ensures zero-downtime migration, simplifies cutover, and provides validation checkpoints before production traffic  

---

## Workflow / Data Flow

1. Users send requests to the application  
2. Traffic initially reaches the source server  
3. AWS MGN continuously replicates the source server to AWS  
4. Test instances are launched via MGN for pre-cutover validation  
5. After final validation, production traffic routes to AWS EC2 instance launched by MGN  
6. Monitoring collects metrics and logs for validation  
7. Security groups filter traffic for authorized access only  

---

## Security Considerations
- **Least-Privilege Access:** Admin accounts and SSH access limited by IP  
- **Network Isolation:** Only necessary ports open; no wide network exposure  
- **Monitoring & Logging:** All traffic and system events are logged for auditing  
