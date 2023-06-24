pipeline {
    agent any
    
    stages {
        stage('Unit Tests') {
            steps {
                // Ejecutar pruebas unitarias
                sh 'npm test'
            }
        }
        stage('Build') {
            steps {
                script {
                    def dockerImage = 'bibliopoli'
                    def dockerContainer = 'bibliopolicontainer'
                    
                    // Etapa de construcción del image Docker
                    sh "docker build -t $dockerImage ."
                    
                    // Etapa de ejecución del contenedor Docker
                    sh "docker run -d -p 3000:3000 --name $dockerContainer $dockerImage"
                }
            }
        }
    }
}
