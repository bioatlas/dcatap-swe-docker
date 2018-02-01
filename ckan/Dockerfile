FROM ckan/ckan

#USER root

#RUN ckan-pip install -U pip && \
#    ckan-pip install --upgrade --no-cache-dir -r $CKAN_VENV/src/ckan/requirements.txt && \
#    ckan-pip install -e $CKAN_VENV/src/ckan/ && \
#    ln -s $CKAN_VENV/src/ckan/ckan/config/who.ini $CKAN_CONFIG/who.ini && \
#    cp -v $CKAN_VENV/src/ckan/contrib/docker/ckan-entrypoint.sh /ckan-entrypoint.sh && \
#    chmod +x /ckan-entrypoint.sh && \
#    chown -R ckan:ckan $CKAN_HOME $CKAN_VENV $CKAN_CONFIG $CKAN_STORAGE_PATH

RUN mkdir $CKAN_HOME/src/ckanext-harvest/
ADD ./ckanext-harvest/ $CKAN_HOME/src/ckanext-harvest/
RUN ckan-pip install -e $CKAN_HOME/src/ckanext-harvest/  && \
	ckan-pip install -r $CKAN_HOME/src/ckanext-harvest/pip-requirements.txt && \ 
	ckan-pip install -r $CKAN_HOME/src/ckanext-harvest/dev-requirements.txt 

RUN mkdir $CKAN_HOME/src/ckanext-dcat/
ADD ./ckanext-dcat/ $CKAN_HOME/src/ckanext-dcat/
RUN ckan-pip install -e $CKAN_HOME/src/ckanext-dcat/  && \
	ckan-pip install -r $CKAN_HOME/src/ckanext-dcat/requirements.txt

#USER ckan
