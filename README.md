# em-init-linux
Quick init linux enveroment .Include bash screen sshd vim source.list etc.
By emeric.lee 2020.

## Quick install
Just run script.
It will cp all the predefined conf files to `/etc`.
Include bash screen bash-auto-complete sshd & source.list(to china mirror).
```
git clone https://github.com/EmericLee/em-init-linux.git
cd em-init-linux
./init-install.sh
```

---

# Key configs

## Install some packages
```sh
apt update
apt install ssh vim screen bash-completion rsync open-vm-tools
apt install git wget curl aptitude
apt install docker-compose borgbackup
timedatectl set-timezone Asia/Shanghai
```

## /etc/profile.d/alias.sh
Use profile.ld, not edit /etc/bash.bashrc

```
export PS1='\[\e[1;35m\][\[\e[1;33m\]\u@\h \[\e[1;31m\]\w\[\e[1;35m\]]\[\e[1;36m\]\$ \[\e[0m\]' 
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

eval "`dircolors`"
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
export LS_OPTIONS='--color=auto'

screen -Rd "work"
```

## /etc/screenrc
```
hardstatus on
hardstatus alwayslastline "%{= KW} %H %{= Kw}|%{-} %-Lw%{= bW}%n%f %t%{-}%+Lw %=%C%a %Y-%M-%d"
shell -$SHELL
```

## /etc/vim/vimrc.local (optional)
```
  set paste
  colorscheme elflord
```

##  Config network
Config ip address, 
(1)edit /etc/network/interfaces
```
auto eth0
iface eth0 inet static
        address 10.5.183.136
        netmask 255.255.255.0
        gateway 10.5.183.254
        up ip addr add 10.5.183.133/24 dev eth0
```
(2) Config dns, edit /etc/resolv.conf
```
nameserver 10.5.183.120
nameserver 10.5.183.110
nameserver 8.8.8.8
nameserver 8.8.4.4
```
(3) Apply Changes
`ifdown eth0 && ifup eth0`
or
`systemctl restart networking.service`


##  LVM & borg backup
Details see: [borg-em](https://github.com/EmericLee/borg-em)
LVM manager
```sh
vgcreate vg-name /dev/sdb			#create vg, vg-name can set as lvmsdb, sdb is the disk name
lvcreate -L 180G -n lv-name vg-name		#create lv, lv-name can set as lva
lvs						#show lvs list
mkfs.ext4 /dev/mapper/vg-name--lv-namee		#init(format) the new lv. see /dev/mapper/lvmsdb-lva
mount /dev/mapper/vg-name--lv-name /mnt/store	#mount the new lv
```

## Mount lv & cifs (share from smb)

### Install tools
apt install cifs-utils

### mount manully

mount.cifs -o uid=local-user-name,domain=domain-name,username=user-name,password=passwd //1.1.1.1/sharename /local/path/to/mount

### mount auto

Edit File /etc/fstab

```
#mount root & boot
/dev/mapper/root-lv-maper-name		/               ext4    errors=remount-ro 0       1
UUID=UUID-boot-4cc0-bef5-b0d7a80c3125 	/boot           ext2    defaults        0       2
#mount append store
/dev/mapper/append-lv-mapper-name	/mnt/path 	ext3 	defaults 	0	 0

# moutn cifs
/remote/share/name /local/path/to/mount cifs vers=2.1,file_mode=0660,dir_mode=0770,uid=local-user,gid=local-group,credentials=/credentials/path/file

```
check and reload
``` 
df or mount -l to check status
mount -a to reload file-fstab
```

## Install borg-em
```
git clone https://github.com/EmericLee/borg-em.git
cp borg-em.conf.sample borg-em.conf		#init(copy) config file
vim borg-em.conf				#edit the config file
./borg-em.install 				#install borg-em
borg-em list					#check is ok 
```

## Some misc

### Security

/etc/hosts/deny
```
  rpcbind: All 		#for rpc(portmap) security
```
### rsync

```
rsync -a --info=progress2 /path/of/source /path/to/target
```
