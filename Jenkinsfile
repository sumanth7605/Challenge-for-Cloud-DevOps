pipeline {
  agent any
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t python-docker .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run -d -p 5000:5000 python-docker
        """
      }
    }
  }
}
