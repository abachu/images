ARG SATURNBASE_GPU_IMAGE=saturncloud/saturnbase-gpu:2020.03.09.dev.8
FROM ${SATURNBASE_GPU_IMAGE}

COPY environment.yml /tmp/environment.yml
RUN conda env update -n saturn --file /tmp/environment.yml && \
    ${CONDA_DIR}/envs/saturn/bin/python -m ipykernel install --name python3 --prefix=${CONDA_DIR} && \
    ${CONDA_DIR}/bin/conda clean -afy && \
    find ${CONDA_DIR} -type f,l -name '*.pyc' -delete && \
    find ${CONDA_DIR} -type f,l -name '*.a' -delete && \
    find ${CONDA_DIR} -type f,l -name '*.js.map' -delete
RUN echo '' > ${CONDA_DIR}/envs/saturn/conda-meta/history
