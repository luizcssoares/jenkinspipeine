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
    }
  }