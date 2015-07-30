<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Pharmaceuticalform extends ORM
{
	protected $_table_name = 'pharmaceutical_forms';
	
    public static function validation_pharmaceutical_form($values)
    {
        return Validation::factory($values)
            ->rule('pharmaceutical_form', 'not_empty');
    }
}