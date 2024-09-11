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
                docker build -t my-apache2 .
                docker run -dit --name my-running-app -p 8080:80 my-apache2
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