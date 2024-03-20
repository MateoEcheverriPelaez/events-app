pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MateoEcheverriPelaez/events-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'bundle install'
                sh 'rake db:migrate'
                sh 'rake test'
            }
        }
    }
}
