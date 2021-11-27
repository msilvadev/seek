pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''


echo $JAVA_HOME 
./gradlew build

'''
      }
    }

  }
}