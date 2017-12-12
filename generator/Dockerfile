FROM starefossen/ruby-node

COPY catalog-generator catalog-generator/

RUN cd catalog-generator && \
	npm install && \
	bundle install

RUN npm install -g grunt-cli

WORKDIR /catalog-generator

EXPOSE 4000
CMD jekyll
