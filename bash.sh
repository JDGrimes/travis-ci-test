#!/bin/bash

set -e
shopt -s expand_aliases

	WP_DEVELOP_DIR=/tmp/wordpress
WP_TESTS_DIR=/tmp/wordpress/tests/phpunit
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
		sed -i 's/do_action( '"'"'admin_init'"'"' )/if ( ! isset( $GLOBALS['"'"'_did_admin_init'"'"'] ) \&\& $GLOBALS['"'"'_did_admin_init'"'"'] = true ) do_action( '"'"'admin_init'"'"' )/' \
			"$WP_TESTS_DIR"/includes/testcase-ajax.php

	# Set up database.
ls "WP_DEVELOP_DIR"
ls "WP_DEVELOP_DIR"/tests
ls "WP_DEVELOP_DIR"/tests/phpunit/
ls "WP_DEVELOP_DIR"/tests/phpunit/includes
 
set +e
