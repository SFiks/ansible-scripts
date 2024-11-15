
# Ansible Script

This Repository is a set of Ansible Scripts I use in my daily wokrprocess as devop.
Mainly focus on installing Ansible in windows environments for our customers to automate windows updates and software installations.




## Get started
To get started you can simply download the powershell scripts and fire them on your server. You'll then get asked for a password for the new user 'automation'. After the installation your server is ready to go for ansible via winrm and ntlm authentication.

netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow

New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Protocol ICMPv4 -Direction Inbound -Action Allow
