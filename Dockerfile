FROM maven:3.6.3-openjdk-8 
COPY  /var/lib/jenkins/workspace/task4 /opt
RUN cd /opt && mvn clean install 
WORKDIR /opt/ 
CMD mvn sonar:sonar \
  -Dsonar.projectKey=task4 \
  -Dsonar.host.url=http://10.11.0.164:9017 \
  -Dsonar.login=1f0b6d2f212895912c0d52d778babb39c033e4ee
