ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER
USER root
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt && rm -f requirements.txt
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID