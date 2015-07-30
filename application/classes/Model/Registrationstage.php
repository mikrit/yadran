<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Registrationstage extends ORM
{
	protected $_table_name = 'registration_stages';

	public static function validation_status($values)
	{
		return Validation::factory($values)
			->rule('registration_stage', 'not_empty');
	}
}