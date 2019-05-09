


Get-Service|Format-Table|Export-Csv C:\Demo\serrn.csv


Get-Process | select ProcessName |Out-File C:\Demo\test2.txt

(Get-content D:\test1.csv) | % {$_ -replace "@","&"} | Out-File D:\test1.csv 

Get-Process | select ProcessName |Out-File C:\Demo\test2.txt


Get-Service|Export-Csv C:\Demo\serrnw.csv | Out-File D:\temp\services.text

Get-Service|Export-Csv C:\Demo\serrnw.csv | Get-Member



Get-Service | Out-GridView -PassThru |Stop-Service -WhatIf

Get-Service | Out-GridView -OutVariable abc -PassThru

$abc

New-Variable -name a -Value="sarika"

#regularExpression -match notmach ,literal chracter string

"sarika" -match "sa"
"sarika" -match "as"

"this is my class" -match " is "

"this is my class" -match "is "

"this is my class" -match "^ is $"

" is my class" -match "^ is "

#character class [] single character

"sarika" -match "sa[rdf]ika"

"1234-5634-5678-8755" -match "^[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 

"1234-5634-56-788755" -match "^[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 

"1234-5634-7887*7870 " -match "^[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 

"1234-5634-5678-8755" -match "^[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 

"1234" -match "^[0-9]{4}$"

"124" -match "^[0-9]{4}$"

#minimum 3 max 4
"124" -match "^[0-9]{3,4}$"

#min 3 max no limit
"12466788" -match "^[0-9]{3,}$"



#

get-help about_reg -ShowWindow

"123" -match "\d{3,4}$"

Get-Content -path D:\WindowsUpdate.log| Select-String -Pattern "KB[0-9]{7}"

#Quntifiers 

Get-Content -Path D:\passfile.txt | Select-String 

"this is done by sarika" -match "(.+by)(.+)"

$Matches

Get-EventLog -LogName Application | select message

Get-EventLog -LogName Application|select message |Select-Strin
g "(.+svchost)(.+)"

Get-EventLog -LogName Application

$matches

$firstnumber=5
$secondnumber=7

if($firstnumber -eq $secondnumber)
{
Write-Host "both are same Number"
}
else
{
write-host "both are diffrent number"
}

#multiple condition in if loop

$firstnumber=10
$secondnumber=20

if($firstnumber -eq $secondnumber)
{
Write-Host "both are same Number" -ForegroundColor Green
}
elseif($firstnumber -gt $secondnumber)
{
write-host "firstnumber is greater than second" -ForegroundColor Red
}
else
{
write-host "Secondnumer is greater than first" -ForegroundColor Yellow
}



if($firstnumber -eq $secondnumber)
{
Write-Host "both are same Number" -ForegroundColor Green
}
elseif($firstnumber -gt $secondnumber)
{
write-host "firstnumber is greater than second" -ForegroundColor Red
}
else
{
write-host "Secondnumer is greater than first" -ForegroundColor Yellow
}


#Switch

Switch ($Var)
{

}

$var= Read-Host "Please Enter your Number"

switch ($Var)
{
  11 { Write-Host "This is Eleven"}
  12 { Write-Host "This is Eleven"}
  13 { Write-Host "This is thirteen"}
  default { Write-Host "This is fourteen"}
}



$var= Read-Host "Please Enter your Number"

switch ($Var)
{
  11 { Write-Host "This is Eleven"}
  11 { Write-Host "This is Eleven"}
  13 { Write-Host "This is thirteen"}
  default { Write-Host "This is fourteen"}
}


$var= Read-Host "Please Enter your Number"

switch ($Var)
{
  11 { Write-Host "This is Eleven"; break} 
  12 { Write-Host "This is Eleven";break}
  13 { Write-Host "This is thirteen"}
  default { Write-Host "This is fourteen"}
}

$var= Read-Host "Please Enter your Number"
switch -CaseSensitive("Power")
{
  POWER {Write-host "Uppercase"} 
  Power {Write-host "Exact"}
  power {Write-host "lowercase"}

}


switch -Wildcard("Power")
{
  *wer {Write-host "Uppercase"} 
  pow* {Write-host "Exact"}
  po*r {Write-host "lowercase"}
}



switch -Regex("power","super")
{
  "power" {Write-host "Uppercase"} 
  "^power$" {Write-host "Exact"}
  "^[a-z]{5}$" {Write-host "lowercase"}
  "^\w{5}$" {Write-host "lowercase"}
}


#Whileloop=> continuous Monitoring, rebbot server

$var1=1
$var2=4
while( $var1 -ne $var2)
{
Write-Host "those are not macthing"
}


#Forloop

for($i=1 ;$i -le 10 ; $i++)
{

 Write-Host "Server $i"

}


for($i=1 ;$i -le 5 ; $i++)
{
 "*"*$i
}




for($i=1 ;$i -le 4 ; $i++)
{
 "*"*$i
}

 for($i=4 ;$i -ge 1 ; $i=$i-1)
 {
 "*"*$i
 }


 $myserverlist = Get-Content -Path D:\serverlist.txt

 foreach($i in $myserverlist)
 {

 Write-host "$i"
 }














 
 

