# Daskdev-sat image for dask cluster pods
FROM daskdev/dask:2.11.0

RUN apt-get -qq update && \
    apt-get -qq install --yes --no-install-recommends locales > /dev/null && \
    apt-get -y install wget git curl cron unzip && \
    apt-get -qq purge && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/*
ENV SHELL /bin/bash

RUN conda install -y -c conda-forge tornado kubernetes dask-kubernetes=0.10.1 python-kubernetes && \
    conda clean --yes --all

#TODO - remove this pdc crap
#TODO - run as non-root user
RUN mkdir -p /root/saturn/pdc/dask
COPY app.py /root/saturn/pdc/dask

ENV PYTHONPATH=/root/saturn
