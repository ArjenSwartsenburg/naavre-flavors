FROM ghcr.io/arjenswartsenburg/base-jupyter:latest

ARG CONDA_ENV_FILE
COPY --chown=jovyan:jovyan ${CONDA_ENV_FILE?} environment.yaml
RUN mamba env create --yes -f environment.yaml && \
    mamba clean --all --yes
RUN echo '{"CondaKernelSpecManager": {"env_filter": "/opt/conda$", "conda_only": true}}' >> /home/jovyan/.jupyter/jupyter_config.json