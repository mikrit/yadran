<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Registrationsertificate extends ORM
{
	protected $_has_many = array(
		'countries' => array(),
	);

	protected $_belongs_to = array(
		'countries' => array(
			'model' => 'country',
			'foreign_key' => 'country_id',
		),
	);

	protected $_table_name = 'registration_certificates';

	public static function validation_registration_sertificate($values)
	{
		return Validation::factory($values)
			->rule('registration_certificate_number', 'not_empty');
	}
}