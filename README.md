# phpmyadmin-docker-self-signed
[![Build Status](https://travis-ci.com/galbirk/phpmyadmin-docker-self-signed.svg?branch=main)](https://travis-ci.com/galbirk/phpmyadmin-docker-self-signed)

phpmyadmin Dockerfile and docker-compose.yml with self singed certificate.

## Table of Contents
- [Run Example](#Run-Example)
  * [Install docker and docker-compose](#Install-docker-and-docker-compose)
  * [Run With Docker](#Run-with-docker)
  * [Run With docker-compose](#Run-with-docker-compose)
- [Environment Variables](#Environment-Variables)
- [Docker Hub Images](#Docker-Hub-Images)
- [Author Information](#Author-Information)

# Run Example
## Install docker and docker-compose
[docker installation documentation](https://docs.docker.com/get-docker/)<br>
[docker-compose installation documentation](https://docs.docker.com/compose/install/)<br>
### install docker on linux
```bash
# Install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker && sudo systemctl enable docker
# Ensure installation succeed
sudo docker --version
# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# Ensure installation succeed
docker-compose --version
```
## Run with docker
```bash
# Run with arbitery, you can choose the DB server at login.
docker pull galbirk/phpmyadmin:self-signed
docker run --name phphmyadmin -d -e PMA_ARBITRARY=1 -p 443:443 galbirk/phpmyadmin:self-signed
```
**phpmyadmin url:** https://[ip/hostname]<br>

## Run with docker-compose
### Clone git repository and deploy the compose file
```bash
git clone https://github.com/galbirk/phpmyadmin-docker-self-signed.git
cd phpmyadmin-docker-self-signed
docker-compose up # run docker-compose up -d for background running.
```
**phpmyadmin url:** https://[ip/hostname]<br>

## Environment Variables
* [**phpmyadmin/phpmyadmin docker hub reposiroty**](https://hub.docker.com/r/phpmyadmin/phpmyadmin)
* **CERT_VALID_DAYS=3650** --> Certificate validity time in days.

## Docker Hub Image
#### The images are published in Docker Hub:
[galbirk/phpmyadmin:self-signed](https://hub.docker.com/repository/docker/galbirk/phpmyadmin)

# Author Information

<b>Gal Birkman, DevOps Engineer.</b><br>
<b>email:</b> galbirkman@gmail.com<br>
<b>GitHub:</b> https://github.com/galbirk
