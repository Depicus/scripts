# Install Webmin on Ubuntu or Debian based systems.

# first we need to add to the source list 

sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"

echo 'deb http://download.webmin.com/download/repository sarge contrib' | sudo tee /etc/apt/sources.list.d/webmain.list

wget http://www.webmin.com/jcameron-key.asc && sudo apt-key add jcameron-key.asc

sudo apt update

sudo apt install webmin -y
