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
                bat '"C:\\Users\\user\\.bundle\\bin\\bundle.bat" install' // Ruta al ejecutable bundle.bat
                bat '"C:\\Users\\user\\.bundle\\bin\\bundle.bat" exec rake db:migrate RAILS_ENV=test' // Ejecuta las migraciones en el entorno de prueba
                bat '"C:\\Users\\user\\.bundle\\bin\\bundle.bat" exec rake test' // Ejecuta las pruebas en el entorno de prueba
            }
        }
    }
}
