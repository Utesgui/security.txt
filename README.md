# security.txt
Takes an Email-Address (or any other string) and serves it under /security.txt (RFC 5785) as plain text.

# Usage
## Portainer - Repository 
Use this repo via git in Portainer directly. 
Just add the following URL to your stack:  
```https://github.com/Utesgui/security.txt```  
As well as a environment variable:  
```SECURITY_STRING=something```  
If necessary, you can also change the path the file is served  
```PATH=/betterpath.json``` -> default is /security.txt
![url to repo, add variable](/assets/stacksettings.png)

## Docker-Compose
Use the docker-compose.yml file and change it to your liking.  
Then use `docker-compose up -d` to start the container or Portainer to deploy the stack.

# Variables
- ```SECURITY_STRING```: The string that should be served
- ```SERVINGPATH```: The path the file is served under. Default is /security.txt