write-host "##teamcity[message text='junior']"

start-process -filepath 'cineparser.exe' -ArgumentList "-mode moviesThisWeek"

write-host "##teamcity[message text='kibassa']"