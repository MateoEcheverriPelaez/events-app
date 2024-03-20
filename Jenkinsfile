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
                bat 'bundle install' // Ejecuta el comando bundle para instalar las gemas necesarias
                bat 'bundle exec rake db:migrate' // Ejecuta las migraciones de la base de datos
                bat 'bundle exec rake test' // Ejecuta las pruebas
            }
        }
    }
}
