pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    def dockerImage = 'BiblioPoli'
                    def dockerContainer = 'BiblioPoliContainer'
                    
                    // Etapa de construcción del contenedor Docker
                    sh "docker build -t $dockerImage ."
                    
                    // Etapa de ejecución del contenedor Docker
                    sh "docker run --name $dockerContainer $dockerImage"
                }
            }
        }
    }
}
