pipeline {
  agent { dockerfile true }
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
                    sh 'pwd'
                }
         }
         stage ('plan'){
             steps {
                    echo "Helloworld"
                    sh 'ps -aux'
               }
                  }
}
}
