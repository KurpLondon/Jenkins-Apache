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
    }
}