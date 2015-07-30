<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Dosage extends ORM
{
    public static function validation_dosage($values)
    {
        return Validation::factory($values)
            ->rule('dosage', 'not_empty');
    }
}