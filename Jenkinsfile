node{
    stage('Example Stage') {
        echo 'Hello, World!'
    }
    def mavenhome = tool name : "3.9.11"
    stage('git'){
        git branch: 'dev', credentialsId: 'c29c8610-3b6c-4495-987b-f1e0e93607c8', url: 'https://github.com/kakarotzcloud/java-web-app.git'
    }
    stage('build'){
        bat """${mavenhome}"\\bin\\mvn" clean package"""
    }
    stage('build'){
        bat """${mavenhome}"\\bin\\mvn" clean sonar:sonar"""
    }
    stage('build'){
        bat """${mavenhome}"\\bin\\mvn" clean package"""
    }
    stage('hosting'){
        deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://100.31.86.119:8082/')], contextPath: '/abc', onFailure: false, war: '**/*.war'
    }
}
