pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				git submodule deinit --all -f
				git submodule init
				git submodule sync
				git submodule update
				sh "mvn clean package"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}