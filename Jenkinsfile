pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh './gradlew clean build'
            }
        }
        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
        stage('Deliver') {
            steps {
                sh './gradlew artifactoryPublish'
            }
        }
    }
}
