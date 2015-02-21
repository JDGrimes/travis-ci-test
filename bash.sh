#!/bin/bash

set -e
shopt -s expand_aliases

# Install CubePoints when running tests.
	mkdir -p /tmp/cubepoints
	curl -s https://downloads.wordpress.org/plugin/cubepoints.3.2.1.zip > /tmp/cubepoints.zip
	unzip /tmp/cubepoints.zip -d /tmp/cubepoints

	mkdir -p /tmp/wordpress/wp-content/plugins/cubepoints
	ln -s /tmp/cubepoints /tmp/wordpress/wp-content/plugins/cubepoints
	
	ls /tmp/wordpress/wp-content/plugins/cubepoints


set +e
