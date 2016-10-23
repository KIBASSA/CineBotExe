write-host "##teamcity[message text='junior']"


start-process -filepath 'CineParser.exe' -ArgumentList "-mode provider-by-google"

write-host "##teamcity[message text='kibassa']"