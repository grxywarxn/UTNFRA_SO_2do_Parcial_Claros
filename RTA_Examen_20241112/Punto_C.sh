#!/bin/bash

cd UTN-FRA_SO_Examenes/202406/docker/

vim index.html
#modifiqué el apellido y la división en el archivo dentro del vim

sudo usermod -a -G docker claros

docker login -u luisclaros

#loguee con el token de docker hub

sudo su - claros

cat << EOF > dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EOF

docker build -t web1-claros .

docker tag web1-claros luisclaros/web1-claros

docker push luisclaros/web1-claros

cat << EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 luisclaros/web1-claros
EOF
chmod +x run.sh
