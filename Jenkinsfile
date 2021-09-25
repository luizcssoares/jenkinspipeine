pipeline{
    agent none
    stages {
       stage('Build') 
          agent {
              docker { image 'maven:3.3.3'}
          }
          steps{
              sh "mvn package -Dmaven.test.skip=true"
          }
       }
    }
}  