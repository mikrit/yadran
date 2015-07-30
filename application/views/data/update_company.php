<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
	<div id="title">Update company</div>

	<?=Form::open('data/update_company/'.$id,array('method'=>'post'));?>
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
				<div id="edit"><?=Html::anchor('data/list_companies', 'Back')?></div>
			</td>
		</tr>
		<tr>
			<td>Country:</td><td><?=Form::input('company', $data->company, array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Address:</td><td><?=Form::textarea('address', $data->address, array('rows' => 3, 'cols' => 40));?></td>
		</tr>
		<tr>
			<td class="right" colspan="2"><?=Form::input('submit','Update',array('id' => 'button', 'type'=>'submit'));?></td>
		</tr>
	</table>
	<?=Form::close();?>
</div>