node ('Linux64') {
   // Mark the code checkout 'stage'....
   stage 'Checkout'

   // Get code from a GitHub repository
   git url: 'https://github.com/ywai/game-of-life.git'

   // Get the maven tool.
   def mvnHome = tool 'MVN3.2.2'

   // Mark the code build 'stage'....
   stage 'Build'
   // Run the maven build
   sh "${mvnHome}/bin/mvn clean install"

   //Collect test results
   step([$class: 'JUnitResultArchiver', testResults: '**/target/surefire-reports/*.xml'])

   //archive artifact to Nexus
   //sshagent(['my-private-key-credentials-ID']) {
   //  sh 'scp some-file www@somewhere.net:/apps'
   //}
   
}
