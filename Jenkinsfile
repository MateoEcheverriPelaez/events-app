node {
  stage('Checkout') {
    git checkout branch: 'main'
  }

  stage('Build') {
    sh 'bundle install'
    sh 'rake db:migrate'
    sh 'rake test'
  }

  stage('Deploy') {
    # Puedes agregar comandos para deployar a producción
    # (por ejemplo, usando Heroku, AWS, etc.)
  }
}
