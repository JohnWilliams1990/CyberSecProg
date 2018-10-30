set-executionpolicy unrestricted 

# diable notifications
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1

# disable windows defender 
Set-MpPreference -DisableRealtimeMonitoring $true # disable defender 


Add-MpPreference -ExclusionPath "C:\Users\student\Downloads"
Add-MpPreference -ExclusionPath "C:\Users\student\Desktop"


$destination ="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" # startup folder
Write-Host $destination 

#New-NetIPAddress –IPAddress “192.168.0.1” –PrefixLength 24 -DefaultGateway 192.168.0.254 -InterfaceIndex (Get-NetAdapter).InterfaceIndex 

New-NetIPAddress 192.168.1.10 -interfaceAlias Ethernet0 -DefaultGateway 192.168.1.1 -AddressFamily IPV4 -PrefixLength 24

#http://www.itingredients.com/how-to-change-ip-address-using-powershell-windows-server-2012-r2/
