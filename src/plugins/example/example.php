<?php

/**
* Plugin Name: Example plugin
* Plugin URI: http://rustytanton.com
* Description: An example plugin which should be deleted in your project
* Version: 1.0.0
* Author: Rusty Tanton
* Author URI: http://rustytanton.com
* License: GPL2
*/

if ( !class_exists( 'Example_Plugin' ) ) {
    class Example_Plugin
    {
        public function __constructor() {
            add_action( 'wp_footer', array( $this, 'footer_text' ));
        }
 
        public function footer_text() {
            return 'Example Plugin Registered';
        }
    }
    new Example_Plugin();
}

?>