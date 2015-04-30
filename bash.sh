#!/bin/bash

set -e
shopt -s expand_aliases

	WP_DEVELOP_DIR=/tmp/wordpress
	WP_VERSION=4.0
	mkdir -p "WP_DEVELOP_DIR"

	# Clone the WordPress develop repo.
	git clone --depth=1 --branch="$WP_VERSION" git://develop.git.wordpress.org/ "WP_DEVELOP_DIR"

	# Set up tests config.
	cd "WP_DEVELOP_DIR"
	cp wp-tests-config-sample.php wp-tests-config.php
	sed -i "s/youremptytestdbnamehere/wordpress_test/" wp-tests-config.php
	sed -i "s/yourusernamehere/root/" wp-tests-config.php
	sed -i "s/yourpasswordhere//" wp-tests-config.php
	cd -

	# Set up database.
ls "WP_DEVELOP_DIR"
ls "WP_DEVELOP_DIR"/tests
ls "WP_DEVELOP_DIR"/tests/phpunit/
ls "WP_DEVELOP_DIR"/tests/phpunit/includes
 
set +e
