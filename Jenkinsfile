pipeline {
     agent {
        docker { 
	     image 'aymanazzam07/api' 
             args '-u root:root'
	     image 'cypress/base' 
             args '-u root:root'
	     image 'darrylb/jsonlint' 
             args '-u root:root'
        }
    }
    
     stages {
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
