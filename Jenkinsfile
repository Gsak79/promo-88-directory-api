pipeline {
  agent any
  stages {
    stage('Checkout code') {
      steps {
        git(url: 'https://github.com/Gsak79/promo-88-directory-api.git', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh './mvnw clean package && docker compose up'
      }
    }

  }
}