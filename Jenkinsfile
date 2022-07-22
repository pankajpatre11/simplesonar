pipeline 
{
    agent any

    stages
    {
        stage('Build')
        {
            steps
            {
                 sh script: 'mvn clean package'
            }
         }
        stage('Upload')
        {
            steps
            {
                    nexusArtifactUploader artifacts: [[artifactId: 'simple-app', file: 'target/simple-app-3.0.0-SNAPSHOT', type: 'war']], credentialsId: 'nexusid', groupId: 'in.javahome', nexusUrl: '44.201.219.187:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '3.0.0-SNAPSHOT'
            }
        }
 
    }
}



