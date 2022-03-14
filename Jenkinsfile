pipeline {
  agent any
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t docker_deployment .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run -d -p 6000:6000 docker_deployment
        """
      }
    }
  }
}
