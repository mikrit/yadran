<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Status extends ORM
{
	protected $_table_name = 'product_statuses';

	public static function validation_status($values)
	{
		return Validation::factory($values)
			->rule('status', 'not_empty');
	}
}