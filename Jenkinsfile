pipeline {
     agent {
        docker { 
             image 'node:current-slim' 
             args '-u root:root'
        }
    }
     stages {
         stage('Build') {
             steps {
                 sh '''
		     cp -r todo-app/* .
		     sudo apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
                     npm install
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
