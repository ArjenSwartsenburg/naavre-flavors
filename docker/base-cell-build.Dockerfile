FROM mambaorg/micromamba:2.0.7

RUN micromamba install -y -n base -c conda-forge conda-pack && \
    micromamba clean --all --yes
