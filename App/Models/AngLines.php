<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AngLines extends Model{

  protected $fillable = [];
  protected $table  = 'ang_lines';

  function replacements(){
  	return $this->hasMany(Replacements::class, 'line_id', 'id');
  }

}
