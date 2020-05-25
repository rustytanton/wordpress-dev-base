<?php
/**
 * @todo this wasn't working inside a class
 */
add_action( 'wp_enqueue_scripts', 'example_styles_loader');
function example_styles_loader() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri().'/child-style.css', array('parent-style') );
}