## Install docker ##
apt-get update
apt-get install apt-transport-https
apt-get install ca-certificates
apt-get install curl
apt-get install gnupg-agent
apt-get install software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
 ## Build and run the zabbix-appliance container using docker ##
docker run --name zabbix-appliance -t \
      -p 10051:10051 \
      -p 80:80 \
      -d zabbix/zabbix-appliance:latest