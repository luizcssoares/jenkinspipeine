#!/usr/bin/env groovy
pipeline {
    environment {
        imagename = "luizcssoares/dockerapidemo"   
        registryCredential = 'luizcssoares-Lucas@2001'     
        dockerImage = ''
    }
    agent any    
    stages {
        stage('Cloning Git') {
        steps {
            git([url: 'https://github.com/luizcssoares/jenkinspipeine.git', branch: 'pipeline')

        }
    }
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
          dockerImage = docker.build imagename           
       }    
       stage('Deploy Image') {
         steps{
            script {
               docker.withRegistry( '', registryCredential ) {
                   dockerImage.push("$BUILD_NUMBER")
                   dockerImage.push('latest')
               }
            }
         }
       }
       stage('Remove Unused docker image') {
         steps{
            sh "docker rmi $imagename:$BUILD_NUMBER"
            sh "docker rmi $imagename:latest"
         }
       }
    }
}
    
}  