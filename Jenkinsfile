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
                script {
                    // Define tu prueba aquí
                    def event = new Event(title: "Fiesta fin de año", description: "Fiesta de amigos", date: "2024-12-31", address: "Calle 1")
                    assert event.valid(), "La prueba no pasó: el evento no es válido"
                }
            }
        }
    }
}
