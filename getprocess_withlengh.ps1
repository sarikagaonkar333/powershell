Get-Process | Sort-Object -Descending | select -First 10| select name,@{label="ws(mb)";e={$_.ws/1mb}}

param($path)

$allfiles=Get-ChildItem -Path $path -File 

$size100kb=$allfiles|Where-Object {$_.length -gt 100KB}

$top10 = $size100kb|Sort-Object -Property lenghth -Descending|select -First 10

$top10

.\get-getprocess.ps1 -path "d:\"

#====================================================================================




