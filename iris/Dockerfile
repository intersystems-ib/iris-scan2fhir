ARG IMAGE=intersystemsdc/irishealth-community:2026.3-zpm
FROM ${IMAGE}
USER root
WORKDIR /opt/irisapp
RUN apt-get update && apt-get install -y --no-install-recommends libglib2.0-0 libgl1 && rm -rf /var/lib/apt/lists/*
COPY iris/requirements.txt ./requirements.txt
RUN python3 -m pip install --no-cache-dir --target /opt/irisapp/python-deps -r requirements.txt \
    && chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} iris/src/ ./src/
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} iris/vendor/fhir-r5/ ./fhir-r5/
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} iris/iris.cpf /tmp/iris.cpf
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} iris/iris.script ./iris.script
COPY --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} iris/upgrade.script ./upgrade.script
ENV ISC_CPF_MERGE_FILE=/tmp/iris.cpf
ENV PYTHONPATH=/opt/irisapp/python-deps:${PYTHONPATH}
RUN rm -f .build-success && iris start IRIS && iris session IRIS < iris.script \
    && test -f .build-success && iris stop IRIS quietly
