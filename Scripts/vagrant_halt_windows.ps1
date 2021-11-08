#Vagrant Boxes
$debian = "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Debian"
$centos = "F:\CERTIFICACAO\lpic-1-101500\Vagrant\Centos\"

#up debian
Set-Location $debian
vagrant halt

#up centos
Set-Location $centos
vagrant halt