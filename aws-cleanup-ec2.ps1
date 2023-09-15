# Command for clearing the EC2 instance jobs
(Get-EC2Instance).Instances | ForEach-Object { Remove-EC2Instance -InstanceId $PSItem.InstanceId -Force }
