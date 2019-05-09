

function get-topprocess
{
  param($property,$count)
  Get-Process|Sort-Object -Descending -Property $property|select -First $count
}

get-topprocess -property ws -count 10


#function get-allfiles
#{
  #param()
  #begin{}
  #process{}
  #end{}
#}

Get-Item -Path C:\Windows -Include *.dll

