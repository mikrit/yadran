<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">Update data user</div>

<div class="t-center">
	<div id="profile">
		<?=Form::open('adminka/update_user/'.$id, array('name' => 'form1', 'method'=>'post'));?>
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
					<div id="edit"><?=Html::anchor('adminka/update_user', 'Back');?></div>
				</td>
			</tr>
			<tr>
				<td>
					First name and Last name:
				</td>
				<td>
					<?=Form::input('name', $data->name, array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td>
					Login:
				</td>
				<td>
					<?=Form::input('username', $data->username, array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td>
					Email:
				</td>
				<td>
					<?=Form::input('email', $data->email, array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td>
					Country:
				</td>
				<td>
					<?=Form::select('country_id', $countries, $data->country_id);?>
				</td>
			</tr>
			<tr>
				<td>
					Position:
				</td>
				<td>
					<?=Form::input('position', $data->position, array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td>
					Admins:
				</td>
				<td>
					<?=Form::select('admin', array(0 => "Not Admin", 1 => "Admin"), $admin);?>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="right">
					<?
					echo Form::input('submit','Update', array('id' => 'button', 'type'=>'submit'));
					echo Form::hidden('prov', '1');
					?>
				</td>
			</tr>
		</table>
		<?=Form::close();?>
		<br/><br/><br/><br/>
		<?=Form::open('adminka/update_user/'.$id, array('name' => 'form2', 'method'=>'post'));?>
		<table class="t_form">
			<tr>
				<td colspan="2" align="center">Change password</td>
			</tr>
			<tr>
				<td>
					Password
				</td>
				<td>
					<?=Form::password('password', '', array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td>
                    Confirm password
				</td>
				<td>
					<?=Form::password('password_confirm', '', array('class' => 'input'));?>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="right">
					<?
						echo Form::input('submit','Change password', array('id' => 'button', 'type'=>'submit'));
						echo Form::hidden('prov', '2');
					?>
				</td>
			</tr>
		</table>
		<?=Form::close();?>
	</div>
</div>