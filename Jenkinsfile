#!/usr/bin/env groovy
pipeline {
    agent any    
    stages {
       stage('Build'){       
          agent any
          steps{
              sh 'mvn package -Dmaven.test.skip=true'              
          }       
       }
       stage('Docker Build') {
       agent any
       steps {
          sh 'docker build -t target/dockerapidemo:latest .'
       }
    }
}
    
}  