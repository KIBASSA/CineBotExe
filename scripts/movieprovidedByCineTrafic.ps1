write-host "##teamcity[message text='junior']"


start-process -filepath 'CineParser.exe' -ArgumentList "-mode provider-by-cinetrafic"

write-host "##teamcity[message text='kibassa']"