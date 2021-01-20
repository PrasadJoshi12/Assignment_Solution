docker run -d infracloudio/csvserver:latest
docker logs 416
vi gencsv.sh
chmod +x gencsv.sh
./gencsv.sh
cat inputdata
docker run -d -v /root/inputdata:/csvserver/inputdata infracloudio/csvserver:latest
docker exec -it f899 bash
docker rm -f f899
docker run -d -p 9393:9300 -v /root/inputdata:/csvserver/inputdata -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest
docker-compose up
