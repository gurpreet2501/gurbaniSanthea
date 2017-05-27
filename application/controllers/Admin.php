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
    $crud->set_table('ang');
    $crud->field_type('created_at','hidden',date('Y-m-d H:i:s'));
    $crud->field_type('updated_at','hidden');
    $output = $crud->render();
    $this->load->view('admin/crud.php', $output);
  }

  public function ang_lines($lang=false){
   
    $crud = new grocery_CRUD();
    $crud->set_table('ang_lines');
    $crud->set_relation('ang_id','ang','ang');
    $crud->field_type('created_at','hidden',date('Y-m-d H:i:s'));
    $crud->field_type('updated_at','hidden');
    $output = $crud->render();
    $this->load->view('admin/crud.php',$output);
  }

  public function replacements($lang=false){
   
    $crud = new grocery_CRUD();
    $crud->set_table('replacements');
    $crud->fields('original_word','replacement','description','audio','ang','line_id');
    $crud->set_field_upload('audio','assets/uploads/files');
    $crud->callback_field('ang', array($this,'ang_list'));
    $crud->callback_field('line_id', array($this,'ang_filtered_lines'));
    $crud->set_relation('line_id','ang_lines','Ang - {ang_id}: Line - {line_no} - {text}');
    $crud->field_type('created_at','hidden',date('Y-m-d H:i:s'));
    $crud->field_type('updated_at','hidden');
    $output = $crud->render();
    $this->load->view('admin/crud.php',$output);
  }

  function ang_list($value = '', $primary_key = null)
  {  
    $options = "<option></option>";
    foreach (range(1,1430) as $key => $v) {
      $options.="<option>".$v."</option>";
    }
    return "<select  class='form-control ang_select_on_rep_page'>".$options."</select>";
  }

  function ang_filtered_lines($value = '', $primary_key = null)
  {  
    return "<select name='line_id' class='form-control lines_result'><option></option></select>";
  }

}

