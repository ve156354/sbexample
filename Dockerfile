FROM 172.25.142.206:5000/cife-demo1/springboot-sti:latest
EXPOSE 8080 
RUN curl http://ttdevbld:8081/nexus/content/repositories/releases/net/atpco/batch/batch-service/1.0.0-SNAPSHOT/batch-service-1.0.0-20160418.140610-1.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
