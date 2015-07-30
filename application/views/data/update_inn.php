<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
	<div id="title">Update international nonproprietary name</div>
	
	<?=Form::open('data/update_inn/'.$id,array('method'=>'post'));?>
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
				<div id="edit"><?=Html::anchor('data/list_inn', 'Back')?></div>
			</td>
		</tr>
		<tr>
			<td>International nonproprietary name:</td><td><?=Form::input('international_nonproprietary_name', $data['international_nonproprietary_name'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td class="right" colspan="2"><?=Form::input('submit','Update',array('id' => 'button', 'type'=>'submit'));?></td>
		</tr>	
	</table>
	<?=Form::close();?>
</div>