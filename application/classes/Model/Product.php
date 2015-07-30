<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Product extends ORM
{
	protected $_has_many = array(
		'countries' => array(
			'model'   => 'country',
			'through' => 'products_countries',
			'foreign_key' => 'product_id',
		),
	);

	protected $_belongs_to = array(
		'inn' => array(
			'model' => 'inn',
			'foreign_key' => 'international_nonproprietary_name_id',
		),
		'dosage' => array(
			'model' => 'dosage',
			'foreign_key' => 'dosage_id',
		),
		'status' => array(
			'model' => 'status',
			'foreign_key' => 'status_id',
		),
		'pharmaceuticalform' => array(
			'model' => 'pharmaceuticalform',
			'foreign_key' => 'pharmaceutical_form_id',
		),
		'shelflife' => array(
			'model' => 'shelflife',
			'foreign_key' => 'shelf_life_id',
		),
		'storagecondition' => array(
			'model' => 'storagecondition',
			'foreign_key' => 'storage_condition_id',
		),
		'approvalcondition' => array(
			'model' => 'approvalcondition',
			'foreign_key' => 'approval_condition_id',
		),
		'registrationsertificate' => array(
			'model' => 'registrationsertificate',
			'foreign_key' => 'registration_certificate_id',
		),
		'registrationstage' => array(
			'model' => 'registrationstage',
			'foreign_key' => 'registration_stage_id',
		),
		'country' => array(
			'model' => 'country',
			'foreign_key' => 'country_id',
		),
		'company' => array(
			'model' => 'company',
			'foreign_key' => 'manufacturer',
		),
		'company1' => array(
			'model' => 'company',
			'foreign_key' => 'manufacturer_primary',
		),
		'company2' => array(
			'model' => 'company',
			'foreign_key' => 'manufacturer_secondary',
		),
		'company3' => array(
			'model' => 'company',
			'foreign_key' => 'quality_control',
		),
		'company4' => array(
			'model' => 'company',
			'foreign_key' =>  'marketing_authorisation_holder',
		),
	);

	public static function validation_product($values)
	{
		return Validation::factory($values)
			->rule('product_name', 'not_empty')
			->rule('quantity_ai', 'numeric')
			->rule('registration_certificate_date', 'regex', array(':value', '/^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'))
			->rule('period_of_validity', 'regex', array(':value', '/^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'))
			->rule('registration_stage_date', 'regex', array(':value', '/^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'));
	}
}