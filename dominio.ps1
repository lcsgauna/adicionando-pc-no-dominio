$nomedopc | Read-Host "Informe o nome do Computador: "
$dominio | Read-Host "Informe o nome do dominio: "

Rename-Computer -NewName $nomedopc
add-computer -domainname $dominio -cred $dominio\administrator -passthru

Restart-Computer