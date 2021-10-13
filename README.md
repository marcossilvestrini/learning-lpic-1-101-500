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
- KVM

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

#### Import Commands\Programs of topic 103.3

##### Command ls - List directory contents

```sh
# Colors in command

Uncolored (white): file or non-filename text (e.g. permissions in the output of ls -l) or multi-hardlink file
Bold blue: directory
Bold cyan: symbolic link
Bold green: executable file
Bold red: archive file
Bold magenta: image file, video, graphic, etc. or door or socket
Cyan: audio file
Yellow with black background: pipe (AKA FIFO)
Bold yellow with black background: block device or character device
Bold red with black background: orphan symlink or missing file
Uncolored with red background: set-user-ID file
Black with yellow background: set-group-ID file
Black with red background: file with capability
White with blue background: sticky directory
Blue with green background: other-writable directory
Black with green background: sticky and other-writable directory

#mark types [*= executables, /=directories, @=symbolik links]
ls -F
ls -p

#all infos actual dir
ls -ld
ls -ld /etc

#inode
ls -inode /usr/bin
ls -i /usr/bin

#list reverse order
ls --reverse
ls -r

#view hidden folders\files
ls -a

#sort size
ls --sort=size
ls -S

#sort time
ls /etc --sort=time
ls --sort=time  --format=long --reverse
ls -t /etc

#sort by extension
ls --sort=extension /etc
ls -X /etc

#format
ls /etc --format=long
ls --sort=size --format=long  /usr/bin

# recursive
ls --recursive /etc
ls -R /etc

# Additional ls Options

#Combining long list with human readable file sizes will give us useful suffixes such as M for megabytes or K #for kilobytes.
ls -lh


#The -d option will list directories but not their contents. Combining this with */ will show only #subdirectories and no files.
ls -d */


#Combines long list with the option to sort by modification time. The files with the most recent changes will
#be at the top, and files with the oldest changes will be at the bottom. But this order can be reversed with:
ls -lt

#Combines long list with sort by (modification) time, combined with -r which reverses the sort.
#Now files #with the most recent changes are at the bottom of the list. In addition to sorting by
#modification time, #files can also be sorted by access time or by status time.
ls -lrt

#Combines long list with the option to sort by file eXtension. This will, for example, group all files ending
#with .txt together, all files ending with .jpg together, and so on.
ls -lX
```

##### Command cp - Copy files and directories

```sh
cp /etc/fstab ~/
cp foo.txt foo2.txt
cp pictures/*  images

#recursive
cp -r pictures/  images

#update
cp -ur pictures  images

#copy files with permissions
cp -p /etc/fstab /etc/fstab-bkp

#Warnning in user -f !!!!!
cp -rf pictures  images
```

##### Command mv - Move,Rename files

```sh
mv ~/foo ~/bar
mv foo2.txt foo3.txt
mv -i file1 ~/foo/file1
mv -f ~/foo/bar.txt ~/beer.txt
```

##### Command rm -  Remove files or directories

```sh
rm ~/foo2.txt

# Warnning in use *, -r, -rf
echo ~/pictures/*
rm ~/pictures/*

rm -r ~/pictures
rm -ri ~/pictures
rm -rf ~/pictures
```

##### mkdir

```sh
mkdir foo
mkdir -p foo/bar
```

##### rmdir

```sh
rmdir images
rmdir -p ~/foo/bar/beer
```

##### Find - search for files in a directory hierarchy

