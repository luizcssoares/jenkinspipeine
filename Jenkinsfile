pipeline {
    agent {
              docker { image 'maven' }
          }     
    stages {
       stage('Maven Build'){               
          steps{
		      sh 'https://github.com/luizcssoares/jenkinspipeine.git' 
		      sh 'mvn --version' 
              sh 'mvn package -Dmaven.test.skip=true'              
          }       
       }       
       stage('Docker Build') {
          agent any
          steps {
             scripts { 
                 sh 'docker build -t luizcssoares/dockerapidemo:latest .'
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