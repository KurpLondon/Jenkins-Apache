pipeline {
    agent { 
        dockerfile true
      }
    triggers{
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Creating Web Server Container ..."
                sh '''
                DOCKER_OPTS="--dns 192.168.0.3 --dns 8.8.8.8"
                docker -H 172.18.0.2:2375 build -t my-apache3 .
                docker -H 172.18.0.2:2375 run -dit --name my-running-app -p 8082:80 my-apache3
                '''
               
            }
        }
        /*stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                source /home/jenkins/venv/bin/activate
                cd myapp
                python3 yellow.py
                deactivate
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }*/
    }
}