FROM starefossen/ruby-node

COPY dcat-editor /dcat-editor/

RUN npm install -g bower && \
	echo '{ "allow_root": true }' > /root/.bowerrc && \
	npm install -g bower-check-updates

RUN cd /dcat-editor && \
	npm install

RUN cd /dcat-editor && \
	bower-check-updates -u && \
	bower install

EXPOSE 4000
CMD cd /dcat-editor && node validatorService.js ../config/validator.json 4000
