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
                build(image: "crickinfoapp", version: "latest")
            }
        }
        stage("Push to dockerhub"){
            steps{
                push_to_dockerhub(prevBuildAppName: "crickinfoapp", dockerCreds: "dockercreds", version: "latest")
            }
        }
        stage("Code Deploy finally"){
            steps{
                deploy()
            }
        }
    }
}
