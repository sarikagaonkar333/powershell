Get-Help about_functions_advanced_parameters -ShowWindow

function get-alldllfiles
{
      validation
 [ValidateScript({$_ -eq PS)]

    Get-ChildItem -
    
  
}

get-alldllfiles -path 'D:\@{srvname=localhost}.csv'

Get-Item -Path 'D:\Azure CBT'| fl *

Get-Item -Path 'D:\@{srvname=localhost}.csv'| fl *


$Error[0] |Get-Member

$Error[0].Exception

$Error[0].CategoryInfo

$Error[0].CategoryInfo.Reason

Get-Variable

$Error.Clear()

Get-Service -ErrorAction


Try
{
Test-Connection -ComputerName jhjhj -ErrorAction Stop
#get-sarika 
}
catch
{
  #$_.exception.message
  $_.exception
}