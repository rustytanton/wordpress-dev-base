<?php
/**
 * Class ExampleThemeTest
 *
 * @package Example
 */
class ExampleThemeTest extends WP_UnitTestCase {
	public function setUp() {
		parent::setUp();
		$this->instance = new Example_ThemeLoader();
	}

	public function test_helpertextvalue() {
		$this->assertEquals( $this->instance->helper_text(), "some helper text" );
	}
}
