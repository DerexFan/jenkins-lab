pipeline {

  agent {
    kubernetes {
      yamlFile 'agent/agent-pod.yaml'
    }
  }

  stages {

    stage('Deploy') {

      steps {

        container('tools') {

          sh '''
          kubectl apply -f k8s/
          kubectl rollout status deployment/hello-app
          '''
        }

      }

    }

  }

}
