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
                sh 'chmod 777 /home/ubuntu/remote_root/workspace/de-ec2-1/awscli.sh'
                sh '/home/ubuntu/remote_root/workspace/de-ec2-1/awscli.sh'
            }
        }
    }
}
