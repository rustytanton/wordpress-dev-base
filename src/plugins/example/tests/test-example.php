<?php
/**
 * Class ExampleTest
 *
 * @package Example
 */
class ExampleTest extends WP_UnitTestCase {
	public function test_footervalue() {
		$example = new Example_Plugin();
		$this->assertEquals( $example->footer_text(), "Example Plugin Registered" );
	}
}
