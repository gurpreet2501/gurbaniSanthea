<?php  defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
class Home extends CI_Controller{

  function __construct(){
    parent::__construct();
  }
 
  public function index($id=null){
  	$id=1;
  	$ang = Models\Ang::where('ang_no',$id)->get();
  	
    $this->load->view('home',
    	[
    	'angData' => $ang,
    	'ang_no' => $id
    	]);
  }
  
  function find_word_pos($string, $word) {
    //case in-sensitive
    $string = strtolower($string); //make the string lowercase
    $word = strtolower($word);//make the search string lowercase
    $exp = explode(" ", $string);
    if (in_array($word, $exp)) { 
        return array_search($word, $exp) + 1;
    }
    return -1; //return -1 if not found
}

 	
}

