pipeline {
agent { Dockerfile true }
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
                       cd src
                       terraform -v
                       terraform init 
                       cd - 
                     '''
                }
             }
         }
         stage ('plan'){
             steps {
                 script{
                     sh '''
                       cd src
                       terraform plan
                       cd -    
                     '''
          }
               }
                  }
}
}
