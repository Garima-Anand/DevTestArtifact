$uri = "https://aproloydevtestlab901.blob.core.windows.net/artifacts/Brackets.Release.1.11.msi"
$out = "c:\Release.1.11.msi"
Invoke-WebRequest -uri $uri -OutFile $out
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $out /quiet /norestart /l c:\installlog.txt"