pipeline {
  agent none
  stages {
    stage('Test') {
      steps {
        sh 'apache2/kitchen test'
      }
    }
  }
}
