#Script by: Luis F. Herrera
#AD Title Case Standardization 
#Targets all the users 
#$name = get-aduser -filter {extensionattribute1 -gt '*'} -Properties displayname |select displayname

#User OU Assingment 
$name = get-aduser AEhlers -Properties displayname, givenname, surname |select name, displayname, givenname, surname
#$name = get-aduser -Filter * -SearchBase "OU=Users,OU=8316,DC=zebra,DC=lan" -Properties displayname, givenname, surname |select name, displayname, givenname, surname
#User change function 
foreach ($usr in $name){
    #Display Name
    $newdisplay = (Get-Culture).textinfo.totitlecase($usr.DISPLAYNAME.tolower())
    set-aduser $usr.name -DisplayName $newdisplay 
    #Last Name
    $newSur = (Get-Culture).textinfo.totitlecase($usr.SURNAME.tolower())
    set-aduser $usr.name -Surname $newSur

    #First Name
    $newfirst = (Get-Culture).textinfo.totitlecase($usr.GIVENNAME.tolower())
    set-aduser $usr.name -GivenName $newfirst 
}
