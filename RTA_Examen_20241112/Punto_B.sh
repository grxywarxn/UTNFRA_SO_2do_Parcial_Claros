cd /usr/local/bin/

sudo vim Claros_AltaUser-Groups.sh
#O

#!/bin/bash 


sudo groupadd 2P_GDesa
sudo groupadd 2P_GTest
sudo groupadd 2PSupervisores

LISTA=$1
USUARIO=$2

ANT_IFS=$IFS
IFS=$'\n'

for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}' | grep -v ^#`
do
        CONTRASENIA=$(grep "^$USUARIO:" /etc/shadow | awk -F ':' '{print$2}')
        USUARIOBUCLE=$(echo $i | awk '{print$1}')
        GRUPO=$(echo $i | awk '{print$2}')
        HOME_USR=$(echo $i | awk '{print$3}')
        sudo useradd -d $HOME_USR -g $GRUPO -p $CONTRASENIA $USUARIOBUCLE
done

IFS=$ANT_IFS

#Esc
#:wq

sudo chmod 744 Claros_AltaUser-Groups.sh

sudo /usr/local/bin/Claros_AltaUser-Groups.sh /home/claros/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt claros
