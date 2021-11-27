pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'export JAVA_HOME=$JAVA_HOME'
        sh '''./gradlew build

'''
      }
    }

  }
}