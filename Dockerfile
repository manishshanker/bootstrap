FROM continuumio/anaconda3

MAINTAINER Anandha Ponnampalam <docker2017@ponnampalam.ca>

VOLUME  "/notebooks"
WORKDIR "/opt/notebooks"

CMD ["/bin/bash"]
