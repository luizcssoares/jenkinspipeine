pipeline {
    agent any 
    enviroment {	
	    registry = 'https://github.com/luizcssoares/jenkinspipeine.git'
	    dockerhub_credentials = 'luizcssoares-ockerhub'
	    docker_image = '' 	    
    }     
    stages {
       stage('GIT push'){
	  steps {
             sh 'https://github.com/luizcssoares/jenkinspipeine.git' 		  
	  }
       }	    
       stage('Maven Build'){               
          steps{
              sh 'mvn package -Dmaven.test.skip=true'              
          }       
       }       
       stage('Docker Build') {
          agent any
          steps {
             scripts { 
                 sh 'docker build -t luizcssoares/dockerapidemo'+':$BUILD_NUMBER'
             }
          }
       }
       stage('Deploy to k8s'){
          steps{
             scripts {
               sh 'kubectl apply -f docker-k8s-apidemo.yaml'
             }
          }
       }
    }
  }
