FROM ghcr.io/arjenswartsenburg/naavre-base-cell-build:v0.1.0

ARG CONDA_ENV_FILE
COPY --chown=mambauser:mambauser ${CONDA_ENV_FILE?} environment.yaml
RUN micromamba create -y -n venv -f environment.yaml && \
    micromamba clean --all --yes