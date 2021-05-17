sudo docker run -d -e SERVER_URL="http://172.17.0.2:5000" -e CLIENT_URL="http://172.17.0.6:5000" -e MALICIOUS="true" --name client-bad fl-client
