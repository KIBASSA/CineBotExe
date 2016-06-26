write-host "##teamcity[message text='junior']"
#Start-Process -FilePath "CineParser.exe" -ArgumentList "test"

start-process -filepath 'cineparser.exe'

write-host "##teamcity[message text='kibassa']"