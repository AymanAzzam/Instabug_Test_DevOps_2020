pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo Build'
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
                 sh 'echo Test'
              }
         }         
     }
}
