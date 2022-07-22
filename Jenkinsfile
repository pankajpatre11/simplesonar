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
                  nexusArtifactUploader artifacts: [[artifactId: 'maven-project', classifier: '', file: 'target/maven-project-1.0.0.war', type: 'war']], credentialsId: 'nexusid', groupId: 'com.example.maven3-project', nexusUrl: '44.201.219.187:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '1.0.0'
            }
        }
 
    }
}

