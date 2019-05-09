
function getdisksize
{
#[parameter(manatory=$true,helpmessage="provide value of the computername")]
param([string]$compname="localhost",
[validateset(1,3,5)]
[int]$drivetype=3)

$alldrives=Get-WmiObject Win32_LogicalDisk -comp $compname -filter $drivetype| Select @{label="FreeSpace";expression={$_.freespace/1GB}},@{label="size";expression={$_.size/1GB}},DeviceID

$myoutput=[System.Collections.ArrayList]@()

foreach($drive in $alldrives)
{ 
    $mysingledrive=[PSCustomobject]@{
                              server=$compname
                              DriveName=$drive.deviceid
                              Freespace=$drive.freespace
                              Drivesize=$drive.size
                                     }
}

$myoutput.Add($mysingledrive)|Out-Null
}

Write-Output $myoutput


$csvinputs = import-csv -Path D:\test4.csv 

foreach($server in $csvinputs)
{  
  getdisksize -compname $server.srvname -drivetype 3|Export-Csv -path D:\finalscv.csv -Append
}

　