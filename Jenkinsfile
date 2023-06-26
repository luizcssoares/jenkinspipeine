pipeline {      
      environment {
	     registry = 'luizcssoares/apirestmessage'    
             dockerhub_credentials = 'luizcssoares-dockerhub'
	     docker_image = ''     
      }	 
      agent any
      stages {	
	      stage('GIT push') {
		      steps{  
		           git 'https://github.com/luizcssoares/ApiRestMessage.git'
		      }
	      }
	      stage('Build Maven') {		
		      steps {
		           sh 'mvn clean package -Dmaven.test.skip=true'     
		      }
	      }	
	      stage('Docker Build'){
		      steps {
			      script {     
			            docker_image = docker.build registry + ":$BUILD_NUMBER"		           
			      }
		      }
	      }	  	      	      
	      stage('Deploy our image') {
		      steps{
			    script {
				     docker.withRegistry( '', dockerhub_credentials ) {
			              docker_image.push()
			          }						
			    }
		      }
	      }	   
	      stage('Remove Images unused') {
		     steps{
			 sh "docker rmi $registry:$BUILD_NUMBER"
			 sh "docker rmi $registry:latest"		 
		     }
	      }		  
	      stage('Kubernetes'){
		     steps {
		           bat 'kubectl apply -f deployment.yml'
		     }
	      }	        
      }  
}
