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

    stage('Build Docker') {
            agent {
                docker {
                    image 'gradle:6.7-jdk11'
                    // Run the container on the node specified at the top-level of the Pipeline, in the same workspace, rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'gradle --version'
            }
    }
  }
}