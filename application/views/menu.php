<?php defined('SYSPATH') or die('No direct script access.');?>

<ul><?$request = explode("/", Request::current()->uri());?>
	<li <?if($request[0] == 'search' || $request[0] == ''){echo 'id="current"';}?>>
		<?=HTML::anchor('search', 'Main'); ?>
	</li>
	<li <?if($request[0] == 'form'){echo 'id="current"';}?>>
		<?=HTML::anchor('form', 'Form'); ?>
	</li>
	<?if(!$croatia){?>
		<li <?if($request[0] == 'data'){echo 'id="current"';}?>>
			<?=HTML::anchor('data', 'Adding data'); ?>
		</li>
	<?}?>
	<?php if($admin && !$croatia){?>
		<li <?if($request[0] == 'adminka'){echo 'id="current"';}?>>
			<?=HTML::anchor('adminka','Administration'); ?>
		</li>
	<?}?>
	<li>
		<?=HTML::anchor('bauth/logout','Exit'); ?>
	</li>
</ul>
