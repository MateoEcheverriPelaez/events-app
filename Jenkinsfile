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
                bat '"C:\\Users\\user\\.bundle\\bin\\bundle.bat" install'
                bat '"C:\\Users\\user\\.bundle\\bin\\bundle.bat" exec rake db:migrate RAILS_ENV=test'
            }
        }
    }
}
