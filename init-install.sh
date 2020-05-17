
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp -rsfv --backup --suffix=.init.bak $DIR/home/. ~/
cp -rsfv --backup --suffix=.init.bak $DIR/etc/. /etc/

