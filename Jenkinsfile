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

    stage('build image docker') {
      steps {
        sh 'whoami'
        sh 'pwd'
        sh 'docker build -t seek .'
        sh 'docker images'
      }
    }

  }
}