pipeline{
    agent any
    tools {
      maven 'maven-3'
    }
    environment {
      DOCKER_TAG = getVersion()
    }
    
    stages{
        stage('SCM'){
            steps{
                git credentialsId: 'github', 
                    url: 'https://github.com/vodili321/dockeransiblejenkins.git'
            }
        }
        
        stage('Maven Build'){
            steps{
                sh "mvn clean package"
            }
        }
        
        stage('Docker Build'){
            steps{
                sh "docker build . -t vodili321/hariapp:${DOCKER_TAG} "
            }
        }
        
        
    }
}
def getVersion(){
    def commitHash = sh label: '', returnStdout: true, script: 'git rev-parse --short HEAD'
    return commitHash
}

