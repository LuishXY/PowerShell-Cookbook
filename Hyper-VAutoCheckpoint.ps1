#This script will create a checkpoint in Hyper-V. Run on scheduled task to automate.

$VmName = "SERVERNAME"
$Date = Get-Date -Format "MM/dd/yyyy HH:mm"
$CheckpointName = 'AutoCheckpoint ' + $Date

Get-VM -Name $VmName | checkpoint-VM -SnapshotName $CheckpointName
