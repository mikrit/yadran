<?php defined('SYSPATH') or die('No direct script access.');?>

<div class="t-center">
    <div id="title">Add product</div>

    <?=Form::open('form',array('method'=>'post'));?>
    <table class="t_form">
        <?php if(count($errors)):?>
            <?php foreach ($errors as $error):?>
                <tr>
                    <td class="error" colspan="2"><?=$error?></td>
                </tr>
            <?php endforeach;?>
        <?php endif;?>
        <tr><td colspan="3" style="color: green"><?=$message?></td></tr>
        <tr>
            <td>Product name:</td>
            <td colspan="2"><?=Form::input('product_name', $data['product_name'], array('class' => 'input'));?></td>
        </tr>
        <tr>
            <td>International nonproprietary name (INN):</td>
            <td colspan="2"><?=Form::select('international_nonproprietary_name_id', $inn, $data['international_nonproprietary_name_id']);?></td>
        </tr>
        <tr>
			<td>Active ingredient (AI):</td>
			<td colspan="2"><?=Form::textarea('active_ingredient', $data['active_ingredient'], array('rows' => 2, 'cols' => 50));?></td>
		</tr>
		<tr>
            <td>Quantity AI:</td>
            <td colspan="2"><?=Form::input('quantity_ai', $data['quantity_ai'], array('class' => 'input'));?></td>
        </tr>
		<tr>
			<td>Measure:</td>
			<td colspan="2"><?=Form::select('dosage_id', $dosage, $data['dosage_id']);?></td>
		</tr>
		<tr>
			<td>Excipient:</td>
			<td colspan="2"><?=Form::textarea('composition', $data['composition'], array('rows' => 4, 'cols' => 50));?></td>
		</tr>
		<tr>
			<td>Status:</td>
			<td colspan="2"><?=Form::select('status_id', $status, $data['status_id']);?></td>
		</tr>
		<tr>
            <td>Pharmaceutical form:</td>
            <td colspan="2"><?=Form::select('pharmaceutical_form_id', $pharmaceutical_form, $data['pharmaceutical_form_id']);?></td>
        </tr>
        <tr>
			<td>Packaging:</td>
			<td colspan="2"><?=Form::input('packaging', $data['packaging'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Shelf life:</td>
			<td colspan="2"><?=Form::select('shelf_life_id', $shelf_life, $data['shelf_life_id']);?></td>
		</tr>
		<tr>
			<td>Storage conditions:</td>
			<td colspan="2"><?=Form::select('storage_condition_id', $storage_condition, $data['storage_condition_id']);?></td>
		</tr>
        <tr>
            <td>Approval conditions:</td>
            <td colspan="2"><?=Form::select('approval_condition_id', $approval_condition, $data['approval_condition_id']);?></td>
        </tr>
		<tr>
			<td>Registration certificate number:</td>
			<td><?=Form::input('registration_certificate_number', $data['registration_certificate_number'], array('class' => 'input'));?></td>
		</tr>
		<tr>
			<td>Registration certificate date:</td>
			<td><?=Form::input('registration_certificate_date', $data['registration_certificate_date'], array('name' => 'date', 'class' => 'date_input'));?></td>
		</tr>
		<tr>
			<td>Period of validity:</td>
			<td><?=Form::input('period_of_validity', $data['period_of_validity'], array('name' => 'date', 'class' => 'date_input'));?></td>
		</tr>
		<tr>
			<td>Unlimited validity:</td>
			<td><?=Form::checkbox('unlimited_validity', 1, $data['unlimited_validity'] == 0 ? false : true);?></td>
		</tr>
        <tr>
			<td>Registration stage (RS):</td>
			<td colspan="2"><?=Form::select('registration_stage_id', $registration_stage, $data['registration_stage_id']);?></td>
		</tr>
        <tr>
			<td>Comments:</td>
			<td colspan="2"><?=Form::textarea('comment', $data['comment'], array('rows' => 4, 'cols' => 50));?></td>
		</tr>
		<tr>
			<td>Manufacturer:</td>
			<td><?=Form::select('manufacturer', $company, $data['manufacturer']);?></td>
			<td rowspan="5" class='add'><?=Form::input('submit', 'Add company', array('id' => 'button', 'type'=>'submit'));?></td>
		</tr>
		<tr>
			<td>Manufacturer (primary packaging):</td>
			<td><?=Form::select('manufacturer_primary', $company, $data['manufacturer_primary']);?></td>
		</tr>
		<tr>
			<td>Manufacturer (secondary packaging):</td>
			<td><?=Form::select('manufacturer_secondary', $company, $data['manufacturer_secondary']);?></td>
		</tr>
		<tr>
			<td>Quality control:</td>
			<td><?=Form::select('quality_control', $company, $data['quality_control']);?></td>
		</tr>
		<tr>
			<td>Marketing Authorisation Holder (MAH):</td>
			<td><?=Form::select('marketing_authorisation_holder', $company, $data['marketing_authorisation_holder']);?></td>
		</tr>
		<tr>
			<td>Type of process:</td>
			<td colspan="2"><?=Form::select('type_of_process', $type_of_process, $data['type_of_process']);?></td>
		</tr>
		<tr>
			<td>Approximate dates of the finishing works:</td>
			<td colspan="2"><?=Form::input('registration_stage_date', $data['registration_stage_date'], array('name' => 'date', 'class' => 'date_input'));?></td>
		</tr>
		<tr>
			<td rowspan="<?=ceil(count($countries)/2)+1?>">Country:</td>
		</tr>
		<tr>
		<?$i=0;foreach($countries as $k => $v){?>
			<?$i++?>
			<td>
				<?=Form::checkbox('country_'.$k, 1, $data['country_'.$k] == 0 ? false : true);?>
				<?=" ".$v?>
			</td>
			<?if($i % 2 == 0){?>
				</tr>
				<tr>
			<?}?>
		<?}?>
		</tr>
        <tr>
            <td class="right" colspan="3"><?=Form::input('submit', 'Add', array('id' => 'button', 'type'=>'submit'));?></td>
        </tr>
    </table>
    <?=Form::close();?>
</div>