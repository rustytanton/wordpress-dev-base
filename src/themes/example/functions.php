<?php
if ( !class_exists( 'Example_ThemeHelper' ) ) {
    class Example_ThemeLoader
    {
        public function __constructor() {
            add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_parent_styles' ));
        }
 
        public function enqueue_parent_styles() {
            wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
        }

        public function helper_text() {
            return 'some helper text';
        }
    }
    new Example_ThemeLoader();
}