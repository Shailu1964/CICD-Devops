pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Shailu1964/CICD-Devops.git'
            }
        }
        stage('Build') {
            steps {
                // Example: Compile COBOL programs using Zowe CLI or DBB
                sh 'zowe jobs submit ds "Z52080.JCL(HELLO)" --wait'
            }
        }
        stage('Test') {
            steps {
                // Example: Run unit tests
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                // Example: Deploy using Zowe CLI or Ansible
                sh 'zowe zos-files upload file-to-data-set "C:\Users\shail\OneDrive\Desktop\ibm\CICD\CICD-Devops\example.cob" Z52080.SHY.LOADLIB(EXAMPLE)'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
