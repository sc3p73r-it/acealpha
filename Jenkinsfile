pipeline {
    agent {
        label 'jenkins-agent-via-ssh'
    }

    environment {
        compose_service_name = "acealpha"
        workspace = "/home/jenkins/jenkins-agent/project/acealpha"
    }

 stages {
        stage('Checkout Source') {
            steps {
                ws("${workspace}") {
                    checkout scm
                }
            }
        }

        stage('Docker Compose Up') {
            steps {
                ws("${workspace}"){
                    sh "docker compose up -d ${compose_service_name}"
                }
            }
        }
    }
}