# Load WinSCP .NET assembly
Add-Type -Path "WinSCPnet.dll"

# Setup session options
$sessionOptions = New-Object WinSCP.SessionOptions -Property @{
    Protocol = [WinSCP.Protocol]::Ftp
    HostName = "51.255.207.126"
    UserName = "MongoBackup"
    Password = "emiko122"
}

$session = New-Object WinSCP.Session

try
{
    # Connect
    $session.Open($sessionOptions)

    # Download files
    $session.GetFiles("/*", "C:\Users\Administrator\Documents\Database-Backup\*").Check()
}
finally
{
    # Disconnect, clean up
    $session.Dispose()
}



#$importExe = (Get-Location).Path + "\mongoexport.exe";

#& $importExe --host '51.255.207.126:27017' --db cinebot --collection Cinema -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'cinema.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection Person -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'person.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection UserConversations -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'userconversations.json';
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection News -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'news.json'
#& $importExe --host '51.255.207.126:27017' --db cinebot --collection ContributionMoviesProvider -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' --out 'contributionmoviesprovider.json';


