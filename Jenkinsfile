pipeline {
     agent {
        docker { 
	     image 'cypress/included:3.2.0' 
             args '-u root:root'
	     image 'node:current-slim' 	
             args '-u root:root'
        }
    }
     stages {
         stage('Build') {
             steps {
                 sh '''
		     cp -r todo-app/* .
		     cp todo-app/.eslintrc.js .
		     cp todo-app/.editorconfig .
		     cp todo-app/.browserslistrc .
                     npm install
                 '''
             }
         }
         stage('Lint') {
              steps {
                 sh '''
		     jsonlint package.json
		     jsonlint cypress.json
		 '''
              }
         }
         stage('Test') {
              steps { 
                 sh '''
                     yarn test:unit
                     yarn test:e2e --headless
		 '''
              }
         }         
     }
}
