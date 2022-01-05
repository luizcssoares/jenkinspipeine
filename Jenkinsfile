#!/usr/bin/env groovy
pipeline {
    agent any    
    stages {
       stage('Maven Build'){       
          agent {
              docker { image 'maven' }
          } 
          steps{
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
    
}  