```sh
find .
find ~/foo -name "*.jpg"
find ~/foo -name "var"
find ~/foo -name "log*"
find ~/foo -name "*log*"
find ~/foo -name 'picture[3-9].jpg'
find ~/foo -name 'picture?.jpg'

#find folder
sudo find /etc -depth -name skel
sudo find /etc -d -name skel

#find file
find  /home -type f -name "picture*"

#find link
find /usr/bin -type l

#find per user
sudo find / -user vagrant
sudo find / -user vagrant -type d
sudo find /  -user vagrant -type f

#find per size
sudo find / -size +10k
sudo find / -size -1M
sudo find / -size +10G

#find per access time
sudo find / -atime -7

#find per modification time
find / -mtime -2

#find per change time
sudo find  / -ctime -2

#find per inode
sudo find /usr/bin -inum 101245498

# ignore case sensitive
sudo find / -iname "*log*"

#find whith and, or , not
sudo find / -name "*log*" -name "*2*"
sudo find / -name "*picture*" -o -name "*log*"
sudo find / \( -name "*picture*" -o -name "*log*" \) -a -name "*1*"
sudo find / \( -name "*picture*" -o -name "*log*" \) -a -type d
sudo find / \( -name "*picture*" -o -name "*log*" \) -a -type f
sudo find / \( -name "*picture*" -o -name "*log*" \) -a \(! -type f \)
sudo find / \( -name "*picture*" -o -name "*log*" \) -a \( ! -type f \)

#find with command exec
find [options] -exec command [options] "{}" \;
sudo find / -name "*.log" -type f -exec ls -Rlt "{}" \;
sudo find / -name "*.log" -type f -exec echo "Find File: "  "{}" \;
sudo find / -name "*log" -type f -exec rm -i  "{}" \;

#whith option print
sudo find / -name "*.log" -type f -exec ls -Rlt "{}" \; --print

#whit option delete
find . -name "*.bak" -delete
```

##### Tar - An archiving utility

```sh
# Archiving
tar -cf scripts.tar foo1.sh foo2.sh
tar -cvf scripts.tar scripts
tar -cf scripts.tar scripts/*
tar cfv  tar-file.tar --wildcards bigfile[1-3]

#redirect file to specific folder
tar cvf arquive/logs.tar logs/

#view content
tar -tf scripts.tar

# extract
tar -xf scripts.tar
tar -xvf scripts.tar

# extract to specific folder
tar xvf logs.tar -C new-logs/

#update - Add new version for modify files.Not best practice!
tar -uvf scripts.tar scripts

#update best practice for update tar files
tar -cvf scripts.tar scripts

#compress \ descompress with gzip
tar -czvf scripts.tar.gz scripts
tar -xzvf scripts.tar.gz

#compress \ descompress with bzip2
tar -cjvf scripts.tar.bz2 scripts
tar -xjvf scripts.tar.bz2

#compress \ descompress with xz
tar -cJvf scripts.tar.xz scripts
```

##### Gzip - compress or expand files

```sh
#compress
gzip -v scripts/script1.sh
gzip -v1 scripts/script1.sh
gzip -v9 scripts/script1.sh
gzip -c scripts/script1.sh > scripts/script1.gz

#descompress
gzip -dv picture1.jpg.gz
gunzip -v scripts/script1.gz

#list infos
gzip -l picture1.jpg.gz
```

##### Bzip2 - a block-sorting file compressor

```sh
#compress
bzip2 -v scripts/script1.sh
bzip2 -v1 picture1.jpg
bzip2 -v9 picture1.jpg

#descompress
bunzip2 -v picture1.jpg.bz2
bzip2 -dv picture1.jpg.bz2
```

##### xz - Compress or decompress .xz and .lzma files

```sh
#compress
xz script1.sh
xz -1 bigfile bigfile-xz1
xz -9 bigfile bigfile-xz9

#descompress
unxz picture1.xz
xz -d picture1.xz

```

##### cpio - copy files to and from archives

```sh
#create file
ls | cpio -o > archive.cpio

#extract file
cpio -id < archive.cpio
```

##### dd - convert and copy a file

```sh
#copy file file1 to file2
dd status=progress if=file of=file1

#copy file file1 to file2 and to Uppercase
dd status=progress if=file1 of=file2 conv=ucase

```

#### Cited subjects in topic 103.3

- file globbing

### 103.4 Use streams, pipes and redirects

#### Important Files of topic 103.4

- /dev/stdin
- /dev/stdout
- /dev/stderr

#### Import Commands\Programs of topic 103.4

##### Redirect Standart I/O

```sh
input: stdin(channel 0)
output:  stdout(channel 1)
error: stderr(channel 2)

#stdin
zip -@ programs.zip < list_programs.txt

#stdout
ls > ~/stdout_ls.txt
echo "Hello World" > echo_hello.txt
ls >> ~/stdout_ls.txt
echo "Second Line" >> echo_hello.txt

#stderr
cd /shgfdjdgfjsdfgjhdfs 2> stderr_cd.txt
ls -lR / >result.txt 2>error.log

#combination chanels
#stdout and stderr
find /home -user vagrant &> newfile

#alter output channel
cat /shgfdjdgfjsdfgjhdfs >stderr_cat.txt 2>&1

#Here Document
wc -c <<EOF
<line 1
<line 2
<line 3
< EOF

#Here String
wc -c <<<"This is one line in bash"
```

