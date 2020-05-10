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

## To Run the App on AWS without dockerfile
Run this bash script
```sh
$ ./run_app.sh
```
