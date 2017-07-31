docker run -it -v %cd%\notebooks:/opt/notebooks -p 8888:8888 myapp /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"  
