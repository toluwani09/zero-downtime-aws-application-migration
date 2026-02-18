
# Rollback Procedure — AWS MGN (Production)

## Scenario: Issues During Cutover

1. DNS reverted back to on-premises source server  
2. MGN-launched cutover EC2 instance stopped  
3. Source server verified operational and fully functional  
4. Logs and metrics confirmed no disruption  
5. Rollback documented for audit and lessons learned  

**Outcome:** Rollback completed successfully without impacting users
