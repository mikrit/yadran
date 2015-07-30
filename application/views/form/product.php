<?php defined('SYSPATH') or die('No direct script access.');?>

<div id="pt">
	<div id="ptt">
		<div id="title">Product name: "<?=$data->product_name?>"</div>

		<table id="proj">
			<tr>
				<td class="right" colspan="2">
					<?
						if(!$croatia){
							echo Html::anchor('form', '+ Add new product');

							$has_country = 0;
							foreach($data->countries->find_all()->as_array() as $v){
								if($v->id == $user_country_id){
									$has_country = 1;
								}
							}

							if($has_country || $user_country_id == 0){
								echo " |".Html::anchor('form/update/'.$data->id, 'Update product');
							}

							if($admin)
							{
								echo " |".Html::anchor('form/delete/'.$data->id, 'Delete product', array("onclick" => "return confirm('Delete product \'$data->product_name?\'')"));
							}
						}
					?>
				</td>
			</tr>
		</table>
		<br/><br/><br/>

		<table id="proj_task">
			<tr>
				<td class="right_t" colspan="2">
					<div id="edit"><?=Html::anchor('/', 'Back')?></div>
				</td>
			</tr>
		</table>

		<table id="product">
			<tr>
				<td  style="padding-right: 10px; width: 35%;">International nonproprietary name (INN):</td>
				<td><b><?=$data->inn->international_nonproprietary_name?></b></td>
			</tr>
			<tr>
				<td>Active ingredient (AI):</td>
				<td><b><?=$data->active_ingredient?></b></td>
			</tr>
			<tr>
				<td>Quantity AI:</td>
				<td><b><?=$data->quantity_ai?></b></td>
			</tr>
			<tr>
				<td>Measure:</td>
				<td><b><?=$data->dosage->dosage?></b></td>
			</tr>
			<tr>
				<td>Excipient:</td>
				<td><b><?=$data->composition?></b></td>
			</tr>
			<tr>
				<td>Status:</td>
				<td><b><?=$data->status->status?></b></td>
			</tr>
			<tr>
				<td>Pharmaceutical form:</td>
				<td><b><?=$data->pharmaceuticalform->pharmaceutical_form?></b></td>
			</tr>
			<tr>
				<td>Packaging:</td>
				<td><b><?=$data->packaging?></b></td>
			</tr>
			<tr>
				<td>Shelf life:</td>
				<td><b><?=$data->shelflife->shelf_life?></b></td>
			</tr>
			<tr>
				<td>Storage conditions:</td>
				<td><b><?=$data->storagecondition->storage_condition?></b></td>
			</tr>
			<tr>
				<td>Approval conditions:</td>
				<td><b><?=$data->approvalcondition->approval_condition?></b></td>
			</tr>
			<tr>
				<td>Registration certificate number:</td>
				<td><b><?=$data->registration_certificate_number?></b></td>
			</tr>
			<tr>
				<td>Period of validity registration certificate:</td>
				<td>
					<?if($data->unlimited_validity == 1){?>
						<b>Unlimited validity</b>
					<?}else{?>
						<b><?=$data->period_of_validity != null ? date('d.m.Y', $data->period_of_validity) : '-'?></b>
					<?}?>
				</td>
			</tr>
			<tr>
				<td>Registration stage (RS):</td>
				<td><b><?=$data->registrationstage->registration_stage?></b></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<b><?foreach($data->countries->find_all()->as_array() as $v){
							echo $v->country."<br/>";
						}?></b>
				</td>
			</tr>
			<tr>
				<td>Comments:</td>
				<td><b><?=$data->comment?></b></td>
			</tr>
			<tr>
				<td>Manufacturer:</td>
				<td><b><?=$data->company->company?></b></td>
			</tr>
			<tr>
				<td>Manufacturer (primary packaging):</td>
				<td><b><?=$data->company1->company?></b></td>
			</tr>
			<tr>
				<td>Manufacturer (secondary packaging):</td>
				<td><b><?=$data->company2->company?></b></td>
			</tr>
			<tr>
				<td>Quality control:</td>
				<td><b><?=$data->company3->company?></b></td>
			</tr>
			<tr>
				<td>Marketing Authorisation Holder (MAH):</td>
				<td><b><?=$data->company4->company?></b></td>
			</tr>
			<tr>
				<td>Type of process:</td>
				<td><b><?=$type_of_process[$data->type_of_process]?></b></td>
			</tr>
			<tr>
				<td>Approximate dates of the finishing works:</td>
				<td><b><?=$data->registration_stage_date != null ? date('d.m.Y', $data->registration_stage_date) : '-'?></b></td>
			</tr>
		</table>
	</div>
</div>

<div id="add_files">
	<?=$files?>
</div>