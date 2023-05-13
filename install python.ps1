# Check if Chocolatey is installed
if (!(Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    Write-Output "There is a utility known as Chocolatey that is not found in your system and currently it is installing"
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Check if Python is installed
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Output "Python is not installed, it is being installed now."
    choco install python -y
}

# Everything is okay!
Write-Output "Everything ok!!!!"

# Your existing script code goes here

# Prompt the user to press any key to exit
Write-Host "Press any key to exit..."
Read-Host

# End of script
