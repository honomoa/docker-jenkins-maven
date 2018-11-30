# DOCKER-JENKINS-MAVEN

Maven fit for jenkins pipeline

# How To Use

Jenkinsfile:

```
pipeline {
  agent {
    docker {
      image 'honomoa/jenkins-maven'
    }
  }
  stages {
    stage('Clone scm') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[url: 'http://git-server/user/repository.git']]])
      }
    }
    stage('Run Maven') {
      steps {
        sh 'mvn --version'
      }
    }
  }
}
```
