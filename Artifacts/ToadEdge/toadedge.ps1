$uri = "https://g7crtipl-my.sharepoint.com/personal/garima_anand_g7cr_in/_layouts/15/guestaccess.aspx?docid=1e9a817909d19495c815b07c5b6ce3af5&authkey=AUgASeIPUdmE44ngD_9vQ4M&e=fe8c9fb10ca24eca8814a323a3b3ba8d"
$out = "c:\ToadEdge.msi"
Invoke-WebRequest -uri $uri -OutFile $out
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $out /quiet /norestart /l c:\installlog.txt"