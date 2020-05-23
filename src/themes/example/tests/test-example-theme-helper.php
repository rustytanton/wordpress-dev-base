<?php
/**
 * Class ExampleThemeTest
 *
 * @package Example
 */
class ExampleThemeTest extends WP_UnitTestCase {
	public function setUp() {
		parent::setUp();
		$this->instance = new Example_ThemeHelper();
	}

	public function test_textvalue() {
		$this->assertEquals( $this->instance->text(), "some helper text" );
	}
}
