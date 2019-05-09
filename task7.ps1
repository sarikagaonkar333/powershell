
function getCounter
{
param([string]$vmname)

//logical disk free space
Get-Counter -Counter "\LogicalDisk(_Total)\% Free Space" -ComputerName $vmname
$DiskSpace.CounterSamples | Format-Table -AutoSize


//available memory counter
//Get-Counter -counter "\memory\available mbytes" -ComputerName $Computers
//$DiskSpace.countersamples| Format-Table -Property *

}

getcounter -vmname "DESKTOP-IHOK1T3"

$vmname="DESKTOP-IHOK1T3"




function getcounter
{
param([string]$vmname)

//to get process details
$Counter1 = "\\$vmname\Process(Idle)\% Processor Time"
$Data = Get-Counter $Counter1
$Data.CounterSamples | Format-List -Property *

//to get memory details
Get-Counter -counter "\\$vmname\memory\available mbytes"
$DiskSpace.countersamples| Format-Table -Property *

}

getcounter -vmname "DESKTOP-IHOK1T3"

