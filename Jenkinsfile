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
        stage('Upload'){
            steps{ 
                def mavenPom = readMavenPom 'pom.xml'
                nexusArtifactUploader artifacts: 
                    [[artifactId: 'maven-project',
                      classifier: '',
                      file: "target/maven-project-${mavenPom.version}.war",
                      type: 'war'
                     ]],
                    credentialsId: 'nexusid',
                    groupId: 'com.example.maven3-project',
                    nexusUrl: '44.201.219.187:8081',
                    nexusVersion: 'nexus3',
                    protocol: 'http',
                    repository: 'maven-snapshots',
                    version: "${mavenPom.version}"
            }
        }
 
    }
}

