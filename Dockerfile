FROM tomcat:8.0.20-jre8
RUN apt-get update
RUN apt-get install -y vim
# Take the war and copy to webapps of tomcat
COPY target/myweb-0.0.5.war /usr/local/tomcat/webapps/



