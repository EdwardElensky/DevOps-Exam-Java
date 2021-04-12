FROM dockerfile/java

# Install Tomcat 7
RUN sudo apt-get update && sudo apt-get install tomcat7

# Add webapp into docker image into Tomcat's webapps directory
ADD ./helloapp /var/lib/tomcat7/webapps/

# Expose TCP port 8080
EXPOSE 8080

# Start Tomcat server
# The last line (the CMD command) is used to make a fake always-running
# command (the tail command); thus, the Docker container will keep running.
CMD sudo service tomcat7 start && tail -f /var/log/tomcat7/catalina.out
