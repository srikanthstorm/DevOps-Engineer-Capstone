pipeline {
    environment {
        USER_CREDENTIALS = credentials('dockerhub')
    }
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh './run_docker.sh'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh './upload_docker.sh $USER_CREDENTIALS_USR $USER_CREDENTIALS_PSW'
            }
        }
        stage('Deploy') {
            steps {
                  withAWS(region:'us-west-2',credentials:'aws-static') {
                  sh 'echo "Uploading content with AWS creds"'
                  sh './create_infra_step3.sh'
                  }
              }
         }
  
    }
}
