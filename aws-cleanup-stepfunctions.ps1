# Cleanup State Machines
Get-SFNStateMachineList | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn }

# Cleanup Activity Tasks
Get-SFNActivityList | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn }