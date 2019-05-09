param($path ,$size)

$allfiles=Get-ChildItem -Path $path -File 

$size100kb=$allfiles|Where-Object {$_.length -gt $size}

$top10 = $size100kb|Sort-Object -Property length -Descending|select -First 10

$top10

