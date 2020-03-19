pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'

        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                sh 'sudo docker image pull tomcat:8.0'
                sh 'chmod 755 test.sh'
                  
              }


}
}

}
