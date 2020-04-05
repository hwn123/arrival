# arrival

# Task:

1. Create repository with docker-compose.yml (git, bitbuckett, etc...)

2. docker-compose.yml should run Jenkins and Docker registry

3. Jenkins should have automatically added Job - via script or any other way

4. Job should build any Docker image (for example, hello-world), that is in the same repository and push it to the Docker registry from #2

5. Write instructions

# Requirements 
 
 Linux host system, docker, docker-compose.
 
 # Step-by-step instructions
 
 1. Clone the repository
 
 2. Run docker-compose up
 
 3. In docker-compose log find line : "Please use the following password to proceed to installation" and save the password, you will need it later.
 
 4. Login to the jenkins webinterface with password from #. You should be able to connect via http://localhost:9090 if running from docker host machine.
 
 5. You will be asked if you want to install any plugins - skip this step
 
 6. Run docker-compose down or press CTRL+C
 
 7. run "cp -r jobs jenkins_home" - it will add the predefined job to your Jenkins instance
 
 8. run "docker-compose up" or "docker-compose up -d", then it will work in detached mode
 
 9. Go to Jenkins web interface and find job "dock1". You should be able to run it now!
 
 # Troubleshooting
 If you experience problems while running "docker-compose up" you should verify that no other services are using tcp port 9090. If so disable other service.
 
