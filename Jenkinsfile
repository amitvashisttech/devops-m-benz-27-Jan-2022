node {
    // some block

stage('Git CheckOut') {
  git branch: 'main', url: 'https://github.com/amitvashisttech/devops-m-benz-27-Jan-2022.git'
} 

stage('Maven Clean') {
  sh 'mvn clean -f 04-App-Code/petclinic-code/pom.xml'
}

stage('Maven Compile') {
  sh 'mvn compile -f 04-App-Code/petclinic-code/pom.xml'
} 

stage('Maven Test') {
  sh 'mvn test -f 04-App-Code/petclinic-code/pom.xml'
}

stage('Maven Package') {
  sh 'mvn package -f 04-App-Code/petclinic-code/pom.xml'
}
    
}


