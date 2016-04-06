node ('Linux64') {
	git url : 'https://github.com/ywai/game-of-life.git'
	def mvnHome = tool 'MVN3.2.2'
  	sh "${mvnHome}/bin/mvn clean verify"
}
