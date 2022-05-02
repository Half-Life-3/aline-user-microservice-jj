
#docker run --env-file ./config.txt -p 8070:8070 test
#docker run --network=opennetworkconnection --env-file ./config.txt -t userms -p 8070:8070 userms 
#docker run --network=opennetworkconnection --env-file ./config.txt -p 8070:8070 userms 
FROM maven:3.8.5-jdk-11


COPY . /

EXPOSE 8070
#RUN ["setenv","APP_SERVICE_HOST","localhost"]
RUN ["git","submodule","deinit","--all","-f"]
RUN ["git","submodule","init"]
RUN ["git", "submodule","sync"]
RUN ["git", "submodule","update"]
#RUN ["mvn", "clean","install","-DskipTests"]
RUN ["mvn", "clean","package","-DskipTests"]
WORKDIR /user-microservice/target
CMD ["java","-jar","user-microservice-0.1.0.jar"]
