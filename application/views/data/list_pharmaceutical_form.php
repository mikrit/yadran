<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">Pharmaceutical forms</div>

<div id="edit">
	<?=Html::anchor('data/add_pharmaceutical_form', '+ Add pharmaceutical form')?>
</div>
<table id="proj_task">
	<tr>
		<td class="right_t" colspan="8">
			<?=Html::anchor('data', 'Back')?>
		</td>
	</tr>
	<tr id="head_tasks">
		<td>
			№
		</td>
		<td>
			Pharmaceutical form
		</td>
	</tr>
	<? $i=1;
	foreach($data as $pharmaceutical_form){
		$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
		<?if($pharmaceutical_form->id != 1){?>
			<tr <?=$class?>>
				<td>
					<?=$i++?>
				</td>
				<td>
					<?=Html::anchor('data/update_pharmaceutical_form/'.$pharmaceutical_form->id, $pharmaceutical_form->pharmaceutical_form)?>
				</td>
			</tr>
		<?}?>
	<?}?>
</table>