<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use App\Models as M;
use App\Libs\RestPaginator;
use Illuminate\Pagination\Paginator;

class Admin extends CI_Controller {

	public function __construct(){
		parent::__construct();
    $this->load->library('grocery_CRUD');
    auth_force();
    if(!is_role('admin'))
      redirect('auth/logout');
	}

 	public function index($lang=false){
    redirect('admin/ang');
  }

  
  public function ang($lang=false){
   
    $crud = new grocery_CRUD();
    $crud->set_theme('datatables');
    $crud->set_table('ang');
    $crud->field_type('created_at','hidden',date('Y-m-d H:i:s'));
    $crud->field_type('updated_at','hidden');
    $output = $crud->render();
    $this->load->view('admin/crud.php', $output);
  }

  public function replacements($lang=false){
   
    $crud = new grocery_CRUD();
    $crud->set_theme('datatables');
    $crud->set_table('replacements');
    $crud->set_relation('ang_id','ang','ang_no');
    $crud->field_type('created_at','hidden',date('Y-m-d H:i:s'));
    $crud->field_type('updated_at','hidden');
    $output = $crud->render();
    $this->load->view('admin/crud.php',$output);
  }

}

