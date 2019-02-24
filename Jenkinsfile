VERSION = (env.BRANCH_NAME != 'master')

node {

stage('Preparation') {
      cleanWs()
      git 'https://github.com/jonathanmorais/web-database-ci.git'

}

stage('second') {
    agent label:'node'
    branch "master"
    when {
        env.BRANCH == 'master'
    }
}

   stage('Modifed Wordpress Theme and Launch wordpress') {
      sh 'rm /data/html'
      sh 'git clone https://github.com/jonathanmorais/web-database-ci.git'
      sh 'mv themes/twentyfifteen/* /data/html'
      sh 'cd docker-wordpress && docker-compose up -d'
      sh 'cd ..'
      sh -- echo "wordpress and maria is up"'

   }

}

