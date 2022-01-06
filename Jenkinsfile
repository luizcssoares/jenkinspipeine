#!/usr/bin/env groovy
pipeline {
    agent any    
    stages {
       stage('Maven Build'){                 
          steps{
              sh 'mvn package -Dmaven.test.skip=true'              
          }
          post {
              success {
                 echo 'e tal e tal'
              }
          }       
       }       
    }
  }