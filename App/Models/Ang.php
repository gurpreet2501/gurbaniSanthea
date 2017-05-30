<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ang extends Model{

  protected $fillable = ['ang'];
  protected $table  = 'ang';

  function lines(){
  	return $this->hasMany(AngLines::class, 'ang_id', 'ang');
  }
}

