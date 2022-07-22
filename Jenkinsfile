pipeline {
    agent any

    stages{
        stage('Build'){
            steps{
                 sh script: 'mvn clean install'
                 archiveArtifacts artifacts: 'target/*.war', onlyIfSuccessful: true
            }
        }
        stage('Push War To Nexus'){
            steps{
                 nexusArtifactUploader artifacts: [
                     [artifactId: 'maven-project',
                      classifier: '',
                      file: 'target/maven-project-1.0.0.war',
                      type: 'war']
                 ], 
                     credentialsId: 'nexus',
                     groupId: 'com.example.maven3-project',
                     nexusUrl: '44.201.219.187:8081',
                     nexusVersion: 'nexus3',
                     protocol: 'http',
                     repository: 'simple-app-release',
                     version: '1.0.0'
            }
        }        

        
 /*       stage('Upload War To Nexus'){
            steps{
                script{

                    def mavenPom = readMavenPom file: 'pom.xml'
                    def nexusRepoName = mavenPom.version.endsWith("SNAPSHOT") ? "simpleapp-snapshot" : "simpleapp-release"
                    nexusArtifactUploader artifacts: [
                        [
                            artifactId: 'simple-app', 
                            classifier: '', 
                            file: "target/simple-app-${mavenPom.version}.war", 
                            type: 'war'
                        ]
                    ], 
                    credentialsId: 'nexus3', 
                    groupId: 'com.example.maven-project', 
                    nexusUrl: '54.234.131.92:8081', 
                    nexusVersion: 'nexus3', 
                    protocol: 'http', 
                    repository: maven-snapshots, 
                    version: "${mavenPom.version}"
                    }
            }
        } */
    }
}


