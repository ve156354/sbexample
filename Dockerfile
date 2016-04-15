FROM 172.30.210.155:5000/springboot-sti/springboot-sti:latest
EXPOSE 8080 
RUN curl https://raw.githubusercontent.com/ve156354/sbexample/master/app.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
