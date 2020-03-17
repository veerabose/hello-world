node {
     
 stage('SCM Checkout'){
     git 'https://github.com/veerabose/hello-world'
   }
     
 stage('build code using maven'){
   def mvnHome = tool name: 'maven-3', type: 'maven'
     sh "${mvnHome}/bin/mvn package"
   }
     
   stage('SonarQube Analysis') {
    def mvnHome =  tool name: 'maven-3', type: 'maven'
     withSonarQubeEnv('sonar-6') { 
       sh "${mvnHome}/bin/mvn sonar:sonar"
        }
    }
   
   stage('Email Notification'){
     mail bcc: '', body: 'test', cc: '', from: '', replyTo: '', subject: 'test from jenkins', to: 'vilvesh2008@gmail.com'
   }
}
