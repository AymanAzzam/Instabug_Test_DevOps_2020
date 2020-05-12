pipeline {
     agent {
        docker { 
	     image 'node:current-slim' 
             args '-u root:root'
	     image 'cypress/base' 
             args '-u root:root'
	     image 'darrylb/jsonlint' 
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
		 archive '**/target/*.jar'
		 archiveArtifacts artifacts: '../../jobs/Instabug_Test_DevOps/branches/master/builds/$BUILD_NUMBER/log'
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
                    
		 '''
              }
         }         
     }
}
