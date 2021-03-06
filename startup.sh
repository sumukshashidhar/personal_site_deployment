# run update and upgrades
sudo apt update && sudo apt upgrade

# install docker and docker compose
sudo apt install docker.io
sudo apt install docker-compose

# clone our frontend repository
git clone https://github.com/sumukshashidhar/personal_website_frontend.git ./frontend

# clone our backend authentication repository
git clone https://github.com/sumukshashidhar/personal_website_authentication.git ./authentication

# make nginx html directory
sudo mkdir -p /usr/share/nginx/html

# add certbot stuff
sudo apt install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt update
sudo apt install certbot

# make a certificate
sudo certbot certonly --standalone -d domain.com

# make data directories
mkdir ./data
mkdir ./data/mysql
mkdir ./data/ghost
mkdir ./data/mongo


# run docker compose
sudo docker-compose up
