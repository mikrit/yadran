<?php defined('SYSPATH') or die('No direct script access.');?>
<div id="title">Countries</div>
<div id="edit">
	<?=Html::anchor('data/add_company/', '+ Add company')?>
</div>
<table id="proj_task">
	<tr>
		<td class="right_t" colspan="3">
			<div id="edit"><?=Html::anchor('data', 'Back')?></div>
		</td>
	</tr>
	<tr id="head_tasks">
		<td>
			№
		</td>
		<td>
			Company
		</td>
		<td>
			Adress
		</td>
	</tr>
	<? $i=1;
	foreach($companies as $company){
		$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
		<?if($company->id != 1){?>
			<tr <?=$class?>>
				<td>
					<?=$i++?>
				</td>
				<td>
					<?=Html::anchor('data/update_company/'.$company->id, $company->company)?>
				</td>
				<td>
					<?=$company->address?>
				</td>
			</tr>
		<?}?>
	<?}?>
</table>