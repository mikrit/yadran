<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_File extends ORM
{
	protected $_belongs_to = array(
		'product' => array(
			'model' => 'product',
			'foreign_key' => 'product_id',
		),
		'users' => array(
			'model' => 'user',
			'foreign_key' => 'user_id',
		),
	);
	
	public static function validation_files($values)
	{
		return Validation::factory($values);
	}

	public static function validation_comment($values)
	{
		return Validation::factory($values);
	}
}