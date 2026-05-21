# Infrastructure pipelines
# INfra-Director
pipeline {
    agent any

    stages {
        stage ("Terraform-init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("tf validation") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("Terraform-plan") {
            steps {
                sh 'terraform plan > plan.txt'
                sh 'cat plan.txt'
            }
        }
        stage ('Create-infra') {
        input ('apporval for infra creation', approver: shashi)
            steps {
                sh 'terraform apply -auto-approve > output.txt'  
            }
        }
        stage ('Outputs') {
            steps {
                sh 'cat output.txt'
            }
        }
    }
}


