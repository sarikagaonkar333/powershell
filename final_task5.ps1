Clear-Host
class operation
{

[ValidateRange(1,10)][Int]$fn
[ValidateRange(1,10)][Int]$sn

  [int]add() { return $($this.fn) + $($this.sn)}
  [int]mul() { return $($this.fn) * $($this.sn)}
  [int]div() { return $($this.fn) / $($this.sn)}
  [decimal]sub() { if ($($this.fn) -lt $($this.sn))

  {
  return $($this.sn) - $($this.fn)
  }
  else 
  {
  return $($this.fn) - $($this.sn)
  }
  }
}

  $myvar= New-Object -TypeName operation
  $myvar.fn= Read-Host "Enter Your first Number="
  $myvar.sn= Read-Host "Enter Your second Number="
  
Write-host " 1= Addition"
Write-host " 2= Substraction"
Write-host " 3= Multiplication"
Write-host " 4= division"
$C = Read-host "Enter your Operation Number="


switch ([int]$C)
{
  1 {write-host "Answer" $myvar.add()}
  2 {write-host "Answer" $myvar.sub()}
  3 {write-host "Answer" $myvar.mul()}
  4 {write-host "Answer" $myvar.div()}
}                                                                                                                                                                                                                                                                                   