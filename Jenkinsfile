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

    stages {
        stage('Debug') {
            steps {
                script {
                    sh 'echo $PATH'
                    sh 'which node'
                    sh 'which npm'
                }
            }
        }
        // Other stages
    }
}
