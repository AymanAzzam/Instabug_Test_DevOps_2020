pipeline {
     agent {
        docker { 
	     image 'cypress/included:3.2.0' 
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
		    jsonlint-php *.json
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
