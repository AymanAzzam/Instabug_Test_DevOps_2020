pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh '''
                     git clone https://github.com/dobromir-hristov/todo-app.git
                     mv todo-app/* .
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
