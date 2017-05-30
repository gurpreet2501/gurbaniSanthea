<?php
 use App\Models; 
      $dir    = 'files';
      $files = scandir($dir);

      foreach ($files as $key => $f) {
        if($key==0 || $key==1)
          continue;
      
        $angNo = substr($f, 0, -4);  
        $filePath = 'files/'.$f;
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
         echo "<pre>";
         print_r($angNo);
         exit;
         exit;
         $i++;

        } //foreach
        
        $i=1;

        echo "Ang ".$angNo." Insertion Done ".PHP_EOL;
        
     } //foreach done
