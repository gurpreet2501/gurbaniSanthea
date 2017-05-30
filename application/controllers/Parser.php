<?php  defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
use PHPHtmlParser\Dom;
class Parser extends CI_Controller{
  function __construct(){
    parent::__construct();
  }

  public function html(){
    $ang = [];
    $start = 344;
    $end = 700;
    for ($i=$start; $i<=$end; $i++) {
      $panktis = "";
      $dom = new Dom;
      $dom->loadFromUrl('https://www.searchgurbani.com/guru_granth_sahib/ang/'.$i);
      $html = $dom->innerHtml;
      $contents = $dom->find('.lang_1');

      foreach ($contents as $content)
      { 
        $html = $content->innerHtml;
        $panktis .= $html."  ";
      }
      $fileName = "files/".$i.".doc";
      
      $myfile = fopen($fileName, "w") or die("Unable to open file!");
      $text = wordwrap($panktis, 300, "_WAHEGURU_\n");
      fwrite($myfile, $text);
      echo "ANG ".$i." Processing Done..".PHP_EOL;
      fclose($myfile);  
    }
  }  

    public function insertIntoDb(){
      
      $dir    = 'files';
      $files = scandir($dir);
      set_time_limit(-1);
      foreach ($files as $key => $f) {
        if($key==0 || $key==1)
          continue;
      
        $angNo = substr($f, 0, -4);  
        $filePath = base_url().'files/'.$f;
        $data = file_get_contents($filePath);
        
        $lines = explode("_WAHEGURU_", $data);
        
        $i=1;
        
        foreach ($lines as $inc => $text) {

         $exits = Models\AngLines::where('ang_id', $angNo)->where('line_no' , $i)->count();
         
         if(!$exits){
           
           Models\AngLines::firstOrCreate([
                'ang_id' => $angNo, 
                'line_no' => $i,
                'text' => $text
            ]);

         }
         
         $i++;

        } //foreach
        
        $i=1;

        echo "Ang ".$angNo." Insertion Done <br/>".PHP_EOL;
        
      } //foreach done

    }

}

