<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">Changes</div>


<table id="proj_task">
	<tr>
		<td class="right_t" colspan="8">
			<?=Html::anchor('adminka', 'Back')?>
		</td>
	</tr>
	<tr id="head_tasks">
		<td>
			№
		</td>
		<td>
			User
		</td>
		<td>
			Changes box
		</td>
		<td>
			Changes new
		</td>
		<td>
			Changes old
		</td>
		<td>
			Changes date
		</td>
	</tr>
	<? $i=1;
	foreach($data as $change){
		$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
		<tr <?=$class?>>
			<td>
				<?=$i++?>
			</td>
			<td>
				<?=$change->users->name?>
			</td>
			<td>
				<?=$change->changes_box?>
			</td>
			<td>
				<?=$change->changes_new?>
			</td>
			<td>
				<?=$change->changes_old?>
			</td>
			<td>
				<?=date('d.m.Y H:i', $change->changes_date)?>
			</td>
		</tr>
	 <?}?>
</table>