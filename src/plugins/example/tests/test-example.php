<?php
/**
 * Class ExampleTest
 *
 * @package Example
 */
class ExamplePluginTest extends WP_UnitTestCase {
	public function setUp() {
		parent::setUp();
		$this->instance = new Example_Plugin();
	}

	public function test_footervalue() {
		$this->assertEquals( $this->instance->footer_text(), "Example Plugin Registered" );
	}
}
