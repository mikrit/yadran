<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Search extends Controller_Base {

	public function action_index()
	{
        $data['product_name'] = '';
        $data['inn'] = '';
        $data['registration_certificate_number'] = '';
        $data['country_id'] = 0;
        $data['type_of_process1'] = 0;
        $data['type_of_process2'] = 0;
        $data['type_of_process3'] = 0;
        $data['type_of_process4'] = 0;

        //-----------Страны-------------
        $countries = Helper::get_list_orm('country', 'country');
		$countries[0] = '-';
		ksort($countries);
        
		//-----------Тип процесса--------
		$type_of_process = Model_Process::type_of_process();
		
		//-----------Международное имя--------
		$data['international_nonproprietary_name_id'] = 0;
		$inn = Helper::get_list_orm('inn', 'international_nonproprietary_name');
		
		//-----------Сатус--------
		$data['status_id'] = 0;
		$status = Helper::get_list_orm('status', 'status');
		$status[0] = '-';
		ksort($status);
		
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
		
		$products = ORM::factory('product');

		if ($_POST)
		{
			$data = $_POST;
			
			if(!isset($data['type_of_process1']))
			{
				$data['type_of_process1'] = 0;
			}
		
			if(!isset($data['type_of_process2']))
			{
				$data['type_of_process2'] = 0;
			}
		
			if(!isset($data['type_of_process3']))
			{
				$data['type_of_process3'] = 0;
			}
		
			if(!isset($data['type_of_process4']))
			{
				$data['type_of_process4'] = 0;
			}

			if($data['product_name'] != '')
			{
				$products = $products->and_where('product_name', 'LIKE', '%'.$data['product_name'].'%');
			}
			
			if($data['international_nonproprietary_name_id'] != 1)
			{
				$products = $products->and_where('international_nonproprietary_name_id', '=', $data['international_nonproprietary_name_id']);
			}
			
			if($data['status_id'] != 0)
			{
				$products = $products->and_where('status_id', '=', $data['status_id']);
			}
			
			if($data['manufacturer'] != 1)
			{
				$products = $products->and_where('manufacturer', '=', $data['manufacturer']);
			}
			
			if($data['manufacturer_primary'] != 1)
			{
				$products = $products->and_where('manufacturer_primary', '=', $data['manufacturer_primary']);
			}
			
			if($data['manufacturer_secondary'] != 1)
			{
				$products = $products->and_where('manufacturer_secondary', '=', $data['manufacturer_secondary']);
			}
			
			if($data['quality_control'] != 1)
			{
				$products = $products->and_where('quality_control', '=', $data['quality_control']);
			}
			
			if($data['marketing_authorisation_holder'] != 1)
			{
				$products = $products->and_where('marketing_authorisation_holder', '=', $data['marketing_authorisation_holder']);
			}
			
			if($data['type_of_process1'] != 0)
			{
				$products = $products->or_where('type_of_process', '=', 0);
			}
		
			if($data['type_of_process2'] != 0)
			{
				$products = $products->or_where('type_of_process', '=', 1);
			}
		
			if($data['type_of_process3'] != 0)
			{
				$products = $products->or_where('type_of_process', '=', 2);
			}
		
			if($data['type_of_process4'] != 0)
			{
				$products = $products->or_where('type_of_process', '=', 3);
			}
		}

		$view = View::factory('main/search');

		$view->products = $products->find_all();

        $view->data = $data;
        $view->countries = $countries;
        $view->type_of_process = $type_of_process;
        
        $view->inn = $inn;
        $view->status = $status;
        $view->company = $company;


        $this->template->content = $view->render();
	}

} // End Welcome
