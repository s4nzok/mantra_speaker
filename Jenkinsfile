
pipeline {
    agent any
    
    environment {
        // Disable eslint treating warnings as errors in CI
        CI = 'false'
        
        // Define environment variables
        NODE_HOME = tool name: 'NodeJS', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
        PATH = "${env.NODE_HOME}/bin:${env.PATH}"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Git repository containing the React app
                git branch: 'main', url: 'https://github.com/s4nzok/mantra_speaker.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Install dependencies
                sh 'npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build React app
                sh 'npm run build'
            }
        }
        
        stage('Serve') {
            steps {
                // Serve the React app using a web server
                sh 'npm install -g serve'
                sh 'nohup serve -s build -l 3000 > serve.log 2>&1 &'
                // Wait for serve command to start (optional)
                sleep 10 // Adjust as needed
                }
            }
        }
    }
    
    post {
        success {
            // If the pipeline succeeds, print success message
            echo 'React app is running at http://localhost:3000'
        }
        failure {
            // If the pipeline fails, print failure message
            echo 'Failed to run React app'
        }
        always {
            // Clean up after pipeline execution
            script {
                // Kill serve process if it's running
                sh 'pkill -f "serve -s build -l 3000" || true'
            }
        }
    }
}

