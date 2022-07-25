pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/pankajpatre11/simplesonar.git'
            }
        }
          stage('junit analysis') {
            
             
            steps {
                sh 'mvn clean verify -DskipITs=true';junit 'target/surefire-reports/*.xml'archive 'target/*.jar'
                }
            }
   
        
        
        stage('SonarQube analysis') {
            
             
            steps {
                withSonarQubeEnv('SonarQube') {
                   sh "mvn clean install"
                    sh "mvn sonar:sonar -Dsonar.login='e1ddcc1c5d09f8131f66537b11a48dd95387c806'"
                   
                }
            }
        }
        
       stage('SQuality Gate') {
          steps {
                 timeout(time: 1, unit: 'MINUTES') {
                  waitForQualityGate abortPipeline: true
               }
               }
           }
    
    }
}
