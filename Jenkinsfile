#!/usr/bin/env groovy
pipeline {
    agent any    
    stages {
       stage('Build'){       
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
}
    
}  