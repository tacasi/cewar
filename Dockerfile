FROM tomcat:10.1.20-jre21-temurin
WORKDIR ${CATALINA_HOME}
COPY cewar.war webapps/ROOT.war

