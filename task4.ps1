[int]$a = Read-Host "Enter your first Number="

[int]$b = Read-Host "Enter your Second Number="
Write-host " 1= Addition"
Write-host " 2= Substraction"
Write-host " 3= Multiplication"
$C = Read-host "Enter your Operation Number="

switch ([int]$C)
{
  1 { [int]$d=([int]$a + [int]$b)
     Write-Host "Ansswer="
     $d}
  2 { if($a -gt $b)
  { [int]$d=([int]$a - [int]$b)
      Write-Host "Answer="
      $d
      }
      else
      {
      [int]$d=([int]$b - [int]$a)
      Write-Host "Answer="
      Write-host "-"$d
      }
      
      }
  3 {[int]$d=([int]$a * [int]$b)
      Write-Host "Answer="
      $d}
}