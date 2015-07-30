<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Inn extends ORM
{

    protected $_table_name = 'international_nonproprietary_names';

    public static function validation_inn($values)
    {
        return Validation::factory($values)
            ->rule('international_nonproprietary_name', 'not_empty');
    }
}