<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Process
{
	public static function type_of_process()
	{
		return array(0 => 'Registered product', 1 => 'New registration', 2 => 'Re-registration', 3 => 'Variation');
	}
}