<?php defined('SYSPATH') or die('No direct script access.');?>

<?
	$has_country = 0;
	foreach($data->countries->find_all()->as_array() as $v){
		if($v->id == $user_country_id){
			$has_country = 1;
		}
	}
?>

<?if(!$croatia && ($admin || $has_country)){?>
	<div id="title">Add file</div>
	<?=Form::open('form/product/'.$id, array('name' => 'product', 'method'=>'post', 'enctype' => 'multipart/form-data'));?>
		<table class="t_form">
			<?php if(count($errors)):?>
				<?php foreach ($errors as $error):?>
					<tr>
						<td style="color:red;"><?=$error?></td>
					</tr>
				<?php endforeach;?>
			<?php endif;?>
			<tr>
				<td>
					<?=Form::file('file', array('size'=>'15px'))?>
				</td>
			</tr>
			<tr>
				<td>
					Discription:
				</td>
			</tr>
			<tr>
				<td>
					<?=Form::textarea('discription', $data_f['discription'], array('cols' => '20', 'rows' => '5'));?>
				</td>
			</tr>
			<tr>
				<td>
					<?=Form::input('submit','Add',array('id' => 'button', 'type'=>'submit'));?>
				</td>
			</tr>
		</table>
		<?=Form::hidden('prov', '2')?>
	<?=Form::close();?>
<?}?>

<?if(count($files) != 0){?>
	<div id="title">Files</div>
<?}?>

<div id="comments">
	<?foreach($files as $file){?>
		<div class="c">
			<div class="h">
				<em><?=$file->users->name?></em>, 
				<?=date( 'd.m.y,H:i', $file->add_date)?>
				<div class="edit">
				<?if(!$croatia && ($admin || $has_country)){
						if($file->archive == 0){
							echo Html::anchor('form/in_archive/'.$file->id, 'В архив');
							echo " | ";
						}
						echo Html::anchor('form/delete_file/'.$file->id, Html::image('media/img/del.jpg', array('alt' => 'Удалить', 'title' => 'Удалить')), array("onclick" => "return confirm('Удалить файл?')"));?>
				<?}?>
				</div>
			</div>
			<?if($file->archive == 1){?>
				<div class="archive">
			<?}else{?>
				<div>
			<?}?>
			<?php
				$a = array();
				preg_match('/\.\w{3,4}$/', $file->link, $a);
				if (isset($a[0]) && ($a[0] == '.jpg' || $a[0] == '.jpeg' || $a[0] == '.gif' || $a[0] == '.bmp' || $a[0] == '.png'))
				{
					echo Html::anchor($file->link, $file->title, array('rel'=>'prettyPhoto[mixed]'));
				}
				else
				{
					echo Html::anchor($file->link, $file->title);
				}
			?>
			</div>
			<?if(!$croatia && ($admin || $has_country)){?>
				<div class="right">
					<?echo Html::anchor('form/edit_comment/'.$file->id, 'Edit comment');?>
				</div>
			<?}?>
			<div class='file_dis'>
				<?if($file->discription != ''){?>
					<p><?=preg_replace('/\\n/', '<br/>', $file->discription)?></p>
				<?}?>
			</div>
		</div>
	<?}?>
</div>

<script type="text/javascript">
$(function(){
	  $("#comments a[rel^='prettyPhoto']").prettyPhoto({
	  	theme: 'light_rounded'
	  });
	});
</script>