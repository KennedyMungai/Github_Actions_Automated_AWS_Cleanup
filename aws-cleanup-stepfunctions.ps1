Get-SFNStateMachineList | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -WhatIf }

Get-SFNActivityList | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -WhatIf }