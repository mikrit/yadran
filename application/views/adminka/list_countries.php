<?php defined('SYSPATH') or die('No direct script access.');?>
<div id="title">Countries</div>
<div id="edit">
	<?=Html::anchor('adminka/add_country/', '+ Add country')?>
</div>
<table id="proj_task">
	<tr>
		<td class="right_t" colspan="2">
			<div id="edit"><?=Html::anchor('adminka', 'Back')?></div>
		</td>
	</tr>
	<tr id="head_tasks">
		<td>
			№
		</td>
		<td>
			Country
		</td>
	</tr>
	<? $i=1;
	foreach($countries as $country){
		$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
		<tr <?=$class?>>
			<td>
				<?=$i++?>
			</td>
			<td>
				<?=Html::anchor('adminka/update_country/'.$country->id, $country->country)?>
			</td>
		</tr>
	<?}?>
</table>