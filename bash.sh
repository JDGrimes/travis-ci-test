#!/bin/bash

set -e
shopt -s expand_aliases

# Install CubePoints when running tests.
	mkdir -p /tmp/cubepoints
	curl -s https://downloads.wordpress.org/plugin/cubepoints.3.2.1.zip > /tmp/cubepoints.zip
	unzip /tmp/cubepoints.zip -d /tmp/wordpress/wp-content/plugins/

	ls /tmp/wordpress/wp-content/plugins/cubepoints/


set +e
