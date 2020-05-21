apt update
apt install screen bash-completion vim rsync open-vm-tools
apt install docker-compose aptitude borgbackup

timedatectl set-timezone Asia/Shanghai

vgcreate store-vg /dev/sdb
lvcreate -L 180G -n store-lv store-vg
mkfs.ext4 /dev/mapper/store--vg-store--lv 
mkdir /mnt/store
mount /dev/mapper/store--vg-store--lv /mnt/store
rsync -a --info=progress2 /mnt/backup/cloud.emb.local-2020-05-12-0400/lv-store/ /mnt/store/


vim /etc/network/interfaces
systemctl restart networking.service 

git clone https://github.com/EmericLee/borg-em.git
cp borg-em.conf.sample borg-em.conf
vim borg-em.conf
./borg-em.install 
borg-em list
df

vim /etc/fstab 
mount -a

