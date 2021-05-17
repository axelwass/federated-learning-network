sudo docker build client/ -t fl-client
sudo docker build server/ -t fl-server
sudo docker run -d  -p 5000:5000 --name server fl-server
sudo docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.3:5000" --name client1 fl-client
sudo docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.4:5000" --name client2 fl-client
sudo docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.5:5000" --name client3 fl-client
