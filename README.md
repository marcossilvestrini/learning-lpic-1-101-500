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

#### Import Commands\Programs of topic 102.4

- dpkg
- dpkg-reconfigure
- apt-get
- apt-cache

### 102.5 Use RPM and YUM package management

#### Important Files of topic 102.5

- /etc/yum.conf
- /etc/yum.repos.d/

#### Import Commands\Programs of topic 102.5

- rpm
- rpm2cpio
- yum
- zypper

### 102.6 Linux as a virtualization guest

#### Important Files of topic 102.6

- foo

#### Import Commands\Programs of topic 102.6

- foo

#### Cited subjects in topic 102.6

- Virtual machine
- Linux container
- Application container
- Guest drivers
- SSH host keys
- D-Bus machine id

## Topic 103: GNU and Unix Commands

### 103.1 Work on the command line

#### Important Files of topic 103.1

- .bash_history

#### Import Commands\Programs of topic 103.1

- bash
- echo
- env
- export
- pwd
- set
- unset
- type
- which
- man
- uname
- history

#### Cited subjects in topic 103,1

- Quoting

### 103.2 Process text streams using filters

#### Important Files of topic 103.2

#### Import Commands\Programs of topic 103.2

- less
- bzcat
- cat
- xzcat
- zcat
- paste
- wc
- cut
- tr
- sort
- split
- sed
- head
- tail
- uniq
- nl
- od
- md5sum
- sha256sum
- sha512sum

#### Cited subjects in topic 103.2

- foo

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
