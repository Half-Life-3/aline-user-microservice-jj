pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh "git submodule deinit --all -f"
				sh "git submodule init"
				sh "git submodule sync"
				sh"git submodule update"
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