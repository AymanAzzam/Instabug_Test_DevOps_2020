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
5. Opening port 8080 for the machine.

## To Run the App on AWS Cloud9 without dockerfile
1. Run the script prerequisites.sh to install yarn and Cypress dependencies
```sh
$ ./scripts/prerequisites.sh
```
2. Run this bash script with the DNS name for the instance (for Local machine write 127.0.0.1)
```sh
$ ./scripts/local/run_app.sh DNS_Name
```
3. Open DNS_Name:8080 in browser to access the todo-app.

## To Run the App on AWS Cloud9 on docker Container
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
$ cd
$ ./run_docker.sh DNS_Name
```
4. Open DNS_Name:8080 in browser to access the todo-app.
