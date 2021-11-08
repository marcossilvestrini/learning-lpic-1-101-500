#Vagrant Boxes
$debian = "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Debian"
$centos = "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Centos\"

#up debian
Set-Location $debian
vagrant up

#up centos
Set-Location $centos
#download box if error certificate
#vagrant box add --insecure centos/8
vagrant up

#Fix powershell error
$Env:VAGRANT_PREFER_SYSTEM_BIN += 0

#open ssh tabs for conect
wt -p "Windows Powershell" -d "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Debian" --title "Vagrant Debian"; wt -w 0 nt -d "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Centos" --title "Vagrant Centos"