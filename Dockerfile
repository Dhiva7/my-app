FROM tomcat:8.0.20-jre8
RUN apt-get update && apt-get install --no-install-recommends -y \   
 vim-tiny \  
 && apt-get clean && rm -rf /var/lib/apt/lists/*
# Take the war and copy to webapps of tomcat
COPY target/myweb-0.0.5.war /usr/local/tomcat/webapps/
