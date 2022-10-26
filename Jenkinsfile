pipeline {
    agent { label 'OPENJDK' }
    stages {
        stage('vcs') {
            steps {
                git url: 'https://github.com/longflewtinku/vpc-ec2.git',
                    git branch: 'main'
            }
        }
        stage('vpc-build') {
            steps {
                sh 'aws ec2 create-vpc \
                        --cidr-block "10.0.0.0/16" \
                        --region "us-west-2"'
            }
        }
    }
}