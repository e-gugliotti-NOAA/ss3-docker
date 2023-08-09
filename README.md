# ss3-docker

To use this Docker image locally you will need to have Docker Desktop installed on your computer (if you are with NMFS, this will likely involve IT). You can also use this image in Codespaces, although for that I recommend using the ss3 codespaces .devcontainer.json file rather than the docker image.

I suggest that you use the following workflow to pull and run this Dockerfile:
- Run this in your terminal/command line:
```
docker run -d -e PASSWORD=password -p 8787:8787 ghcr.io/e-gugliotti-noaa/ss3-docker:main # with GitHub Container Registry
docker run -d -e PASSWORD=password -p 8787:8787 egugliotti/ss3-docker:main  # with DockerHub
```
- Open up your preferred browser and type in http://localhost:8787
- Enter the Username (rstudio unless configured otherwise by including `-e USERNAME=username` in the `docker run` command) and the Password (the password you set up in the `docker run` command, in this case, its password).


## Connect to GitHub
- Open up a terminal and enter the following:
```
git config --global user.name "Your Name"
git config --global user.email "yourname@your.com"
git config --global credential.helper store
```
