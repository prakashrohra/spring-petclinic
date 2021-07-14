pipeline {
    agent any
    tools {maven 'Maven-3'}

    stages {
        
        stage('Git-Checkout') {
            steps {
                echo 'Checking Out from GIT....'
                git branch: 'main', url: 'https://github.com/prakashrohra/spring-petclinic'
            }
        }

        stage('Build') {
            steps {
                echo 'Building.....'
                bat 'mvn compile'
            }
        }
        
        
        stage('test') {
            steps {
                echo 'Starting testing ...'
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                echo 'Packcging...'
                bat 'mvn package'
                
            }
        }
        
        
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                bat 'java -jar C:/Users/Prakash/AppData/Local/Jenkins/.jenkins/workspace/Pipeline_Declarative_SpringPetClinic_Git_Maven/target/spring-petclinic-2.4.5.jar'
            }
        }
        
    }
    
    post {
        
        always {
            echo 'This will always run'
        }
        success {
            echo ' Run only if Suucessfull'
        }
        failure{
            echo ' Failed..'
        }
        unstable{
            echo ' run was marked as unstable'
        }
        changed{
            echo 'state of the run has changed'
        }
    }
    
}
