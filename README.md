# Swedish DCAT-AP generator

This experimental project provides a minimal set of containers with tools that can be used to automate workflows involving DCAT-AP resources in Sweden (with the intent to publish on the Internet). A list with some of the relevant tools is available at <https://oppnadata.se/dcat-ap-metadataspecifikation/>, including for example:

- CKAN <https://github.com/ckan/ckan>
- Datatank <https://github.com/tdt/> 
- GeoNetworks <https://github.com/geonetwork> 
- EntryScape <https://bitbucket.org/account/user/metasolutions/projects/ESC> 
- OpenDataSoft <https://github.com/opendatasoft>
- <https://github.com/Wikimedia-Sverige/DCAT>
- <https://github.com/SEMICeu/dcat-ap_validator>

The project is work in progress - not all tools are included yet - and a few tools are included which may later be removed as it is not clear whether they are actively maintained/supported or relevant for use within Sweden with the Swedish DCAT-AP v 1.1 standard. For example:

A tool from <https://github.com/project-open-data/catalog-generator> - a DCAT-AP generator which takes CSV input and generates a valid resource that can be exposed at a FQDN on the format `agency.gov/data`

This tool is listed as one of the reference implementations in this slightly dated DCAT-AP implementation guide from here:

<https://lists.w3.org/Archives/Public/public-dwbp-wg/2015Jul/att-0010/DCAT-APimplementationguide.pdf>

It also wraps and bundles a tool from <https://bitbucket.org/metasolutions/dcat-editor.git> - a DCAT-AP editor adapted for Sweden - created by Metasolutions. It is deprecated and will likely be removed from here.

## Requirements

Install `git`, `make`, `docker` and `docker-compose`. Then, for name resolution to work, make your system aware of the `dnsmasq` name resolver that will be launched by docker and is defined in the `docker-compose.yml` file. 

On Linux this can be done by editing `/etc/resolvconf/resolv.conf.d/head`, adding this line:

		nameserver 172.17.0.1

Then restart `resolvconf` using this command:

		sudo systemctl restart resolvconf.service

For variations of how to do this on MacOS and other platforms, please search the Internet.

For setting up SSL, see instructions at <https://github.com/dina-web/proxy-docker/tree/self-signed-certs#certificates-and-setting-up-ssl>

## Usage

Issue the following command provided you have `make`, `git`, `docker` and `docker-compose`:

		make

## Adaptations for "generator"

If needed modify these files to adapt the field-to-term mappings etc:

		schema.yml
		_config.yml

## Adaptations for "editor"

This tool should be upgraded to support the next version of the schema.

## Links

- Crosswalk w field mappings versus Project Open Data, CKAN, Schema.org <https://project-open-data.cio.gov/v1.1/metadata-resources/>

