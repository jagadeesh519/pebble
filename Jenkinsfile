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
                sh '. ~/.bash_profile'
                sh 'sudo docker image pull tomcat:8.0'
                sh 'sudo docker container create --publish 8082:8080 --name pebble tomcat:8.0'

              }


}
}

}
