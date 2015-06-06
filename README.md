# phpwebserver_docker
Dockerfile and other required files to build and run a docker with PHP in-built web server on the Ubuntu platform. This is a lightweight docker suitable for quickly testing your PHP files, without using Apache or another web server.

#Dockerhub

A docker using this Dockerfile has already been published to dockerhub at :

https://registry.hub.docker.com/u/techyugadi/phpwebserver/

# Build

To build your docker using the Dockerfile in this repository :

i. Copy these files to your local machine : Dockerfile , index.php 

ii. Then from the directory where you copied the files, run :

sudo docker build -t="your_user/phpwebserver" . 

(Replace your_user by your user name)

# Using Volume

It is recommended that you mount a directory containing your PHP files at /content. It is better not to mount the directory directly at / because we have copied an index.php file there. When the docker starts up, you can point your browser to the HTTP URL of the web server (from our /index.php ). You will see a message "Hello World!" and the current time printed. This will be a quick sanity test that the docker was started up successfully.

# Run

It is recommended that you run the docker using a command-line like:

docker run -i -t -v /home/user/content:/content -p 3363:80 your_user/phpwebserver

Replace your_user by your user name.

Replace /home/user/content with a directory where your PHP files are located.

The docker exposes the HTTP port 80. Instead of port 3336, map docker port 80 to any suitable port on the docker host.

You will see PHP web server logs directly on the console, which should be helpful in dev environment.

If you don't want messages on the console, you can use -d option instead of -it .
