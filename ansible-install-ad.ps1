# User anlegen
$password = Read-Host 'Enter password: ' -AsSecureString
New-LocalUser -Name "automation" -Password $password -FullName "Automation Ansible User" -Description "Ansible user"

# User in Gruppe 'Administrators' aufnehmen

net localgroup Administratoren automation /add


# Download Ansible WinRM Skript
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://raw.githubusercontent.com/Beecode-Dev/ansible-scripts/main/ConfigureRemotingForAnsible.ps1"
$file = "C:\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)


#Ansible WinRM Skript ausführen
C:\ConfigureRemotingForAnsible.ps1 -ForceNewSSLCert -Verbose


#WinRM Konfiguration anzeigen
winrm get winrm/config/Service
winrm enum winrm/config/Listener
