pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Clean up workspace
                deleteDir()

                // Checkout source code from repository
                git 'https://github.com/your-repo.git'

                // Build your project
                sh 'mvn clean install'

                // Additional build steps if needed
                // ...

                // Archive artifacts
                archiveArtifacts(artifacts: '**/target/*.jar', fingerprint: true)
            }
        }
    }
}
