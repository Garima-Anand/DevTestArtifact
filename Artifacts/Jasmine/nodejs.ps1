$uri= "https://g7crtipl-my.sharepoint.com/personal/garima_anand_g7cr_in/_layouts/15/guestaccess.aspx?docid=1d2641174df7d4ef186c117ac329d294c&authkey=AURJdlrLufDbysJd9JQ2kQQ&e=dae62bc8b83041e482504d5003d8598a"
$out = "c:\nodejs_installer.msi"
Invoke-WebRequest -uri $uri -OutFile $out
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $out /quiet /norestart /l c:\installlog.txt"