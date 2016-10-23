write-host "##teamcity[message text='junior']"

start-process -filepath 'CineParser.exe' -ArgumentList "-mode provider-by-senscritique"

write-host "##teamcity[message text='kibassa']"