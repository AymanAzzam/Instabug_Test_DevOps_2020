pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'sudo apt-get install nodejs'
                 sh 'npm install'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
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
