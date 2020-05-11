# Instabug_Test_DevOps

## PreRequisites 
PreRequisites for Ubuntu Machine on AWS 18.04 LTS using Cloud9:
1. Docker (It comes with Cloud9 already).
2. npm (It comes with Cloud9 already).
3. yarn.
```sh
$ npm install -g yarn
```
4.  Cypress dependencies.
```sh
$ sudo apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
```
5. Opening port 1024 for the machine.

## To Run the App on AWS Cloud9 without dockerfile
Note: you need to change the DNS_Name inside Dockerfile first. <br />

From this directory run the following Scripts:
1. Run the script prerequisites.sh to install yarn and Cypress dependencies
```sh
$ ./scripts/prerequisites.sh
```
2. Run the following script to prepare the todo-app repo
```sh
$ ./scripts/local/download_app.sh
```
3. Run this bash script with the DNS name for the instance (for Local machine write 127.0.0.1)
```sh
$ cd todo-app
$ ./run_app.sh ec2-3-226-249-235.compute-1.amazonaws.com
```
4. Open DNS_Name:1024 in browser to access the todo-app.

## To Run the App on AWS Cloud9 on docker Container
Note: you need to change the DNS_Name inside Dockerfile first.
From this directory run the following Scripts:
1. Run the script prerequisites.sh to install yarn and Cypress dependencies
```sh
$ ./scripts/prerequisites.sh
```
2. Run the following script to prepare the todo-app repo
```sh
$ ./scripts/docker/download_app.sh
```
3. Run this bash script with the DNS name for the instance (for Local machine write 127.0.0.1)
```sh
$ cd todo-app
$ ./run_docker.sh ec2-3-226-249-235.compute-1.amazonaws.com
```
4. Open DNS_Name:1024 in browser to access the todo-app.

## Jenkins
1. Run the following commands from this directory to install the dependencies.
```sh
$ cd Jenkins
$ ./install.sh
```
2. Configure Jenkins and install BlueOcean plugin then Create pipeline.

3. Add the user to the docker group using the next command:
```sh
$ sudo usermod -a -G docker ubuntu
```
