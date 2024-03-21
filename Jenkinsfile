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
                    // Definición de la clase Event directamente en el Jenkinsfile
                    class Event {
                        String title
                        String description
                        String date
                        String address
                        
                        boolean valid() {
                            // Implementa la lógica para validar el evento aquí
                            return title && description && date && address
                        }
                    }

                    // Crear una instancia de Event y realizar la prueba
                    def event = new Event(title: "Fiesta fin de año", description: "Fiesta de amigos", date: "2024-12-31", address: "Calle 1")
                    assert event.valid(), "La prueba no pasó: el evento no es válido"
                }
            }
        }
    }
}
