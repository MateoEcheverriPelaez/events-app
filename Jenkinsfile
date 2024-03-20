node {
  stage('Checkout') {
    git checkout branch: 'main'  # Se eliminaron las llaves después de branch:
  }

  stage('Build') {
    sh 'bundle install'
    sh 'rake db:migrate'
    sh 'rake test'
  }

  stage('Deploy') {
    # Puedes agregar comandos para despliegue aquí
  }
}
