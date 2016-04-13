FROM 172.30.12.99:5000/springboot-sti/springboot-sti:latest
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o /opt/openshift/app.jar 
