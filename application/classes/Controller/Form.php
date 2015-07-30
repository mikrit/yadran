<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Form extends Controller_Base {

	public function action_index()
	{
		if(Auth::instance()->get_user()->country->country == 'Croatia')
		{
			$this->redirect('/');
		}

		$errors = array();
		$message = "";
		$user_id = Auth::instance()->get_user()->id;

		//-----------Имя продукта--------
		$data['product_name'] = '';

		//-----------Международное имя--------
		$data['international_nonproprietary_name_id'] = 0;
		$inn = Helper::get_list_orm('inn', 'international_nonproprietary_name');

		//-----------Ингридеент--------
		$data['active_ingredient'] = '';

		//-----------Количество ингридеентов--------
		$data['quantity_ai'] = '';

		//-----------Доза--------
		$data['dosage_id'] = 0;
		$dosage = Helper::get_list_orm('dosage', 'dosage');

		//-----------Состав--------
        $data['composition'] = '';

		//-----------Сатус--------
		$data['status_id'] = 0;
		$status = Helper::get_list_orm('status', 'status');

        //-----------форма--------
		$data['pharmaceutical_form_id'] = 0;
        $pharmaceutical_form = Helper::get_list_orm('pharmaceuticalform', 'pharmaceutical_form');

		//-----------Упаковка--------
        $data['packaging'] = '';
        
        //-----------жизнь--------
		$data['shelf_life_id'] = 0;
        $shelf_life = Helper::get_list_orm('shelflife', 'shelf_life');

        //-----------Условия хранения--------
		$data['storage_condition_id'] = 0;
        $storage_condition = Helper::get_list_orm('storagecondition', 'storage_condition');
        
        //-----------по/без рецепта--------
		$data['approval_condition_id'] = 0;
        $approval_condition = Helper::get_list_orm('approvalcondition', 'approval_condition');
        
        //-----------номер регистрационного сертификата--------
		$data['registration_certificate_number'] = '';
		$data['registration_certificate_date'] = '';
		$data['period_of_validity'] = '';
		$data['unlimited_validity'] = 0;


        //-----------Регистрационный этап RS--------
		$data['registration_stage_id'] = 0;
		$registration_stage = Helper::get_list_orm('registrationstage', 'registration_stage');
        
        //-----------Дата окончания RS--------
        $data['registration_stage_date'] = '';

		//---------страны--------
		$countries = Helper::get_list_orm('country', 'country');
		
		if(!$this->admin->loaded()){
			$user_country = Auth::instance()->get_user()->country;	
			$countries = array($user_country->id => $user_country->country);
		}

        //-----------Comments--------
        $data['comment'] = '';

        //-----------Производитель готового продукта--------
        $data['manufacturer'] = '';

        //-----------Упаковщик (первичная упаковка)--------
        $data['manufacturer_primary'] = '';

        //-----------Упаковщик (вторичная упаковка)--------
        $data['manufacturer_secondary'] = '';

        //-----------Выпускающий контроль качества--------
        $data['quality_control'] = '';

		//-----------Регистрирующая компания--------
		$data['marketing_authorisation_holder'] = '';

		$company = Helper::get_list_orm('company', 'company');

        //-----------Тип процесса--------
		$data['type_of_process'] = 0;

		$type_of_process = Model_Process::type_of_process();

		$user_cahe = Cache::instance()->get($user_id);
		if($user_cahe['submit'] == "Back")
		{
				$data = Cache::instance()->get($user_id);
		}

		if ($_POST)
		{	
			$orm = ORM::factory('product');

			if(!isset($_POST['unlimited_validity'])){
				$_POST['unlimited_validity'] = 0;
			}

			$data = $_POST;
			
			if($_POST['submit'] == 'Add company')
			{
				Cache::instance()->set($user_id, $data);
				$this->redirect('data/add_company');
			}
			
			$post = Model_Product::validation_product($_POST);

			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$a = explode("-", $_POST['registration_certificate_date']);
				if($a[0] != ''){
					$_POST['registration_certificate_date'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['registration_certificate_date'] = null;
				}

				$a = explode("-", $_POST['period_of_validity']);
				if($a[0] != ''){
					$_POST['period_of_validity'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['period_of_validity'] = null;
				}

				$a = explode("-", $_POST['registration_stage_date']);
				if($a[0] != ''){
					$_POST['registration_stage_date'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['registration_stage_date'] = null;
				}
				
				if($_POST['quantity_ai'] == ''){
					$_POST['quantity_ai'] = 0;
				}

				$orm->values($_POST)->create($post);
				if(!file_exists(DOCROOT.'files/'.$orm->id))
				{
					mkdir(DOCROOT.'files/'.$orm->id, 0775);
				}

				$product = ORM::factory('product', $orm->id);

				foreach($countries as $k => $v){
					if(isset($data['country_'.$k])){
						$product->add('countries', $k);
					}
				}

				Cache::instance()->delete($user_id);

				$this->redirect('form/product/'.$orm->id);
			}
		}

		foreach($countries as $k => $v){
			if(!isset($data['country_'.$k])){
				$data['country_'.$k] = 0;
			}
		}

		$view = View::factory('form/form');

		$view->inn = $inn;
		$view->dosage = $dosage;
		$view->status = $status;
		$view->pharmaceutical_form = $pharmaceutical_form;
		$view->shelf_life = $shelf_life;
		$view->storage_condition = $storage_condition;
		$view->approval_condition = $approval_condition;
		$view->countries = $countries;
		$view->registration_stage = $registration_stage;
		$view->type_of_process = $type_of_process;
		$view->company = $company;

		$view->data = $data;
		$view->errors = $errors;
		$view->message = $message;

		$this->template->content = $view->render();
	}

	public function action_product()
	{
		$id = $this->request->param('id');
		$data = ORM::factory('product', $id);

		if(!$data->loaded())
		{
			$this->redirect('/');
		}

		$errors = array();
		$errors2 = array();
		$data_f['discription'] = '';
		$message = "";
		$user_id = Auth::instance()->get_user()->id;
		$admin = ORM::factory('user', $user_id)->roles->where('name', '=', 'admin')->find();

		$type_of_process = Model_Process::type_of_process();

		$view = View::factory('form/product');
		$view->id = $data->id;
		$view->admin = $admin->loaded();
		
		if($_POST)
		{
			if($_POST['prov'] == 2)
			{
				$file = ORM::factory('file');
				$post = Model_File::validation_files($_FILES["file"]);
				$data_f = $_POST;

				if (!$post->check())
				{
					$errors2 = $post->errors('projects/mes');
				}
				elseif(file_exists(DOCROOT.'files/'.$id.'/'.Http::translitIt($_FILES["file"]["name"])))
				{
					$errors2['file'] = 'File already exists';
				}
				elseif(preg_match('/\.(?:php|html|js|rb|rbw)$/', $_FILES["file"]["name"]))
				{
					$errors2['file'] = 'Scripts can not download';
				}
				else
				{
					if(!file_exists(DOCROOT.'files/'.$id))
					{
						mkdir(DOCROOT.'files/'.$id, 0775);
					}
					move_uploaded_file($_FILES["file"]["tmp_name"], 'files/'.$id.'/'.Http::translitIt($_FILES["file"]["name"]));
					
					$_POST['link'] = 'files/'.$id.'/'.Http::translitIt($_FILES["file"]["name"]);
					$_POST['title'] = $_FILES["file"]["name"];
					$_POST['product_id'] = $id;
					$_POST['add_date'] = time();
					$_POST['user_id'] = $user_id;
					
					$file->values($_POST)->create();
					$data_f['discription'] = '';
				}
			}
		}

		$user_country_id = 0;
		if(!$this->admin->loaded()){
			$user_country_id = Auth::instance()->get_user()->country->id;
		}
		
		$view_files = View::factory('form/files');
		$view_files->files = ORM::factory('file')->where('product_id', '=', $id)->order_by('id', 'desc')->find_all();
		$view_files->admin = $admin->loaded();
		$view_files->errors = $errors2;
		$view_files->id = $id;
		$view_files->data_f = $data_f;
		$view_files->croatia = Auth::instance()->get_user()->country->country == 'Croatia';
		$view_files->user_country_id = $user_country_id;
		$view_files->data = $data;

		$view->files = $view_files->render();

		$view->type_of_process = $type_of_process;
		$view->user_country_id = $user_country_id;
		$view->data = $data;
		$view->errors = $errors;
		$view->message = $message;
		$view->croatia = Auth::instance()->get_user()->country->country == 'Croatia';

		$this->template->content = $view->render();
	}

	public function action_edit_comment()
	{
		$errors = array();

		$id = $this->request->param('id');
		$file = ORM::factory('file', $id);

		if(!$file->loaded())
			$this->redirect('form/product/'.$file->product_id);

		if ($_POST)
		{
			$post = Model_File::validation_comment($_POST);

			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$file->values($_POST)->update($post);
				$this->redirect('form/product/'.$file->product_id);
			}
		}

		$view = View::factory('form/edit_comment');

		$view->errors = $errors;
		$view->file = $file;
		$this->template->content = $view->render();
	}
	
	public function action_delete_file()
	{
		$id = $this->request->param('id');
		$file = ORM::factory('file', $id);
		$product_id = $file->product_id;

		if(!$file->loaded())
		{
			$this->redirect('/');
		}

		$user_id = Auth::instance()->get_user()->id;
		$admin = ORM::factory('user', $user_id)->roles->where('name', '=', 'admin')->find();


		$user_country_id = 0;
		if(!$this->admin->loaded()){
			$user_country_id = Auth::instance()->get_user()->country->id;
		}

		$data = ORM::factory('product', $product_id);
		$has_country = 0;
		foreach($data->countries->find_all()->as_array() as $v){
			if($v->id == $user_country_id){
				$has_country = 1;
			}
		}

		if(!$admin->loaded() && !$has_country)
		{
			$this->redirect('/');
		}

		if(file_exists(DOCROOT.'files/'.$product_id.'/'.Http::translitIt($file->title)))
		{
			unlink(DOCROOT.'files/'.$product_id.'/'.Http::translitIt($file->title));
		}
		$file->delete();
		$this->redirect('form/product/'.$product_id);
	}

	public function action_in_archive()
	{
		$id = $this->request->param('id');
		$file = ORM::factory('file', $id);
		$product_id = $file->product_id;

		if(!$file->loaded()){
			$this->redirect('/');
		}

		$user_id = Auth::instance()->get_user()->id;
		$admin = ORM::factory('user', $user_id)->roles->where('name', '=', 'admin')->find();

		$user_country_id = 0;
		if(!$this->admin->loaded()){
			$user_country_id = Auth::instance()->get_user()->country->id;
		}

		$data = ORM::factory('product', $product_id);
		$has_country = 0;
		foreach($data->countries->find_all()->as_array() as $v){
			if($v->id == $user_country_id){
				$has_country = 1;
			}
		}

		if(!$admin->loaded() && !$has_country)
		{
			$this->redirect('/');
		}

		$_POST['archive'] = 1;
		$post = Model_File::validation_comment($_POST);

		$file->values($_POST)->update($post);
		$this->redirect('form/product/'.$product_id);
	}

	public function action_update()
	{
		$id = $this->request->param('id');
		$data = ORM::factory('product', $id);

		$data2 = $data->as_array();

		if(!$data->loaded())
		{
			$this->redirect('/');
		}
		
		$errors = array();
		$message = "";

		//-----------Международное имя--------
		$inn = Helper::get_list_orm('inn', 'international_nonproprietary_name');

		//-----------Доза--------
		$dosage = Helper::get_list_orm('dosage', 'dosage');

		//-----------Сатус--------
		$status = Helper::get_list_orm('status', 'status');

        //-----------форма--------
        $pharmaceutical_form = Helper::get_list_orm('pharmaceuticalform', 'pharmaceutical_form');
        
        //-----------жизнь--------
        $shelf_life = Helper::get_list_orm('shelflife', 'shelf_life');

        //-----------Условия хранения--------
        $storage_condition = Helper::get_list_orm('storagecondition', 'storage_condition');
        
        //-----------по/без рецепта--------
        $approval_condition = Helper::get_list_orm('approvalcondition', 'approval_condition');

        //-----------Регистрационный этап RS--------
		$registration_stage = Helper::get_list_orm('registrationstage', 'registration_stage');

		//---------страны--------
		$countries = Helper::get_list_orm('country', 'country');

		if(!$this->admin->loaded()){
			$user_country = Auth::instance()->get_user()->country;	
			$countries = array($user_country->id => $user_country->country);
		}

		//-----------Компании--------
		$company = Helper::get_list_orm('company', 'company');

        //-----------Тип процесса--------
		$type_of_process = Model_Process::type_of_process();

		if ($_POST)
		{
			$post = Model_Product::validation_product($_POST);

			if(!isset($_POST['unlimited_validity'])){
				$_POST['unlimited_validity'] = 0;
			}

			if (!$post->check())
			{
				$data2 = $_POST;
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$a = explode("-", $_POST['registration_certificate_date']);
				if($a[0] != ''){
					$_POST['registration_certificate_date'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['registration_certificate_date'] = null;
				}

				$a = explode("-", $_POST['period_of_validity']);
				if($a[0] != ''){
					$_POST['period_of_validity'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['period_of_validity'] = null;
				}

				$a = explode("-", $_POST['registration_stage_date']);
				if($a[0] != ''){
					$_POST['registration_stage_date'] = mktime(0,0,0,$a[1],$a[2],$a[0]);
				}else{
					$_POST['registration_stage_date'] = null;
				}

				$data->values($_POST)->update($post);

				foreach($countries as $k => $v){
					if(!isset($_POST['country_'.$k])){
						$data->remove('countries', $k);
						$data2['country_'.$k] = 0;
					}else{
						if(!$data->has('countries', $k)){
							$data->add('countries', $k);
						}
						$data2['country_'.$k] = 1;
					}
				}

				$this->redirect('form/product/'.$id);
				$message = "Product successfully updated";
			}
		}

		foreach($countries as $k => $v){
			if($data->has('countries', $k)){
				$data2['country_'.$k] = 1;
			}else{
				$data2['country_'.$k] = 0;
			}
		}
		
		$view = View::factory('form/update');
		$view->inn = $inn;
		$view->dosage = $dosage;
		$view->status = $status;
		$view->pharmaceutical_form = $pharmaceutical_form;
		$view->shelf_life = $shelf_life;
		$view->storage_condition = $storage_condition;
		$view->approval_condition = $approval_condition;
		$view->countries = $countries;
		$view->registration_stage = $registration_stage;
		$view->type_of_process = $type_of_process;
		$view->company = $company;

		$view->data = $data2;
		$view->id = $id;
		$view->errors = $errors;
		$view->message = $message;
		$this->template->content = $view->render();
	}

	public function action_delete()
	{
		$id = $this->request->param('id');
		$product = ORM::factory('product', $id);

		if(!$product->loaded())
		{
			$this->redirect('/');
		}

		$user_id = Auth::instance()->get_user()->id;
		$admin = ORM::factory('user', $user_id)->roles->where('name', '=', 'admin')->find();

		if(!$admin->loaded())
		{
			$this->redirect('/');
		}

		$product->remove('countries');

		$files = ORM::factory('file')->where('product_id', '=', $id)->find_all();
		foreach($files as $file)
		{
			$file->delete();
		}

		$this->remove_dir(DOCROOT."files/".$id);
		$product->delete();
		$this->redirect('/');
	}

	public function remove_dir($path)
	{
		if(file_exists($path) && is_dir($path))
		{
			$diropen = opendir($path);
			while(false !== ($file = readdir($diropen)))
			{
				if($file != '.' && $file != '..')
				{
					$tmp_path = $path.'/'.$file;
					chmod($tmp_path, 0777);
					if(is_dir($tmp_path))
					{
						$this->remove_dir($tmp_path);
					}
					else
					{
						unlink($tmp_path);
					}
				}
			}
			closedir($diropen);
		}
		return rmdir($path);
	}
} // End Welcome