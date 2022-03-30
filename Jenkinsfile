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
          docker run -d -p 5000:5000 docker_deployment
        """
      }
    }
  }
}
