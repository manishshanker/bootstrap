# A simple Docker image to bootstrap learning in data science and machine learning

## Instructions

1. Install [Docker](https://www.docker.com/community-edition) (I have a mac)
2. Run ```docker run hello-world``` to see if Docker has been installed properly
3. Install [GitHub](https://desktop.github.com/)
4. Download this repo ```git clone https://github.com/anandha2017/bootstrap.git```
5. Navigate to the directory with the files
6. Run ```./build_image``` to build your docker image
7. Run ```./jupyter``` to run headless juypter notebook
8. Copy and paste ```http://localhost:8888/?token=07c(see output from above command)``` to your browser
9. All Jupyter notebooks are saved in notebooks folder. Play around with demo1 and demo2.

Additional Reading
* [Docker](https://www.docker.com)
* [Anaconda](https://www.continuum.io/)
* [Docker & Anaconda](https://www.continuum.io/blog/developer-blog/anaconda-and-docker-better-together-reproducible-data-science)
* [Jupyter Notebook](https://jupyter.org)
* [Sklearn](http://scikit-learn.org)

Enjoy, Anandha


## Raw Capture

```
iMac-2016:bootstrap anandha$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
b04784fba78d: Pull complete 
Digest: sha256:f3b3b28a45160805bb16542c9531888519430e9e6d6ffc09d72261b0d26ff74f
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://cloud.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/

iMac-2016:x anandha$ git clone https://github.com/anandha2017/bootstrap.git
Cloning into 'bootstrap'...
remote: Counting objects: 57, done.
remote: Compressing objects: 100% (51/51), done.
remote: Total 57 (delta 29), reused 14 (delta 3), pack-reused 0
Unpacking objects: 100% (57/57), done.

iMac-2016:x anandha$ cd bootstrap

iMac-2016:bootstrap anandha$ ./build_image 
Sending build context to Docker daemon  142.3kB
Step 1/5 : FROM continuumio/anaconda3
 ---> f3a9cb1bc160
Step 2/5 : MAINTAINER Anandha Ponnampalam <docker2017@ponnampalam.ca>
 ---> Using cache
 ---> 4d551ee7d8ea
Step 3/5 : VOLUME "/notebooks"
 ---> Using cache
 ---> 1811e32746d1
Step 4/5 : WORKDIR "/opt/notebooks"
 ---> Using cache
 ---> ed19a04bd313
Step 5/5 : CMD /bin/bash
 ---> Using cache
 ---> ce227b24dcfc
Successfully built ce227b24dcfc
Successfully tagged myapp:latest

iMac-2016:bootstrap anandha$ ./jupyter 
[I 21:15:22.510 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[W 21:15:22.524 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 21:15:22.530 NotebookApp] Serving notebooks from local directory: /opt/notebooks
[I 21:15:22.530 NotebookApp] 0 active kernels 
[I 21:15:22.530 NotebookApp] The Jupyter Notebook is running at: http://[all ip addresses on your system]:8888/?token=dd9585026e22c10465e5ee7d86977a4da94013144e4b9ef4
[I 21:15:22.530 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 21:15:22.530 NotebookApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=dd9585026e22c10465e5ee7d86977a4da94013144e4b9ef4
        
``` 
