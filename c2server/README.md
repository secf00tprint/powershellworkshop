```
sudo docker build -f Dockerfile -t c2server .
sudo docker run -p 127.0.0.1:21:21 -it c2server
ftp 127.0.0.1
``` 
Creds: c2cmdgod/c2cmdgod

Enter Passive mode:
```
pass 
``` 

Uploads Dockerfile:
```
put Dockerfile
```

Downloads Dockerfile:
```
get Dockerfile 
```
