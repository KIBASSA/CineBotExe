write-host "##teamcity[message text='updatecache']"

start-process -filepath 'cineparser.exe' -ArgumentList "-mode updatecache"

write-host "##teamcity[message text='cache update']"