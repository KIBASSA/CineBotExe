write-host "##teamcity[message text='junior']"

#$Username = "Administrator"
#$Password = "TECKIONS2016"

#$Credential = New-Object System.Management.Automation.PSCredential ("$UserName",(ConvertTo-SecureString -String $Password -AsPlainText -Force))

#start-process -filepath 'cineparser.exe' -ArgumentList "-mode cinemaalwaysshowing" -Credential $Credential

start-process -filepath 'BatchCompletor.exe' -ArgumentList "-mode complete-note-movie-this-week -start 0 -offset 400"

start-process -filepath 'BatchCompletor.exe' -ArgumentList "-mode complete-note-movie-on-display -start 0 -offset 400"

start-process -filepath 'BatchCompletor.exe' -ArgumentList "-mode complete-note-next-movie -start 0 -offset 400"



write-host "##teamcity[message text='kibassa']"