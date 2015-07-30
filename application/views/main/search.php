<?php defined('SYSPATH') or die('No direct script access.');?>
<div class="noprint">
	<div class="t-center">
		<div id="title">Search</div>

		<?=Form::open('search',array('method'=>'post'));?>
		<table class="t_form">
			<tr>
				<td>Product name:</td>
				<td colspan="2"><?=Form::input('product_name', $data['product_name'], array('class' => 'input'));?></td>
			</tr>
			<tr>
				<td>International nonproprietary name (INN):</td>
				<td colspan="2"><?=Form::select('international_nonproprietary_name_id', $inn, $data['international_nonproprietary_name_id']);?></td>
			</tr>
			<tr>
				<td>Status:</td>
				<td colspan="2"><?=Form::select('status_id', $status, $data['status_id']);?></td>
			</tr>
			<tr>
				<td>Manufacturer:</td>
				<td colspan="2"><?=Form::select('manufacturer', $company, $data['manufacturer']);?></td>
			</tr>
			<tr>
				<td>Manufacturer (primary packaging):</td>
				<td colspan="2"><?=Form::select('manufacturer_primary', $company, $data['manufacturer_primary']);?></td>
			</tr>
			<tr>
				<td>Manufacturer (secondary packaging):</td>
				<td colspan="2"><?=Form::select('manufacturer_secondary', $company, $data['manufacturer_secondary']);?></td>
			</tr>
			<tr>
				<td>Quality control:</td>
				<td colspan="2"><?=Form::select('quality_control', $company, $data['quality_control']);?></td>
			</tr>
			<tr>
				<td>Marketing Authorisation Holder (MAH):</td>
				<td colspan="2"><?=Form::select('marketing_authorisation_holder', $company, $data['marketing_authorisation_holder']);?></td>
			</tr>
			<tr>
				<td rowspan="4">Type of process:</td>
				<td class="right"><?=Form::checkbox('type_of_process1', 1, $data['type_of_process1'] == 0 ? false : true);?></td>
				<td>Registred product</td>
			</tr>
			<tr>
				<td class="right"><?=Form::checkbox('type_of_process2', 1, $data['type_of_process2'] == 0 ? false : true);?></td>
				<td>New registration</td>
			</tr>
			<tr>
				<td class="right"><?=Form::checkbox('type_of_process3', 1, $data['type_of_process3'] == 0 ? false : true);?></td>
				<td>Re-registration</td>
			</tr>
			<tr>
				<td class="right"><?=Form::checkbox('type_of_process4', 1, $data['type_of_process4'] == 0 ? false : true);?></td>
				<td>Variation</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td colspan="2"><?=Form::select('country_id', $countries, $data['country_id']);?></td>
			</tr>
			<tr>
				<td class="right" colspan="3"><?=Form::input('submit','Search',array('id' => 'button', 'type'=>'submit'));?></td>
			</tr>
		</table>
		<?=Form::close();?>
	</div>
	<br/><br/>
</div>

<div class="right_t noprint">
	<a href="javascript:window.print();" style="margin-left: 20px;">
		<?=Html::image('media/img/print.png', array('alt' => 'print', 'title' => 'print'))?>
	</a>
</div>
<br/>

<table id="proj_task2">
	<tr id="head_tasks">
		<td>
			№
		</td>
		<td>
			Product name, pharmaceutical form
		</td>
		<td>
			Status
		</td>
		<td>
			Registration certificate number
		</td>
		<td>
			Period of validity
		</td>
		<td>
			Shelf life
		</td>
		<td>
			Storage conditions
		</td>
		<td>
			Comments
		</td>
		<td>
			Approximate dates of the finishing works
		</td>
		<td>
			Type of process
		</td>
		<td>
			Country
		</td>
	</tr>
	<? $i=1;
	foreach($products as $product){
		if($product->has('countries', $data['country_id']) || $data['country_id'] == 0){
			$class = ($i%2==1)?'class="task_1"':'class="task_2"';?>
			<tr <?=$class?>>
				<td>
					<?=$i++?>
				</td>
				<td>
					<?=Html::anchor('form/product/'.$product->id, $product->product_name.", ".$product->pharmaceuticalform->pharmaceutical_form)?>
				</td>
				<td>
					<?=$product->status->status?>
				</td>
				<td>
					<?=$product->registration_certificate_number?>
				</td>
				<td>
					<?=$product->period_of_validity != null ? date('Y-m-d', $product->period_of_validity) : "It's not limited"?>
				</td>
				<td>
					<?=$product->shelflife->shelf_life?>
				</td>
				<td>
					<?=$product->storagecondition->storage_condition?>
				</td>
				<td>
					<?=$product->comment?>
				</td>
				<td>
					<?=$product->registration_stage_date != null ? date('F Y', $product->registration_stage_date) : '-'?>
				</td>
				<td>
					<?=$type_of_process[$product->type_of_process]?>
				</td>
				<td>
					<?foreach($product->countries->find_all()->as_array() as $v){
						echo $v->country."<br/>";
					}?>
				</td>
			</tr>
		<?}?>
	<?}?>
</table>