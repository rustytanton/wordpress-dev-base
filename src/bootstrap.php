<?php
/**
 * PHPUnit bootstrap file
 *
 * @package Example
 */

$_tests_dir = getenv( 'WP_TESTS_DIR' );

if ( ! $_tests_dir ) {
	$_tests_dir = rtrim( sys_get_temp_dir(), '/\\' ) . '/wordpress-tests-lib';
}

if ( ! file_exists( $_tests_dir . '/includes/functions.php' ) ) {
	echo "Could not find $_tests_dir/includes/functions.php, have you run bin/install-wp-tests.sh ?" . PHP_EOL; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
	exit( 1 );
}

// Give access to tests_add_filter() function.
require_once $_tests_dir . '/includes/functions.php';

/**
 * Manually load the plugins being tested.
 * @todo automate this
 */
function _manually_load_plugins() {
	$plugin_dir = dirname(__FILE__) . '/plugins/';
	$theme_dir = dirname(__FILE__) . '/themes/';
	require $plugin_dir . 'example/example.php';
	require $theme_dir . 'example/example-theme-helper.php';
}
tests_add_filter( 'muplugins_loaded', '_manually_load_plugins' );

// Start up the WP testing environment.
require $_tests_dir . '/includes/bootstrap.php';
