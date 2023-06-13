pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    def dockerImage = 'bibliopoli'
                    def dockerContainer = 'bibliopolicontainer'
                    
                    // Etapa de construcción del contenedor Docker
                    sh "docker build -t $dockerImage ."
                    
                    // Etapa de ejecución del contenedor Docker
                    sh "docker run -d -p 3000:3000 --name $dockerContainer $dockerImage"
                }
            }
        }
    }
}
