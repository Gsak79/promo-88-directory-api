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
        sh 'docker build -t promo88-directory:latest .'
      }
    }

  }
}