pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'export JAVA_HOME=/opt/java/openjdk'
        sh '''./gradlew build

'''
      }
    }

  }
}