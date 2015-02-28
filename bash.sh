#!/bin/bash

set -e
shopt -s expand_aliases

	# We always need to do this when collecting code coverage, even if there are no
	# composer dependencies.
		composer require satooshi/php-coveralls:dev-master
		mkdir -p build/logs
ls vendor

set +e
