@Library('Shared')_
pipeline{
    agent {label "worker-server"}
    
    stages{
        stage("Code clone"){
            steps{
                clone("https://github.com/sharmaaakash170/CrickInfo-backend.git", "main")                
            }
        }
        stage("Code Build"){
            steps{
                build_image(image: "crickinfoapp", version: "latest")
            }
        }
        stage("Push to dockerhub"){
            steps{
                withCredentials([usernamePassword(
                    credentialsId:"dockercreds",
                    usernameVariable:"username",
                    passwordVariable:"password")]){
                        sh "docker login -u ${env.username} -p ${env.password}"
                        sh "docker image tag crickapp:latest ${env.username}/crickinfoapp:latest"
                        sh "docker push ${env.username}/crickinfoapp:latest"
                    }
            }
        }
        stage("Code Deploy finally"){
            steps{
                deploy()
            }
        }
    }
}
