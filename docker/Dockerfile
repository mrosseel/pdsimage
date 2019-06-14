
FROM jupyter/scipy-notebook:2662627f26e0

MAINTAINER Mike Rosseel version: 0.1

USER root
WORKDIR /home/jovyan/
COPY start.sh .
RUN chmod 777 start.sh
COPY jupyter_notebook_config.json .jupyter/jupyter_notebook_config.json
RUN chmod 777 .jupyter/jupyter_notebook_config.json

USER $NB_USER
RUN pip install --upgrade pip
#     pip install numpy && \
#     pip install astropy pyreadline pyfftw tqdm photutils gatspy astroquery hanging_threads # hanging_threads is for debugging
# needs at least scikit 0.18.1
# RUN conda update -y scikit-learn matplotlib pandas && \
# RUN conda install -y pvl basemap
RUN conda init bash
#RUN git clone https://github.com/mrosseel/upsilon.git
    # git clone https://github.com/dwkim78/upsilon.git  && \
    # mkdir -p .jupyter
# COPY jupyter_notebook_config.json .jupyter/jupyter_notebook_config.json
# USER root
# RUN chmod 777 .jupyter/jupyter_notebook_config.json
# WORKDIR /home/jovyan/upsilon
# RUN python3 setup.py install
# WORKDIR /home/jovyan/work
CMD sh ./start.sh
