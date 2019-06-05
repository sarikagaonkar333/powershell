
for ($i = 1; $i -lt 13; $i++)
{ 

$monthname=(Get-Culture).DateTimeFormat.GetMonthName($i)
New-Item -ItemType Directory -Path C:\data\$monthname -Force
}