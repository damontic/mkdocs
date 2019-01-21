pipeline {
	agent any 
	stages {
		stage('Build') {
			steps {
				sh 'produce.sh'
			}
		}
		stage('Test') {
			steps {
				sh 'serve.sh'
				sh 'curl localhost:8000'
			}
		}
	}
}
