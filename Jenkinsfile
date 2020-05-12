pipeline {
     agent {
        docker { 
	     image 'cypress/included:3.2.0' 
             args '-u root:root'
	     image 'node:current-slim' 	
             args '-u root:root'
	     image 'cytopia/jsonlint' 
             args '-u root:root'
        }
    }
    
     stages {
	 stage('Move Files') {
             steps {
                 sh '''
		     cp -r todo-app/* .
		     cp todo-app/.eslintrc.js .
		     cp todo-app/.editorconfig .
		     cp todo-app/.browserslistrc .
                 '''
             }
         }
         stage('Build') {
             steps {
                 sh '''
                     npm install
                 '''
             }
         }
         stage('Lint') {
              steps {
                 sh '''
		    jsonlint *.json
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