##### tee - read from standard input and write to standard output and files

```sh
 grep 'model name' </proc/cpuinfo | uniq | tee cpu_model.txt
 make | tee log.txt
 make 2>&1 | tee log.txt
```

##### Command Substitution

```sh
#examples
mkdir `date +%Y-%m-%d`
mkdir $(date +%Y-%m-%d)
OS=`uname -o`

```

#### xargs - build and execute command lines from standard input

```sh
#examples (for details about this commands, use https://explainshell.com/)
find /usr/share/icons -name 'debian*' | xargs identify -format "%f: %wx%h\n"
find . -name '*avi' -print0 -o -name '*mp4' -print0 -o -name '*mkv' -print0 | xargs -0 du | sort -n
find . -mindepth 2 -name '*avi' -print0 -o -name '*mp4' -print0 -o -name '*mkv' -print0 | xargs -0 -I PATH mv PATH ./

cat filelist.txt | xargs -I IMG convert IMG -resize 25% small/IMG
```

### 103.5 Create, monitor and kill processes

#### Important Files of topic 103.5

- ~/nohup.out
- /etc/screenrc
- ~/.screenrc

#### Import Commands\Programs of topic 103.5

##### jobs

```sh
#list all jobs
jobs -l

#list specific job
jobs %2

#job name start with str
jobs %str

#job name contain str
jobs %?str
```

##### bg

```sh
#take it to the background with bg
bg %JOB_ID
```

##### fg

```sh
#take it to the foreground with
fg %JOB_ID
```

##### kill

```sh
#kill job
kill % JOB_ID

#kill process
kill PID

#force kill
kill -9 PID

#kill list of process with str
kill -1 $(pgrep sleep)
```

##### nohup - run a command immune to hangups, with output to a non-tty

```sh
#command sintaxe
nohup COMMAND &

#example
nohup ping localhost &

#redirect stdout\strerr for file
nohup ping localhost & >/var/log/my-nohup-command.log
```

##### watch - execute a program periodically, showing output fullscreen

```sh
#watch command
watch uptime

#alter periodically
watch -n 3 free
```

##### free - Display amount of free and used memory in the system

```sh
#display memory infos
free

#show in mb
free --mega

#show in gb
free --giga

#show human-readable output
free -h
```

##### uptime - Tell how long the system has been running

```sh
#examples
uptime
uptime -p
```

##### pgrep - look up or signal processes based on name and other attributes

```sh
#show process id start with str
pgrep str

#show process id ans name start with str
pgrep -l str
```

##### pkill - look up or signal processes based on name and other attributes

```sh
#examples
pkill sleep
```

##### killall

```sh
#examples
killall sleep
```

##### top - display Linux processes

```sh
#show default
top

#show by mermory
Press M

#show by ID
Press N

#show by time execution
Press T

#show by cpu
Press P

#Sort
Press R

# kill process
Press k + PID

#only process current user
Press u ans enter user

#Show programs' absolute paths and differentiate between userspace processes
#and kernelspace processes (in square brackets)
Press  c

#Forest/hierarchy view of processes.
Press  V

#Save configuration settings to ~/.toprc.
Press  W

#Columns reporting information about the running processes:

PID
Process identifier.

USER
User who issued the command that generated the process.

PR
Priority of process to the kernel.

NI
Nice value of process. Lower values have a higher priority than higher ones.

VIRT
Total amount of memory used by process (including Swap).

RES
RAM memory used by process.

SHR
Shared memory of the process with other processes.

S
Status of process. Values include: S (interruptible sleep — waiting for an event to finish), R (runnable — either executing or in the queue to be executed) or Z (zombie — terminated child processes whose data structures have not yet been removed from the process table).

%CPU
Percentage of CPU used by process.

%MEM
Percentage of RAM used by process, that is, the RES value expressed as a percentage.

TIME+
Total time of activity of process.

COMMAND
Name of command/program which generated the process.
```

##### ps - report a snapshot of the current processes.

