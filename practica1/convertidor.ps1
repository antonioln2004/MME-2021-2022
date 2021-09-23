Write-Host '|                                   | '
Write-Host '|                                   | '
Write-Host '|           Bienvenido/a            | '
Write-Host '|        al conversor binario,      | '
Write-Host '|     hexadecimal, decimal y octal. | '
Write-Host '|                                   | ' 
Write-Host '|     Por favor, elija una opción:  | '
Write-Host '|                                   | '

Write-Host ''
write-host 'Para abrir el conversor de decimal a binario, pulse 1.'
write-host 'Para abrir el conversor de binario a decimal, pulse 2.'
write-host 'Para abrir el conversor de hexadecimal a decimal, pulse 3.'
write-host 'Para abrir el conversor de decimal a hexadecimal, pulse 4.'
Write-Host 'Para abrir el conversor de octal a decimal, pulse 5.'
Write-Host 'Para abrir el conversor de decimal a octal , pulse 6'
Write-Host 'Para abrir el conversor de binario a octal, pulse 7'
Write-Host 'Para abrir el conversor de binario a hexadecimal, pulse 8'
Write-Host 'Para abrir el conversor de hexadecimal a binario, pulse 9'
Write-Host ''

$converter = read-host 'Escribe el número: '


function 10to2{
$10tobinary = Read-Host 'Entendido. Escribe un número en decimal: '     #1

[Convert]:: tostring($10tobinary, 2)
}
function 2to10{
$binaryto10 = Read-Host 'Entendido. Escribe un número en binario: '     #2

[Convert]:: toint64($binaryto10, 2)
}
function 16to10{
$hexto10 = Read-Host 'Entendido. Escribe un número en hexadecimal: '    #3

[Convert]:: toint64($hexto10, 16)
}
function 10to16{
$10tohex = Read-Host 'Entendido. Escribe un número en decimal: '        #4

[Convert]:: tostring($10tohex, 16)
}
function 8to10{
$8to10 = Read-Host 'Entendido. Escribe un número en octal'              #5

[Convert]:: toint64($8to10, 8)
}
function 10to8{
$10to8 = Read-Host 'Entendido. Escribe un número en decimal'            #6

[Convert]:: tostring($10to8, 8)
}
function 2to8{
$binaryto8 = Read-Host 'Entendido. Escribe un número en binario'        #7

$Convert2to8 = [Convert]:: tostring($binaryto8, 8)                                    #No funciona

[Convert]:: tostring($Convert2to8, 8)
}
function 2to16{
$binaryto16=Read-Host 'Entendido. Escribe un número en binario'         #8

$Convert2to16 = [Convert]:: tostring($binaryto16, 16)                                 #No funciona

[Convert]:: tostring($Convert2to16, 16)
}
function 16to2{
$16tobinary=Read-Host 'Entendido. Escribe un número en hexadecimal'     #9

[Convert]:: tostring($16tobinary, 16)                                                 #No funciona
}



if($converter -eq 1){ 10to2 }
elseif($converter -eq 2){ 2to10 }
elseif($converter -eq 3){ 16to10 }
elseif($converter -eq 4){ 10to16 }
elseif($converter -eq 5){ 8to10 }
elseif($converter -eq 6){ 10to8 }
elseif($converter -eq 7){ 2to8 }
elseif($converter -eq 8){ 2to16 }
elseif($converter -eq 9){ 16to2 }

elseif($converter -ne 1, 2, 3, 4, 5, 6, 7, 8, 9){
return
}

