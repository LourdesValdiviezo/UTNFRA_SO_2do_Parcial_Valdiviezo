git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
ls
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk -l
sudo lsblk -f
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdd2
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -l 100%FREE -n lv_workareas vg_datos
sudo lvcreate -l 100%FREE -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work/
sudo swapon /dev/vg_temp/lv_swap
free -h
df -h
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd3
sudo vgextend vg_datos /dev/sdd3
sudo lvs
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo lsblk -f
echo "sudo fdisk -l" >> RTA_Examen_20241117/Punto_A.sh 
cd RTA_Examen_20241117/
echo "sudo fdisk /dev/sdc" >> Punto_A.sh 
echo "sudo fdisk /dev/sdd" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdd1" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdd2" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdc1" >> Punto_A.sh 
echo "sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2" >> Punto_A.sh 
echo "sudo vgs" >> Punto_A.sh 
echo "sudo vgcreate vg_temp /dev/sdc1" >> Punto_A.sh 
echo "sudo lvcreate -L 5M -n lv_docker vg_datos" >> Punto_A.sh 
echo "sudo lvcreate -l 100%FREE -n lv_workareas vg_datos" >> Punto_A.sh 
echo "sudo lvcreate -l 100%FREE -n lv_swap vg_temp" >> Punto_A.sh 
echo "sudo mkfs.ext4 /dev/vg_datos/lv_docker" >> Punto_A.sh 
echo "sudo mkfs.ext4 /dev/vg_datos/lv_workareas" >> Punto_A.sh 
echo "sudo mkswap /dev/vg_temp/lv_swap" >> Punto_A.sh 
echo "sudo mkdir -p /var/lib/docker" >> Punto_A.sh 
echo "sudo mkdir -p /work" >> Punto_A.sh 
echo "sudo mount /dev/vg_datos/lv_docker /var/lib/docker/" >> Punto_A.sh 
echo "sudo mount /dev/vg_datos/lv_workareas /work/" >> Punto_A.sh 
echo "sudo swapon /dev/vg_temp/lv_swap" >> Punto_A.sh 
echo "free -h\" >> Punto_A.sh 


Punto_






Punto_


