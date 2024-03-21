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
                echo 'Ejecutando la prueba...'
                // Realizar una prueba simple aquí
                // Puedes imprimir un mensaje o realizar otra acción de prueba
            }
        }
    }
}
