# Swedish DCAT-AP generator

This experimental project provides a minimal set of containers that can be used to generate (with the intent to publish on the Internet) DCAT-AP resources using for example .json or .xml formats. 

It wraps and bundles a tool from https://github.com/project-open-data/catalog-generator - a DCAT-AP generator which takes CSV input and generates a valid resource that can be exposed at a FQDN on the format `agency.gov/data`

This tool is listed as one of the reference implementations in this slightly dated DCAT-AP implementation guide from here:

<https://lists.w3.org/Archives/Public/public-dwbp-wg/2015Jul/att-0010/DCAT-APimplementationguide.pdf>

## Usage

Issue the following command provided you have `make`, `git`, `docker` and `docker-compose`:

		make

If needed modify these files to adapt the field-to-term mappings etc:

		schema.yml
		_config.yml


