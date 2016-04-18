FROM java:8
EXPOSE 8080 
RUN curl http://ttdevbld:8081/nexus/content/repositories/snapshots//net/atpco/batch/batch-service/1.0.0-SNAPSHOT/batch-service-1.0.0-20160418.160519-2.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
