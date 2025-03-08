pipeline {
    agent any
    
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/582Bamfo/cicd.git'
            }
        }
        
        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
    
    post {
        success {
            echo 'Terraform applied successfully!'
        }
        failure {
            echo 'Pipeline failed! Check logs for details.'
        }
    }
}

