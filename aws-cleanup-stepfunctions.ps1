# Cleanup State Machines
$RegionList = Get-AWSRegion

foreach ($Region in $RegionList.Region) {
    Get-SFNStateMachineList | ForEach-Object { Remove-SFNStateMachine -StateMachineArn $PSItem.StateMachineArn -Force }

    # Cleanup Activity Tasks
    Get-SFNActivityList | ForEach-Object { Remove-SFNActivity -ActivityArn $PSItem.ActivityArn -Force }
}