pipeline{
    agent any
    tools {
        maven '3.9.11'
    }

    properties([pipelineTriggers([githubPush()])])

    stages {
        stage('Example Stage') {
            steps {
                echo 'Hello, World!'
            }
        }
        stage('git') {
            steps {
                git branch: 'dev', credentialsId: 'c29c8610-3b6c-4495-987b-f1e0e93607c8', url: 'https://github.com/kakarotzcloud/java-web-app.git'
            }
        }
    }
}
