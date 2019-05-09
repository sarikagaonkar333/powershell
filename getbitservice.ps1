
$sevices= Get-Service

$bits=$sevices|?{($_.name -eq "BITS")}

Write-Host "The status of bits is $($bits.status)"