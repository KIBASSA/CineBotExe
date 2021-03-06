﻿$backupFolder = [Environment]::GetFolderPath("MyDocuments") + "\DatabaseBackup";


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
$index = 0;

#manualy 
#try
#    {
#        while ($index -le 20){
#            try
#            {
#                $index++;
#                # Connect
#                $session.Open($sessionOptions)
#
#                # Download files
#                $session.GetFiles("/*", [Environment]::GetFolderPath("MyDocuments") + "\DatabaseBackup\*").Check()
#                break;
#            }
#            Catch
#            {
              #nothing
#            }
#        }
#    }
#    finally
#    {
        
        # Disconnect, clean up
#        $session.Dispose()
#    }







Set-Location $backupFolder;

#•drop database
$mongoExe = $backupFolder + "\mongo.exe";

& $mongoExe --host 'localhost:27017' -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' cinebot --eval "db.dropDatabase()";

#restore databse
$restoreExe = $backupFolder + "\mongorestore.exe";

& $restoreExe --host 'localhost:27017' -u 'adminemiko' -p 'KIBASSA13MALIBA' --authenticationDatabase 'admin' ([Environment]::GetFolderPath("MyDocuments") + "\DatabaseBackup\dump");