cat Punto_A.sh 
echo "free -h" >> Punto_A.sh 
cat Punto_A.sh 
echo "df -h" >> Punto_A.sh 
echo "sudo fdisk -l" >> Punto_A.sh 
echo "sudo fdisk /dev/sdd" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdd3" >> Punto_A.sh 
echo "sudo vgextend vg_datos /dev/sdd3" >> Punto_A.sh 
echo "sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker" >> Punto_A.sh 
echo "sudo resize2fs /dev/mapper/vg_datos-lv_docker" >> Punto_A.sh 
cat Punto_A.sh 
RTA_Examen_20241117/
ls
cat RTA_Examen_20241117/Punto_B.sh 
vim ValdiviezoAltaUser-Groups.sh
sudo mv ValdiviezoAltaUser-Groups.sh /usr/local/bin/
ls /usr/local/bin/
sudo chmod 755 /usr/local/bin/ValdiviezoAltaUser-Groups.sh 
ls -l /usr/local/bin/
echo "vim ValdiviezoAltaUser-Groups.sh" >> RTA_Examen_20241117/Punto_B.sh 
echo "sudo mv ValdiviezoAltaUser-Groups.sh /usr/local/bin/" >> RTA_Examen_20241117/Punto_B.sh 
echo "ls /usr/local/bin/" >> RTA_Examen_20241117/Punto_B.sh 
echo "sudo chmod 755 /usr/local/bin/ValdiviezoAltaUser-Groups.sh" >> RTA_Examen_20241117/Punto_B.sh 
echo "ls -l /usr/local/bin/" >> RTA_Examen_20241117/Punto_B.sh 
sudo fdisk -l
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -G docker luli
exit
UTN-FRA_SO_Examenes/202406/docker/
cd UTN-FRA_SO_Examenes/202406/docker/
vim index.html 
docker login -u luliv
cat /etc/shadow
sudo cat /etc/shadow
cat /etc/group
ls
vim dockerfile
docker build -t luliv/web1-valdiviezo
docker build -t luliv/web1-valdiviezo:v1
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
cd ..
echo "sudo usermod -G docker luli" >> RTA_Examen_20241117/Punto_C.sh 
echo "vim index.html" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker login -u luliv" >> RTA_Examen_20241117/Punto_C.sh 
echo "vim dockerfile" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker build -t luliv/web1-valdiviezo ." >> RTA_Examen_20241117/Punto_C.sh 
echo "docker image list" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker run -d -p 8080:80 luliv/web1-valdiviezo" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker ps" >> RTA_Examen_20241117/Punto_C.sh 
echo "curl localhost:8080" >> RTA_Examen_20241117/Punto_C.sh 
echo "vim run.sh" >> RTA_Examen_20241117/Punto_C.sh 
echo "sudo chmod 755 run.sh" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker stop e70c" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker ps" >> RTA_Examen_20241117/Punto_C.sh 
echo "./run.sh" >> RTA_Examen_20241117/Punto_C.sh 
echo "docker ps" >> RTA_Examen_20241117/Punto_C.sh 
docker push luliv/web1-valdiviezo
echo "docker push luliv/web1-valdiviezo" >> RTA_Examen_20241117/Punto_C.sh 
exit
ls
cd UTN-FRA_SO_Examenes/202406/ansible/
vim playbook.yml 
ls
cd roles/
ls
cd ..
ls
ls inventory/
ls inventory/host_vars/
ls inventory/group_vars/
mkdir -p templates/
ls
rm templates/
rmdir templates/
ls
cd roles/2do_parcial/
ls
cd vars/
ls
vim main.yml 
cd ..
ls
cd tasks/
ls
vim main.yml 
cd ..
ls
cd ..
ls
vim playbook.yml 
cd roles/2do_parcial/tasks/
ls
vim main.yml 
cd ..
ls
cd vars/
vim main.yml 
ls -la
cd ..
mkdir -p templates/
ls
cd templates/
ls
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
cd
ls
ssh-keygen
ls
cd .ssh/
ssh-keygen
ls -la
cd .ssh/
cd ssh/
ssh-keygen -t ed25519
ls ~/.ssh/
ssh-keygen
ls ~/.ssh/
ls /.ssh/
ls .ssh/
ls ~/.ssh/id_rsa
cd .ssh
cd .ssh/
cat .ssh/id_rsa.pub
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ls ~/.ssh/id_rsa
ls ~/.ssh
ls .ssh/
cd .ssh/
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
sudo apt update
sudo apt install wget gpg
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
cd
ssh-keygen
ls -la
cat .ssh/
cat ~/.ssh/
ls ~/.ssh/
ls ~/.ssh.pub/
rm -rf .ssh.pub
ls -la
ssh-keygen
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ansible-playbook -i inventory/hosts playbook.yml
exit
mkdir -p repo_parcial
ls
cp -r RTA_Examen_20241117/ repo_parcial/
ls repo_parcial/
cp -r UTN-FRA_SO_Examenes/ repo_parcial/
ls repo_parcial/
cat repo_parcial/RTA_Examen_20241117/Punto_A.sh 
cd repo_parcial/
ls
git init
git commit -m "Primer commit"
git config --global user.email "lulivj@gmail.com"
git config --global user.name "lulivj"
git commit -m "Primer commit"
git add .
git commit -m "Primer commit"
git branch -M main
git remote add origin https://github.com/LourdesValdiviezo/UTNFRA_SO_2do_Parcial_Valdiviezo.git
git push -u origin main
ls -la
rm -rf .git
ls -la
git init
git commit -m "primer commit"
git add .
git commit -m "primer commit"
git branch -M main
git remote add origin https://github.com/LourdesValdiviezo/UTNFRA_SO_2do_Parcial_Valdiviezo.git
git push -u origin main
cd UTN-FRA_SO_Examenes/
ls
ls -la
rm -rf .git
ls -la
cd ..
git commit -M "2doParc"
git commit -m "2doParc"
git push -u origin main
git branch main
git status
ls -la
rm -rf .git
ls -la
ls -la UTN-FRA_SO_Examenes/
git init
git add .
git commit -m "Primer commit"
git branch -M main
git remote add origin https://github.com/LourdesValdiviezo/UTNFRA_SO_2do_Parcial_Valdiviezo.git
git push -u origin main
exit
ls
cd $HOME/.bash_history
ls -la
