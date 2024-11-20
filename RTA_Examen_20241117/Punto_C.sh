sudo usermod -G docker luli
vim index.html
docker login -u luliv
vim dockerfile
docker build -t luliv/web1-valdiviezo .
docker image list
docker run -d -p 8080:80 luliv/web1-valdiviezo
docker ps
curl localhost:8080
vim run.sh
sudo chmod 755 run.sh
docker stop e70c
docker ps
./run.sh
docker ps
docker push luliv/web1-valdiviezo
