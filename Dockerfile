#The base image for the Docker image as Ubuntu 22.04
FROM ubuntu:22.04    

#This updates the package lists for the Ubuntu system.
RUN apt-get update

#This installs the nginx, zip, curl, and git packages in the Ubuntu system.
RUN apt-get install -y nginx zip curl git

#This appends the daemon off; configuration to the nginx.conf file, which ensures that Nginx runs in the foreground when the container starts.
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

#This clones the 2048 game repository from the specified URL using Git.
#cd ./2048 && mv ./* /var/www/html/: This changes the current directory to the cloned 2048 directory and then moves all its contents (.* matches hidden files as well) to the Nginx HTML directory (/var/www/html/). 
#This step effectively copies the game files into the Nginx server's document root.
RUN git clone https://github.com/gabrielecirulli/2048.git && \
    cd ./2048 && mv ./* /var/www/html/

#This instruction exposes port 80 on the Docker container, allowing it to accept incoming HTTP traffic.
EXPOSE 80

#This command specifies the command to run when the container starts. 
#It starts the Nginx service using the specified configuration file (/etc/nginx/nginx.conf).
CMD [ "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]

