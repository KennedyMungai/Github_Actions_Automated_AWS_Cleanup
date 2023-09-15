# Cleanup State Machines
Get-SFNStateMachineList | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -WhatIf }

# Cleanup Activity Tasks
Get-SFNActivityList | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -WhatIf }