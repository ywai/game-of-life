node ('Linux64') {
   // Mark the code checkout 'stage'....
   stage 'Checkout'

   // Get code from a GitHub repository
   git poll: true, url: 'https://github.com/ywai/game-of-life.git'

   // Get the maven tool.
   def mvnHome = tool 'MVN3.2.2'

   // Mark the code build 'stage'....
   stage 'Build'
   // Run the maven build
   sh "${mvnHome}/bin/mvn clean install"
   
   stage 'Test'
   //Collect test results
   step([$class: 'JUnitResultArchiver', testResults: '**/target/surefire-reports/*.xml'])

   stage 'Deploy to Nexus'
   //archive artifact to Nexus
   sshagent(['57bfe579-8720-47e1-bd1a-3ca835aac004']) {
      //sh "mkdir -p /space/sonatype-work/nexus/storage/snapshots/com/wakaleo/gameoflife/gameoflife/${env.BUILD_NUMBER}"
      //sh "scp -P22 gameoflife-build/target/*.jar buildtool@10.104.128.58:/space/sonatype-work/nexus/storage/snapshots/com/wakaleo/gameoflife/gameoflife/${env.BUILD_NUMBER}/"
   }
   
}
