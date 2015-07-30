<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Change extends ORM
{
	protected $_belongs_to = array(
		'users' => array(
			'model' => 'user',
			'foreign_key' => 'user_id',
		),
	);
	
	public static function validation_change($values)
	{
		return Validation::factory($values);
	}
}