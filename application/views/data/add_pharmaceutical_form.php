<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
    <div id="title">Add pharmaceutical form</div>

    <?=Form::open('data/add_pharmaceutical_form/',array('method'=>'post'));?>
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
                <div id="edit"><?=Html::anchor('data/list_pharmaceutical_form', 'Back')?></div>
            </td>
        </tr>
        <tr>
            <td>Pharmaceutical form:</td><td><?=Form::input('pharmaceutical_form', $data['pharmaceutical_form'], array('class' => 'input'));?></td>
        </tr>
        <tr>
            <td class="right" colspan="2"><?=Form::input('submit','Add',array('id' => 'button', 'type'=>'submit'));?></td>
        </tr>
    </table>
    <?=Form::close();?>
</div>