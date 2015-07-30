<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">Administration</div>

<table id="user">
	<tr>
		<td>
			<?=Html::anchor('adminka/register','Add new user'); ?>
			<br/>
			<?=Html::anchor('adminka/list_users', 'Update user'); ?>
			<br/>
			<?=Html::anchor('adminka/list_countries', 'Add and update countries'); ?>
			<br/>
			<?=Html::anchor('adminka/logs', 'Changes'); ?>
			<br/>
		</td>
	</tr>
</table>