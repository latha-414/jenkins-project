pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-github-username/devsecops-demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devsecops-app .'
            }
        }

        stage('Security Scan') {
            steps {
                sh 'trivy image devsecops-app'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub', url: '']) {
                    sh 'docker tag devsecops-app your-docker-hub-username/devsecops-app:latest'
                    sh 'docker push your-docker-hub-username/devsecops-app:latest'
                }
            }
        }
    }
}
