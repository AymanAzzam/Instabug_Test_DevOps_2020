pipeline {
     agent none
    
     stages {
         }
         stage('Build') {
             agent any
	`    steps {
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
                 sh 'jsonlint todo-app/*.json'
              }
         }
         stage('Test') {
	      agent any
              steps([$class: 'Xvfb']) { 
                 sh '''
                     yarn test:unit
		     yarn test:e2e --headless
		 '''
              }
         }         
     }
}
