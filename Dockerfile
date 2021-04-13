FROM tomcat
# Add webapp into docker image into Tomcat's webapps directory
# wrong path (old 7 tomcat)
# ADD ./helloapp /var/lib/tomcat7/webapps/
# true path (new 9 tomcat)
ADD ./helloapp /opt/tomcat/webapps/

# Expose TCP port 8080
EXPOSE 8080

# Start Tomcat server
# The last line (the CMD command) is used to make a fake always-running
# command (the tail command); thus, the Docker container will keep running.
# CMD sudo service tomcat7 start && tail -f /var/log/tomcat7/catalina.out
CMD sudo service tomcat start && tail -f /opt/tomcat/logs/catalina.out

# the real old path
# /opt/tomcat/webapps/helloapp/WEB-INF/classes/com/example/hello.class


# old Dockerfile
# FROM dockerfile:java
# Install Tomcat7
# RUN sudo apt-get update && sudo apt-get install tomcat7
# Add webapp into docker image into Tomcat's webapps directory
# ADD ./helloapp /var/lib/tomcat7/webapps/
# Expose TCP port 8080
# EXPOSE 8080


