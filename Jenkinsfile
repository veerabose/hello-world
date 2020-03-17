node {
     
 stage('SCM Checkout'){
     git 'https://github.com/veerabose/hello-world'
   }
     
 stage('build code using maven){
   def mvnHome = tool name: 'mavan-3', type: 'maven'
     sh "${mvnHome}/bin/mvn package"
   }
}
