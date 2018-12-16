pipeline {
  agent none
  stages {
    stage('Test') {
      steps {
        sh 'apache2/kitchen test'
        sh 'apache2/kitchen verify'
        sh '/apache2/kitchen verify'
      }
    }
  }
}