<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Shelflife extends ORM
{
	protected $_table_name = 'shelf_lifes';
	
    public static function validation_shelf_life($values)
    {
        return Validation::factory($values)
            ->rule('shelf_life', 'not_empty');
    }
}