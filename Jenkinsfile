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
            }
        }
    stage('Deploy') {
            agent {
                docker { image 'tomcat:8.0-alpine' }
            }
            steps {
                ADD *.war /usr/local/tomcat/webapps/
                
                CMD ["catalina.sh", "run"]
        }
    }
}
}
