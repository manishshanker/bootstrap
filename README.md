# A very simple Docker image to bootstrap learning in data science and machine learning

## Instructions

Install Docker (I have a mac)

Download this repo (I use https://desktop.github.com)

Navigate to the directory with the files

Run "./build_image" to build your docker image

Run "./jupyter" to run headless juypter notebook

Copy and paste "http://localhost:8888/?token=07c(see output from above command)" to your browser

All Jupyter notebooks are saved in notebooks folder. Play around with demo1 and demo2

Additional Reading
 - Docker   - https://www.docker.com
 - Anaconda - https://www.continuum.io/Anaconda-Overview
 - Jupyter  - https://jupyter.org
 - Sklearn  - http://scikit-learn.org

Enjoy, Anandha



## Raw Capture

```
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
