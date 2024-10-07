pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone your Git repository
                //git 'https://github.com/Ak9994/Test.git' // Change to your repo URL
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    def app = docker.build("hello-world-app")
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container
                    
                    docker.image("hello-world-app").run()
                }
            }
        }
        stage('Minikube login'){
            environment{
                //registryCredential = 'dockerhub'
                DOCKER_USERNAME = dockerhub1
                DOCKER_PASSWORD = dockerhub1   
            }
            steps{
                script{
                    bat "echo \$DOCKER_PASSWORD | docker login -u \$DOCKER_USERNAME --password-stdin"
                    //docker.withRegistry('https://registry.hub.docker.com',registryCredential){
                        //dockerImage.push("hello-world-app");}
                }
            }
        }
        stage('Deploy to MiniKube'){
            steps{
                bat 'kubectl apply -f deployment.yaml'
            }
        }
    }

    post {
        always {
            // Clean up
            bat 'docker rmi hello-world-app'
        }
    }
}
