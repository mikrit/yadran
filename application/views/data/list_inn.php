<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="title">International Nonproprietary Names</div>

<div id="edit">
    <?=Html::anchor('data/add_inn/', '+ Add International nonproprietary name')?>
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
            International nonproprietary name
        </td>
    </tr>
    <? $i=1;
    foreach($data as $inn){
        $class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
        <?if($inn->id != 1){?>
            <tr <?=$class?>>
                <td>
                    <?=$i++?>
                </td>
                <td>
                    <?=Html::anchor('data/update_inn/'.$inn->id, $inn->international_nonproprietary_name)?>
                </td>
            </tr>
        <?}?>
    <?}?>
</table>