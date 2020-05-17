ls
ll
ll
ls
ll
ll
exit
apt update
apt install screen
screen -Rd
ls
man ls
ll etc -R
rm etc/fstab 
cp --parents etc/* /
cp --parents -r etc/* /
less /etc/profile.d/bash_completion.sh 
ll /etc/profile.d/bash_completion.sh 
ll /etc/profile.d/bash_completion.sh 
ll etc/profile.d/bash_completion.sh 
less etc/profile.d/bash_completion.sh 
apt install bash-completion
ll etc -R
less etc/profile.d/alias.sh 
less /etc/bash_completion
less /etc/profile.d/bash_completion.sh 
exit
ls
apt install vim borg
apt install borgbackup
apt install vim
aptitude
apt install aptitude
aptitude
mkdir /mnt/tmp
mount.cifs //10.5.183.126/asb/borgs /mnt/tmp -o user=autobackuper,domain=backup,uid=backup
mount.cifs //10.5.183.126/asb/borgs /mnt/tmp -o user=autobackuper,domain=backup
mount.cifs //10.5.183.126/asb/borgs /mnt/tmp -o user=autobackuper,domain=backup
mount.cifs //10.5.183.126/asb/borgs /mnt/tmp -o user=autobackuper,domain=backup
ls /mnt/tmp/
ls /mnt/tmp/bsv-debian/
mkdir /mnt/backup
borg mount /mnt/tmp/bsv-debian /mnt/backup
cd /mnt/backup/
ll
ls
cd cloud.emb.local-2020-05-12-0400/
ll
ls
cd lv-root/
ls
cd root
ls
ls -a
cp .bashrc ~/
cp .profile ~/
cp .ssh ~/
cd ..
cp etc/fstab ~/
cp etc/profile ~/
less etc/profile
ls
less etc/profile.d/alias.sh 
ls
cp --parents etc/profile.d/alias.sh ~
cp --parents etc/profile.d/bash_completion.sh ~[A
less etc/profile.d/gawk.sh
cp --parents etc/fstab ~
ls root
ls root -a
ls ..
ls /mnt/store/
ls /mnt/store/
ls /mnt/store/
less root/readme 
less /etc/screenrc
man screen
cp --parents etc/screenrc ~
less root/readme 
less root/readme 
cd root/
ll
ls
ls -a
less .bashrc 
less .profile 
less .config/exit
exit
ll
ll -a
less .bashrc 
ls
cp profile /etc/
less /etc/profile
ll
less /etc/profile.d/
partx 
parted
fdisk
fdisk -l
lvs
vgcreate /dev/sdb store-vg
vgcreate store-vg /dev/sdb
lvcreate --help
man lvcreate
lvcreate -L 180G -n store-lv store-vg
lvs
mkfs.ext4 /dev/mapper/store--vg-store--lv 
mount /dev/mapper/store--vg-store--lv /mnt/store
mkdir /mnt/store
mount /dev/mapper/store--vg-store--lv /mnt/store
ls /mnt/store/
apt install rsync
borg exctract /mnt/store/ /mnt/backup:cloud.emb.local-2020-05-12-0400 lv-store/
borg extract /mnt/store/ /mnt/backup:cloud.emb.local-2020-05-12-0400 lv-store/
borg extract /mnt/backup:cloud.emb.local-2020-05-12-0400 /mnt/store lv-store/
borg extract /mnt/backup::cloud.emb.local-2020-05-12-0400 /mnt/store lv-store/
rsync -a --info=progress2 /mnt/backup/cloud.emb.local-2020-05-12-0400/lv-store /mnt/store
rm /mnt/store/* 
rm /mnt/store/* -rf
rsync -a --info=progress2 /mnt/backup/cloud.emb.local-2020-05-12-0400/lv-store/ /mnt/store/
ls /mnt/store/
ll /mnt/store/
ll /mnt/store/dockers/
ll /mnt/store/dockers/nextcloud/
apt install docker-compose
exit
screen -Rd
exit
exit
exit
exit
exit
ifup ens192
exit
exit
screen -Rd
ls
less profile 
rm profile 
ll
cp --parents etc / -r
screen -Rd
ll
mkdir init-profiles
mv etc init-profiles/
mv fstab init-profiles/
ll
screen -Rd
screen -Rd
screen -Rd
screen -Rd 11632
screen -Rd 11632
screen -list
screen -Rd 
df
ip a
ip a
ls /mnt/backup/
screen
ll
cd /mnt/backup/cloud.emb.local-2020-05-12-0400/
ll
cd lvr
cd lv-root/
ll
ll
ls
cp root/readme ~/init-profiles/
ip -a
df
df -h
df -h
df -h
df -h
df -h
df -h
cd ~
vim /etc/network/interfaces
ping 10.5.183.36
ping 10.5.183.136
vim /etc/network/interfaces
service networking restart
vim /etc/network/interfaces
systemctl restart networking.service 
df
df -h
less init-profiles/fstab 
vim init-profiles/readme 
mkdir /mnt/borgs
newusers backup
adduser backup
ls
ls init-profiles/
ls
ls init-profiles/
ls
ll
cd cifs.creds/
l
ll
cd ..
ls
git clone https://github.com/EmericLee/borg-em.git
cd borg-em/
ll
cp borg-em.conf.sample borg-em.conf
vim borg-em.conf
ls
./borg-em.install 
vim borg-em.install 
./borg-em.install 
borg-em list
df
umount /mnt/tmp 
umount /mnt/tmp 
umount /mnt/tmp 
df
borg-em list
cd ..
borg-em list
ll
ls init-profiles/
less init-profiles/readme 
vim init-profiles/readme 
cd /mnt/store/
cd dockers/
ls
rm root@10.5.183.12
rm root@10.5.183.12 -d
rm root@10.5.183.123 -d
ls root@10.5.183.122
ls root@10.5.183.123
rm root@10.5.183.123 -rf
rm root@10.5.183.129 -rf
ll
cd nextcloud/
ls
docker-compose up
docker-compose up -d
cd ..
ls
cd gitea/
ls
docker-compose up -d
cd ~
vim /etc/fstab 
mount -a
vim /etc/fstab 
mount -a
ls /mnt/borgs/
vim /etc/fstab 
mount -a
ls /mnt/borgs/bsv-debian/
vim borg-em/borg-em.install 
cd borg-em/
ls
vim borg-em.timer 
./borg-em.install 
systemctl status borg-em.timer 
date
date
date
apt install open-vm-tools
date
date
date
date
clock --show
hwclock --show
less /etc/localtime 
timedatectl set-timezone Asia/Shanghai
date
date
systemctl status borg-em.timer 
reboot
cd init-profiles/
vim readme 
ll -R
vim etc/profile.d/alias.sh 
vim readme
cd ~
less init-profiles/readme 
vim init-profiles/readme 
cd /mnt/backup/cloud.emb.local-2020-05-12-0400/
ls
cd ro
cd lv-root/
cd root/
ls
ll
cp cifs.creds ~/
cp cifs.creds ~/ -r
cd /mnt/
ls b
ls backup/
ls tmp/
ls borgs/
borg umount /mnt/backup/
sc
ll
ll -a
less .bashrc
ls -a
borg-em list
systemctl status borg-em.timer 
ls
less borg-em/borg-em.conf
vim borg-em/borg-em.conf
ls
ls -a
ll -a
rm .bashrc
ll -a
less .config/
less .profile 
ll -a
rm .profile 
ll -a
less .viminfo 
rm .viminfo 
ll -a
exit
