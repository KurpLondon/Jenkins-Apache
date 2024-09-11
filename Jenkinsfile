pipeline {
    agent { 
        node {
            label 'docker-jenkins-agent-withpython-kurp'
            }
      }
    triggers{
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Creating Web Server Container ..."
                sh '''
                docker -H 172.18.0.2:2375 build -t my-apache2 .
                docker -H 172.18.0.2:2375 run -dit --name my-running-app -p 8081:80 my-apache2
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