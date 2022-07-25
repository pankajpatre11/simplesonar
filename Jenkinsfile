pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/pankajpatre11/simplesonar.git'
            }
        }
 
   
withSonarQubeEnv('SonarQubeServer') {
                    dir("/var/lib/jenkins/workspace/demo-pipeline/"){
                        sh '''
                        mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.1.2184:sonar\
			-Dsonar.projectKey=pankajpatre11_simple-app \
			-Dsonar.projectName=PankajPatre \
                        -Dsonar.java.coveragePlugin=jacoco \
                        -Dsonar.jacoco.reportPaths=target/jacoco.exec \
    			-Dsonar.junit.reportsPaths=target/surefire-reports
    			'''
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
