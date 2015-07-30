<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
    <div id="title">Form</div>

    <?=Form::open('form/edit/'.$id,array('method'=>'post'));?>
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
            <td>Product name:</td>
            <td><?=Form::input('product_name', $data['product_name'], array('class' => 'input'));?></td>
        </tr>
        <tr>
            <td>International nonproprietary name (INN):</td>
            <td><?=Form::select('international_nonproprietary_name_id', $inn, $data['international_nonproprietary_name_id']);?></td>
        </tr>
        <tr>
			<td>Active ingredient (AI):</td>
			<td><?=Form::textarea('active_ingredient', $data['active_ingredient'], array('rows' => 2, 'cols' => 50));?></td>
		</tr>
		<tr>
            <td>Quantity AI:</td>
            <td><?=Form::input('quantity_ai', $data['quantity_ai'], array('class' => 'input'));?></td>
        </tr>
		<tr>
			<td>Dosage:</td>
			<td><?=Form::select('dosage_id', $dosage, $data['dosage_id']);?></td>
		</tr>
		<tr>
			<td>Composition:</td>
			<td><?=Form::textarea('composition', $data['composition'], array('rows' => 4, 'cols' => 50));?></td>
		</tr>
		<tr>
			<td>Status:</td>
			<td><?=Form::select('status_id', $status, $data['status_id']);?></td>
		</tr>
		<tr>
            <td>Pharmaceutical form:</td>
            <td><?=Form::select('pharmaceutical_form_id', $pharmaceutical_form, $data['pharmaceutical_form_id']);?></td>
        </tr>
        <tr>
			<td>Packaging:</td>
			<td><?=Form::input('packaging', $data['packaging'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Shelf life:</td>
			<td><?=Form::select('shelf_life_id', $shelf_life, $data['shelf_life_id']);?></td>
		</tr>
		<tr>
			<td>Storage condition:</td>
			<td><?=Form::select('storage_condition_id', $storage_condition, $data['storage_condition_id']);?></td>
		</tr>
        <tr>
            <td>Approval conditions:</td>
            <td><?=Form::select('approval_condition_id', $approval_condition, $data['approval_condition_id']);?></td>
        </tr>
        <tr>
            <td>Registration certificate number:</td>
            <td><?=Form::select('registration_certificate_id', $registration_certificate_number, $data['registration_certificate_id']);?></td>
        </tr>
        <tr>
			<td>Registration stage (RS):</td>
			<td><?=Form::select('registration_stage_id', $registration_stage, $data['registration_stage_id']);?></td>
		</tr>
		<tr>
			<td>Expiration date of RS:</td>
			<td><?=Form::input('registration_stage_date', $data['registration_stage_date'], array('name' => 'date', 'class' => 'date_input'));?></td>
		</tr>
        <tr>
            <td>Country:</td>
            <td><?=Form::select('country_id', $countries, $data['country_id']);?></td>
        </tr>
        <tr>
			<td>Comments:</td>
			<td><?=Form::textarea('comment', $data['comment'], array('rows' => 4, 'cols' => 50));?></td>
		</tr>
		<tr>
			<td>Manufacturer:</td>
			<td><?=Form::input('manufacturer', $data['manufacturer'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Manufacturer (primary packaging):</td>
			<td><?=Form::input('manufacturer_primary', $data['manufacturer_primary'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Manufacturer (secondary packaging):</td>
			<td><?=Form::input('manufacturer_secondary', $data['manufacturer_secondary'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Quality control:</td>
			<td><?=Form::input('quality_control', $data['quality_control'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Type of process:</td>
			<td><?=Form::select('type_of_process', $type_of_process, $data['type_of_process']);?></td>
		</tr>
        <tr>
            <td class="right" colspan="2"><?=Form::input('submit','Add',array('id' => 'button', 'type'=>'submit'));?></td>
        </tr>
    </table>
    <?=Form::close();?>
</div>