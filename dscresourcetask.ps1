

Configuration configofnewmachine
{

 param(
  [parameter()]
  [string[]]$logname="Microsoft-Windows-WMI-Activity/system",

  [parameter()]
  [String]$username = "dineshpa",

  [parameter()]
  [string]$password = "P@ssw0rd@12"|ConvertTo-SecureString -asPlainText -Force,

  [parameter()]
[PSCredential]$credential= New-Object System.Management.Automation.PSCredential($username,$password),

   [Parameter(Mandatory)]
   [ValidateSet("RemoteSigned")]
   [String]$SetExecutionPolicy="RemoteSigned"
    )

  Import-DscResource -ModuleName PSDesiredstateconfiguration 
  Import-DscResource -ModuleName xPowerShellExecutionPolicy
  Import-DscResource -Name xWinEventLog -ModuleName xWinEventLog
  Install-Module -Name xPowerShellExecutionPolicy
  
 
  Node client
  {
    windowsfeature telnetclient 
    { 
    Ensure="present"
    name="telnet-client"
    }

    windowsfeature ftpserver 
    { 
    Ensure="present"
    name="Web-ftp-server"
    }
    windowsfeature ftpservice 
    { 
    Ensure="present"
    name="web-ftp-service"
    }
    windowsfeature EnhancedStorage
    { 
    Ensure="present"
    name="Enhancedstorage"
    }
    windowsfeature snmp
    { 
    Ensure="absent"
    name="snmp-sevice"
    }
    windowsfeature webserver
    { 
    Ensure="absent"
    name="web-server"
    }
    
    User localuser

        {
            UserName = $username
            Password = $password
            Description = "local account"
            Ensure = "Present"
            Disabled = $false
            PasswordNeverExpires = $true
            PasswordChangeRequired = $false
        }

        Group addToAdmin
        {
            DependsOn = "[User]localuser"
            Credential = $credential
            GroupName = "Administrators"
            Ensure = "Present"
            MembersToInclude = "localuser"
        }

         xWinEventLog WMILog
        {
            LogName            = $logname
            IsEnabled          = $true
            LogMode            = "AutoBackup"
            MaximumSizeInBytes = 2gb
        }

         xPowerShellExecutionPolicy ExecutionPolicy
        {
            ExecutionPolicy = $SetExecutionPolicy
        }

        File CreateDirectory
        {
            Ensure = "Present"
            Type = "Directory" 
            Recurse = $true
            SourcePath = "\\Server\D:\Data"
            DestinationPath = "C:\data"
   }     }

}

configofnewmachine -InstanceName server

