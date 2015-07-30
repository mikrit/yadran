<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
	<div id="title">Register</div>
	
	<?=Form::open('adminka/register',array('method'=>'post'));?>
	<table class="t_form">
		<?php if(count($errors)):?>
			<?php foreach ($errors as $error):?>
				<tr>
					<td class="error" colspan="2"><?=$error?></td>
				</tr>
			<?php endforeach;?>
		<?php endif;?>
		<tr><td colspan="2" style="color: green"><?=$message?></td></tr>
		<tr>
			<td class="right" colspan="2">
				<div id="edit"><?=Html::anchor('adminka', 'Back')?></div>
			</td>
		</tr>
		<tr>
			<td>First name and Last name</td><td><?=Form::input('name', $data['name'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Login:</td><td><?=Form::input('username', $data['username'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Email:</td><td><?=Form::input('email', $data['email'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Country:</td><td><?=Form::select('country_id', $countries, $data['country_id']);?></td>
		</tr>
		<tr>
			<td>Position:</td><td><?=Form::input('position', $data['position'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Create your password:</td><td><?=Form::password('password', '', array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Confirm password:</td><td><?=Form::password('password_confirm', '', array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td class="right" colspan="2"><?=Form::input('submit','Register',array('id' => 'button', 'type'=>'submit'));?></td>
		</tr>	
	</table>
	<?=Form::close();?>
</div>