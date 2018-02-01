FROM ckan/ckan

RUN mkdir -p $CKAN_HOME/src/ckanext-harvest/
ADD ./ckanext-harvest/ $CKAN_HOME/src/ckanext-harvest/
RUN ckan-pip install -e $CKAN_HOME/src/ckanext-harvest/ && \
	ckan-pip install -r $CKAN_HOME/src/ckanext-harvest/pip-requirements.txt && \ 
	ckan-pip install -r $CKAN_HOME/src/ckanext-harvest/dev-requirements.txt 

RUN mkdir -p $CKAN_HOME/src/ckanext-dcat/
ADD ./ckanext-dcat/ $CKAN_HOME/src/ckanext-dcat/
RUN ckan-pip install -e $CKAN_HOME/src/ckanext-dcat/ && \
	ckan-pip install -r $CKAN_HOME/src/ckanext-dcat/requirements.txt

RUN mkdir -p $CKAN_HOME/src/ckanext-dcatapit/
ADD ./ckanext-dcatapit/ $CKAN_HOME/src/ckanext-dcatapit/
RUN ckan-pip install -e $CKAN_HOME/src/ckanext-dcatapit/

# Install also ckanext-spatial
RUN ckan-pip install -e git+https://github.com/ckan/ckanext-spatial.git@stable#egg=ckanext-spatial


