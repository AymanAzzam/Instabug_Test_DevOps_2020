pipeline {
     agent none
    
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
	     agent {
		docker { 
	     	     image 'aymanazzam07/todo-app' 
             	     args '-u root:root'
		}
	     }
             steps {
                 sh 'npm install'
		 archiveArtifacts artifacts: '$JENKINS_HOME/jobs/Instabug_Test_DevOps/branches/master/builds/$BUILD_NUMBER/log', allowEmptyArchive: true
		 archiveArtifacts artifacts: 'node_modules/*/*.json,*.json', allowEmptyArchive: true
             }
         }
         stage('Lint') {
	     agent {
	         docker { 
	     	     image 'darrylb/jsonlint' 
             	     args '-u root:root'
	         }
	     }
              steps {
                 sh 'jsonlint *.json'
              }
         }
         stage('Test') {
	      agent {
		docker { 
	     	     image 'aymanazzam07/todo-app' 
             	     args '-u root:root'
		}
	     }
              steps([$class: 'Xvfb']) { 
                 sh '''
                     yarn test:unit
		     yarn test:e2e --headless
		 '''
              }
         }         
     }
}
