#! /bin/sh

if [ ! -d "/var/www/ghost/content/images/other" ]; then
        echo "creating /var/www/ghost/content/images/other"
        sudo mkdir /var/www/ghost/content/images/other
        sudo chown ghost:ghost /var/www/ghost/content/images/other
        sudo chmod 755 /var/www/ghost/content/images/other
fi

echo "moving $1 to /var/www/ghost/content/images/other/$1"
sudo mv $1 /var/www/ghost/content/images/other/$1
sudo chown ghost:ghost /var/www/ghost/content/images/other/$1
sudo chmod 644 /var/www/ghost/content/images/other/$1
