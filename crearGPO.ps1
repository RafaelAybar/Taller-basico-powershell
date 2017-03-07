#Creamos las GPO

New-ADOrganizationalUnit Profesorado
New-ADOrganizationalUnit Alumnado 
#Creamos los grupos de usuarios

New-ADGroup -Name "Profesorado" -SamAccountName Profesorado -GroupCategory Security -GroupScope Global -DisplayName "Profesorado" -Path " OU=Profesorado,DC=ras2017,DC=org " -Description "Grupo del profesorado"
New-ADGroup -Name "Alumnado" -SamAccountName Alumnado -GroupCategory Security -GroupScope Global -DisplayName "Alumnado" -Path " OU=Alumnado,DC=ras2017,DC=org " -Description "Alumnado"

#Creamos los usuarios y los asiganmos en el grupo correspondiente

New-ADUser -Name Rafa -GivenName Rafa -Surname Aybar -Path "OU=Alumnado,DC=ras2017,DC=org" -accountPassword (ConvertTo-SecureString -AsPlainText "Rafa-1994" -Force)
New-ADUser -Name Al1 -GivenName Al1 -Surname 2 -Path "OU=Alumnado,DC=ras2017,DC=org" -accountPassword (ConvertTo-SecureString -AsPlainText "Rafa-1994" -Force)
New-ADUser -Name Al2-GivenName Al2 -Surname 2 -Path "OU=Alumnado,DC=ras2017,DC=org" -accountPassword (ConvertTo-SecureString -AsPlainText "Rafa-1994" -Force)
New-ADUser -Name Prof1 -GivenName 1 -Surname 1 -Path "OU=Profesorado,DC=ras2017,DC=org" -accountPassword (ConvertTo-SecureString -AsPlainText "Rafa-1994" -Force)
New-ADUser -Name Prof2 -GivenName 2 -Surname 2 -Path "OU=Profesorado,DC=ras2017,DC=org" -accountPassword (ConvertTo-SecureString -AsPlainText "Rafa-1994" -Force)
Add-ADGroupMember "Alumnado" Rafa,Al1,Al2
Add-ADGroupMember "Profesorado" Prof1,Prof2
