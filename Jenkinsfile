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
                   nexusArtifactUploader credentialsId: 'nexusid', groupId: 'com.example.maven3-project', nexusUrl: 'http://44.201.219.187:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'target/simple-app-1.0.0.war', version: '1.0.0'
            }
        }
 
    }
}

