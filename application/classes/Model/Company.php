<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Company extends ORM
{
	public static function validation_company($values)
	{
		return Validation::factory($values)
			->rule('company', 'not_empty');
	}
}