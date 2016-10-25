write-host "##teamcity[message text='junior']"

start-process -filepath 'BatchCompletor.exe' -ArgumentList "-mode complete-profile-photo"

write-host "##teamcity[message text='kibassa']"