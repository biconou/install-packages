
# lancer le script avec . ./backRootFS.sh

NOW=`date "+%Y-%m-%d_%H-%M"`

cd /

rsync -aAXv --delete-after --exclude={"swapfile1","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / /mnt/DATA/REMI/SAUVEGARDE/BananaPiRootFS

tar -zcvpf /mnt/DATA/REMI/SAUVEGARDE/BananaPiRootFS-${NOW}.tar.gz --directory=/ --exclude=proc --exclude=sys --exclude=dev/pts  --exclude=mnt .
