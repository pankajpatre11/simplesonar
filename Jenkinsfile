pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/pankajpatre11/simplesonar.git'
            }
        }
        stage('SonarQube analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                   sh '''mvn clean install \
                         mvn sonar:sonar -Dsonar.login=e1ddcc1c5d09f8131f66537b11a48dd95387c806'''
                   
                }
            }
        }
        stage("Quality gate") {
            steps {
                waitForQualityGate abortPipeline: true
            }
        }
    }
}
