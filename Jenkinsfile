pipeline {
    agent any

    stages{
        stage('Build'){
            steps{
                 sh script: 'mvn clean install'
            }
        }
        
        

    stages{
        stage('Upload'){
            steps{
                    nexusArtifactUploader artifacts: [[artifactId: 'simple-app', classifier: 'debug', file: 'target/simple-app-3.0.0-SNAPSHOT', type: 'war']], credentialsId: 'nexusid', groupId: 'in.javahome', nexusUrl: '44.201.219.187:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '3.0.0-SNAPSHOT'
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



