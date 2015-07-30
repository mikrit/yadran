<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Country extends ORM
{
	protected $_has_many = array(
		'products' => array(
			'model'   => 'product',
			'through' => 'products_countries',
			'foreign_key' => 'country_id',
		),
	);

	public static function validation_country($values)
	{
		return Validation::factory($values)
			->rule('country', 'not_empty');
	}
}