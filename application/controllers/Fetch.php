<?php  defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
class Fetch extends CI_Controller{

  function __construct(){
    parent::__construct();
  }
 
  public function replacements(){
   $r = $_POST;
   $angData =  Models\Ang::where('ang_no', $r['ang_no'])->get();
   echo "<pre>";
   print_r($angData);
   exit;
  }
 	
}

