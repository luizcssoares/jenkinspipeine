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
    }
  }