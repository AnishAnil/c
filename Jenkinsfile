pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'apache2/kitchen test'
        sh 'apache2/kitchen verify'
      }
    }
  }
}