<?php  defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
class Fetch extends CI_Controller{

  function __construct(){
    parent::__construct();
  }
 
  public function replacements(){
   $r = $_POST;
   $angData =  Models\AngLines::where('ang_no', $r['ang_no'])->get();
   echo "<pre>";
   print_r($angData);
   exit;
  }

  public function angLines(){
   $r = $_POST;
   $angLines =  Models\AngLines::where('ang_id', $r['ang_no'])->get();
   echo "<pre>";
   print_r($angLines);
   exit;
  }
 	
}

