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

    stage('Login Dockerhub') {
      environment {
        DOCKERHUB_USER = 'gonchis'
        DOCKERHUB_PASSWORD = 'lukego2002'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('Tag Image') {
      steps {
        sh '''docker tag promo88-directory:latest gonchis/promo88:directory




   '''
      }
    }

    stage('Push') {
      steps {
        sh 'docker push gonchis/promo88:directory'
      }
    }

  }
}