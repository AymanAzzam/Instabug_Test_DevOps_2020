pipeline {
     agent any
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
