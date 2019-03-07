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
        stage('Pull from Artifactory') {
            steps {
                sh 'wget http://artifactory:8081/artifactory/libs-snapshot-local/com/nisum/app/sample-java-app/1.0-SNAPSHOT/sample-java-app-1.0-20190307.190240-2.jar'
            }
        }
        stage('Execute') {
            steps {
                sh 'java -jar /var/jenkins_home/workspace/sample-app/sample-java-app-1.0-20190307.190240-2.jar'
            }
        }
    }
}
