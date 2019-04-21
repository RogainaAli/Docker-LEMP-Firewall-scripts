                          # Docker-LEMP-Firewall-scripts
# for running ansible playbook to install docker and docker compose on local machine 
# due to lack of RAM resources to make 2 vms up at the same time 

sudo ansible-playbook docker_playbook.yml --connection=local

# for pushing nginx_image to docker hub

sudo docker build -t nginx_image .

sudo docker login

sudo docker tag nginx_image rbadr/nginx_image

sudo docker push rbadr/nginx_image

# for running docker compose

sudo docker-compose up -d

# for running scripts

chmod +x firewall.sh 

 ./firewall.sh
 
chmod +x lasttask.sh 

./lasttask.sh 
  
chmod +x Renaming_files.sh

./Renaming_files.sh
