class operation
{

 [validateset (1,2,3,4,5,6,7,8,9,10)]
 [int]$fn
  [int]$sn
  [int]add() { return $($this.fn) + $($this.sn)}
  [int]mul() { return $($this.fn) * $($this.sn)}
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
  $myvar.fn= Read-Host "Enter first Number="
  $myvar.sn= Read-Host "Enter second Number="
  
  Write-host " 1= Addition"
Write-host " 2= Substraction"
Write-host " 3= Multiplication"
$C = Read-host "Enter your Operation Number="



switch ([int]$C)
{
  1 {write-host "Answer" $myvar.add()}
  2 {write-host "Answer" $myvar.sub()}
  3 {write-host "Answer" $myvar.mul()}
}                                                                                                                                                                                                                                                                                   