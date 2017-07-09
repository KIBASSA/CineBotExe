Set-Location "D:\CineBotData\DatabaseBackUp";

$dumpExe = (Get-Location).Path + "\mongodump.exe";

& $dumpExe --host '51.255.207.126:27017' -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' -d cinebot

#$importExe = (Get-Location).Path + "\mongoexport.exe";

#& $importExe --host '51.255.207.126:27017' --db cinebot --collection Cinema -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'cinema.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection Person -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'person.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection UserConversations -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'userconversations.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection News -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'news.json'
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection ContributionMoviesProvider -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'contributionmoviesprovider.json';


