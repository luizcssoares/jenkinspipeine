pipeline{
    agent none
    stages {
       stage('Build') 
          agent {
              docker { image 'maven'}
          }
          steps{
              sh "mvn package -Dmaven.test.skip=true"
          }
       }
    }
}  