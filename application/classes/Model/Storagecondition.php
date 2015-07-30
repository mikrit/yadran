<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Storagecondition extends ORM
{
	protected $_table_name = 'storage_conditions';

	public static function validation_storage_condition($values)
	{
		return Validation::factory($values)
			->rule('storage_condition', 'not_empty');
	}
}