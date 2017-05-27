<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ang extends Model{

  protected $fillable = [];
  protected $table  = 'ang';

  function lines(){
  	return $this->hasMany(AngLines::class, 'foreign_key', 'local_key');
  }
}
