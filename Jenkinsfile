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
		     cp todo-app/* .
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
