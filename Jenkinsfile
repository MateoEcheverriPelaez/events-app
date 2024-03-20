pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Utilizamos el comando 'git' con parámetros compatibles con Windows
                bat 'git clone --single-branch --branch main https://github.com/MateoEcheverriPelaez/events-app.git'
            }
        }

        stage('Build') {
            steps {
                // Utilizamos comandos 'bundle' y 'rake' dentro de 'bundle.bat' y 'rake.bat' respectivamente,
                // que son los ejecutables de Ruby en sistemas Windows
                bat 'bundle.bat install'
                bat 'rake.bat db:migrate'
                bat 'rake.bat test'
            }
        }
    }
}
