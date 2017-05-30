<?php  defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
class Fetch extends CI_Controller{
  function __construct(){
    parent::__construct();
  }

  public function angLines(){
   $r = $_POST;
   $angLines =  Models\AngLines::where('ang_id', $r['ang_no'])->get();
   
   if(!count($angLines)){
     $angLines = [];
     return print_r(json_encode($angLines));
   }
    

    $angLines = $angLines->toArray();
    
    print_r(json_encode($angLines));
    
  }
  
  public function replacements(){
   $r = $_POST;
   
   $angTbl =  Models\Ang::where('ang', $r['angNo'])->first();
   
   $angLines =  Models\AngLines::where('ang_id', $angTbl->ang)->with('replacements')->get();
   

   if(!count($angLines)){
     $angLines = [];
     return print_r(json_encode($angLines));
   }
    

    $angLines = $angLines->toArray();
    
    print_r(json_encode($angLines));
    
  }
 	
}

