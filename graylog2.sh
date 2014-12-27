
sudo apt-get install mongodb

# because we want the jdk if we want to git plugins and build from command line.

sudo apt-get install openjdk-7-jdk

wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
sudo add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main"
sudo apt-get update && sudo apt-get install elasticsearch
sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start
# to test we have a good runner
curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

cd /opt
sudo wget https://packages.graylog2.org/repo/packages/graylog2-0.92-repository-ubuntu14.04_latest.deb -O graylog2.deb
sudo dpkg -i graylog2.deb
sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install graylog2-server graylog2-web

sudo apt-get install pwgen
SECRET=$(pwgen -s 96 1)
sudo -E sed -i -e 's/password_secret =.*/password_secret = '$SECRET'/' /etc/graylog2.conf

PASSWORD=$(echo -n VeRySeCrEtPaSsWoRdHeRe | shasum -a 256 | awk '{print $1}')
sudo -E sed -i -e 's/root_password_sha2 =.*/root_password_sha2 = '$PASSWORD'/' /etc/graylog2.conf




# now by hand edit sudo nano /etc/graylog2.conf
# rest_transport_uri = http://127.0.0.1:12900/
# elasticsearch_shards = 1

#pray

sudo java -jar /opt/graylog2-server/graylog2-server.jar --debug
