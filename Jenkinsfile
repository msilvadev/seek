pipeline {
  agent any
  stages {
    stage('echo java') {
      steps {
        sh '''


echo $JAVA_HOME'''
        withGradle()
      }
    }

    stage('build') {
      steps {
        sh '''./gradlew build

'''
      }
    }

  }
}