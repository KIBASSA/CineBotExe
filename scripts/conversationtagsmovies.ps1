write-host "##teamcity[message text='junior']"

start-process -filepath 'BatchConversation.exe' -ArgumentList "-mode tag-investigations"

write-host "##teamcity[message text='kibassa']"