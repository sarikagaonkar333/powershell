get-command -noun Service

get-help Get-Command -Detailed

Get-Help Get-Command -Full

Get-Help Get-Command -online

Get-help clear-host -Online

Get-help Get-PSDrive -Online


New-PSDrive -Name BPSD -PSProvider FileSystem -Root 'C:\temp\'

set-location BPSD: Get-ChildItem | Format-Table


===================================================================================================
#Task 1:-

#locate the Advanced key and set its DontPrettyPath Property to 1.

Get-ChildItem -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\

cd HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\


get-help Set-ItemProperty -Online

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name DontPrettyPath -Value 1

===========================================================================================================================

# create a new directory called  c:\demo

$currentMonth = Get-Date -UFormat %m

$currentMonth = (Get-Culture).DateTimeFormat.GetMonthName($currentMonth)

New-Item -Path D:\Agreement -ItemType Directory -Name $currentMonth





============================================================================================================

#Create a zero lenth file c:\demo\test.txt

New-Item -Path C:\Demo\test.txt -ItemType File

================================================================================================

#try to chage the content of test.txt file

$contain= @"

This is my first powershell script
"@

$contain | Out-File C:\Demo\test.txt

cd C:\Demo


(Get-Content .\test.txt).Replace('my','sarika')|Out-File C:\Demo\test.txt

=======================================================================================
 #display value of %temp%

 Get-Item -Path C:\Windows\Temp

 Get-ChildItem -Path C:\Windows\Temp

 Get-ChildItem -Path C:\Users\SARIKA~1\AppData\Local\Temp

 (Get-ChildItem -Path C:\Users\SARIKA~1\AppData\Local\Temp| Measure-Object).Count
cd HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced 

 cd 

 set-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name DontPrettyPath -Value 0

 Get-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name DontPrettyPath 


 
 get-help Set-ItemProperty -online 


 cd 
 
 (Get-ChildItem -Path c:\ -Include "*.txt"|Measure-Object).Count

 (Get-ChildItem d:\ *.dll -Recurse |Measure-Object).Count

 Get-Help fl -Online

 get-help Get-Service -online

 Get-Service |Format-List -Property Status{stopped}

(get-service|?{ $_.Status -eq "Stopped" -and $_.StartType -eq "Automatic"})|
select DisplayName, StartType, Status

Get-Service|?{_.Status -eq "Stopped"}

Get-Help -recurse|Measure-Object -online