pipeline {
agent any
     stages{
         stage('cleanWorkspace'){
            steps{
                step([$class: 'WsCleanup'])
}
}
         stage('clone'){
             steps{ 
                checkout ([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[ url: 'https://github.com/Aliabbask08/container_sec.git']]])
}
}

         stage ('build'){
             steps{
                script{
                     sh '''
                        sudo docker build -t myimage:latest .
                     '''
                }
             }
         }
         stage ('Image_scanning'){
             steps {
                 script{
                     sh '''
                        sudo trivy myimage:latest
                     '''
          }
               }
                  }
}
}
