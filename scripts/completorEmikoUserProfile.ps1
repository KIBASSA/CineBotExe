write-host "##teamcity[message text='junior']"

#$Username = "Administrator"
#$Password = "TECKIONS2016"

#$Credential = New-Object System.Management.Automation.PSCredential ("$UserName",(ConvertTo-SecureString -String $Password -AsPlainText -Force))

#start-process -filepath 'cineparser.exe' -ArgumentList "-mode cinemaalwaysshowing" -Credential $Credential

start-process -filepath 'BatchCompletor.exe' -ArgumentList "-mode complete-emiko-user-profile -start 0 -offset 100"

write-host "##teamcity[message text='kibassa']"