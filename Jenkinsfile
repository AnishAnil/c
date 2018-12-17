pipeline {
  agent none
  stages {
    stage('Test') {
      steps {
        sh 'sudo cd /home/ubuntu/workspace/Test_Jenkins12/apache2/'
        sh 'sudo kitchen verify'
      }
    }
  }
}
