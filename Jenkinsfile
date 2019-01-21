pipeline {
	agent any 
	stages {
		stage('Test produce') {
			steps {
				sh 'produce.sh'
			}
		}
		stage('Test serve') {
			steps {
				sh 'serve.sh'
			}
		}
	}
}
