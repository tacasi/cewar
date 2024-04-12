FROM maven:3.9.6-eclipse-temurin-21-jammy
COPY . .
RUN mvn package

FROM tomcat:10.1.20-jre21-temurin-jammy
WORKDIR ${CATALINA_HOME}
COPY --from=0 target/ROOT.war webapps/ROOT.war

