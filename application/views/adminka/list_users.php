<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">Users</div>


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
			First name and Last name
		</td>
		<td>
			Login
		</td>
		<td>
			Country
		</td>
		<td>
			Position
		</td>
	</tr>
	<? $i=1;
	foreach($users as $user){
		$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
		<?if($user->id != 1){?>
			<tr <?=$class?>>
				<td>
					<?=$i++?>
				</td>
				<td>
					<?=Html::anchor('adminka/update_user/'.$user->id, $user->name)?>
				</td>
				<td>
					<?=$user->username?>
				</td>
				<td>
					<?=$user->country->country?>
				</td>
				<td>
					<?=$user->position?>
				</td>
			</tr>
		<?}?>
	 <?}?>
</table>