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
                bat 'bundle install'
                bat 'bundle exec rake db:migrate RAILS_ENV=test' // Ejecuta las migraciones en el entorno de prueba
                bat 'bundle exec rake test' // Ejecuta las pruebas en el entorno de prueba
            }
        }
    }
}
