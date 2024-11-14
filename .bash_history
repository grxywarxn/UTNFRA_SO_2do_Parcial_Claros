sudo apt install git
ls -la
cd
ls -la
cd 
ls
ls -l
pwd
ls -a
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls -a
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -a
./script_Precondicion.sh 
source ~/.bashrc
cd
ls -la
cd RTA_Examen_20241112/
cd
git init
git add .
git status
git commit -m "first commit"
git config --global user.email "lclaros800@gmail.com"
git config --global user.name "grxywarxn"
git status
git commit -m "first commit"
git remote add origin https://github.com/grxywarxn/UTNFRA_SO_2do_Parcial_Claros.git
git branch -M main
git push -u origin main 
cd
ls -l
ls -la
cat .bashrc 
clear
cd
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
sudo docker run hello-world
cd /var/lib/
ls -a
ls -la
cd /
ll
mkdir work
sudo mkdir work
ll
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo pvs
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc2
sudo pvcreate /dev/sdd1
sudo pvs
sudo vgextend vg_datos /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1
pvs
sudo pvs
sudo vgs
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +100%FREE vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_docker
sudo lvs
sdo vgs
sudo vgs
sudo umount /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo vgs
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo vgs
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h
free -h
cd /var/lib/
ll
cd /
sudo vgs
sudo lvs
cd
ll
cd RTA_Examen_20241112/
ll
cat Punto_A.sh 
vim Punto_A.sh 
cat Punto_A.sh 
echo "cd /" >> Punto_A.sh 
cat Punto_A.sh 
echo "sudo mkdir /work" >> Punto_A.sh
echo "sudo fdisk /dev/sdc << EOF" >> Punto_A.sh 
echo "n" >> Punto_A.sh 
echo "p" >> Punto_A.sh 
echo "1" >> Punto_A.sh 
echo "" >> Punto_A.sh 
echo "+5M" >> Punto_A.sh 
echo "t" >> Punto_A.sh 
echo "8e" >> Punto_A.sh 
echo "w" >> Punto_A.sh 
echo "EOF" >> Punto_A.sh 
cat Punto_A.sh 
echo "sudo fdisk /dev/sdc << EOF" >> Punto_A.sh 
echo "n" >> Punto_A.sh 
echo "p" >> Punto_A.sh 
echo "2" >> Punto_A.sh 
echo "" >> Punto_A.sh 
echo "+1.5G" >> Punto_A.sh 
echo "t" >> Punto_A.sh 
echo "2" >> Punto_A.sh 
echo "8e" >> Punto_A.sh 
echo "w" >> Punto_A.sh 
echo "EOF" >> Punto_A.sh 
echo "sudo fdisk /dev/sdd << EOF" >> Punto_A.sh 
echo "n" >> Punto_A.sh 
echo "p" >> Punto_A.sh 
echo "1" >> Punto_A.sh 
echo "" >> Punto_A.sh 
echo "+512M" >> Punto_A.sh 
echo "t" >> Punto_A.sh 
echo "82" >> Punto_A.sh 
echo "w" >> Punto_A.sh 
echo "EOF" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdc1" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdc2" >> Punto_A.sh 
echo "sudo pvcreate /dev/sdd1" >> Punto_A.sh 
echo "sudo vgcreate vg_datos /dev/sdc1" >> Punto_A.sh 
echo "sudo vgextend vg_datos /dev/sdc2" >> Punto_A.sh 
echo "sudo vgcreate vg_temp /dev/sdd1" >> Punto_A.sh 
echo "sudo lvcreate -L +5M vg_datos -n lv_docker" >> Punto_A.sh 
echo "sudo lvcreate -l +100%FREE vg_datos -n lv_workareas" >> Punto_A.sh 
echo "sudo lvcreate -l +100%FREE vg_temp -n lv_swap" >> Punto_A.sh 
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker" >> Punto_A.sh 
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas" >> Punto_A.sh 
echo "sudo mkswap /dev/mapper/vg_temp-lv_swap" >> Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/" >> Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_workareas /work/" >> Punto_A.sh 
echo "sudo swapon /dev/mapper/vg_temp-lv_swap" >> Punto_A.sh 
vim Punto_A.sh 
cd
ls -la
git add .
git commit -m "FEAT: Resolución del Punto A"
git status 
git push origin main  
exit
cd /usr/local/bin/
vim Claros_AltaUser-Groups.sh
cd
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin/
sudo vim Claros_AltaUser-Groups.sh
sudo chmod 744 Claros_AltaUser-Groups.sh 
ll
cd
sudo /usr/local/bin/Claros_AltaUser-Groups.sh /home/claros/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt claros
cd /usr/local/bin/
sudo vim Claros_AltaUser-Groups.sh
cd
sudo /usr/local/bin/Claros_AltaUser-Groups.sh /home/claros/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt claros
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin/
sudo vim Claros_AltaUser-Groups.sh
cd
sudo /usr/local/bin/Claros_AltaUser-Groups.sh /home/claros/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt claros
cat /etc/shadow
sudo cat /etc/shadow
cat /etc/group
cd
ll
cd RTA_Examen_20241112/
ll
echo "cd /usr/local/bin/" >> Punto_B.sh
clear
echo "sudo vim Claros_AltaUser-Groups.sh" >> Punto_B.sh
vim Punto_B.sh 
echo "sudo chmod 744 Claros_AltaUser-Groups.sh" >> Punto_B.sh
echo "sudo /usr/local/bin/Claros_AltaUser-Groups.sh /home/claros/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt claros" >> Punto_B.sh
cat Punto_B.sh 
vim Punto_B.sh 
cd
ll
