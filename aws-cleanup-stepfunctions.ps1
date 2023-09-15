$RegionList = Get-AWSRegion

foreach ($Region in $RegionList.Region) {
    # Cleanup State Machines
    Get-SFNStateMachineList -Region $Region | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -Region $Region -Force }

    # Cleanup Activity Tasks
    Get-SFNActivityList -Region $Region | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -Region $Region -Force }
}