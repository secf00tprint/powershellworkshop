sudo docker build -f Dockerfile -t c2server .
sudo docker run -p 127.0.0.1:21:21 -it c2server
ftp 127.0.0.1

Creds: c2cmdgod/c2cmdgod
pass (enter Passive mode)
put Dockerfile (uploads Dockerfile)
get Dockerfile (downloads Dockerfile)
