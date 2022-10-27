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
                sh '/home/ubuntu/remote_root/workspace/de-vpc-1-cli/awscli.sh'
            }
        }
    }
}
