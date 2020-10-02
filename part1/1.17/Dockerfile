FROM continuumio/miniconda3:latest

RUN conda install -y pytorch torchvision cpuonly -c pytorch
RUN conda install -y -c conda-forge opencv 

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