```sh
# show all process
ps aux

# view all process tty
ps -a

#show process by user
ps -u root

#show process by pid
ps --pid 1111

#Explain the columns of ps aux command:

USER
Owner of process.

PID
Process identifier.

%CPU
Percentage of CPU used.

%MEM
Percentage of physical memory used.

VSZ
Virtual memory of process in KiB.

RSS
Non-swapped physical memory used by process in KiB.

TT
Terminal (tty) controlling the process.

STAT
Code representing the state of process.\
Apart from S, R and Z (that we saw when describing the output of\ top),\
other possible values include: D (uninterruptible sleep — usually waiting for I/O),\
T (stopped — normally by a control signal).\
Some extra modifier include: < (high-priority — not nice to other processes),\
N (low-priority — nice to other processes), or + (in the foreground process group).\

STARTED
Time at which the process started.

TIME
Accumulated CPU time.

COMMAND
Command that started the process.
```

##### screen - screen manager with VT100/ANSI terminal emulation

```sh
#start screen
screen

#add new windows with name
screen -t WINDOWS_NAME

#alter windows name
Ctrl+a-A

#list windows
ctr+a-w

#navigate between windows
Ctrl+a-n (next)
Ctrl+a-p (previous)
Ctrl+a-NUMBER_WINDOWS
Ctrl+a-"

#kill window
ctr+a-k

#regions - create horizontal regions\screens
ctr+a-S
```

![image](https://user-images.githubusercontent.com/62715900/137193729-9338a590-290a-4f4a-9e2c-e8994bb80e24.png)

```sh
#regions - create vertical regions\screens
ctr+a- |
```

![image](https://user-images.githubusercontent.com/62715900/137194590-765fe6cf-967c-47a0-ab7f-bf69c7a0efaf.png)

```sh
#regions - navigate between regions
ctr+a-tab

#terminate the current region
Ctrl+a-X

#terminate all regions except the current one
Ctrl+a-Q

#sessions - List sessions
screen -list
screen -ls

#sessions - Create new session
screen -S "second session"

#sessions - Terminate session
screen -S SESSION-PID -X quit

#sessions - Detached session
Ctrl+a-d

#sessions - Attached session
screen -r SESSION-PID
screen -r SESSION-NAME
screen -r -RR

#Copy & Paste: Scrollback Mode
GNU Screen features a copy or scrollback mode. Once entered, you can move the cursor
in the current window and through the contents of its history using the arrow keys.
You can mark text and copy it across windows. The steps to follow are:

1 - Enter copy/scrollback mode: Ctrl+a-[.

2 - Move to the beginning of the piece of text you want to copy using the arrow keys.

3 - Mark the beginning of the piece of text you want to copy: Space.

4 - Move to the end of the piece of text you want to copy using the arrow keys.

5 - Mark the end of the piece of text you want to copy: Space.

6 - Go to the window of your choice and paste the piece of text: Ctrl+a-].


```

##### tmux — terminal multiplexer

```sh
#start tmux
tmux

#create new windows
Ctrl+b-c

#create new windows with name
tmux new -s "LPI" -n "Window zero"

#list all windows
Ctrl+b-w

#rename window
Ctrl+b-,

#alter index window
Ctrl+b-.

#find window per name
Ctrl+b-f

#navigate next windows
Ctrl+b-n

#navigate previous window
Ctrl+b-p

#navigate for specific windows number
Ctrl+b-number

#terminate windows
Ctrl+b-&

#create horizontal panel
Ctrl+b-"

#create vertical panel
Ctrl+b-%

#terminate panel
Ctrl+b-x

#move between panels
Ctrl+b-↑,↓,←,→

#move to the last active pane.
Ctrl+b-;

#resize pane by one line.
Ctrl+b-Ctrl+arrow key

#resize pane by five lines.
Ctrl+b-Alt+arrow key

swap panes (current to previous).
Ctrl+b-{

swap panes (current to next).
Ctrl+b-}

zoom in/out panel.
Ctrl+b-z

tmux displays a fancy clock inside the pane (kill it by pressing q).
Ctrl+b-t

#turn pane into window.
Ctrl+b-!


#list sessions
Ctrl+b-s:
tmux ls

#create new session
Ctrl+b, type in :new

rename session
Ctrl+b-$

#switch sessions
Ctrl+b-s

#kill session
tmux kill-session -t SESSION-NAME

#attach session
tmux attach -t SESSION-NAME
tmux a -t SESSION-NAME

#detach session
Ctrl+b-d:

#select what client to detach.
Ctrl+b-D

#refresh the client’s terminal.
Ctrl+b-r
```

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
