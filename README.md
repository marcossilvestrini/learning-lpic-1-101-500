# LEARNNING LPIC-1 101-500

![101-500_ Linux Administrator - 101 (LPIC-1 101)](https://user-images.githubusercontent.com/62715900/133132076-c84f0bad-5475-4c3a-9cb4-c9403234778c.png)

>This project aims to help students or professionals to learn the main concepts of GNU \ Linux and free software\
Some GNU \ Linux distributions like Debian and RPM will be covered\
Installation and configuration of some packages will also be covered\
>***Four Essential Freedoms:***\
>0.The freedom to run the program as you wish, for any purpose (freedom 0).\
>1.The freedom to study how the program works, and change it so it does your computing as you wish (freedom 1).\
>Access to the source code is a precondition for this.\
>2.The freedom to redistribute copies so you can help others (freedom 2).\
>3.freedom to distribute copies of your modified versions to others (freedom 3).\
>By doing this you can give the whole community a chance to benefit from your changes.\
>Access to the source code is a precondition for this.
>Use vagrant for up machines and execute labs and practice content in this article.\
>I have published in folder Vagrant a Vagrantfile with what is necessary for you to upload an environment for studies

## Authors

- Marcos Silvestrini
- marcos.silvestrini@gmail.com

## License

- This project is licensed under the MIT License - see the LICENSE.md file for details

## References

- [Richard Stallman's](http://www.stallman.org/)
- [GNU/Linux FAQ by Richard Stallman](https://www.gnu.org/gnu/gnu-linux-faq.html)
- [GNU](https://www.gnu.org/)
- [GNU Operating System](https://www.gnu.org/gnu/thegnuproject.html)
- [GNU Packages](https://www.gnu.org/software/)
- [Collection GNU/Linux](https://directory.fsf.org/wiki/Collection:GNU/Linux)
- [Hurd](https://www.gnu.org/software/hurd/hurd/what_is_the_gnu_hurd.html)
- [GCC Compiler](https://gcc.gnu.org/wiki/History)
- [GNU Tar](https://www.gnu.org/software/tar/)
- [GNU Make](https://www.gnu.org/software/make/)
- [GNU Emacs](https://en.wikipedia.org/wiki/Emacs)
- [Bourne Again Shell](https://www.gnu.org/software/bash/manual/)
- [Shebang](https://bash.cyberciti.biz/guide/Shebang)
- [Environment Variables](https://linuxize.com/post/how-to-set-and-list-environment-variables-in-linux/)
- [GNU Globbing](https://man7.org/linux/man-pages/man7/glob.7.html)
- [Globbing](https://linuxhint.com/bash_globbing_tutorial/)
- [Quoting](https://www.gnu.org/software/bash/manual/html_node/Quoting.html)
- [Regular Expressions](https://www.gnu.org/software/grep/manual/html_node/Regular-Expressions.html)
- [Bash RC Generator](http://bashrcgenerator.com/)
- [Explainshell](https://explainshell.com/)
- [GNU GNOME](https://www.gnu.org/press/gnome-1.0.html)
- [GNOME](https://www.gnome.org/)
- [Harmony](https://en.wikipedia.org/wiki/Harmony_(toolkit))
- [Kernel](https://www.kernel.org/)
- [FSF](https://www.fsf.org/campaigns/)
- [Free Software Directory](https://directory.fsf.org/wiki/Free_Software_Directory:Free_software_replacements)
- [Free Software](https://www.gnu.org/philosophy/free-sw.html)
- [Copyleft](https://www.gnu.org/licenses/copyleft.en.html)
- [GPL](https://www.gnu.org/licenses/quick-guide-gplv3.html)
- [BSD](https://opensource.org/licenses/BSD-3-Clause)
- [Open Source Initiative](https://opensource.org/)
- [Creative Commons](https://creativecommons.org/)
- [GNU Lesser General Public License](https://www.gnu.org/licenses/lgpl-3.0.html)
- [License LTS](https://en.wikipedia.org/wiki/Long-term_support)
- [List Linux Distribution](https://en.wikipedia.org/wiki/List_of_Linux_distributions)
- [Distro Watch](https://distrowatch.com/)
- [Comparison Linux Distributions](https://en.wikipedia.org/wiki/Comparison_of_Linux_distributions)
- [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)
- [File Hierarchy Structure](https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf)
- [Linux Standard Base](https://en.wikipedia.org/wiki/Linux_Standard_Base)
- [Bugzila](https://bugzilla.kernel.org/)
- [DistroTest](https://distrotest.net/index.php)
- [Katacoda](https://www.katacoda.com/)
- [PCI ID Repository](https://pci-ids.ucw.cz)
- [USB ID Repository](http://www.linux-usb.org/usb-ids.html)
- [Grub Boot](https://docs.fedoraproject.org/en-US/quick-docs/bootloading-with-grub2/)
- [Debian Free Software Guidelines](https://www.debian.org/social_contract#guidelines)-
- [KVM Docs](https://www.linux-kvm.org/page/Documents)
- [Download Packages](https://pkgs.org/)
- [Commands Examples](https://www.geeksforgeeks.org/)
- [Force Kernel Panic](https://www.ibm.com/support/pages/forcing-fake-kernel-panic-testing)
- [LPIC-1 101-500 Objectives](https://www.lpi.org/our-certifications/exam-101-objectives)
- [Learning Materials LPIC-1 101-500](https://learning.lpi.org/en/learning-materials/101-500/)
- [Moc Exam By ITexams](https://www.itexams.com/exam/101-500)

## Topic 101: System Architecture

### 101.1 Determine and configure hardware settings

#### Important Files of topic 101.1

- /sys/
- /proc/
- /proc/cpuinfo
- /proc/interrupts
- /proc/ioports
- /proc/dma
- /dev/
- /usr/share/hwdata/usb.ids
- /usr/share/hwdata/pci.ids
- /etc/modprobe.conf
- /etc/modprobe.d/<module_name>.conf
- /etc/modprobe.d/blacklist.conf
- /etc/udev/rules.d/

#### Important Commands\Programs of topic 101.1

##### lspci - list all PCI devices

```sh

#get some device for examples
id=`lspci | cut -c 1-8 | tail -n 1`

#show all devices connected
lspci

#show detail for specific device
lspci -s $id -v

#show kernel drivers for all devices connected
lspci -k

#show kernel driver for specific device
lspci -s $id -k
```

##### lsusb - list USB devices

```sh
#install
sudo apt-get install usbutils
sudo yum install usbutils

#get some device for examples
id=`lsusb | cut -c 24-32 | head -n 1`

#show all usb devices connected
lsusb

#show USB device hierarchy as a tree
lsusb -t

#show detail for specific device
lsusb -vd $id
```

##### lsmod -  Show the status of modules in the Linux Kernel

```sh
#show all modules
lsmod
```

#### modprobe - Add and remove modules from the Linux Kernel

```sh
#unload module
modprobe -r snd-hda-intel
```

##### modinfo - Show information about a Linux Kernel module

```sh
#show all info
modinfo video

#show resume info
modinfo -p video
```

### 101.2 Boot the system

#### Important Files of topic 101.2

- /etc/default/grub
- /boot/grub/grub.cfg
- /proc/cmdline
- /etc/fstab
- /var/log/
- /var/log/journal/

#### Important Commands\Programs of topic 101.2

##### grub-mkconfig - generate a GRUB configuration file

```sh
#load new grub settings in file /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

##### dmesg - print or control the kernel ring buffer

```sh
#show all messages
sudo dmesg

#enable  human-readable  output.
sudo dmesg -H

#clear all messages
sudo dmesg --clear
```

##### journalctl - Query the systemd journal

```sh
#show all mesages
sudo journalctl

#show messages for actual boot
sudo journalctl -b 0

#show messages from the previous initialization
sudo journalctl -b -1

#show the messages from the initialization before that and so on
sudo journalctl -b -2
```

#### Cited subjects in topic 101.2

- BIOS
- UEFI
- MBR
- bootloader
- kernel
- SysVinit
- initramfs
- init
- systemd

#### Using the GRUB2 boot prompt(kernel panic case)

In this case, I use filesystem partition with LVM\
Partition Map:

![fs_map](https://user-images.githubusercontent.com/62715900/134416632-30661eff-6a50-4ff9-8da7-98b3355f96e3.png)

After you boot the machine and enter in grub shell(press c after power on machine)...

##### Load the XFS and LVM modules

```sh
grub> insmod xfs
grub> insmod lvm
```

##### List the drives which GRUB2 sees:

```sh
grub> ls
```

![image](https://user-images.githubusercontent.com/62715900/134421176-366c443e-8bfa-49df-83db-daa7f78a7a09.png)

##### Examine the output to understand the partition table of the /dev/sda device.The following example shows a DOS partition table with three partitions:

```sh
grub> ls -l
```

red: LVM partition table\
green: DOS partition table\
![image](https://user-images.githubusercontent.com/62715900/134421568-92bf41dd-7530-416c-acd8-1250e3d169b3.png)

##### Probe each partition of the drive and locate your vmlinuz and initramfs files.

```sh
grub> ls (hd0,1)/
```

![image](https://user-images.githubusercontent.com/62715900/134422418-08805d84-727f-49cc-835a-8c79d0b61b21.png)

##### Set the root partition

```sh
grub> set root=(hd0,1)
```

This command tells the bootloader, that the root partition is the first partition on the first drive. This would correspond to the /dev/sda1 device.

##### Set the desired kernel(set root filesystem in lvm mapper).

```sh
grub> linux (hd0,1)/vmlinuz-VERSION_YOUR_KERNEL root=/dev/mapper/debian--vg-root
```

##### Set the desired initrd

```sh
grub> initrd (hd0,1)/initramfs-VERSION_YOUR_KERNEL.img
#or

grub> initrd (hd0,1)/initrd-VERSION_YOUR_KERNEL.img
```

##### Boot with the selected settings.
```sh
grub> boot
```

### 101.3 Change runlevels / boot targets and shutdown or reboot system

#### Important Files of topic 101.3

- /etc/inittab
- /etc/init.d/
- /etc/systemd/
- /usr/lib/systemd/
- /run/utmp
- /etc/systemd/system/default.target
- /etc/systemd/logind.conf
- /etc/shutdown.allow

#### Import Commands\Programs of topic 101.3

##### - Change SysV runlevel

```sh
#change level mode for 1
sudo telinit 1

#reload deamon configuration - /etc/inittab
sudo telinit q
```

##### runlevel - Print previous and current SysV runlevel

```sh
sudo runlevel
```

##### - systemctl

```sh
#Starts unit.
systemctl start apache2.service

#Stops unit.
systemctl stop apache2.service

#Restarts unit.
systemctl restart apache2.service

#Shows the state of unit, including if it is running or not.
systemctl status apache2.service

#Shows active if unit is running or inactive otherwise.
systemctl is-active apache2.service

#Enables unit, that is, unit will load during system initialization.
systemctl enable apache2.service

#unit will not start with the system.
systemctl disable apache2.service

#Verifies if unit starts with the system. The answer is stored in the variable $?.
#The value 0 indicates that unit  starts with the system and the value 1 indicates
#that unit does not starts with the system.
systemctl is-enabled apache2.service

#alter default runlevel \ default target
systemctl set-default multi-user.target

#determine what your system’s default boot target
systemctl get-default

#list all units available
systemctl list-unit-files

#list units available now
systemctl list-units

#list service units only
systemctl list-unit-files --type service

#shutdown system
sudo systemctl poweroff

#reboot system
sudo systemctl reboot
```

##### shutdown - Halt, power-off or reboot the machine

```sh
#reboot system
shutdown -r
shutdown -r now
```

##### wall - write a message to all users

```sh
#send message for all users
wall "Helo guys!!!"

#use file with messages
wall < wall-message.txt
```

#### Cited subjects in topic 101.3

- SysV
- UpStart
- init
- systemd

## Topic 102: Linux Installation and Package Management

### 102.1 Design hard disk layout

#### Important Files of topic 102.1

- / (root) filesystem
- /var filesystem
- /home filesystem
- /boot filesystem
- /var/www/html
- /var/lib/mysql

#### Cited subjects in topic 102.1

- EFI System Partition (ESP)
- swap space
- mount points
- partitions

### 102.2 Install a boot manager

#### Important Files of topic 102.2

- /boot/grub/grub.cfg
- /boot/grub/menu.lst
- /boot/grub/i386-pc
- /boot/grub/locale
- /boot/grub/fonts
- /etc/default/grub
- /boot/efi
- /etc/grub.d

#### Import Commands\Programs of topic 102.2

- fdisk - manipulate disk partition table

```sh
#show all partitions in primary device
sudo fdisk -l /dev/sda
```

- Find UUID of block device \ filesystem

```sh
ls -l /dev/disk/by-uuid/
```

- grub-install - install GRUB to a device
- update-grub, update-grub2 - stub for grub-mkconfig
- grub-mkconfig

#### Cited subjects in topic 102.2

- MBR
- GRUB 2
- GRUB Legacy

### 102.3 Manage shared libraries

#### #### Important Files of topic 102.3

/lib
/lib32
/lib64
/usr/lib
/usr/local/lib
/etc/ld.so.conf
ld.so,ld-linux.so
/etc/ld.so.cache

#### Import Commands\Programs of topic 102.3

##### ldconfig - configure dynamic linker run-time bindings

```sh
#show version, path name and linkers
sudo ldconfig -v

#print cache
sudo ldconfig -p
```

##### ldd - print shared object dependencies

```sh
#show all dependencies
ldd /usr/bin/git

#show unused direct dependencies
ldd -u /usr/bin/git
```

#### Cited subjects in topic 102.3

LD_LIBRARY_PATH

### 102.4 Use Debian package management

#### Important Files of topic 102.4

- /etc/apt/sources.list
- /etc/apt/sources.list.d
- /var/cache/apt/archives
- /var/cache/apt/archives/partial/

#### Import Commands\Programs of topic 102.4

##### dpkg - package manager for Debian

```sh
#install package
sudo dpkg -i PACKAGENAME

#remove package
sudo dpkg -r PACKAGENAME

#remove package and configuration files
sudo dpkg -P PACKAGENAME

#show all instaled packages
dpkg --get-selections

#show specific instaled package
dpkg -L PACKAGENAME
```

##### dpkg-query - a tool to query the dpkg database

```sh
#Finding Out Which Package Owns a Specific File
dpkg-query -S /usr/share/man/man8/update-java-alternatives.8.gz

#show all packages
dpkg-query -l
```

##### dpkg-reconfigure

```sh
#Reconfiguring Installed Packages
sudo dpkg-reconfigure PACKAGENAME
```

##### apt-get

```sh
#update index package
sudo apt-get update

#install package
sudo apt-get install git

#remove package
sudo apt-get remove git

#remove package and configuration files
sudo apt-get purge git
sudo apt-get remove --purge git

#fix broken dependences
apt-get install -f

#update all packages
sudo apt-get update
sudo apt-get upgrade

#update specific package
sudo apt-get update
sudo apt-get upgrade PACKAGENAME

#clear local package cache
apt-get clean
```

##### apt-cache - query the APT cache

```sh
#find specific package
apt-cache search ansible

#inspect specific package
apt-cache show ansible
```

##### apt-file

```sh
#update cache
apt-file update

#show content of package
apt-file list git

#find file in all instaled packages
apt-file search libpthread.so.0
```

### 102.5 Use RPM and YUM package management

#### Important Files of topic 102.5

- /etc/yum.conf
- /etc/yum.repos.d/

#### Import Commands\Programs of topic 102.5

##### rpm - RPM Package Manager

```sh
#install package
sudo rpm -ivh PACKAGENAME

#update package
rpm -U PACKAGENAME
rpm -F PACKAGENAME

#remove package
sudo rpm -e PACKAGENAME

#show info package
rpm -qi PACKANAME
rpm -qip FILENAME

#show content package
rpm -ql PACKAGENAME
rpm -qip FILENAME

#finding out which package has a specific file
rpm -qf /usr/bin/7za
```

##### yum - redirecting to DNF Command Reference

```sh
#find package (YUM - DNF)
yum serach PACKAGENAME
dnf serach PACKAGENAME

#install package (YUM - DNF)
sudo yum install PACKAGENAME
sudo dnf install PACKAGENAME

#remove package (YUM - DNF)
sudo yum remove PACKAGENAME
sudo dnf remove PACKAGENAME

#check if exist update for package
yum check-update PACKAGENAME

#update all packages (YUM - DNF
sudo yum update
sudo dnf update

#update package (YUM - DNF)
sudo yum update PACKAGENAME
sudo dnf upgrade PACKAGENAME

#how to find the package that provides a specific file (YUM - DNF)
yum whatprovides FILENAME
dnf provides FILENAME

#show all packages info (YUM - DNF)
yum info --installed
dnf list --installed

#show specifc package info (YUM - DNF)
yum info PACKAGENAME
dnf info PACKAGENAME

#show all repos (YUM - DNF)
yum repolist all
dnf repolist all

#add new repo (YUM - DNF)
sudo yum-config-manager --add-repo https://rpms.remirepo.net/enterprise/remi.repo
sudo dnf config-manager --add-repo https://rpms.remirepo.net/enterprise/remi.repo

#disable repo (YUM - DNF)
yum-config-manager --disable updates
dnf config-manager --set-disable updates

#enable repo (YUM - DNF)
yum-config-manager --enable updates
dnf config-manager --set-enabled pdates

```

##### zypper - Command-line interface to ZYpp system management library (libzypp)

```sh
#update index package
sudo zypper refresh

#find packages
zypper search git
zypper se git

#show all instaled packages
zypper search -i
zypper se -i

#find if specific package is it installed
zypper search -i git
zypper se -i git

#find if specific package is it  not installed
zypper search -u git
zypper se -u git

#install package
sudo zypper install git
sudo zypper in git
sudo zypper in ~/package.rpm

#check updates packages
zypper list-updates

#update all packages
sudo zypper update

#remove package
sudo zypper remove git
sudo zypper rm git
sudo zypper rm git*

#finding out which packages have a specific file
zypper search --provides /usr/lib/git
zypper se --provides /usr/lib/git

#show info package
zypper info git

#show repos
zypper repos

#disable repo
sudo zypper modifyrepo -d repo-non-oss

#enable repo
sudo zypper modifyrepo -e repo-non-oss

#disable autorefresh repository
sudo zypper modifyrepo -F openSUSE-Leap-42.3-Update-Non-Oss

#enable autorefresh repository
sudo zypper modifyrepo -f openSUSE-Leap-42.3-Update-Non-Oss

#add repo
sudo zypper addrepo http://packman.inode.at/suse/openSUSE_Leap_15.1/ packman

#remove repo
sudo zypper removerepo packman
```

##### rpm2cpio - Extract cpio archive from RPM Package Manager (RPM) package.

```sh
#extrac cpio content and save in txt file
rpm2cpio rpm-1.1-1.i386.rpm >git-cpio.txt
```

### 102.6 Linux as a virtualization guest

#### Important Files of topic 102.6

- /etc/libvirt/qemu
- /etc/libvirt/qemu/networks/
- /var/lib/libvirt/images/
- /var/lib/dbus/machine-id ->/etc/machine-id

#### Import Commands\Programs of topic 102.6

##### dbus-uuidgen - Utility to generate UUIDs

```sh
#check id exist uuid
dbus-uuidgen --ensures

#show uuid
dbus-uuidgen --get

#generate new uuid for virtual machine
sudo rm -f /etc/machine-id
sudo dbus-uuidgen --ensure=/etc/machine-id
```

##### ssh-keygen — authentication key generation, management and conversion

```sh
#generate a new pair ssh keys
ssh-keygen

#copy public key for remote server
ssh-copy-id -i <public_key> user@cloud_server

```

#### Cited subjects in topic 102.6

- Virtual machine
- Linux container
- Application container
- Guest drivers
- SSH host keys
- D-Bus machine id
- Oracle Virtual Box
- Red Hat Enterprise Virtualization
- oVirt
- Cloud Init

##### Use KVM in Debian

Step:1) Check Whether Virtualization Extension is enabled or not:

```sh
egrep -c '(vmx|svm)' /proc/cpuinfo
grep -E --color '(vmx|svm)' /proc/cpuinfo
```

Step:2) Install QEMU-KVM & Libvirt packages along with virt-manager

```sh
#install libvirt packages
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system \
bridge-utils virtinst libvirt-daemon virt-manager -y

#check status libvirt
sudo systemctl status libvirtd.service
```

Step:3) Start default network and add vhost_net module

```sh
#show network default and Start
sudo virsh net-list --all

#make it active and auto-restart across the reboot
sudo virsh net-start default
sudo virsh net-autostart default

#add “vhost_net” kernel module
sudo modprobe vhost_net

#add user in  libvirt groups
sudo adduser myuser libvirt
sudo adduser myuser libvirt-qemu

#to refresh or reload group membership run the followings,
newgrp libvirt
libvirt-qemu
```

Step:4) Create Linux Bridge(br0) for KVM VMs

```sh
sudo vi /etc/network/interfaces
```

```sh
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug ens34
auto ens34
iface ens34 inet manual

#Configure bridge and give it a static ip
auto br0
iface br0 inet static
        address 192.168.0.133
        netmask 255.255.255.0
        network 192.168.0.1
        broadcast 192.168.0.255
        gateway 192.168.0.1
        bridge_ports ens34
        bridge_stp off
        bridge_fd 0
        bridge_maxwait 0
        dns-nameservers 1.1.1.1

# This is an autoconfigured IPv6 interface
iface ens34 inet6 auto
```

```sh
#reboot system
sudo reboot

#check network changes
ip a s br0
```

Step:5) Create Virtual Machines either via Virt-Manager (GUI) or virt-install (command line)

```sh

```

## Topic 103: GNU and Unix Commands

### 103.1 Work on the command line

#### Important Files of topic 103.1

- ~/.bash_history

#### Import Commands\Programs of topic 103.1

##### - pwd - print name of current/working directory

```sh
#show current directory
pwd
```

##### Command touch -  Change file timestamps

```sh
#create file
touch foo.txt
touch arquive{1..5}.txt

#Update the access and modification times of each FILE to the current time
touch foo.txt
touch -a foo.txt
touch -ca foo.txt
touch -cm foo.txt
```

##### uname - print system information

```sh
#show all system information
uname -a

#show kernel name
uname -n

#show kernel release
uname -r
```

#### Command Man - Manual pager utils

**Path for docs in Linux**\
/usr/share/doc/

Each man page is divided in maximum of 11 sections, though many of these sections are optional:

|SECTION    | DESCRIPTION|
|:--------- |:---------|
|NAME       |Command name and brief description|
|SYNOPSIS   |Description of the command’s syntax|
|DESCRIPTION|Description of the effects of the command|
|OPTIONS    |Available options|
|ARGUMENTS  |Available arguments|
|FILES      |Auxiliary Files|
|EXAMPLES   |A sample of the command line|
|SEE ALSO   |Cross-reference to the related topics|
|DIAGNOSTICS|Warnning and Error messages|
|COPYRIGHT  |Author(s) of the command|
|BUGS       |Any known limitations of the command

Man pages are organized in eight categories, numbered from 1 to 8:

|CATEGORY   |DESCRIPTION|
|:----------|:----------|
|1          |Executable programs or shell commands|
|2          |System calls (functions provided by the kernel)|
|3          |Library calls (functions within program libraries)|
|4          |Special files (usually found in /dev)|
|5          |File formats and conventions eg /etc/passwd|
|6          |Games|
|7          |Miscellaneous (including macro packages and conventions), e.g. man(7), groff(7)|
|8          |System administration commands (usually only for root)|
|9          |Kernel routines [Non standard]|

```linux

man [COMMAND]

Examples:
man ls

# print all ocorrences
man -a ls

#specific man page
man 5 passwd

#similar apropos
man -k ascii
man -k compiler

#similar whatis
man -f zip

#file of config man path
/etc/manpath.config

#list all path of manuals
manpath
```

#### apropos - Search the manual page names and descriptions(man -k)

```sh
apropos pwd
```

##### Command Type - Display information about command type

```sh
type echo
type cp
type if
type -t pwd
type -a ls
```

##### Command which - shows the full path of (shell) commands

```sh
which pwd
#print all matching pathnames of each argument
which -a python
```

##### Command History - Display or manipulate the history list

```sh
history

# clear history
history -c

The three related environment variables you need to be aware of are
HISTFILE, HISTFILESIZE, and HISTSIZE.

HISTFILE—/home/<username>/.bash_history
HISTFILESIZE—1000
HISTSIZE—1000
```

##### env - run a program in a modified environment

```sh
#show all environment variable
env
```

##### echo - display a line of text

```sh
echo "Hello World"
echo "This command save this string in file" > ~/example_echo
echo $PATH
```

- export: export variable for childrens bash
- set: print all environment variables
- unset: unset values of variable
- bash: enter in children bash

#### Cited subjects in topic 103,1

- Quoting

### 103.2 Process text streams using filters

#### Important Files of topic 103.2

#### Import Commands\Programs of topic 103.2

##### cat - concatenate files and print on the standard output

```sh
cat foo.txt
cat foo.txt bar.txt
```

##### GNU diff - compare files line by line

```sh
diff file1 file2
```

##### gzip, gunzip, zcat - compress or expand files

```sh
#view content of gz file
zcat ftu.gz
```

##### bzip2, bunzip2 , bzcat - decompresses files to stdout

```sh
bzcat foo.bz2
```

##### xzcat - decompresses files to stdout

```sh
xzcat bar.xz
```

#### tail - output the last part of files

```sh
tail foo.txt

#print N last lines
tail -n 20 foo.txt

#use -n +K to output lines starting with the K
tail -n +30 foo.txt

#follow file
tail -f foo.log
```

#### head - output the first part of files

```sh
head foo.txt

#print N first lines in quiet mode
head -n 2 -q foo.txt
```

##### nl - number lines of files

```sh
nl foo.txt
sudo head /var/log/syslog | nl
```

#### wc - print newline, word, and byte counts for each file

```sh
wc foo.txt
wc -c bar.txt #bytes
wc -l foo.txt #lines
wc -m bar.txt #chars
wc -w bar.txt #words
wc -L bar.txt #big line
```

#### grep, egrep, fgrep - print lines matching a pattern

```sh
#simple find
sudo grep "OS Version:" /var/log/syslog

#ignore case
sudo grep -i Version /var/log/syslog

#per line
sudo grep -n "OS Version:" /var/log/syslog
sudo grep -in Version /var/log/syslog


#count
sudo grep -c Version /var/log/syslog

#regular expression
grep 'vers' /var/log/syslog
grep "Sep 29 09:[0-3]" /var/log/syslog
grep "[[:digit:]]" /var/log/syslog
grep "Sep 29 09:[0-3][[:digit:]]" /var/log/syslog

#deny\invert expression
grep -v "[[:digit:]]\+[:,\]\?[[:digit:]]\+" /var/log/syslog
zcat ftu.txt.gz | grep -v cat

#recursive
grep -r  "[[:digit:]]\+[:,\]\?[[:digit:]]\+"

#pipe
grep erro protheus.log | grep "[[:digit:]]"
ls | grep "[[:digit:]]"
ls | grep "[[:punct:]]"
```

##### sed - stream editor for filtering and transforming text

```sh
#find specific string
sed -n /cat/p < ftu.txt

#replace string (cat--->dog)
sed s/cat/dog/ < ftu.txt

#replace string (cat--->dog) and generate new backup file
sed -i.backup s/cat/dog/ ftu.txt
```

##### od - dump files in octal and other formats

```sh
#show content file in octal
od foo.txt

#show content file in hexadecimal
od -x foo.txt

#show all chars (debug mode)
od -c foo.txt
od -An -c ftu.txt
```

##### md5sum - compute and check MD5 message digest

```sh
#create hash md5
md5sum foo.txt >shamd5.txt

#check integrity
md5sum -c shamd5.txt
```

##### sha256sum - compute and check SHA256 message digest

```sh
#create hash sha256
sha256sum foo.txt > sha256.txt
#check integrity
sha256sum -c sha256-foo.txt
```

##### sha512sum - compute and check SHA512 message digest

```sh
#create hash sha512
sha512sum foo.txt > sha512.txt
#check integrity
sha512sum -c sha512-foo.txt
```

#### paste

```sh

```

##### cut

```sh
#merge files
paste file1 file2 file3

#merge file with delimiter
paste -d\; file1 file2
```

##### tr - translate or delete characters

```sh
#replace char x - @
tr "x" "@" < /etc/passwd

#convert lower case to upper case
tr "[a-z]" "[A-Z]" < /etc/passwd
tr "[:lower:]" "[:upper:]" < /etc/passwd

#how to translate white-space to tabs
echo "Welcome To GeeksforGeeks" | tr [:space:] '\t'

#How to translate braces into parenthesis
echo "Word: {Hello people}" | tr "{}" "()"

#How to use squeeze repetition of characters using -s
echo "This   is          spaces " | tr -s [:space:] ' '

#How to delete specified characters using -d option
echo "Welcome To GeeksforGeeks" | tr -d 'W'

#To remove all the digits from the string, use
echo "My ID is 1231854874789" | tr -d [:digit:]

#How to complement the sets using -c option
echo "my ID is 73535" | tr -cd [:digit:]
```

##### sort

```sh
#sort by name
sort < /etc/passwd

#out sort in file
sort -o new-users users

#Sorting In Reverse Order
sort -r < /etc/passwd

#sort a file numerically
sort -n list.txt

#sorte table by colum
sort -k2 table

#check if the file given is already sorted or not
sort -c users.txt

#sort and remove duplicates
sort -u users.txt

#sort by month
sort -M months.txt


```

##### split

```sh
#split default (1000 lines per file)
split bigifile

#Split file based on number of lines
split -l 10 bifile
split -l 10 bifile --verbose

#Split file size using ‘-b’ option.
split -b 10000 bifile  --verbose

#Change in suffix length. By default, the suffix length is 2.
#We can also change it using ‘-a’ option.
split -l 4 -a 6 bigfile

#Split files created with numeric suffix. In general, the output has a format of x** where
#** are alphabets. We can change the split files suffix to numeric by using the ‘-d’ option.
split -l 5 -d bigfile

#Create n chunks output files. If we want to split a file into three chunk
#output files then use the ‘-n’ option with the split command which limits the number of split output files.
split -n 5 bigfile

#Split file with customize suffix. With this command, we can create split output files with customizing suffix.
#Assume, if we want to create split output files with index suffix, execute the following command.

split -n 7 -d bigfile part-

#Avoid zero-sized split files. There are situations when we split a small file into a large number of chunk
#files and this may lead to zero size split output files. They do not add any value so to avoid it we use the option ‘-e’.
split -l 2 -e short-file

#Split the file into two files of equal length. To split a file equally into two files,
#we use the ‘-n’ option. By specifying ‘-n 2’ the file is split equally into two files.
split -n 2 -d  bigfile part-
```

##### uniq - report or omit repeated lines

```sh
#It tells the number of times a line was repeated.
uniq -c file

#It only prints the repeated lines.
uniq -d file

#It also prints only duplicate lines but not one per group.
uniq -D file

#It prints only the unique lines.
uniq -u file

#As told above, this allows the N fields to be skipped while comparing uniqueness of the lines.
#This option is helpful when the lines are numbered
uniq -f 2 f1.txt

#This is similar to -f N option but it skips N characters but not N fields
uniq -s 3 file

#Similar to the way of skipping characters, we can also ask uniq to limit the comparison to a
#set number of characters. For this, -w command line option is used.
uniq -w 3 file

#It is used to make the comparison case-insensitive.
uniq -i file

#By default, the output uniq produces is newline terminated.
#However, if you want, you want to have a NULL terminated output instead (useful while dealing with uniq in scripts).
#This can be made possible using the -z command line option.

uniq -z file
```

- less

### 103.3 Perform basic file management

#### Important Files of topic 103.3

- foo

#### Import Commands\Programs of topic 103.3

- cp
- find
- mkdir
- mv
- ls
- rm
- rmdir
- touch
- tar
- cpio
- dd
- file
- gzip
- gunzip
- bzip2
- bunzip2
- xz
- unxz

#### Cited subjects in topic 103.3

- file globbing

### 103.4 Use streams, pipes and redirects

#### Important Files of topic 103.4

- foo

#### Import Commands\Programs of topic 103.4

- tee
- xargs

#### Cited subjects in topic 103.4

- foo

### 103.5 Create, monitor and kill processes

#### Important Files of topic 103.5

- foo

#### Import Commands\Programs of topic 103.5

- &
- bg
- fg
- jobs
- kill
- nohup
- ps
- top
- free
- uptime
- pgrep
- pkill
- killall
- watch
- screen
- tmux

#### Cited subjects in topic 103.5

- foo

### 103.6 Modify process execution priorities

#### Important Files of topic 103.6

- foo

#### Import Commands\Programs of topic 103.6

- nice
- ps
- renice
- top

#### Cited subjects in topic 103.6

- foo

### 103.7 Search text files using regular expressions

#### Important Files of topic 103.7

#### Import Commands\Programs of topic 103.7

- grep
- egrep
- fgrep
- sed

#### Cited subjects in topic 103.7

- regex(7)

### 103.8 Basic file editing

#### Important Files of topic 103.8

- ~/.vim

#### Import Commands\Programs of topic 103.8

- vi

#### Cited subjects in topic 103.8

- /, ?
- h,j,k,l
- i, o, a
- d, p, y, dd, yy
- ZZ, :w!, :q!
- EDITOR

## Topic 104: Devices, Linux Filesystems, Filesystem Hierarchy Standard

### 104.1 Create partitions and filesystems

#### Important Files of topic 104.1

- foo

#### Import Commands\Programs of topic 104.1

- fdisk
- gdisk
- parted
- mkfs
- mkswap

#### Cited subjects in topic 104.1

- MBR
- GPT
- ext2/ext3/ext4
- XFS
- VFAT
- exFAT

### 104.2 Maintain the integrity of filesystems

#### Important Files of topic 104.2

#### Import Commands\Programs of topic 104.2

- du
- df
- fsck
- e2fsck
- mke2fs
- tune2fs
- xfs_repair
- xfs_fsr
- xfs_db

#### Cited subjects in topic 104.2

- foo

### 104.3 Control mounting and unmounting of filesystems

#### Important Files of topic 104.3

- foo

#### Import Commands\Programs of topic 104.3

- mount
- umount
- blkid
- lsblk

#### Cited subjects in topic 104.3

- /etc/fstab
- /media/

### 104.4 Removed(see in: <https://www.lpi.org/our-certifications/exam-101-objectives>)

### 104.5 Manage file permissions and ownership

#### Important Files of topic 104.5

- foo

#### Import Commands\Programs of topic 104.5

- chmod
- umask
- chown
- chgrp

#### Cited subjects in topic 104.5

- foo

### 104.6 Create and change hard and symbolic links

#### Important Files of topic 104.6

- foo

#### Import Commands\Programs of topic 104.6

- ln
- ls

#### Cited subjects in topic 104.6

- foo

### 104.7 Find system files and place files in the correct location

#### Important Files of topic 104.7

- /etc/updatedb.conf

#### Import Commands\Programs of topic 104.7

- find
- locate
- updatedb
- whereis
- which
- type

#### Cited subjects in topic 104.7

- foo
