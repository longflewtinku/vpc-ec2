pipeline {
    agent { label 'OPENJDK' }
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/longflewtinku/vpc-ec2.git',
                    branch: 'main'
            }
        }
        stage('vpc-build') {
            steps {
                sh 'awscli.sh'
            }
        }
    }
}