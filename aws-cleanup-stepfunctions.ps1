$RegionList = Get-AWSRegion

foreach ($Region in $RegionList.Region) {
    # Cleanup State Machines
    Get-SFNStateMachineList | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -Force }

    # Cleanup Activity Tasks
    Get-SFNActivityList | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -Force }
}