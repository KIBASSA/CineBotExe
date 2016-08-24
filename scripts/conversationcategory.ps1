write-host "##teamcity[message text='junior']"

start-process -filepath 'BatchConversation.exe' -ArgumentList "-mode category-investigations"

write-host "##teamcity[message text='kibassa']"