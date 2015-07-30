<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Data extends Controller_Base
{
    public function action_index()
    {
        $this->template->content = View::factory('data/index')->render();
    }

    public function action_list_inn()
    {
        $view = View::factory('data/list_inn');
        $view->data = ORM::factory('inn')->find_all();

        $this->template->content = $view->render();
    }

    public function action_add_inn()
    {
        $errors = array();
        $message = "";

        $data['international_nonproprietary_name'] = '';

        if ($_POST)
        {
            $post = Model_Inn::validation_inn($_POST);
            $data = $_POST;

            if (!$post->check())
            {
                $errors = $post->errors('projects/mes');
            }
            else
            {
            	$orm = ORM::factory('inn');
                $orm->values($_POST)->create($post);
                
                $change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'inn',
                	'changes_new' => $data['international_nonproprietary_name'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $orm = ORM::factory('change');
                $orm->values($change)->create($chang_valid);
                
                $message = "INN successfully added";
                $data['international_nonproprietary_name'] = '';
            }
        }

        $view = View::factory('data/add_inn');

        $view->data = $data;
        $view->errors = $errors;
        $view->message = $message;

        $this->template->content = $view->render();
    }

    public function action_update_inn()
    {
		$id = $this->request->param('id');
        $orm = ORM::factory('inn', $id);

        if(!$orm->loaded())
        {
            $this->redirect('data/list_inn');
        }
        
        $errors = array();
        $message = "";
        $data = $orm->as_array();
        
        $inn_old = $data['international_nonproprietary_name'];

        if ($_POST)
        {
            $post = Model_Inn::validation_inn($_POST);
			$data = $_POST;
            
            if (!$post->check())
            {
                $errors = $post->errors('projects/mes');
            }
            else
            {
                $orm->values($_POST)->update($post);
                
                $change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'inn',
                	'changes_old' => $inn_old,
                	'changes_new' => $data['international_nonproprietary_name'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $orm = ORM::factory('change');
                $orm->values($change)->create($chang_valid);
                
                
                $message = "INN has successfully updated";
            }
        }

        $view = View::factory('data/update_inn');

        $view->id = $orm->id;
        $view->data = $data;
        $view->errors = $errors;
        $view->message = $message;

        $this->template->content = $view->render();
    }

	public function action_list_companies()
	{
		$view_content = View::factory('data/list_companies');

		$view_content->companies = ORM::factory('company')->find_all();

		$this->template->content = $view_content->render();
	}

	public function action_add_company()
	{
		$errors = array();
		$message = "";

		$data['company'] = '';
		$data['address'] = '';
		$user_id = Auth::instance()->get_user()->id;
		
		$form = Cache::instance()->get($user_id);
		if($form['submit'] == 'Add company'){
			$form['submit'] = 'Back';
			Cache::instance()->set($user_id, $form);
		}
		
		if ($_POST)
		{	
			$post = Model_Company::validation_company($_POST);
			$data = $_POST;

			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{		
				$orm = ORM::factory('company');
				$orm->values($_POST)->create($post);
				
				$change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'company',
                	'changes_new' => $data['company'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $change_orm = ORM::factory('change');
                $change_orm->values($change)->create($chang_valid);
				
				$message = "Company has successfully added";
				$data['company'] = '';
				$data['address'] = '';
			}
		}

		$view = View::factory('data/add_company');

		$view->data = $data;
		$view->errors = $errors;
		$view->message = $message;
		$view->form = $form['submit'];

		$this->template->content = $view->render();
	}

	public function action_update_company()
	{

		$id = $this->request->param('id');
		$orm = ORM::factory('company', $id);

		if(!$orm->loaded())
		{
			$this->redirect('data/list_companies');
		}

		$errors = array();
		$message = "";
		
		$company_old = $orm->company;

		if ($_POST)
		{
			$post = Model_Company::validation_company($_POST);
			$data = $_POST;

			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$orm->values($_POST)->update($post);
				
				$change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'company',
                	'changes_old' => $company_old,
                	'changes_new' => $data['company'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $change_orm = ORM::factory('change');
                $change_orm->values($change)->create($chang_valid);
				
				$message = "Country has successfully updated";
			}
		}

		$view = View::factory('data/update_company');

		$view->id = $orm->id;
		$view->data = $orm;
		$view->errors = $errors;
		$view->message = $message;

		$this->template->content = $view->render();
	}
	
	public function action_list_pharmaceutical_form()
    {
        $view = View::factory('data/list_pharmaceutical_form');
        $view->data = ORM::factory('pharmaceuticalform')->find_all();

        $this->template->content = $view->render();
    }
    
	public function action_add_pharmaceutical_form()
    {
        $errors = array();
        $message = "";

        $data['pharmaceutical_form'] = '';

        if ($_POST)
        {
            $post = Model_Pharmaceuticalform::validation_pharmaceutical_form($_POST);
            $data = $_POST;

            if (!$post->check())
            {
                $errors = $post->errors('projects/mes');
            }
            else
            {
            	$orm = ORM::factory('pharmaceuticalform');
                $orm->values($_POST)->create($post);
                
                $change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'pharmaceutical form',
                	'changes_new' => $data['pharmaceutical_form'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $change_orm = ORM::factory('change');
                $change_orm->values($change)->create($chang_valid);
                
                $message = "Pharmaceutical form successfully added";
                $data['pharmaceutical_form'] = '';
            }
        }

        $view = View::factory('data/add_pharmaceutical_form');

        $view->data = $data;
        $view->errors = $errors;
        $view->message = $message;

        $this->template->content = $view->render();
    }
    
	public function action_update_pharmaceutical_form()
    {
		$id = $this->request->param('id');
        $orm = ORM::factory('pharmaceuticalform', $id);

        if(!$orm->loaded())
        {
            $this->redirect('data/list_pharmaceutical_form');
        }
        
        $errors = array();
        $message = "";
        $data = $orm->as_array();
		$pf_old = $data['pharmaceutical_form'];
        
        if ($_POST)
        {
            $post = Model_Pharmaceuticalform::validation_pharmaceutical_form($_POST);
			$data = $_POST;
            
            if (!$post->check())
            {
                $errors = $post->errors('projects/mes');
            }
            else
            {
                $orm->values($_POST)->update($post);
                
                $change = array(
                	'user_id' => Auth::instance()->get_user()->id,
                	'changes_box' => 'pharmaceutical form',
                	'changes_old' => $pf_old,
                	'changes_new' => $data['pharmaceutical_form'],
                	'changes_date' => time(),
                );
                
                $chang_valid = Model_Change::validation_change($change);
                $change_orm = ORM::factory('change');
                $change_orm->values($change)->create($chang_valid);
                
                $message = "Pharmaceutical form has successfully updated";
            }
        }

        $view = View::factory('data/update_pharmaceutical_form');

        $view->id = $orm->id;
        $view->data = $data;
        $view->errors = $errors;
        $view->message = $message;

        $this->template->content = $view->render();
    }
}