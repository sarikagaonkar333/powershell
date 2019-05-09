Clear-Host
Get-Item -Path C:\Windows\twain_32.dll | fl *

function get-alldllfiles
{
  begin{Write-Host "Dll files"}
  process{
  If($_.extension -eq ".dll")
  { $_.name|Out-File 'C:\New folder\dllfile.txt' -Append 
  $_.name}
  else{}
  }

  end{ Write-Host "end of script"}

}

Get-ChildItem -Path d:\| get-alldllfiles