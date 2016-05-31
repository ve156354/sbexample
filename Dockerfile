FROM 172.30.200.195:5000/cife-demo1/springboot-sti:latest
EXPOSE 8080 
RUN curl http://ttdevbld:8081/nexus/content/repositories/snapshots/net/atpco/batch/batch-service/1.0.0-SNAPSHOT/batch-service-1.0.0-20160427.194526-5.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
