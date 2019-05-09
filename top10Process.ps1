

get-help Get-Process -ShowWindow

#top10 process
Get-Process | Sort-Object -Descending | select -First 10| select name,@{label="ws(mb)";e={$_.ws/1mb}}

Get-Process | Where-Object {$_.WorkingSet -gt 20000000}

Get-Process | where {$_.mainWindowTitle} | Format-Table id, name, mainwindowtitle -autosize