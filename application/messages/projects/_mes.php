<?php defined('SYSPATH') or die('No direct script access.');

return array(
	/*'title' => array(
		'not_empty'     => 'Заполните поле \'Название\'',
	),
	'discription' => array(
		'not_empty'     => 'Заполните поле \'Описание\'',
	),
	'deadline' => array(
		'not_empty'     => 'Установите дедлайн',
	),
	'comment' => array(
		'not_empty'		=> 'Заполните поле \'Комментарий\'',
	),
	'language' => array(
		'not_empty'		=> 'Заполните поле \'Язык\'',
	),*/
	'password' => array(
		'not_empty'		=> '\'Password\' not be empty',
		'min_length'	=> '\'Password\' must be at least 6 characters long',
	),
	'username' => array(
		'not_empty'		=> '\'Login\' not be empty',
	),
	'name' => array(
		'not_empty'		=> '\'First name Last name\' not be empty',
	),
	'email' => array(
		'not_empty'		=> '\'Email\' not be empty',
	),
	/*'phone' => array(
		'not_empty'		=> 'Заполните поле \'Телефон\'',
	),*/
    'international_nonproprietary_name' => array(
		'not_empty'		=> '\'International nonproprietary name\'  not be empty',
	),
    'type' => array(
		'not_empty'		=> 'The file is not selected',
	),
);