title user microservice
docker build -t userms .
docker run --network=opennetworkconnection --env-file ./config.txt -p 8070:8070 userms  
cmd /k