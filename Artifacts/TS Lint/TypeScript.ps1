function Create-Folder {
    Param ([string]$path)
    if ((Test-Path $path) -eq $false) 
    {
        Write-Host "$path doesn't exist. Creating now.."
        New-Item -ItemType "directory" -Path $path
    }
}
function Download-File{
    Param ([string]$src, [string] $dst)
    (New-Object System.Net.WebClient).DownloadFile($src,$dst)
    #Invoke-WebRequest $src -OutFile $dst
}
function WaitForFile($File) {
  while(!(Test-Path $File)) {    
    Start-Sleep -s 10;   
  }  
} 
#$os_type = (Get-WmiObject -Class Win32_ComputerSystem).SystemType -match ‘(x64)’
# SQL Server Installation 
if((Test-Path "C:\TypeScript") -eq $false)
{
    Write-Host "Downloading."
    Download-File "https://g7crtipl-my.sharepoint.com/personal/garima_anand_g7cr_in/_layouts/15/guestaccess.aspx?docid=13bc1d6f0268c42dea584557a54c59865&authkey=AdBTPduKgMm2dFTRyINRHK0&e=f437b9eef44d49ce89ce8dd67d6d5288"
    
}