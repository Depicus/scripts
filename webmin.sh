# Install Webmin on Ubuntu or Debian based systems.

# first we need to add to the source list 

echo 'deb http://download.webmin.com/download/repository sarge contrib' | sudo tee /etc/apt/sources.list.d/webmain.list
echo 'deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib' | sudo tee /etc/apt/sources.list.d/webmain.list

wget http://www.webmin.com/jcameron-key.asc && sudo apt-key add jcameron-key.asc

sudo apt-get update && sudo apt-get install webmin -y
