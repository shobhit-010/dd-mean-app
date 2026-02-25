docker --version
docker compose version
mkdir mean-app
exit
sudo apt update
sudo apt install docker.io docker-compose-plugin -y
sudo apt remove docker.io -y
sudo apt update
sudo apt install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
docker --version
docker compose version
cleare
clear
ls
cd mean-app/
ls
trrr
treee
ls -ltr
cd ..
ls
cd ~
ls
rm -rf mean-app/
ls
docker compose pull
mkdir mean-app
ls
cd mean-app/
nano docker-compose.yml
docker compose pull
sudo docker compose pull
docker compose up -d
sudo docker compose up -d
docker ps -a
sudo docker ps -a
ls
ls src
docker compose pull
sudo docker compose pull
docker compose up -d
sudo docker compose up -d
docker compose down
sudo docker compose down
docker compose pull
sudo sudo docker compose down
sudo docker compose down
sudo docker compose up -d
docker images
sudo docker images
docker exec -it frontend sh
sudo docker exec -it frontend sh
cd ..
ls
docker exec -it frontend sh
sudo docker exec -it frontend sh
sudo docker ps
sudo docker exec -it mean-app-frontend-1 sh
ls
rm -rf mean-app/
docker compose down -v
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
sudo docker compose down -v
docker rm -f $(docker ps -aq)
sudo docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
sudo docker compose down -v
exit
docker compose down -v
sudo docker compose down -v
sudo usermod -aG docker ubuntu
exit
docker ps
docker compose down -v
ls
find /home/ubuntu -name "docker-compose.yml"
sudo docker rm -f $(sudo docker ps -aq)
sudo docker ps
nano docker-compose.yml
sudo docker compose pull
sudo docker compose up -d
docker ps
sudo docker exec -it ubuntu-frontend-1 sh
ls
sudo docker compose pull backend
sudo docker compose up -d --force-recreate backend
sudo docker ps
sudo docker logs ubuntu-backend-1
sudo docker exec -it ubuntu-frontend-1 sh
