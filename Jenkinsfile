pipeline {
     agent none
    
     stages {
	 
         stage('Build') {
             agent any
	     steps {
                 sh 'npm install --prefix $(pwd)/todo-app'
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
		     npm install --prefix $(pwd)/todo-app
		     npm install -g yarn
                     yarn --cwd $(pwd)/todo-app test:unit
		     yarn --cwd $(pwd)/todo-app test:e2e --headless
		 '''
              }
         }         
     }
}
