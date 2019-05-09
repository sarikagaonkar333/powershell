

#Login-AzureRmAccount
#$PSVersionTable.PSVersion
param(
    # The name of resource group
    [Parameter(Mandatory = $true)]
    [string]$resourcegroup,
    # The name of VM name
    [Parameter(Mandatory = $true)]
    [string]$vmname,
    [parameter(Mandatory = $true)]
    [String]$Vnet,
    [parameter(Mandatory = $true)]
    [String]$subnet
     )

function createnewVM
{
try{
   New-AzVm `
    -ResourceGroupName $resourcegroup `
    -Name $vmname `
	-ImageName "myImage" `
    -Location "East US" `
    -VirtualNetworkName $Vnet `
    -SubnetName $subnet,
    -SecurityGroupName "myImageNSG" `
    -OpenPorts 3389
   }


 catch {
     Write-Host" parameter values are not valid. please check the parameters"
       }

//create folder for current month
$currentMonth = Get-Date -UFormat %m
$currentMonth = (Get-Culture).DateTimeFormat.GetMonthName($currentMonth)
New-Item -Path D:\Agreement -ItemType Directory -Name $currentMonth

//Limit eventlog size to 2 GB
Limit-EventLog -LogName System -MaximumSize 2GB

//To set powershell execution policy Remote Signed
Set-ExecutionPolicy RemoteSigned
 
//For Unrestricted
Set-ExecutionPolicy Unrestricted

Add-WindowsFeature SNMP-Services -IncludeAllSubFeature -Restart -WhatIf
}