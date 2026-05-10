pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build JAR') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t url-shortener:${BUILD_NUMBER} .'
            }
        }

        stage('Run with Docker Compose') {
            steps {
                sh 'docker compose up -d --build'
            }
        }
    }
}