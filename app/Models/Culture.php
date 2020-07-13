<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Culture extends Model
{
    //
  protected $table='cultures';
  protected $primaryKey='id';
  protected $fillable=['uid','email','title','introduction','intro','types','portrait','status','form'];
}
