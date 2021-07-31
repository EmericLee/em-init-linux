
#git clone https://github.com/EmericLee/em-init-linux.git
#mv ./em-init-linux /usr/
#cd /usr/em-init-linux
#./init-install.sh

# Get Current path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Copy Config File
cp -rfv --backup --suffix=.em~ /usr/em-init-linux/etc/. /etc/

# Copy Profile 
cp -rfv --backup --suffix=.em~ /usr/em-init-linux/home/. ~/
