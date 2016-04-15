FROM 172.30.210.155:5000/springboot-sti/springboot-sti:latest
EXPOSE 8080 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","C:\opt\openshift\app.jar"]
