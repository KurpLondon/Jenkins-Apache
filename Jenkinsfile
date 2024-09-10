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
                echo "Taggle" > taggle.txt
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