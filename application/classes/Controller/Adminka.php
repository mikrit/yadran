<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Adminka extends Controller_Base
{
	public function __construct(Request $request, Response $response)
	{
		parent::__construct($request, $response);
		
		if(!ORM::factory('user', Auth::instance()->get_user()->id)->has('roles', ORM::factory('role', 2)) && Auth::instance()->get_user()->country->country == 'Croatia')
			$this->redirect('search');
	}
	
	public function action_index()
	{
		$this->template->content = View::factory('adminka/index')->render();
	}
	
	public function action_register()
	{
		$errors = array();
		$message = "";
		
		$data['username'] = '';
		$data['name'] = '';
		$data['email'] = '';
		$data['position'] = '';
		$data['country_id'] = '1';

		if ($_POST)
		{
			$user = ORM::factory('user');
			
			$post = Model_User::validation_n($_POST);
			
			$data = $_POST;
			
			$user_unique = ORM::factory('user')->where('username', '=', $data['username'])->count_all();
			$email_unique = ORM::factory('user')->where('email', '=', $data['email'])->count_all();
			
			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			elseif($user_unique > 0)
			{
				$errors[] = 'That username is already in use';
			}
			elseif($email_unique > 0)
			{
				$errors[] = 'That email is already in use';
			}
			else
			{	
				$user->create_user($_POST, array('username', 'name', 'country_id', 'position', 'password', 'email'));
				$user->add('roles', ORM::factory('role', 1));
				
				$mess = 'You are logged in "Jadran"<br/>
				
Your login: '.$_POST['username'].'<br/>
Your password: '.$_POST['password'].'<br/>

Enjoy your work.';
				
				//Http::send_letter($_POST['email'], 'Registration user', $mess);

				//Нужна переброска на Form если пришли от туда и сохранять данные
				$this->redirect('adminka/list_users/'.$user->id);

				$message = "User added successfully";
			}
		}

		//---------страны--------
		$countries = Helper::get_list_orm('country', 'country');
		
		$view_user = View::factory('adminka/register');
		
		$view_user->data = $data;
		$view_user->errors = $errors;
		$view_user->message = $message;
		$view_user->countries = $countries;
		
		$this->template->content = $view_user->render();
	}
	
	public function action_list_users() //обработать удаление
	{
		$users = ORM::factory('user')->find_all();
		
		$view_users = View::factory('adminka/list_users');
		$view_users->users = $users;
		$view_users->countries = Helper::get_list_orm('country', 'country');

		$this->template->content = $view_users->render();
	}
	
	public function action_update_user()
	{
		$id = $this->request->param('id');
		$user = ORM::factory('user', $id);
		
		if(!$user->loaded())
			$this->redirect('adminka/list_users');
			
		$errors = array();
		$message = '';
		
		$admin = $user->has('roles', ORM::factory('role', 2));
		
		if($_POST)
		{
			if($_POST['prov'] == 1)
			{
				$data = $_POST;
				$post = Model_User::validation_up1($_POST, $user);
			}
			elseif($_POST['prov'] == 2)
			{
				$post = Model_User::validation_up2($_POST);
			}
			
			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$user->values($_POST, array('username', 'name', 'country_id', 'position', 'password', 'email'))->update($post);
				$message = "Account Details were changed";
			}
		
			if(isset($_POST['admin']))
			{
				if($_POST['admin'])
				{
					if(!$admin)
					{
						$user->add('roles', ORM::factory('role', 2));
						$admin = 1;
					}
				}
				else
				{
					$user->remove('roles', ORM::factory('role', 2));
					$admin = 0;
				}
			}
		}

		//---------страны--------
		$countries = Helper::get_list_orm('country', 'country');
		
		$view_profile = View::factory('adminka/update_user');
		$view_profile->id = $user->id;
		$view_profile->data = $user;
		$view_profile->message = $message;
		$view_profile->admin = $admin;
		$view_profile->countries = $countries;

		$view_profile->errors = $errors;
		$this->template->content = $view_profile->render();
	}
	
	public function action_list_countries()
	{
		$orm_all = ORM::factory('country')->find_all();
		
		$view_content = View::factory('adminka/list_countries');
		$view_content->countries = $orm_all;
		
		$this->template->content = $view_content->render();
	}
	
	public function action_add_country()
	{
		$errors = array();
		$message = "";

		$data['country'] = '';

		if ($_POST)
		{
			$orm = ORM::factory('country');

			$post = Model_Country::validation_country($_POST);
			$data = $_POST;

			if (!$post->check())
			{
				$errors = $post->errors('projects/mes');
			}
			else
			{
				$orm->values($_POST)->create($post);
				$message = "Country has successfully added";
				$data['country'] = '';
			}
		}

		$view = View::factory('adminka/add_country');

		$view->data = $data;
		$view->errors = $errors;
		$view->message = $message;

		$this->template->content = $view->render();
	}

    public function action_update_country()
    {
        $id = $this->request->param('id');
        $orm = ORM::factory('country', $id);

        if(!$orm->loaded())
        {
            $this->redirect('adminka/list_countries');
        }
        
        $errors = array();
        $message = "";

        $data['country'] = $orm->country;

        if ($_POST)
        {
            $post = Model_Country::validation_country($_POST);
            $data = $_POST;

            if (!$post->check())
            {
                $errors = $post->errors('projects/mes');
            }
            else
            {
                $orm->values($_POST)->update($post);
                $message = "Country has successfully updated";
            }
        }

        $view = View::factory('adminka/update_country');

        $view->id = $orm->id;
        $view->data = $data;
        $view->errors = $errors;
        $view->message = $message;

        $this->template->content = $view->render();
    }
    
	public function action_logs()
	{
		$view = View::factory('adminka/logs');
		$view->data = ORM::factory('change')->find_all();;

		$this->template->content = $view->render();
	}
}