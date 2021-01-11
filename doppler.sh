#/bin/sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/dopplerhq/doppler-deb stable main" | sudo tee /etc/apt/sources.list.d/dopplerhq-doppler.list
sudo apt udpate
sudo apt install doppler -y
