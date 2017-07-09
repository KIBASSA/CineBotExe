write-host "##teamcity[message text='wakeup']"

start-process -filepath 'cineparser.exe' -ArgumentList "-mode wakeup"

write-host "##teamcity[message text='wakeup']"