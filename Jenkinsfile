pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh '''
                     if [[ -d /todo-app/ ]]
                     then
                         rm -r todo-app
                     fi
                     git clone https://github.com/dobromir-hristov/todo-app.git
                     mv todo-app/* .
                     npm install -g yarn
                     sudo apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
                 '''
             }
         }
         stage('Lint') {
              steps {
                  sh 'echo Lint'
              }
         }
         stage('Test') {
              steps { 
                 sh 'yarn test:unit'
                 sh 'yarn test:e2e --headless'
              }
         }         
     }
}
