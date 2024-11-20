sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdd2
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2
sudo vgs
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
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
