<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
	<div id="title">Update comment</div>

	<?=Form::open('form/edit_comment/'.$file->id, array('method'=>'post'));?>
	<table class="t_form">
		<?php if(count($errors)):?>
			<?php foreach ($errors as $error):?>
				<tr>
					<td class="error" colspan="2"><?=$error?></td>
				</tr>
			<?php endforeach;?>
		<?php endif;?>
		<tr>
			<td class="right" colspan="2">
				<?=Html::anchor('form/product/'.$file->product_id, 'Back');?>
			</td>
		</tr>
		<tr>
			<td>
				<?=Form::textarea('discription', $file->discription);?>
			</td>
		</tr>
		<tr>
			<td class="right" colspan="2">
				<?=Form::input('submit','Update',array('id' => 'button', 'type'=>'submit'));?>
			</td>
		</tr>
	</table>
	<?=Form::close();?>
</div>