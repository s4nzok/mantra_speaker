// pipeline {
//     agent any
    
//     stages {
//         stage('Build') {
//             steps {
//                 sh 'npm install' // Or any command to install dependencies
//             }
//         }
//         stage('Test') {
//             steps {
//                 sh 'npm test' // Or any command to run tests
//             }
//         }
//         stage('Docker Build') {
//             steps {
//                 sh 'docker build -t pipeline .'
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 sh 'docker push pipeline' // Or any command to deploy your image
//             }
//         }
//     }
// }



pipeline {
    agent any
    
    environment {
        // Define environment variables
        NODE_HOME = tool 'NodeJS'
        PATH = "${env.NODE_HOME}/bin:${env.PATH}"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Git repository containing the React app
                git 'https://github.com/your/repo.git'
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
                sh 'serve -s build -l 3000 &'
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
            sh 'killall serve || true'
        }
    }
}
