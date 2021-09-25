pipeline {
    agent none    
    stages {
       stage('build'){       
          agent {
              docker { image 'maven' }
          } 
          steps{
              sh 'mvn package -Dmaven.test.skip=true'
          }       
       }
    }
}  