pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/Gsak79/promo-88-directory-api.git', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh 'docker compose build'
      }
    }

    stage('Push') {
      environment {
        DOCKERHUB_USER = 'gonchis'
        DOCKERHUB_PASSWORD = 'lukego2002'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD && docker push promo88-directory:latest docker.io'
      }
    }

  }
}