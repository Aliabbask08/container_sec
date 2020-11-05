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
                        
                     '''
                }
             }
         }
         stage ('Image_scanning'){
             steps {
                 script{
                     sh '''
                        
                     '''
          }
               }
                  }
}
}
